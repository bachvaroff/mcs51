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
                                     12 	.globl _scroll
                                     13 	.globl _timer0_intr
                                     14 	.globl _init_disp
                                     15 	.globl _init_timer0
                                     16 	.globl _init_intr
                                     17 	.globl _clear_gpo
                                     18 	.globl _init_gpo
                                     19 	.globl _getchar_poll
                                     20 	.globl _getchar
                                     21 	.globl _putchar
                                     22 	.globl _toupper
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _FL
                                     30 	.globl _P
                                     31 	.globl _TF2
                                     32 	.globl _EXF2
                                     33 	.globl _RCLK
                                     34 	.globl _TCLK
                                     35 	.globl _EXEN2
                                     36 	.globl _TR2
                                     37 	.globl _C_T2
                                     38 	.globl _CP_RL2
                                     39 	.globl _T2CON_7
                                     40 	.globl _T2CON_6
                                     41 	.globl _T2CON_5
                                     42 	.globl _T2CON_4
                                     43 	.globl _T2CON_3
                                     44 	.globl _T2CON_2
                                     45 	.globl _T2CON_1
                                     46 	.globl _T2CON_0
                                     47 	.globl _PT2
                                     48 	.globl _PS
                                     49 	.globl _PT1
                                     50 	.globl _PX1
                                     51 	.globl _PT0
                                     52 	.globl _PX0
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD
                                     60 	.globl _RXD
                                     61 	.globl _P3_7
                                     62 	.globl _P3_6
                                     63 	.globl _P3_5
                                     64 	.globl _P3_4
                                     65 	.globl _P3_3
                                     66 	.globl _P3_2
                                     67 	.globl _P3_1
                                     68 	.globl _P3_0
                                     69 	.globl _EA
                                     70 	.globl _ET2
                                     71 	.globl _ES
                                     72 	.globl _ET1
                                     73 	.globl _EX1
                                     74 	.globl _ET0
                                     75 	.globl _EX0
                                     76 	.globl _P2_7
                                     77 	.globl _P2_6
                                     78 	.globl _P2_5
                                     79 	.globl _P2_4
                                     80 	.globl _P2_3
                                     81 	.globl _P2_2
                                     82 	.globl _P2_1
                                     83 	.globl _P2_0
                                     84 	.globl _SM0
                                     85 	.globl _SM1
                                     86 	.globl _SM2
                                     87 	.globl _REN
                                     88 	.globl _TB8
                                     89 	.globl _RB8
                                     90 	.globl _TI
                                     91 	.globl _RI
                                     92 	.globl _T2EX
                                     93 	.globl _T2
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _B
                                    119 	.globl _A
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _TH2
                                    123 	.globl _TL2
                                    124 	.globl _RCAP2H
                                    125 	.globl _RCAP2L
                                    126 	.globl _T2MOD
                                    127 	.globl _T2CON
                                    128 	.globl _IP
                                    129 	.globl _P3
                                    130 	.globl _IE
                                    131 	.globl _P2
                                    132 	.globl _SBUF
                                    133 	.globl _SCON
                                    134 	.globl _P1
                                    135 	.globl _TH1
                                    136 	.globl _TH0
                                    137 	.globl _TL1
                                    138 	.globl _TL0
                                    139 	.globl _TMOD
                                    140 	.globl _TCON
                                    141 	.globl _PCON
                                    142 	.globl _DPH
                                    143 	.globl _DPL
                                    144 	.globl _SP
                                    145 	.globl _P0
                                    146 	.globl _gpo
                                    147 	.globl _OE
                                    148 	.globl _column
                                    149 	.globl _ddata
                                    150 	.globl _dcol
                                    151 ;--------------------------------------------------------
                                    152 ; special function registers
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0	=	0x0080
                           000081   157 _SP	=	0x0081
                           000082   158 _DPL	=	0x0082
                           000083   159 _DPH	=	0x0083
                           000087   160 _PCON	=	0x0087
                           000088   161 _TCON	=	0x0088
                           000089   162 _TMOD	=	0x0089
                           00008A   163 _TL0	=	0x008a
                           00008B   164 _TL1	=	0x008b
                           00008C   165 _TH0	=	0x008c
                           00008D   166 _TH1	=	0x008d
                           000090   167 _P1	=	0x0090
                           000098   168 _SCON	=	0x0098
                           000099   169 _SBUF	=	0x0099
                           0000A0   170 _P2	=	0x00a0
                           0000A8   171 _IE	=	0x00a8
                           0000B0   172 _P3	=	0x00b0
                           0000B8   173 _IP	=	0x00b8
                           0000C8   174 _T2CON	=	0x00c8
                           0000C9   175 _T2MOD	=	0x00c9
                           0000CA   176 _RCAP2L	=	0x00ca
                           0000CB   177 _RCAP2H	=	0x00cb
                           0000CC   178 _TL2	=	0x00cc
                           0000CD   179 _TH2	=	0x00cd
                           0000D0   180 _PSW	=	0x00d0
                           0000E0   181 _ACC	=	0x00e0
                           0000E0   182 _A	=	0x00e0
                           0000F0   183 _B	=	0x00f0
                                    184 ;--------------------------------------------------------
                                    185 ; special function bits
                                    186 ;--------------------------------------------------------
                                    187 	.area RSEG    (ABS,DATA)
      000000                        188 	.org 0x0000
                           000080   189 _P0_0	=	0x0080
                           000081   190 _P0_1	=	0x0081
                           000082   191 _P0_2	=	0x0082
                           000083   192 _P0_3	=	0x0083
                           000084   193 _P0_4	=	0x0084
                           000085   194 _P0_5	=	0x0085
                           000086   195 _P0_6	=	0x0086
                           000087   196 _P0_7	=	0x0087
                           000088   197 _IT0	=	0x0088
                           000089   198 _IE0	=	0x0089
                           00008A   199 _IT1	=	0x008a
                           00008B   200 _IE1	=	0x008b
                           00008C   201 _TR0	=	0x008c
                           00008D   202 _TF0	=	0x008d
                           00008E   203 _TR1	=	0x008e
                           00008F   204 _TF1	=	0x008f
                           000090   205 _P1_0	=	0x0090
                           000091   206 _P1_1	=	0x0091
                           000092   207 _P1_2	=	0x0092
                           000093   208 _P1_3	=	0x0093
                           000094   209 _P1_4	=	0x0094
                           000095   210 _P1_5	=	0x0095
                           000096   211 _P1_6	=	0x0096
                           000097   212 _P1_7	=	0x0097
                           000090   213 _T2	=	0x0090
                           000091   214 _T2EX	=	0x0091
                           000098   215 _RI	=	0x0098
                           000099   216 _TI	=	0x0099
                           00009A   217 _RB8	=	0x009a
                           00009B   218 _TB8	=	0x009b
                           00009C   219 _REN	=	0x009c
                           00009D   220 _SM2	=	0x009d
                           00009E   221 _SM1	=	0x009e
                           00009F   222 _SM0	=	0x009f
                           0000A0   223 _P2_0	=	0x00a0
                           0000A1   224 _P2_1	=	0x00a1
                           0000A2   225 _P2_2	=	0x00a2
                           0000A3   226 _P2_3	=	0x00a3
                           0000A4   227 _P2_4	=	0x00a4
                           0000A5   228 _P2_5	=	0x00a5
                           0000A6   229 _P2_6	=	0x00a6
                           0000A7   230 _P2_7	=	0x00a7
                           0000A8   231 _EX0	=	0x00a8
                           0000A9   232 _ET0	=	0x00a9
                           0000AA   233 _EX1	=	0x00aa
                           0000AB   234 _ET1	=	0x00ab
                           0000AC   235 _ES	=	0x00ac
                           0000AD   236 _ET2	=	0x00ad
                           0000AF   237 _EA	=	0x00af
                           0000B0   238 _P3_0	=	0x00b0
                           0000B1   239 _P3_1	=	0x00b1
                           0000B2   240 _P3_2	=	0x00b2
                           0000B3   241 _P3_3	=	0x00b3
                           0000B4   242 _P3_4	=	0x00b4
                           0000B5   243 _P3_5	=	0x00b5
                           0000B6   244 _P3_6	=	0x00b6
                           0000B7   245 _P3_7	=	0x00b7
                           0000B0   246 _RXD	=	0x00b0
                           0000B1   247 _TXD	=	0x00b1
                           0000B2   248 _INT0	=	0x00b2
                           0000B3   249 _INT1	=	0x00b3
                           0000B4   250 _T0	=	0x00b4
                           0000B5   251 _T1	=	0x00b5
                           0000B6   252 _WR	=	0x00b6
                           0000B7   253 _RD	=	0x00b7
                           0000B8   254 _PX0	=	0x00b8
                           0000B9   255 _PT0	=	0x00b9
                           0000BA   256 _PX1	=	0x00ba
                           0000BB   257 _PT1	=	0x00bb
                           0000BC   258 _PS	=	0x00bc
                           0000BD   259 _PT2	=	0x00bd
                           0000C8   260 _T2CON_0	=	0x00c8
                           0000C9   261 _T2CON_1	=	0x00c9
                           0000CA   262 _T2CON_2	=	0x00ca
                           0000CB   263 _T2CON_3	=	0x00cb
                           0000CC   264 _T2CON_4	=	0x00cc
                           0000CD   265 _T2CON_5	=	0x00cd
                           0000CE   266 _T2CON_6	=	0x00ce
                           0000CF   267 _T2CON_7	=	0x00cf
                           0000C8   268 _CP_RL2	=	0x00c8
                           0000C9   269 _C_T2	=	0x00c9
                           0000CA   270 _TR2	=	0x00ca
                           0000CB   271 _EXEN2	=	0x00cb
                           0000CC   272 _TCLK	=	0x00cc
                           0000CD   273 _RCLK	=	0x00cd
                           0000CE   274 _EXF2	=	0x00ce
                           0000CF   275 _TF2	=	0x00cf
                           0000D0   276 _P	=	0x00d0
                           0000D1   277 _FL	=	0x00d1
                           0000D2   278 _OV	=	0x00d2
                           0000D3   279 _RS0	=	0x00d3
                           0000D4   280 _RS1	=	0x00d4
                           0000D5   281 _F0	=	0x00d5
                           0000D6   282 _AC	=	0x00d6
                           0000D7   283 _CY	=	0x00d7
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable register banks
                                    286 ;--------------------------------------------------------
                                    287 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        288 	.ds 8
                                    289 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        290 	.ds 8
                                    291 ;--------------------------------------------------------
                                    292 ; internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area DSEG    (DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; overlayable items in internal ram 
                                    297 ;--------------------------------------------------------
                                    298 ;--------------------------------------------------------
                                    299 ; Stack segment in internal ram 
                                    300 ;--------------------------------------------------------
                                    301 	.area	SSEG
      000033                        302 __start__stack:
      000033                        303 	.ds	1
                                    304 
                                    305 ;--------------------------------------------------------
                                    306 ; indirectly addressable internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area ISEG    (DATA)
      000021                        309 _dcol::
      000021                        310 	.ds 8
      000029                        311 _ddata::
      000029                        312 	.ds 8
      000031                        313 _column::
      000031                        314 	.ds 1
      000032                        315 _OE::
      000032                        316 	.ds 1
                                    317 ;--------------------------------------------------------
                                    318 ; absolute internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area IABS    (ABS,DATA)
                                    321 	.area IABS    (ABS,DATA)
                                    322 ;--------------------------------------------------------
                                    323 ; bit data
                                    324 ;--------------------------------------------------------
                                    325 	.area BSEG    (BIT)
                                    326 ;--------------------------------------------------------
                                    327 ; paged external ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area PSEG    (PAG,XDATA)
                           000000   330 _gpo	=	0x0000
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
      008000                        343 _font8x8:
      008000                        344 	.ds 2048
      008800                        345 _buf:
      008800                        346 	.ds 257
                                    347 	.area HOME    (CODE)
                                    348 	.area GSINIT0 (CODE)
                                    349 	.area GSINIT1 (CODE)
                                    350 	.area GSINIT2 (CODE)
                                    351 	.area GSINIT3 (CODE)
                                    352 	.area GSINIT4 (CODE)
                                    353 	.area GSINIT5 (CODE)
                                    354 	.area GSINIT  (CODE)
                                    355 	.area GSFINAL (CODE)
                                    356 	.area CSEG    (CODE)
                                    357 ;--------------------------------------------------------
                                    358 ; interrupt vector 
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
      002000                        361 __interrupt_vect:
      002000 02 20 11         [24]  362 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  363 	reti
      002004                        364 	.ds	7
      00200B 02 21 2A         [24]  365 	ljmp	_timer0_intr
                                    366 ;--------------------------------------------------------
                                    367 ; global & static initialisations
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT  (CODE)
                                    371 	.area GSFINAL (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.globl __sdcc_gsinit_startup
                                    374 	.globl __sdcc_program_startup
                                    375 	.globl __start__stack
                                    376 	.globl __mcs51_genXINIT
                                    377 	.globl __mcs51_genXRAMCLEAR
                                    378 	.globl __mcs51_genRAMCLEAR
                                    379 ;	disp.c:61: __idata const uint8_t dcol[8] = {
      00206A 78 21            [12]  380 	mov	r0,#_dcol
      00206C 76 80            [12]  381 	mov	@r0,#0x80
      00206E 78 22            [12]  382 	mov	r0,#(_dcol + 0x0001)
      002070 76 40            [12]  383 	mov	@r0,#0x40
      002072 78 23            [12]  384 	mov	r0,#(_dcol + 0x0002)
      002074 76 20            [12]  385 	mov	@r0,#0x20
      002076 78 24            [12]  386 	mov	r0,#(_dcol + 0x0003)
      002078 76 10            [12]  387 	mov	@r0,#0x10
      00207A 78 25            [12]  388 	mov	r0,#(_dcol + 0x0004)
      00207C 76 08            [12]  389 	mov	@r0,#0x08
      00207E 78 26            [12]  390 	mov	r0,#(_dcol + 0x0005)
      002080 76 04            [12]  391 	mov	@r0,#0x04
      002082 78 27            [12]  392 	mov	r0,#(_dcol + 0x0006)
      002084 76 02            [12]  393 	mov	@r0,#0x02
      002086 78 28            [12]  394 	mov	r0,#(_dcol + 0x0007)
      002088 76 01            [12]  395 	mov	@r0,#0x01
                                    396 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  397 	ljmp	__sdcc_program_startup
                                    398 ;--------------------------------------------------------
                                    399 ; Home
                                    400 ;--------------------------------------------------------
                                    401 	.area HOME    (CODE)
                                    402 	.area HOME    (CODE)
      00200E                        403 __sdcc_program_startup:
      00200E 02 22 D6         [24]  404 	ljmp	_main
                                    405 ;	return from main will return to caller
                                    406 ;--------------------------------------------------------
                                    407 ; code
                                    408 ;--------------------------------------------------------
                                    409 	.area CSEG    (CODE)
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'putchar'
                                    412 ;------------------------------------------------------------
                                    413 ;c                         Allocated to registers 
                                    414 ;------------------------------------------------------------
                                    415 ;	disp.c:10: int putchar(int c) __naked {
                                    416 ;	-----------------------------------------
                                    417 ;	 function putchar
                                    418 ;	-----------------------------------------
      00208D                        419 _putchar:
                                    420 ;	naked function: no prologue.
                                    421 ;	disp.c:15: __endasm;
      00208D E5 82            [12]  422 	mov	a, dpl
      00208F 02 00 30         [24]  423 	ljmp	0x0030
                                    424 ;	disp.c:16: }
                                    425 ;	naked function: no epilogue.
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'getchar'
                                    428 ;------------------------------------------------------------
                                    429 ;	disp.c:18: int getchar(void) __naked {
                                    430 ;	-----------------------------------------
                                    431 ;	 function getchar
                                    432 ;	-----------------------------------------
      002092                        433 _getchar:
                                    434 ;	naked function: no prologue.
                                    435 ;	disp.c:24: __endasm;
      002092 12 00 32         [24]  436 	lcall	0x0032
      002095 F5 82            [12]  437 	mov	dpl, a
      002097 75 83 00         [24]  438 	mov	dph, #0
      00209A 22               [24]  439 	ret
                                    440 ;	disp.c:25: }
                                    441 ;	naked function: no epilogue.
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function 'getchar_poll'
                                    444 ;------------------------------------------------------------
                                    445 ;	disp.c:27: int getchar_poll(void) __naked {
                                    446 ;	-----------------------------------------
                                    447 ;	 function getchar_poll
                                    448 ;	-----------------------------------------
      00209B                        449 _getchar_poll:
                                    450 ;	naked function: no prologue.
                                    451 ;	disp.c:39: __endasm;
      00209B 74 FF            [12]  452 	mov	a, #0xff
      00209D F5 F0            [12]  453 	mov	b, a
      00209F 30 98 07         [24]  454 	jnb	ri, nochar
      0020A2 C2 98            [12]  455 	clr	ri
      0020A4 E5 99            [12]  456 	mov	a, sbuf
      0020A6 75 F0 00         [24]  457 	mov	b, #0
      0020A9                        458 	nochar:
      0020A9 F5 82            [12]  459 	mov	dpl, a
      0020AB 85 F0 83         [24]  460 	mov	dph, b
      0020AE 22               [24]  461 	ret
                                    462 ;	disp.c:40: }
                                    463 ;	naked function: no epilogue.
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'init_gpo'
                                    466 ;------------------------------------------------------------
                                    467 ;	disp.c:80: void init_gpo(void) {
                                    468 ;	-----------------------------------------
                                    469 ;	 function init_gpo
                                    470 ;	-----------------------------------------
      0020AF                        471 _init_gpo:
                           000007   472 	ar7 = 0x07
                           000006   473 	ar6 = 0x06
                           000005   474 	ar5 = 0x05
                           000004   475 	ar4 = 0x04
                           000003   476 	ar3 = 0x03
                           000002   477 	ar2 = 0x02
                           000001   478 	ar1 = 0x01
                           000000   479 	ar0 = 0x00
                                    480 ;	disp.c:81: P1_7 = 0;
                                    481 ;	assignBit
      0020AF C2 97            [12]  482 	clr	_P1_7
                                    483 ;	disp.c:83: P2 = GPO_BASE_H;
      0020B1 75 A0 F0         [24]  484 	mov	_P2,#0xf0
                                    485 ;	disp.c:85: CLEAR_GPO;
      0020B4 78 06            [12]  486 	mov	r0,#(_gpo + 0x0006)
      0020B6 74 3F            [12]  487 	mov	a,#0x3f
      0020B8 F2               [24]  488 	movx	@r0,a
      0020B9 78 00            [12]  489 	mov	r0,#_gpo
      0020BB E4               [12]  490 	clr	a
      0020BC F2               [24]  491 	movx	@r0,a
      0020BD 78 01            [12]  492 	mov	r0,#(_gpo + 0x0001)
      0020BF F2               [24]  493 	movx	@r0,a
      0020C0 78 02            [12]  494 	mov	r0,#(_gpo + 0x0002)
      0020C2 F2               [24]  495 	movx	@r0,a
      0020C3 78 03            [12]  496 	mov	r0,#(_gpo + 0x0003)
      0020C5 F2               [24]  497 	movx	@r0,a
      0020C6 78 04            [12]  498 	mov	r0,#(_gpo + 0x0004)
      0020C8 F2               [24]  499 	movx	@r0,a
      0020C9 78 05            [12]  500 	mov	r0,#(_gpo + 0x0005)
      0020CB F2               [24]  501 	movx	@r0,a
                                    502 ;	disp.c:87: return;
                                    503 ;	disp.c:88: }
      0020CC 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'clear_gpo'
                                    507 ;------------------------------------------------------------
                                    508 ;	disp.c:90: void clear_gpo(void) {
                                    509 ;	-----------------------------------------
                                    510 ;	 function clear_gpo
                                    511 ;	-----------------------------------------
      0020CD                        512 _clear_gpo:
                                    513 ;	disp.c:91: CLEAR_GPO;
      0020CD 78 06            [12]  514 	mov	r0,#(_gpo + 0x0006)
      0020CF 74 3F            [12]  515 	mov	a,#0x3f
      0020D1 F2               [24]  516 	movx	@r0,a
      0020D2 78 00            [12]  517 	mov	r0,#_gpo
      0020D4 E4               [12]  518 	clr	a
      0020D5 F2               [24]  519 	movx	@r0,a
      0020D6 78 01            [12]  520 	mov	r0,#(_gpo + 0x0001)
      0020D8 F2               [24]  521 	movx	@r0,a
      0020D9 78 02            [12]  522 	mov	r0,#(_gpo + 0x0002)
      0020DB F2               [24]  523 	movx	@r0,a
      0020DC 78 03            [12]  524 	mov	r0,#(_gpo + 0x0003)
      0020DE F2               [24]  525 	movx	@r0,a
      0020DF 78 04            [12]  526 	mov	r0,#(_gpo + 0x0004)
      0020E1 F2               [24]  527 	movx	@r0,a
      0020E2 78 05            [12]  528 	mov	r0,#(_gpo + 0x0005)
      0020E4 F2               [24]  529 	movx	@r0,a
                                    530 ;	disp.c:93: return;
                                    531 ;	disp.c:94: }
      0020E5 22               [24]  532 	ret
                                    533 ;------------------------------------------------------------
                                    534 ;Allocation info for local variables in function 'init_intr'
                                    535 ;------------------------------------------------------------
                                    536 ;	disp.c:96: void init_intr(void) {
                                    537 ;	-----------------------------------------
                                    538 ;	 function init_intr
                                    539 ;	-----------------------------------------
      0020E6                        540 _init_intr:
                                    541 ;	disp.c:97: TR0 = 0;
                                    542 ;	assignBit
      0020E6 C2 8C            [12]  543 	clr	_TR0
                                    544 ;	disp.c:98: ET0 = 1;
                                    545 ;	assignBit
      0020E8 D2 A9            [12]  546 	setb	_ET0
                                    547 ;	disp.c:99: EA  = 1;
                                    548 ;	assignBit
      0020EA D2 AF            [12]  549 	setb	_EA
                                    550 ;	disp.c:101: return;
                                    551 ;	disp.c:102: }
      0020EC 22               [24]  552 	ret
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'init_timer0'
                                    555 ;------------------------------------------------------------
                                    556 ;	disp.c:104: void init_timer0(void) {
                                    557 ;	-----------------------------------------
                                    558 ;	 function init_timer0
                                    559 ;	-----------------------------------------
      0020ED                        560 _init_timer0:
                                    561 ;	disp.c:105: TR0 = 0;
                                    562 ;	assignBit
      0020ED C2 8C            [12]  563 	clr	_TR0
                                    564 ;	disp.c:106: TMOD = 0x01;
      0020EF 75 89 01         [24]  565 	mov	_TMOD,#0x01
                                    566 ;	disp.c:107: TH0 = 0xf8;
      0020F2 75 8C F8         [24]  567 	mov	_TH0,#0xf8
                                    568 ;	disp.c:108: TL0 = 0x00;
      0020F5 75 8A 00         [24]  569 	mov	_TL0,#0x00
                                    570 ;	disp.c:110: return;
                                    571 ;	disp.c:111: }
      0020F8 22               [24]  572 	ret
                                    573 ;------------------------------------------------------------
                                    574 ;Allocation info for local variables in function 'init_disp'
                                    575 ;------------------------------------------------------------
                                    576 ;	disp.c:113: void init_disp(void) {
                                    577 ;	-----------------------------------------
                                    578 ;	 function init_disp
                                    579 ;	-----------------------------------------
      0020F9                        580 _init_disp:
                                    581 ;	disp.c:114: gpo[DISP_COL] = 0u;
      0020F9 78 05            [12]  582 	mov	r0,#(_gpo + 0x0005)
      0020FB E4               [12]  583 	clr	a
      0020FC F2               [24]  584 	movx	@r0,a
                                    585 ;	disp.c:115: gpo[DISP_DATA] = 0u;
      0020FD 78 04            [12]  586 	mov	r0,#(_gpo + 0x0004)
      0020FF F2               [24]  587 	movx	@r0,a
                                    588 ;	disp.c:116: OE = 0x0fu; /* 00_001111 */
      002100 78 32            [12]  589 	mov	r0,#_OE
      002102 76 0F            [12]  590 	mov	@r0,#0x0f
                                    591 ;	disp.c:117: gpo[GPO_OE] = OE; /* 00_001111 */
      002104 78 06            [12]  592 	mov	r0,#(_gpo + 0x0006)
      002106 74 0F            [12]  593 	mov	a,#0x0f
      002108 F2               [24]  594 	movx	@r0,a
                                    595 ;	disp.c:119: for (column = 0u; column < 8u; column++)
      002109 78 31            [12]  596 	mov	r0,#_column
      00210B 76 00            [12]  597 	mov	@r0,#0x00
      00210D                        598 00103$:
      00210D 78 31            [12]  599 	mov	r0,#_column
      00210F B6 08 00         [24]  600 	cjne	@r0,#0x08,00115$
      002112                        601 00115$:
      002112 50 11            [24]  602 	jnc	00101$
                                    603 ;	disp.c:120: ddata[column] = 0u;
      002114 78 31            [12]  604 	mov	r0,#_column
      002116 E6               [12]  605 	mov	a,@r0
      002117 24 29            [12]  606 	add	a,#_ddata
      002119 F8               [12]  607 	mov	r0,a
      00211A 76 00            [12]  608 	mov	@r0,#0x00
                                    609 ;	disp.c:119: for (column = 0u; column < 8u; column++)
      00211C 78 31            [12]  610 	mov	r0,#_column
      00211E E6               [12]  611 	mov	a,@r0
      00211F 78 31            [12]  612 	mov	r0,#_column
      002121 04               [12]  613 	inc	a
      002122 F6               [12]  614 	mov	@r0,a
      002123 80 E8            [24]  615 	sjmp	00103$
      002125                        616 00101$:
                                    617 ;	disp.c:121: column = 0u;
      002125 78 31            [12]  618 	mov	r0,#_column
      002127 76 00            [12]  619 	mov	@r0,#0x00
                                    620 ;	disp.c:123: return;
                                    621 ;	disp.c:124: }
      002129 22               [24]  622 	ret
                                    623 ;------------------------------------------------------------
                                    624 ;Allocation info for local variables in function 'timer0_intr'
                                    625 ;------------------------------------------------------------
                                    626 ;t                         Allocated to registers r7 
                                    627 ;------------------------------------------------------------
                                    628 ;	disp.c:126: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    629 ;	-----------------------------------------
                                    630 ;	 function timer0_intr
                                    631 ;	-----------------------------------------
      00212A                        632 _timer0_intr:
                           00000F   633 	ar7 = 0x0f
                           00000E   634 	ar6 = 0x0e
                           00000D   635 	ar5 = 0x0d
                           00000C   636 	ar4 = 0x0c
                           00000B   637 	ar3 = 0x0b
                           00000A   638 	ar2 = 0x0a
                           000009   639 	ar1 = 0x09
                           000008   640 	ar0 = 0x08
      00212A C0 E0            [24]  641 	push	acc
      00212C C0 D0            [24]  642 	push	psw
      00212E 75 D0 08         [24]  643 	mov	psw,#0x08
                                    644 ;	disp.c:129: t = column & 7u;
      002131 78 31            [12]  645 	mov	r0,#_column
      002133 86 0F            [24]  646 	mov	ar7,@r0
      002135 53 0F 07         [24]  647 	anl	ar7,#0x07
                                    648 ;	disp.c:130: gpo[DISP_COL] = 0u;
      002138 78 05            [12]  649 	mov	r0,#(_gpo + 0x0005)
      00213A E4               [12]  650 	clr	a
      00213B F2               [24]  651 	movx	@r0,a
                                    652 ;	disp.c:131: gpo[DISP_DATA] = ddata[t];
      00213C EF               [12]  653 	mov	a,r7
      00213D 24 29            [12]  654 	add	a,#_ddata
      00213F F9               [12]  655 	mov	r1,a
      002140 87 0E            [24]  656 	mov	ar6,@r1
      002142 78 04            [12]  657 	mov	r0,#(_gpo + 0x0004)
      002144 EE               [12]  658 	mov	a,r6
      002145 F2               [24]  659 	movx	@r0,a
                                    660 ;	disp.c:132: gpo[DISP_COL] = dcol[t];
      002146 EF               [12]  661 	mov	a,r7
      002147 24 21            [12]  662 	add	a,#_dcol
      002149 F9               [12]  663 	mov	r1,a
      00214A 87 0F            [24]  664 	mov	ar7,@r1
      00214C 78 05            [12]  665 	mov	r0,#(_gpo + 0x0005)
      00214E EF               [12]  666 	mov	a,r7
      00214F F2               [24]  667 	movx	@r0,a
                                    668 ;	disp.c:133: column++;
      002150 78 31            [12]  669 	mov	r0,#_column
      002152 E6               [12]  670 	mov	a,@r0
      002153 78 31            [12]  671 	mov	r0,#_column
      002155 04               [12]  672 	inc	a
      002156 F6               [12]  673 	mov	@r0,a
                                    674 ;	disp.c:135: TR0 = 0;
                                    675 ;	assignBit
      002157 C2 8C            [12]  676 	clr	_TR0
                                    677 ;	disp.c:136: TH0 = 0xf8;
      002159 75 8C F8         [24]  678 	mov	_TH0,#0xf8
                                    679 ;	disp.c:137: TL0 = 0x00;
      00215C 75 8A 00         [24]  680 	mov	_TL0,#0x00
                                    681 ;	disp.c:138: TR0 = 1;
                                    682 ;	assignBit
      00215F D2 8C            [12]  683 	setb	_TR0
                                    684 ;	disp.c:140: return;
                                    685 ;	disp.c:141: }
      002161 D0 D0            [24]  686 	pop	psw
      002163 D0 E0            [24]  687 	pop	acc
      002165 32               [24]  688 	reti
                                    689 ;	eliminated unneeded push/pop dpl
                                    690 ;	eliminated unneeded push/pop dph
                                    691 ;	eliminated unneeded push/pop b
                                    692 ;------------------------------------------------------------
                                    693 ;Allocation info for local variables in function 'scroll'
                                    694 ;------------------------------------------------------------
                                    695 ;msg                       Allocated to stack - _bp +1
                                    696 ;symbol                    Allocated to stack - _bp +5
                                    697 ;bit                       Allocated to stack - _bp +6
                                    698 ;i                         Allocated to stack - _bp +7
                                    699 ;j                         Allocated to registers r4 
                                    700 ;r                         Allocated to registers r3 r4 
                                    701 ;i                         Allocated to registers r3 
                                    702 ;j                         Allocated to registers r2 
                                    703 ;__3932160002              Allocated to registers 
                                    704 ;s                         Allocated to registers r6 r4 r3 
                                    705 ;sloc0                     Allocated to stack - _bp +4
                                    706 ;sloc1                     Allocated to stack - _bp +20
                                    707 ;sloc2                     Allocated to stack - _bp +21
                                    708 ;------------------------------------------------------------
                                    709 ;	disp.c:170: int scroll(uint8_t *msg) {
                                    710 ;	-----------------------------------------
                                    711 ;	 function scroll
                                    712 ;	-----------------------------------------
      002166                        713 _scroll:
                           000007   714 	ar7 = 0x07
                           000006   715 	ar6 = 0x06
                           000005   716 	ar5 = 0x05
                           000004   717 	ar4 = 0x04
                           000003   718 	ar3 = 0x03
                           000002   719 	ar2 = 0x02
                           000001   720 	ar1 = 0x01
                           000000   721 	ar0 = 0x00
      002166 C0 10            [24]  722 	push	_bp
      002168 85 81 10         [24]  723 	mov	_bp,sp
      00216B C0 82            [24]  724 	push	dpl
      00216D C0 83            [24]  725 	push	dph
      00216F C0 F0            [24]  726 	push	b
      002171 E5 81            [12]  727 	mov	a,sp
      002173 24 05            [12]  728 	add	a,#0x05
      002175 F5 81            [12]  729 	mov	sp,a
                                    730 ;	disp.c:176: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002177 E5 10            [12]  731 	mov	a,_bp
      002179 24 06            [12]  732 	add	a,#0x06
      00217B F8               [12]  733 	mov	r0,a
      00217C 76 00            [12]  734 	mov	@r0,#0x00
      00217E E5 10            [12]  735 	mov	a,_bp
      002180 24 07            [12]  736 	add	a,#0x07
      002182 F8               [12]  737 	mov	r0,a
      002183 E4               [12]  738 	clr	a
      002184 F6               [12]  739 	mov	@r0,a
      002185 08               [12]  740 	inc	r0
      002186 F6               [12]  741 	mov	@r0,a
      002187                        742 00131$:
                                    743 ;	disp.c:177: if (!bit) {
      002187 E5 10            [12]  744 	mov	a,_bp
      002189 24 06            [12]  745 	add	a,#0x06
      00218B F8               [12]  746 	mov	r0,a
      00218C E6               [12]  747 	mov	a,@r0
      00218D 70 55            [24]  748 	jnz	00104$
                                    749 ;	disp.c:178: symbol = msg[i];
      00218F A8 10            [24]  750 	mov	r0,_bp
      002191 08               [12]  751 	inc	r0
      002192 E5 10            [12]  752 	mov	a,_bp
      002194 24 07            [12]  753 	add	a,#0x07
      002196 F9               [12]  754 	mov	r1,a
      002197 E7               [12]  755 	mov	a,@r1
      002198 26               [12]  756 	add	a,@r0
      002199 FA               [12]  757 	mov	r2,a
      00219A 09               [12]  758 	inc	r1
      00219B E7               [12]  759 	mov	a,@r1
      00219C 08               [12]  760 	inc	r0
      00219D 36               [12]  761 	addc	a,@r0
      00219E FB               [12]  762 	mov	r3,a
      00219F 08               [12]  763 	inc	r0
      0021A0 86 04            [24]  764 	mov	ar4,@r0
      0021A2 8A 82            [24]  765 	mov	dpl,r2
      0021A4 8B 83            [24]  766 	mov	dph,r3
      0021A6 8C F0            [24]  767 	mov	b,r4
      0021A8 12 25 11         [24]  768 	lcall	__gptrget
      0021AB FA               [12]  769 	mov	r2,a
      0021AC E5 10            [12]  770 	mov	a,_bp
      0021AE 24 04            [12]  771 	add	a,#0x04
      0021B0 F8               [12]  772 	mov	r0,a
      0021B1 A6 02            [24]  773 	mov	@r0,ar2
                                    774 ;	disp.c:179: if (!symbol) {
      0021B3 EA               [12]  775 	mov	a,r2
      0021B4 70 1D            [24]  776 	jnz	00102$
                                    777 ;	disp.c:180: i = 0u;
      0021B6 E5 10            [12]  778 	mov	a,_bp
      0021B8 24 07            [12]  779 	add	a,#0x07
      0021BA F8               [12]  780 	mov	r0,a
      0021BB E4               [12]  781 	clr	a
      0021BC F6               [12]  782 	mov	@r0,a
      0021BD 08               [12]  783 	inc	r0
      0021BE F6               [12]  784 	mov	@r0,a
                                    785 ;	disp.c:181: symbol = msg[i];
      0021BF A8 10            [24]  786 	mov	r0,_bp
      0021C1 08               [12]  787 	inc	r0
      0021C2 86 82            [24]  788 	mov	dpl,@r0
      0021C4 08               [12]  789 	inc	r0
      0021C5 86 83            [24]  790 	mov	dph,@r0
      0021C7 08               [12]  791 	inc	r0
      0021C8 86 F0            [24]  792 	mov	b,@r0
      0021CA E5 10            [12]  793 	mov	a,_bp
      0021CC 24 04            [12]  794 	add	a,#0x04
      0021CE F9               [12]  795 	mov	r1,a
      0021CF 12 25 11         [24]  796 	lcall	__gptrget
      0021D2 F7               [12]  797 	mov	@r1,a
      0021D3                        798 00102$:
                                    799 ;	disp.c:183: i++;
      0021D3 E5 10            [12]  800 	mov	a,_bp
      0021D5 24 07            [12]  801 	add	a,#0x07
      0021D7 F8               [12]  802 	mov	r0,a
      0021D8 06               [12]  803 	inc	@r0
      0021D9 B6 00 02         [24]  804 	cjne	@r0,#0x00,00211$
      0021DC 08               [12]  805 	inc	r0
      0021DD 06               [12]  806 	inc	@r0
      0021DE                        807 00211$:
                                    808 ;	disp.c:184: OE = 0x8fu;
      0021DE 78 32            [12]  809 	mov	r0,#_OE
      0021E0 76 8F            [12]  810 	mov	@r0,#0x8f
      0021E2 80 04            [24]  811 	sjmp	00105$
      0021E4                        812 00104$:
                                    813 ;	disp.c:185: } else OE = 0x0fu;
      0021E4 78 32            [12]  814 	mov	r0,#_OE
      0021E6 76 0F            [12]  815 	mov	@r0,#0x0f
      0021E8                        816 00105$:
                                    817 ;	disp.c:186: gpo[GPO_OE] = OE;
      0021E8 78 06            [12]  818 	mov	r0,#(_gpo + 0x0006)
      0021EA 79 32            [12]  819 	mov	r1,#_OE
      0021EC E7               [12]  820 	mov	a,@r1
      0021ED F2               [24]  821 	movx	@r0,a
                                    822 ;	disp.c:149: do {
      0021EE 7B 00            [12]  823 	mov	r3,#0x00
                                    824 ;	disp.c:151: do {
      0021F0                        825 00137$:
      0021F0 7A 00            [12]  826 	mov	r2,#0x00
      0021F2                        827 00117$:
                                    828 ;	disp.c:163: __endasm;
      0021F2 00               [12]  829 	nop
      0021F3 00               [12]  830 	nop
      0021F4 00               [12]  831 	nop
      0021F5 00               [12]  832 	nop
                                    833 ;	disp.c:164: } while ((++j) ^ 0x80u);
      0021F6 0A               [12]  834 	inc	r2
      0021F7 8A 06            [24]  835 	mov	ar6,r2
      0021F9 7F 00            [12]  836 	mov	r7,#0x00
      0021FB 74 80            [12]  837 	mov	a,#0x80
      0021FD 6E               [12]  838 	xrl	a,r6
      0021FE 70 F2            [24]  839 	jnz	00117$
      002200 EF               [12]  840 	mov	a,r7
      002201 70 EF            [24]  841 	jnz	00117$
                                    842 ;	disp.c:165: } while ((++i) ^ 0x80u);
      002203 0B               [12]  843 	inc	r3
      002204 8B 02            [24]  844 	mov	ar2,r3
      002206 7F 00            [12]  845 	mov	r7,#0x00
      002208 74 80            [12]  846 	mov	a,#0x80
      00220A 6A               [12]  847 	xrl	a,r2
      00220B 70 E3            [24]  848 	jnz	00137$
      00220D EF               [12]  849 	mov	a,r7
      00220E 70 E0            [24]  850 	jnz	00137$
                                    851 ;	disp.c:190: for (j = 0u; j < 8u; j++)
      002210 E5 10            [12]  852 	mov	a,_bp
      002212 24 04            [12]  853 	add	a,#0x04
      002214 F8               [12]  854 	mov	r0,a
      002215 E6               [12]  855 	mov	a,@r0
      002216 75 F0 08         [24]  856 	mov	b,#0x08
      002219 A4               [48]  857 	mul	ab
      00221A 24 00            [12]  858 	add	a,#_font8x8
      00221C FA               [12]  859 	mov	r2,a
      00221D 74 80            [12]  860 	mov	a,#(_font8x8 >> 8)
      00221F 35 F0            [12]  861 	addc	a,b
      002221 FB               [12]  862 	mov	r3,a
      002222 E5 10            [12]  863 	mov	a,_bp
      002224 24 06            [12]  864 	add	a,#0x06
      002226 F8               [12]  865 	mov	r0,a
      002227 74 07            [12]  866 	mov	a,#0x07
      002229 C3               [12]  867 	clr	c
      00222A 96               [12]  868 	subb	a,@r0
      00222B FD               [12]  869 	mov	r5,a
      00222C 7C 00            [12]  870 	mov	r4,#0x00
      00222E                        871 00126$:
                                    872 ;	disp.c:191: ddata[j] = ((font8x8[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00222E EC               [12]  873 	mov	a,r4
      00222F 24 29            [12]  874 	add	a,#_ddata
      002231 F9               [12]  875 	mov	r1,a
      002232 EC               [12]  876 	mov	a,r4
      002233 2A               [12]  877 	add	a,r2
      002234 F5 82            [12]  878 	mov	dpl,a
      002236 E4               [12]  879 	clr	a
      002237 3B               [12]  880 	addc	a,r3
      002238 F5 83            [12]  881 	mov	dph,a
      00223A E0               [24]  882 	movx	a,@dptr
      00223B FF               [12]  883 	mov	r7,a
      00223C 8D F0            [24]  884 	mov	b,r5
      00223E 05 F0            [12]  885 	inc	b
      002240 EF               [12]  886 	mov	a,r7
      002241 80 02            [24]  887 	sjmp	00218$
      002243                        888 00216$:
      002243 25 E0            [12]  889 	add	a,acc
      002245                        890 00218$:
      002245 D5 F0 FB         [24]  891 	djnz	b,00216$
      002248 54 80            [12]  892 	anl	a,#0x80
      00224A FF               [12]  893 	mov	r7,a
      00224B EC               [12]  894 	mov	a,r4
      00224C 24 29            [12]  895 	add	a,#_ddata
      00224E F8               [12]  896 	mov	r0,a
      00224F E6               [12]  897 	mov	a,@r0
      002250 C3               [12]  898 	clr	c
      002251 13               [12]  899 	rrc	a
      002252 4F               [12]  900 	orl	a,r7
      002253 F7               [12]  901 	mov	@r1,a
                                    902 ;	disp.c:190: for (j = 0u; j < 8u; j++)
      002254 0C               [12]  903 	inc	r4
      002255 BC 08 00         [24]  904 	cjne	r4,#0x08,00219$
      002258                        905 00219$:
      002258 40 D4            [24]  906 	jc	00126$
                                    907 ;	disp.c:193: if ((r = getchar_poll()) >= 0) {
      00225A 12 20 9B         [24]  908 	lcall	_getchar_poll
      00225D AB 82            [24]  909 	mov	r3,dpl
      00225F AC 83            [24]  910 	mov	r4,dph
      002261 8B 07            [24]  911 	mov	ar7,r3
      002263 EC               [12]  912 	mov	a,r4
      002264 FE               [12]  913 	mov	r6,a
      002265 20 E7 50         [24]  914 	jb	acc.7,00132$
                                    915 ;	disp.c:194: r = toupper(r);
      002268 8F 82            [24]  916 	mov	dpl,r7
      00226A 8E 83            [24]  917 	mov	dph,r6
      00226C 12 24 EA         [24]  918 	lcall	_toupper
      00226F AB 82            [24]  919 	mov	r3,dpl
      002271 AC 83            [24]  920 	mov	r4,dph
                                    921 ;	disp.c:195: if ((r == (int)'P') || (r == (int)' ')) {
      002273 BB 50 05         [24]  922 	cjne	r3,#0x50,00222$
      002276 BC 00 02         [24]  923 	cjne	r4,#0x00,00222$
      002279 80 06            [24]  924 	sjmp	00110$
      00227B                        925 00222$:
      00227B BB 20 2A         [24]  926 	cjne	r3,#0x20,00111$
      00227E BC 00 27         [24]  927 	cjne	r4,#0x00,00111$
      002281                        928 00110$:
                                    929 ;	disp.c:196: printstr("PAUSE\r\n");
      002281 7E 31            [12]  930 	mov	r6,#___str_0
      002283 7C 25            [12]  931 	mov	r4,#(___str_0 >> 8)
      002285 7B 80            [12]  932 	mov	r3,#0x80
                                    933 ;	disp.c:45: return;
      002287                        934 00129$:
                                    935 ;	disp.c:43: for (; *s; s++) putchar(*s);
      002287 8E 82            [24]  936 	mov	dpl,r6
      002289 8C 83            [24]  937 	mov	dph,r4
      00228B 8B F0            [24]  938 	mov	b,r3
      00228D 12 25 11         [24]  939 	lcall	__gptrget
      002290 FD               [12]  940 	mov	r5,a
      002291 60 10            [24]  941 	jz	00125$
      002293 7F 00            [12]  942 	mov	r7,#0x00
      002295 8D 82            [24]  943 	mov	dpl,r5
      002297 8F 83            [24]  944 	mov	dph,r7
      002299 12 20 8D         [24]  945 	lcall	_putchar
      00229C 0E               [12]  946 	inc	r6
                                    947 ;	disp.c:196: printstr("PAUSE\r\n");
      00229D BE 00 E7         [24]  948 	cjne	r6,#0x00,00129$
      0022A0 0C               [12]  949 	inc	r4
      0022A1 80 E4            [24]  950 	sjmp	00129$
      0022A3                        951 00125$:
                                    952 ;	disp.c:197: (void)getchar();
      0022A3 12 20 92         [24]  953 	lcall	_getchar
      0022A6 80 10            [24]  954 	sjmp	00132$
      0022A8                        955 00111$:
                                    956 ;	disp.c:198: } else if ((r == (int)'L') || (r == (int)'T')) break;
      0022A8 BB 4C 05         [24]  957 	cjne	r3,#0x4c,00227$
      0022AB BC 00 02         [24]  958 	cjne	r4,#0x00,00227$
      0022AE 80 1C            [24]  959 	sjmp	00116$
      0022B0                        960 00227$:
      0022B0 BB 54 05         [24]  961 	cjne	r3,#0x54,00228$
      0022B3 BC 00 02         [24]  962 	cjne	r4,#0x00,00228$
      0022B6 80 14            [24]  963 	sjmp	00116$
      0022B8                        964 00228$:
      0022B8                        965 00132$:
                                    966 ;	disp.c:176: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0022B8 E5 10            [12]  967 	mov	a,_bp
      0022BA 24 06            [12]  968 	add	a,#0x06
      0022BC F8               [12]  969 	mov	r0,a
      0022BD E6               [12]  970 	mov	a,@r0
      0022BE 04               [12]  971 	inc	a
      0022BF FF               [12]  972 	mov	r7,a
      0022C0 E5 10            [12]  973 	mov	a,_bp
      0022C2 24 06            [12]  974 	add	a,#0x06
      0022C4 F8               [12]  975 	mov	r0,a
      0022C5 74 07            [12]  976 	mov	a,#0x07
      0022C7 5F               [12]  977 	anl	a,r7
      0022C8 F6               [12]  978 	mov	@r0,a
      0022C9 02 21 87         [24]  979 	ljmp	00131$
      0022CC                        980 00116$:
                                    981 ;	disp.c:202: return r;
      0022CC 8B 82            [24]  982 	mov	dpl,r3
      0022CE 8C 83            [24]  983 	mov	dph,r4
                                    984 ;	disp.c:203: }
      0022D0 85 10 81         [24]  985 	mov	sp,_bp
      0022D3 D0 10            [24]  986 	pop	_bp
      0022D5 22               [24]  987 	ret
                                    988 ;------------------------------------------------------------
                                    989 ;Allocation info for local variables in function 'main'
                                    990 ;------------------------------------------------------------
                                    991 ;j                         Allocated to stack - _bp +1
                                    992 ;c                         Allocated to registers r7 r6 
                                    993 ;__1966080004              Allocated to registers 
                                    994 ;s                         Allocated to registers r5 r6 r7 
                                    995 ;__1966080006              Allocated to registers 
                                    996 ;s                         Allocated to registers r5 r6 r7 
                                    997 ;__1966080008              Allocated to registers 
                                    998 ;s                         Allocated to registers r5 r6 r7 
                                    999 ;__3276800010              Allocated to registers 
                                   1000 ;s                         Allocated to registers r7 r6 r4 
                                   1001 ;__3276800012              Allocated to registers 
                                   1002 ;s                         Allocated to registers r7 r6 r4 
                                   1003 ;__3276800014              Allocated to registers 
                                   1004 ;s                         Allocated to registers r7 r6 r4 
                                   1005 ;__3276800016              Allocated to registers 
                                   1006 ;s                         Allocated to registers r7 r6 r4 
                                   1007 ;__3276800018              Allocated to registers 
                                   1008 ;s                         Allocated to registers r7 r6 r4 
                                   1009 ;__1310720020              Allocated to registers 
                                   1010 ;s                         Allocated to registers r5 r6 r7 
                                   1011 ;sloc0                     Allocated to stack - _bp +59
                                   1012 ;------------------------------------------------------------
                                   1013 ;	disp.c:205: void main(void) {
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function main
                                   1016 ;	-----------------------------------------
      0022D6                       1017 _main:
      0022D6 C0 10            [24] 1018 	push	_bp
      0022D8 85 81 10         [24] 1019 	mov	_bp,sp
      0022DB 05 81            [12] 1020 	inc	sp
      0022DD 05 81            [12] 1021 	inc	sp
                                   1022 ;	disp.c:209: init_gpo();
      0022DF 12 20 AF         [24] 1023 	lcall	_init_gpo
                                   1024 ;	disp.c:210: clear_gpo();
      0022E2 12 20 CD         [24] 1025 	lcall	_clear_gpo
                                   1026 ;	disp.c:211: init_disp();	
      0022E5 12 20 F9         [24] 1027 	lcall	_init_disp
                                   1028 ;	disp.c:212: init_timer0();
      0022E8 12 20 ED         [24] 1029 	lcall	_init_timer0
                                   1030 ;	disp.c:213: init_intr();
      0022EB 12 20 E6         [24] 1031 	lcall	_init_intr
                                   1032 ;	disp.c:214: TR0 = 1;
                                   1033 ;	assignBit
      0022EE D2 8C            [12] 1034 	setb	_TR0
                                   1035 ;	disp.c:216: while (1) {
      0022F0                       1036 00118$:
                                   1037 ;	disp.c:217: printstr("START MSG \"");
      0022F0 7D 39            [12] 1038 	mov	r5,#___str_1
      0022F2 7E 25            [12] 1039 	mov	r6,#(___str_1 >> 8)
      0022F4 7F 80            [12] 1040 	mov	r7,#0x80
                                   1041 ;	disp.c:45: return;
      0022F6                       1042 00140$:
                                   1043 ;	disp.c:43: for (; *s; s++) putchar(*s);
      0022F6 8D 82            [24] 1044 	mov	dpl,r5
      0022F8 8E 83            [24] 1045 	mov	dph,r6
      0022FA 8F F0            [24] 1046 	mov	b,r7
      0022FC 12 25 11         [24] 1047 	lcall	__gptrget
      0022FF FC               [12] 1048 	mov	r4,a
      002300 60 10            [24] 1049 	jz	00122$
      002302 7B 00            [12] 1050 	mov	r3,#0x00
      002304 8C 82            [24] 1051 	mov	dpl,r4
      002306 8B 83            [24] 1052 	mov	dph,r3
      002308 12 20 8D         [24] 1053 	lcall	_putchar
      00230B 0D               [12] 1054 	inc	r5
                                   1055 ;	disp.c:217: printstr("START MSG \"");
      00230C BD 00 E7         [24] 1056 	cjne	r5,#0x00,00140$
      00230F 0E               [12] 1057 	inc	r6
      002310 80 E4            [24] 1058 	sjmp	00140$
      002312                       1059 00122$:
                                   1060 ;	disp.c:218: printstr((char *)buf);
      002312 7D 00            [12] 1061 	mov	r5,#_buf
      002314 7E 88            [12] 1062 	mov	r6,#(_buf >> 8)
      002316 7F 00            [12] 1063 	mov	r7,#0x00
                                   1064 ;	disp.c:45: return;
      002318                       1065 00143$:
                                   1066 ;	disp.c:43: for (; *s; s++) putchar(*s);
      002318 8D 82            [24] 1067 	mov	dpl,r5
      00231A 8E 83            [24] 1068 	mov	dph,r6
      00231C 8F F0            [24] 1069 	mov	b,r7
      00231E 12 25 11         [24] 1070 	lcall	__gptrget
      002321 FC               [12] 1071 	mov	r4,a
      002322 60 10            [24] 1072 	jz	00124$
      002324 7B 00            [12] 1073 	mov	r3,#0x00
      002326 8C 82            [24] 1074 	mov	dpl,r4
      002328 8B 83            [24] 1075 	mov	dph,r3
      00232A 12 20 8D         [24] 1076 	lcall	_putchar
      00232D 0D               [12] 1077 	inc	r5
                                   1078 ;	disp.c:218: printstr((char *)buf);
      00232E BD 00 E7         [24] 1079 	cjne	r5,#0x00,00143$
      002331 0E               [12] 1080 	inc	r6
      002332 80 E4            [24] 1081 	sjmp	00143$
      002334                       1082 00124$:
                                   1083 ;	disp.c:219: printstr("\"\r\n");
      002334 7D 45            [12] 1084 	mov	r5,#___str_2
      002336 7E 25            [12] 1085 	mov	r6,#(___str_2 >> 8)
      002338 7F 80            [12] 1086 	mov	r7,#0x80
                                   1087 ;	disp.c:45: return;
      00233A                       1088 00146$:
                                   1089 ;	disp.c:43: for (; *s; s++) putchar(*s);
      00233A 8D 82            [24] 1090 	mov	dpl,r5
      00233C 8E 83            [24] 1091 	mov	dph,r6
      00233E 8F F0            [24] 1092 	mov	b,r7
      002340 12 25 11         [24] 1093 	lcall	__gptrget
      002343 FC               [12] 1094 	mov	r4,a
      002344 60 10            [24] 1095 	jz	00126$
      002346 7B 00            [12] 1096 	mov	r3,#0x00
      002348 8C 82            [24] 1097 	mov	dpl,r4
      00234A 8B 83            [24] 1098 	mov	dph,r3
      00234C 12 20 8D         [24] 1099 	lcall	_putchar
      00234F 0D               [12] 1100 	inc	r5
                                   1101 ;	disp.c:219: printstr("\"\r\n");
      002350 BD 00 E7         [24] 1102 	cjne	r5,#0x00,00146$
      002353 0E               [12] 1103 	inc	r6
      002354 80 E4            [24] 1104 	sjmp	00146$
      002356                       1105 00126$:
                                   1106 ;	disp.c:221: c = scroll(buf);
      002356 90 88 00         [24] 1107 	mov	dptr,#_buf
      002359 75 F0 00         [24] 1108 	mov	b,#0x00
      00235C 12 21 66         [24] 1109 	lcall	_scroll
      00235F AE 82            [24] 1110 	mov	r6,dpl
      002361 AF 83            [24] 1111 	mov	r7,dph
                                   1112 ;	disp.c:223: while (1) {
      002363                       1113 00115$:
                                   1114 ;	disp.c:224: if (c == (int)'T') goto term;
      002363 BE 54 06         [24] 1115 	cjne	r6,#0x54,00305$
      002366 BF 00 03         [24] 1116 	cjne	r7,#0x00,00305$
      002369 02 24 BA         [24] 1117 	ljmp	00120$
      00236C                       1118 00305$:
                                   1119 ;	disp.c:225: else if (c == (int)'L') {
      00236C BE 4C 05         [24] 1120 	cjne	r6,#0x4c,00306$
      00236F BF 00 02         [24] 1121 	cjne	r7,#0x00,00306$
      002372 80 03            [24] 1122 	sjmp	00307$
      002374                       1123 00306$:
      002374 02 24 A4         [24] 1124 	ljmp	00109$
      002377                       1125 00307$:
                                   1126 ;	disp.c:226: printstr("LOAD ");
      002377 7F 49            [12] 1127 	mov	r7,#___str_3
      002379 7E 25            [12] 1128 	mov	r6,#(___str_3 >> 8)
      00237B 7C 80            [12] 1129 	mov	r4,#0x80
                                   1130 ;	disp.c:45: return;
      00237D                       1131 00149$:
                                   1132 ;	disp.c:43: for (; *s; s++) putchar(*s);
      00237D 8F 82            [24] 1133 	mov	dpl,r7
      00237F 8E 83            [24] 1134 	mov	dph,r6
      002381 8C F0            [24] 1135 	mov	b,r4
      002383 12 25 11         [24] 1136 	lcall	__gptrget
      002386 FA               [12] 1137 	mov	r2,a
      002387 60 10            [24] 1138 	jz	00128$
      002389 7D 00            [12] 1139 	mov	r5,#0x00
      00238B 8A 82            [24] 1140 	mov	dpl,r2
      00238D 8D 83            [24] 1141 	mov	dph,r5
      00238F 12 20 8D         [24] 1142 	lcall	_putchar
      002392 0F               [12] 1143 	inc	r7
                                   1144 ;	disp.c:226: printstr("LOAD ");
      002393 BF 00 E7         [24] 1145 	cjne	r7,#0x00,00149$
      002396 0E               [12] 1146 	inc	r6
      002397 80 E4            [24] 1147 	sjmp	00149$
      002399                       1148 00128$:
                                   1149 ;	disp.c:227: for (j = 0u; j < 256u; j++) {
      002399 7C 00            [12] 1150 	mov	r4,#0x00
      00239B 7D 00            [12] 1151 	mov	r5,#0x00
      00239D A8 10            [24] 1152 	mov	r0,_bp
      00239F 08               [12] 1153 	inc	r0
      0023A0 E4               [12] 1154 	clr	a
      0023A1 F6               [12] 1155 	mov	@r0,a
      0023A2 08               [12] 1156 	inc	r0
      0023A3 F6               [12] 1157 	mov	@r0,a
      0023A4                       1158 00151$:
                                   1159 ;	disp.c:228: c = getchar();
      0023A4 C0 04            [24] 1160 	push	ar4
      0023A6 C0 05            [24] 1161 	push	ar5
      0023A8 12 20 92         [24] 1162 	lcall	_getchar
      0023AB AC 82            [24] 1163 	mov	r4,dpl
      0023AD AD 83            [24] 1164 	mov	r5,dph
      0023AF 8C 07            [24] 1165 	mov	ar7,r4
      0023B1 8D 06            [24] 1166 	mov	ar6,r5
                                   1167 ;	disp.c:229: (void)putchar(c);
      0023B3 8F 82            [24] 1168 	mov	dpl,r7
      0023B5 8E 83            [24] 1169 	mov	dph,r6
      0023B7 12 20 8D         [24] 1170 	lcall	_putchar
                                   1171 ;	disp.c:230: if ((c == (int)'\r') || (c == (int)'\n')) {
      0023BA BF 0D 09         [24] 1172 	cjne	r7,#0x0d,00310$
      0023BD BE 00 06         [24] 1173 	cjne	r6,#0x00,00310$
      0023C0 D0 05            [24] 1174 	pop	ar5
      0023C2 D0 04            [24] 1175 	pop	ar4
      0023C4 80 0A            [24] 1176 	sjmp	00101$
      0023C6                       1177 00310$:
      0023C6 D0 05            [24] 1178 	pop	ar5
      0023C8 D0 04            [24] 1179 	pop	ar4
      0023CA BF 0A 11         [24] 1180 	cjne	r7,#0x0a,00102$
      0023CD BE 00 0E         [24] 1181 	cjne	r6,#0x00,00102$
      0023D0                       1182 00101$:
                                   1183 ;	disp.c:231: buf[j] = 0u;
      0023D0 EC               [12] 1184 	mov	a,r4
      0023D1 24 00            [12] 1185 	add	a,#_buf
      0023D3 F5 82            [12] 1186 	mov	dpl,a
      0023D5 ED               [12] 1187 	mov	a,r5
      0023D6 34 88            [12] 1188 	addc	a,#(_buf >> 8)
      0023D8 F5 83            [12] 1189 	mov	dph,a
      0023DA E4               [12] 1190 	clr	a
      0023DB F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	disp.c:232: break;
      0023DC 80 32            [24] 1193 	sjmp	00105$
      0023DE                       1194 00102$:
                                   1195 ;	disp.c:233: } else buf[j] = c & 0xffu;
      0023DE A8 10            [24] 1196 	mov	r0,_bp
      0023E0 08               [12] 1197 	inc	r0
      0023E1 E6               [12] 1198 	mov	a,@r0
      0023E2 24 00            [12] 1199 	add	a,#_buf
      0023E4 FD               [12] 1200 	mov	r5,a
      0023E5 08               [12] 1201 	inc	r0
      0023E6 E6               [12] 1202 	mov	a,@r0
      0023E7 34 88            [12] 1203 	addc	a,#(_buf >> 8)
      0023E9 FC               [12] 1204 	mov	r4,a
      0023EA 8F 03            [24] 1205 	mov	ar3,r7
      0023EC 8D 82            [24] 1206 	mov	dpl,r5
      0023EE 8C 83            [24] 1207 	mov	dph,r4
      0023F0 EB               [12] 1208 	mov	a,r3
      0023F1 F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	disp.c:227: for (j = 0u; j < 256u; j++) {
      0023F2 A8 10            [24] 1211 	mov	r0,_bp
      0023F4 08               [12] 1212 	inc	r0
      0023F5 06               [12] 1213 	inc	@r0
      0023F6 B6 00 02         [24] 1214 	cjne	@r0,#0x00,00313$
      0023F9 08               [12] 1215 	inc	r0
      0023FA 06               [12] 1216 	inc	@r0
      0023FB                       1217 00313$:
      0023FB A8 10            [24] 1218 	mov	r0,_bp
      0023FD 08               [12] 1219 	inc	r0
      0023FE 86 04            [24] 1220 	mov	ar4,@r0
      002400 08               [12] 1221 	inc	r0
      002401 86 05            [24] 1222 	mov	ar5,@r0
      002403 A8 10            [24] 1223 	mov	r0,_bp
      002405 08               [12] 1224 	inc	r0
      002406 86 02            [24] 1225 	mov	ar2,@r0
      002408 08               [12] 1226 	inc	r0
      002409 86 03            [24] 1227 	mov	ar3,@r0
      00240B 74 FF            [12] 1228 	mov	a,#0x100 - 0x01
      00240D 2B               [12] 1229 	add	a,r3
      00240E 50 94            [24] 1230 	jnc	00151$
      002410                       1231 00105$:
                                   1232 ;	disp.c:235: buf[j] = 0u;
      002410 EC               [12] 1233 	mov	a,r4
      002411 24 00            [12] 1234 	add	a,#_buf
      002413 F5 82            [12] 1235 	mov	dpl,a
      002415 ED               [12] 1236 	mov	a,r5
      002416 34 88            [12] 1237 	addc	a,#(_buf >> 8)
      002418 F5 83            [12] 1238 	mov	dph,a
      00241A E4               [12] 1239 	clr	a
      00241B F0               [24] 1240 	movx	@dptr,a
                                   1241 ;	disp.c:236: printstr("\r\n");
      00241C 7F 4F            [12] 1242 	mov	r7,#___str_4
      00241E 7E 25            [12] 1243 	mov	r6,#(___str_4 >> 8)
      002420 7C 80            [12] 1244 	mov	r4,#0x80
                                   1245 ;	disp.c:45: return;
      002422                       1246 00154$:
                                   1247 ;	disp.c:43: for (; *s; s++) putchar(*s);
      002422 8F 82            [24] 1248 	mov	dpl,r7
      002424 8E 83            [24] 1249 	mov	dph,r6
      002426 8C F0            [24] 1250 	mov	b,r4
      002428 12 25 11         [24] 1251 	lcall	__gptrget
      00242B FA               [12] 1252 	mov	r2,a
      00242C 60 10            [24] 1253 	jz	00130$
      00242E 7D 00            [12] 1254 	mov	r5,#0x00
      002430 8A 82            [24] 1255 	mov	dpl,r2
      002432 8D 83            [24] 1256 	mov	dph,r5
      002434 12 20 8D         [24] 1257 	lcall	_putchar
      002437 0F               [12] 1258 	inc	r7
                                   1259 ;	disp.c:236: printstr("\r\n");
      002438 BF 00 E7         [24] 1260 	cjne	r7,#0x00,00154$
      00243B 0E               [12] 1261 	inc	r6
      00243C 80 E4            [24] 1262 	sjmp	00154$
      00243E                       1263 00130$:
                                   1264 ;	disp.c:237: printstr("MSG \"");
      00243E 7F 52            [12] 1265 	mov	r7,#___str_5
      002440 7E 25            [12] 1266 	mov	r6,#(___str_5 >> 8)
      002442 7C 80            [12] 1267 	mov	r4,#0x80
                                   1268 ;	disp.c:45: return;
      002444                       1269 00157$:
                                   1270 ;	disp.c:43: for (; *s; s++) putchar(*s);
      002444 8F 82            [24] 1271 	mov	dpl,r7
      002446 8E 83            [24] 1272 	mov	dph,r6
      002448 8C F0            [24] 1273 	mov	b,r4
      00244A 12 25 11         [24] 1274 	lcall	__gptrget
      00244D FA               [12] 1275 	mov	r2,a
      00244E 60 10            [24] 1276 	jz	00132$
      002450 7D 00            [12] 1277 	mov	r5,#0x00
      002452 8A 82            [24] 1278 	mov	dpl,r2
      002454 8D 83            [24] 1279 	mov	dph,r5
      002456 12 20 8D         [24] 1280 	lcall	_putchar
      002459 0F               [12] 1281 	inc	r7
                                   1282 ;	disp.c:237: printstr("MSG \"");
      00245A BF 00 E7         [24] 1283 	cjne	r7,#0x00,00157$
      00245D 0E               [12] 1284 	inc	r6
      00245E 80 E4            [24] 1285 	sjmp	00157$
      002460                       1286 00132$:
                                   1287 ;	disp.c:238: printstr((char *)buf);
      002460 7F 00            [12] 1288 	mov	r7,#_buf
      002462 7E 88            [12] 1289 	mov	r6,#(_buf >> 8)
      002464 7C 00            [12] 1290 	mov	r4,#0x00
                                   1291 ;	disp.c:45: return;
      002466                       1292 00160$:
                                   1293 ;	disp.c:43: for (; *s; s++) putchar(*s);
      002466 8F 82            [24] 1294 	mov	dpl,r7
      002468 8E 83            [24] 1295 	mov	dph,r6
      00246A 8C F0            [24] 1296 	mov	b,r4
      00246C 12 25 11         [24] 1297 	lcall	__gptrget
      00246F FA               [12] 1298 	mov	r2,a
      002470 60 10            [24] 1299 	jz	00134$
      002472 7D 00            [12] 1300 	mov	r5,#0x00
      002474 8A 82            [24] 1301 	mov	dpl,r2
      002476 8D 83            [24] 1302 	mov	dph,r5
      002478 12 20 8D         [24] 1303 	lcall	_putchar
      00247B 0F               [12] 1304 	inc	r7
                                   1305 ;	disp.c:238: printstr((char *)buf);
      00247C BF 00 E7         [24] 1306 	cjne	r7,#0x00,00160$
      00247F 0E               [12] 1307 	inc	r6
      002480 80 E4            [24] 1308 	sjmp	00160$
      002482                       1309 00134$:
                                   1310 ;	disp.c:239: printstr("\"\r\n");
      002482 7F 45            [12] 1311 	mov	r7,#___str_2
      002484 7E 25            [12] 1312 	mov	r6,#(___str_2 >> 8)
      002486 7C 80            [12] 1313 	mov	r4,#0x80
                                   1314 ;	disp.c:45: return;
      002488                       1315 00163$:
                                   1316 ;	disp.c:43: for (; *s; s++) putchar(*s);
      002488 8F 82            [24] 1317 	mov	dpl,r7
      00248A 8E 83            [24] 1318 	mov	dph,r6
      00248C 8C F0            [24] 1319 	mov	b,r4
      00248E 12 25 11         [24] 1320 	lcall	__gptrget
      002491 FA               [12] 1321 	mov	r2,a
      002492 60 19            [24] 1322 	jz	00113$
      002494 7D 00            [12] 1323 	mov	r5,#0x00
      002496 8A 82            [24] 1324 	mov	dpl,r2
      002498 8D 83            [24] 1325 	mov	dph,r5
      00249A 12 20 8D         [24] 1326 	lcall	_putchar
      00249D 0F               [12] 1327 	inc	r7
                                   1328 ;	disp.c:239: printstr("\"\r\n");
      00249E BF 00 E7         [24] 1329 	cjne	r7,#0x00,00163$
      0024A1 0E               [12] 1330 	inc	r6
      0024A2 80 E4            [24] 1331 	sjmp	00163$
      0024A4                       1332 00109$:
                                   1333 ;	disp.c:240: } else if (c == (int)'S') break;
      0024A4 BE 53 06         [24] 1334 	cjne	r6,#0x53,00323$
      0024A7 BF 00 03         [24] 1335 	cjne	r7,#0x00,00323$
      0024AA 02 22 F0         [24] 1336 	ljmp	00118$
      0024AD                       1337 00323$:
      0024AD                       1338 00113$:
                                   1339 ;	disp.c:242: c = toupper(getchar());
      0024AD 12 20 92         [24] 1340 	lcall	_getchar
      0024B0 12 24 EA         [24] 1341 	lcall	_toupper
      0024B3 AE 82            [24] 1342 	mov	r6,dpl
      0024B5 AF 83            [24] 1343 	mov	r7,dph
      0024B7 02 23 63         [24] 1344 	ljmp	00115$
                                   1345 ;	disp.c:246: term:	
      0024BA                       1346 00120$:
                                   1347 ;	disp.c:247: EA = 0;
                                   1348 ;	assignBit
      0024BA C2 AF            [12] 1349 	clr	_EA
                                   1350 ;	disp.c:248: printstr("TERM\r\n");
      0024BC 7D 58            [12] 1351 	mov	r5,#___str_6
      0024BE 7E 25            [12] 1352 	mov	r6,#(___str_6 >> 8)
      0024C0 7F 80            [12] 1353 	mov	r7,#0x80
                                   1354 ;	disp.c:45: return;
      0024C2                       1355 00166$:
                                   1356 ;	disp.c:43: for (; *s; s++) putchar(*s);
      0024C2 8D 82            [24] 1357 	mov	dpl,r5
      0024C4 8E 83            [24] 1358 	mov	dph,r6
      0024C6 8F F0            [24] 1359 	mov	b,r7
      0024C8 12 25 11         [24] 1360 	lcall	__gptrget
      0024CB FC               [12] 1361 	mov	r4,a
      0024CC 60 10            [24] 1362 	jz	00138$
      0024CE 7B 00            [12] 1363 	mov	r3,#0x00
      0024D0 8C 82            [24] 1364 	mov	dpl,r4
      0024D2 8B 83            [24] 1365 	mov	dph,r3
      0024D4 12 20 8D         [24] 1366 	lcall	_putchar
      0024D7 0D               [12] 1367 	inc	r5
                                   1368 ;	disp.c:248: printstr("TERM\r\n");
      0024D8 BD 00 E7         [24] 1369 	cjne	r5,#0x00,00166$
      0024DB 0E               [12] 1370 	inc	r6
      0024DC 80 E4            [24] 1371 	sjmp	00166$
      0024DE                       1372 00138$:
                                   1373 ;	disp.c:249: (void)getchar();
      0024DE 12 20 92         [24] 1374 	lcall	_getchar
                                   1375 ;	disp.c:253: __endasm;
      0024E1 43 87 02         [24] 1376 	orl	pcon, #2
                                   1377 ;	disp.c:254: }
      0024E4 85 10 81         [24] 1378 	mov	sp,_bp
      0024E7 D0 10            [24] 1379 	pop	_bp
      0024E9 22               [24] 1380 	ret
                                   1381 	.area CSEG    (CODE)
                                   1382 	.area CONST   (CODE)
                                   1383 	.area CONST   (CODE)
      002531                       1384 ___str_0:
      002531 50 41 55 53 45        1385 	.ascii "PAUSE"
      002536 0D                    1386 	.db 0x0d
      002537 0A                    1387 	.db 0x0a
      002538 00                    1388 	.db 0x00
                                   1389 	.area CSEG    (CODE)
                                   1390 	.area CONST   (CODE)
      002539                       1391 ___str_1:
      002539 53 54 41 52 54 20 4D  1392 	.ascii "START MSG "
             53 47 20
      002543 22                    1393 	.db 0x22
      002544 00                    1394 	.db 0x00
                                   1395 	.area CSEG    (CODE)
                                   1396 	.area CONST   (CODE)
      002545                       1397 ___str_2:
      002545 22                    1398 	.db 0x22
      002546 0D                    1399 	.db 0x0d
      002547 0A                    1400 	.db 0x0a
      002548 00                    1401 	.db 0x00
                                   1402 	.area CSEG    (CODE)
                                   1403 	.area CONST   (CODE)
      002549                       1404 ___str_3:
      002549 4C 4F 41 44 20        1405 	.ascii "LOAD "
      00254E 00                    1406 	.db 0x00
                                   1407 	.area CSEG    (CODE)
                                   1408 	.area CONST   (CODE)
      00254F                       1409 ___str_4:
      00254F 0D                    1410 	.db 0x0d
      002550 0A                    1411 	.db 0x0a
      002551 00                    1412 	.db 0x00
                                   1413 	.area CSEG    (CODE)
                                   1414 	.area CONST   (CODE)
      002552                       1415 ___str_5:
      002552 4D 53 47 20           1416 	.ascii "MSG "
      002556 22                    1417 	.db 0x22
      002557 00                    1418 	.db 0x00
                                   1419 	.area CSEG    (CODE)
                                   1420 	.area CONST   (CODE)
      002558                       1421 ___str_6:
      002558 54 45 52 4D           1422 	.ascii "TERM"
      00255C 0D                    1423 	.db 0x0d
      00255D 0A                    1424 	.db 0x0a
      00255E 00                    1425 	.db 0x00
                                   1426 	.area CSEG    (CODE)
                                   1427 	.area XINIT   (CODE)
      00255F                       1428 __xinit__font8x8:
      00255F 00                    1429 	.db #0x00	; 0
      002560 00                    1430 	.db #0x00	; 0
      002561 00                    1431 	.db #0x00	; 0
      002562 00                    1432 	.db #0x00	; 0
      002563 00                    1433 	.db #0x00	; 0
      002564 00                    1434 	.db #0x00	; 0
      002565 00                    1435 	.db #0x00	; 0
      002566 00                    1436 	.db #0x00	; 0
      002567 00                    1437 	.db #0x00	; 0
      002568 00                    1438 	.db #0x00	; 0
      002569 00                    1439 	.db #0x00	; 0
      00256A 00                    1440 	.db #0x00	; 0
      00256B 00                    1441 	.db #0x00	; 0
      00256C 00                    1442 	.db #0x00	; 0
      00256D 00                    1443 	.db #0x00	; 0
      00256E 00                    1444 	.db #0x00	; 0
      00256F 00                    1445 	.db #0x00	; 0
      002570 00                    1446 	.db #0x00	; 0
      002571 00                    1447 	.db #0x00	; 0
      002572 00                    1448 	.db #0x00	; 0
      002573 00                    1449 	.db #0x00	; 0
      002574 00                    1450 	.db #0x00	; 0
      002575 00                    1451 	.db #0x00	; 0
      002576 00                    1452 	.db #0x00	; 0
      002577 00                    1453 	.db #0x00	; 0
      002578 00                    1454 	.db #0x00	; 0
      002579 00                    1455 	.db #0x00	; 0
      00257A 00                    1456 	.db #0x00	; 0
      00257B 00                    1457 	.db #0x00	; 0
      00257C 00                    1458 	.db #0x00	; 0
      00257D 00                    1459 	.db #0x00	; 0
      00257E 00                    1460 	.db #0x00	; 0
      00257F 00                    1461 	.db #0x00	; 0
      002580 00                    1462 	.db #0x00	; 0
      002581 00                    1463 	.db #0x00	; 0
      002582 00                    1464 	.db #0x00	; 0
      002583 00                    1465 	.db #0x00	; 0
      002584 00                    1466 	.db #0x00	; 0
      002585 00                    1467 	.db #0x00	; 0
      002586 00                    1468 	.db #0x00	; 0
      002587 00                    1469 	.db #0x00	; 0
      002588 00                    1470 	.db #0x00	; 0
      002589 00                    1471 	.db #0x00	; 0
      00258A 00                    1472 	.db #0x00	; 0
      00258B 00                    1473 	.db #0x00	; 0
      00258C 00                    1474 	.db #0x00	; 0
      00258D 00                    1475 	.db #0x00	; 0
      00258E 00                    1476 	.db #0x00	; 0
      00258F 00                    1477 	.db #0x00	; 0
      002590 00                    1478 	.db #0x00	; 0
      002591 00                    1479 	.db #0x00	; 0
      002592 00                    1480 	.db #0x00	; 0
      002593 00                    1481 	.db #0x00	; 0
      002594 00                    1482 	.db #0x00	; 0
      002595 00                    1483 	.db #0x00	; 0
      002596 00                    1484 	.db #0x00	; 0
      002597 00                    1485 	.db #0x00	; 0
      002598 00                    1486 	.db #0x00	; 0
      002599 00                    1487 	.db #0x00	; 0
      00259A 00                    1488 	.db #0x00	; 0
      00259B 00                    1489 	.db #0x00	; 0
      00259C 00                    1490 	.db #0x00	; 0
      00259D 00                    1491 	.db #0x00	; 0
      00259E 00                    1492 	.db #0x00	; 0
      00259F 00                    1493 	.db #0x00	; 0
      0025A0 00                    1494 	.db #0x00	; 0
      0025A1 00                    1495 	.db #0x00	; 0
      0025A2 00                    1496 	.db #0x00	; 0
      0025A3 00                    1497 	.db #0x00	; 0
      0025A4 00                    1498 	.db #0x00	; 0
      0025A5 00                    1499 	.db #0x00	; 0
      0025A6 00                    1500 	.db #0x00	; 0
      0025A7 00                    1501 	.db #0x00	; 0
      0025A8 00                    1502 	.db #0x00	; 0
      0025A9 00                    1503 	.db #0x00	; 0
      0025AA 00                    1504 	.db #0x00	; 0
      0025AB 00                    1505 	.db #0x00	; 0
      0025AC 00                    1506 	.db #0x00	; 0
      0025AD 00                    1507 	.db #0x00	; 0
      0025AE 00                    1508 	.db #0x00	; 0
      0025AF 00                    1509 	.db #0x00	; 0
      0025B0 00                    1510 	.db #0x00	; 0
      0025B1 00                    1511 	.db #0x00	; 0
      0025B2 00                    1512 	.db #0x00	; 0
      0025B3 00                    1513 	.db #0x00	; 0
      0025B4 00                    1514 	.db #0x00	; 0
      0025B5 00                    1515 	.db #0x00	; 0
      0025B6 00                    1516 	.db #0x00	; 0
      0025B7 00                    1517 	.db #0x00	; 0
      0025B8 00                    1518 	.db #0x00	; 0
      0025B9 00                    1519 	.db #0x00	; 0
      0025BA 00                    1520 	.db #0x00	; 0
      0025BB 00                    1521 	.db #0x00	; 0
      0025BC 00                    1522 	.db #0x00	; 0
      0025BD 00                    1523 	.db #0x00	; 0
      0025BE 00                    1524 	.db #0x00	; 0
      0025BF 00                    1525 	.db #0x00	; 0
      0025C0 00                    1526 	.db #0x00	; 0
      0025C1 00                    1527 	.db #0x00	; 0
      0025C2 00                    1528 	.db #0x00	; 0
      0025C3 00                    1529 	.db #0x00	; 0
      0025C4 00                    1530 	.db #0x00	; 0
      0025C5 00                    1531 	.db #0x00	; 0
      0025C6 00                    1532 	.db #0x00	; 0
      0025C7 00                    1533 	.db #0x00	; 0
      0025C8 00                    1534 	.db #0x00	; 0
      0025C9 00                    1535 	.db #0x00	; 0
      0025CA 00                    1536 	.db #0x00	; 0
      0025CB 00                    1537 	.db #0x00	; 0
      0025CC 00                    1538 	.db #0x00	; 0
      0025CD 00                    1539 	.db #0x00	; 0
      0025CE 00                    1540 	.db #0x00	; 0
      0025CF 00                    1541 	.db #0x00	; 0
      0025D0 00                    1542 	.db #0x00	; 0
      0025D1 00                    1543 	.db #0x00	; 0
      0025D2 00                    1544 	.db #0x00	; 0
      0025D3 00                    1545 	.db #0x00	; 0
      0025D4 00                    1546 	.db #0x00	; 0
      0025D5 00                    1547 	.db #0x00	; 0
      0025D6 00                    1548 	.db #0x00	; 0
      0025D7 00                    1549 	.db #0x00	; 0
      0025D8 00                    1550 	.db #0x00	; 0
      0025D9 00                    1551 	.db #0x00	; 0
      0025DA 00                    1552 	.db #0x00	; 0
      0025DB 00                    1553 	.db #0x00	; 0
      0025DC 00                    1554 	.db #0x00	; 0
      0025DD 00                    1555 	.db #0x00	; 0
      0025DE 00                    1556 	.db #0x00	; 0
      0025DF 00                    1557 	.db #0x00	; 0
      0025E0 00                    1558 	.db #0x00	; 0
      0025E1 00                    1559 	.db #0x00	; 0
      0025E2 00                    1560 	.db #0x00	; 0
      0025E3 00                    1561 	.db #0x00	; 0
      0025E4 00                    1562 	.db #0x00	; 0
      0025E5 00                    1563 	.db #0x00	; 0
      0025E6 00                    1564 	.db #0x00	; 0
      0025E7 00                    1565 	.db #0x00	; 0
      0025E8 00                    1566 	.db #0x00	; 0
      0025E9 00                    1567 	.db #0x00	; 0
      0025EA 00                    1568 	.db #0x00	; 0
      0025EB 00                    1569 	.db #0x00	; 0
      0025EC 00                    1570 	.db #0x00	; 0
      0025ED 00                    1571 	.db #0x00	; 0
      0025EE 00                    1572 	.db #0x00	; 0
      0025EF 00                    1573 	.db #0x00	; 0
      0025F0 00                    1574 	.db #0x00	; 0
      0025F1 00                    1575 	.db #0x00	; 0
      0025F2 00                    1576 	.db #0x00	; 0
      0025F3 00                    1577 	.db #0x00	; 0
      0025F4 00                    1578 	.db #0x00	; 0
      0025F5 00                    1579 	.db #0x00	; 0
      0025F6 00                    1580 	.db #0x00	; 0
      0025F7 00                    1581 	.db #0x00	; 0
      0025F8 00                    1582 	.db #0x00	; 0
      0025F9 00                    1583 	.db #0x00	; 0
      0025FA 00                    1584 	.db #0x00	; 0
      0025FB 00                    1585 	.db #0x00	; 0
      0025FC 00                    1586 	.db #0x00	; 0
      0025FD 00                    1587 	.db #0x00	; 0
      0025FE 00                    1588 	.db #0x00	; 0
      0025FF 00                    1589 	.db #0x00	; 0
      002600 00                    1590 	.db #0x00	; 0
      002601 00                    1591 	.db #0x00	; 0
      002602 00                    1592 	.db #0x00	; 0
      002603 00                    1593 	.db #0x00	; 0
      002604 00                    1594 	.db #0x00	; 0
      002605 00                    1595 	.db #0x00	; 0
      002606 00                    1596 	.db #0x00	; 0
      002607 00                    1597 	.db #0x00	; 0
      002608 00                    1598 	.db #0x00	; 0
      002609 00                    1599 	.db #0x00	; 0
      00260A 00                    1600 	.db #0x00	; 0
      00260B 00                    1601 	.db #0x00	; 0
      00260C 00                    1602 	.db #0x00	; 0
      00260D 00                    1603 	.db #0x00	; 0
      00260E 00                    1604 	.db #0x00	; 0
      00260F 00                    1605 	.db #0x00	; 0
      002610 00                    1606 	.db #0x00	; 0
      002611 00                    1607 	.db #0x00	; 0
      002612 00                    1608 	.db #0x00	; 0
      002613 00                    1609 	.db #0x00	; 0
      002614 00                    1610 	.db #0x00	; 0
      002615 00                    1611 	.db #0x00	; 0
      002616 00                    1612 	.db #0x00	; 0
      002617 00                    1613 	.db #0x00	; 0
      002618 00                    1614 	.db #0x00	; 0
      002619 00                    1615 	.db #0x00	; 0
      00261A 00                    1616 	.db #0x00	; 0
      00261B 00                    1617 	.db #0x00	; 0
      00261C 00                    1618 	.db #0x00	; 0
      00261D 00                    1619 	.db #0x00	; 0
      00261E 00                    1620 	.db #0x00	; 0
      00261F 00                    1621 	.db #0x00	; 0
      002620 00                    1622 	.db #0x00	; 0
      002621 00                    1623 	.db #0x00	; 0
      002622 00                    1624 	.db #0x00	; 0
      002623 00                    1625 	.db #0x00	; 0
      002624 00                    1626 	.db #0x00	; 0
      002625 00                    1627 	.db #0x00	; 0
      002626 00                    1628 	.db #0x00	; 0
      002627 00                    1629 	.db #0x00	; 0
      002628 00                    1630 	.db #0x00	; 0
      002629 00                    1631 	.db #0x00	; 0
      00262A 00                    1632 	.db #0x00	; 0
      00262B 00                    1633 	.db #0x00	; 0
      00262C 00                    1634 	.db #0x00	; 0
      00262D 00                    1635 	.db #0x00	; 0
      00262E 00                    1636 	.db #0x00	; 0
      00262F 00                    1637 	.db #0x00	; 0
      002630 00                    1638 	.db #0x00	; 0
      002631 00                    1639 	.db #0x00	; 0
      002632 00                    1640 	.db #0x00	; 0
      002633 00                    1641 	.db #0x00	; 0
      002634 00                    1642 	.db #0x00	; 0
      002635 00                    1643 	.db #0x00	; 0
      002636 00                    1644 	.db #0x00	; 0
      002637 00                    1645 	.db #0x00	; 0
      002638 00                    1646 	.db #0x00	; 0
      002639 00                    1647 	.db #0x00	; 0
      00263A 00                    1648 	.db #0x00	; 0
      00263B 00                    1649 	.db #0x00	; 0
      00263C 00                    1650 	.db #0x00	; 0
      00263D 00                    1651 	.db #0x00	; 0
      00263E 00                    1652 	.db #0x00	; 0
      00263F 00                    1653 	.db #0x00	; 0
      002640 00                    1654 	.db #0x00	; 0
      002641 00                    1655 	.db #0x00	; 0
      002642 00                    1656 	.db #0x00	; 0
      002643 00                    1657 	.db #0x00	; 0
      002644 00                    1658 	.db #0x00	; 0
      002645 00                    1659 	.db #0x00	; 0
      002646 00                    1660 	.db #0x00	; 0
      002647 00                    1661 	.db #0x00	; 0
      002648 00                    1662 	.db #0x00	; 0
      002649 00                    1663 	.db #0x00	; 0
      00264A 00                    1664 	.db #0x00	; 0
      00264B 00                    1665 	.db #0x00	; 0
      00264C 00                    1666 	.db #0x00	; 0
      00264D 00                    1667 	.db #0x00	; 0
      00264E 00                    1668 	.db #0x00	; 0
      00264F 00                    1669 	.db #0x00	; 0
      002650 00                    1670 	.db #0x00	; 0
      002651 00                    1671 	.db #0x00	; 0
      002652 00                    1672 	.db #0x00	; 0
      002653 00                    1673 	.db #0x00	; 0
      002654 00                    1674 	.db #0x00	; 0
      002655 00                    1675 	.db #0x00	; 0
      002656 00                    1676 	.db #0x00	; 0
      002657 00                    1677 	.db #0x00	; 0
      002658 00                    1678 	.db #0x00	; 0
      002659 00                    1679 	.db #0x00	; 0
      00265A 00                    1680 	.db #0x00	; 0
      00265B 00                    1681 	.db #0x00	; 0
      00265C 00                    1682 	.db #0x00	; 0
      00265D 00                    1683 	.db #0x00	; 0
      00265E 00                    1684 	.db #0x00	; 0
      00265F 00                    1685 	.db #0x00	; 0
      002660 00                    1686 	.db #0x00	; 0
      002661 00                    1687 	.db #0x00	; 0
      002662 00                    1688 	.db #0x00	; 0
      002663 00                    1689 	.db #0x00	; 0
      002664 00                    1690 	.db #0x00	; 0
      002665 00                    1691 	.db #0x00	; 0
      002666 00                    1692 	.db #0x00	; 0
      002667 18                    1693 	.db #0x18	; 24
      002668 3C                    1694 	.db #0x3c	; 60
      002669 3C                    1695 	.db #0x3c	; 60
      00266A 18                    1696 	.db #0x18	; 24
      00266B 18                    1697 	.db #0x18	; 24
      00266C 00                    1698 	.db #0x00	; 0
      00266D 18                    1699 	.db #0x18	; 24
      00266E 00                    1700 	.db #0x00	; 0
      00266F 36                    1701 	.db #0x36	; 54	'6'
      002670 36                    1702 	.db #0x36	; 54	'6'
      002671 00                    1703 	.db #0x00	; 0
      002672 00                    1704 	.db #0x00	; 0
      002673 00                    1705 	.db #0x00	; 0
      002674 00                    1706 	.db #0x00	; 0
      002675 00                    1707 	.db #0x00	; 0
      002676 00                    1708 	.db #0x00	; 0
      002677 36                    1709 	.db #0x36	; 54	'6'
      002678 36                    1710 	.db #0x36	; 54	'6'
      002679 7F                    1711 	.db #0x7f	; 127
      00267A 36                    1712 	.db #0x36	; 54	'6'
      00267B 7F                    1713 	.db #0x7f	; 127
      00267C 36                    1714 	.db #0x36	; 54	'6'
      00267D 36                    1715 	.db #0x36	; 54	'6'
      00267E 00                    1716 	.db #0x00	; 0
      00267F 0C                    1717 	.db #0x0c	; 12
      002680 3E                    1718 	.db #0x3e	; 62
      002681 03                    1719 	.db #0x03	; 3
      002682 1E                    1720 	.db #0x1e	; 30
      002683 30                    1721 	.db #0x30	; 48	'0'
      002684 1F                    1722 	.db #0x1f	; 31
      002685 0C                    1723 	.db #0x0c	; 12
      002686 00                    1724 	.db #0x00	; 0
      002687 00                    1725 	.db #0x00	; 0
      002688 63                    1726 	.db #0x63	; 99	'c'
      002689 33                    1727 	.db #0x33	; 51	'3'
      00268A 18                    1728 	.db #0x18	; 24
      00268B 0C                    1729 	.db #0x0c	; 12
      00268C 66                    1730 	.db #0x66	; 102	'f'
      00268D 63                    1731 	.db #0x63	; 99	'c'
      00268E 00                    1732 	.db #0x00	; 0
      00268F 1C                    1733 	.db #0x1c	; 28
      002690 36                    1734 	.db #0x36	; 54	'6'
      002691 1C                    1735 	.db #0x1c	; 28
      002692 6E                    1736 	.db #0x6e	; 110	'n'
      002693 3B                    1737 	.db #0x3b	; 59
      002694 33                    1738 	.db #0x33	; 51	'3'
      002695 6E                    1739 	.db #0x6e	; 110	'n'
      002696 00                    1740 	.db #0x00	; 0
      002697 06                    1741 	.db #0x06	; 6
      002698 06                    1742 	.db #0x06	; 6
      002699 03                    1743 	.db #0x03	; 3
      00269A 00                    1744 	.db #0x00	; 0
      00269B 00                    1745 	.db #0x00	; 0
      00269C 00                    1746 	.db #0x00	; 0
      00269D 00                    1747 	.db #0x00	; 0
      00269E 00                    1748 	.db #0x00	; 0
      00269F 18                    1749 	.db #0x18	; 24
      0026A0 0C                    1750 	.db #0x0c	; 12
      0026A1 06                    1751 	.db #0x06	; 6
      0026A2 06                    1752 	.db #0x06	; 6
      0026A3 06                    1753 	.db #0x06	; 6
      0026A4 0C                    1754 	.db #0x0c	; 12
      0026A5 18                    1755 	.db #0x18	; 24
      0026A6 00                    1756 	.db #0x00	; 0
      0026A7 06                    1757 	.db #0x06	; 6
      0026A8 0C                    1758 	.db #0x0c	; 12
      0026A9 18                    1759 	.db #0x18	; 24
      0026AA 18                    1760 	.db #0x18	; 24
      0026AB 18                    1761 	.db #0x18	; 24
      0026AC 0C                    1762 	.db #0x0c	; 12
      0026AD 06                    1763 	.db #0x06	; 6
      0026AE 00                    1764 	.db #0x00	; 0
      0026AF 00                    1765 	.db #0x00	; 0
      0026B0 66                    1766 	.db #0x66	; 102	'f'
      0026B1 3C                    1767 	.db #0x3c	; 60
      0026B2 FF                    1768 	.db #0xff	; 255
      0026B3 3C                    1769 	.db #0x3c	; 60
      0026B4 66                    1770 	.db #0x66	; 102	'f'
      0026B5 00                    1771 	.db #0x00	; 0
      0026B6 00                    1772 	.db #0x00	; 0
      0026B7 00                    1773 	.db #0x00	; 0
      0026B8 0C                    1774 	.db #0x0c	; 12
      0026B9 0C                    1775 	.db #0x0c	; 12
      0026BA 3F                    1776 	.db #0x3f	; 63
      0026BB 0C                    1777 	.db #0x0c	; 12
      0026BC 0C                    1778 	.db #0x0c	; 12
      0026BD 00                    1779 	.db #0x00	; 0
      0026BE 00                    1780 	.db #0x00	; 0
      0026BF 00                    1781 	.db #0x00	; 0
      0026C0 00                    1782 	.db #0x00	; 0
      0026C1 00                    1783 	.db #0x00	; 0
      0026C2 00                    1784 	.db #0x00	; 0
      0026C3 00                    1785 	.db #0x00	; 0
      0026C4 0C                    1786 	.db #0x0c	; 12
      0026C5 0C                    1787 	.db #0x0c	; 12
      0026C6 06                    1788 	.db #0x06	; 6
      0026C7 00                    1789 	.db #0x00	; 0
      0026C8 00                    1790 	.db #0x00	; 0
      0026C9 00                    1791 	.db #0x00	; 0
      0026CA 3F                    1792 	.db #0x3f	; 63
      0026CB 00                    1793 	.db #0x00	; 0
      0026CC 00                    1794 	.db #0x00	; 0
      0026CD 00                    1795 	.db #0x00	; 0
      0026CE 00                    1796 	.db #0x00	; 0
      0026CF 00                    1797 	.db #0x00	; 0
      0026D0 00                    1798 	.db #0x00	; 0
      0026D1 00                    1799 	.db #0x00	; 0
      0026D2 00                    1800 	.db #0x00	; 0
      0026D3 00                    1801 	.db #0x00	; 0
      0026D4 0C                    1802 	.db #0x0c	; 12
      0026D5 0C                    1803 	.db #0x0c	; 12
      0026D6 00                    1804 	.db #0x00	; 0
      0026D7 60                    1805 	.db #0x60	; 96
      0026D8 30                    1806 	.db #0x30	; 48	'0'
      0026D9 18                    1807 	.db #0x18	; 24
      0026DA 0C                    1808 	.db #0x0c	; 12
      0026DB 06                    1809 	.db #0x06	; 6
      0026DC 03                    1810 	.db #0x03	; 3
      0026DD 01                    1811 	.db #0x01	; 1
      0026DE 00                    1812 	.db #0x00	; 0
      0026DF 3E                    1813 	.db #0x3e	; 62
      0026E0 63                    1814 	.db #0x63	; 99	'c'
      0026E1 73                    1815 	.db #0x73	; 115	's'
      0026E2 7B                    1816 	.db #0x7b	; 123
      0026E3 6F                    1817 	.db #0x6f	; 111	'o'
      0026E4 67                    1818 	.db #0x67	; 103	'g'
      0026E5 3E                    1819 	.db #0x3e	; 62
      0026E6 00                    1820 	.db #0x00	; 0
      0026E7 0C                    1821 	.db #0x0c	; 12
      0026E8 0E                    1822 	.db #0x0e	; 14
      0026E9 0C                    1823 	.db #0x0c	; 12
      0026EA 0C                    1824 	.db #0x0c	; 12
      0026EB 0C                    1825 	.db #0x0c	; 12
      0026EC 0C                    1826 	.db #0x0c	; 12
      0026ED 3F                    1827 	.db #0x3f	; 63
      0026EE 00                    1828 	.db #0x00	; 0
      0026EF 1E                    1829 	.db #0x1e	; 30
      0026F0 33                    1830 	.db #0x33	; 51	'3'
      0026F1 30                    1831 	.db #0x30	; 48	'0'
      0026F2 1C                    1832 	.db #0x1c	; 28
      0026F3 06                    1833 	.db #0x06	; 6
      0026F4 33                    1834 	.db #0x33	; 51	'3'
      0026F5 3F                    1835 	.db #0x3f	; 63
      0026F6 00                    1836 	.db #0x00	; 0
      0026F7 1E                    1837 	.db #0x1e	; 30
      0026F8 33                    1838 	.db #0x33	; 51	'3'
      0026F9 30                    1839 	.db #0x30	; 48	'0'
      0026FA 1C                    1840 	.db #0x1c	; 28
      0026FB 30                    1841 	.db #0x30	; 48	'0'
      0026FC 33                    1842 	.db #0x33	; 51	'3'
      0026FD 1E                    1843 	.db #0x1e	; 30
      0026FE 00                    1844 	.db #0x00	; 0
      0026FF 38                    1845 	.db #0x38	; 56	'8'
      002700 3C                    1846 	.db #0x3c	; 60
      002701 36                    1847 	.db #0x36	; 54	'6'
      002702 33                    1848 	.db #0x33	; 51	'3'
      002703 7F                    1849 	.db #0x7f	; 127
      002704 30                    1850 	.db #0x30	; 48	'0'
      002705 78                    1851 	.db #0x78	; 120	'x'
      002706 00                    1852 	.db #0x00	; 0
      002707 3F                    1853 	.db #0x3f	; 63
      002708 03                    1854 	.db #0x03	; 3
      002709 1F                    1855 	.db #0x1f	; 31
      00270A 30                    1856 	.db #0x30	; 48	'0'
      00270B 30                    1857 	.db #0x30	; 48	'0'
      00270C 33                    1858 	.db #0x33	; 51	'3'
      00270D 1E                    1859 	.db #0x1e	; 30
      00270E 00                    1860 	.db #0x00	; 0
      00270F 1C                    1861 	.db #0x1c	; 28
      002710 06                    1862 	.db #0x06	; 6
      002711 03                    1863 	.db #0x03	; 3
      002712 1F                    1864 	.db #0x1f	; 31
      002713 33                    1865 	.db #0x33	; 51	'3'
      002714 33                    1866 	.db #0x33	; 51	'3'
      002715 1E                    1867 	.db #0x1e	; 30
      002716 00                    1868 	.db #0x00	; 0
      002717 3F                    1869 	.db #0x3f	; 63
      002718 33                    1870 	.db #0x33	; 51	'3'
      002719 30                    1871 	.db #0x30	; 48	'0'
      00271A 18                    1872 	.db #0x18	; 24
      00271B 0C                    1873 	.db #0x0c	; 12
      00271C 0C                    1874 	.db #0x0c	; 12
      00271D 0C                    1875 	.db #0x0c	; 12
      00271E 00                    1876 	.db #0x00	; 0
      00271F 1E                    1877 	.db #0x1e	; 30
      002720 33                    1878 	.db #0x33	; 51	'3'
      002721 33                    1879 	.db #0x33	; 51	'3'
      002722 1E                    1880 	.db #0x1e	; 30
      002723 33                    1881 	.db #0x33	; 51	'3'
      002724 33                    1882 	.db #0x33	; 51	'3'
      002725 1E                    1883 	.db #0x1e	; 30
      002726 00                    1884 	.db #0x00	; 0
      002727 1E                    1885 	.db #0x1e	; 30
      002728 33                    1886 	.db #0x33	; 51	'3'
      002729 33                    1887 	.db #0x33	; 51	'3'
      00272A 3E                    1888 	.db #0x3e	; 62
      00272B 30                    1889 	.db #0x30	; 48	'0'
      00272C 18                    1890 	.db #0x18	; 24
      00272D 0E                    1891 	.db #0x0e	; 14
      00272E 00                    1892 	.db #0x00	; 0
      00272F 00                    1893 	.db #0x00	; 0
      002730 0C                    1894 	.db #0x0c	; 12
      002731 0C                    1895 	.db #0x0c	; 12
      002732 00                    1896 	.db #0x00	; 0
      002733 00                    1897 	.db #0x00	; 0
      002734 0C                    1898 	.db #0x0c	; 12
      002735 0C                    1899 	.db #0x0c	; 12
      002736 00                    1900 	.db #0x00	; 0
      002737 00                    1901 	.db #0x00	; 0
      002738 0C                    1902 	.db #0x0c	; 12
      002739 0C                    1903 	.db #0x0c	; 12
      00273A 00                    1904 	.db #0x00	; 0
      00273B 00                    1905 	.db #0x00	; 0
      00273C 0C                    1906 	.db #0x0c	; 12
      00273D 0C                    1907 	.db #0x0c	; 12
      00273E 06                    1908 	.db #0x06	; 6
      00273F 18                    1909 	.db #0x18	; 24
      002740 0C                    1910 	.db #0x0c	; 12
      002741 06                    1911 	.db #0x06	; 6
      002742 03                    1912 	.db #0x03	; 3
      002743 06                    1913 	.db #0x06	; 6
      002744 0C                    1914 	.db #0x0c	; 12
      002745 18                    1915 	.db #0x18	; 24
      002746 00                    1916 	.db #0x00	; 0
      002747 00                    1917 	.db #0x00	; 0
      002748 00                    1918 	.db #0x00	; 0
      002749 3F                    1919 	.db #0x3f	; 63
      00274A 00                    1920 	.db #0x00	; 0
      00274B 00                    1921 	.db #0x00	; 0
      00274C 3F                    1922 	.db #0x3f	; 63
      00274D 00                    1923 	.db #0x00	; 0
      00274E 00                    1924 	.db #0x00	; 0
      00274F 06                    1925 	.db #0x06	; 6
      002750 0C                    1926 	.db #0x0c	; 12
      002751 18                    1927 	.db #0x18	; 24
      002752 30                    1928 	.db #0x30	; 48	'0'
      002753 18                    1929 	.db #0x18	; 24
      002754 0C                    1930 	.db #0x0c	; 12
      002755 06                    1931 	.db #0x06	; 6
      002756 00                    1932 	.db #0x00	; 0
      002757 1E                    1933 	.db #0x1e	; 30
      002758 33                    1934 	.db #0x33	; 51	'3'
      002759 30                    1935 	.db #0x30	; 48	'0'
      00275A 18                    1936 	.db #0x18	; 24
      00275B 0C                    1937 	.db #0x0c	; 12
      00275C 00                    1938 	.db #0x00	; 0
      00275D 0C                    1939 	.db #0x0c	; 12
      00275E 00                    1940 	.db #0x00	; 0
      00275F 3E                    1941 	.db #0x3e	; 62
      002760 63                    1942 	.db #0x63	; 99	'c'
      002761 7B                    1943 	.db #0x7b	; 123
      002762 7B                    1944 	.db #0x7b	; 123
      002763 7B                    1945 	.db #0x7b	; 123
      002764 03                    1946 	.db #0x03	; 3
      002765 1E                    1947 	.db #0x1e	; 30
      002766 00                    1948 	.db #0x00	; 0
      002767 0C                    1949 	.db #0x0c	; 12
      002768 1E                    1950 	.db #0x1e	; 30
      002769 33                    1951 	.db #0x33	; 51	'3'
      00276A 33                    1952 	.db #0x33	; 51	'3'
      00276B 3F                    1953 	.db #0x3f	; 63
      00276C 33                    1954 	.db #0x33	; 51	'3'
      00276D 33                    1955 	.db #0x33	; 51	'3'
      00276E 00                    1956 	.db #0x00	; 0
      00276F 3F                    1957 	.db #0x3f	; 63
      002770 66                    1958 	.db #0x66	; 102	'f'
      002771 66                    1959 	.db #0x66	; 102	'f'
      002772 3E                    1960 	.db #0x3e	; 62
      002773 66                    1961 	.db #0x66	; 102	'f'
      002774 66                    1962 	.db #0x66	; 102	'f'
      002775 3F                    1963 	.db #0x3f	; 63
      002776 00                    1964 	.db #0x00	; 0
      002777 3C                    1965 	.db #0x3c	; 60
      002778 66                    1966 	.db #0x66	; 102	'f'
      002779 03                    1967 	.db #0x03	; 3
      00277A 03                    1968 	.db #0x03	; 3
      00277B 03                    1969 	.db #0x03	; 3
      00277C 66                    1970 	.db #0x66	; 102	'f'
      00277D 3C                    1971 	.db #0x3c	; 60
      00277E 00                    1972 	.db #0x00	; 0
      00277F 1F                    1973 	.db #0x1f	; 31
      002780 36                    1974 	.db #0x36	; 54	'6'
      002781 66                    1975 	.db #0x66	; 102	'f'
      002782 66                    1976 	.db #0x66	; 102	'f'
      002783 66                    1977 	.db #0x66	; 102	'f'
      002784 36                    1978 	.db #0x36	; 54	'6'
      002785 1F                    1979 	.db #0x1f	; 31
      002786 00                    1980 	.db #0x00	; 0
      002787 7F                    1981 	.db #0x7f	; 127
      002788 46                    1982 	.db #0x46	; 70	'F'
      002789 16                    1983 	.db #0x16	; 22
      00278A 1E                    1984 	.db #0x1e	; 30
      00278B 16                    1985 	.db #0x16	; 22
      00278C 46                    1986 	.db #0x46	; 70	'F'
      00278D 7F                    1987 	.db #0x7f	; 127
      00278E 00                    1988 	.db #0x00	; 0
      00278F 7F                    1989 	.db #0x7f	; 127
      002790 46                    1990 	.db #0x46	; 70	'F'
      002791 16                    1991 	.db #0x16	; 22
      002792 1E                    1992 	.db #0x1e	; 30
      002793 16                    1993 	.db #0x16	; 22
      002794 06                    1994 	.db #0x06	; 6
      002795 0F                    1995 	.db #0x0f	; 15
      002796 00                    1996 	.db #0x00	; 0
      002797 3C                    1997 	.db #0x3c	; 60
      002798 66                    1998 	.db #0x66	; 102	'f'
      002799 03                    1999 	.db #0x03	; 3
      00279A 03                    2000 	.db #0x03	; 3
      00279B 73                    2001 	.db #0x73	; 115	's'
      00279C 66                    2002 	.db #0x66	; 102	'f'
      00279D 7C                    2003 	.db #0x7c	; 124
      00279E 00                    2004 	.db #0x00	; 0
      00279F 33                    2005 	.db #0x33	; 51	'3'
      0027A0 33                    2006 	.db #0x33	; 51	'3'
      0027A1 33                    2007 	.db #0x33	; 51	'3'
      0027A2 3F                    2008 	.db #0x3f	; 63
      0027A3 33                    2009 	.db #0x33	; 51	'3'
      0027A4 33                    2010 	.db #0x33	; 51	'3'
      0027A5 33                    2011 	.db #0x33	; 51	'3'
      0027A6 00                    2012 	.db #0x00	; 0
      0027A7 1E                    2013 	.db #0x1e	; 30
      0027A8 0C                    2014 	.db #0x0c	; 12
      0027A9 0C                    2015 	.db #0x0c	; 12
      0027AA 0C                    2016 	.db #0x0c	; 12
      0027AB 0C                    2017 	.db #0x0c	; 12
      0027AC 0C                    2018 	.db #0x0c	; 12
      0027AD 1E                    2019 	.db #0x1e	; 30
      0027AE 00                    2020 	.db #0x00	; 0
      0027AF 78                    2021 	.db #0x78	; 120	'x'
      0027B0 30                    2022 	.db #0x30	; 48	'0'
      0027B1 30                    2023 	.db #0x30	; 48	'0'
      0027B2 30                    2024 	.db #0x30	; 48	'0'
      0027B3 33                    2025 	.db #0x33	; 51	'3'
      0027B4 33                    2026 	.db #0x33	; 51	'3'
      0027B5 1E                    2027 	.db #0x1e	; 30
      0027B6 00                    2028 	.db #0x00	; 0
      0027B7 67                    2029 	.db #0x67	; 103	'g'
      0027B8 66                    2030 	.db #0x66	; 102	'f'
      0027B9 36                    2031 	.db #0x36	; 54	'6'
      0027BA 1E                    2032 	.db #0x1e	; 30
      0027BB 36                    2033 	.db #0x36	; 54	'6'
      0027BC 66                    2034 	.db #0x66	; 102	'f'
      0027BD 67                    2035 	.db #0x67	; 103	'g'
      0027BE 00                    2036 	.db #0x00	; 0
      0027BF 0F                    2037 	.db #0x0f	; 15
      0027C0 06                    2038 	.db #0x06	; 6
      0027C1 06                    2039 	.db #0x06	; 6
      0027C2 06                    2040 	.db #0x06	; 6
      0027C3 46                    2041 	.db #0x46	; 70	'F'
      0027C4 66                    2042 	.db #0x66	; 102	'f'
      0027C5 7F                    2043 	.db #0x7f	; 127
      0027C6 00                    2044 	.db #0x00	; 0
      0027C7 63                    2045 	.db #0x63	; 99	'c'
      0027C8 77                    2046 	.db #0x77	; 119	'w'
      0027C9 7F                    2047 	.db #0x7f	; 127
      0027CA 7F                    2048 	.db #0x7f	; 127
      0027CB 6B                    2049 	.db #0x6b	; 107	'k'
      0027CC 63                    2050 	.db #0x63	; 99	'c'
      0027CD 63                    2051 	.db #0x63	; 99	'c'
      0027CE 00                    2052 	.db #0x00	; 0
      0027CF 63                    2053 	.db #0x63	; 99	'c'
      0027D0 67                    2054 	.db #0x67	; 103	'g'
      0027D1 6F                    2055 	.db #0x6f	; 111	'o'
      0027D2 7B                    2056 	.db #0x7b	; 123
      0027D3 73                    2057 	.db #0x73	; 115	's'
      0027D4 63                    2058 	.db #0x63	; 99	'c'
      0027D5 63                    2059 	.db #0x63	; 99	'c'
      0027D6 00                    2060 	.db #0x00	; 0
      0027D7 1C                    2061 	.db #0x1c	; 28
      0027D8 36                    2062 	.db #0x36	; 54	'6'
      0027D9 63                    2063 	.db #0x63	; 99	'c'
      0027DA 63                    2064 	.db #0x63	; 99	'c'
      0027DB 63                    2065 	.db #0x63	; 99	'c'
      0027DC 36                    2066 	.db #0x36	; 54	'6'
      0027DD 1C                    2067 	.db #0x1c	; 28
      0027DE 00                    2068 	.db #0x00	; 0
      0027DF 3F                    2069 	.db #0x3f	; 63
      0027E0 66                    2070 	.db #0x66	; 102	'f'
      0027E1 66                    2071 	.db #0x66	; 102	'f'
      0027E2 3E                    2072 	.db #0x3e	; 62
      0027E3 06                    2073 	.db #0x06	; 6
      0027E4 06                    2074 	.db #0x06	; 6
      0027E5 0F                    2075 	.db #0x0f	; 15
      0027E6 00                    2076 	.db #0x00	; 0
      0027E7 1E                    2077 	.db #0x1e	; 30
      0027E8 33                    2078 	.db #0x33	; 51	'3'
      0027E9 33                    2079 	.db #0x33	; 51	'3'
      0027EA 33                    2080 	.db #0x33	; 51	'3'
      0027EB 3B                    2081 	.db #0x3b	; 59
      0027EC 1E                    2082 	.db #0x1e	; 30
      0027ED 38                    2083 	.db #0x38	; 56	'8'
      0027EE 00                    2084 	.db #0x00	; 0
      0027EF 3F                    2085 	.db #0x3f	; 63
      0027F0 66                    2086 	.db #0x66	; 102	'f'
      0027F1 66                    2087 	.db #0x66	; 102	'f'
      0027F2 3E                    2088 	.db #0x3e	; 62
      0027F3 36                    2089 	.db #0x36	; 54	'6'
      0027F4 66                    2090 	.db #0x66	; 102	'f'
      0027F5 67                    2091 	.db #0x67	; 103	'g'
      0027F6 00                    2092 	.db #0x00	; 0
      0027F7 1E                    2093 	.db #0x1e	; 30
      0027F8 33                    2094 	.db #0x33	; 51	'3'
      0027F9 07                    2095 	.db #0x07	; 7
      0027FA 0E                    2096 	.db #0x0e	; 14
      0027FB 38                    2097 	.db #0x38	; 56	'8'
      0027FC 33                    2098 	.db #0x33	; 51	'3'
      0027FD 1E                    2099 	.db #0x1e	; 30
      0027FE 00                    2100 	.db #0x00	; 0
      0027FF 3F                    2101 	.db #0x3f	; 63
      002800 2D                    2102 	.db #0x2d	; 45
      002801 0C                    2103 	.db #0x0c	; 12
      002802 0C                    2104 	.db #0x0c	; 12
      002803 0C                    2105 	.db #0x0c	; 12
      002804 0C                    2106 	.db #0x0c	; 12
      002805 1E                    2107 	.db #0x1e	; 30
      002806 00                    2108 	.db #0x00	; 0
      002807 33                    2109 	.db #0x33	; 51	'3'
      002808 33                    2110 	.db #0x33	; 51	'3'
      002809 33                    2111 	.db #0x33	; 51	'3'
      00280A 33                    2112 	.db #0x33	; 51	'3'
      00280B 33                    2113 	.db #0x33	; 51	'3'
      00280C 33                    2114 	.db #0x33	; 51	'3'
      00280D 3F                    2115 	.db #0x3f	; 63
      00280E 00                    2116 	.db #0x00	; 0
      00280F 33                    2117 	.db #0x33	; 51	'3'
      002810 33                    2118 	.db #0x33	; 51	'3'
      002811 33                    2119 	.db #0x33	; 51	'3'
      002812 33                    2120 	.db #0x33	; 51	'3'
      002813 33                    2121 	.db #0x33	; 51	'3'
      002814 1E                    2122 	.db #0x1e	; 30
      002815 0C                    2123 	.db #0x0c	; 12
      002816 00                    2124 	.db #0x00	; 0
      002817 63                    2125 	.db #0x63	; 99	'c'
      002818 63                    2126 	.db #0x63	; 99	'c'
      002819 63                    2127 	.db #0x63	; 99	'c'
      00281A 6B                    2128 	.db #0x6b	; 107	'k'
      00281B 7F                    2129 	.db #0x7f	; 127
      00281C 77                    2130 	.db #0x77	; 119	'w'
      00281D 63                    2131 	.db #0x63	; 99	'c'
      00281E 00                    2132 	.db #0x00	; 0
      00281F 63                    2133 	.db #0x63	; 99	'c'
      002820 63                    2134 	.db #0x63	; 99	'c'
      002821 36                    2135 	.db #0x36	; 54	'6'
      002822 1C                    2136 	.db #0x1c	; 28
      002823 1C                    2137 	.db #0x1c	; 28
      002824 36                    2138 	.db #0x36	; 54	'6'
      002825 63                    2139 	.db #0x63	; 99	'c'
      002826 00                    2140 	.db #0x00	; 0
      002827 33                    2141 	.db #0x33	; 51	'3'
      002828 33                    2142 	.db #0x33	; 51	'3'
      002829 33                    2143 	.db #0x33	; 51	'3'
      00282A 1E                    2144 	.db #0x1e	; 30
      00282B 0C                    2145 	.db #0x0c	; 12
      00282C 0C                    2146 	.db #0x0c	; 12
      00282D 1E                    2147 	.db #0x1e	; 30
      00282E 00                    2148 	.db #0x00	; 0
      00282F 7F                    2149 	.db #0x7f	; 127
      002830 63                    2150 	.db #0x63	; 99	'c'
      002831 31                    2151 	.db #0x31	; 49	'1'
      002832 18                    2152 	.db #0x18	; 24
      002833 4C                    2153 	.db #0x4c	; 76	'L'
      002834 66                    2154 	.db #0x66	; 102	'f'
      002835 7F                    2155 	.db #0x7f	; 127
      002836 00                    2156 	.db #0x00	; 0
      002837 1E                    2157 	.db #0x1e	; 30
      002838 06                    2158 	.db #0x06	; 6
      002839 06                    2159 	.db #0x06	; 6
      00283A 06                    2160 	.db #0x06	; 6
      00283B 06                    2161 	.db #0x06	; 6
      00283C 06                    2162 	.db #0x06	; 6
      00283D 1E                    2163 	.db #0x1e	; 30
      00283E 00                    2164 	.db #0x00	; 0
      00283F 03                    2165 	.db #0x03	; 3
      002840 06                    2166 	.db #0x06	; 6
      002841 0C                    2167 	.db #0x0c	; 12
      002842 18                    2168 	.db #0x18	; 24
      002843 30                    2169 	.db #0x30	; 48	'0'
      002844 60                    2170 	.db #0x60	; 96
      002845 40                    2171 	.db #0x40	; 64
      002846 00                    2172 	.db #0x00	; 0
      002847 1E                    2173 	.db #0x1e	; 30
      002848 18                    2174 	.db #0x18	; 24
      002849 18                    2175 	.db #0x18	; 24
      00284A 18                    2176 	.db #0x18	; 24
      00284B 18                    2177 	.db #0x18	; 24
      00284C 18                    2178 	.db #0x18	; 24
      00284D 1E                    2179 	.db #0x1e	; 30
      00284E 00                    2180 	.db #0x00	; 0
      00284F 08                    2181 	.db #0x08	; 8
      002850 1C                    2182 	.db #0x1c	; 28
      002851 36                    2183 	.db #0x36	; 54	'6'
      002852 63                    2184 	.db #0x63	; 99	'c'
      002853 00                    2185 	.db #0x00	; 0
      002854 00                    2186 	.db #0x00	; 0
      002855 00                    2187 	.db #0x00	; 0
      002856 00                    2188 	.db #0x00	; 0
      002857 00                    2189 	.db #0x00	; 0
      002858 00                    2190 	.db #0x00	; 0
      002859 00                    2191 	.db #0x00	; 0
      00285A 00                    2192 	.db #0x00	; 0
      00285B 00                    2193 	.db #0x00	; 0
      00285C 00                    2194 	.db #0x00	; 0
      00285D 00                    2195 	.db #0x00	; 0
      00285E FF                    2196 	.db #0xff	; 255
      00285F 0C                    2197 	.db #0x0c	; 12
      002860 0C                    2198 	.db #0x0c	; 12
      002861 18                    2199 	.db #0x18	; 24
      002862 00                    2200 	.db #0x00	; 0
      002863 00                    2201 	.db #0x00	; 0
      002864 00                    2202 	.db #0x00	; 0
      002865 00                    2203 	.db #0x00	; 0
      002866 00                    2204 	.db #0x00	; 0
      002867 00                    2205 	.db #0x00	; 0
      002868 00                    2206 	.db #0x00	; 0
      002869 1E                    2207 	.db #0x1e	; 30
      00286A 30                    2208 	.db #0x30	; 48	'0'
      00286B 3E                    2209 	.db #0x3e	; 62
      00286C 33                    2210 	.db #0x33	; 51	'3'
      00286D 6E                    2211 	.db #0x6e	; 110	'n'
      00286E 00                    2212 	.db #0x00	; 0
      00286F 07                    2213 	.db #0x07	; 7
      002870 06                    2214 	.db #0x06	; 6
      002871 06                    2215 	.db #0x06	; 6
      002872 3E                    2216 	.db #0x3e	; 62
      002873 66                    2217 	.db #0x66	; 102	'f'
      002874 66                    2218 	.db #0x66	; 102	'f'
      002875 3B                    2219 	.db #0x3b	; 59
      002876 00                    2220 	.db #0x00	; 0
      002877 00                    2221 	.db #0x00	; 0
      002878 00                    2222 	.db #0x00	; 0
      002879 1E                    2223 	.db #0x1e	; 30
      00287A 33                    2224 	.db #0x33	; 51	'3'
      00287B 03                    2225 	.db #0x03	; 3
      00287C 33                    2226 	.db #0x33	; 51	'3'
      00287D 1E                    2227 	.db #0x1e	; 30
      00287E 00                    2228 	.db #0x00	; 0
      00287F 38                    2229 	.db #0x38	; 56	'8'
      002880 30                    2230 	.db #0x30	; 48	'0'
      002881 30                    2231 	.db #0x30	; 48	'0'
      002882 3E                    2232 	.db #0x3e	; 62
      002883 33                    2233 	.db #0x33	; 51	'3'
      002884 33                    2234 	.db #0x33	; 51	'3'
      002885 6E                    2235 	.db #0x6e	; 110	'n'
      002886 00                    2236 	.db #0x00	; 0
      002887 00                    2237 	.db #0x00	; 0
      002888 00                    2238 	.db #0x00	; 0
      002889 1E                    2239 	.db #0x1e	; 30
      00288A 33                    2240 	.db #0x33	; 51	'3'
      00288B 3F                    2241 	.db #0x3f	; 63
      00288C 03                    2242 	.db #0x03	; 3
      00288D 1E                    2243 	.db #0x1e	; 30
      00288E 00                    2244 	.db #0x00	; 0
      00288F 1C                    2245 	.db #0x1c	; 28
      002890 36                    2246 	.db #0x36	; 54	'6'
      002891 06                    2247 	.db #0x06	; 6
      002892 0F                    2248 	.db #0x0f	; 15
      002893 06                    2249 	.db #0x06	; 6
      002894 06                    2250 	.db #0x06	; 6
      002895 0F                    2251 	.db #0x0f	; 15
      002896 00                    2252 	.db #0x00	; 0
      002897 00                    2253 	.db #0x00	; 0
      002898 00                    2254 	.db #0x00	; 0
      002899 6E                    2255 	.db #0x6e	; 110	'n'
      00289A 33                    2256 	.db #0x33	; 51	'3'
      00289B 33                    2257 	.db #0x33	; 51	'3'
      00289C 3E                    2258 	.db #0x3e	; 62
      00289D 30                    2259 	.db #0x30	; 48	'0'
      00289E 1F                    2260 	.db #0x1f	; 31
      00289F 07                    2261 	.db #0x07	; 7
      0028A0 06                    2262 	.db #0x06	; 6
      0028A1 36                    2263 	.db #0x36	; 54	'6'
      0028A2 6E                    2264 	.db #0x6e	; 110	'n'
      0028A3 66                    2265 	.db #0x66	; 102	'f'
      0028A4 66                    2266 	.db #0x66	; 102	'f'
      0028A5 67                    2267 	.db #0x67	; 103	'g'
      0028A6 00                    2268 	.db #0x00	; 0
      0028A7 0C                    2269 	.db #0x0c	; 12
      0028A8 00                    2270 	.db #0x00	; 0
      0028A9 0E                    2271 	.db #0x0e	; 14
      0028AA 0C                    2272 	.db #0x0c	; 12
      0028AB 0C                    2273 	.db #0x0c	; 12
      0028AC 0C                    2274 	.db #0x0c	; 12
      0028AD 1E                    2275 	.db #0x1e	; 30
      0028AE 00                    2276 	.db #0x00	; 0
      0028AF 30                    2277 	.db #0x30	; 48	'0'
      0028B0 00                    2278 	.db #0x00	; 0
      0028B1 30                    2279 	.db #0x30	; 48	'0'
      0028B2 30                    2280 	.db #0x30	; 48	'0'
      0028B3 30                    2281 	.db #0x30	; 48	'0'
      0028B4 33                    2282 	.db #0x33	; 51	'3'
      0028B5 33                    2283 	.db #0x33	; 51	'3'
      0028B6 1E                    2284 	.db #0x1e	; 30
      0028B7 07                    2285 	.db #0x07	; 7
      0028B8 06                    2286 	.db #0x06	; 6
      0028B9 66                    2287 	.db #0x66	; 102	'f'
      0028BA 36                    2288 	.db #0x36	; 54	'6'
      0028BB 1E                    2289 	.db #0x1e	; 30
      0028BC 36                    2290 	.db #0x36	; 54	'6'
      0028BD 67                    2291 	.db #0x67	; 103	'g'
      0028BE 00                    2292 	.db #0x00	; 0
      0028BF 0E                    2293 	.db #0x0e	; 14
      0028C0 0C                    2294 	.db #0x0c	; 12
      0028C1 0C                    2295 	.db #0x0c	; 12
      0028C2 0C                    2296 	.db #0x0c	; 12
      0028C3 0C                    2297 	.db #0x0c	; 12
      0028C4 0C                    2298 	.db #0x0c	; 12
      0028C5 1E                    2299 	.db #0x1e	; 30
      0028C6 00                    2300 	.db #0x00	; 0
      0028C7 00                    2301 	.db #0x00	; 0
      0028C8 00                    2302 	.db #0x00	; 0
      0028C9 33                    2303 	.db #0x33	; 51	'3'
      0028CA 7F                    2304 	.db #0x7f	; 127
      0028CB 7F                    2305 	.db #0x7f	; 127
      0028CC 6B                    2306 	.db #0x6b	; 107	'k'
      0028CD 63                    2307 	.db #0x63	; 99	'c'
      0028CE 00                    2308 	.db #0x00	; 0
      0028CF 00                    2309 	.db #0x00	; 0
      0028D0 00                    2310 	.db #0x00	; 0
      0028D1 1F                    2311 	.db #0x1f	; 31
      0028D2 33                    2312 	.db #0x33	; 51	'3'
      0028D3 33                    2313 	.db #0x33	; 51	'3'
      0028D4 33                    2314 	.db #0x33	; 51	'3'
      0028D5 33                    2315 	.db #0x33	; 51	'3'
      0028D6 00                    2316 	.db #0x00	; 0
      0028D7 00                    2317 	.db #0x00	; 0
      0028D8 00                    2318 	.db #0x00	; 0
      0028D9 1E                    2319 	.db #0x1e	; 30
      0028DA 33                    2320 	.db #0x33	; 51	'3'
      0028DB 33                    2321 	.db #0x33	; 51	'3'
      0028DC 33                    2322 	.db #0x33	; 51	'3'
      0028DD 1E                    2323 	.db #0x1e	; 30
      0028DE 00                    2324 	.db #0x00	; 0
      0028DF 00                    2325 	.db #0x00	; 0
      0028E0 00                    2326 	.db #0x00	; 0
      0028E1 3B                    2327 	.db #0x3b	; 59
      0028E2 66                    2328 	.db #0x66	; 102	'f'
      0028E3 66                    2329 	.db #0x66	; 102	'f'
      0028E4 3E                    2330 	.db #0x3e	; 62
      0028E5 06                    2331 	.db #0x06	; 6
      0028E6 0F                    2332 	.db #0x0f	; 15
      0028E7 00                    2333 	.db #0x00	; 0
      0028E8 00                    2334 	.db #0x00	; 0
      0028E9 6E                    2335 	.db #0x6e	; 110	'n'
      0028EA 33                    2336 	.db #0x33	; 51	'3'
      0028EB 33                    2337 	.db #0x33	; 51	'3'
      0028EC 3E                    2338 	.db #0x3e	; 62
      0028ED 30                    2339 	.db #0x30	; 48	'0'
      0028EE 78                    2340 	.db #0x78	; 120	'x'
      0028EF 00                    2341 	.db #0x00	; 0
      0028F0 00                    2342 	.db #0x00	; 0
      0028F1 3B                    2343 	.db #0x3b	; 59
      0028F2 6E                    2344 	.db #0x6e	; 110	'n'
      0028F3 66                    2345 	.db #0x66	; 102	'f'
      0028F4 06                    2346 	.db #0x06	; 6
      0028F5 0F                    2347 	.db #0x0f	; 15
      0028F6 00                    2348 	.db #0x00	; 0
      0028F7 00                    2349 	.db #0x00	; 0
      0028F8 00                    2350 	.db #0x00	; 0
      0028F9 3E                    2351 	.db #0x3e	; 62
      0028FA 03                    2352 	.db #0x03	; 3
      0028FB 1E                    2353 	.db #0x1e	; 30
      0028FC 30                    2354 	.db #0x30	; 48	'0'
      0028FD 1F                    2355 	.db #0x1f	; 31
      0028FE 00                    2356 	.db #0x00	; 0
      0028FF 08                    2357 	.db #0x08	; 8
      002900 0C                    2358 	.db #0x0c	; 12
      002901 3E                    2359 	.db #0x3e	; 62
      002902 0C                    2360 	.db #0x0c	; 12
      002903 0C                    2361 	.db #0x0c	; 12
      002904 2C                    2362 	.db #0x2c	; 44
      002905 18                    2363 	.db #0x18	; 24
      002906 00                    2364 	.db #0x00	; 0
      002907 00                    2365 	.db #0x00	; 0
      002908 00                    2366 	.db #0x00	; 0
      002909 33                    2367 	.db #0x33	; 51	'3'
      00290A 33                    2368 	.db #0x33	; 51	'3'
      00290B 33                    2369 	.db #0x33	; 51	'3'
      00290C 33                    2370 	.db #0x33	; 51	'3'
      00290D 6E                    2371 	.db #0x6e	; 110	'n'
      00290E 00                    2372 	.db #0x00	; 0
      00290F 00                    2373 	.db #0x00	; 0
      002910 00                    2374 	.db #0x00	; 0
      002911 33                    2375 	.db #0x33	; 51	'3'
      002912 33                    2376 	.db #0x33	; 51	'3'
      002913 33                    2377 	.db #0x33	; 51	'3'
      002914 1E                    2378 	.db #0x1e	; 30
      002915 0C                    2379 	.db #0x0c	; 12
      002916 00                    2380 	.db #0x00	; 0
      002917 00                    2381 	.db #0x00	; 0
      002918 00                    2382 	.db #0x00	; 0
      002919 63                    2383 	.db #0x63	; 99	'c'
      00291A 6B                    2384 	.db #0x6b	; 107	'k'
      00291B 7F                    2385 	.db #0x7f	; 127
      00291C 7F                    2386 	.db #0x7f	; 127
      00291D 36                    2387 	.db #0x36	; 54	'6'
      00291E 00                    2388 	.db #0x00	; 0
      00291F 00                    2389 	.db #0x00	; 0
      002920 00                    2390 	.db #0x00	; 0
      002921 63                    2391 	.db #0x63	; 99	'c'
      002922 36                    2392 	.db #0x36	; 54	'6'
      002923 1C                    2393 	.db #0x1c	; 28
      002924 36                    2394 	.db #0x36	; 54	'6'
      002925 63                    2395 	.db #0x63	; 99	'c'
      002926 00                    2396 	.db #0x00	; 0
      002927 00                    2397 	.db #0x00	; 0
      002928 00                    2398 	.db #0x00	; 0
      002929 33                    2399 	.db #0x33	; 51	'3'
      00292A 33                    2400 	.db #0x33	; 51	'3'
      00292B 33                    2401 	.db #0x33	; 51	'3'
      00292C 3E                    2402 	.db #0x3e	; 62
      00292D 30                    2403 	.db #0x30	; 48	'0'
      00292E 1F                    2404 	.db #0x1f	; 31
      00292F 00                    2405 	.db #0x00	; 0
      002930 00                    2406 	.db #0x00	; 0
      002931 3F                    2407 	.db #0x3f	; 63
      002932 19                    2408 	.db #0x19	; 25
      002933 0C                    2409 	.db #0x0c	; 12
      002934 26                    2410 	.db #0x26	; 38
      002935 3F                    2411 	.db #0x3f	; 63
      002936 00                    2412 	.db #0x00	; 0
      002937 38                    2413 	.db #0x38	; 56	'8'
      002938 0C                    2414 	.db #0x0c	; 12
      002939 0C                    2415 	.db #0x0c	; 12
      00293A 07                    2416 	.db #0x07	; 7
      00293B 0C                    2417 	.db #0x0c	; 12
      00293C 0C                    2418 	.db #0x0c	; 12
      00293D 38                    2419 	.db #0x38	; 56	'8'
      00293E 00                    2420 	.db #0x00	; 0
      00293F 18                    2421 	.db #0x18	; 24
      002940 18                    2422 	.db #0x18	; 24
      002941 18                    2423 	.db #0x18	; 24
      002942 00                    2424 	.db #0x00	; 0
      002943 18                    2425 	.db #0x18	; 24
      002944 18                    2426 	.db #0x18	; 24
      002945 18                    2427 	.db #0x18	; 24
      002946 00                    2428 	.db #0x00	; 0
      002947 07                    2429 	.db #0x07	; 7
      002948 0C                    2430 	.db #0x0c	; 12
      002949 0C                    2431 	.db #0x0c	; 12
      00294A 38                    2432 	.db #0x38	; 56	'8'
      00294B 0C                    2433 	.db #0x0c	; 12
      00294C 0C                    2434 	.db #0x0c	; 12
      00294D 07                    2435 	.db #0x07	; 7
      00294E 00                    2436 	.db #0x00	; 0
      00294F 6E                    2437 	.db #0x6e	; 110	'n'
      002950 3B                    2438 	.db #0x3b	; 59
      002951 00                    2439 	.db #0x00	; 0
      002952 00                    2440 	.db #0x00	; 0
      002953 00                    2441 	.db #0x00	; 0
      002954 00                    2442 	.db #0x00	; 0
      002955 00                    2443 	.db #0x00	; 0
      002956 00                    2444 	.db #0x00	; 0
      002957 00                    2445 	.db #0x00	; 0
      002958 00                    2446 	.db #0x00	; 0
      002959 00                    2447 	.db #0x00	; 0
      00295A 00                    2448 	.db #0x00	; 0
      00295B 00                    2449 	.db #0x00	; 0
      00295C 00                    2450 	.db #0x00	; 0
      00295D 00                    2451 	.db #0x00	; 0
      00295E 00                    2452 	.db #0x00	; 0
      00295F 00                    2453 	.db #0x00	; 0
      002960 00                    2454 	.db #0x00	; 0
      002961 00                    2455 	.db #0x00	; 0
      002962 00                    2456 	.db #0x00	; 0
      002963 00                    2457 	.db #0x00	; 0
      002964 00                    2458 	.db #0x00	; 0
      002965 00                    2459 	.db #0x00	; 0
      002966 00                    2460 	.db #0x00	; 0
      002967 00                    2461 	.db #0x00	; 0
      002968 00                    2462 	.db #0x00	; 0
      002969 00                    2463 	.db #0x00	; 0
      00296A 00                    2464 	.db #0x00	; 0
      00296B 00                    2465 	.db #0x00	; 0
      00296C 00                    2466 	.db #0x00	; 0
      00296D 00                    2467 	.db #0x00	; 0
      00296E 00                    2468 	.db #0x00	; 0
      00296F 00                    2469 	.db #0x00	; 0
      002970 00                    2470 	.db #0x00	; 0
      002971 00                    2471 	.db #0x00	; 0
      002972 00                    2472 	.db #0x00	; 0
      002973 00                    2473 	.db #0x00	; 0
      002974 00                    2474 	.db #0x00	; 0
      002975 00                    2475 	.db #0x00	; 0
      002976 00                    2476 	.db #0x00	; 0
      002977 00                    2477 	.db #0x00	; 0
      002978 00                    2478 	.db #0x00	; 0
      002979 00                    2479 	.db #0x00	; 0
      00297A 00                    2480 	.db #0x00	; 0
      00297B 00                    2481 	.db #0x00	; 0
      00297C 00                    2482 	.db #0x00	; 0
      00297D 00                    2483 	.db #0x00	; 0
      00297E 00                    2484 	.db #0x00	; 0
      00297F 00                    2485 	.db #0x00	; 0
      002980 00                    2486 	.db #0x00	; 0
      002981 00                    2487 	.db #0x00	; 0
      002982 00                    2488 	.db #0x00	; 0
      002983 00                    2489 	.db #0x00	; 0
      002984 00                    2490 	.db #0x00	; 0
      002985 00                    2491 	.db #0x00	; 0
      002986 00                    2492 	.db #0x00	; 0
      002987 00                    2493 	.db #0x00	; 0
      002988 00                    2494 	.db #0x00	; 0
      002989 00                    2495 	.db #0x00	; 0
      00298A 00                    2496 	.db #0x00	; 0
      00298B 00                    2497 	.db #0x00	; 0
      00298C 00                    2498 	.db #0x00	; 0
      00298D 00                    2499 	.db #0x00	; 0
      00298E 00                    2500 	.db #0x00	; 0
      00298F 00                    2501 	.db #0x00	; 0
      002990 00                    2502 	.db #0x00	; 0
      002991 00                    2503 	.db #0x00	; 0
      002992 00                    2504 	.db #0x00	; 0
      002993 00                    2505 	.db #0x00	; 0
      002994 00                    2506 	.db #0x00	; 0
      002995 00                    2507 	.db #0x00	; 0
      002996 00                    2508 	.db #0x00	; 0
      002997 00                    2509 	.db #0x00	; 0
      002998 00                    2510 	.db #0x00	; 0
      002999 00                    2511 	.db #0x00	; 0
      00299A 00                    2512 	.db #0x00	; 0
      00299B 00                    2513 	.db #0x00	; 0
      00299C 00                    2514 	.db #0x00	; 0
      00299D 00                    2515 	.db #0x00	; 0
      00299E 00                    2516 	.db #0x00	; 0
      00299F 00                    2517 	.db #0x00	; 0
      0029A0 00                    2518 	.db #0x00	; 0
      0029A1 00                    2519 	.db #0x00	; 0
      0029A2 00                    2520 	.db #0x00	; 0
      0029A3 00                    2521 	.db #0x00	; 0
      0029A4 00                    2522 	.db #0x00	; 0
      0029A5 00                    2523 	.db #0x00	; 0
      0029A6 00                    2524 	.db #0x00	; 0
      0029A7 00                    2525 	.db #0x00	; 0
      0029A8 00                    2526 	.db #0x00	; 0
      0029A9 00                    2527 	.db #0x00	; 0
      0029AA 00                    2528 	.db #0x00	; 0
      0029AB 00                    2529 	.db #0x00	; 0
      0029AC 00                    2530 	.db #0x00	; 0
      0029AD 00                    2531 	.db #0x00	; 0
      0029AE 00                    2532 	.db #0x00	; 0
      0029AF 00                    2533 	.db #0x00	; 0
      0029B0 00                    2534 	.db #0x00	; 0
      0029B1 00                    2535 	.db #0x00	; 0
      0029B2 00                    2536 	.db #0x00	; 0
      0029B3 00                    2537 	.db #0x00	; 0
      0029B4 00                    2538 	.db #0x00	; 0
      0029B5 00                    2539 	.db #0x00	; 0
      0029B6 00                    2540 	.db #0x00	; 0
      0029B7 00                    2541 	.db #0x00	; 0
      0029B8 00                    2542 	.db #0x00	; 0
      0029B9 00                    2543 	.db #0x00	; 0
      0029BA 00                    2544 	.db #0x00	; 0
      0029BB 00                    2545 	.db #0x00	; 0
      0029BC 00                    2546 	.db #0x00	; 0
      0029BD 00                    2547 	.db #0x00	; 0
      0029BE 00                    2548 	.db #0x00	; 0
      0029BF 00                    2549 	.db #0x00	; 0
      0029C0 00                    2550 	.db #0x00	; 0
      0029C1 00                    2551 	.db #0x00	; 0
      0029C2 00                    2552 	.db #0x00	; 0
      0029C3 00                    2553 	.db #0x00	; 0
      0029C4 00                    2554 	.db #0x00	; 0
      0029C5 00                    2555 	.db #0x00	; 0
      0029C6 00                    2556 	.db #0x00	; 0
      0029C7 00                    2557 	.db #0x00	; 0
      0029C8 00                    2558 	.db #0x00	; 0
      0029C9 00                    2559 	.db #0x00	; 0
      0029CA 00                    2560 	.db #0x00	; 0
      0029CB 00                    2561 	.db #0x00	; 0
      0029CC 00                    2562 	.db #0x00	; 0
      0029CD 00                    2563 	.db #0x00	; 0
      0029CE 00                    2564 	.db #0x00	; 0
      0029CF 00                    2565 	.db #0x00	; 0
      0029D0 00                    2566 	.db #0x00	; 0
      0029D1 00                    2567 	.db #0x00	; 0
      0029D2 00                    2568 	.db #0x00	; 0
      0029D3 00                    2569 	.db #0x00	; 0
      0029D4 00                    2570 	.db #0x00	; 0
      0029D5 00                    2571 	.db #0x00	; 0
      0029D6 00                    2572 	.db #0x00	; 0
      0029D7 00                    2573 	.db #0x00	; 0
      0029D8 00                    2574 	.db #0x00	; 0
      0029D9 00                    2575 	.db #0x00	; 0
      0029DA 00                    2576 	.db #0x00	; 0
      0029DB 00                    2577 	.db #0x00	; 0
      0029DC 00                    2578 	.db #0x00	; 0
      0029DD 00                    2579 	.db #0x00	; 0
      0029DE 00                    2580 	.db #0x00	; 0
      0029DF 00                    2581 	.db #0x00	; 0
      0029E0 00                    2582 	.db #0x00	; 0
      0029E1 00                    2583 	.db #0x00	; 0
      0029E2 00                    2584 	.db #0x00	; 0
      0029E3 00                    2585 	.db #0x00	; 0
      0029E4 00                    2586 	.db #0x00	; 0
      0029E5 00                    2587 	.db #0x00	; 0
      0029E6 00                    2588 	.db #0x00	; 0
      0029E7 00                    2589 	.db #0x00	; 0
      0029E8 00                    2590 	.db #0x00	; 0
      0029E9 00                    2591 	.db #0x00	; 0
      0029EA 00                    2592 	.db #0x00	; 0
      0029EB 00                    2593 	.db #0x00	; 0
      0029EC 00                    2594 	.db #0x00	; 0
      0029ED 00                    2595 	.db #0x00	; 0
      0029EE 00                    2596 	.db #0x00	; 0
      0029EF 00                    2597 	.db #0x00	; 0
      0029F0 00                    2598 	.db #0x00	; 0
      0029F1 00                    2599 	.db #0x00	; 0
      0029F2 00                    2600 	.db #0x00	; 0
      0029F3 00                    2601 	.db #0x00	; 0
      0029F4 00                    2602 	.db #0x00	; 0
      0029F5 00                    2603 	.db #0x00	; 0
      0029F6 00                    2604 	.db #0x00	; 0
      0029F7 00                    2605 	.db #0x00	; 0
      0029F8 00                    2606 	.db #0x00	; 0
      0029F9 00                    2607 	.db #0x00	; 0
      0029FA 00                    2608 	.db #0x00	; 0
      0029FB 00                    2609 	.db #0x00	; 0
      0029FC 00                    2610 	.db #0x00	; 0
      0029FD 00                    2611 	.db #0x00	; 0
      0029FE 00                    2612 	.db #0x00	; 0
      0029FF 00                    2613 	.db #0x00	; 0
      002A00 00                    2614 	.db #0x00	; 0
      002A01 00                    2615 	.db #0x00	; 0
      002A02 00                    2616 	.db #0x00	; 0
      002A03 00                    2617 	.db #0x00	; 0
      002A04 00                    2618 	.db #0x00	; 0
      002A05 00                    2619 	.db #0x00	; 0
      002A06 00                    2620 	.db #0x00	; 0
      002A07 00                    2621 	.db #0x00	; 0
      002A08 00                    2622 	.db #0x00	; 0
      002A09 00                    2623 	.db #0x00	; 0
      002A0A 00                    2624 	.db #0x00	; 0
      002A0B 00                    2625 	.db #0x00	; 0
      002A0C 00                    2626 	.db #0x00	; 0
      002A0D 00                    2627 	.db #0x00	; 0
      002A0E 00                    2628 	.db #0x00	; 0
      002A0F 00                    2629 	.db #0x00	; 0
      002A10 00                    2630 	.db #0x00	; 0
      002A11 00                    2631 	.db #0x00	; 0
      002A12 00                    2632 	.db #0x00	; 0
      002A13 00                    2633 	.db #0x00	; 0
      002A14 00                    2634 	.db #0x00	; 0
      002A15 00                    2635 	.db #0x00	; 0
      002A16 00                    2636 	.db #0x00	; 0
      002A17 00                    2637 	.db #0x00	; 0
      002A18 00                    2638 	.db #0x00	; 0
      002A19 00                    2639 	.db #0x00	; 0
      002A1A 00                    2640 	.db #0x00	; 0
      002A1B 00                    2641 	.db #0x00	; 0
      002A1C 00                    2642 	.db #0x00	; 0
      002A1D 00                    2643 	.db #0x00	; 0
      002A1E 00                    2644 	.db #0x00	; 0
      002A1F 00                    2645 	.db #0x00	; 0
      002A20 00                    2646 	.db #0x00	; 0
      002A21 00                    2647 	.db #0x00	; 0
      002A22 00                    2648 	.db #0x00	; 0
      002A23 00                    2649 	.db #0x00	; 0
      002A24 00                    2650 	.db #0x00	; 0
      002A25 00                    2651 	.db #0x00	; 0
      002A26 00                    2652 	.db #0x00	; 0
      002A27 00                    2653 	.db #0x00	; 0
      002A28 00                    2654 	.db #0x00	; 0
      002A29 00                    2655 	.db #0x00	; 0
      002A2A 00                    2656 	.db #0x00	; 0
      002A2B 00                    2657 	.db #0x00	; 0
      002A2C 00                    2658 	.db #0x00	; 0
      002A2D 00                    2659 	.db #0x00	; 0
      002A2E 00                    2660 	.db #0x00	; 0
      002A2F 00                    2661 	.db #0x00	; 0
      002A30 00                    2662 	.db #0x00	; 0
      002A31 00                    2663 	.db #0x00	; 0
      002A32 00                    2664 	.db #0x00	; 0
      002A33 00                    2665 	.db #0x00	; 0
      002A34 00                    2666 	.db #0x00	; 0
      002A35 00                    2667 	.db #0x00	; 0
      002A36 00                    2668 	.db #0x00	; 0
      002A37 00                    2669 	.db #0x00	; 0
      002A38 00                    2670 	.db #0x00	; 0
      002A39 00                    2671 	.db #0x00	; 0
      002A3A 00                    2672 	.db #0x00	; 0
      002A3B 00                    2673 	.db #0x00	; 0
      002A3C 00                    2674 	.db #0x00	; 0
      002A3D 00                    2675 	.db #0x00	; 0
      002A3E 00                    2676 	.db #0x00	; 0
      002A3F 00                    2677 	.db #0x00	; 0
      002A40 00                    2678 	.db #0x00	; 0
      002A41 00                    2679 	.db #0x00	; 0
      002A42 00                    2680 	.db #0x00	; 0
      002A43 00                    2681 	.db #0x00	; 0
      002A44 00                    2682 	.db #0x00	; 0
      002A45 00                    2683 	.db #0x00	; 0
      002A46 00                    2684 	.db #0x00	; 0
      002A47 00                    2685 	.db #0x00	; 0
      002A48 00                    2686 	.db #0x00	; 0
      002A49 00                    2687 	.db #0x00	; 0
      002A4A 00                    2688 	.db #0x00	; 0
      002A4B 00                    2689 	.db #0x00	; 0
      002A4C 00                    2690 	.db #0x00	; 0
      002A4D 00                    2691 	.db #0x00	; 0
      002A4E 00                    2692 	.db #0x00	; 0
      002A4F 00                    2693 	.db #0x00	; 0
      002A50 00                    2694 	.db #0x00	; 0
      002A51 00                    2695 	.db #0x00	; 0
      002A52 00                    2696 	.db #0x00	; 0
      002A53 00                    2697 	.db #0x00	; 0
      002A54 00                    2698 	.db #0x00	; 0
      002A55 00                    2699 	.db #0x00	; 0
      002A56 00                    2700 	.db #0x00	; 0
      002A57 00                    2701 	.db #0x00	; 0
      002A58 00                    2702 	.db #0x00	; 0
      002A59 00                    2703 	.db #0x00	; 0
      002A5A 00                    2704 	.db #0x00	; 0
      002A5B 00                    2705 	.db #0x00	; 0
      002A5C 00                    2706 	.db #0x00	; 0
      002A5D 00                    2707 	.db #0x00	; 0
      002A5E 00                    2708 	.db #0x00	; 0
      002A5F 00                    2709 	.db #0x00	; 0
      002A60 00                    2710 	.db #0x00	; 0
      002A61 00                    2711 	.db #0x00	; 0
      002A62 00                    2712 	.db #0x00	; 0
      002A63 00                    2713 	.db #0x00	; 0
      002A64 00                    2714 	.db #0x00	; 0
      002A65 00                    2715 	.db #0x00	; 0
      002A66 00                    2716 	.db #0x00	; 0
      002A67 18                    2717 	.db #0x18	; 24
      002A68 18                    2718 	.db #0x18	; 24
      002A69 00                    2719 	.db #0x00	; 0
      002A6A 18                    2720 	.db #0x18	; 24
      002A6B 18                    2721 	.db #0x18	; 24
      002A6C 18                    2722 	.db #0x18	; 24
      002A6D 18                    2723 	.db #0x18	; 24
      002A6E 00                    2724 	.db #0x00	; 0
      002A6F 18                    2725 	.db #0x18	; 24
      002A70 18                    2726 	.db #0x18	; 24
      002A71 7E                    2727 	.db #0x7e	; 126
      002A72 03                    2728 	.db #0x03	; 3
      002A73 03                    2729 	.db #0x03	; 3
      002A74 7E                    2730 	.db #0x7e	; 126
      002A75 18                    2731 	.db #0x18	; 24
      002A76 18                    2732 	.db #0x18	; 24
      002A77 1C                    2733 	.db #0x1c	; 28
      002A78 36                    2734 	.db #0x36	; 54	'6'
      002A79 26                    2735 	.db #0x26	; 38
      002A7A 0F                    2736 	.db #0x0f	; 15
      002A7B 06                    2737 	.db #0x06	; 6
      002A7C 67                    2738 	.db #0x67	; 103	'g'
      002A7D 3F                    2739 	.db #0x3f	; 63
      002A7E 00                    2740 	.db #0x00	; 0
      002A7F 00                    2741 	.db #0x00	; 0
      002A80 00                    2742 	.db #0x00	; 0
      002A81 63                    2743 	.db #0x63	; 99	'c'
      002A82 3E                    2744 	.db #0x3e	; 62
      002A83 36                    2745 	.db #0x36	; 54	'6'
      002A84 3E                    2746 	.db #0x3e	; 62
      002A85 63                    2747 	.db #0x63	; 99	'c'
      002A86 00                    2748 	.db #0x00	; 0
      002A87 33                    2749 	.db #0x33	; 51	'3'
      002A88 33                    2750 	.db #0x33	; 51	'3'
      002A89 1E                    2751 	.db #0x1e	; 30
      002A8A 3F                    2752 	.db #0x3f	; 63
      002A8B 0C                    2753 	.db #0x0c	; 12
      002A8C 3F                    2754 	.db #0x3f	; 63
      002A8D 0C                    2755 	.db #0x0c	; 12
      002A8E 0C                    2756 	.db #0x0c	; 12
      002A8F 18                    2757 	.db #0x18	; 24
      002A90 18                    2758 	.db #0x18	; 24
      002A91 18                    2759 	.db #0x18	; 24
      002A92 00                    2760 	.db #0x00	; 0
      002A93 18                    2761 	.db #0x18	; 24
      002A94 18                    2762 	.db #0x18	; 24
      002A95 18                    2763 	.db #0x18	; 24
      002A96 00                    2764 	.db #0x00	; 0
      002A97 7C                    2765 	.db #0x7c	; 124
      002A98 C6                    2766 	.db #0xc6	; 198
      002A99 1C                    2767 	.db #0x1c	; 28
      002A9A 36                    2768 	.db #0x36	; 54	'6'
      002A9B 36                    2769 	.db #0x36	; 54	'6'
      002A9C 1C                    2770 	.db #0x1c	; 28
      002A9D 33                    2771 	.db #0x33	; 51	'3'
      002A9E 1E                    2772 	.db #0x1e	; 30
      002A9F 33                    2773 	.db #0x33	; 51	'3'
      002AA0 00                    2774 	.db #0x00	; 0
      002AA1 00                    2775 	.db #0x00	; 0
      002AA2 00                    2776 	.db #0x00	; 0
      002AA3 00                    2777 	.db #0x00	; 0
      002AA4 00                    2778 	.db #0x00	; 0
      002AA5 00                    2779 	.db #0x00	; 0
      002AA6 00                    2780 	.db #0x00	; 0
      002AA7 3C                    2781 	.db #0x3c	; 60
      002AA8 42                    2782 	.db #0x42	; 66	'B'
      002AA9 99                    2783 	.db #0x99	; 153
      002AAA 85                    2784 	.db #0x85	; 133
      002AAB 85                    2785 	.db #0x85	; 133
      002AAC 99                    2786 	.db #0x99	; 153
      002AAD 42                    2787 	.db #0x42	; 66	'B'
      002AAE 3C                    2788 	.db #0x3c	; 60
      002AAF 3C                    2789 	.db #0x3c	; 60
      002AB0 36                    2790 	.db #0x36	; 54	'6'
      002AB1 36                    2791 	.db #0x36	; 54	'6'
      002AB2 7C                    2792 	.db #0x7c	; 124
      002AB3 00                    2793 	.db #0x00	; 0
      002AB4 00                    2794 	.db #0x00	; 0
      002AB5 00                    2795 	.db #0x00	; 0
      002AB6 00                    2796 	.db #0x00	; 0
      002AB7 00                    2797 	.db #0x00	; 0
      002AB8 CC                    2798 	.db #0xcc	; 204
      002AB9 66                    2799 	.db #0x66	; 102	'f'
      002ABA 33                    2800 	.db #0x33	; 51	'3'
      002ABB 66                    2801 	.db #0x66	; 102	'f'
      002ABC CC                    2802 	.db #0xcc	; 204
      002ABD 00                    2803 	.db #0x00	; 0
      002ABE 00                    2804 	.db #0x00	; 0
      002ABF 00                    2805 	.db #0x00	; 0
      002AC0 00                    2806 	.db #0x00	; 0
      002AC1 00                    2807 	.db #0x00	; 0
      002AC2 3F                    2808 	.db #0x3f	; 63
      002AC3 30                    2809 	.db #0x30	; 48	'0'
      002AC4 30                    2810 	.db #0x30	; 48	'0'
      002AC5 00                    2811 	.db #0x00	; 0
      002AC6 00                    2812 	.db #0x00	; 0
      002AC7 00                    2813 	.db #0x00	; 0
      002AC8 00                    2814 	.db #0x00	; 0
      002AC9 00                    2815 	.db #0x00	; 0
      002ACA 00                    2816 	.db #0x00	; 0
      002ACB 00                    2817 	.db #0x00	; 0
      002ACC 00                    2818 	.db #0x00	; 0
      002ACD 00                    2819 	.db #0x00	; 0
      002ACE 00                    2820 	.db #0x00	; 0
      002ACF 3C                    2821 	.db #0x3c	; 60
      002AD0 42                    2822 	.db #0x42	; 66	'B'
      002AD1 9D                    2823 	.db #0x9d	; 157
      002AD2 A5                    2824 	.db #0xa5	; 165
      002AD3 9D                    2825 	.db #0x9d	; 157
      002AD4 A5                    2826 	.db #0xa5	; 165
      002AD5 42                    2827 	.db #0x42	; 66	'B'
      002AD6 3C                    2828 	.db #0x3c	; 60
      002AD7 7E                    2829 	.db #0x7e	; 126
      002AD8 00                    2830 	.db #0x00	; 0
      002AD9 00                    2831 	.db #0x00	; 0
      002ADA 00                    2832 	.db #0x00	; 0
      002ADB 00                    2833 	.db #0x00	; 0
      002ADC 00                    2834 	.db #0x00	; 0
      002ADD 00                    2835 	.db #0x00	; 0
      002ADE 00                    2836 	.db #0x00	; 0
      002ADF 1C                    2837 	.db #0x1c	; 28
      002AE0 36                    2838 	.db #0x36	; 54	'6'
      002AE1 36                    2839 	.db #0x36	; 54	'6'
      002AE2 1C                    2840 	.db #0x1c	; 28
      002AE3 00                    2841 	.db #0x00	; 0
      002AE4 00                    2842 	.db #0x00	; 0
      002AE5 00                    2843 	.db #0x00	; 0
      002AE6 00                    2844 	.db #0x00	; 0
      002AE7 18                    2845 	.db #0x18	; 24
      002AE8 18                    2846 	.db #0x18	; 24
      002AE9 7E                    2847 	.db #0x7e	; 126
      002AEA 18                    2848 	.db #0x18	; 24
      002AEB 18                    2849 	.db #0x18	; 24
      002AEC 00                    2850 	.db #0x00	; 0
      002AED 7E                    2851 	.db #0x7e	; 126
      002AEE 00                    2852 	.db #0x00	; 0
      002AEF 1C                    2853 	.db #0x1c	; 28
      002AF0 30                    2854 	.db #0x30	; 48	'0'
      002AF1 18                    2855 	.db #0x18	; 24
      002AF2 0C                    2856 	.db #0x0c	; 12
      002AF3 3C                    2857 	.db #0x3c	; 60
      002AF4 00                    2858 	.db #0x00	; 0
      002AF5 00                    2859 	.db #0x00	; 0
      002AF6 00                    2860 	.db #0x00	; 0
      002AF7 1C                    2861 	.db #0x1c	; 28
      002AF8 30                    2862 	.db #0x30	; 48	'0'
      002AF9 18                    2863 	.db #0x18	; 24
      002AFA 30                    2864 	.db #0x30	; 48	'0'
      002AFB 1C                    2865 	.db #0x1c	; 28
      002AFC 00                    2866 	.db #0x00	; 0
      002AFD 00                    2867 	.db #0x00	; 0
      002AFE 00                    2868 	.db #0x00	; 0
      002AFF 18                    2869 	.db #0x18	; 24
      002B00 0C                    2870 	.db #0x0c	; 12
      002B01 00                    2871 	.db #0x00	; 0
      002B02 00                    2872 	.db #0x00	; 0
      002B03 00                    2873 	.db #0x00	; 0
      002B04 00                    2874 	.db #0x00	; 0
      002B05 00                    2875 	.db #0x00	; 0
      002B06 00                    2876 	.db #0x00	; 0
      002B07 00                    2877 	.db #0x00	; 0
      002B08 00                    2878 	.db #0x00	; 0
      002B09 66                    2879 	.db #0x66	; 102	'f'
      002B0A 66                    2880 	.db #0x66	; 102	'f'
      002B0B 66                    2881 	.db #0x66	; 102	'f'
      002B0C 3E                    2882 	.db #0x3e	; 62
      002B0D 06                    2883 	.db #0x06	; 6
      002B0E 03                    2884 	.db #0x03	; 3
      002B0F FE                    2885 	.db #0xfe	; 254
      002B10 DB                    2886 	.db #0xdb	; 219
      002B11 DB                    2887 	.db #0xdb	; 219
      002B12 DE                    2888 	.db #0xde	; 222
      002B13 D8                    2889 	.db #0xd8	; 216
      002B14 D8                    2890 	.db #0xd8	; 216
      002B15 D8                    2891 	.db #0xd8	; 216
      002B16 00                    2892 	.db #0x00	; 0
      002B17 00                    2893 	.db #0x00	; 0
      002B18 00                    2894 	.db #0x00	; 0
      002B19 00                    2895 	.db #0x00	; 0
      002B1A 18                    2896 	.db #0x18	; 24
      002B1B 18                    2897 	.db #0x18	; 24
      002B1C 00                    2898 	.db #0x00	; 0
      002B1D 00                    2899 	.db #0x00	; 0
      002B1E 00                    2900 	.db #0x00	; 0
      002B1F 00                    2901 	.db #0x00	; 0
      002B20 00                    2902 	.db #0x00	; 0
      002B21 00                    2903 	.db #0x00	; 0
      002B22 00                    2904 	.db #0x00	; 0
      002B23 00                    2905 	.db #0x00	; 0
      002B24 18                    2906 	.db #0x18	; 24
      002B25 30                    2907 	.db #0x30	; 48	'0'
      002B26 1E                    2908 	.db #0x1e	; 30
      002B27 08                    2909 	.db #0x08	; 8
      002B28 0C                    2910 	.db #0x0c	; 12
      002B29 08                    2911 	.db #0x08	; 8
      002B2A 1C                    2912 	.db #0x1c	; 28
      002B2B 00                    2913 	.db #0x00	; 0
      002B2C 00                    2914 	.db #0x00	; 0
      002B2D 00                    2915 	.db #0x00	; 0
      002B2E 00                    2916 	.db #0x00	; 0
      002B2F 1C                    2917 	.db #0x1c	; 28
      002B30 36                    2918 	.db #0x36	; 54	'6'
      002B31 36                    2919 	.db #0x36	; 54	'6'
      002B32 1C                    2920 	.db #0x1c	; 28
      002B33 00                    2921 	.db #0x00	; 0
      002B34 00                    2922 	.db #0x00	; 0
      002B35 00                    2923 	.db #0x00	; 0
      002B36 00                    2924 	.db #0x00	; 0
      002B37 00                    2925 	.db #0x00	; 0
      002B38 33                    2926 	.db #0x33	; 51	'3'
      002B39 66                    2927 	.db #0x66	; 102	'f'
      002B3A CC                    2928 	.db #0xcc	; 204
      002B3B 66                    2929 	.db #0x66	; 102	'f'
      002B3C 33                    2930 	.db #0x33	; 51	'3'
      002B3D 00                    2931 	.db #0x00	; 0
      002B3E 00                    2932 	.db #0x00	; 0
      002B3F C3                    2933 	.db #0xc3	; 195
      002B40 63                    2934 	.db #0x63	; 99	'c'
      002B41 33                    2935 	.db #0x33	; 51	'3'
      002B42 BD                    2936 	.db #0xbd	; 189
      002B43 EC                    2937 	.db #0xec	; 236
      002B44 F6                    2938 	.db #0xf6	; 246
      002B45 F3                    2939 	.db #0xf3	; 243
      002B46 03                    2940 	.db #0x03	; 3
      002B47 C3                    2941 	.db #0xc3	; 195
      002B48 63                    2942 	.db #0x63	; 99	'c'
      002B49 33                    2943 	.db #0x33	; 51	'3'
      002B4A 7B                    2944 	.db #0x7b	; 123
      002B4B CC                    2945 	.db #0xcc	; 204
      002B4C 66                    2946 	.db #0x66	; 102	'f'
      002B4D 33                    2947 	.db #0x33	; 51	'3'
      002B4E F0                    2948 	.db #0xf0	; 240
      002B4F 03                    2949 	.db #0x03	; 3
      002B50 C4                    2950 	.db #0xc4	; 196
      002B51 63                    2951 	.db #0x63	; 99	'c'
      002B52 B4                    2952 	.db #0xb4	; 180
      002B53 DB                    2953 	.db #0xdb	; 219
      002B54 AC                    2954 	.db #0xac	; 172
      002B55 E6                    2955 	.db #0xe6	; 230
      002B56 80                    2956 	.db #0x80	; 128
      002B57 0C                    2957 	.db #0x0c	; 12
      002B58 00                    2958 	.db #0x00	; 0
      002B59 0C                    2959 	.db #0x0c	; 12
      002B5A 06                    2960 	.db #0x06	; 6
      002B5B 03                    2961 	.db #0x03	; 3
      002B5C 33                    2962 	.db #0x33	; 51	'3'
      002B5D 1E                    2963 	.db #0x1e	; 30
      002B5E 00                    2964 	.db #0x00	; 0
      002B5F 07                    2965 	.db #0x07	; 7
      002B60 00                    2966 	.db #0x00	; 0
      002B61 1C                    2967 	.db #0x1c	; 28
      002B62 36                    2968 	.db #0x36	; 54	'6'
      002B63 63                    2969 	.db #0x63	; 99	'c'
      002B64 7F                    2970 	.db #0x7f	; 127
      002B65 63                    2971 	.db #0x63	; 99	'c'
      002B66 00                    2972 	.db #0x00	; 0
      002B67 70                    2973 	.db #0x70	; 112	'p'
      002B68 00                    2974 	.db #0x00	; 0
      002B69 1C                    2975 	.db #0x1c	; 28
      002B6A 36                    2976 	.db #0x36	; 54	'6'
      002B6B 63                    2977 	.db #0x63	; 99	'c'
      002B6C 7F                    2978 	.db #0x7f	; 127
      002B6D 63                    2979 	.db #0x63	; 99	'c'
      002B6E 00                    2980 	.db #0x00	; 0
      002B6F 1C                    2981 	.db #0x1c	; 28
      002B70 36                    2982 	.db #0x36	; 54	'6'
      002B71 00                    2983 	.db #0x00	; 0
      002B72 3E                    2984 	.db #0x3e	; 62
      002B73 63                    2985 	.db #0x63	; 99	'c'
      002B74 7F                    2986 	.db #0x7f	; 127
      002B75 63                    2987 	.db #0x63	; 99	'c'
      002B76 00                    2988 	.db #0x00	; 0
      002B77 6E                    2989 	.db #0x6e	; 110	'n'
      002B78 3B                    2990 	.db #0x3b	; 59
      002B79 00                    2991 	.db #0x00	; 0
      002B7A 3E                    2992 	.db #0x3e	; 62
      002B7B 63                    2993 	.db #0x63	; 99	'c'
      002B7C 7F                    2994 	.db #0x7f	; 127
      002B7D 63                    2995 	.db #0x63	; 99	'c'
      002B7E 00                    2996 	.db #0x00	; 0
      002B7F 63                    2997 	.db #0x63	; 99	'c'
      002B80 1C                    2998 	.db #0x1c	; 28
      002B81 36                    2999 	.db #0x36	; 54	'6'
      002B82 63                    3000 	.db #0x63	; 99	'c'
      002B83 7F                    3001 	.db #0x7f	; 127
      002B84 63                    3002 	.db #0x63	; 99	'c'
      002B85 63                    3003 	.db #0x63	; 99	'c'
      002B86 00                    3004 	.db #0x00	; 0
      002B87 0C                    3005 	.db #0x0c	; 12
      002B88 0C                    3006 	.db #0x0c	; 12
      002B89 00                    3007 	.db #0x00	; 0
      002B8A 1E                    3008 	.db #0x1e	; 30
      002B8B 33                    3009 	.db #0x33	; 51	'3'
      002B8C 3F                    3010 	.db #0x3f	; 63
      002B8D 33                    3011 	.db #0x33	; 51	'3'
      002B8E 00                    3012 	.db #0x00	; 0
      002B8F 7C                    3013 	.db #0x7c	; 124
      002B90 36                    3014 	.db #0x36	; 54	'6'
      002B91 33                    3015 	.db #0x33	; 51	'3'
      002B92 7F                    3016 	.db #0x7f	; 127
      002B93 33                    3017 	.db #0x33	; 51	'3'
      002B94 33                    3018 	.db #0x33	; 51	'3'
      002B95 73                    3019 	.db #0x73	; 115	's'
      002B96 00                    3020 	.db #0x00	; 0
      002B97 1E                    3021 	.db #0x1e	; 30
      002B98 33                    3022 	.db #0x33	; 51	'3'
      002B99 03                    3023 	.db #0x03	; 3
      002B9A 33                    3024 	.db #0x33	; 51	'3'
      002B9B 1E                    3025 	.db #0x1e	; 30
      002B9C 18                    3026 	.db #0x18	; 24
      002B9D 30                    3027 	.db #0x30	; 48	'0'
      002B9E 1E                    3028 	.db #0x1e	; 30
      002B9F 07                    3029 	.db #0x07	; 7
      002BA0 00                    3030 	.db #0x00	; 0
      002BA1 3F                    3031 	.db #0x3f	; 63
      002BA2 06                    3032 	.db #0x06	; 6
      002BA3 1E                    3033 	.db #0x1e	; 30
      002BA4 06                    3034 	.db #0x06	; 6
      002BA5 3F                    3035 	.db #0x3f	; 63
      002BA6 00                    3036 	.db #0x00	; 0
      002BA7 38                    3037 	.db #0x38	; 56	'8'
      002BA8 00                    3038 	.db #0x00	; 0
      002BA9 3F                    3039 	.db #0x3f	; 63
      002BAA 06                    3040 	.db #0x06	; 6
      002BAB 1E                    3041 	.db #0x1e	; 30
      002BAC 06                    3042 	.db #0x06	; 6
      002BAD 3F                    3043 	.db #0x3f	; 63
      002BAE 00                    3044 	.db #0x00	; 0
      002BAF 0C                    3045 	.db #0x0c	; 12
      002BB0 12                    3046 	.db #0x12	; 18
      002BB1 3F                    3047 	.db #0x3f	; 63
      002BB2 06                    3048 	.db #0x06	; 6
      002BB3 1E                    3049 	.db #0x1e	; 30
      002BB4 06                    3050 	.db #0x06	; 6
      002BB5 3F                    3051 	.db #0x3f	; 63
      002BB6 00                    3052 	.db #0x00	; 0
      002BB7 36                    3053 	.db #0x36	; 54	'6'
      002BB8 00                    3054 	.db #0x00	; 0
      002BB9 3F                    3055 	.db #0x3f	; 63
      002BBA 06                    3056 	.db #0x06	; 6
      002BBB 1E                    3057 	.db #0x1e	; 30
      002BBC 06                    3058 	.db #0x06	; 6
      002BBD 3F                    3059 	.db #0x3f	; 63
      002BBE 00                    3060 	.db #0x00	; 0
      002BBF 07                    3061 	.db #0x07	; 7
      002BC0 00                    3062 	.db #0x00	; 0
      002BC1 1E                    3063 	.db #0x1e	; 30
      002BC2 0C                    3064 	.db #0x0c	; 12
      002BC3 0C                    3065 	.db #0x0c	; 12
      002BC4 0C                    3066 	.db #0x0c	; 12
      002BC5 1E                    3067 	.db #0x1e	; 30
      002BC6 00                    3068 	.db #0x00	; 0
      002BC7 38                    3069 	.db #0x38	; 56	'8'
      002BC8 00                    3070 	.db #0x00	; 0
      002BC9 1E                    3071 	.db #0x1e	; 30
      002BCA 0C                    3072 	.db #0x0c	; 12
      002BCB 0C                    3073 	.db #0x0c	; 12
      002BCC 0C                    3074 	.db #0x0c	; 12
      002BCD 1E                    3075 	.db #0x1e	; 30
      002BCE 00                    3076 	.db #0x00	; 0
      002BCF 0C                    3077 	.db #0x0c	; 12
      002BD0 12                    3078 	.db #0x12	; 18
      002BD1 00                    3079 	.db #0x00	; 0
      002BD2 1E                    3080 	.db #0x1e	; 30
      002BD3 0C                    3081 	.db #0x0c	; 12
      002BD4 0C                    3082 	.db #0x0c	; 12
      002BD5 1E                    3083 	.db #0x1e	; 30
      002BD6 00                    3084 	.db #0x00	; 0
      002BD7 33                    3085 	.db #0x33	; 51	'3'
      002BD8 00                    3086 	.db #0x00	; 0
      002BD9 1E                    3087 	.db #0x1e	; 30
      002BDA 0C                    3088 	.db #0x0c	; 12
      002BDB 0C                    3089 	.db #0x0c	; 12
      002BDC 0C                    3090 	.db #0x0c	; 12
      002BDD 1E                    3091 	.db #0x1e	; 30
      002BDE 00                    3092 	.db #0x00	; 0
      002BDF 3F                    3093 	.db #0x3f	; 63
      002BE0 66                    3094 	.db #0x66	; 102	'f'
      002BE1 6F                    3095 	.db #0x6f	; 111	'o'
      002BE2 6F                    3096 	.db #0x6f	; 111	'o'
      002BE3 66                    3097 	.db #0x66	; 102	'f'
      002BE4 66                    3098 	.db #0x66	; 102	'f'
      002BE5 3F                    3099 	.db #0x3f	; 63
      002BE6 00                    3100 	.db #0x00	; 0
      002BE7 3F                    3101 	.db #0x3f	; 63
      002BE8 00                    3102 	.db #0x00	; 0
      002BE9 33                    3103 	.db #0x33	; 51	'3'
      002BEA 37                    3104 	.db #0x37	; 55	'7'
      002BEB 3F                    3105 	.db #0x3f	; 63
      002BEC 3B                    3106 	.db #0x3b	; 59
      002BED 33                    3107 	.db #0x33	; 51	'3'
      002BEE 00                    3108 	.db #0x00	; 0
      002BEF 0E                    3109 	.db #0x0e	; 14
      002BF0 00                    3110 	.db #0x00	; 0
      002BF1 18                    3111 	.db #0x18	; 24
      002BF2 3C                    3112 	.db #0x3c	; 60
      002BF3 66                    3113 	.db #0x66	; 102	'f'
      002BF4 3C                    3114 	.db #0x3c	; 60
      002BF5 18                    3115 	.db #0x18	; 24
      002BF6 00                    3116 	.db #0x00	; 0
      002BF7 70                    3117 	.db #0x70	; 112	'p'
      002BF8 00                    3118 	.db #0x00	; 0
      002BF9 18                    3119 	.db #0x18	; 24
      002BFA 3C                    3120 	.db #0x3c	; 60
      002BFB 66                    3121 	.db #0x66	; 102	'f'
      002BFC 3C                    3122 	.db #0x3c	; 60
      002BFD 18                    3123 	.db #0x18	; 24
      002BFE 00                    3124 	.db #0x00	; 0
      002BFF 3C                    3125 	.db #0x3c	; 60
      002C00 66                    3126 	.db #0x66	; 102	'f'
      002C01 18                    3127 	.db #0x18	; 24
      002C02 3C                    3128 	.db #0x3c	; 60
      002C03 66                    3129 	.db #0x66	; 102	'f'
      002C04 3C                    3130 	.db #0x3c	; 60
      002C05 18                    3131 	.db #0x18	; 24
      002C06 00                    3132 	.db #0x00	; 0
      002C07 6E                    3133 	.db #0x6e	; 110	'n'
      002C08 3B                    3134 	.db #0x3b	; 59
      002C09 00                    3135 	.db #0x00	; 0
      002C0A 3E                    3136 	.db #0x3e	; 62
      002C0B 63                    3137 	.db #0x63	; 99	'c'
      002C0C 63                    3138 	.db #0x63	; 99	'c'
      002C0D 3E                    3139 	.db #0x3e	; 62
      002C0E 00                    3140 	.db #0x00	; 0
      002C0F C3                    3141 	.db #0xc3	; 195
      002C10 18                    3142 	.db #0x18	; 24
      002C11 3C                    3143 	.db #0x3c	; 60
      002C12 66                    3144 	.db #0x66	; 102	'f'
      002C13 66                    3145 	.db #0x66	; 102	'f'
      002C14 3C                    3146 	.db #0x3c	; 60
      002C15 18                    3147 	.db #0x18	; 24
      002C16 00                    3148 	.db #0x00	; 0
      002C17 00                    3149 	.db #0x00	; 0
      002C18 36                    3150 	.db #0x36	; 54	'6'
      002C19 1C                    3151 	.db #0x1c	; 28
      002C1A 08                    3152 	.db #0x08	; 8
      002C1B 1C                    3153 	.db #0x1c	; 28
      002C1C 36                    3154 	.db #0x36	; 54	'6'
      002C1D 00                    3155 	.db #0x00	; 0
      002C1E 00                    3156 	.db #0x00	; 0
      002C1F 5C                    3157 	.db #0x5c	; 92
      002C20 36                    3158 	.db #0x36	; 54	'6'
      002C21 73                    3159 	.db #0x73	; 115	's'
      002C22 7B                    3160 	.db #0x7b	; 123
      002C23 6F                    3161 	.db #0x6f	; 111	'o'
      002C24 36                    3162 	.db #0x36	; 54	'6'
      002C25 1D                    3163 	.db #0x1d	; 29
      002C26 00                    3164 	.db #0x00	; 0
      002C27 0E                    3165 	.db #0x0e	; 14
      002C28 00                    3166 	.db #0x00	; 0
      002C29 66                    3167 	.db #0x66	; 102	'f'
      002C2A 66                    3168 	.db #0x66	; 102	'f'
      002C2B 66                    3169 	.db #0x66	; 102	'f'
      002C2C 66                    3170 	.db #0x66	; 102	'f'
      002C2D 3C                    3171 	.db #0x3c	; 60
      002C2E 00                    3172 	.db #0x00	; 0
      002C2F 70                    3173 	.db #0x70	; 112	'p'
      002C30 00                    3174 	.db #0x00	; 0
      002C31 66                    3175 	.db #0x66	; 102	'f'
      002C32 66                    3176 	.db #0x66	; 102	'f'
      002C33 66                    3177 	.db #0x66	; 102	'f'
      002C34 66                    3178 	.db #0x66	; 102	'f'
      002C35 3C                    3179 	.db #0x3c	; 60
      002C36 00                    3180 	.db #0x00	; 0
      002C37 3C                    3181 	.db #0x3c	; 60
      002C38 66                    3182 	.db #0x66	; 102	'f'
      002C39 00                    3183 	.db #0x00	; 0
      002C3A 66                    3184 	.db #0x66	; 102	'f'
      002C3B 66                    3185 	.db #0x66	; 102	'f'
      002C3C 66                    3186 	.db #0x66	; 102	'f'
      002C3D 3C                    3187 	.db #0x3c	; 60
      002C3E 00                    3188 	.db #0x00	; 0
      002C3F 33                    3189 	.db #0x33	; 51	'3'
      002C40 00                    3190 	.db #0x00	; 0
      002C41 33                    3191 	.db #0x33	; 51	'3'
      002C42 33                    3192 	.db #0x33	; 51	'3'
      002C43 33                    3193 	.db #0x33	; 51	'3'
      002C44 33                    3194 	.db #0x33	; 51	'3'
      002C45 1E                    3195 	.db #0x1e	; 30
      002C46 00                    3196 	.db #0x00	; 0
      002C47 70                    3197 	.db #0x70	; 112	'p'
      002C48 00                    3198 	.db #0x00	; 0
      002C49 66                    3199 	.db #0x66	; 102	'f'
      002C4A 66                    3200 	.db #0x66	; 102	'f'
      002C4B 3C                    3201 	.db #0x3c	; 60
      002C4C 18                    3202 	.db #0x18	; 24
      002C4D 18                    3203 	.db #0x18	; 24
      002C4E 00                    3204 	.db #0x00	; 0
      002C4F 0F                    3205 	.db #0x0f	; 15
      002C50 06                    3206 	.db #0x06	; 6
      002C51 3E                    3207 	.db #0x3e	; 62
      002C52 66                    3208 	.db #0x66	; 102	'f'
      002C53 66                    3209 	.db #0x66	; 102	'f'
      002C54 3E                    3210 	.db #0x3e	; 62
      002C55 06                    3211 	.db #0x06	; 6
      002C56 0F                    3212 	.db #0x0f	; 15
      002C57 00                    3213 	.db #0x00	; 0
      002C58 1E                    3214 	.db #0x1e	; 30
      002C59 33                    3215 	.db #0x33	; 51	'3'
      002C5A 1F                    3216 	.db #0x1f	; 31
      002C5B 33                    3217 	.db #0x33	; 51	'3'
      002C5C 1F                    3218 	.db #0x1f	; 31
      002C5D 03                    3219 	.db #0x03	; 3
      002C5E 03                    3220 	.db #0x03	; 3
      002C5F 07                    3221 	.db #0x07	; 7
      002C60 00                    3222 	.db #0x00	; 0
      002C61 1E                    3223 	.db #0x1e	; 30
      002C62 30                    3224 	.db #0x30	; 48	'0'
      002C63 3E                    3225 	.db #0x3e	; 62
      002C64 33                    3226 	.db #0x33	; 51	'3'
      002C65 7E                    3227 	.db #0x7e	; 126
      002C66 00                    3228 	.db #0x00	; 0
      002C67 38                    3229 	.db #0x38	; 56	'8'
      002C68 00                    3230 	.db #0x00	; 0
      002C69 1E                    3231 	.db #0x1e	; 30
      002C6A 30                    3232 	.db #0x30	; 48	'0'
      002C6B 3E                    3233 	.db #0x3e	; 62
      002C6C 33                    3234 	.db #0x33	; 51	'3'
      002C6D 7E                    3235 	.db #0x7e	; 126
      002C6E 00                    3236 	.db #0x00	; 0
      002C6F 7E                    3237 	.db #0x7e	; 126
      002C70 C3                    3238 	.db #0xc3	; 195
      002C71 3C                    3239 	.db #0x3c	; 60
      002C72 60                    3240 	.db #0x60	; 96
      002C73 7C                    3241 	.db #0x7c	; 124
      002C74 66                    3242 	.db #0x66	; 102	'f'
      002C75 FC                    3243 	.db #0xfc	; 252
      002C76 00                    3244 	.db #0x00	; 0
      002C77 6E                    3245 	.db #0x6e	; 110	'n'
      002C78 3B                    3246 	.db #0x3b	; 59
      002C79 1E                    3247 	.db #0x1e	; 30
      002C7A 30                    3248 	.db #0x30	; 48	'0'
      002C7B 3E                    3249 	.db #0x3e	; 62
      002C7C 33                    3250 	.db #0x33	; 51	'3'
      002C7D 7E                    3251 	.db #0x7e	; 126
      002C7E 00                    3252 	.db #0x00	; 0
      002C7F 33                    3253 	.db #0x33	; 51	'3'
      002C80 00                    3254 	.db #0x00	; 0
      002C81 1E                    3255 	.db #0x1e	; 30
      002C82 30                    3256 	.db #0x30	; 48	'0'
      002C83 3E                    3257 	.db #0x3e	; 62
      002C84 33                    3258 	.db #0x33	; 51	'3'
      002C85 7E                    3259 	.db #0x7e	; 126
      002C86 00                    3260 	.db #0x00	; 0
      002C87 0C                    3261 	.db #0x0c	; 12
      002C88 0C                    3262 	.db #0x0c	; 12
      002C89 1E                    3263 	.db #0x1e	; 30
      002C8A 30                    3264 	.db #0x30	; 48	'0'
      002C8B 3E                    3265 	.db #0x3e	; 62
      002C8C 33                    3266 	.db #0x33	; 51	'3'
      002C8D 7E                    3267 	.db #0x7e	; 126
      002C8E 00                    3268 	.db #0x00	; 0
      002C8F 00                    3269 	.db #0x00	; 0
      002C90 00                    3270 	.db #0x00	; 0
      002C91 FE                    3271 	.db #0xfe	; 254
      002C92 30                    3272 	.db #0x30	; 48	'0'
      002C93 FE                    3273 	.db #0xfe	; 254
      002C94 33                    3274 	.db #0x33	; 51	'3'
      002C95 FE                    3275 	.db #0xfe	; 254
      002C96 00                    3276 	.db #0x00	; 0
      002C97 00                    3277 	.db #0x00	; 0
      002C98 00                    3278 	.db #0x00	; 0
      002C99 1E                    3279 	.db #0x1e	; 30
      002C9A 03                    3280 	.db #0x03	; 3
      002C9B 03                    3281 	.db #0x03	; 3
      002C9C 1E                    3282 	.db #0x1e	; 30
      002C9D 30                    3283 	.db #0x30	; 48	'0'
      002C9E 1C                    3284 	.db #0x1c	; 28
      002C9F 07                    3285 	.db #0x07	; 7
      002CA0 00                    3286 	.db #0x00	; 0
      002CA1 1E                    3287 	.db #0x1e	; 30
      002CA2 33                    3288 	.db #0x33	; 51	'3'
      002CA3 3F                    3289 	.db #0x3f	; 63
      002CA4 03                    3290 	.db #0x03	; 3
      002CA5 1E                    3291 	.db #0x1e	; 30
      002CA6 00                    3292 	.db #0x00	; 0
      002CA7 38                    3293 	.db #0x38	; 56	'8'
      002CA8 00                    3294 	.db #0x00	; 0
      002CA9 1E                    3295 	.db #0x1e	; 30
      002CAA 33                    3296 	.db #0x33	; 51	'3'
      002CAB 3F                    3297 	.db #0x3f	; 63
      002CAC 03                    3298 	.db #0x03	; 3
      002CAD 1E                    3299 	.db #0x1e	; 30
      002CAE 00                    3300 	.db #0x00	; 0
      002CAF 7E                    3301 	.db #0x7e	; 126
      002CB0 C3                    3302 	.db #0xc3	; 195
      002CB1 3C                    3303 	.db #0x3c	; 60
      002CB2 66                    3304 	.db #0x66	; 102	'f'
      002CB3 7E                    3305 	.db #0x7e	; 126
      002CB4 06                    3306 	.db #0x06	; 6
      002CB5 3C                    3307 	.db #0x3c	; 60
      002CB6 00                    3308 	.db #0x00	; 0
      002CB7 33                    3309 	.db #0x33	; 51	'3'
      002CB8 00                    3310 	.db #0x00	; 0
      002CB9 1E                    3311 	.db #0x1e	; 30
      002CBA 33                    3312 	.db #0x33	; 51	'3'
      002CBB 3F                    3313 	.db #0x3f	; 63
      002CBC 03                    3314 	.db #0x03	; 3
      002CBD 1E                    3315 	.db #0x1e	; 30
      002CBE 00                    3316 	.db #0x00	; 0
      002CBF 07                    3317 	.db #0x07	; 7
      002CC0 00                    3318 	.db #0x00	; 0
      002CC1 0E                    3319 	.db #0x0e	; 14
      002CC2 0C                    3320 	.db #0x0c	; 12
      002CC3 0C                    3321 	.db #0x0c	; 12
      002CC4 0C                    3322 	.db #0x0c	; 12
      002CC5 1E                    3323 	.db #0x1e	; 30
      002CC6 00                    3324 	.db #0x00	; 0
      002CC7 1C                    3325 	.db #0x1c	; 28
      002CC8 00                    3326 	.db #0x00	; 0
      002CC9 0E                    3327 	.db #0x0e	; 14
      002CCA 0C                    3328 	.db #0x0c	; 12
      002CCB 0C                    3329 	.db #0x0c	; 12
      002CCC 0C                    3330 	.db #0x0c	; 12
      002CCD 1E                    3331 	.db #0x1e	; 30
      002CCE 00                    3332 	.db #0x00	; 0
      002CCF 3E                    3333 	.db #0x3e	; 62
      002CD0 63                    3334 	.db #0x63	; 99	'c'
      002CD1 1C                    3335 	.db #0x1c	; 28
      002CD2 18                    3336 	.db #0x18	; 24
      002CD3 18                    3337 	.db #0x18	; 24
      002CD4 18                    3338 	.db #0x18	; 24
      002CD5 3C                    3339 	.db #0x3c	; 60
      002CD6 00                    3340 	.db #0x00	; 0
      002CD7 33                    3341 	.db #0x33	; 51	'3'
      002CD8 00                    3342 	.db #0x00	; 0
      002CD9 0E                    3343 	.db #0x0e	; 14
      002CDA 0C                    3344 	.db #0x0c	; 12
      002CDB 0C                    3345 	.db #0x0c	; 12
      002CDC 0C                    3346 	.db #0x0c	; 12
      002CDD 1E                    3347 	.db #0x1e	; 30
      002CDE 00                    3348 	.db #0x00	; 0
      002CDF 1B                    3349 	.db #0x1b	; 27
      002CE0 0E                    3350 	.db #0x0e	; 14
      002CE1 1B                    3351 	.db #0x1b	; 27
      002CE2 30                    3352 	.db #0x30	; 48	'0'
      002CE3 3E                    3353 	.db #0x3e	; 62
      002CE4 33                    3354 	.db #0x33	; 51	'3'
      002CE5 1E                    3355 	.db #0x1e	; 30
      002CE6 00                    3356 	.db #0x00	; 0
      002CE7 00                    3357 	.db #0x00	; 0
      002CE8 1F                    3358 	.db #0x1f	; 31
      002CE9 00                    3359 	.db #0x00	; 0
      002CEA 1F                    3360 	.db #0x1f	; 31
      002CEB 33                    3361 	.db #0x33	; 51	'3'
      002CEC 33                    3362 	.db #0x33	; 51	'3'
      002CED 33                    3363 	.db #0x33	; 51	'3'
      002CEE 00                    3364 	.db #0x00	; 0
      002CEF 00                    3365 	.db #0x00	; 0
      002CF0 07                    3366 	.db #0x07	; 7
      002CF1 00                    3367 	.db #0x00	; 0
      002CF2 1E                    3368 	.db #0x1e	; 30
      002CF3 33                    3369 	.db #0x33	; 51	'3'
      002CF4 33                    3370 	.db #0x33	; 51	'3'
      002CF5 1E                    3371 	.db #0x1e	; 30
      002CF6 00                    3372 	.db #0x00	; 0
      002CF7 00                    3373 	.db #0x00	; 0
      002CF8 38                    3374 	.db #0x38	; 56	'8'
      002CF9 00                    3375 	.db #0x00	; 0
      002CFA 1E                    3376 	.db #0x1e	; 30
      002CFB 33                    3377 	.db #0x33	; 51	'3'
      002CFC 33                    3378 	.db #0x33	; 51	'3'
      002CFD 1E                    3379 	.db #0x1e	; 30
      002CFE 00                    3380 	.db #0x00	; 0
      002CFF 1E                    3381 	.db #0x1e	; 30
      002D00 33                    3382 	.db #0x33	; 51	'3'
      002D01 00                    3383 	.db #0x00	; 0
      002D02 1E                    3384 	.db #0x1e	; 30
      002D03 33                    3385 	.db #0x33	; 51	'3'
      002D04 33                    3386 	.db #0x33	; 51	'3'
      002D05 1E                    3387 	.db #0x1e	; 30
      002D06 00                    3388 	.db #0x00	; 0
      002D07 6E                    3389 	.db #0x6e	; 110	'n'
      002D08 3B                    3390 	.db #0x3b	; 59
      002D09 00                    3391 	.db #0x00	; 0
      002D0A 1E                    3392 	.db #0x1e	; 30
      002D0B 33                    3393 	.db #0x33	; 51	'3'
      002D0C 33                    3394 	.db #0x33	; 51	'3'
      002D0D 1E                    3395 	.db #0x1e	; 30
      002D0E 00                    3396 	.db #0x00	; 0
      002D0F 00                    3397 	.db #0x00	; 0
      002D10 33                    3398 	.db #0x33	; 51	'3'
      002D11 00                    3399 	.db #0x00	; 0
      002D12 1E                    3400 	.db #0x1e	; 30
      002D13 33                    3401 	.db #0x33	; 51	'3'
      002D14 33                    3402 	.db #0x33	; 51	'3'
      002D15 1E                    3403 	.db #0x1e	; 30
      002D16 00                    3404 	.db #0x00	; 0
      002D17 18                    3405 	.db #0x18	; 24
      002D18 18                    3406 	.db #0x18	; 24
      002D19 00                    3407 	.db #0x00	; 0
      002D1A 7E                    3408 	.db #0x7e	; 126
      002D1B 00                    3409 	.db #0x00	; 0
      002D1C 18                    3410 	.db #0x18	; 24
      002D1D 18                    3411 	.db #0x18	; 24
      002D1E 00                    3412 	.db #0x00	; 0
      002D1F 00                    3413 	.db #0x00	; 0
      002D20 60                    3414 	.db #0x60	; 96
      002D21 3C                    3415 	.db #0x3c	; 60
      002D22 76                    3416 	.db #0x76	; 118	'v'
      002D23 7E                    3417 	.db #0x7e	; 126
      002D24 6E                    3418 	.db #0x6e	; 110	'n'
      002D25 3C                    3419 	.db #0x3c	; 60
      002D26 06                    3420 	.db #0x06	; 6
      002D27 00                    3421 	.db #0x00	; 0
      002D28 07                    3422 	.db #0x07	; 7
      002D29 00                    3423 	.db #0x00	; 0
      002D2A 33                    3424 	.db #0x33	; 51	'3'
      002D2B 33                    3425 	.db #0x33	; 51	'3'
      002D2C 33                    3426 	.db #0x33	; 51	'3'
      002D2D 7E                    3427 	.db #0x7e	; 126
      002D2E 00                    3428 	.db #0x00	; 0
      002D2F 00                    3429 	.db #0x00	; 0
      002D30 38                    3430 	.db #0x38	; 56	'8'
      002D31 00                    3431 	.db #0x00	; 0
      002D32 33                    3432 	.db #0x33	; 51	'3'
      002D33 33                    3433 	.db #0x33	; 51	'3'
      002D34 33                    3434 	.db #0x33	; 51	'3'
      002D35 7E                    3435 	.db #0x7e	; 126
      002D36 00                    3436 	.db #0x00	; 0
      002D37 1E                    3437 	.db #0x1e	; 30
      002D38 33                    3438 	.db #0x33	; 51	'3'
      002D39 00                    3439 	.db #0x00	; 0
      002D3A 33                    3440 	.db #0x33	; 51	'3'
      002D3B 33                    3441 	.db #0x33	; 51	'3'
      002D3C 33                    3442 	.db #0x33	; 51	'3'
      002D3D 7E                    3443 	.db #0x7e	; 126
      002D3E 00                    3444 	.db #0x00	; 0
      002D3F 00                    3445 	.db #0x00	; 0
      002D40 33                    3446 	.db #0x33	; 51	'3'
      002D41 00                    3447 	.db #0x00	; 0
      002D42 33                    3448 	.db #0x33	; 51	'3'
      002D43 33                    3449 	.db #0x33	; 51	'3'
      002D44 33                    3450 	.db #0x33	; 51	'3'
      002D45 7E                    3451 	.db #0x7e	; 126
      002D46 00                    3452 	.db #0x00	; 0
      002D47 00                    3453 	.db #0x00	; 0
      002D48 38                    3454 	.db #0x38	; 56	'8'
      002D49 00                    3455 	.db #0x00	; 0
      002D4A 33                    3456 	.db #0x33	; 51	'3'
      002D4B 33                    3457 	.db #0x33	; 51	'3'
      002D4C 3E                    3458 	.db #0x3e	; 62
      002D4D 30                    3459 	.db #0x30	; 48	'0'
      002D4E 1F                    3460 	.db #0x1f	; 31
      002D4F 00                    3461 	.db #0x00	; 0
      002D50 00                    3462 	.db #0x00	; 0
      002D51 06                    3463 	.db #0x06	; 6
      002D52 3E                    3464 	.db #0x3e	; 62
      002D53 66                    3465 	.db #0x66	; 102	'f'
      002D54 3E                    3466 	.db #0x3e	; 62
      002D55 06                    3467 	.db #0x06	; 6
      002D56 00                    3468 	.db #0x00	; 0
      002D57 00                    3469 	.db #0x00	; 0
      002D58 33                    3470 	.db #0x33	; 51	'3'
      002D59 00                    3471 	.db #0x00	; 0
      002D5A 33                    3472 	.db #0x33	; 51	'3'
      002D5B 33                    3473 	.db #0x33	; 51	'3'
      002D5C 3E                    3474 	.db #0x3e	; 62
      002D5D 30                    3475 	.db #0x30	; 48	'0'
      002D5E 1F                    3476 	.db #0x1f	; 31
      002D5F                       3477 __xinit__buf:
      002D5F 47 6F 20 66 75 63 6B  3478 	.ascii "Go fuck yourselves you sons of bitches! "
             20 79 6F 75 72 73 65
             6C 76 65 73 20 79 6F
             75 20 73 6F 6E 73 20
             6F 66 20 62 69 74 63
             68 65 73 21 20
      002D87 00                    3479 	.db 0x00
      002D88 00                    3480 	.db 0x00
      002D89 00                    3481 	.db 0x00
      002D8A 00                    3482 	.db 0x00
      002D8B 00                    3483 	.db 0x00
      002D8C 00                    3484 	.db 0x00
      002D8D 00                    3485 	.db 0x00
      002D8E 00                    3486 	.db 0x00
      002D8F 00                    3487 	.db 0x00
      002D90 00                    3488 	.db 0x00
      002D91 00                    3489 	.db 0x00
      002D92 00                    3490 	.db 0x00
      002D93 00                    3491 	.db 0x00
      002D94 00                    3492 	.db 0x00
      002D95 00                    3493 	.db 0x00
      002D96 00                    3494 	.db 0x00
      002D97 00                    3495 	.db 0x00
      002D98 00                    3496 	.db 0x00
      002D99 00                    3497 	.db 0x00
      002D9A 00                    3498 	.db 0x00
      002D9B 00                    3499 	.db 0x00
      002D9C 00                    3500 	.db 0x00
      002D9D 00                    3501 	.db 0x00
      002D9E 00                    3502 	.db 0x00
      002D9F 00                    3503 	.db 0x00
      002DA0 00                    3504 	.db 0x00
      002DA1 00                    3505 	.db 0x00
      002DA2 00                    3506 	.db 0x00
      002DA3 00                    3507 	.db 0x00
      002DA4 00                    3508 	.db 0x00
      002DA5 00                    3509 	.db 0x00
      002DA6 00                    3510 	.db 0x00
      002DA7 00                    3511 	.db 0x00
      002DA8 00                    3512 	.db 0x00
      002DA9 00                    3513 	.db 0x00
      002DAA 00                    3514 	.db 0x00
      002DAB 00                    3515 	.db 0x00
      002DAC 00                    3516 	.db 0x00
      002DAD 00                    3517 	.db 0x00
      002DAE 00                    3518 	.db 0x00
      002DAF 00                    3519 	.db 0x00
      002DB0 00                    3520 	.db 0x00
      002DB1 00                    3521 	.db 0x00
      002DB2 00                    3522 	.db 0x00
      002DB3 00                    3523 	.db 0x00
      002DB4 00                    3524 	.db 0x00
      002DB5 00                    3525 	.db 0x00
      002DB6 00                    3526 	.db 0x00
      002DB7 00                    3527 	.db 0x00
      002DB8 00                    3528 	.db 0x00
      002DB9 00                    3529 	.db 0x00
      002DBA 00                    3530 	.db 0x00
      002DBB 00                    3531 	.db 0x00
      002DBC 00                    3532 	.db 0x00
      002DBD 00                    3533 	.db 0x00
      002DBE 00                    3534 	.db 0x00
      002DBF 00                    3535 	.db 0x00
      002DC0 00                    3536 	.db 0x00
      002DC1 00                    3537 	.db 0x00
      002DC2 00                    3538 	.db 0x00
      002DC3 00                    3539 	.db 0x00
      002DC4 00                    3540 	.db 0x00
      002DC5 00                    3541 	.db 0x00
      002DC6 00                    3542 	.db 0x00
      002DC7 00                    3543 	.db 0x00
      002DC8 00                    3544 	.db 0x00
      002DC9 00                    3545 	.db 0x00
      002DCA 00                    3546 	.db 0x00
      002DCB 00                    3547 	.db 0x00
      002DCC 00                    3548 	.db 0x00
      002DCD 00                    3549 	.db 0x00
      002DCE 00                    3550 	.db 0x00
      002DCF 00                    3551 	.db 0x00
      002DD0 00                    3552 	.db 0x00
      002DD1 00                    3553 	.db 0x00
      002DD2 00                    3554 	.db 0x00
      002DD3 00                    3555 	.db 0x00
      002DD4 00                    3556 	.db 0x00
      002DD5 00                    3557 	.db 0x00
      002DD6 00                    3558 	.db 0x00
      002DD7 00                    3559 	.db 0x00
      002DD8 00                    3560 	.db 0x00
      002DD9 00                    3561 	.db 0x00
      002DDA 00                    3562 	.db 0x00
      002DDB 00                    3563 	.db 0x00
      002DDC 00                    3564 	.db 0x00
      002DDD 00                    3565 	.db 0x00
      002DDE 00                    3566 	.db 0x00
      002DDF 00                    3567 	.db 0x00
      002DE0 00                    3568 	.db 0x00
      002DE1 00                    3569 	.db 0x00
      002DE2 00                    3570 	.db 0x00
      002DE3 00                    3571 	.db 0x00
      002DE4 00                    3572 	.db 0x00
      002DE5 00                    3573 	.db 0x00
      002DE6 00                    3574 	.db 0x00
      002DE7 00                    3575 	.db 0x00
      002DE8 00                    3576 	.db 0x00
      002DE9 00                    3577 	.db 0x00
      002DEA 00                    3578 	.db 0x00
      002DEB 00                    3579 	.db 0x00
      002DEC 00                    3580 	.db 0x00
      002DED 00                    3581 	.db 0x00
      002DEE 00                    3582 	.db 0x00
      002DEF 00                    3583 	.db 0x00
      002DF0 00                    3584 	.db 0x00
      002DF1 00                    3585 	.db 0x00
      002DF2 00                    3586 	.db 0x00
      002DF3 00                    3587 	.db 0x00
      002DF4 00                    3588 	.db 0x00
      002DF5 00                    3589 	.db 0x00
      002DF6 00                    3590 	.db 0x00
      002DF7 00                    3591 	.db 0x00
      002DF8 00                    3592 	.db 0x00
      002DF9 00                    3593 	.db 0x00
      002DFA 00                    3594 	.db 0x00
      002DFB 00                    3595 	.db 0x00
      002DFC 00                    3596 	.db 0x00
      002DFD 00                    3597 	.db 0x00
      002DFE 00                    3598 	.db 0x00
      002DFF 00                    3599 	.db 0x00
      002E00 00                    3600 	.db 0x00
      002E01 00                    3601 	.db 0x00
      002E02 00                    3602 	.db 0x00
      002E03 00                    3603 	.db 0x00
      002E04 00                    3604 	.db 0x00
      002E05 00                    3605 	.db 0x00
      002E06 00                    3606 	.db 0x00
      002E07 00                    3607 	.db 0x00
      002E08 00                    3608 	.db 0x00
      002E09 00                    3609 	.db 0x00
      002E0A 00                    3610 	.db 0x00
      002E0B 00                    3611 	.db 0x00
      002E0C 00                    3612 	.db 0x00
      002E0D 00                    3613 	.db 0x00
      002E0E 00                    3614 	.db 0x00
      002E0F 00                    3615 	.db 0x00
      002E10 00                    3616 	.db 0x00
      002E11 00                    3617 	.db 0x00
      002E12 00                    3618 	.db 0x00
      002E13 00                    3619 	.db 0x00
      002E14 00                    3620 	.db 0x00
      002E15 00                    3621 	.db 0x00
      002E16 00                    3622 	.db 0x00
      002E17 00                    3623 	.db 0x00
      002E18 00                    3624 	.db 0x00
      002E19 00                    3625 	.db 0x00
      002E1A 00                    3626 	.db 0x00
      002E1B 00                    3627 	.db 0x00
      002E1C 00                    3628 	.db 0x00
      002E1D 00                    3629 	.db 0x00
      002E1E 00                    3630 	.db 0x00
      002E1F 00                    3631 	.db 0x00
      002E20 00                    3632 	.db 0x00
      002E21 00                    3633 	.db 0x00
      002E22 00                    3634 	.db 0x00
      002E23 00                    3635 	.db 0x00
      002E24 00                    3636 	.db 0x00
      002E25 00                    3637 	.db 0x00
      002E26 00                    3638 	.db 0x00
      002E27 00                    3639 	.db 0x00
      002E28 00                    3640 	.db 0x00
      002E29 00                    3641 	.db 0x00
      002E2A 00                    3642 	.db 0x00
      002E2B 00                    3643 	.db 0x00
      002E2C 00                    3644 	.db 0x00
      002E2D 00                    3645 	.db 0x00
      002E2E 00                    3646 	.db 0x00
      002E2F 00                    3647 	.db 0x00
      002E30 00                    3648 	.db 0x00
      002E31 00                    3649 	.db 0x00
      002E32 00                    3650 	.db 0x00
      002E33 00                    3651 	.db 0x00
      002E34 00                    3652 	.db 0x00
      002E35 00                    3653 	.db 0x00
      002E36 00                    3654 	.db 0x00
      002E37 00                    3655 	.db 0x00
      002E38 00                    3656 	.db 0x00
      002E39 00                    3657 	.db 0x00
      002E3A 00                    3658 	.db 0x00
      002E3B 00                    3659 	.db 0x00
      002E3C 00                    3660 	.db 0x00
      002E3D 00                    3661 	.db 0x00
      002E3E 00                    3662 	.db 0x00
      002E3F 00                    3663 	.db 0x00
      002E40 00                    3664 	.db 0x00
      002E41 00                    3665 	.db 0x00
      002E42 00                    3666 	.db 0x00
      002E43 00                    3667 	.db 0x00
      002E44 00                    3668 	.db 0x00
      002E45 00                    3669 	.db 0x00
      002E46 00                    3670 	.db 0x00
      002E47 00                    3671 	.db 0x00
      002E48 00                    3672 	.db 0x00
      002E49 00                    3673 	.db 0x00
      002E4A 00                    3674 	.db 0x00
      002E4B 00                    3675 	.db 0x00
      002E4C 00                    3676 	.db 0x00
      002E4D 00                    3677 	.db 0x00
      002E4E 00                    3678 	.db 0x00
      002E4F 00                    3679 	.db 0x00
      002E50 00                    3680 	.db 0x00
      002E51 00                    3681 	.db 0x00
      002E52 00                    3682 	.db 0x00
      002E53 00                    3683 	.db 0x00
      002E54 00                    3684 	.db 0x00
      002E55 00                    3685 	.db 0x00
      002E56 00                    3686 	.db 0x00
      002E57 00                    3687 	.db 0x00
      002E58 00                    3688 	.db 0x00
      002E59 00                    3689 	.db 0x00
      002E5A 00                    3690 	.db 0x00
      002E5B 00                    3691 	.db 0x00
      002E5C 00                    3692 	.db 0x00
      002E5D 00                    3693 	.db 0x00
      002E5E 00                    3694 	.db 0x00
      002E5F 00                    3695 	.db 0x00
                                   3696 	.area CABS    (ABS,CODE)
