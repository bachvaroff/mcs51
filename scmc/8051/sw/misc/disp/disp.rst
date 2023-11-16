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
                                     15 	.globl _init_timer1
                                     16 	.globl _init_timer0
                                     17 	.globl _init_intr
                                     18 	.globl _clear_gpo
                                     19 	.globl _init_gpo
                                     20 	.globl _getchar_poll
                                     21 	.globl _getchar
                                     22 	.globl _putchar
                                     23 	.globl _toupper
                                     24 	.globl _strncpy
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _FL
                                     32 	.globl _P
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ET2
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _T2EX
                                     95 	.globl _T2
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _B
                                    121 	.globl _A
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _TH2
                                    125 	.globl _TL2
                                    126 	.globl _RCAP2H
                                    127 	.globl _RCAP2L
                                    128 	.globl _T2MOD
                                    129 	.globl _T2CON
                                    130 	.globl _IP
                                    131 	.globl _P3
                                    132 	.globl _IE
                                    133 	.globl _P2
                                    134 	.globl _SBUF
                                    135 	.globl _SCON
                                    136 	.globl _P1
                                    137 	.globl _TH1
                                    138 	.globl _TH0
                                    139 	.globl _TL1
                                    140 	.globl _TL0
                                    141 	.globl _TMOD
                                    142 	.globl _TCON
                                    143 	.globl _PCON
                                    144 	.globl _DPH
                                    145 	.globl _DPL
                                    146 	.globl _SP
                                    147 	.globl _P0
                                    148 	.globl _gpo
                                    149 	.globl _OE
                                    150 	.globl _column
                                    151 	.globl _ddata
                                    152 	.globl _dcol
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0	=	0x0080
                           000081   159 _SP	=	0x0081
                           000082   160 _DPL	=	0x0082
                           000083   161 _DPH	=	0x0083
                           000087   162 _PCON	=	0x0087
                           000088   163 _TCON	=	0x0088
                           000089   164 _TMOD	=	0x0089
                           00008A   165 _TL0	=	0x008a
                           00008B   166 _TL1	=	0x008b
                           00008C   167 _TH0	=	0x008c
                           00008D   168 _TH1	=	0x008d
                           000090   169 _P1	=	0x0090
                           000098   170 _SCON	=	0x0098
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 _IE	=	0x00a8
                           0000B0   174 _P3	=	0x00b0
                           0000B8   175 _IP	=	0x00b8
                           0000C8   176 _T2CON	=	0x00c8
                           0000C9   177 _T2MOD	=	0x00c9
                           0000CA   178 _RCAP2L	=	0x00ca
                           0000CB   179 _RCAP2H	=	0x00cb
                           0000CC   180 _TL2	=	0x00cc
                           0000CD   181 _TH2	=	0x00cd
                           0000D0   182 _PSW	=	0x00d0
                           0000E0   183 _ACC	=	0x00e0
                           0000E0   184 _A	=	0x00e0
                           0000F0   185 _B	=	0x00f0
                                    186 ;--------------------------------------------------------
                                    187 ; special function bits
                                    188 ;--------------------------------------------------------
                                    189 	.area RSEG    (ABS,DATA)
      000000                        190 	.org 0x0000
                           000080   191 _P0_0	=	0x0080
                           000081   192 _P0_1	=	0x0081
                           000082   193 _P0_2	=	0x0082
                           000083   194 _P0_3	=	0x0083
                           000084   195 _P0_4	=	0x0084
                           000085   196 _P0_5	=	0x0085
                           000086   197 _P0_6	=	0x0086
                           000087   198 _P0_7	=	0x0087
                           000088   199 _IT0	=	0x0088
                           000089   200 _IE0	=	0x0089
                           00008A   201 _IT1	=	0x008a
                           00008B   202 _IE1	=	0x008b
                           00008C   203 _TR0	=	0x008c
                           00008D   204 _TF0	=	0x008d
                           00008E   205 _TR1	=	0x008e
                           00008F   206 _TF1	=	0x008f
                           000090   207 _P1_0	=	0x0090
                           000091   208 _P1_1	=	0x0091
                           000092   209 _P1_2	=	0x0092
                           000093   210 _P1_3	=	0x0093
                           000094   211 _P1_4	=	0x0094
                           000095   212 _P1_5	=	0x0095
                           000096   213 _P1_6	=	0x0096
                           000097   214 _P1_7	=	0x0097
                           000090   215 _T2	=	0x0090
                           000091   216 _T2EX	=	0x0091
                           000098   217 _RI	=	0x0098
                           000099   218 _TI	=	0x0099
                           00009A   219 _RB8	=	0x009a
                           00009B   220 _TB8	=	0x009b
                           00009C   221 _REN	=	0x009c
                           00009D   222 _SM2	=	0x009d
                           00009E   223 _SM1	=	0x009e
                           00009F   224 _SM0	=	0x009f
                           0000A0   225 _P2_0	=	0x00a0
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 _P2_2	=	0x00a2
                           0000A3   228 _P2_3	=	0x00a3
                           0000A4   229 _P2_4	=	0x00a4
                           0000A5   230 _P2_5	=	0x00a5
                           0000A6   231 _P2_6	=	0x00a6
                           0000A7   232 _P2_7	=	0x00a7
                           0000A8   233 _EX0	=	0x00a8
                           0000A9   234 _ET0	=	0x00a9
                           0000AA   235 _EX1	=	0x00aa
                           0000AB   236 _ET1	=	0x00ab
                           0000AC   237 _ES	=	0x00ac
                           0000AD   238 _ET2	=	0x00ad
                           0000AF   239 _EA	=	0x00af
                           0000B0   240 _P3_0	=	0x00b0
                           0000B1   241 _P3_1	=	0x00b1
                           0000B2   242 _P3_2	=	0x00b2
                           0000B3   243 _P3_3	=	0x00b3
                           0000B4   244 _P3_4	=	0x00b4
                           0000B5   245 _P3_5	=	0x00b5
                           0000B6   246 _P3_6	=	0x00b6
                           0000B7   247 _P3_7	=	0x00b7
                           0000B0   248 _RXD	=	0x00b0
                           0000B1   249 _TXD	=	0x00b1
                           0000B2   250 _INT0	=	0x00b2
                           0000B3   251 _INT1	=	0x00b3
                           0000B4   252 _T0	=	0x00b4
                           0000B5   253 _T1	=	0x00b5
                           0000B6   254 _WR	=	0x00b6
                           0000B7   255 _RD	=	0x00b7
                           0000B8   256 _PX0	=	0x00b8
                           0000B9   257 _PT0	=	0x00b9
                           0000BA   258 _PX1	=	0x00ba
                           0000BB   259 _PT1	=	0x00bb
                           0000BC   260 _PS	=	0x00bc
                           0000BD   261 _PT2	=	0x00bd
                           0000C8   262 _T2CON_0	=	0x00c8
                           0000C9   263 _T2CON_1	=	0x00c9
                           0000CA   264 _T2CON_2	=	0x00ca
                           0000CB   265 _T2CON_3	=	0x00cb
                           0000CC   266 _T2CON_4	=	0x00cc
                           0000CD   267 _T2CON_5	=	0x00cd
                           0000CE   268 _T2CON_6	=	0x00ce
                           0000CF   269 _T2CON_7	=	0x00cf
                           0000C8   270 _CP_RL2	=	0x00c8
                           0000C9   271 _C_T2	=	0x00c9
                           0000CA   272 _TR2	=	0x00ca
                           0000CB   273 _EXEN2	=	0x00cb
                           0000CC   274 _TCLK	=	0x00cc
                           0000CD   275 _RCLK	=	0x00cd
                           0000CE   276 _EXF2	=	0x00ce
                           0000CF   277 _TF2	=	0x00cf
                           0000D0   278 _P	=	0x00d0
                           0000D1   279 _FL	=	0x00d1
                           0000D2   280 _OV	=	0x00d2
                           0000D3   281 _RS0	=	0x00d3
                           0000D4   282 _RS1	=	0x00d4
                           0000D5   283 _F0	=	0x00d5
                           0000D6   284 _AC	=	0x00d6
                           0000D7   285 _CY	=	0x00d7
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable register banks
                                    288 ;--------------------------------------------------------
                                    289 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        290 	.ds 8
                                    291 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        292 	.ds 8
                                    293 ;--------------------------------------------------------
                                    294 ; internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area DSEG    (DATA)
                                    297 ;--------------------------------------------------------
                                    298 ; overlayable items in internal ram 
                                    299 ;--------------------------------------------------------
                                    300 ;--------------------------------------------------------
                                    301 ; Stack segment in internal ram 
                                    302 ;--------------------------------------------------------
                                    303 	.area	SSEG
      000033                        304 __start__stack:
      000033                        305 	.ds	1
                                    306 
                                    307 ;--------------------------------------------------------
                                    308 ; indirectly addressable internal ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area ISEG    (DATA)
      000021                        311 _dcol::
      000021                        312 	.ds 8
      000029                        313 _ddata::
      000029                        314 	.ds 8
      000031                        315 _column::
      000031                        316 	.ds 1
      000032                        317 _OE::
      000032                        318 	.ds 1
                                    319 ;--------------------------------------------------------
                                    320 ; absolute internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area IABS    (ABS,DATA)
                                    323 	.area IABS    (ABS,DATA)
                                    324 ;--------------------------------------------------------
                                    325 ; bit data
                                    326 ;--------------------------------------------------------
                                    327 	.area BSEG    (BIT)
                                    328 ;--------------------------------------------------------
                                    329 ; paged external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area PSEG    (PAG,XDATA)
                           000000   332 _gpo	=	0x0000
                                    333 ;--------------------------------------------------------
                                    334 ; external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XSEG    (XDATA)
      008000                        337 _buf:
      008000                        338 	.ds 257
                                    339 ;--------------------------------------------------------
                                    340 ; absolute external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XABS    (ABS,XDATA)
                                    343 ;--------------------------------------------------------
                                    344 ; external initialized ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XISEG   (XDATA)
      008101                        347 __ft_font6x8:
      008101                        348 	.ds 2048
      008901                        349 _initial:
      008901                        350 	.ds 3
                                    351 	.area HOME    (CODE)
                                    352 	.area GSINIT0 (CODE)
                                    353 	.area GSINIT1 (CODE)
                                    354 	.area GSINIT2 (CODE)
                                    355 	.area GSINIT3 (CODE)
                                    356 	.area GSINIT4 (CODE)
                                    357 	.area GSINIT5 (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area CSEG    (CODE)
                                    361 ;--------------------------------------------------------
                                    362 ; interrupt vector 
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
      002000                        365 __interrupt_vect:
      002000 02 20 11         [24]  366 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  367 	reti
      002004                        368 	.ds	7
      00200B 02 21 3A         [24]  369 	ljmp	_timer0_intr
                                    370 ;--------------------------------------------------------
                                    371 ; global & static initialisations
                                    372 ;--------------------------------------------------------
                                    373 	.area HOME    (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.area GSFINAL (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.globl __sdcc_gsinit_startup
                                    378 	.globl __sdcc_program_startup
                                    379 	.globl __start__stack
                                    380 	.globl __mcs51_genXINIT
                                    381 	.globl __mcs51_genXRAMCLEAR
                                    382 	.globl __mcs51_genRAMCLEAR
                                    383 ;	disp.c:65: __idata const uint8_t dcol[8] = {
      00206A 78 21            [12]  384 	mov	r0,#_dcol
      00206C 76 80            [12]  385 	mov	@r0,#0x80
      00206E 78 22            [12]  386 	mov	r0,#(_dcol + 0x0001)
      002070 76 40            [12]  387 	mov	@r0,#0x40
      002072 78 23            [12]  388 	mov	r0,#(_dcol + 0x0002)
      002074 76 20            [12]  389 	mov	@r0,#0x20
      002076 78 24            [12]  390 	mov	r0,#(_dcol + 0x0003)
      002078 76 10            [12]  391 	mov	@r0,#0x10
      00207A 78 25            [12]  392 	mov	r0,#(_dcol + 0x0004)
      00207C 76 08            [12]  393 	mov	@r0,#0x08
      00207E 78 26            [12]  394 	mov	r0,#(_dcol + 0x0005)
      002080 76 04            [12]  395 	mov	@r0,#0x04
      002082 78 27            [12]  396 	mov	r0,#(_dcol + 0x0006)
      002084 76 02            [12]  397 	mov	@r0,#0x02
      002086 78 28            [12]  398 	mov	r0,#(_dcol + 0x0007)
      002088 76 01            [12]  399 	mov	@r0,#0x01
                                    400 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  401 	ljmp	__sdcc_program_startup
                                    402 ;--------------------------------------------------------
                                    403 ; Home
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
                                    406 	.area HOME    (CODE)
      00200E                        407 __sdcc_program_startup:
      00200E 02 22 FB         [24]  408 	ljmp	_main
                                    409 ;	return from main will return to caller
                                    410 ;--------------------------------------------------------
                                    411 ; code
                                    412 ;--------------------------------------------------------
                                    413 	.area CSEG    (CODE)
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'putchar'
                                    416 ;------------------------------------------------------------
                                    417 ;c                         Allocated to registers 
                                    418 ;------------------------------------------------------------
                                    419 ;	disp.c:13: int putchar(int c) __naked {
                                    420 ;	-----------------------------------------
                                    421 ;	 function putchar
                                    422 ;	-----------------------------------------
      00208D                        423 _putchar:
                                    424 ;	naked function: no prologue.
                                    425 ;	disp.c:18: __endasm;
      00208D E5 82            [12]  426 	mov	a, dpl
      00208F 02 00 30         [24]  427 	ljmp	0x0030
                                    428 ;	disp.c:19: }
                                    429 ;	naked function: no epilogue.
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'getchar'
                                    432 ;------------------------------------------------------------
                                    433 ;	disp.c:21: int getchar(void) __naked {
                                    434 ;	-----------------------------------------
                                    435 ;	 function getchar
                                    436 ;	-----------------------------------------
      002092                        437 _getchar:
                                    438 ;	naked function: no prologue.
                                    439 ;	disp.c:27: __endasm;
      002092 12 00 32         [24]  440 	lcall	0x0032
      002095 F5 82            [12]  441 	mov	dpl, a
      002097 75 83 00         [24]  442 	mov	dph, #0
      00209A 22               [24]  443 	ret
                                    444 ;	disp.c:28: }
                                    445 ;	naked function: no epilogue.
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'getchar_poll'
                                    448 ;------------------------------------------------------------
                                    449 ;	disp.c:30: int getchar_poll(void) __naked {
                                    450 ;	-----------------------------------------
                                    451 ;	 function getchar_poll
                                    452 ;	-----------------------------------------
      00209B                        453 _getchar_poll:
                                    454 ;	naked function: no prologue.
                                    455 ;	disp.c:42: __endasm;
      00209B 74 FF            [12]  456 	mov	a, #0xff
      00209D F5 F0            [12]  457 	mov	b, a
      00209F 30 98 07         [24]  458 	jnb	ri, nochar
      0020A2 C2 98            [12]  459 	clr	ri
      0020A4 E5 99            [12]  460 	mov	a, sbuf
      0020A6 75 F0 00         [24]  461 	mov	b, #0
      0020A9                        462 	nochar:
      0020A9 F5 82            [12]  463 	mov	dpl, a
      0020AB 85 F0 83         [24]  464 	mov	dph, b
      0020AE 22               [24]  465 	ret
                                    466 ;	disp.c:43: }
                                    467 ;	naked function: no epilogue.
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'init_gpo'
                                    470 ;------------------------------------------------------------
                                    471 ;	disp.c:84: void init_gpo(void) {
                                    472 ;	-----------------------------------------
                                    473 ;	 function init_gpo
                                    474 ;	-----------------------------------------
      0020AF                        475 _init_gpo:
                           000007   476 	ar7 = 0x07
                           000006   477 	ar6 = 0x06
                           000005   478 	ar5 = 0x05
                           000004   479 	ar4 = 0x04
                           000003   480 	ar3 = 0x03
                           000002   481 	ar2 = 0x02
                           000001   482 	ar1 = 0x01
                           000000   483 	ar0 = 0x00
                                    484 ;	disp.c:85: P1_7 = 0;
                                    485 ;	assignBit
      0020AF C2 97            [12]  486 	clr	_P1_7
                                    487 ;	disp.c:87: P2 = GPO_BASE_H;
      0020B1 75 A0 F0         [24]  488 	mov	_P2,#0xf0
                                    489 ;	disp.c:89: CLEAR_GPO;
      0020B4 78 06            [12]  490 	mov	r0,#(_gpo + 0x0006)
      0020B6 74 3F            [12]  491 	mov	a,#0x3f
      0020B8 F2               [24]  492 	movx	@r0,a
      0020B9 78 00            [12]  493 	mov	r0,#_gpo
      0020BB E4               [12]  494 	clr	a
      0020BC F2               [24]  495 	movx	@r0,a
      0020BD 78 01            [12]  496 	mov	r0,#(_gpo + 0x0001)
      0020BF F2               [24]  497 	movx	@r0,a
      0020C0 78 02            [12]  498 	mov	r0,#(_gpo + 0x0002)
      0020C2 F2               [24]  499 	movx	@r0,a
      0020C3 78 03            [12]  500 	mov	r0,#(_gpo + 0x0003)
      0020C5 F2               [24]  501 	movx	@r0,a
      0020C6 78 04            [12]  502 	mov	r0,#(_gpo + 0x0004)
      0020C8 F2               [24]  503 	movx	@r0,a
      0020C9 78 05            [12]  504 	mov	r0,#(_gpo + 0x0005)
      0020CB F2               [24]  505 	movx	@r0,a
                                    506 ;	disp.c:91: return;
                                    507 ;	disp.c:92: }
      0020CC 22               [24]  508 	ret
                                    509 ;------------------------------------------------------------
                                    510 ;Allocation info for local variables in function 'clear_gpo'
                                    511 ;------------------------------------------------------------
                                    512 ;	disp.c:94: void clear_gpo(void) {
                                    513 ;	-----------------------------------------
                                    514 ;	 function clear_gpo
                                    515 ;	-----------------------------------------
      0020CD                        516 _clear_gpo:
                                    517 ;	disp.c:95: CLEAR_GPO;
      0020CD 78 06            [12]  518 	mov	r0,#(_gpo + 0x0006)
      0020CF 74 3F            [12]  519 	mov	a,#0x3f
      0020D1 F2               [24]  520 	movx	@r0,a
      0020D2 78 00            [12]  521 	mov	r0,#_gpo
      0020D4 E4               [12]  522 	clr	a
      0020D5 F2               [24]  523 	movx	@r0,a
      0020D6 78 01            [12]  524 	mov	r0,#(_gpo + 0x0001)
      0020D8 F2               [24]  525 	movx	@r0,a
      0020D9 78 02            [12]  526 	mov	r0,#(_gpo + 0x0002)
      0020DB F2               [24]  527 	movx	@r0,a
      0020DC 78 03            [12]  528 	mov	r0,#(_gpo + 0x0003)
      0020DE F2               [24]  529 	movx	@r0,a
      0020DF 78 04            [12]  530 	mov	r0,#(_gpo + 0x0004)
      0020E1 F2               [24]  531 	movx	@r0,a
      0020E2 78 05            [12]  532 	mov	r0,#(_gpo + 0x0005)
      0020E4 F2               [24]  533 	movx	@r0,a
                                    534 ;	disp.c:97: return;
                                    535 ;	disp.c:98: }
      0020E5 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'init_intr'
                                    539 ;------------------------------------------------------------
                                    540 ;	disp.c:100: void init_intr(void) {
                                    541 ;	-----------------------------------------
                                    542 ;	 function init_intr
                                    543 ;	-----------------------------------------
      0020E6                        544 _init_intr:
                                    545 ;	disp.c:101: TR0 = 0;
                                    546 ;	assignBit
      0020E6 C2 8C            [12]  547 	clr	_TR0
                                    548 ;	disp.c:102: TR1 = 0;
                                    549 ;	assignBit
      0020E8 C2 8E            [12]  550 	clr	_TR1
                                    551 ;	disp.c:103: ET0 = 1;
                                    552 ;	assignBit
      0020EA D2 A9            [12]  553 	setb	_ET0
                                    554 ;	disp.c:104: ET1 = 0;
                                    555 ;	assignBit
      0020EC C2 AB            [12]  556 	clr	_ET1
                                    557 ;	disp.c:105: EA = 1;
                                    558 ;	assignBit
      0020EE D2 AF            [12]  559 	setb	_EA
                                    560 ;	disp.c:107: return;
                                    561 ;	disp.c:108: }
      0020F0 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'init_timer0'
                                    565 ;------------------------------------------------------------
                                    566 ;	disp.c:110: void init_timer0(void) {
                                    567 ;	-----------------------------------------
                                    568 ;	 function init_timer0
                                    569 ;	-----------------------------------------
      0020F1                        570 _init_timer0:
                                    571 ;	disp.c:111: TR0 = 0;
                                    572 ;	assignBit
      0020F1 C2 8C            [12]  573 	clr	_TR0
                                    574 ;	disp.c:112: TMOD |= 0x01;
      0020F3 43 89 01         [24]  575 	orl	_TMOD,#0x01
                                    576 ;	disp.c:113: TH0 = TR0_COUNT >> 8;
      0020F6 75 8C F8         [24]  577 	mov	_TH0,#0xf8
                                    578 ;	disp.c:114: TL0 = TR0_COUNT & 0xffu;
      0020F9 75 8A 00         [24]  579 	mov	_TL0,#0x00
                                    580 ;	disp.c:116: return;
                                    581 ;	disp.c:117: }
      0020FC 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'init_timer1'
                                    585 ;------------------------------------------------------------
                                    586 ;	disp.c:119: void init_timer1(void) {
                                    587 ;	-----------------------------------------
                                    588 ;	 function init_timer1
                                    589 ;	-----------------------------------------
      0020FD                        590 _init_timer1:
                                    591 ;	disp.c:120: TR1 = 0;
                                    592 ;	assignBit
      0020FD C2 8E            [12]  593 	clr	_TR1
                                    594 ;	disp.c:121: TMOD |= 0x10;
      0020FF 43 89 10         [24]  595 	orl	_TMOD,#0x10
                                    596 ;	disp.c:122: TH1 = TR1_COUNT_0 >> 8;
      002102 75 8D 00         [24]  597 	mov	_TH1,#0x00
                                    598 ;	disp.c:123: TL1 = TR1_COUNT_0 & 0xffu;
      002105 75 8B 00         [24]  599 	mov	_TL1,#0x00
                                    600 ;	disp.c:125: return;
                                    601 ;	disp.c:126: }
      002108 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'init_disp'
                                    605 ;------------------------------------------------------------
                                    606 ;	disp.c:128: void init_disp(void) {
                                    607 ;	-----------------------------------------
                                    608 ;	 function init_disp
                                    609 ;	-----------------------------------------
      002109                        610 _init_disp:
                                    611 ;	disp.c:129: gpo[DISP_COL] = 0u;
      002109 78 05            [12]  612 	mov	r0,#(_gpo + 0x0005)
      00210B E4               [12]  613 	clr	a
      00210C F2               [24]  614 	movx	@r0,a
                                    615 ;	disp.c:130: gpo[DISP_DATA] = 0u;
      00210D 78 04            [12]  616 	mov	r0,#(_gpo + 0x0004)
      00210F F2               [24]  617 	movx	@r0,a
                                    618 ;	disp.c:131: OE = 0x0fu; /* 00_001111 */
      002110 78 32            [12]  619 	mov	r0,#_OE
      002112 76 0F            [12]  620 	mov	@r0,#0x0f
                                    621 ;	disp.c:132: gpo[GPO_OE] = OE;
      002114 78 06            [12]  622 	mov	r0,#(_gpo + 0x0006)
      002116 74 0F            [12]  623 	mov	a,#0x0f
      002118 F2               [24]  624 	movx	@r0,a
                                    625 ;	disp.c:134: for (column = 0u; column < 8u; column++)
      002119 78 31            [12]  626 	mov	r0,#_column
      00211B 76 00            [12]  627 	mov	@r0,#0x00
      00211D                        628 00103$:
      00211D 78 31            [12]  629 	mov	r0,#_column
      00211F B6 08 00         [24]  630 	cjne	@r0,#0x08,00115$
      002122                        631 00115$:
      002122 50 11            [24]  632 	jnc	00101$
                                    633 ;	disp.c:135: ddata[column] = 0u;
      002124 78 31            [12]  634 	mov	r0,#_column
      002126 E6               [12]  635 	mov	a,@r0
      002127 24 29            [12]  636 	add	a,#_ddata
      002129 F8               [12]  637 	mov	r0,a
      00212A 76 00            [12]  638 	mov	@r0,#0x00
                                    639 ;	disp.c:134: for (column = 0u; column < 8u; column++)
      00212C 78 31            [12]  640 	mov	r0,#_column
      00212E E6               [12]  641 	mov	a,@r0
      00212F 78 31            [12]  642 	mov	r0,#_column
      002131 04               [12]  643 	inc	a
      002132 F6               [12]  644 	mov	@r0,a
      002133 80 E8            [24]  645 	sjmp	00103$
      002135                        646 00101$:
                                    647 ;	disp.c:136: column = 0u;
      002135 78 31            [12]  648 	mov	r0,#_column
      002137 76 00            [12]  649 	mov	@r0,#0x00
                                    650 ;	disp.c:138: return;
                                    651 ;	disp.c:139: }
      002139 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'timer0_intr'
                                    655 ;------------------------------------------------------------
                                    656 ;t                         Allocated to registers r7 
                                    657 ;------------------------------------------------------------
                                    658 ;	disp.c:141: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    659 ;	-----------------------------------------
                                    660 ;	 function timer0_intr
                                    661 ;	-----------------------------------------
      00213A                        662 _timer0_intr:
                           00000F   663 	ar7 = 0x0f
                           00000E   664 	ar6 = 0x0e
                           00000D   665 	ar5 = 0x0d
                           00000C   666 	ar4 = 0x0c
                           00000B   667 	ar3 = 0x0b
                           00000A   668 	ar2 = 0x0a
                           000009   669 	ar1 = 0x09
                           000008   670 	ar0 = 0x08
      00213A C0 E0            [24]  671 	push	acc
      00213C C0 D0            [24]  672 	push	psw
      00213E 75 D0 08         [24]  673 	mov	psw,#0x08
                                    674 ;	disp.c:144: t = column & 7u;
      002141 78 31            [12]  675 	mov	r0,#_column
      002143 86 0F            [24]  676 	mov	ar7,@r0
      002145 53 0F 07         [24]  677 	anl	ar7,#0x07
                                    678 ;	disp.c:145: gpo[DISP_COL] = 0u;
      002148 78 05            [12]  679 	mov	r0,#(_gpo + 0x0005)
      00214A E4               [12]  680 	clr	a
      00214B F2               [24]  681 	movx	@r0,a
                                    682 ;	disp.c:146: gpo[DISP_DATA] = ddata[t];
      00214C EF               [12]  683 	mov	a,r7
      00214D 24 29            [12]  684 	add	a,#_ddata
      00214F F9               [12]  685 	mov	r1,a
      002150 87 0E            [24]  686 	mov	ar6,@r1
      002152 78 04            [12]  687 	mov	r0,#(_gpo + 0x0004)
      002154 EE               [12]  688 	mov	a,r6
      002155 F2               [24]  689 	movx	@r0,a
                                    690 ;	disp.c:147: gpo[DISP_COL] = dcol[t];
      002156 EF               [12]  691 	mov	a,r7
      002157 24 21            [12]  692 	add	a,#_dcol
      002159 F9               [12]  693 	mov	r1,a
      00215A 87 0F            [24]  694 	mov	ar7,@r1
      00215C 78 05            [12]  695 	mov	r0,#(_gpo + 0x0005)
      00215E EF               [12]  696 	mov	a,r7
      00215F F2               [24]  697 	movx	@r0,a
                                    698 ;	disp.c:148: column++;
      002160 78 31            [12]  699 	mov	r0,#_column
      002162 E6               [12]  700 	mov	a,@r0
      002163 78 31            [12]  701 	mov	r0,#_column
      002165 04               [12]  702 	inc	a
      002166 F6               [12]  703 	mov	@r0,a
                                    704 ;	disp.c:150: TR0 = 0;
                                    705 ;	assignBit
      002167 C2 8C            [12]  706 	clr	_TR0
                                    707 ;	disp.c:151: TH0 = TR0_COUNT >> 8;
      002169 75 8C F8         [24]  708 	mov	_TH0,#0xf8
                                    709 ;	disp.c:152: TL0 = TR0_COUNT & 0xffu;
      00216C 75 8A 00         [24]  710 	mov	_TL0,#0x00
                                    711 ;	disp.c:153: TR0 = 1;
                                    712 ;	assignBit
      00216F D2 8C            [12]  713 	setb	_TR0
                                    714 ;	disp.c:155: return;
                                    715 ;	disp.c:156: }
      002171 D0 D0            [24]  716 	pop	psw
      002173 D0 E0            [24]  717 	pop	acc
      002175 32               [24]  718 	reti
                                    719 ;	eliminated unneeded push/pop dpl
                                    720 ;	eliminated unneeded push/pop dph
                                    721 ;	eliminated unneeded push/pop b
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'scroll'
                                    724 ;------------------------------------------------------------
                                    725 ;msg                       Allocated to stack - _bp +1
                                    726 ;symbol                    Allocated to stack - _bp +5
                                    727 ;bit                       Allocated to stack - _bp +6
                                    728 ;i                         Allocated to stack - _bp +7
                                    729 ;j                         Allocated to registers r4 
                                    730 ;r                         Allocated to registers r3 r4 
                                    731 ;__3932160002              Allocated to registers 
                                    732 ;s                         Allocated to registers r6 r4 r3 
                                    733 ;sloc0                     Allocated to stack - _bp +4
                                    734 ;sloc1                     Allocated to stack - _bp +18
                                    735 ;sloc2                     Allocated to stack - _bp +19
                                    736 ;------------------------------------------------------------
                                    737 ;	disp.c:183: int scroll(uint8_t *msg) {
                                    738 ;	-----------------------------------------
                                    739 ;	 function scroll
                                    740 ;	-----------------------------------------
      002176                        741 _scroll:
                           000007   742 	ar7 = 0x07
                           000006   743 	ar6 = 0x06
                           000005   744 	ar5 = 0x05
                           000004   745 	ar4 = 0x04
                           000003   746 	ar3 = 0x03
                           000002   747 	ar2 = 0x02
                           000001   748 	ar1 = 0x01
                           000000   749 	ar0 = 0x00
      002176 C0 10            [24]  750 	push	_bp
      002178 85 81 10         [24]  751 	mov	_bp,sp
      00217B C0 82            [24]  752 	push	dpl
      00217D C0 83            [24]  753 	push	dph
      00217F C0 F0            [24]  754 	push	b
      002181 E5 81            [12]  755 	mov	a,sp
      002183 24 05            [12]  756 	add	a,#0x05
      002185 F5 81            [12]  757 	mov	sp,a
                                    758 ;	disp.c:189: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002187 E5 10            [12]  759 	mov	a,_bp
      002189 24 06            [12]  760 	add	a,#0x06
      00218B F8               [12]  761 	mov	r0,a
      00218C 76 00            [12]  762 	mov	@r0,#0x00
      00218E E5 10            [12]  763 	mov	a,_bp
      002190 24 07            [12]  764 	add	a,#0x07
      002192 F8               [12]  765 	mov	r0,a
      002193 E4               [12]  766 	clr	a
      002194 F6               [12]  767 	mov	@r0,a
      002195 08               [12]  768 	inc	r0
      002196 F6               [12]  769 	mov	@r0,a
      002197                        770 00136$:
                                    771 ;	disp.c:190: if (!bit) {
      002197 E5 10            [12]  772 	mov	a,_bp
      002199 24 06            [12]  773 	add	a,#0x06
      00219B F8               [12]  774 	mov	r0,a
      00219C E6               [12]  775 	mov	a,@r0
      00219D 70 55            [24]  776 	jnz	00104$
                                    777 ;	disp.c:191: symbol = msg[i];
      00219F A8 10            [24]  778 	mov	r0,_bp
      0021A1 08               [12]  779 	inc	r0
      0021A2 E5 10            [12]  780 	mov	a,_bp
      0021A4 24 07            [12]  781 	add	a,#0x07
      0021A6 F9               [12]  782 	mov	r1,a
      0021A7 E7               [12]  783 	mov	a,@r1
      0021A8 26               [12]  784 	add	a,@r0
      0021A9 FA               [12]  785 	mov	r2,a
      0021AA 09               [12]  786 	inc	r1
      0021AB E7               [12]  787 	mov	a,@r1
      0021AC 08               [12]  788 	inc	r0
      0021AD 36               [12]  789 	addc	a,@r0
      0021AE FB               [12]  790 	mov	r3,a
      0021AF 08               [12]  791 	inc	r0
      0021B0 86 04            [24]  792 	mov	ar4,@r0
      0021B2 8A 82            [24]  793 	mov	dpl,r2
      0021B4 8B 83            [24]  794 	mov	dph,r3
      0021B6 8C F0            [24]  795 	mov	b,r4
      0021B8 12 26 4C         [24]  796 	lcall	__gptrget
      0021BB FA               [12]  797 	mov	r2,a
      0021BC E5 10            [12]  798 	mov	a,_bp
      0021BE 24 04            [12]  799 	add	a,#0x04
      0021C0 F8               [12]  800 	mov	r0,a
      0021C1 A6 02            [24]  801 	mov	@r0,ar2
                                    802 ;	disp.c:192: if (!symbol) {
      0021C3 EA               [12]  803 	mov	a,r2
      0021C4 70 1D            [24]  804 	jnz	00102$
                                    805 ;	disp.c:193: i = 0u;
      0021C6 E5 10            [12]  806 	mov	a,_bp
      0021C8 24 07            [12]  807 	add	a,#0x07
      0021CA F8               [12]  808 	mov	r0,a
      0021CB E4               [12]  809 	clr	a
      0021CC F6               [12]  810 	mov	@r0,a
      0021CD 08               [12]  811 	inc	r0
      0021CE F6               [12]  812 	mov	@r0,a
                                    813 ;	disp.c:194: symbol = msg[i];
      0021CF A8 10            [24]  814 	mov	r0,_bp
      0021D1 08               [12]  815 	inc	r0
      0021D2 86 82            [24]  816 	mov	dpl,@r0
      0021D4 08               [12]  817 	inc	r0
      0021D5 86 83            [24]  818 	mov	dph,@r0
      0021D7 08               [12]  819 	inc	r0
      0021D8 86 F0            [24]  820 	mov	b,@r0
      0021DA E5 10            [12]  821 	mov	a,_bp
      0021DC 24 04            [12]  822 	add	a,#0x04
      0021DE F9               [12]  823 	mov	r1,a
      0021DF 12 26 4C         [24]  824 	lcall	__gptrget
      0021E2 F7               [12]  825 	mov	@r1,a
      0021E3                        826 00102$:
                                    827 ;	disp.c:196: i++;
      0021E3 E5 10            [12]  828 	mov	a,_bp
      0021E5 24 07            [12]  829 	add	a,#0x07
      0021E7 F8               [12]  830 	mov	r0,a
      0021E8 06               [12]  831 	inc	@r0
      0021E9 B6 00 02         [24]  832 	cjne	@r0,#0x00,00219$
      0021EC 08               [12]  833 	inc	r0
      0021ED 06               [12]  834 	inc	@r0
      0021EE                        835 00219$:
                                    836 ;	disp.c:197: OE = 0x8fu;
      0021EE 78 32            [12]  837 	mov	r0,#_OE
      0021F0 76 8F            [12]  838 	mov	@r0,#0x8f
      0021F2 80 04            [24]  839 	sjmp	00105$
      0021F4                        840 00104$:
                                    841 ;	disp.c:198: } else OE = 0x0fu;
      0021F4 78 32            [12]  842 	mov	r0,#_OE
      0021F6 76 0F            [12]  843 	mov	@r0,#0x0f
      0021F8                        844 00105$:
                                    845 ;	disp.c:199: gpo[GPO_OE] = OE;
      0021F8 78 06            [12]  846 	mov	r0,#(_gpo + 0x0006)
      0021FA 79 32            [12]  847 	mov	r1,#_OE
      0021FC E7               [12]  848 	mov	a,@r1
      0021FD F2               [24]  849 	movx	@r0,a
                                    850 ;	disp.c:201: if ((SKIPL > bit) || (bit > (7u - SKIPH))) goto skip_shift;
      0021FE E5 10            [12]  851 	mov	a,_bp
      002200 24 06            [12]  852 	add	a,#0x06
      002202 F8               [12]  853 	mov	r0,a
      002203 E6               [12]  854 	mov	a,@r0
      002204 24 FA            [12]  855 	add	a,#0xff - 0x05
      002206 40 6F            [24]  856 	jc	00110$
                                    857 ;	disp.c:159: TR1 = 0;
                                    858 ;	assignBit
      002208 C2 8E            [12]  859 	clr	_TR1
                                    860 ;	disp.c:160: TH1 = TR1_COUNT_0 >> 8;
      00220A 75 8D 00         [24]  861 	mov	_TH1,#0x00
                                    862 ;	disp.c:161: TL1 = TR1_COUNT_0 & 0xffu;	
      00220D 75 8B 00         [24]  863 	mov	_TL1,#0x00
                                    864 ;	disp.c:162: TF1 = 0;
                                    865 ;	assignBit
      002210 C2 8F            [12]  866 	clr	_TF1
                                    867 ;	disp.c:163: TR1 = 1;
                                    868 ;	assignBit
      002212 D2 8E            [12]  869 	setb	_TR1
                                    870 ;	disp.c:164: while (!TF1);
      002214                        871 00122$:
                                    872 ;	disp.c:165: TF1 = 0;
                                    873 ;	assignBit
      002214 10 8F 02         [24]  874 	jbc	_TF1,00221$
      002217 80 FB            [24]  875 	sjmp	00122$
      002219                        876 00221$:
                                    877 ;	disp.c:167: TR1 = 0;
                                    878 ;	assignBit
      002219 C2 8E            [12]  879 	clr	_TR1
                                    880 ;	disp.c:168: TH1 = TR1_COUNT_1 >> 8;
      00221B 75 8D C0         [24]  881 	mov	_TH1,#0xc0
                                    882 ;	disp.c:169: TL1 = TR1_COUNT_1 & 0xffu;	
      00221E 75 8B 00         [24]  883 	mov	_TL1,#0x00
                                    884 ;	disp.c:170: TF1 = 0;
                                    885 ;	assignBit
      002221 C2 8F            [12]  886 	clr	_TF1
                                    887 ;	disp.c:171: TR1 = 1;
                                    888 ;	assignBit
      002223 D2 8E            [12]  889 	setb	_TR1
                                    890 ;	disp.c:172: while (!TF1);
      002225                        891 00125$:
                                    892 ;	disp.c:173: TF1 = 0;
                                    893 ;	assignBit
      002225 10 8F 02         [24]  894 	jbc	_TF1,00222$
      002228 80 FB            [24]  895 	sjmp	00125$
      00222A                        896 00222$:
                                    897 ;	disp.c:175: TR1 = 0;
                                    898 ;	assignBit
      00222A C2 8E            [12]  899 	clr	_TR1
                                    900 ;	disp.c:204: for (j = 0u; j < 8u; j++)
      00222C E5 10            [12]  901 	mov	a,_bp
      00222E 24 04            [12]  902 	add	a,#0x04
      002230 F8               [12]  903 	mov	r0,a
      002231 E6               [12]  904 	mov	a,@r0
      002232 75 F0 08         [24]  905 	mov	b,#0x08
      002235 A4               [48]  906 	mul	ab
      002236 24 01            [12]  907 	add	a,#__ft_font6x8
      002238 FA               [12]  908 	mov	r2,a
      002239 74 81            [12]  909 	mov	a,#(__ft_font6x8 >> 8)
      00223B 35 F0            [12]  910 	addc	a,b
      00223D FB               [12]  911 	mov	r3,a
      00223E E5 10            [12]  912 	mov	a,_bp
      002240 24 06            [12]  913 	add	a,#0x06
      002242 F8               [12]  914 	mov	r0,a
      002243 74 07            [12]  915 	mov	a,#0x07
      002245 C3               [12]  916 	clr	c
      002246 96               [12]  917 	subb	a,@r0
      002247 FD               [12]  918 	mov	r5,a
      002248 7C 00            [12]  919 	mov	r4,#0x00
      00224A                        920 00131$:
                                    921 ;	disp.c:205: ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00224A EC               [12]  922 	mov	a,r4
      00224B 24 29            [12]  923 	add	a,#_ddata
      00224D F9               [12]  924 	mov	r1,a
      00224E EC               [12]  925 	mov	a,r4
      00224F 2A               [12]  926 	add	a,r2
      002250 F5 82            [12]  927 	mov	dpl,a
      002252 E4               [12]  928 	clr	a
      002253 3B               [12]  929 	addc	a,r3
      002254 F5 83            [12]  930 	mov	dph,a
      002256 E0               [24]  931 	movx	a,@dptr
      002257 FF               [12]  932 	mov	r7,a
      002258 8D F0            [24]  933 	mov	b,r5
      00225A 05 F0            [12]  934 	inc	b
      00225C EF               [12]  935 	mov	a,r7
      00225D 80 02            [24]  936 	sjmp	00225$
      00225F                        937 00223$:
      00225F 25 E0            [12]  938 	add	a,acc
      002261                        939 00225$:
      002261 D5 F0 FB         [24]  940 	djnz	b,00223$
      002264 54 80            [12]  941 	anl	a,#0x80
      002266 FF               [12]  942 	mov	r7,a
      002267 EC               [12]  943 	mov	a,r4
      002268 24 29            [12]  944 	add	a,#_ddata
      00226A F8               [12]  945 	mov	r0,a
      00226B E6               [12]  946 	mov	a,@r0
      00226C C3               [12]  947 	clr	c
      00226D 13               [12]  948 	rrc	a
      00226E FE               [12]  949 	mov	r6,a
      00226F 4F               [12]  950 	orl	a,r7
      002270 F7               [12]  951 	mov	@r1,a
                                    952 ;	disp.c:204: for (j = 0u; j < 8u; j++)
      002271 0C               [12]  953 	inc	r4
      002272 BC 08 00         [24]  954 	cjne	r4,#0x08,00226$
      002275                        955 00226$:
      002275 40 D3            [24]  956 	jc	00131$
                                    957 ;	disp.c:207: skip_shift:
      002277                        958 00110$:
                                    959 ;	disp.c:208: if ((r = getchar_poll()) >= 0) {
      002277 12 20 9B         [24]  960 	lcall	_getchar_poll
      00227A AB 82            [24]  961 	mov	r3,dpl
      00227C AC 83            [24]  962 	mov	r4,dph
      00227E 8B 07            [24]  963 	mov	ar7,r3
      002280 EC               [12]  964 	mov	a,r4
      002281 FE               [12]  965 	mov	r6,a
      002282 20 E7 58         [24]  966 	jb	acc.7,00137$
                                    967 ;	disp.c:209: r = toupper(r);
      002285 8F 82            [24]  968 	mov	dpl,r7
      002287 8E 83            [24]  969 	mov	dph,r6
      002289 12 25 6E         [24]  970 	lcall	_toupper
      00228C AB 82            [24]  971 	mov	r3,dpl
      00228E AC 83            [24]  972 	mov	r4,dph
                                    973 ;	disp.c:210: if ((r == (int)'P') || (r == (int)' ')) {
      002290 BB 50 05         [24]  974 	cjne	r3,#0x50,00229$
      002293 BC 00 02         [24]  975 	cjne	r4,#0x00,00229$
      002296 80 06            [24]  976 	sjmp	00115$
      002298                        977 00229$:
      002298 BB 20 2A         [24]  978 	cjne	r3,#0x20,00116$
      00229B BC 00 27         [24]  979 	cjne	r4,#0x00,00116$
      00229E                        980 00115$:
                                    981 ;	disp.c:211: printstr("PAUSE\r\n");
      00229E 7E 87            [12]  982 	mov	r6,#___str_0
      0022A0 7C 26            [12]  983 	mov	r4,#(___str_0 >> 8)
      0022A2 7B 80            [12]  984 	mov	r3,#0x80
                                    985 ;	disp.c:48: return;
      0022A4                        986 00134$:
                                    987 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0022A4 8E 82            [24]  988 	mov	dpl,r6
      0022A6 8C 83            [24]  989 	mov	dph,r4
      0022A8 8B F0            [24]  990 	mov	b,r3
      0022AA 12 26 4C         [24]  991 	lcall	__gptrget
      0022AD FD               [12]  992 	mov	r5,a
      0022AE 60 10            [24]  993 	jz	00130$
      0022B0 7F 00            [12]  994 	mov	r7,#0x00
      0022B2 8D 82            [24]  995 	mov	dpl,r5
      0022B4 8F 83            [24]  996 	mov	dph,r7
      0022B6 12 20 8D         [24]  997 	lcall	_putchar
      0022B9 0E               [12]  998 	inc	r6
                                    999 ;	disp.c:211: printstr("PAUSE\r\n");
      0022BA BE 00 E7         [24] 1000 	cjne	r6,#0x00,00134$
      0022BD 0C               [12] 1001 	inc	r4
      0022BE 80 E4            [24] 1002 	sjmp	00134$
      0022C0                       1003 00130$:
                                   1004 ;	disp.c:212: (void)getchar();
      0022C0 12 20 92         [24] 1005 	lcall	_getchar
      0022C3 80 18            [24] 1006 	sjmp	00137$
      0022C5                       1007 00116$:
                                   1008 ;	disp.c:213: } else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022C5 BB 54 05         [24] 1009 	cjne	r3,#0x54,00234$
      0022C8 BC 00 02         [24] 1010 	cjne	r4,#0x00,00234$
      0022CB 80 24            [24] 1011 	sjmp	00121$
      0022CD                       1012 00234$:
      0022CD BB 52 05         [24] 1013 	cjne	r3,#0x52,00235$
      0022D0 BC 00 02         [24] 1014 	cjne	r4,#0x00,00235$
      0022D3 80 1C            [24] 1015 	sjmp	00121$
      0022D5                       1016 00235$:
      0022D5 BB 4C 05         [24] 1017 	cjne	r3,#0x4c,00236$
      0022D8 BC 00 02         [24] 1018 	cjne	r4,#0x00,00236$
      0022DB 80 14            [24] 1019 	sjmp	00121$
      0022DD                       1020 00236$:
      0022DD                       1021 00137$:
                                   1022 ;	disp.c:189: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0022DD E5 10            [12] 1023 	mov	a,_bp
      0022DF 24 06            [12] 1024 	add	a,#0x06
      0022E1 F8               [12] 1025 	mov	r0,a
      0022E2 E6               [12] 1026 	mov	a,@r0
      0022E3 04               [12] 1027 	inc	a
      0022E4 FF               [12] 1028 	mov	r7,a
      0022E5 E5 10            [12] 1029 	mov	a,_bp
      0022E7 24 06            [12] 1030 	add	a,#0x06
      0022E9 F8               [12] 1031 	mov	r0,a
      0022EA 74 07            [12] 1032 	mov	a,#0x07
      0022EC 5F               [12] 1033 	anl	a,r7
      0022ED F6               [12] 1034 	mov	@r0,a
      0022EE 02 21 97         [24] 1035 	ljmp	00136$
      0022F1                       1036 00121$:
                                   1037 ;	disp.c:217: return r;
      0022F1 8B 82            [24] 1038 	mov	dpl,r3
      0022F3 8C 83            [24] 1039 	mov	dph,r4
                                   1040 ;	disp.c:218: }
      0022F5 85 10 81         [24] 1041 	mov	sp,_bp
      0022F8 D0 10            [24] 1042 	pop	_bp
      0022FA 22               [24] 1043 	ret
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'main'
                                   1046 ;------------------------------------------------------------
                                   1047 ;j                         Allocated to stack - _bp +1
                                   1048 ;c                         Allocated to registers r7 r6 
                                   1049 ;__1310720004              Allocated to registers 
                                   1050 ;s                         Allocated to registers r5 r6 r7 
                                   1051 ;__1966080006              Allocated to registers 
                                   1052 ;s                         Allocated to registers r5 r6 r7 
                                   1053 ;__1966080008              Allocated to registers 
                                   1054 ;s                         Allocated to registers r5 r6 r7 
                                   1055 ;__1966080010              Allocated to registers 
                                   1056 ;s                         Allocated to registers r5 r6 r7 
                                   1057 ;__3276800012              Allocated to registers 
                                   1058 ;s                         Allocated to registers r7 r6 r4 
                                   1059 ;__3276800014              Allocated to registers 
                                   1060 ;s                         Allocated to registers r7 r6 r4 
                                   1061 ;__3276800016              Allocated to registers 
                                   1062 ;s                         Allocated to registers r7 r6 r4 
                                   1063 ;__3276800018              Allocated to registers 
                                   1064 ;s                         Allocated to registers r7 r6 r4 
                                   1065 ;__3276800020              Allocated to registers 
                                   1066 ;s                         Allocated to registers r7 r6 r4 
                                   1067 ;__1310720022              Allocated to registers 
                                   1068 ;s                         Allocated to registers r5 r6 r7 
                                   1069 ;sloc0                     Allocated to stack - _bp +65
                                   1070 ;------------------------------------------------------------
                                   1071 ;	disp.c:220: void main(void) {
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function main
                                   1074 ;	-----------------------------------------
      0022FB                       1075 _main:
      0022FB C0 10            [24] 1076 	push	_bp
      0022FD 85 81 10         [24] 1077 	mov	_bp,sp
      002300 05 81            [12] 1078 	inc	sp
      002302 05 81            [12] 1079 	inc	sp
                                   1080 ;	disp.c:224: init_gpo();
      002304 12 20 AF         [24] 1081 	lcall	_init_gpo
                                   1082 ;	disp.c:225: clear_gpo();
      002307 12 20 CD         [24] 1083 	lcall	_clear_gpo
                                   1084 ;	disp.c:226: init_disp();
      00230A 12 21 09         [24] 1085 	lcall	_init_disp
                                   1086 ;	disp.c:227: init_timer0();
      00230D 12 20 F1         [24] 1087 	lcall	_init_timer0
                                   1088 ;	disp.c:228: init_timer1();
      002310 12 20 FD         [24] 1089 	lcall	_init_timer1
                                   1090 ;	disp.c:229: init_intr();
      002313 12 20 E6         [24] 1091 	lcall	_init_intr
                                   1092 ;	disp.c:230: TR0 = 1;
                                   1093 ;	assignBit
      002316 D2 8C            [12] 1094 	setb	_TR0
                                   1095 ;	disp.c:232: reset:
      002318                       1096 00101$:
                                   1097 ;	disp.c:233: init_disp();
      002318 12 21 09         [24] 1098 	lcall	_init_disp
                                   1099 ;	disp.c:234: printstr("RESET\r\n");
      00231B 7D 8F            [12] 1100 	mov	r5,#___str_1
      00231D 7E 26            [12] 1101 	mov	r6,#(___str_1 >> 8)
      00231F 7F 80            [12] 1102 	mov	r7,#0x80
                                   1103 ;	disp.c:48: return;
      002321                       1104 00146$:
                                   1105 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002321 8D 82            [24] 1106 	mov	dpl,r5
      002323 8E 83            [24] 1107 	mov	dph,r6
      002325 8F F0            [24] 1108 	mov	b,r7
      002327 12 26 4C         [24] 1109 	lcall	__gptrget
      00232A FC               [12] 1110 	mov	r4,a
      00232B 60 10            [24] 1111 	jz	00126$
      00232D 7B 00            [12] 1112 	mov	r3,#0x00
      00232F 8C 82            [24] 1113 	mov	dpl,r4
      002331 8B 83            [24] 1114 	mov	dph,r3
      002333 12 20 8D         [24] 1115 	lcall	_putchar
      002336 0D               [12] 1116 	inc	r5
                                   1117 ;	disp.c:234: printstr("RESET\r\n");
      002337 BD 00 E7         [24] 1118 	cjne	r5,#0x00,00146$
      00233A 0E               [12] 1119 	inc	r6
      00233B 80 E4            [24] 1120 	sjmp	00146$
      00233D                       1121 00126$:
                                   1122 ;	disp.c:235: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00233D E4               [12] 1123 	clr	a
      00233E C0 E0            [24] 1124 	push	acc
      002340 04               [12] 1125 	inc	a
      002341 C0 E0            [24] 1126 	push	acc
      002343 90 89 01         [24] 1127 	mov	dptr,#_initial
      002346 E0               [24] 1128 	movx	a,@dptr
      002347 C0 E0            [24] 1129 	push	acc
      002349 A3               [24] 1130 	inc	dptr
      00234A E0               [24] 1131 	movx	a,@dptr
      00234B C0 E0            [24] 1132 	push	acc
      00234D A3               [24] 1133 	inc	dptr
      00234E E0               [24] 1134 	movx	a,@dptr
      00234F C0 E0            [24] 1135 	push	acc
      002351 90 80 00         [24] 1136 	mov	dptr,#_buf
      002354 75 F0 00         [24] 1137 	mov	b,#0x00
      002357 12 25 95         [24] 1138 	lcall	_strncpy
      00235A E5 81            [12] 1139 	mov	a,sp
      00235C 24 FB            [12] 1140 	add	a,#0xfb
      00235E F5 81            [12] 1141 	mov	sp,a
                                   1142 ;	disp.c:236: buf[sizeof (buf) - 1u] = 0u;
      002360 90 81 00         [24] 1143 	mov	dptr,#(_buf + 0x0100)
      002363 E4               [12] 1144 	clr	a
      002364 F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	disp.c:238: while (1) {
      002365                       1147 00122$:
                                   1148 ;	disp.c:239: printstr("P SP L ENT S R T START MSG \"");
      002365 7D 97            [12] 1149 	mov	r5,#___str_2
      002367 7E 26            [12] 1150 	mov	r6,#(___str_2 >> 8)
      002369 7F 80            [12] 1151 	mov	r7,#0x80
                                   1152 ;	disp.c:48: return;
      00236B                       1153 00149$:
                                   1154 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00236B 8D 82            [24] 1155 	mov	dpl,r5
      00236D 8E 83            [24] 1156 	mov	dph,r6
      00236F 8F F0            [24] 1157 	mov	b,r7
      002371 12 26 4C         [24] 1158 	lcall	__gptrget
      002374 FC               [12] 1159 	mov	r4,a
      002375 60 10            [24] 1160 	jz	00128$
      002377 7B 00            [12] 1161 	mov	r3,#0x00
      002379 8C 82            [24] 1162 	mov	dpl,r4
      00237B 8B 83            [24] 1163 	mov	dph,r3
      00237D 12 20 8D         [24] 1164 	lcall	_putchar
      002380 0D               [12] 1165 	inc	r5
                                   1166 ;	disp.c:239: printstr("P SP L ENT S R T START MSG \"");
      002381 BD 00 E7         [24] 1167 	cjne	r5,#0x00,00149$
      002384 0E               [12] 1168 	inc	r6
      002385 80 E4            [24] 1169 	sjmp	00149$
      002387                       1170 00128$:
                                   1171 ;	disp.c:240: printstr((char *)buf);
      002387 7D 00            [12] 1172 	mov	r5,#_buf
      002389 7E 80            [12] 1173 	mov	r6,#(_buf >> 8)
      00238B 7F 00            [12] 1174 	mov	r7,#0x00
                                   1175 ;	disp.c:48: return;
      00238D                       1176 00152$:
                                   1177 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00238D 8D 82            [24] 1178 	mov	dpl,r5
      00238F 8E 83            [24] 1179 	mov	dph,r6
      002391 8F F0            [24] 1180 	mov	b,r7
      002393 12 26 4C         [24] 1181 	lcall	__gptrget
      002396 FC               [12] 1182 	mov	r4,a
      002397 60 10            [24] 1183 	jz	00130$
      002399 7B 00            [12] 1184 	mov	r3,#0x00
      00239B 8C 82            [24] 1185 	mov	dpl,r4
      00239D 8B 83            [24] 1186 	mov	dph,r3
      00239F 12 20 8D         [24] 1187 	lcall	_putchar
      0023A2 0D               [12] 1188 	inc	r5
                                   1189 ;	disp.c:240: printstr((char *)buf);
      0023A3 BD 00 E7         [24] 1190 	cjne	r5,#0x00,00152$
      0023A6 0E               [12] 1191 	inc	r6
      0023A7 80 E4            [24] 1192 	sjmp	00152$
      0023A9                       1193 00130$:
                                   1194 ;	disp.c:241: printstr("\"\r\n");
      0023A9 7D B4            [12] 1195 	mov	r5,#___str_3
      0023AB 7E 26            [12] 1196 	mov	r6,#(___str_3 >> 8)
      0023AD 7F 80            [12] 1197 	mov	r7,#0x80
                                   1198 ;	disp.c:48: return;
      0023AF                       1199 00155$:
                                   1200 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023AF 8D 82            [24] 1201 	mov	dpl,r5
      0023B1 8E 83            [24] 1202 	mov	dph,r6
      0023B3 8F F0            [24] 1203 	mov	b,r7
      0023B5 12 26 4C         [24] 1204 	lcall	__gptrget
      0023B8 FC               [12] 1205 	mov	r4,a
      0023B9 60 10            [24] 1206 	jz	00132$
      0023BB 7B 00            [12] 1207 	mov	r3,#0x00
      0023BD 8C 82            [24] 1208 	mov	dpl,r4
      0023BF 8B 83            [24] 1209 	mov	dph,r3
      0023C1 12 20 8D         [24] 1210 	lcall	_putchar
      0023C4 0D               [12] 1211 	inc	r5
                                   1212 ;	disp.c:241: printstr("\"\r\n");
      0023C5 BD 00 E7         [24] 1213 	cjne	r5,#0x00,00155$
      0023C8 0E               [12] 1214 	inc	r6
      0023C9 80 E4            [24] 1215 	sjmp	00155$
      0023CB                       1216 00132$:
                                   1217 ;	disp.c:243: c = scroll(buf);
      0023CB 90 80 00         [24] 1218 	mov	dptr,#_buf
      0023CE 75 F0 00         [24] 1219 	mov	b,#0x00
      0023D1 12 21 76         [24] 1220 	lcall	_scroll
      0023D4 AE 82            [24] 1221 	mov	r6,dpl
      0023D6 AF 83            [24] 1222 	mov	r7,dph
                                   1223 ;	disp.c:245: while (1) {
      0023D8                       1224 00119$:
                                   1225 ;	disp.c:246: if (c == (int)'T') goto term;
      0023D8 BE 54 06         [24] 1226 	cjne	r6,#0x54,00337$
      0023DB BF 00 03         [24] 1227 	cjne	r7,#0x00,00337$
      0023DE 02 25 3B         [24] 1228 	ljmp	00124$
      0023E1                       1229 00337$:
                                   1230 ;	disp.c:247: else if (c == (int)'R') goto reset;
      0023E1 BE 52 06         [24] 1231 	cjne	r6,#0x52,00338$
      0023E4 BF 00 03         [24] 1232 	cjne	r7,#0x00,00338$
      0023E7 02 23 18         [24] 1233 	ljmp	00101$
      0023EA                       1234 00338$:
                                   1235 ;	disp.c:248: else if (c == (int)'L') {
      0023EA BE 4C 05         [24] 1236 	cjne	r6,#0x4c,00339$
      0023ED BF 00 02         [24] 1237 	cjne	r7,#0x00,00339$
      0023F0 80 03            [24] 1238 	sjmp	00340$
      0023F2                       1239 00339$:
      0023F2 02 25 25         [24] 1240 	ljmp	00110$
      0023F5                       1241 00340$:
                                   1242 ;	disp.c:249: init_disp();
      0023F5 12 21 09         [24] 1243 	lcall	_init_disp
                                   1244 ;	disp.c:250: printstr("LOAD ");
      0023F8 7F B8            [12] 1245 	mov	r7,#___str_4
      0023FA 7E 26            [12] 1246 	mov	r6,#(___str_4 >> 8)
      0023FC 7C 80            [12] 1247 	mov	r4,#0x80
                                   1248 ;	disp.c:48: return;
      0023FE                       1249 00158$:
                                   1250 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023FE 8F 82            [24] 1251 	mov	dpl,r7
      002400 8E 83            [24] 1252 	mov	dph,r6
      002402 8C F0            [24] 1253 	mov	b,r4
      002404 12 26 4C         [24] 1254 	lcall	__gptrget
      002407 FA               [12] 1255 	mov	r2,a
      002408 60 10            [24] 1256 	jz	00134$
      00240A 7D 00            [12] 1257 	mov	r5,#0x00
      00240C 8A 82            [24] 1258 	mov	dpl,r2
      00240E 8D 83            [24] 1259 	mov	dph,r5
      002410 12 20 8D         [24] 1260 	lcall	_putchar
      002413 0F               [12] 1261 	inc	r7
                                   1262 ;	disp.c:250: printstr("LOAD ");
      002414 BF 00 E7         [24] 1263 	cjne	r7,#0x00,00158$
      002417 0E               [12] 1264 	inc	r6
      002418 80 E4            [24] 1265 	sjmp	00158$
      00241A                       1266 00134$:
                                   1267 ;	disp.c:251: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00241A 7C 00            [12] 1268 	mov	r4,#0x00
      00241C 7D 00            [12] 1269 	mov	r5,#0x00
      00241E A8 10            [24] 1270 	mov	r0,_bp
      002420 08               [12] 1271 	inc	r0
      002421 E4               [12] 1272 	clr	a
      002422 F6               [12] 1273 	mov	@r0,a
      002423 08               [12] 1274 	inc	r0
      002424 F6               [12] 1275 	mov	@r0,a
      002425                       1276 00160$:
                                   1277 ;	disp.c:252: c = getchar();
      002425 C0 04            [24] 1278 	push	ar4
      002427 C0 05            [24] 1279 	push	ar5
      002429 12 20 92         [24] 1280 	lcall	_getchar
      00242C AC 82            [24] 1281 	mov	r4,dpl
      00242E AD 83            [24] 1282 	mov	r5,dph
      002430 8C 07            [24] 1283 	mov	ar7,r4
      002432 8D 06            [24] 1284 	mov	ar6,r5
                                   1285 ;	disp.c:253: (void)putchar(c);
      002434 8F 82            [24] 1286 	mov	dpl,r7
      002436 8E 83            [24] 1287 	mov	dph,r6
      002438 12 20 8D         [24] 1288 	lcall	_putchar
                                   1289 ;	disp.c:254: if ((c == (int)'\r') || (c == (int)'\n')) {
      00243B BF 0D 09         [24] 1290 	cjne	r7,#0x0d,00343$
      00243E BE 00 06         [24] 1291 	cjne	r6,#0x00,00343$
      002441 D0 05            [24] 1292 	pop	ar5
      002443 D0 04            [24] 1293 	pop	ar4
      002445 80 0A            [24] 1294 	sjmp	00102$
      002447                       1295 00343$:
      002447 D0 05            [24] 1296 	pop	ar5
      002449 D0 04            [24] 1297 	pop	ar4
      00244B BF 0A 11         [24] 1298 	cjne	r7,#0x0a,00103$
      00244E BE 00 0E         [24] 1299 	cjne	r6,#0x00,00103$
      002451                       1300 00102$:
                                   1301 ;	disp.c:255: buf[j] = 0u;
      002451 EC               [12] 1302 	mov	a,r4
      002452 24 00            [12] 1303 	add	a,#_buf
      002454 F5 82            [12] 1304 	mov	dpl,a
      002456 ED               [12] 1305 	mov	a,r5
      002457 34 80            [12] 1306 	addc	a,#(_buf >> 8)
      002459 F5 83            [12] 1307 	mov	dph,a
      00245B E4               [12] 1308 	clr	a
      00245C F0               [24] 1309 	movx	@dptr,a
                                   1310 ;	disp.c:256: break;
      00245D 80 32            [24] 1311 	sjmp	00106$
      00245F                       1312 00103$:
                                   1313 ;	disp.c:257: } else buf[j] = c & 0xffu;
      00245F A8 10            [24] 1314 	mov	r0,_bp
      002461 08               [12] 1315 	inc	r0
      002462 E6               [12] 1316 	mov	a,@r0
      002463 24 00            [12] 1317 	add	a,#_buf
      002465 FD               [12] 1318 	mov	r5,a
      002466 08               [12] 1319 	inc	r0
      002467 E6               [12] 1320 	mov	a,@r0
      002468 34 80            [12] 1321 	addc	a,#(_buf >> 8)
      00246A FC               [12] 1322 	mov	r4,a
      00246B 8F 03            [24] 1323 	mov	ar3,r7
      00246D 8D 82            [24] 1324 	mov	dpl,r5
      00246F 8C 83            [24] 1325 	mov	dph,r4
      002471 EB               [12] 1326 	mov	a,r3
      002472 F0               [24] 1327 	movx	@dptr,a
                                   1328 ;	disp.c:251: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002473 A8 10            [24] 1329 	mov	r0,_bp
      002475 08               [12] 1330 	inc	r0
      002476 06               [12] 1331 	inc	@r0
      002477 B6 00 02         [24] 1332 	cjne	@r0,#0x00,00346$
      00247A 08               [12] 1333 	inc	r0
      00247B 06               [12] 1334 	inc	@r0
      00247C                       1335 00346$:
      00247C A8 10            [24] 1336 	mov	r0,_bp
      00247E 08               [12] 1337 	inc	r0
      00247F 86 04            [24] 1338 	mov	ar4,@r0
      002481 08               [12] 1339 	inc	r0
      002482 86 05            [24] 1340 	mov	ar5,@r0
      002484 A8 10            [24] 1341 	mov	r0,_bp
      002486 08               [12] 1342 	inc	r0
      002487 86 02            [24] 1343 	mov	ar2,@r0
      002489 08               [12] 1344 	inc	r0
      00248A 86 03            [24] 1345 	mov	ar3,@r0
      00248C 74 FF            [12] 1346 	mov	a,#0x100 - 0x01
      00248E 2B               [12] 1347 	add	a,r3
      00248F 50 94            [24] 1348 	jnc	00160$
      002491                       1349 00106$:
                                   1350 ;	disp.c:259: buf[j] = 0u;
      002491 EC               [12] 1351 	mov	a,r4
      002492 24 00            [12] 1352 	add	a,#_buf
      002494 F5 82            [12] 1353 	mov	dpl,a
      002496 ED               [12] 1354 	mov	a,r5
      002497 34 80            [12] 1355 	addc	a,#(_buf >> 8)
      002499 F5 83            [12] 1356 	mov	dph,a
      00249B E4               [12] 1357 	clr	a
      00249C F0               [24] 1358 	movx	@dptr,a
                                   1359 ;	disp.c:260: printstr("\r\n");
      00249D 7F BE            [12] 1360 	mov	r7,#___str_5
      00249F 7E 26            [12] 1361 	mov	r6,#(___str_5 >> 8)
      0024A1 7C 80            [12] 1362 	mov	r4,#0x80
                                   1363 ;	disp.c:48: return;
      0024A3                       1364 00163$:
                                   1365 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024A3 8F 82            [24] 1366 	mov	dpl,r7
      0024A5 8E 83            [24] 1367 	mov	dph,r6
      0024A7 8C F0            [24] 1368 	mov	b,r4
      0024A9 12 26 4C         [24] 1369 	lcall	__gptrget
      0024AC FA               [12] 1370 	mov	r2,a
      0024AD 60 10            [24] 1371 	jz	00136$
      0024AF 7D 00            [12] 1372 	mov	r5,#0x00
      0024B1 8A 82            [24] 1373 	mov	dpl,r2
      0024B3 8D 83            [24] 1374 	mov	dph,r5
      0024B5 12 20 8D         [24] 1375 	lcall	_putchar
      0024B8 0F               [12] 1376 	inc	r7
                                   1377 ;	disp.c:260: printstr("\r\n");
      0024B9 BF 00 E7         [24] 1378 	cjne	r7,#0x00,00163$
      0024BC 0E               [12] 1379 	inc	r6
      0024BD 80 E4            [24] 1380 	sjmp	00163$
      0024BF                       1381 00136$:
                                   1382 ;	disp.c:261: printstr("MSG \"");
      0024BF 7F C1            [12] 1383 	mov	r7,#___str_6
      0024C1 7E 26            [12] 1384 	mov	r6,#(___str_6 >> 8)
      0024C3 7C 80            [12] 1385 	mov	r4,#0x80
                                   1386 ;	disp.c:48: return;
      0024C5                       1387 00166$:
                                   1388 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024C5 8F 82            [24] 1389 	mov	dpl,r7
      0024C7 8E 83            [24] 1390 	mov	dph,r6
      0024C9 8C F0            [24] 1391 	mov	b,r4
      0024CB 12 26 4C         [24] 1392 	lcall	__gptrget
      0024CE FA               [12] 1393 	mov	r2,a
      0024CF 60 10            [24] 1394 	jz	00138$
      0024D1 7D 00            [12] 1395 	mov	r5,#0x00
      0024D3 8A 82            [24] 1396 	mov	dpl,r2
      0024D5 8D 83            [24] 1397 	mov	dph,r5
      0024D7 12 20 8D         [24] 1398 	lcall	_putchar
      0024DA 0F               [12] 1399 	inc	r7
                                   1400 ;	disp.c:261: printstr("MSG \"");
      0024DB BF 00 E7         [24] 1401 	cjne	r7,#0x00,00166$
      0024DE 0E               [12] 1402 	inc	r6
      0024DF 80 E4            [24] 1403 	sjmp	00166$
      0024E1                       1404 00138$:
                                   1405 ;	disp.c:262: printstr((char *)buf);
      0024E1 7F 00            [12] 1406 	mov	r7,#_buf
      0024E3 7E 80            [12] 1407 	mov	r6,#(_buf >> 8)
      0024E5 7C 00            [12] 1408 	mov	r4,#0x00
                                   1409 ;	disp.c:48: return;
      0024E7                       1410 00169$:
                                   1411 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024E7 8F 82            [24] 1412 	mov	dpl,r7
      0024E9 8E 83            [24] 1413 	mov	dph,r6
      0024EB 8C F0            [24] 1414 	mov	b,r4
      0024ED 12 26 4C         [24] 1415 	lcall	__gptrget
      0024F0 FA               [12] 1416 	mov	r2,a
      0024F1 60 10            [24] 1417 	jz	00140$
      0024F3 7D 00            [12] 1418 	mov	r5,#0x00
      0024F5 8A 82            [24] 1419 	mov	dpl,r2
      0024F7 8D 83            [24] 1420 	mov	dph,r5
      0024F9 12 20 8D         [24] 1421 	lcall	_putchar
      0024FC 0F               [12] 1422 	inc	r7
                                   1423 ;	disp.c:262: printstr((char *)buf);
      0024FD BF 00 E7         [24] 1424 	cjne	r7,#0x00,00169$
      002500 0E               [12] 1425 	inc	r6
      002501 80 E4            [24] 1426 	sjmp	00169$
      002503                       1427 00140$:
                                   1428 ;	disp.c:263: printstr("\"\r\n");
      002503 7F B4            [12] 1429 	mov	r7,#___str_3
      002505 7E 26            [12] 1430 	mov	r6,#(___str_3 >> 8)
      002507 7C 80            [12] 1431 	mov	r4,#0x80
                                   1432 ;	disp.c:48: return;
      002509                       1433 00172$:
                                   1434 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002509 8F 82            [24] 1435 	mov	dpl,r7
      00250B 8E 83            [24] 1436 	mov	dph,r6
      00250D 8C F0            [24] 1437 	mov	b,r4
      00250F 12 26 4C         [24] 1438 	lcall	__gptrget
      002512 FA               [12] 1439 	mov	r2,a
      002513 60 19            [24] 1440 	jz	00117$
      002515 7D 00            [12] 1441 	mov	r5,#0x00
      002517 8A 82            [24] 1442 	mov	dpl,r2
      002519 8D 83            [24] 1443 	mov	dph,r5
      00251B 12 20 8D         [24] 1444 	lcall	_putchar
      00251E 0F               [12] 1445 	inc	r7
                                   1446 ;	disp.c:263: printstr("\"\r\n");
      00251F BF 00 E7         [24] 1447 	cjne	r7,#0x00,00172$
      002522 0E               [12] 1448 	inc	r6
      002523 80 E4            [24] 1449 	sjmp	00172$
      002525                       1450 00110$:
                                   1451 ;	disp.c:264: } else if (c == (int)'S') break;
      002525 BE 53 06         [24] 1452 	cjne	r6,#0x53,00356$
      002528 BF 00 03         [24] 1453 	cjne	r7,#0x00,00356$
      00252B 02 23 65         [24] 1454 	ljmp	00122$
      00252E                       1455 00356$:
      00252E                       1456 00117$:
                                   1457 ;	disp.c:266: c = toupper(getchar());
      00252E 12 20 92         [24] 1458 	lcall	_getchar
      002531 12 25 6E         [24] 1459 	lcall	_toupper
      002534 AE 82            [24] 1460 	mov	r6,dpl
      002536 AF 83            [24] 1461 	mov	r7,dph
      002538 02 23 D8         [24] 1462 	ljmp	00119$
                                   1463 ;	disp.c:270: term:	
      00253B                       1464 00124$:
                                   1465 ;	disp.c:271: EA = 0;
                                   1466 ;	assignBit
      00253B C2 AF            [12] 1467 	clr	_EA
                                   1468 ;	disp.c:272: init_disp();
      00253D 12 21 09         [24] 1469 	lcall	_init_disp
                                   1470 ;	disp.c:273: printstr("TERM\r\n");
      002540 7D C7            [12] 1471 	mov	r5,#___str_7
      002542 7E 26            [12] 1472 	mov	r6,#(___str_7 >> 8)
      002544 7F 80            [12] 1473 	mov	r7,#0x80
                                   1474 ;	disp.c:48: return;
      002546                       1475 00175$:
                                   1476 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002546 8D 82            [24] 1477 	mov	dpl,r5
      002548 8E 83            [24] 1478 	mov	dph,r6
      00254A 8F F0            [24] 1479 	mov	b,r7
      00254C 12 26 4C         [24] 1480 	lcall	__gptrget
      00254F FC               [12] 1481 	mov	r4,a
      002550 60 10            [24] 1482 	jz	00144$
      002552 7B 00            [12] 1483 	mov	r3,#0x00
      002554 8C 82            [24] 1484 	mov	dpl,r4
      002556 8B 83            [24] 1485 	mov	dph,r3
      002558 12 20 8D         [24] 1486 	lcall	_putchar
      00255B 0D               [12] 1487 	inc	r5
                                   1488 ;	disp.c:273: printstr("TERM\r\n");
      00255C BD 00 E7         [24] 1489 	cjne	r5,#0x00,00175$
      00255F 0E               [12] 1490 	inc	r6
      002560 80 E4            [24] 1491 	sjmp	00175$
      002562                       1492 00144$:
                                   1493 ;	disp.c:274: (void)getchar();
      002562 12 20 92         [24] 1494 	lcall	_getchar
                                   1495 ;	disp.c:276: PCON |= 2;
      002565 43 87 02         [24] 1496 	orl	_PCON,#0x02
                                   1497 ;	disp.c:278: return;
                                   1498 ;	disp.c:279: }
      002568 85 10 81         [24] 1499 	mov	sp,_bp
      00256B D0 10            [24] 1500 	pop	_bp
      00256D 22               [24] 1501 	ret
                                   1502 	.area CSEG    (CODE)
                                   1503 	.area CONST   (CODE)
                                   1504 	.area CONST   (CODE)
      002687                       1505 ___str_0:
      002687 50 41 55 53 45        1506 	.ascii "PAUSE"
      00268C 0D                    1507 	.db 0x0d
      00268D 0A                    1508 	.db 0x0a
      00268E 00                    1509 	.db 0x00
                                   1510 	.area CSEG    (CODE)
                                   1511 	.area CONST   (CODE)
      00268F                       1512 ___str_1:
      00268F 52 45 53 45 54        1513 	.ascii "RESET"
      002694 0D                    1514 	.db 0x0d
      002695 0A                    1515 	.db 0x0a
      002696 00                    1516 	.db 0x00
                                   1517 	.area CSEG    (CODE)
                                   1518 	.area CONST   (CODE)
      002697                       1519 ___str_2:
      002697 50 20 53 50 20 4C 20  1520 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      0026B2 22                    1521 	.db 0x22
      0026B3 00                    1522 	.db 0x00
                                   1523 	.area CSEG    (CODE)
                                   1524 	.area CONST   (CODE)
      0026B4                       1525 ___str_3:
      0026B4 22                    1526 	.db 0x22
      0026B5 0D                    1527 	.db 0x0d
      0026B6 0A                    1528 	.db 0x0a
      0026B7 00                    1529 	.db 0x00
                                   1530 	.area CSEG    (CODE)
                                   1531 	.area CONST   (CODE)
      0026B8                       1532 ___str_4:
      0026B8 4C 4F 41 44 20        1533 	.ascii "LOAD "
      0026BD 00                    1534 	.db 0x00
                                   1535 	.area CSEG    (CODE)
                                   1536 	.area CONST   (CODE)
      0026BE                       1537 ___str_5:
      0026BE 0D                    1538 	.db 0x0d
      0026BF 0A                    1539 	.db 0x0a
      0026C0 00                    1540 	.db 0x00
                                   1541 	.area CSEG    (CODE)
                                   1542 	.area CONST   (CODE)
      0026C1                       1543 ___str_6:
      0026C1 4D 53 47 20           1544 	.ascii "MSG "
      0026C5 22                    1545 	.db 0x22
      0026C6 00                    1546 	.db 0x00
                                   1547 	.area CSEG    (CODE)
                                   1548 	.area CONST   (CODE)
      0026C7                       1549 ___str_7:
      0026C7 54 45 52 4D           1550 	.ascii "TERM"
      0026CB 0D                    1551 	.db 0x0d
      0026CC 0A                    1552 	.db 0x0a
      0026CD 00                    1553 	.db 0x00
                                   1554 	.area CSEG    (CODE)
                                   1555 	.area CONST   (CODE)
      0026CE                       1556 ___str_8:
      0026CE 4A 65 64 65 6D 20 64  1557 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      0026FF 00                    1558 	.db 0x00
                                   1559 	.area CSEG    (CODE)
                                   1560 	.area XINIT   (CODE)
      002700                       1561 __xinit___ft_font6x8:
      002700 00                    1562 	.db #0x00	; 0
      002701 00                    1563 	.db #0x00	; 0
      002702 00                    1564 	.db #0x00	; 0
      002703 00                    1565 	.db #0x00	; 0
      002704 00                    1566 	.db #0x00	; 0
      002705 00                    1567 	.db #0x00	; 0
      002706 00                    1568 	.db #0x00	; 0
      002707 00                    1569 	.db #0x00	; 0
      002708 1C                    1570 	.db #0x1c	; 28
      002709 22                    1571 	.db #0x22	; 34
      00270A 36                    1572 	.db #0x36	; 54	'6'
      00270B 22                    1573 	.db #0x22	; 34
      00270C 2A                    1574 	.db #0x2a	; 42
      00270D 22                    1575 	.db #0x22	; 34
      00270E 1C                    1576 	.db #0x1c	; 28
      00270F 00                    1577 	.db #0x00	; 0
      002710 1C                    1578 	.db #0x1c	; 28
      002711 3E                    1579 	.db #0x3e	; 62
      002712 2A                    1580 	.db #0x2a	; 42
      002713 3E                    1581 	.db #0x3e	; 62
      002714 22                    1582 	.db #0x22	; 34
      002715 3E                    1583 	.db #0x3e	; 62
      002716 1C                    1584 	.db #0x1c	; 28
      002717 00                    1585 	.db #0x00	; 0
      002718 00                    1586 	.db #0x00	; 0
      002719 14                    1587 	.db #0x14	; 20
      00271A 3E                    1588 	.db #0x3e	; 62
      00271B 3E                    1589 	.db #0x3e	; 62
      00271C 3E                    1590 	.db #0x3e	; 62
      00271D 1C                    1591 	.db #0x1c	; 28
      00271E 08                    1592 	.db #0x08	; 8
      00271F 00                    1593 	.db #0x00	; 0
      002720 00                    1594 	.db #0x00	; 0
      002721 08                    1595 	.db #0x08	; 8
      002722 1C                    1596 	.db #0x1c	; 28
      002723 3E                    1597 	.db #0x3e	; 62
      002724 3E                    1598 	.db #0x3e	; 62
      002725 1C                    1599 	.db #0x1c	; 28
      002726 08                    1600 	.db #0x08	; 8
      002727 00                    1601 	.db #0x00	; 0
      002728 08                    1602 	.db #0x08	; 8
      002729 1C                    1603 	.db #0x1c	; 28
      00272A 1C                    1604 	.db #0x1c	; 28
      00272B 08                    1605 	.db #0x08	; 8
      00272C 3E                    1606 	.db #0x3e	; 62
      00272D 3E                    1607 	.db #0x3e	; 62
      00272E 08                    1608 	.db #0x08	; 8
      00272F 00                    1609 	.db #0x00	; 0
      002730 00                    1610 	.db #0x00	; 0
      002731 08                    1611 	.db #0x08	; 8
      002732 1C                    1612 	.db #0x1c	; 28
      002733 3E                    1613 	.db #0x3e	; 62
      002734 3E                    1614 	.db #0x3e	; 62
      002735 08                    1615 	.db #0x08	; 8
      002736 1C                    1616 	.db #0x1c	; 28
      002737 00                    1617 	.db #0x00	; 0
      002738 00                    1618 	.db #0x00	; 0
      002739 00                    1619 	.db #0x00	; 0
      00273A 00                    1620 	.db #0x00	; 0
      00273B 0C                    1621 	.db #0x0c	; 12
      00273C 0C                    1622 	.db #0x0c	; 12
      00273D 00                    1623 	.db #0x00	; 0
      00273E 00                    1624 	.db #0x00	; 0
      00273F 00                    1625 	.db #0x00	; 0
      002740 3F                    1626 	.db #0x3f	; 63
      002741 3F                    1627 	.db #0x3f	; 63
      002742 3F                    1628 	.db #0x3f	; 63
      002743 33                    1629 	.db #0x33	; 51	'3'
      002744 33                    1630 	.db #0x33	; 51	'3'
      002745 3F                    1631 	.db #0x3f	; 63
      002746 3F                    1632 	.db #0x3f	; 63
      002747 3F                    1633 	.db #0x3f	; 63
      002748 00                    1634 	.db #0x00	; 0
      002749 00                    1635 	.db #0x00	; 0
      00274A 1E                    1636 	.db #0x1e	; 30
      00274B 12                    1637 	.db #0x12	; 18
      00274C 12                    1638 	.db #0x12	; 18
      00274D 1E                    1639 	.db #0x1e	; 30
      00274E 00                    1640 	.db #0x00	; 0
      00274F 00                    1641 	.db #0x00	; 0
      002750 3F                    1642 	.db #0x3f	; 63
      002751 3F                    1643 	.db #0x3f	; 63
      002752 21                    1644 	.db #0x21	; 33
      002753 2D                    1645 	.db #0x2d	; 45
      002754 2D                    1646 	.db #0x2d	; 45
      002755 21                    1647 	.db #0x21	; 33
      002756 3F                    1648 	.db #0x3f	; 63
      002757 3F                    1649 	.db #0x3f	; 63
      002758 00                    1650 	.db #0x00	; 0
      002759 38                    1651 	.db #0x38	; 56	'8'
      00275A 30                    1652 	.db #0x30	; 48	'0'
      00275B 2C                    1653 	.db #0x2c	; 44
      00275C 12                    1654 	.db #0x12	; 18
      00275D 12                    1655 	.db #0x12	; 18
      00275E 0C                    1656 	.db #0x0c	; 12
      00275F 00                    1657 	.db #0x00	; 0
      002760 1C                    1658 	.db #0x1c	; 28
      002761 22                    1659 	.db #0x22	; 34
      002762 22                    1660 	.db #0x22	; 34
      002763 1C                    1661 	.db #0x1c	; 28
      002764 08                    1662 	.db #0x08	; 8
      002765 1C                    1663 	.db #0x1c	; 28
      002766 08                    1664 	.db #0x08	; 8
      002767 00                    1665 	.db #0x00	; 0
      002768 08                    1666 	.db #0x08	; 8
      002769 18                    1667 	.db #0x18	; 24
      00276A 28                    1668 	.db #0x28	; 40
      00276B 08                    1669 	.db #0x08	; 8
      00276C 0C                    1670 	.db #0x0c	; 12
      00276D 0E                    1671 	.db #0x0e	; 14
      00276E 06                    1672 	.db #0x06	; 6
      00276F 00                    1673 	.db #0x00	; 0
      002770 30                    1674 	.db #0x30	; 48	'0'
      002771 2C                    1675 	.db #0x2c	; 44
      002772 34                    1676 	.db #0x34	; 52	'4'
      002773 2C                    1677 	.db #0x2c	; 44
      002774 34                    1678 	.db #0x34	; 52	'4'
      002775 36                    1679 	.db #0x36	; 54	'6'
      002776 06                    1680 	.db #0x06	; 6
      002777 00                    1681 	.db #0x00	; 0
      002778 00                    1682 	.db #0x00	; 0
      002779 2A                    1683 	.db #0x2a	; 42
      00277A 1C                    1684 	.db #0x1c	; 28
      00277B 36                    1685 	.db #0x36	; 54	'6'
      00277C 1C                    1686 	.db #0x1c	; 28
      00277D 2A                    1687 	.db #0x2a	; 42
      00277E 00                    1688 	.db #0x00	; 0
      00277F 00                    1689 	.db #0x00	; 0
      002780 04                    1690 	.db #0x04	; 4
      002781 0C                    1691 	.db #0x0c	; 12
      002782 1C                    1692 	.db #0x1c	; 28
      002783 3C                    1693 	.db #0x3c	; 60
      002784 1C                    1694 	.db #0x1c	; 28
      002785 0C                    1695 	.db #0x0c	; 12
      002786 04                    1696 	.db #0x04	; 4
      002787 00                    1697 	.db #0x00	; 0
      002788 10                    1698 	.db #0x10	; 16
      002789 18                    1699 	.db #0x18	; 24
      00278A 1C                    1700 	.db #0x1c	; 28
      00278B 1E                    1701 	.db #0x1e	; 30
      00278C 1C                    1702 	.db #0x1c	; 28
      00278D 18                    1703 	.db #0x18	; 24
      00278E 10                    1704 	.db #0x10	; 16
      00278F 00                    1705 	.db #0x00	; 0
      002790 08                    1706 	.db #0x08	; 8
      002791 1C                    1707 	.db #0x1c	; 28
      002792 3E                    1708 	.db #0x3e	; 62
      002793 08                    1709 	.db #0x08	; 8
      002794 3E                    1710 	.db #0x3e	; 62
      002795 1C                    1711 	.db #0x1c	; 28
      002796 08                    1712 	.db #0x08	; 8
      002797 00                    1713 	.db #0x00	; 0
      002798 14                    1714 	.db #0x14	; 20
      002799 14                    1715 	.db #0x14	; 20
      00279A 14                    1716 	.db #0x14	; 20
      00279B 14                    1717 	.db #0x14	; 20
      00279C 14                    1718 	.db #0x14	; 20
      00279D 00                    1719 	.db #0x00	; 0
      00279E 14                    1720 	.db #0x14	; 20
      00279F 00                    1721 	.db #0x00	; 0
      0027A0 3C                    1722 	.db #0x3c	; 60
      0027A1 2A                    1723 	.db #0x2a	; 42
      0027A2 2A                    1724 	.db #0x2a	; 42
      0027A3 2C                    1725 	.db #0x2c	; 44
      0027A4 28                    1726 	.db #0x28	; 40
      0027A5 28                    1727 	.db #0x28	; 40
      0027A6 28                    1728 	.db #0x28	; 40
      0027A7 00                    1729 	.db #0x00	; 0
      0027A8 1C                    1730 	.db #0x1c	; 28
      0027A9 22                    1731 	.db #0x22	; 34
      0027AA 0C                    1732 	.db #0x0c	; 12
      0027AB 14                    1733 	.db #0x14	; 20
      0027AC 18                    1734 	.db #0x18	; 24
      0027AD 22                    1735 	.db #0x22	; 34
      0027AE 1C                    1736 	.db #0x1c	; 28
      0027AF 00                    1737 	.db #0x00	; 0
      0027B0 00                    1738 	.db #0x00	; 0
      0027B1 00                    1739 	.db #0x00	; 0
      0027B2 00                    1740 	.db #0x00	; 0
      0027B3 00                    1741 	.db #0x00	; 0
      0027B4 00                    1742 	.db #0x00	; 0
      0027B5 1E                    1743 	.db #0x1e	; 30
      0027B6 1E                    1744 	.db #0x1e	; 30
      0027B7 00                    1745 	.db #0x00	; 0
      0027B8 08                    1746 	.db #0x08	; 8
      0027B9 1C                    1747 	.db #0x1c	; 28
      0027BA 3E                    1748 	.db #0x3e	; 62
      0027BB 08                    1749 	.db #0x08	; 8
      0027BC 3E                    1750 	.db #0x3e	; 62
      0027BD 1C                    1751 	.db #0x1c	; 28
      0027BE 08                    1752 	.db #0x08	; 8
      0027BF 1C                    1753 	.db #0x1c	; 28
      0027C0 08                    1754 	.db #0x08	; 8
      0027C1 1C                    1755 	.db #0x1c	; 28
      0027C2 3E                    1756 	.db #0x3e	; 62
      0027C3 08                    1757 	.db #0x08	; 8
      0027C4 08                    1758 	.db #0x08	; 8
      0027C5 08                    1759 	.db #0x08	; 8
      0027C6 08                    1760 	.db #0x08	; 8
      0027C7 00                    1761 	.db #0x00	; 0
      0027C8 08                    1762 	.db #0x08	; 8
      0027C9 08                    1763 	.db #0x08	; 8
      0027CA 08                    1764 	.db #0x08	; 8
      0027CB 08                    1765 	.db #0x08	; 8
      0027CC 3E                    1766 	.db #0x3e	; 62
      0027CD 1C                    1767 	.db #0x1c	; 28
      0027CE 08                    1768 	.db #0x08	; 8
      0027CF 00                    1769 	.db #0x00	; 0
      0027D0 00                    1770 	.db #0x00	; 0
      0027D1 08                    1771 	.db #0x08	; 8
      0027D2 18                    1772 	.db #0x18	; 24
      0027D3 3E                    1773 	.db #0x3e	; 62
      0027D4 18                    1774 	.db #0x18	; 24
      0027D5 08                    1775 	.db #0x08	; 8
      0027D6 00                    1776 	.db #0x00	; 0
      0027D7 00                    1777 	.db #0x00	; 0
      0027D8 00                    1778 	.db #0x00	; 0
      0027D9 08                    1779 	.db #0x08	; 8
      0027DA 0C                    1780 	.db #0x0c	; 12
      0027DB 3E                    1781 	.db #0x3e	; 62
      0027DC 0C                    1782 	.db #0x0c	; 12
      0027DD 08                    1783 	.db #0x08	; 8
      0027DE 00                    1784 	.db #0x00	; 0
      0027DF 00                    1785 	.db #0x00	; 0
      0027E0 00                    1786 	.db #0x00	; 0
      0027E1 00                    1787 	.db #0x00	; 0
      0027E2 00                    1788 	.db #0x00	; 0
      0027E3 02                    1789 	.db #0x02	; 2
      0027E4 02                    1790 	.db #0x02	; 2
      0027E5 02                    1791 	.db #0x02	; 2
      0027E6 3E                    1792 	.db #0x3e	; 62
      0027E7 00                    1793 	.db #0x00	; 0
      0027E8 00                    1794 	.db #0x00	; 0
      0027E9 14                    1795 	.db #0x14	; 20
      0027EA 14                    1796 	.db #0x14	; 20
      0027EB 3E                    1797 	.db #0x3e	; 62
      0027EC 14                    1798 	.db #0x14	; 20
      0027ED 14                    1799 	.db #0x14	; 20
      0027EE 00                    1800 	.db #0x00	; 0
      0027EF 00                    1801 	.db #0x00	; 0
      0027F0 08                    1802 	.db #0x08	; 8
      0027F1 08                    1803 	.db #0x08	; 8
      0027F2 1C                    1804 	.db #0x1c	; 28
      0027F3 1C                    1805 	.db #0x1c	; 28
      0027F4 3E                    1806 	.db #0x3e	; 62
      0027F5 3E                    1807 	.db #0x3e	; 62
      0027F6 00                    1808 	.db #0x00	; 0
      0027F7 00                    1809 	.db #0x00	; 0
      0027F8 3E                    1810 	.db #0x3e	; 62
      0027F9 3E                    1811 	.db #0x3e	; 62
      0027FA 1C                    1812 	.db #0x1c	; 28
      0027FB 1C                    1813 	.db #0x1c	; 28
      0027FC 08                    1814 	.db #0x08	; 8
      0027FD 08                    1815 	.db #0x08	; 8
      0027FE 00                    1816 	.db #0x00	; 0
      0027FF 00                    1817 	.db #0x00	; 0
      002800 00                    1818 	.db #0x00	; 0
      002801 00                    1819 	.db #0x00	; 0
      002802 00                    1820 	.db #0x00	; 0
      002803 00                    1821 	.db #0x00	; 0
      002804 00                    1822 	.db #0x00	; 0
      002805 00                    1823 	.db #0x00	; 0
      002806 00                    1824 	.db #0x00	; 0
      002807 00                    1825 	.db #0x00	; 0
      002808 08                    1826 	.db #0x08	; 8
      002809 1C                    1827 	.db #0x1c	; 28
      00280A 1C                    1828 	.db #0x1c	; 28
      00280B 08                    1829 	.db #0x08	; 8
      00280C 08                    1830 	.db #0x08	; 8
      00280D 00                    1831 	.db #0x00	; 0
      00280E 08                    1832 	.db #0x08	; 8
      00280F 00                    1833 	.db #0x00	; 0
      002810 36                    1834 	.db #0x36	; 54	'6'
      002811 36                    1835 	.db #0x36	; 54	'6'
      002812 12                    1836 	.db #0x12	; 18
      002813 00                    1837 	.db #0x00	; 0
      002814 00                    1838 	.db #0x00	; 0
      002815 00                    1839 	.db #0x00	; 0
      002816 00                    1840 	.db #0x00	; 0
      002817 00                    1841 	.db #0x00	; 0
      002818 00                    1842 	.db #0x00	; 0
      002819 14                    1843 	.db #0x14	; 20
      00281A 3E                    1844 	.db #0x3e	; 62
      00281B 14                    1845 	.db #0x14	; 20
      00281C 14                    1846 	.db #0x14	; 20
      00281D 3E                    1847 	.db #0x3e	; 62
      00281E 14                    1848 	.db #0x14	; 20
      00281F 00                    1849 	.db #0x00	; 0
      002820 04                    1850 	.db #0x04	; 4
      002821 1C                    1851 	.db #0x1c	; 28
      002822 02                    1852 	.db #0x02	; 2
      002823 0C                    1853 	.db #0x0c	; 12
      002824 10                    1854 	.db #0x10	; 16
      002825 0E                    1855 	.db #0x0e	; 14
      002826 08                    1856 	.db #0x08	; 8
      002827 00                    1857 	.db #0x00	; 0
      002828 26                    1858 	.db #0x26	; 38
      002829 26                    1859 	.db #0x26	; 38
      00282A 10                    1860 	.db #0x10	; 16
      00282B 08                    1861 	.db #0x08	; 8
      00282C 04                    1862 	.db #0x04	; 4
      00282D 32                    1863 	.db #0x32	; 50	'2'
      00282E 32                    1864 	.db #0x32	; 50	'2'
      00282F 00                    1865 	.db #0x00	; 0
      002830 04                    1866 	.db #0x04	; 4
      002831 0A                    1867 	.db #0x0a	; 10
      002832 0A                    1868 	.db #0x0a	; 10
      002833 04                    1869 	.db #0x04	; 4
      002834 2A                    1870 	.db #0x2a	; 42
      002835 12                    1871 	.db #0x12	; 18
      002836 2C                    1872 	.db #0x2c	; 44
      002837 00                    1873 	.db #0x00	; 0
      002838 0C                    1874 	.db #0x0c	; 12
      002839 0C                    1875 	.db #0x0c	; 12
      00283A 04                    1876 	.db #0x04	; 4
      00283B 00                    1877 	.db #0x00	; 0
      00283C 00                    1878 	.db #0x00	; 0
      00283D 00                    1879 	.db #0x00	; 0
      00283E 00                    1880 	.db #0x00	; 0
      00283F 00                    1881 	.db #0x00	; 0
      002840 08                    1882 	.db #0x08	; 8
      002841 04                    1883 	.db #0x04	; 4
      002842 04                    1884 	.db #0x04	; 4
      002843 04                    1885 	.db #0x04	; 4
      002844 04                    1886 	.db #0x04	; 4
      002845 04                    1887 	.db #0x04	; 4
      002846 08                    1888 	.db #0x08	; 8
      002847 00                    1889 	.db #0x00	; 0
      002848 04                    1890 	.db #0x04	; 4
      002849 08                    1891 	.db #0x08	; 8
      00284A 08                    1892 	.db #0x08	; 8
      00284B 08                    1893 	.db #0x08	; 8
      00284C 08                    1894 	.db #0x08	; 8
      00284D 08                    1895 	.db #0x08	; 8
      00284E 04                    1896 	.db #0x04	; 4
      00284F 00                    1897 	.db #0x00	; 0
      002850 00                    1898 	.db #0x00	; 0
      002851 14                    1899 	.db #0x14	; 20
      002852 1C                    1900 	.db #0x1c	; 28
      002853 3E                    1901 	.db #0x3e	; 62
      002854 1C                    1902 	.db #0x1c	; 28
      002855 14                    1903 	.db #0x14	; 20
      002856 00                    1904 	.db #0x00	; 0
      002857 00                    1905 	.db #0x00	; 0
      002858 00                    1906 	.db #0x00	; 0
      002859 08                    1907 	.db #0x08	; 8
      00285A 08                    1908 	.db #0x08	; 8
      00285B 3E                    1909 	.db #0x3e	; 62
      00285C 08                    1910 	.db #0x08	; 8
      00285D 08                    1911 	.db #0x08	; 8
      00285E 00                    1912 	.db #0x00	; 0
      00285F 00                    1913 	.db #0x00	; 0
      002860 00                    1914 	.db #0x00	; 0
      002861 00                    1915 	.db #0x00	; 0
      002862 00                    1916 	.db #0x00	; 0
      002863 00                    1917 	.db #0x00	; 0
      002864 00                    1918 	.db #0x00	; 0
      002865 0C                    1919 	.db #0x0c	; 12
      002866 0C                    1920 	.db #0x0c	; 12
      002867 04                    1921 	.db #0x04	; 4
      002868 00                    1922 	.db #0x00	; 0
      002869 00                    1923 	.db #0x00	; 0
      00286A 00                    1924 	.db #0x00	; 0
      00286B 3E                    1925 	.db #0x3e	; 62
      00286C 00                    1926 	.db #0x00	; 0
      00286D 00                    1927 	.db #0x00	; 0
      00286E 00                    1928 	.db #0x00	; 0
      00286F 00                    1929 	.db #0x00	; 0
      002870 00                    1930 	.db #0x00	; 0
      002871 00                    1931 	.db #0x00	; 0
      002872 00                    1932 	.db #0x00	; 0
      002873 00                    1933 	.db #0x00	; 0
      002874 00                    1934 	.db #0x00	; 0
      002875 0C                    1935 	.db #0x0c	; 12
      002876 0C                    1936 	.db #0x0c	; 12
      002877 00                    1937 	.db #0x00	; 0
      002878 00                    1938 	.db #0x00	; 0
      002879 20                    1939 	.db #0x20	; 32
      00287A 10                    1940 	.db #0x10	; 16
      00287B 08                    1941 	.db #0x08	; 8
      00287C 04                    1942 	.db #0x04	; 4
      00287D 02                    1943 	.db #0x02	; 2
      00287E 00                    1944 	.db #0x00	; 0
      00287F 00                    1945 	.db #0x00	; 0
      002880 1C                    1946 	.db #0x1c	; 28
      002881 22                    1947 	.db #0x22	; 34
      002882 32                    1948 	.db #0x32	; 50	'2'
      002883 2A                    1949 	.db #0x2a	; 42
      002884 26                    1950 	.db #0x26	; 38
      002885 22                    1951 	.db #0x22	; 34
      002886 1C                    1952 	.db #0x1c	; 28
      002887 00                    1953 	.db #0x00	; 0
      002888 08                    1954 	.db #0x08	; 8
      002889 0C                    1955 	.db #0x0c	; 12
      00288A 08                    1956 	.db #0x08	; 8
      00288B 08                    1957 	.db #0x08	; 8
      00288C 08                    1958 	.db #0x08	; 8
      00288D 08                    1959 	.db #0x08	; 8
      00288E 1C                    1960 	.db #0x1c	; 28
      00288F 00                    1961 	.db #0x00	; 0
      002890 1C                    1962 	.db #0x1c	; 28
      002891 22                    1963 	.db #0x22	; 34
      002892 20                    1964 	.db #0x20	; 32
      002893 18                    1965 	.db #0x18	; 24
      002894 04                    1966 	.db #0x04	; 4
      002895 02                    1967 	.db #0x02	; 2
      002896 3E                    1968 	.db #0x3e	; 62
      002897 00                    1969 	.db #0x00	; 0
      002898 1C                    1970 	.db #0x1c	; 28
      002899 22                    1971 	.db #0x22	; 34
      00289A 20                    1972 	.db #0x20	; 32
      00289B 1C                    1973 	.db #0x1c	; 28
      00289C 20                    1974 	.db #0x20	; 32
      00289D 22                    1975 	.db #0x22	; 34
      00289E 1C                    1976 	.db #0x1c	; 28
      00289F 00                    1977 	.db #0x00	; 0
      0028A0 10                    1978 	.db #0x10	; 16
      0028A1 18                    1979 	.db #0x18	; 24
      0028A2 14                    1980 	.db #0x14	; 20
      0028A3 12                    1981 	.db #0x12	; 18
      0028A4 3E                    1982 	.db #0x3e	; 62
      0028A5 10                    1983 	.db #0x10	; 16
      0028A6 10                    1984 	.db #0x10	; 16
      0028A7 00                    1985 	.db #0x00	; 0
      0028A8 3E                    1986 	.db #0x3e	; 62
      0028A9 02                    1987 	.db #0x02	; 2
      0028AA 02                    1988 	.db #0x02	; 2
      0028AB 1E                    1989 	.db #0x1e	; 30
      0028AC 20                    1990 	.db #0x20	; 32
      0028AD 22                    1991 	.db #0x22	; 34
      0028AE 1C                    1992 	.db #0x1c	; 28
      0028AF 00                    1993 	.db #0x00	; 0
      0028B0 18                    1994 	.db #0x18	; 24
      0028B1 04                    1995 	.db #0x04	; 4
      0028B2 02                    1996 	.db #0x02	; 2
      0028B3 1E                    1997 	.db #0x1e	; 30
      0028B4 22                    1998 	.db #0x22	; 34
      0028B5 22                    1999 	.db #0x22	; 34
      0028B6 1C                    2000 	.db #0x1c	; 28
      0028B7 00                    2001 	.db #0x00	; 0
      0028B8 3E                    2002 	.db #0x3e	; 62
      0028B9 20                    2003 	.db #0x20	; 32
      0028BA 10                    2004 	.db #0x10	; 16
      0028BB 08                    2005 	.db #0x08	; 8
      0028BC 04                    2006 	.db #0x04	; 4
      0028BD 04                    2007 	.db #0x04	; 4
      0028BE 04                    2008 	.db #0x04	; 4
      0028BF 00                    2009 	.db #0x00	; 0
      0028C0 1C                    2010 	.db #0x1c	; 28
      0028C1 22                    2011 	.db #0x22	; 34
      0028C2 22                    2012 	.db #0x22	; 34
      0028C3 1C                    2013 	.db #0x1c	; 28
      0028C4 22                    2014 	.db #0x22	; 34
      0028C5 22                    2015 	.db #0x22	; 34
      0028C6 1C                    2016 	.db #0x1c	; 28
      0028C7 00                    2017 	.db #0x00	; 0
      0028C8 1C                    2018 	.db #0x1c	; 28
      0028C9 22                    2019 	.db #0x22	; 34
      0028CA 22                    2020 	.db #0x22	; 34
      0028CB 3C                    2021 	.db #0x3c	; 60
      0028CC 20                    2022 	.db #0x20	; 32
      0028CD 10                    2023 	.db #0x10	; 16
      0028CE 0C                    2024 	.db #0x0c	; 12
      0028CF 00                    2025 	.db #0x00	; 0
      0028D0 00                    2026 	.db #0x00	; 0
      0028D1 00                    2027 	.db #0x00	; 0
      0028D2 0C                    2028 	.db #0x0c	; 12
      0028D3 0C                    2029 	.db #0x0c	; 12
      0028D4 00                    2030 	.db #0x00	; 0
      0028D5 0C                    2031 	.db #0x0c	; 12
      0028D6 0C                    2032 	.db #0x0c	; 12
      0028D7 00                    2033 	.db #0x00	; 0
      0028D8 00                    2034 	.db #0x00	; 0
      0028D9 00                    2035 	.db #0x00	; 0
      0028DA 0C                    2036 	.db #0x0c	; 12
      0028DB 0C                    2037 	.db #0x0c	; 12
      0028DC 00                    2038 	.db #0x00	; 0
      0028DD 0C                    2039 	.db #0x0c	; 12
      0028DE 0C                    2040 	.db #0x0c	; 12
      0028DF 04                    2041 	.db #0x04	; 4
      0028E0 10                    2042 	.db #0x10	; 16
      0028E1 08                    2043 	.db #0x08	; 8
      0028E2 04                    2044 	.db #0x04	; 4
      0028E3 02                    2045 	.db #0x02	; 2
      0028E4 04                    2046 	.db #0x04	; 4
      0028E5 08                    2047 	.db #0x08	; 8
      0028E6 10                    2048 	.db #0x10	; 16
      0028E7 00                    2049 	.db #0x00	; 0
      0028E8 00                    2050 	.db #0x00	; 0
      0028E9 00                    2051 	.db #0x00	; 0
      0028EA 3E                    2052 	.db #0x3e	; 62
      0028EB 00                    2053 	.db #0x00	; 0
      0028EC 00                    2054 	.db #0x00	; 0
      0028ED 3E                    2055 	.db #0x3e	; 62
      0028EE 00                    2056 	.db #0x00	; 0
      0028EF 00                    2057 	.db #0x00	; 0
      0028F0 04                    2058 	.db #0x04	; 4
      0028F1 08                    2059 	.db #0x08	; 8
      0028F2 10                    2060 	.db #0x10	; 16
      0028F3 20                    2061 	.db #0x20	; 32
      0028F4 10                    2062 	.db #0x10	; 16
      0028F5 08                    2063 	.db #0x08	; 8
      0028F6 04                    2064 	.db #0x04	; 4
      0028F7 00                    2065 	.db #0x00	; 0
      0028F8 1C                    2066 	.db #0x1c	; 28
      0028F9 22                    2067 	.db #0x22	; 34
      0028FA 20                    2068 	.db #0x20	; 32
      0028FB 18                    2069 	.db #0x18	; 24
      0028FC 08                    2070 	.db #0x08	; 8
      0028FD 00                    2071 	.db #0x00	; 0
      0028FE 08                    2072 	.db #0x08	; 8
      0028FF 00                    2073 	.db #0x00	; 0
      002900 1C                    2074 	.db #0x1c	; 28
      002901 22                    2075 	.db #0x22	; 34
      002902 3A                    2076 	.db #0x3a	; 58
      002903 2A                    2077 	.db #0x2a	; 42
      002904 3A                    2078 	.db #0x3a	; 58
      002905 02                    2079 	.db #0x02	; 2
      002906 1C                    2080 	.db #0x1c	; 28
      002907 00                    2081 	.db #0x00	; 0
      002908 1C                    2082 	.db #0x1c	; 28
      002909 22                    2083 	.db #0x22	; 34
      00290A 22                    2084 	.db #0x22	; 34
      00290B 22                    2085 	.db #0x22	; 34
      00290C 3E                    2086 	.db #0x3e	; 62
      00290D 22                    2087 	.db #0x22	; 34
      00290E 22                    2088 	.db #0x22	; 34
      00290F 00                    2089 	.db #0x00	; 0
      002910 1E                    2090 	.db #0x1e	; 30
      002911 22                    2091 	.db #0x22	; 34
      002912 22                    2092 	.db #0x22	; 34
      002913 1E                    2093 	.db #0x1e	; 30
      002914 22                    2094 	.db #0x22	; 34
      002915 22                    2095 	.db #0x22	; 34
      002916 1E                    2096 	.db #0x1e	; 30
      002917 00                    2097 	.db #0x00	; 0
      002918 1C                    2098 	.db #0x1c	; 28
      002919 22                    2099 	.db #0x22	; 34
      00291A 02                    2100 	.db #0x02	; 2
      00291B 02                    2101 	.db #0x02	; 2
      00291C 02                    2102 	.db #0x02	; 2
      00291D 22                    2103 	.db #0x22	; 34
      00291E 1C                    2104 	.db #0x1c	; 28
      00291F 00                    2105 	.db #0x00	; 0
      002920 1E                    2106 	.db #0x1e	; 30
      002921 22                    2107 	.db #0x22	; 34
      002922 22                    2108 	.db #0x22	; 34
      002923 22                    2109 	.db #0x22	; 34
      002924 22                    2110 	.db #0x22	; 34
      002925 22                    2111 	.db #0x22	; 34
      002926 1E                    2112 	.db #0x1e	; 30
      002927 00                    2113 	.db #0x00	; 0
      002928 3E                    2114 	.db #0x3e	; 62
      002929 02                    2115 	.db #0x02	; 2
      00292A 02                    2116 	.db #0x02	; 2
      00292B 1E                    2117 	.db #0x1e	; 30
      00292C 02                    2118 	.db #0x02	; 2
      00292D 02                    2119 	.db #0x02	; 2
      00292E 3E                    2120 	.db #0x3e	; 62
      00292F 00                    2121 	.db #0x00	; 0
      002930 3E                    2122 	.db #0x3e	; 62
      002931 02                    2123 	.db #0x02	; 2
      002932 02                    2124 	.db #0x02	; 2
      002933 1E                    2125 	.db #0x1e	; 30
      002934 02                    2126 	.db #0x02	; 2
      002935 02                    2127 	.db #0x02	; 2
      002936 02                    2128 	.db #0x02	; 2
      002937 00                    2129 	.db #0x00	; 0
      002938 1C                    2130 	.db #0x1c	; 28
      002939 22                    2131 	.db #0x22	; 34
      00293A 02                    2132 	.db #0x02	; 2
      00293B 3A                    2133 	.db #0x3a	; 58
      00293C 22                    2134 	.db #0x22	; 34
      00293D 22                    2135 	.db #0x22	; 34
      00293E 3C                    2136 	.db #0x3c	; 60
      00293F 00                    2137 	.db #0x00	; 0
      002940 22                    2138 	.db #0x22	; 34
      002941 22                    2139 	.db #0x22	; 34
      002942 22                    2140 	.db #0x22	; 34
      002943 3E                    2141 	.db #0x3e	; 62
      002944 22                    2142 	.db #0x22	; 34
      002945 22                    2143 	.db #0x22	; 34
      002946 22                    2144 	.db #0x22	; 34
      002947 00                    2145 	.db #0x00	; 0
      002948 1C                    2146 	.db #0x1c	; 28
      002949 08                    2147 	.db #0x08	; 8
      00294A 08                    2148 	.db #0x08	; 8
      00294B 08                    2149 	.db #0x08	; 8
      00294C 08                    2150 	.db #0x08	; 8
      00294D 08                    2151 	.db #0x08	; 8
      00294E 1C                    2152 	.db #0x1c	; 28
      00294F 00                    2153 	.db #0x00	; 0
      002950 20                    2154 	.db #0x20	; 32
      002951 20                    2155 	.db #0x20	; 32
      002952 20                    2156 	.db #0x20	; 32
      002953 20                    2157 	.db #0x20	; 32
      002954 22                    2158 	.db #0x22	; 34
      002955 22                    2159 	.db #0x22	; 34
      002956 1C                    2160 	.db #0x1c	; 28
      002957 00                    2161 	.db #0x00	; 0
      002958 22                    2162 	.db #0x22	; 34
      002959 12                    2163 	.db #0x12	; 18
      00295A 0A                    2164 	.db #0x0a	; 10
      00295B 06                    2165 	.db #0x06	; 6
      00295C 0A                    2166 	.db #0x0a	; 10
      00295D 12                    2167 	.db #0x12	; 18
      00295E 22                    2168 	.db #0x22	; 34
      00295F 00                    2169 	.db #0x00	; 0
      002960 02                    2170 	.db #0x02	; 2
      002961 02                    2171 	.db #0x02	; 2
      002962 02                    2172 	.db #0x02	; 2
      002963 02                    2173 	.db #0x02	; 2
      002964 02                    2174 	.db #0x02	; 2
      002965 02                    2175 	.db #0x02	; 2
      002966 3E                    2176 	.db #0x3e	; 62
      002967 00                    2177 	.db #0x00	; 0
      002968 22                    2178 	.db #0x22	; 34
      002969 36                    2179 	.db #0x36	; 54	'6'
      00296A 2A                    2180 	.db #0x2a	; 42
      00296B 22                    2181 	.db #0x22	; 34
      00296C 22                    2182 	.db #0x22	; 34
      00296D 22                    2183 	.db #0x22	; 34
      00296E 22                    2184 	.db #0x22	; 34
      00296F 00                    2185 	.db #0x00	; 0
      002970 22                    2186 	.db #0x22	; 34
      002971 26                    2187 	.db #0x26	; 38
      002972 2A                    2188 	.db #0x2a	; 42
      002973 32                    2189 	.db #0x32	; 50	'2'
      002974 22                    2190 	.db #0x22	; 34
      002975 22                    2191 	.db #0x22	; 34
      002976 22                    2192 	.db #0x22	; 34
      002977 00                    2193 	.db #0x00	; 0
      002978 1C                    2194 	.db #0x1c	; 28
      002979 22                    2195 	.db #0x22	; 34
      00297A 22                    2196 	.db #0x22	; 34
      00297B 22                    2197 	.db #0x22	; 34
      00297C 22                    2198 	.db #0x22	; 34
      00297D 22                    2199 	.db #0x22	; 34
      00297E 1C                    2200 	.db #0x1c	; 28
      00297F 00                    2201 	.db #0x00	; 0
      002980 1E                    2202 	.db #0x1e	; 30
      002981 22                    2203 	.db #0x22	; 34
      002982 22                    2204 	.db #0x22	; 34
      002983 1E                    2205 	.db #0x1e	; 30
      002984 02                    2206 	.db #0x02	; 2
      002985 02                    2207 	.db #0x02	; 2
      002986 02                    2208 	.db #0x02	; 2
      002987 00                    2209 	.db #0x00	; 0
      002988 1C                    2210 	.db #0x1c	; 28
      002989 22                    2211 	.db #0x22	; 34
      00298A 22                    2212 	.db #0x22	; 34
      00298B 22                    2213 	.db #0x22	; 34
      00298C 2A                    2214 	.db #0x2a	; 42
      00298D 12                    2215 	.db #0x12	; 18
      00298E 2C                    2216 	.db #0x2c	; 44
      00298F 00                    2217 	.db #0x00	; 0
      002990 1E                    2218 	.db #0x1e	; 30
      002991 22                    2219 	.db #0x22	; 34
      002992 22                    2220 	.db #0x22	; 34
      002993 1E                    2221 	.db #0x1e	; 30
      002994 12                    2222 	.db #0x12	; 18
      002995 22                    2223 	.db #0x22	; 34
      002996 22                    2224 	.db #0x22	; 34
      002997 00                    2225 	.db #0x00	; 0
      002998 1C                    2226 	.db #0x1c	; 28
      002999 22                    2227 	.db #0x22	; 34
      00299A 02                    2228 	.db #0x02	; 2
      00299B 1C                    2229 	.db #0x1c	; 28
      00299C 20                    2230 	.db #0x20	; 32
      00299D 22                    2231 	.db #0x22	; 34
      00299E 1C                    2232 	.db #0x1c	; 28
      00299F 00                    2233 	.db #0x00	; 0
      0029A0 3E                    2234 	.db #0x3e	; 62
      0029A1 08                    2235 	.db #0x08	; 8
      0029A2 08                    2236 	.db #0x08	; 8
      0029A3 08                    2237 	.db #0x08	; 8
      0029A4 08                    2238 	.db #0x08	; 8
      0029A5 08                    2239 	.db #0x08	; 8
      0029A6 08                    2240 	.db #0x08	; 8
      0029A7 00                    2241 	.db #0x00	; 0
      0029A8 22                    2242 	.db #0x22	; 34
      0029A9 22                    2243 	.db #0x22	; 34
      0029AA 22                    2244 	.db #0x22	; 34
      0029AB 22                    2245 	.db #0x22	; 34
      0029AC 22                    2246 	.db #0x22	; 34
      0029AD 22                    2247 	.db #0x22	; 34
      0029AE 1C                    2248 	.db #0x1c	; 28
      0029AF 00                    2249 	.db #0x00	; 0
      0029B0 22                    2250 	.db #0x22	; 34
      0029B1 22                    2251 	.db #0x22	; 34
      0029B2 22                    2252 	.db #0x22	; 34
      0029B3 22                    2253 	.db #0x22	; 34
      0029B4 22                    2254 	.db #0x22	; 34
      0029B5 14                    2255 	.db #0x14	; 20
      0029B6 08                    2256 	.db #0x08	; 8
      0029B7 00                    2257 	.db #0x00	; 0
      0029B8 22                    2258 	.db #0x22	; 34
      0029B9 22                    2259 	.db #0x22	; 34
      0029BA 2A                    2260 	.db #0x2a	; 42
      0029BB 2A                    2261 	.db #0x2a	; 42
      0029BC 2A                    2262 	.db #0x2a	; 42
      0029BD 2A                    2263 	.db #0x2a	; 42
      0029BE 14                    2264 	.db #0x14	; 20
      0029BF 00                    2265 	.db #0x00	; 0
      0029C0 22                    2266 	.db #0x22	; 34
      0029C1 22                    2267 	.db #0x22	; 34
      0029C2 14                    2268 	.db #0x14	; 20
      0029C3 08                    2269 	.db #0x08	; 8
      0029C4 14                    2270 	.db #0x14	; 20
      0029C5 22                    2271 	.db #0x22	; 34
      0029C6 22                    2272 	.db #0x22	; 34
      0029C7 00                    2273 	.db #0x00	; 0
      0029C8 22                    2274 	.db #0x22	; 34
      0029C9 22                    2275 	.db #0x22	; 34
      0029CA 22                    2276 	.db #0x22	; 34
      0029CB 14                    2277 	.db #0x14	; 20
      0029CC 08                    2278 	.db #0x08	; 8
      0029CD 08                    2279 	.db #0x08	; 8
      0029CE 08                    2280 	.db #0x08	; 8
      0029CF 00                    2281 	.db #0x00	; 0
      0029D0 1E                    2282 	.db #0x1e	; 30
      0029D1 10                    2283 	.db #0x10	; 16
      0029D2 08                    2284 	.db #0x08	; 8
      0029D3 04                    2285 	.db #0x04	; 4
      0029D4 02                    2286 	.db #0x02	; 2
      0029D5 02                    2287 	.db #0x02	; 2
      0029D6 1E                    2288 	.db #0x1e	; 30
      0029D7 00                    2289 	.db #0x00	; 0
      0029D8 1C                    2290 	.db #0x1c	; 28
      0029D9 04                    2291 	.db #0x04	; 4
      0029DA 04                    2292 	.db #0x04	; 4
      0029DB 04                    2293 	.db #0x04	; 4
      0029DC 04                    2294 	.db #0x04	; 4
      0029DD 04                    2295 	.db #0x04	; 4
      0029DE 1C                    2296 	.db #0x1c	; 28
      0029DF 00                    2297 	.db #0x00	; 0
      0029E0 00                    2298 	.db #0x00	; 0
      0029E1 02                    2299 	.db #0x02	; 2
      0029E2 04                    2300 	.db #0x04	; 4
      0029E3 08                    2301 	.db #0x08	; 8
      0029E4 10                    2302 	.db #0x10	; 16
      0029E5 20                    2303 	.db #0x20	; 32
      0029E6 00                    2304 	.db #0x00	; 0
      0029E7 00                    2305 	.db #0x00	; 0
      0029E8 1C                    2306 	.db #0x1c	; 28
      0029E9 10                    2307 	.db #0x10	; 16
      0029EA 10                    2308 	.db #0x10	; 16
      0029EB 10                    2309 	.db #0x10	; 16
      0029EC 10                    2310 	.db #0x10	; 16
      0029ED 10                    2311 	.db #0x10	; 16
      0029EE 1C                    2312 	.db #0x1c	; 28
      0029EF 00                    2313 	.db #0x00	; 0
      0029F0 08                    2314 	.db #0x08	; 8
      0029F1 14                    2315 	.db #0x14	; 20
      0029F2 22                    2316 	.db #0x22	; 34
      0029F3 00                    2317 	.db #0x00	; 0
      0029F4 00                    2318 	.db #0x00	; 0
      0029F5 00                    2319 	.db #0x00	; 0
      0029F6 00                    2320 	.db #0x00	; 0
      0029F7 00                    2321 	.db #0x00	; 0
      0029F8 00                    2322 	.db #0x00	; 0
      0029F9 00                    2323 	.db #0x00	; 0
      0029FA 00                    2324 	.db #0x00	; 0
      0029FB 00                    2325 	.db #0x00	; 0
      0029FC 00                    2326 	.db #0x00	; 0
      0029FD 00                    2327 	.db #0x00	; 0
      0029FE 00                    2328 	.db #0x00	; 0
      0029FF 3F                    2329 	.db #0x3f	; 63
      002A00 0C                    2330 	.db #0x0c	; 12
      002A01 0C                    2331 	.db #0x0c	; 12
      002A02 08                    2332 	.db #0x08	; 8
      002A03 00                    2333 	.db #0x00	; 0
      002A04 00                    2334 	.db #0x00	; 0
      002A05 00                    2335 	.db #0x00	; 0
      002A06 00                    2336 	.db #0x00	; 0
      002A07 00                    2337 	.db #0x00	; 0
      002A08 00                    2338 	.db #0x00	; 0
      002A09 00                    2339 	.db #0x00	; 0
      002A0A 1C                    2340 	.db #0x1c	; 28
      002A0B 20                    2341 	.db #0x20	; 32
      002A0C 3C                    2342 	.db #0x3c	; 60
      002A0D 22                    2343 	.db #0x22	; 34
      002A0E 3C                    2344 	.db #0x3c	; 60
      002A0F 00                    2345 	.db #0x00	; 0
      002A10 02                    2346 	.db #0x02	; 2
      002A11 02                    2347 	.db #0x02	; 2
      002A12 1E                    2348 	.db #0x1e	; 30
      002A13 22                    2349 	.db #0x22	; 34
      002A14 22                    2350 	.db #0x22	; 34
      002A15 22                    2351 	.db #0x22	; 34
      002A16 1E                    2352 	.db #0x1e	; 30
      002A17 00                    2353 	.db #0x00	; 0
      002A18 00                    2354 	.db #0x00	; 0
      002A19 00                    2355 	.db #0x00	; 0
      002A1A 1C                    2356 	.db #0x1c	; 28
      002A1B 22                    2357 	.db #0x22	; 34
      002A1C 02                    2358 	.db #0x02	; 2
      002A1D 22                    2359 	.db #0x22	; 34
      002A1E 1C                    2360 	.db #0x1c	; 28
      002A1F 00                    2361 	.db #0x00	; 0
      002A20 20                    2362 	.db #0x20	; 32
      002A21 20                    2363 	.db #0x20	; 32
      002A22 3C                    2364 	.db #0x3c	; 60
      002A23 22                    2365 	.db #0x22	; 34
      002A24 22                    2366 	.db #0x22	; 34
      002A25 22                    2367 	.db #0x22	; 34
      002A26 3C                    2368 	.db #0x3c	; 60
      002A27 00                    2369 	.db #0x00	; 0
      002A28 00                    2370 	.db #0x00	; 0
      002A29 00                    2371 	.db #0x00	; 0
      002A2A 1C                    2372 	.db #0x1c	; 28
      002A2B 22                    2373 	.db #0x22	; 34
      002A2C 1E                    2374 	.db #0x1e	; 30
      002A2D 02                    2375 	.db #0x02	; 2
      002A2E 1C                    2376 	.db #0x1c	; 28
      002A2F 00                    2377 	.db #0x00	; 0
      002A30 18                    2378 	.db #0x18	; 24
      002A31 04                    2379 	.db #0x04	; 4
      002A32 04                    2380 	.db #0x04	; 4
      002A33 1E                    2381 	.db #0x1e	; 30
      002A34 04                    2382 	.db #0x04	; 4
      002A35 04                    2383 	.db #0x04	; 4
      002A36 04                    2384 	.db #0x04	; 4
      002A37 00                    2385 	.db #0x00	; 0
      002A38 00                    2386 	.db #0x00	; 0
      002A39 00                    2387 	.db #0x00	; 0
      002A3A 3C                    2388 	.db #0x3c	; 60
      002A3B 22                    2389 	.db #0x22	; 34
      002A3C 22                    2390 	.db #0x22	; 34
      002A3D 3C                    2391 	.db #0x3c	; 60
      002A3E 20                    2392 	.db #0x20	; 32
      002A3F 1C                    2393 	.db #0x1c	; 28
      002A40 02                    2394 	.db #0x02	; 2
      002A41 02                    2395 	.db #0x02	; 2
      002A42 0E                    2396 	.db #0x0e	; 14
      002A43 12                    2397 	.db #0x12	; 18
      002A44 12                    2398 	.db #0x12	; 18
      002A45 12                    2399 	.db #0x12	; 18
      002A46 12                    2400 	.db #0x12	; 18
      002A47 00                    2401 	.db #0x00	; 0
      002A48 08                    2402 	.db #0x08	; 8
      002A49 00                    2403 	.db #0x00	; 0
      002A4A 08                    2404 	.db #0x08	; 8
      002A4B 08                    2405 	.db #0x08	; 8
      002A4C 08                    2406 	.db #0x08	; 8
      002A4D 08                    2407 	.db #0x08	; 8
      002A4E 18                    2408 	.db #0x18	; 24
      002A4F 00                    2409 	.db #0x00	; 0
      002A50 10                    2410 	.db #0x10	; 16
      002A51 00                    2411 	.db #0x00	; 0
      002A52 18                    2412 	.db #0x18	; 24
      002A53 10                    2413 	.db #0x10	; 16
      002A54 10                    2414 	.db #0x10	; 16
      002A55 10                    2415 	.db #0x10	; 16
      002A56 12                    2416 	.db #0x12	; 18
      002A57 0C                    2417 	.db #0x0c	; 12
      002A58 02                    2418 	.db #0x02	; 2
      002A59 02                    2419 	.db #0x02	; 2
      002A5A 12                    2420 	.db #0x12	; 18
      002A5B 0A                    2421 	.db #0x0a	; 10
      002A5C 06                    2422 	.db #0x06	; 6
      002A5D 0A                    2423 	.db #0x0a	; 10
      002A5E 12                    2424 	.db #0x12	; 18
      002A5F 00                    2425 	.db #0x00	; 0
      002A60 08                    2426 	.db #0x08	; 8
      002A61 08                    2427 	.db #0x08	; 8
      002A62 08                    2428 	.db #0x08	; 8
      002A63 08                    2429 	.db #0x08	; 8
      002A64 08                    2430 	.db #0x08	; 8
      002A65 08                    2431 	.db #0x08	; 8
      002A66 18                    2432 	.db #0x18	; 24
      002A67 00                    2433 	.db #0x00	; 0
      002A68 00                    2434 	.db #0x00	; 0
      002A69 00                    2435 	.db #0x00	; 0
      002A6A 16                    2436 	.db #0x16	; 22
      002A6B 2A                    2437 	.db #0x2a	; 42
      002A6C 2A                    2438 	.db #0x2a	; 42
      002A6D 22                    2439 	.db #0x22	; 34
      002A6E 22                    2440 	.db #0x22	; 34
      002A6F 00                    2441 	.db #0x00	; 0
      002A70 00                    2442 	.db #0x00	; 0
      002A71 00                    2443 	.db #0x00	; 0
      002A72 0E                    2444 	.db #0x0e	; 14
      002A73 12                    2445 	.db #0x12	; 18
      002A74 12                    2446 	.db #0x12	; 18
      002A75 12                    2447 	.db #0x12	; 18
      002A76 12                    2448 	.db #0x12	; 18
      002A77 00                    2449 	.db #0x00	; 0
      002A78 00                    2450 	.db #0x00	; 0
      002A79 00                    2451 	.db #0x00	; 0
      002A7A 1C                    2452 	.db #0x1c	; 28
      002A7B 22                    2453 	.db #0x22	; 34
      002A7C 22                    2454 	.db #0x22	; 34
      002A7D 22                    2455 	.db #0x22	; 34
      002A7E 1C                    2456 	.db #0x1c	; 28
      002A7F 00                    2457 	.db #0x00	; 0
      002A80 00                    2458 	.db #0x00	; 0
      002A81 00                    2459 	.db #0x00	; 0
      002A82 1E                    2460 	.db #0x1e	; 30
      002A83 22                    2461 	.db #0x22	; 34
      002A84 22                    2462 	.db #0x22	; 34
      002A85 22                    2463 	.db #0x22	; 34
      002A86 1E                    2464 	.db #0x1e	; 30
      002A87 02                    2465 	.db #0x02	; 2
      002A88 00                    2466 	.db #0x00	; 0
      002A89 00                    2467 	.db #0x00	; 0
      002A8A 3C                    2468 	.db #0x3c	; 60
      002A8B 22                    2469 	.db #0x22	; 34
      002A8C 22                    2470 	.db #0x22	; 34
      002A8D 22                    2471 	.db #0x22	; 34
      002A8E 3C                    2472 	.db #0x3c	; 60
      002A8F 20                    2473 	.db #0x20	; 32
      002A90 00                    2474 	.db #0x00	; 0
      002A91 00                    2475 	.db #0x00	; 0
      002A92 1A                    2476 	.db #0x1a	; 26
      002A93 24                    2477 	.db #0x24	; 36
      002A94 04                    2478 	.db #0x04	; 4
      002A95 04                    2479 	.db #0x04	; 4
      002A96 0E                    2480 	.db #0x0e	; 14
      002A97 00                    2481 	.db #0x00	; 0
      002A98 00                    2482 	.db #0x00	; 0
      002A99 00                    2483 	.db #0x00	; 0
      002A9A 1C                    2484 	.db #0x1c	; 28
      002A9B 02                    2485 	.db #0x02	; 2
      002A9C 1C                    2486 	.db #0x1c	; 28
      002A9D 20                    2487 	.db #0x20	; 32
      002A9E 1C                    2488 	.db #0x1c	; 28
      002A9F 00                    2489 	.db #0x00	; 0
      002AA0 00                    2490 	.db #0x00	; 0
      002AA1 04                    2491 	.db #0x04	; 4
      002AA2 1E                    2492 	.db #0x1e	; 30
      002AA3 04                    2493 	.db #0x04	; 4
      002AA4 04                    2494 	.db #0x04	; 4
      002AA5 14                    2495 	.db #0x14	; 20
      002AA6 08                    2496 	.db #0x08	; 8
      002AA7 00                    2497 	.db #0x00	; 0
      002AA8 00                    2498 	.db #0x00	; 0
      002AA9 00                    2499 	.db #0x00	; 0
      002AAA 12                    2500 	.db #0x12	; 18
      002AAB 12                    2501 	.db #0x12	; 18
      002AAC 12                    2502 	.db #0x12	; 18
      002AAD 1A                    2503 	.db #0x1a	; 26
      002AAE 14                    2504 	.db #0x14	; 20
      002AAF 00                    2505 	.db #0x00	; 0
      002AB0 00                    2506 	.db #0x00	; 0
      002AB1 00                    2507 	.db #0x00	; 0
      002AB2 22                    2508 	.db #0x22	; 34
      002AB3 22                    2509 	.db #0x22	; 34
      002AB4 22                    2510 	.db #0x22	; 34
      002AB5 14                    2511 	.db #0x14	; 20
      002AB6 08                    2512 	.db #0x08	; 8
      002AB7 00                    2513 	.db #0x00	; 0
      002AB8 00                    2514 	.db #0x00	; 0
      002AB9 00                    2515 	.db #0x00	; 0
      002ABA 22                    2516 	.db #0x22	; 34
      002ABB 22                    2517 	.db #0x22	; 34
      002ABC 2A                    2518 	.db #0x2a	; 42
      002ABD 3E                    2519 	.db #0x3e	; 62
      002ABE 14                    2520 	.db #0x14	; 20
      002ABF 00                    2521 	.db #0x00	; 0
      002AC0 00                    2522 	.db #0x00	; 0
      002AC1 00                    2523 	.db #0x00	; 0
      002AC2 12                    2524 	.db #0x12	; 18
      002AC3 12                    2525 	.db #0x12	; 18
      002AC4 0C                    2526 	.db #0x0c	; 12
      002AC5 12                    2527 	.db #0x12	; 18
      002AC6 12                    2528 	.db #0x12	; 18
      002AC7 00                    2529 	.db #0x00	; 0
      002AC8 00                    2530 	.db #0x00	; 0
      002AC9 00                    2531 	.db #0x00	; 0
      002ACA 12                    2532 	.db #0x12	; 18
      002ACB 12                    2533 	.db #0x12	; 18
      002ACC 12                    2534 	.db #0x12	; 18
      002ACD 1C                    2535 	.db #0x1c	; 28
      002ACE 08                    2536 	.db #0x08	; 8
      002ACF 06                    2537 	.db #0x06	; 6
      002AD0 00                    2538 	.db #0x00	; 0
      002AD1 00                    2539 	.db #0x00	; 0
      002AD2 1E                    2540 	.db #0x1e	; 30
      002AD3 10                    2541 	.db #0x10	; 16
      002AD4 0C                    2542 	.db #0x0c	; 12
      002AD5 02                    2543 	.db #0x02	; 2
      002AD6 1E                    2544 	.db #0x1e	; 30
      002AD7 00                    2545 	.db #0x00	; 0
      002AD8 18                    2546 	.db #0x18	; 24
      002AD9 04                    2547 	.db #0x04	; 4
      002ADA 04                    2548 	.db #0x04	; 4
      002ADB 06                    2549 	.db #0x06	; 6
      002ADC 04                    2550 	.db #0x04	; 4
      002ADD 04                    2551 	.db #0x04	; 4
      002ADE 18                    2552 	.db #0x18	; 24
      002ADF 00                    2553 	.db #0x00	; 0
      002AE0 08                    2554 	.db #0x08	; 8
      002AE1 08                    2555 	.db #0x08	; 8
      002AE2 08                    2556 	.db #0x08	; 8
      002AE3 00                    2557 	.db #0x00	; 0
      002AE4 08                    2558 	.db #0x08	; 8
      002AE5 08                    2559 	.db #0x08	; 8
      002AE6 08                    2560 	.db #0x08	; 8
      002AE7 00                    2561 	.db #0x00	; 0
      002AE8 0C                    2562 	.db #0x0c	; 12
      002AE9 10                    2563 	.db #0x10	; 16
      002AEA 10                    2564 	.db #0x10	; 16
      002AEB 30                    2565 	.db #0x30	; 48	'0'
      002AEC 10                    2566 	.db #0x10	; 16
      002AED 10                    2567 	.db #0x10	; 16
      002AEE 0C                    2568 	.db #0x0c	; 12
      002AEF 00                    2569 	.db #0x00	; 0
      002AF0 14                    2570 	.db #0x14	; 20
      002AF1 0A                    2571 	.db #0x0a	; 10
      002AF2 00                    2572 	.db #0x00	; 0
      002AF3 00                    2573 	.db #0x00	; 0
      002AF4 00                    2574 	.db #0x00	; 0
      002AF5 00                    2575 	.db #0x00	; 0
      002AF6 00                    2576 	.db #0x00	; 0
      002AF7 00                    2577 	.db #0x00	; 0
      002AF8 08                    2578 	.db #0x08	; 8
      002AF9 1C                    2579 	.db #0x1c	; 28
      002AFA 36                    2580 	.db #0x36	; 54	'6'
      002AFB 22                    2581 	.db #0x22	; 34
      002AFC 22                    2582 	.db #0x22	; 34
      002AFD 3E                    2583 	.db #0x3e	; 62
      002AFE 00                    2584 	.db #0x00	; 0
      002AFF 00                    2585 	.db #0x00	; 0
      002B00 1C                    2586 	.db #0x1c	; 28
      002B01 22                    2587 	.db #0x22	; 34
      002B02 02                    2588 	.db #0x02	; 2
      002B03 02                    2589 	.db #0x02	; 2
      002B04 22                    2590 	.db #0x22	; 34
      002B05 1C                    2591 	.db #0x1c	; 28
      002B06 08                    2592 	.db #0x08	; 8
      002B07 0C                    2593 	.db #0x0c	; 12
      002B08 12                    2594 	.db #0x12	; 18
      002B09 00                    2595 	.db #0x00	; 0
      002B0A 12                    2596 	.db #0x12	; 18
      002B0B 12                    2597 	.db #0x12	; 18
      002B0C 12                    2598 	.db #0x12	; 18
      002B0D 1A                    2599 	.db #0x1a	; 26
      002B0E 14                    2600 	.db #0x14	; 20
      002B0F 00                    2601 	.db #0x00	; 0
      002B10 30                    2602 	.db #0x30	; 48	'0'
      002B11 00                    2603 	.db #0x00	; 0
      002B12 1C                    2604 	.db #0x1c	; 28
      002B13 22                    2605 	.db #0x22	; 34
      002B14 1E                    2606 	.db #0x1e	; 30
      002B15 02                    2607 	.db #0x02	; 2
      002B16 1C                    2608 	.db #0x1c	; 28
      002B17 00                    2609 	.db #0x00	; 0
      002B18 1C                    2610 	.db #0x1c	; 28
      002B19 00                    2611 	.db #0x00	; 0
      002B1A 1C                    2612 	.db #0x1c	; 28
      002B1B 20                    2613 	.db #0x20	; 32
      002B1C 3C                    2614 	.db #0x3c	; 60
      002B1D 22                    2615 	.db #0x22	; 34
      002B1E 3C                    2616 	.db #0x3c	; 60
      002B1F 00                    2617 	.db #0x00	; 0
      002B20 14                    2618 	.db #0x14	; 20
      002B21 00                    2619 	.db #0x00	; 0
      002B22 1C                    2620 	.db #0x1c	; 28
      002B23 20                    2621 	.db #0x20	; 32
      002B24 3C                    2622 	.db #0x3c	; 60
      002B25 22                    2623 	.db #0x22	; 34
      002B26 3C                    2624 	.db #0x3c	; 60
      002B27 00                    2625 	.db #0x00	; 0
      002B28 0C                    2626 	.db #0x0c	; 12
      002B29 00                    2627 	.db #0x00	; 0
      002B2A 1C                    2628 	.db #0x1c	; 28
      002B2B 20                    2629 	.db #0x20	; 32
      002B2C 3C                    2630 	.db #0x3c	; 60
      002B2D 22                    2631 	.db #0x22	; 34
      002B2E 3C                    2632 	.db #0x3c	; 60
      002B2F 00                    2633 	.db #0x00	; 0
      002B30 1C                    2634 	.db #0x1c	; 28
      002B31 14                    2635 	.db #0x14	; 20
      002B32 1C                    2636 	.db #0x1c	; 28
      002B33 20                    2637 	.db #0x20	; 32
      002B34 3C                    2638 	.db #0x3c	; 60
      002B35 22                    2639 	.db #0x22	; 34
      002B36 3C                    2640 	.db #0x3c	; 60
      002B37 00                    2641 	.db #0x00	; 0
      002B38 00                    2642 	.db #0x00	; 0
      002B39 1C                    2643 	.db #0x1c	; 28
      002B3A 22                    2644 	.db #0x22	; 34
      002B3B 02                    2645 	.db #0x02	; 2
      002B3C 22                    2646 	.db #0x22	; 34
      002B3D 1C                    2647 	.db #0x1c	; 28
      002B3E 08                    2648 	.db #0x08	; 8
      002B3F 0C                    2649 	.db #0x0c	; 12
      002B40 1C                    2650 	.db #0x1c	; 28
      002B41 00                    2651 	.db #0x00	; 0
      002B42 1C                    2652 	.db #0x1c	; 28
      002B43 22                    2653 	.db #0x22	; 34
      002B44 1E                    2654 	.db #0x1e	; 30
      002B45 02                    2655 	.db #0x02	; 2
      002B46 1C                    2656 	.db #0x1c	; 28
      002B47 00                    2657 	.db #0x00	; 0
      002B48 14                    2658 	.db #0x14	; 20
      002B49 00                    2659 	.db #0x00	; 0
      002B4A 1C                    2660 	.db #0x1c	; 28
      002B4B 22                    2661 	.db #0x22	; 34
      002B4C 1E                    2662 	.db #0x1e	; 30
      002B4D 02                    2663 	.db #0x02	; 2
      002B4E 1C                    2664 	.db #0x1c	; 28
      002B4F 00                    2665 	.db #0x00	; 0
      002B50 0C                    2666 	.db #0x0c	; 12
      002B51 00                    2667 	.db #0x00	; 0
      002B52 1C                    2668 	.db #0x1c	; 28
      002B53 22                    2669 	.db #0x22	; 34
      002B54 1E                    2670 	.db #0x1e	; 30
      002B55 02                    2671 	.db #0x02	; 2
      002B56 1C                    2672 	.db #0x1c	; 28
      002B57 00                    2673 	.db #0x00	; 0
      002B58 14                    2674 	.db #0x14	; 20
      002B59 00                    2675 	.db #0x00	; 0
      002B5A 08                    2676 	.db #0x08	; 8
      002B5B 08                    2677 	.db #0x08	; 8
      002B5C 08                    2678 	.db #0x08	; 8
      002B5D 08                    2679 	.db #0x08	; 8
      002B5E 18                    2680 	.db #0x18	; 24
      002B5F 00                    2681 	.db #0x00	; 0
      002B60 08                    2682 	.db #0x08	; 8
      002B61 14                    2683 	.db #0x14	; 20
      002B62 00                    2684 	.db #0x00	; 0
      002B63 08                    2685 	.db #0x08	; 8
      002B64 08                    2686 	.db #0x08	; 8
      002B65 08                    2687 	.db #0x08	; 8
      002B66 18                    2688 	.db #0x18	; 24
      002B67 00                    2689 	.db #0x00	; 0
      002B68 04                    2690 	.db #0x04	; 4
      002B69 00                    2691 	.db #0x00	; 0
      002B6A 08                    2692 	.db #0x08	; 8
      002B6B 08                    2693 	.db #0x08	; 8
      002B6C 08                    2694 	.db #0x08	; 8
      002B6D 08                    2695 	.db #0x08	; 8
      002B6E 18                    2696 	.db #0x18	; 24
      002B6F 00                    2697 	.db #0x00	; 0
      002B70 14                    2698 	.db #0x14	; 20
      002B71 00                    2699 	.db #0x00	; 0
      002B72 08                    2700 	.db #0x08	; 8
      002B73 14                    2701 	.db #0x14	; 20
      002B74 22                    2702 	.db #0x22	; 34
      002B75 3E                    2703 	.db #0x3e	; 62
      002B76 22                    2704 	.db #0x22	; 34
      002B77 00                    2705 	.db #0x00	; 0
      002B78 1C                    2706 	.db #0x1c	; 28
      002B79 14                    2707 	.db #0x14	; 20
      002B7A 1C                    2708 	.db #0x1c	; 28
      002B7B 36                    2709 	.db #0x36	; 54	'6'
      002B7C 22                    2710 	.db #0x22	; 34
      002B7D 3E                    2711 	.db #0x3e	; 62
      002B7E 22                    2712 	.db #0x22	; 34
      002B7F 00                    2713 	.db #0x00	; 0
      002B80 30                    2714 	.db #0x30	; 48	'0'
      002B81 00                    2715 	.db #0x00	; 0
      002B82 3E                    2716 	.db #0x3e	; 62
      002B83 02                    2717 	.db #0x02	; 2
      002B84 1E                    2718 	.db #0x1e	; 30
      002B85 02                    2719 	.db #0x02	; 2
      002B86 3E                    2720 	.db #0x3e	; 62
      002B87 00                    2721 	.db #0x00	; 0
      002B88 00                    2722 	.db #0x00	; 0
      002B89 00                    2723 	.db #0x00	; 0
      002B8A 1E                    2724 	.db #0x1e	; 30
      002B8B 28                    2725 	.db #0x28	; 40
      002B8C 3E                    2726 	.db #0x3e	; 62
      002B8D 0A                    2727 	.db #0x0a	; 10
      002B8E 3C                    2728 	.db #0x3c	; 60
      002B8F 00                    2729 	.db #0x00	; 0
      002B90 3C                    2730 	.db #0x3c	; 60
      002B91 0A                    2731 	.db #0x0a	; 10
      002B92 0A                    2732 	.db #0x0a	; 10
      002B93 3E                    2733 	.db #0x3e	; 62
      002B94 0A                    2734 	.db #0x0a	; 10
      002B95 0A                    2735 	.db #0x0a	; 10
      002B96 3A                    2736 	.db #0x3a	; 58
      002B97 00                    2737 	.db #0x00	; 0
      002B98 1C                    2738 	.db #0x1c	; 28
      002B99 00                    2739 	.db #0x00	; 0
      002B9A 0C                    2740 	.db #0x0c	; 12
      002B9B 12                    2741 	.db #0x12	; 18
      002B9C 12                    2742 	.db #0x12	; 18
      002B9D 12                    2743 	.db #0x12	; 18
      002B9E 0C                    2744 	.db #0x0c	; 12
      002B9F 00                    2745 	.db #0x00	; 0
      002BA0 14                    2746 	.db #0x14	; 20
      002BA1 00                    2747 	.db #0x00	; 0
      002BA2 0C                    2748 	.db #0x0c	; 12
      002BA3 12                    2749 	.db #0x12	; 18
      002BA4 12                    2750 	.db #0x12	; 18
      002BA5 12                    2751 	.db #0x12	; 18
      002BA6 0C                    2752 	.db #0x0c	; 12
      002BA7 00                    2753 	.db #0x00	; 0
      002BA8 06                    2754 	.db #0x06	; 6
      002BA9 00                    2755 	.db #0x00	; 0
      002BAA 0C                    2756 	.db #0x0c	; 12
      002BAB 12                    2757 	.db #0x12	; 18
      002BAC 12                    2758 	.db #0x12	; 18
      002BAD 12                    2759 	.db #0x12	; 18
      002BAE 0C                    2760 	.db #0x0c	; 12
      002BAF 00                    2761 	.db #0x00	; 0
      002BB0 1C                    2762 	.db #0x1c	; 28
      002BB1 00                    2763 	.db #0x00	; 0
      002BB2 12                    2764 	.db #0x12	; 18
      002BB3 12                    2765 	.db #0x12	; 18
      002BB4 12                    2766 	.db #0x12	; 18
      002BB5 1A                    2767 	.db #0x1a	; 26
      002BB6 14                    2768 	.db #0x14	; 20
      002BB7 00                    2769 	.db #0x00	; 0
      002BB8 06                    2770 	.db #0x06	; 6
      002BB9 00                    2771 	.db #0x00	; 0
      002BBA 12                    2772 	.db #0x12	; 18
      002BBB 12                    2773 	.db #0x12	; 18
      002BBC 12                    2774 	.db #0x12	; 18
      002BBD 1A                    2775 	.db #0x1a	; 26
      002BBE 14                    2776 	.db #0x14	; 20
      002BBF 00                    2777 	.db #0x00	; 0
      002BC0 14                    2778 	.db #0x14	; 20
      002BC1 00                    2779 	.db #0x00	; 0
      002BC2 12                    2780 	.db #0x12	; 18
      002BC3 12                    2781 	.db #0x12	; 18
      002BC4 12                    2782 	.db #0x12	; 18
      002BC5 1C                    2783 	.db #0x1c	; 28
      002BC6 08                    2784 	.db #0x08	; 8
      002BC7 06                    2785 	.db #0x06	; 6
      002BC8 12                    2786 	.db #0x12	; 18
      002BC9 0C                    2787 	.db #0x0c	; 12
      002BCA 12                    2788 	.db #0x12	; 18
      002BCB 12                    2789 	.db #0x12	; 18
      002BCC 12                    2790 	.db #0x12	; 18
      002BCD 12                    2791 	.db #0x12	; 18
      002BCE 0C                    2792 	.db #0x0c	; 12
      002BCF 00                    2793 	.db #0x00	; 0
      002BD0 14                    2794 	.db #0x14	; 20
      002BD1 00                    2795 	.db #0x00	; 0
      002BD2 12                    2796 	.db #0x12	; 18
      002BD3 12                    2797 	.db #0x12	; 18
      002BD4 12                    2798 	.db #0x12	; 18
      002BD5 12                    2799 	.db #0x12	; 18
      002BD6 0C                    2800 	.db #0x0c	; 12
      002BD7 00                    2801 	.db #0x00	; 0
      002BD8 00                    2802 	.db #0x00	; 0
      002BD9 08                    2803 	.db #0x08	; 8
      002BDA 1C                    2804 	.db #0x1c	; 28
      002BDB 02                    2805 	.db #0x02	; 2
      002BDC 02                    2806 	.db #0x02	; 2
      002BDD 1C                    2807 	.db #0x1c	; 28
      002BDE 08                    2808 	.db #0x08	; 8
      002BDF 00                    2809 	.db #0x00	; 0
      002BE0 18                    2810 	.db #0x18	; 24
      002BE1 24                    2811 	.db #0x24	; 36
      002BE2 04                    2812 	.db #0x04	; 4
      002BE3 1E                    2813 	.db #0x1e	; 30
      002BE4 04                    2814 	.db #0x04	; 4
      002BE5 24                    2815 	.db #0x24	; 36
      002BE6 3A                    2816 	.db #0x3a	; 58
      002BE7 00                    2817 	.db #0x00	; 0
      002BE8 22                    2818 	.db #0x22	; 34
      002BE9 14                    2819 	.db #0x14	; 20
      002BEA 08                    2820 	.db #0x08	; 8
      002BEB 3E                    2821 	.db #0x3e	; 62
      002BEC 08                    2822 	.db #0x08	; 8
      002BED 3E                    2823 	.db #0x3e	; 62
      002BEE 08                    2824 	.db #0x08	; 8
      002BEF 00                    2825 	.db #0x00	; 0
      002BF0 06                    2826 	.db #0x06	; 6
      002BF1 0A                    2827 	.db #0x0a	; 10
      002BF2 0A                    2828 	.db #0x0a	; 10
      002BF3 16                    2829 	.db #0x16	; 22
      002BF4 3A                    2830 	.db #0x3a	; 58
      002BF5 12                    2831 	.db #0x12	; 18
      002BF6 12                    2832 	.db #0x12	; 18
      002BF7 00                    2833 	.db #0x00	; 0
      002BF8 10                    2834 	.db #0x10	; 16
      002BF9 28                    2835 	.db #0x28	; 40
      002BFA 08                    2836 	.db #0x08	; 8
      002BFB 1C                    2837 	.db #0x1c	; 28
      002BFC 08                    2838 	.db #0x08	; 8
      002BFD 08                    2839 	.db #0x08	; 8
      002BFE 0A                    2840 	.db #0x0a	; 10
      002BFF 04                    2841 	.db #0x04	; 4
      002C00 18                    2842 	.db #0x18	; 24
      002C01 00                    2843 	.db #0x00	; 0
      002C02 1C                    2844 	.db #0x1c	; 28
      002C03 20                    2845 	.db #0x20	; 32
      002C04 3C                    2846 	.db #0x3c	; 60
      002C05 22                    2847 	.db #0x22	; 34
      002C06 3C                    2848 	.db #0x3c	; 60
      002C07 00                    2849 	.db #0x00	; 0
      002C08 18                    2850 	.db #0x18	; 24
      002C09 00                    2851 	.db #0x00	; 0
      002C0A 08                    2852 	.db #0x08	; 8
      002C0B 08                    2853 	.db #0x08	; 8
      002C0C 08                    2854 	.db #0x08	; 8
      002C0D 08                    2855 	.db #0x08	; 8
      002C0E 18                    2856 	.db #0x18	; 24
      002C0F 00                    2857 	.db #0x00	; 0
      002C10 18                    2858 	.db #0x18	; 24
      002C11 00                    2859 	.db #0x00	; 0
      002C12 0C                    2860 	.db #0x0c	; 12
      002C13 12                    2861 	.db #0x12	; 18
      002C14 12                    2862 	.db #0x12	; 18
      002C15 12                    2863 	.db #0x12	; 18
      002C16 0C                    2864 	.db #0x0c	; 12
      002C17 00                    2865 	.db #0x00	; 0
      002C18 18                    2866 	.db #0x18	; 24
      002C19 00                    2867 	.db #0x00	; 0
      002C1A 12                    2868 	.db #0x12	; 18
      002C1B 12                    2869 	.db #0x12	; 18
      002C1C 12                    2870 	.db #0x12	; 18
      002C1D 1A                    2871 	.db #0x1a	; 26
      002C1E 14                    2872 	.db #0x14	; 20
      002C1F 00                    2873 	.db #0x00	; 0
      002C20 14                    2874 	.db #0x14	; 20
      002C21 0A                    2875 	.db #0x0a	; 10
      002C22 00                    2876 	.db #0x00	; 0
      002C23 0E                    2877 	.db #0x0e	; 14
      002C24 12                    2878 	.db #0x12	; 18
      002C25 12                    2879 	.db #0x12	; 18
      002C26 12                    2880 	.db #0x12	; 18
      002C27 00                    2881 	.db #0x00	; 0
      002C28 14                    2882 	.db #0x14	; 20
      002C29 0A                    2883 	.db #0x0a	; 10
      002C2A 00                    2884 	.db #0x00	; 0
      002C2B 12                    2885 	.db #0x12	; 18
      002C2C 16                    2886 	.db #0x16	; 22
      002C2D 1A                    2887 	.db #0x1a	; 26
      002C2E 12                    2888 	.db #0x12	; 18
      002C2F 00                    2889 	.db #0x00	; 0
      002C30 1C                    2890 	.db #0x1c	; 28
      002C31 20                    2891 	.db #0x20	; 32
      002C32 3C                    2892 	.db #0x3c	; 60
      002C33 22                    2893 	.db #0x22	; 34
      002C34 3C                    2894 	.db #0x3c	; 60
      002C35 00                    2895 	.db #0x00	; 0
      002C36 3C                    2896 	.db #0x3c	; 60
      002C37 00                    2897 	.db #0x00	; 0
      002C38 0C                    2898 	.db #0x0c	; 12
      002C39 12                    2899 	.db #0x12	; 18
      002C3A 12                    2900 	.db #0x12	; 18
      002C3B 12                    2901 	.db #0x12	; 18
      002C3C 0C                    2902 	.db #0x0c	; 12
      002C3D 00                    2903 	.db #0x00	; 0
      002C3E 1E                    2904 	.db #0x1e	; 30
      002C3F 00                    2905 	.db #0x00	; 0
      002C40 08                    2906 	.db #0x08	; 8
      002C41 00                    2907 	.db #0x00	; 0
      002C42 08                    2908 	.db #0x08	; 8
      002C43 0C                    2909 	.db #0x0c	; 12
      002C44 02                    2910 	.db #0x02	; 2
      002C45 22                    2911 	.db #0x22	; 34
      002C46 1C                    2912 	.db #0x1c	; 28
      002C47 00                    2913 	.db #0x00	; 0
      002C48 00                    2914 	.db #0x00	; 0
      002C49 00                    2915 	.db #0x00	; 0
      002C4A 3E                    2916 	.db #0x3e	; 62
      002C4B 02                    2917 	.db #0x02	; 2
      002C4C 02                    2918 	.db #0x02	; 2
      002C4D 02                    2919 	.db #0x02	; 2
      002C4E 00                    2920 	.db #0x00	; 0
      002C4F 00                    2921 	.db #0x00	; 0
      002C50 00                    2922 	.db #0x00	; 0
      002C51 00                    2923 	.db #0x00	; 0
      002C52 3F                    2924 	.db #0x3f	; 63
      002C53 20                    2925 	.db #0x20	; 32
      002C54 20                    2926 	.db #0x20	; 32
      002C55 00                    2927 	.db #0x00	; 0
      002C56 00                    2928 	.db #0x00	; 0
      002C57 00                    2929 	.db #0x00	; 0
      002C58 02                    2930 	.db #0x02	; 2
      002C59 12                    2931 	.db #0x12	; 18
      002C5A 0A                    2932 	.db #0x0a	; 10
      002C5B 1C                    2933 	.db #0x1c	; 28
      002C5C 22                    2934 	.db #0x22	; 34
      002C5D 10                    2935 	.db #0x10	; 16
      002C5E 38                    2936 	.db #0x38	; 56	'8'
      002C5F 00                    2937 	.db #0x00	; 0
      002C60 02                    2938 	.db #0x02	; 2
      002C61 12                    2939 	.db #0x12	; 18
      002C62 0A                    2940 	.db #0x0a	; 10
      002C63 34                    2941 	.db #0x34	; 52	'4'
      002C64 2A                    2942 	.db #0x2a	; 42
      002C65 38                    2943 	.db #0x38	; 56	'8'
      002C66 20                    2944 	.db #0x20	; 32
      002C67 00                    2945 	.db #0x00	; 0
      002C68 08                    2946 	.db #0x08	; 8
      002C69 00                    2947 	.db #0x00	; 0
      002C6A 08                    2948 	.db #0x08	; 8
      002C6B 08                    2949 	.db #0x08	; 8
      002C6C 1C                    2950 	.db #0x1c	; 28
      002C6D 1C                    2951 	.db #0x1c	; 28
      002C6E 08                    2952 	.db #0x08	; 8
      002C6F 00                    2953 	.db #0x00	; 0
      002C70 00                    2954 	.db #0x00	; 0
      002C71 00                    2955 	.db #0x00	; 0
      002C72 24                    2956 	.db #0x24	; 36
      002C73 12                    2957 	.db #0x12	; 18
      002C74 24                    2958 	.db #0x24	; 36
      002C75 00                    2959 	.db #0x00	; 0
      002C76 00                    2960 	.db #0x00	; 0
      002C77 00                    2961 	.db #0x00	; 0
      002C78 00                    2962 	.db #0x00	; 0
      002C79 00                    2963 	.db #0x00	; 0
      002C7A 12                    2964 	.db #0x12	; 18
      002C7B 24                    2965 	.db #0x24	; 36
      002C7C 12                    2966 	.db #0x12	; 18
      002C7D 00                    2967 	.db #0x00	; 0
      002C7E 00                    2968 	.db #0x00	; 0
      002C7F 00                    2969 	.db #0x00	; 0
      002C80 2A                    2970 	.db #0x2a	; 42
      002C81 00                    2971 	.db #0x00	; 0
      002C82 15                    2972 	.db #0x15	; 21
      002C83 00                    2973 	.db #0x00	; 0
      002C84 2A                    2974 	.db #0x2a	; 42
      002C85 00                    2975 	.db #0x00	; 0
      002C86 15                    2976 	.db #0x15	; 21
      002C87 00                    2977 	.db #0x00	; 0
      002C88 2A                    2978 	.db #0x2a	; 42
      002C89 15                    2979 	.db #0x15	; 21
      002C8A 2A                    2980 	.db #0x2a	; 42
      002C8B 15                    2981 	.db #0x15	; 21
      002C8C 2A                    2982 	.db #0x2a	; 42
      002C8D 15                    2983 	.db #0x15	; 21
      002C8E 2A                    2984 	.db #0x2a	; 42
      002C8F 15                    2985 	.db #0x15	; 21
      002C90 15                    2986 	.db #0x15	; 21
      002C91 3F                    2987 	.db #0x3f	; 63
      002C92 2A                    2988 	.db #0x2a	; 42
      002C93 3F                    2989 	.db #0x3f	; 63
      002C94 15                    2990 	.db #0x15	; 21
      002C95 3F                    2991 	.db #0x3f	; 63
      002C96 2A                    2992 	.db #0x2a	; 42
      002C97 3F                    2993 	.db #0x3f	; 63
      002C98 08                    2994 	.db #0x08	; 8
      002C99 08                    2995 	.db #0x08	; 8
      002C9A 08                    2996 	.db #0x08	; 8
      002C9B 08                    2997 	.db #0x08	; 8
      002C9C 08                    2998 	.db #0x08	; 8
      002C9D 08                    2999 	.db #0x08	; 8
      002C9E 08                    3000 	.db #0x08	; 8
      002C9F 08                    3001 	.db #0x08	; 8
      002CA0 08                    3002 	.db #0x08	; 8
      002CA1 08                    3003 	.db #0x08	; 8
      002CA2 08                    3004 	.db #0x08	; 8
      002CA3 0F                    3005 	.db #0x0f	; 15
      002CA4 08                    3006 	.db #0x08	; 8
      002CA5 08                    3007 	.db #0x08	; 8
      002CA6 08                    3008 	.db #0x08	; 8
      002CA7 08                    3009 	.db #0x08	; 8
      002CA8 08                    3010 	.db #0x08	; 8
      002CA9 0F                    3011 	.db #0x0f	; 15
      002CAA 08                    3012 	.db #0x08	; 8
      002CAB 0F                    3013 	.db #0x0f	; 15
      002CAC 08                    3014 	.db #0x08	; 8
      002CAD 08                    3015 	.db #0x08	; 8
      002CAE 08                    3016 	.db #0x08	; 8
      002CAF 08                    3017 	.db #0x08	; 8
      002CB0 0A                    3018 	.db #0x0a	; 10
      002CB1 0A                    3019 	.db #0x0a	; 10
      002CB2 0A                    3020 	.db #0x0a	; 10
      002CB3 0B                    3021 	.db #0x0b	; 11
      002CB4 0A                    3022 	.db #0x0a	; 10
      002CB5 0A                    3023 	.db #0x0a	; 10
      002CB6 0A                    3024 	.db #0x0a	; 10
      002CB7 0A                    3025 	.db #0x0a	; 10
      002CB8 00                    3026 	.db #0x00	; 0
      002CB9 00                    3027 	.db #0x00	; 0
      002CBA 00                    3028 	.db #0x00	; 0
      002CBB 0F                    3029 	.db #0x0f	; 15
      002CBC 0A                    3030 	.db #0x0a	; 10
      002CBD 0A                    3031 	.db #0x0a	; 10
      002CBE 0A                    3032 	.db #0x0a	; 10
      002CBF 0A                    3033 	.db #0x0a	; 10
      002CC0 00                    3034 	.db #0x00	; 0
      002CC1 0F                    3035 	.db #0x0f	; 15
      002CC2 08                    3036 	.db #0x08	; 8
      002CC3 0F                    3037 	.db #0x0f	; 15
      002CC4 08                    3038 	.db #0x08	; 8
      002CC5 08                    3039 	.db #0x08	; 8
      002CC6 08                    3040 	.db #0x08	; 8
      002CC7 08                    3041 	.db #0x08	; 8
      002CC8 0A                    3042 	.db #0x0a	; 10
      002CC9 0B                    3043 	.db #0x0b	; 11
      002CCA 08                    3044 	.db #0x08	; 8
      002CCB 0B                    3045 	.db #0x0b	; 11
      002CCC 0A                    3046 	.db #0x0a	; 10
      002CCD 0A                    3047 	.db #0x0a	; 10
      002CCE 0A                    3048 	.db #0x0a	; 10
      002CCF 0A                    3049 	.db #0x0a	; 10
      002CD0 0A                    3050 	.db #0x0a	; 10
      002CD1 0A                    3051 	.db #0x0a	; 10
      002CD2 0A                    3052 	.db #0x0a	; 10
      002CD3 0A                    3053 	.db #0x0a	; 10
      002CD4 0A                    3054 	.db #0x0a	; 10
      002CD5 0A                    3055 	.db #0x0a	; 10
      002CD6 0A                    3056 	.db #0x0a	; 10
      002CD7 0A                    3057 	.db #0x0a	; 10
      002CD8 00                    3058 	.db #0x00	; 0
      002CD9 0F                    3059 	.db #0x0f	; 15
      002CDA 08                    3060 	.db #0x08	; 8
      002CDB 0B                    3061 	.db #0x0b	; 11
      002CDC 0A                    3062 	.db #0x0a	; 10
      002CDD 0A                    3063 	.db #0x0a	; 10
      002CDE 0A                    3064 	.db #0x0a	; 10
      002CDF 0A                    3065 	.db #0x0a	; 10
      002CE0 0A                    3066 	.db #0x0a	; 10
      002CE1 0B                    3067 	.db #0x0b	; 11
      002CE2 08                    3068 	.db #0x08	; 8
      002CE3 0F                    3069 	.db #0x0f	; 15
      002CE4 00                    3070 	.db #0x00	; 0
      002CE5 00                    3071 	.db #0x00	; 0
      002CE6 00                    3072 	.db #0x00	; 0
      002CE7 00                    3073 	.db #0x00	; 0
      002CE8 0A                    3074 	.db #0x0a	; 10
      002CE9 0A                    3075 	.db #0x0a	; 10
      002CEA 0A                    3076 	.db #0x0a	; 10
      002CEB 0F                    3077 	.db #0x0f	; 15
      002CEC 00                    3078 	.db #0x00	; 0
      002CED 00                    3079 	.db #0x00	; 0
      002CEE 00                    3080 	.db #0x00	; 0
      002CEF 00                    3081 	.db #0x00	; 0
      002CF0 08                    3082 	.db #0x08	; 8
      002CF1 0F                    3083 	.db #0x0f	; 15
      002CF2 08                    3084 	.db #0x08	; 8
      002CF3 0F                    3085 	.db #0x0f	; 15
      002CF4 00                    3086 	.db #0x00	; 0
      002CF5 00                    3087 	.db #0x00	; 0
      002CF6 00                    3088 	.db #0x00	; 0
      002CF7 00                    3089 	.db #0x00	; 0
      002CF8 00                    3090 	.db #0x00	; 0
      002CF9 00                    3091 	.db #0x00	; 0
      002CFA 00                    3092 	.db #0x00	; 0
      002CFB 0F                    3093 	.db #0x0f	; 15
      002CFC 08                    3094 	.db #0x08	; 8
      002CFD 08                    3095 	.db #0x08	; 8
      002CFE 08                    3096 	.db #0x08	; 8
      002CFF 08                    3097 	.db #0x08	; 8
      002D00 08                    3098 	.db #0x08	; 8
      002D01 08                    3099 	.db #0x08	; 8
      002D02 08                    3100 	.db #0x08	; 8
      002D03 38                    3101 	.db #0x38	; 56	'8'
      002D04 00                    3102 	.db #0x00	; 0
      002D05 00                    3103 	.db #0x00	; 0
      002D06 00                    3104 	.db #0x00	; 0
      002D07 00                    3105 	.db #0x00	; 0
      002D08 08                    3106 	.db #0x08	; 8
      002D09 08                    3107 	.db #0x08	; 8
      002D0A 08                    3108 	.db #0x08	; 8
      002D0B 3F                    3109 	.db #0x3f	; 63
      002D0C 00                    3110 	.db #0x00	; 0
      002D0D 00                    3111 	.db #0x00	; 0
      002D0E 00                    3112 	.db #0x00	; 0
      002D0F 00                    3113 	.db #0x00	; 0
      002D10 00                    3114 	.db #0x00	; 0
      002D11 00                    3115 	.db #0x00	; 0
      002D12 00                    3116 	.db #0x00	; 0
      002D13 3F                    3117 	.db #0x3f	; 63
      002D14 08                    3118 	.db #0x08	; 8
      002D15 08                    3119 	.db #0x08	; 8
      002D16 08                    3120 	.db #0x08	; 8
      002D17 08                    3121 	.db #0x08	; 8
      002D18 08                    3122 	.db #0x08	; 8
      002D19 08                    3123 	.db #0x08	; 8
      002D1A 08                    3124 	.db #0x08	; 8
      002D1B 38                    3125 	.db #0x38	; 56	'8'
      002D1C 08                    3126 	.db #0x08	; 8
      002D1D 08                    3127 	.db #0x08	; 8
      002D1E 08                    3128 	.db #0x08	; 8
      002D1F 08                    3129 	.db #0x08	; 8
      002D20 00                    3130 	.db #0x00	; 0
      002D21 00                    3131 	.db #0x00	; 0
      002D22 00                    3132 	.db #0x00	; 0
      002D23 3F                    3133 	.db #0x3f	; 63
      002D24 00                    3134 	.db #0x00	; 0
      002D25 00                    3135 	.db #0x00	; 0
      002D26 00                    3136 	.db #0x00	; 0
      002D27 00                    3137 	.db #0x00	; 0
      002D28 08                    3138 	.db #0x08	; 8
      002D29 08                    3139 	.db #0x08	; 8
      002D2A 08                    3140 	.db #0x08	; 8
      002D2B 3F                    3141 	.db #0x3f	; 63
      002D2C 08                    3142 	.db #0x08	; 8
      002D2D 08                    3143 	.db #0x08	; 8
      002D2E 08                    3144 	.db #0x08	; 8
      002D2F 08                    3145 	.db #0x08	; 8
      002D30 08                    3146 	.db #0x08	; 8
      002D31 38                    3147 	.db #0x38	; 56	'8'
      002D32 08                    3148 	.db #0x08	; 8
      002D33 38                    3149 	.db #0x38	; 56	'8'
      002D34 08                    3150 	.db #0x08	; 8
      002D35 08                    3151 	.db #0x08	; 8
      002D36 08                    3152 	.db #0x08	; 8
      002D37 08                    3153 	.db #0x08	; 8
      002D38 0A                    3154 	.db #0x0a	; 10
      002D39 0A                    3155 	.db #0x0a	; 10
      002D3A 0A                    3156 	.db #0x0a	; 10
      002D3B 3A                    3157 	.db #0x3a	; 58
      002D3C 0A                    3158 	.db #0x0a	; 10
      002D3D 0A                    3159 	.db #0x0a	; 10
      002D3E 0A                    3160 	.db #0x0a	; 10
      002D3F 0A                    3161 	.db #0x0a	; 10
      002D40 0A                    3162 	.db #0x0a	; 10
      002D41 3A                    3163 	.db #0x3a	; 58
      002D42 02                    3164 	.db #0x02	; 2
      002D43 3E                    3165 	.db #0x3e	; 62
      002D44 00                    3166 	.db #0x00	; 0
      002D45 00                    3167 	.db #0x00	; 0
      002D46 00                    3168 	.db #0x00	; 0
      002D47 00                    3169 	.db #0x00	; 0
      002D48 00                    3170 	.db #0x00	; 0
      002D49 3E                    3171 	.db #0x3e	; 62
      002D4A 02                    3172 	.db #0x02	; 2
      002D4B 3A                    3173 	.db #0x3a	; 58
      002D4C 0A                    3174 	.db #0x0a	; 10
      002D4D 0A                    3175 	.db #0x0a	; 10
      002D4E 0A                    3176 	.db #0x0a	; 10
      002D4F 0A                    3177 	.db #0x0a	; 10
      002D50 0A                    3178 	.db #0x0a	; 10
      002D51 3B                    3179 	.db #0x3b	; 59
      002D52 00                    3180 	.db #0x00	; 0
      002D53 3F                    3181 	.db #0x3f	; 63
      002D54 00                    3182 	.db #0x00	; 0
      002D55 00                    3183 	.db #0x00	; 0
      002D56 00                    3184 	.db #0x00	; 0
      002D57 00                    3185 	.db #0x00	; 0
      002D58 00                    3186 	.db #0x00	; 0
      002D59 3F                    3187 	.db #0x3f	; 63
      002D5A 00                    3188 	.db #0x00	; 0
      002D5B 3B                    3189 	.db #0x3b	; 59
      002D5C 0A                    3190 	.db #0x0a	; 10
      002D5D 0A                    3191 	.db #0x0a	; 10
      002D5E 0A                    3192 	.db #0x0a	; 10
      002D5F 0A                    3193 	.db #0x0a	; 10
      002D60 0A                    3194 	.db #0x0a	; 10
      002D61 3A                    3195 	.db #0x3a	; 58
      002D62 02                    3196 	.db #0x02	; 2
      002D63 3A                    3197 	.db #0x3a	; 58
      002D64 0A                    3198 	.db #0x0a	; 10
      002D65 0A                    3199 	.db #0x0a	; 10
      002D66 0A                    3200 	.db #0x0a	; 10
      002D67 0A                    3201 	.db #0x0a	; 10
      002D68 00                    3202 	.db #0x00	; 0
      002D69 3F                    3203 	.db #0x3f	; 63
      002D6A 00                    3204 	.db #0x00	; 0
      002D6B 3F                    3205 	.db #0x3f	; 63
      002D6C 00                    3206 	.db #0x00	; 0
      002D6D 00                    3207 	.db #0x00	; 0
      002D6E 00                    3208 	.db #0x00	; 0
      002D6F 00                    3209 	.db #0x00	; 0
      002D70 0A                    3210 	.db #0x0a	; 10
      002D71 3B                    3211 	.db #0x3b	; 59
      002D72 00                    3212 	.db #0x00	; 0
      002D73 3B                    3213 	.db #0x3b	; 59
      002D74 0A                    3214 	.db #0x0a	; 10
      002D75 0A                    3215 	.db #0x0a	; 10
      002D76 0A                    3216 	.db #0x0a	; 10
      002D77 0A                    3217 	.db #0x0a	; 10
      002D78 08                    3218 	.db #0x08	; 8
      002D79 3F                    3219 	.db #0x3f	; 63
      002D7A 00                    3220 	.db #0x00	; 0
      002D7B 3F                    3221 	.db #0x3f	; 63
      002D7C 00                    3222 	.db #0x00	; 0
      002D7D 00                    3223 	.db #0x00	; 0
      002D7E 00                    3224 	.db #0x00	; 0
      002D7F 00                    3225 	.db #0x00	; 0
      002D80 0A                    3226 	.db #0x0a	; 10
      002D81 0A                    3227 	.db #0x0a	; 10
      002D82 0A                    3228 	.db #0x0a	; 10
      002D83 3F                    3229 	.db #0x3f	; 63
      002D84 00                    3230 	.db #0x00	; 0
      002D85 00                    3231 	.db #0x00	; 0
      002D86 00                    3232 	.db #0x00	; 0
      002D87 00                    3233 	.db #0x00	; 0
      002D88 00                    3234 	.db #0x00	; 0
      002D89 3F                    3235 	.db #0x3f	; 63
      002D8A 00                    3236 	.db #0x00	; 0
      002D8B 3F                    3237 	.db #0x3f	; 63
      002D8C 08                    3238 	.db #0x08	; 8
      002D8D 08                    3239 	.db #0x08	; 8
      002D8E 08                    3240 	.db #0x08	; 8
      002D8F 08                    3241 	.db #0x08	; 8
      002D90 00                    3242 	.db #0x00	; 0
      002D91 00                    3243 	.db #0x00	; 0
      002D92 00                    3244 	.db #0x00	; 0
      002D93 3F                    3245 	.db #0x3f	; 63
      002D94 0A                    3246 	.db #0x0a	; 10
      002D95 0A                    3247 	.db #0x0a	; 10
      002D96 0A                    3248 	.db #0x0a	; 10
      002D97 0A                    3249 	.db #0x0a	; 10
      002D98 0A                    3250 	.db #0x0a	; 10
      002D99 0A                    3251 	.db #0x0a	; 10
      002D9A 0A                    3252 	.db #0x0a	; 10
      002D9B 3E                    3253 	.db #0x3e	; 62
      002D9C 00                    3254 	.db #0x00	; 0
      002D9D 00                    3255 	.db #0x00	; 0
      002D9E 00                    3256 	.db #0x00	; 0
      002D9F 00                    3257 	.db #0x00	; 0
      002DA0 08                    3258 	.db #0x08	; 8
      002DA1 38                    3259 	.db #0x38	; 56	'8'
      002DA2 08                    3260 	.db #0x08	; 8
      002DA3 38                    3261 	.db #0x38	; 56	'8'
      002DA4 00                    3262 	.db #0x00	; 0
      002DA5 00                    3263 	.db #0x00	; 0
      002DA6 00                    3264 	.db #0x00	; 0
      002DA7 00                    3265 	.db #0x00	; 0
      002DA8 00                    3266 	.db #0x00	; 0
      002DA9 38                    3267 	.db #0x38	; 56	'8'
      002DAA 08                    3268 	.db #0x08	; 8
      002DAB 38                    3269 	.db #0x38	; 56	'8'
      002DAC 08                    3270 	.db #0x08	; 8
      002DAD 08                    3271 	.db #0x08	; 8
      002DAE 08                    3272 	.db #0x08	; 8
      002DAF 08                    3273 	.db #0x08	; 8
      002DB0 00                    3274 	.db #0x00	; 0
      002DB1 00                    3275 	.db #0x00	; 0
      002DB2 00                    3276 	.db #0x00	; 0
      002DB3 3E                    3277 	.db #0x3e	; 62
      002DB4 0A                    3278 	.db #0x0a	; 10
      002DB5 0A                    3279 	.db #0x0a	; 10
      002DB6 0A                    3280 	.db #0x0a	; 10
      002DB7 0A                    3281 	.db #0x0a	; 10
      002DB8 0A                    3282 	.db #0x0a	; 10
      002DB9 0A                    3283 	.db #0x0a	; 10
      002DBA 0A                    3284 	.db #0x0a	; 10
      002DBB 3B                    3285 	.db #0x3b	; 59
      002DBC 0A                    3286 	.db #0x0a	; 10
      002DBD 0A                    3287 	.db #0x0a	; 10
      002DBE 0A                    3288 	.db #0x0a	; 10
      002DBF 0A                    3289 	.db #0x0a	; 10
      002DC0 08                    3290 	.db #0x08	; 8
      002DC1 3F                    3291 	.db #0x3f	; 63
      002DC2 00                    3292 	.db #0x00	; 0
      002DC3 3F                    3293 	.db #0x3f	; 63
      002DC4 08                    3294 	.db #0x08	; 8
      002DC5 08                    3295 	.db #0x08	; 8
      002DC6 08                    3296 	.db #0x08	; 8
      002DC7 08                    3297 	.db #0x08	; 8
      002DC8 08                    3298 	.db #0x08	; 8
      002DC9 08                    3299 	.db #0x08	; 8
      002DCA 08                    3300 	.db #0x08	; 8
      002DCB 0F                    3301 	.db #0x0f	; 15
      002DCC 00                    3302 	.db #0x00	; 0
      002DCD 00                    3303 	.db #0x00	; 0
      002DCE 00                    3304 	.db #0x00	; 0
      002DCF 00                    3305 	.db #0x00	; 0
      002DD0 00                    3306 	.db #0x00	; 0
      002DD1 00                    3307 	.db #0x00	; 0
      002DD2 00                    3308 	.db #0x00	; 0
      002DD3 38                    3309 	.db #0x38	; 56	'8'
      002DD4 08                    3310 	.db #0x08	; 8
      002DD5 08                    3311 	.db #0x08	; 8
      002DD6 08                    3312 	.db #0x08	; 8
      002DD7 08                    3313 	.db #0x08	; 8
      002DD8 3F                    3314 	.db #0x3f	; 63
      002DD9 3F                    3315 	.db #0x3f	; 63
      002DDA 3F                    3316 	.db #0x3f	; 63
      002DDB 3F                    3317 	.db #0x3f	; 63
      002DDC 3F                    3318 	.db #0x3f	; 63
      002DDD 3F                    3319 	.db #0x3f	; 63
      002DDE 3F                    3320 	.db #0x3f	; 63
      002DDF 3F                    3321 	.db #0x3f	; 63
      002DE0 00                    3322 	.db #0x00	; 0
      002DE1 00                    3323 	.db #0x00	; 0
      002DE2 00                    3324 	.db #0x00	; 0
      002DE3 00                    3325 	.db #0x00	; 0
      002DE4 3F                    3326 	.db #0x3f	; 63
      002DE5 3F                    3327 	.db #0x3f	; 63
      002DE6 3F                    3328 	.db #0x3f	; 63
      002DE7 3F                    3329 	.db #0x3f	; 63
      002DE8 07                    3330 	.db #0x07	; 7
      002DE9 07                    3331 	.db #0x07	; 7
      002DEA 07                    3332 	.db #0x07	; 7
      002DEB 07                    3333 	.db #0x07	; 7
      002DEC 07                    3334 	.db #0x07	; 7
      002DED 07                    3335 	.db #0x07	; 7
      002DEE 07                    3336 	.db #0x07	; 7
      002DEF 07                    3337 	.db #0x07	; 7
      002DF0 38                    3338 	.db #0x38	; 56	'8'
      002DF1 38                    3339 	.db #0x38	; 56	'8'
      002DF2 38                    3340 	.db #0x38	; 56	'8'
      002DF3 38                    3341 	.db #0x38	; 56	'8'
      002DF4 38                    3342 	.db #0x38	; 56	'8'
      002DF5 38                    3343 	.db #0x38	; 56	'8'
      002DF6 38                    3344 	.db #0x38	; 56	'8'
      002DF7 38                    3345 	.db #0x38	; 56	'8'
      002DF8 3F                    3346 	.db #0x3f	; 63
      002DF9 3F                    3347 	.db #0x3f	; 63
      002DFA 3F                    3348 	.db #0x3f	; 63
      002DFB 3F                    3349 	.db #0x3f	; 63
      002DFC 00                    3350 	.db #0x00	; 0
      002DFD 00                    3351 	.db #0x00	; 0
      002DFE 00                    3352 	.db #0x00	; 0
      002DFF 00                    3353 	.db #0x00	; 0
      002E00 00                    3354 	.db #0x00	; 0
      002E01 00                    3355 	.db #0x00	; 0
      002E02 2C                    3356 	.db #0x2c	; 44
      002E03 12                    3357 	.db #0x12	; 18
      002E04 12                    3358 	.db #0x12	; 18
      002E05 2C                    3359 	.db #0x2c	; 44
      002E06 00                    3360 	.db #0x00	; 0
      002E07 00                    3361 	.db #0x00	; 0
      002E08 00                    3362 	.db #0x00	; 0
      002E09 0E                    3363 	.db #0x0e	; 14
      002E0A 12                    3364 	.db #0x12	; 18
      002E0B 0E                    3365 	.db #0x0e	; 14
      002E0C 12                    3366 	.db #0x12	; 18
      002E0D 12                    3367 	.db #0x12	; 18
      002E0E 0E                    3368 	.db #0x0e	; 14
      002E0F 02                    3369 	.db #0x02	; 2
      002E10 1E                    3370 	.db #0x1e	; 30
      002E11 12                    3371 	.db #0x12	; 18
      002E12 02                    3372 	.db #0x02	; 2
      002E13 02                    3373 	.db #0x02	; 2
      002E14 02                    3374 	.db #0x02	; 2
      002E15 02                    3375 	.db #0x02	; 2
      002E16 02                    3376 	.db #0x02	; 2
      002E17 00                    3377 	.db #0x00	; 0
      002E18 00                    3378 	.db #0x00	; 0
      002E19 3E                    3379 	.db #0x3e	; 62
      002E1A 14                    3380 	.db #0x14	; 20
      002E1B 14                    3381 	.db #0x14	; 20
      002E1C 14                    3382 	.db #0x14	; 20
      002E1D 14                    3383 	.db #0x14	; 20
      002E1E 14                    3384 	.db #0x14	; 20
      002E1F 00                    3385 	.db #0x00	; 0
      002E20 1E                    3386 	.db #0x1e	; 30
      002E21 12                    3387 	.db #0x12	; 18
      002E22 04                    3388 	.db #0x04	; 4
      002E23 08                    3389 	.db #0x08	; 8
      002E24 04                    3390 	.db #0x04	; 4
      002E25 12                    3391 	.db #0x12	; 18
      002E26 1E                    3392 	.db #0x1e	; 30
      002E27 00                    3393 	.db #0x00	; 0
      002E28 00                    3394 	.db #0x00	; 0
      002E29 00                    3395 	.db #0x00	; 0
      002E2A 3C                    3396 	.db #0x3c	; 60
      002E2B 12                    3397 	.db #0x12	; 18
      002E2C 12                    3398 	.db #0x12	; 18
      002E2D 0C                    3399 	.db #0x0c	; 12
      002E2E 00                    3400 	.db #0x00	; 0
      002E2F 00                    3401 	.db #0x00	; 0
      002E30 00                    3402 	.db #0x00	; 0
      002E31 00                    3403 	.db #0x00	; 0
      002E32 12                    3404 	.db #0x12	; 18
      002E33 12                    3405 	.db #0x12	; 18
      002E34 12                    3406 	.db #0x12	; 18
      002E35 0E                    3407 	.db #0x0e	; 14
      002E36 02                    3408 	.db #0x02	; 2
      002E37 02                    3409 	.db #0x02	; 2
      002E38 00                    3410 	.db #0x00	; 0
      002E39 00                    3411 	.db #0x00	; 0
      002E3A 14                    3412 	.db #0x14	; 20
      002E3B 0A                    3413 	.db #0x0a	; 10
      002E3C 08                    3414 	.db #0x08	; 8
      002E3D 08                    3415 	.db #0x08	; 8
      002E3E 08                    3416 	.db #0x08	; 8
      002E3F 00                    3417 	.db #0x00	; 0
      002E40 1C                    3418 	.db #0x1c	; 28
      002E41 08                    3419 	.db #0x08	; 8
      002E42 1C                    3420 	.db #0x1c	; 28
      002E43 22                    3421 	.db #0x22	; 34
      002E44 1C                    3422 	.db #0x1c	; 28
      002E45 08                    3423 	.db #0x08	; 8
      002E46 1C                    3424 	.db #0x1c	; 28
      002E47 00                    3425 	.db #0x00	; 0
      002E48 0C                    3426 	.db #0x0c	; 12
      002E49 12                    3427 	.db #0x12	; 18
      002E4A 12                    3428 	.db #0x12	; 18
      002E4B 1E                    3429 	.db #0x1e	; 30
      002E4C 12                    3430 	.db #0x12	; 18
      002E4D 12                    3431 	.db #0x12	; 18
      002E4E 0C                    3432 	.db #0x0c	; 12
      002E4F 00                    3433 	.db #0x00	; 0
      002E50 00                    3434 	.db #0x00	; 0
      002E51 1C                    3435 	.db #0x1c	; 28
      002E52 22                    3436 	.db #0x22	; 34
      002E53 22                    3437 	.db #0x22	; 34
      002E54 14                    3438 	.db #0x14	; 20
      002E55 14                    3439 	.db #0x14	; 20
      002E56 36                    3440 	.db #0x36	; 54	'6'
      002E57 00                    3441 	.db #0x00	; 0
      002E58 0C                    3442 	.db #0x0c	; 12
      002E59 02                    3443 	.db #0x02	; 2
      002E5A 04                    3444 	.db #0x04	; 4
      002E5B 08                    3445 	.db #0x08	; 8
      002E5C 1C                    3446 	.db #0x1c	; 28
      002E5D 12                    3447 	.db #0x12	; 18
      002E5E 0C                    3448 	.db #0x0c	; 12
      002E5F 00                    3449 	.db #0x00	; 0
      002E60 00                    3450 	.db #0x00	; 0
      002E61 00                    3451 	.db #0x00	; 0
      002E62 14                    3452 	.db #0x14	; 20
      002E63 2A                    3453 	.db #0x2a	; 42
      002E64 2A                    3454 	.db #0x2a	; 42
      002E65 14                    3455 	.db #0x14	; 20
      002E66 00                    3456 	.db #0x00	; 0
      002E67 00                    3457 	.db #0x00	; 0
      002E68 00                    3458 	.db #0x00	; 0
      002E69 08                    3459 	.db #0x08	; 8
      002E6A 1C                    3460 	.db #0x1c	; 28
      002E6B 2A                    3461 	.db #0x2a	; 42
      002E6C 2A                    3462 	.db #0x2a	; 42
      002E6D 1C                    3463 	.db #0x1c	; 28
      002E6E 08                    3464 	.db #0x08	; 8
      002E6F 00                    3465 	.db #0x00	; 0
      002E70 00                    3466 	.db #0x00	; 0
      002E71 1C                    3467 	.db #0x1c	; 28
      002E72 02                    3468 	.db #0x02	; 2
      002E73 1E                    3469 	.db #0x1e	; 30
      002E74 02                    3470 	.db #0x02	; 2
      002E75 1C                    3471 	.db #0x1c	; 28
      002E76 00                    3472 	.db #0x00	; 0
      002E77 00                    3473 	.db #0x00	; 0
      002E78 00                    3474 	.db #0x00	; 0
      002E79 0C                    3475 	.db #0x0c	; 12
      002E7A 12                    3476 	.db #0x12	; 18
      002E7B 12                    3477 	.db #0x12	; 18
      002E7C 12                    3478 	.db #0x12	; 18
      002E7D 12                    3479 	.db #0x12	; 18
      002E7E 00                    3480 	.db #0x00	; 0
      002E7F 00                    3481 	.db #0x00	; 0
      002E80 00                    3482 	.db #0x00	; 0
      002E81 1E                    3483 	.db #0x1e	; 30
      002E82 00                    3484 	.db #0x00	; 0
      002E83 1E                    3485 	.db #0x1e	; 30
      002E84 00                    3486 	.db #0x00	; 0
      002E85 1E                    3487 	.db #0x1e	; 30
      002E86 00                    3488 	.db #0x00	; 0
      002E87 00                    3489 	.db #0x00	; 0
      002E88 00                    3490 	.db #0x00	; 0
      002E89 08                    3491 	.db #0x08	; 8
      002E8A 1C                    3492 	.db #0x1c	; 28
      002E8B 08                    3493 	.db #0x08	; 8
      002E8C 00                    3494 	.db #0x00	; 0
      002E8D 1C                    3495 	.db #0x1c	; 28
      002E8E 00                    3496 	.db #0x00	; 0
      002E8F 00                    3497 	.db #0x00	; 0
      002E90 02                    3498 	.db #0x02	; 2
      002E91 0C                    3499 	.db #0x0c	; 12
      002E92 10                    3500 	.db #0x10	; 16
      002E93 0C                    3501 	.db #0x0c	; 12
      002E94 02                    3502 	.db #0x02	; 2
      002E95 00                    3503 	.db #0x00	; 0
      002E96 1E                    3504 	.db #0x1e	; 30
      002E97 00                    3505 	.db #0x00	; 0
      002E98 10                    3506 	.db #0x10	; 16
      002E99 0C                    3507 	.db #0x0c	; 12
      002E9A 02                    3508 	.db #0x02	; 2
      002E9B 0C                    3509 	.db #0x0c	; 12
      002E9C 10                    3510 	.db #0x10	; 16
      002E9D 00                    3511 	.db #0x00	; 0
      002E9E 1E                    3512 	.db #0x1e	; 30
      002E9F 00                    3513 	.db #0x00	; 0
      002EA0 00                    3514 	.db #0x00	; 0
      002EA1 10                    3515 	.db #0x10	; 16
      002EA2 28                    3516 	.db #0x28	; 40
      002EA3 08                    3517 	.db #0x08	; 8
      002EA4 08                    3518 	.db #0x08	; 8
      002EA5 08                    3519 	.db #0x08	; 8
      002EA6 08                    3520 	.db #0x08	; 8
      002EA7 08                    3521 	.db #0x08	; 8
      002EA8 08                    3522 	.db #0x08	; 8
      002EA9 08                    3523 	.db #0x08	; 8
      002EAA 08                    3524 	.db #0x08	; 8
      002EAB 08                    3525 	.db #0x08	; 8
      002EAC 08                    3526 	.db #0x08	; 8
      002EAD 0A                    3527 	.db #0x0a	; 10
      002EAE 04                    3528 	.db #0x04	; 4
      002EAF 00                    3529 	.db #0x00	; 0
      002EB0 00                    3530 	.db #0x00	; 0
      002EB1 08                    3531 	.db #0x08	; 8
      002EB2 00                    3532 	.db #0x00	; 0
      002EB3 3E                    3533 	.db #0x3e	; 62
      002EB4 00                    3534 	.db #0x00	; 0
      002EB5 08                    3535 	.db #0x08	; 8
      002EB6 00                    3536 	.db #0x00	; 0
      002EB7 00                    3537 	.db #0x00	; 0
      002EB8 00                    3538 	.db #0x00	; 0
      002EB9 14                    3539 	.db #0x14	; 20
      002EBA 0A                    3540 	.db #0x0a	; 10
      002EBB 00                    3541 	.db #0x00	; 0
      002EBC 14                    3542 	.db #0x14	; 20
      002EBD 0A                    3543 	.db #0x0a	; 10
      002EBE 00                    3544 	.db #0x00	; 0
      002EBF 00                    3545 	.db #0x00	; 0
      002EC0 0C                    3546 	.db #0x0c	; 12
      002EC1 12                    3547 	.db #0x12	; 18
      002EC2 12                    3548 	.db #0x12	; 18
      002EC3 0C                    3549 	.db #0x0c	; 12
      002EC4 00                    3550 	.db #0x00	; 0
      002EC5 00                    3551 	.db #0x00	; 0
      002EC6 00                    3552 	.db #0x00	; 0
      002EC7 00                    3553 	.db #0x00	; 0
      002EC8 00                    3554 	.db #0x00	; 0
      002EC9 00                    3555 	.db #0x00	; 0
      002ECA 00                    3556 	.db #0x00	; 0
      002ECB 0C                    3557 	.db #0x0c	; 12
      002ECC 0C                    3558 	.db #0x0c	; 12
      002ECD 00                    3559 	.db #0x00	; 0
      002ECE 00                    3560 	.db #0x00	; 0
      002ECF 00                    3561 	.db #0x00	; 0
      002ED0 00                    3562 	.db #0x00	; 0
      002ED1 00                    3563 	.db #0x00	; 0
      002ED2 00                    3564 	.db #0x00	; 0
      002ED3 04                    3565 	.db #0x04	; 4
      002ED4 00                    3566 	.db #0x00	; 0
      002ED5 00                    3567 	.db #0x00	; 0
      002ED6 00                    3568 	.db #0x00	; 0
      002ED7 00                    3569 	.db #0x00	; 0
      002ED8 00                    3570 	.db #0x00	; 0
      002ED9 38                    3571 	.db #0x38	; 56	'8'
      002EDA 08                    3572 	.db #0x08	; 8
      002EDB 08                    3573 	.db #0x08	; 8
      002EDC 0A                    3574 	.db #0x0a	; 10
      002EDD 0A                    3575 	.db #0x0a	; 10
      002EDE 04                    3576 	.db #0x04	; 4
      002EDF 00                    3577 	.db #0x00	; 0
      002EE0 0A                    3578 	.db #0x0a	; 10
      002EE1 14                    3579 	.db #0x14	; 20
      002EE2 14                    3580 	.db #0x14	; 20
      002EE3 14                    3581 	.db #0x14	; 20
      002EE4 00                    3582 	.db #0x00	; 0
      002EE5 00                    3583 	.db #0x00	; 0
      002EE6 00                    3584 	.db #0x00	; 0
      002EE7 00                    3585 	.db #0x00	; 0
      002EE8 06                    3586 	.db #0x06	; 6
      002EE9 08                    3587 	.db #0x08	; 8
      002EEA 04                    3588 	.db #0x04	; 4
      002EEB 0E                    3589 	.db #0x0e	; 14
      002EEC 00                    3590 	.db #0x00	; 0
      002EED 00                    3591 	.db #0x00	; 0
      002EEE 00                    3592 	.db #0x00	; 0
      002EEF 00                    3593 	.db #0x00	; 0
      002EF0 00                    3594 	.db #0x00	; 0
      002EF1 00                    3595 	.db #0x00	; 0
      002EF2 1E                    3596 	.db #0x1e	; 30
      002EF3 1E                    3597 	.db #0x1e	; 30
      002EF4 1E                    3598 	.db #0x1e	; 30
      002EF5 1E                    3599 	.db #0x1e	; 30
      002EF6 00                    3600 	.db #0x00	; 0
      002EF7 00                    3601 	.db #0x00	; 0
      002EF8 00                    3602 	.db #0x00	; 0
      002EF9 00                    3603 	.db #0x00	; 0
      002EFA 00                    3604 	.db #0x00	; 0
      002EFB 00                    3605 	.db #0x00	; 0
      002EFC 00                    3606 	.db #0x00	; 0
      002EFD 00                    3607 	.db #0x00	; 0
      002EFE 00                    3608 	.db #0x00	; 0
      002EFF 00                    3609 	.db #0x00	; 0
      002F00                       3610 __xinit__initial:
      002F00 CE 26 80              3611 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3612 	.area CABS    (ABS,CODE)
