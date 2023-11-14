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
      00200E 02 22 FD         [24]  408 	ljmp	_main
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
      0021B8 12 26 4E         [24]  796 	lcall	__gptrget
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
      0021DF 12 26 4E         [24]  824 	lcall	__gptrget
      0021E2 F7               [12]  825 	mov	@r1,a
      0021E3                        826 00102$:
                                    827 ;	disp.c:196: i++;
      0021E3 E5 10            [12]  828 	mov	a,_bp
      0021E5 24 07            [12]  829 	add	a,#0x07
      0021E7 F8               [12]  830 	mov	r0,a
      0021E8 06               [12]  831 	inc	@r0
      0021E9 B6 00 02         [24]  832 	cjne	@r0,#0x00,00223$
      0021EC 08               [12]  833 	inc	r0
      0021ED 06               [12]  834 	inc	@r0
      0021EE                        835 00223$:
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
                                    850 ;	disp.c:201: if ((SKIPL > bit) || (bit > (7u - SKIPH))) continue;
      0021FE E5 10            [12]  851 	mov	a,_bp
      002200 24 06            [12]  852 	add	a,#0x06
      002202 F8               [12]  853 	mov	r0,a
      002203 E6               [12]  854 	mov	a,@r0
      002204 24 FA            [12]  855 	add	a,#0xff - 0x05
      002206 50 03            [24]  856 	jnc	00224$
      002208 02 22 DF         [24]  857 	ljmp	00120$
      00220B                        858 00224$:
                                    859 ;	disp.c:159: TR1 = 0;
                                    860 ;	assignBit
      00220B C2 8E            [12]  861 	clr	_TR1
                                    862 ;	disp.c:160: TH1 = TR1_COUNT_0 >> 8;
      00220D 75 8D 00         [24]  863 	mov	_TH1,#0x00
                                    864 ;	disp.c:161: TL1 = TR1_COUNT_0 & 0xffu;	
      002210 75 8B 00         [24]  865 	mov	_TL1,#0x00
                                    866 ;	disp.c:162: TF1 = 0;
                                    867 ;	assignBit
      002213 C2 8F            [12]  868 	clr	_TF1
                                    869 ;	disp.c:163: TR1 = 1;
                                    870 ;	assignBit
      002215 D2 8E            [12]  871 	setb	_TR1
                                    872 ;	disp.c:164: while (!TF1);
      002217                        873 00122$:
                                    874 ;	disp.c:165: TF1 = 0;
                                    875 ;	assignBit
      002217 10 8F 02         [24]  876 	jbc	_TF1,00225$
      00221A 80 FB            [24]  877 	sjmp	00122$
      00221C                        878 00225$:
                                    879 ;	disp.c:167: TR1 = 0;
                                    880 ;	assignBit
      00221C C2 8E            [12]  881 	clr	_TR1
                                    882 ;	disp.c:168: TH1 = TR1_COUNT_1 >> 8;
      00221E 75 8D C0         [24]  883 	mov	_TH1,#0xc0
                                    884 ;	disp.c:169: TL1 = TR1_COUNT_1 & 0xffu;	
      002221 75 8B 00         [24]  885 	mov	_TL1,#0x00
                                    886 ;	disp.c:170: TF1 = 0;
                                    887 ;	assignBit
      002224 C2 8F            [12]  888 	clr	_TF1
                                    889 ;	disp.c:171: TR1 = 1;
                                    890 ;	assignBit
      002226 D2 8E            [12]  891 	setb	_TR1
                                    892 ;	disp.c:172: while (!TF1);
      002228                        893 00125$:
                                    894 ;	disp.c:173: TF1 = 0;
                                    895 ;	assignBit
      002228 10 8F 02         [24]  896 	jbc	_TF1,00226$
      00222B 80 FB            [24]  897 	sjmp	00125$
      00222D                        898 00226$:
                                    899 ;	disp.c:175: TR1 = 0;
                                    900 ;	assignBit
      00222D C2 8E            [12]  901 	clr	_TR1
                                    902 ;	disp.c:205: for (j = 0u; j < 8u; j++)
      00222F E5 10            [12]  903 	mov	a,_bp
      002231 24 04            [12]  904 	add	a,#0x04
      002233 F8               [12]  905 	mov	r0,a
      002234 E6               [12]  906 	mov	a,@r0
      002235 75 F0 08         [24]  907 	mov	b,#0x08
      002238 A4               [48]  908 	mul	ab
      002239 24 01            [12]  909 	add	a,#__ft_font6x8
      00223B FA               [12]  910 	mov	r2,a
      00223C 74 81            [12]  911 	mov	a,#(__ft_font6x8 >> 8)
      00223E 35 F0            [12]  912 	addc	a,b
      002240 FB               [12]  913 	mov	r3,a
      002241 E5 10            [12]  914 	mov	a,_bp
      002243 24 06            [12]  915 	add	a,#0x06
      002245 F8               [12]  916 	mov	r0,a
      002246 74 07            [12]  917 	mov	a,#0x07
      002248 C3               [12]  918 	clr	c
      002249 96               [12]  919 	subb	a,@r0
      00224A FD               [12]  920 	mov	r5,a
      00224B 7C 00            [12]  921 	mov	r4,#0x00
      00224D                        922 00131$:
                                    923 ;	disp.c:206: ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00224D EC               [12]  924 	mov	a,r4
      00224E 24 29            [12]  925 	add	a,#_ddata
      002250 F9               [12]  926 	mov	r1,a
      002251 EC               [12]  927 	mov	a,r4
      002252 2A               [12]  928 	add	a,r2
      002253 F5 82            [12]  929 	mov	dpl,a
      002255 E4               [12]  930 	clr	a
      002256 3B               [12]  931 	addc	a,r3
      002257 F5 83            [12]  932 	mov	dph,a
      002259 E0               [24]  933 	movx	a,@dptr
      00225A FF               [12]  934 	mov	r7,a
      00225B 8D F0            [24]  935 	mov	b,r5
      00225D 05 F0            [12]  936 	inc	b
      00225F EF               [12]  937 	mov	a,r7
      002260 80 02            [24]  938 	sjmp	00229$
      002262                        939 00227$:
      002262 25 E0            [12]  940 	add	a,acc
      002264                        941 00229$:
      002264 D5 F0 FB         [24]  942 	djnz	b,00227$
      002267 54 80            [12]  943 	anl	a,#0x80
      002269 FF               [12]  944 	mov	r7,a
      00226A EC               [12]  945 	mov	a,r4
      00226B 24 29            [12]  946 	add	a,#_ddata
      00226D F8               [12]  947 	mov	r0,a
      00226E E6               [12]  948 	mov	a,@r0
      00226F C3               [12]  949 	clr	c
      002270 13               [12]  950 	rrc	a
      002271 4F               [12]  951 	orl	a,r7
      002272 F7               [12]  952 	mov	@r1,a
                                    953 ;	disp.c:205: for (j = 0u; j < 8u; j++)
      002273 0C               [12]  954 	inc	r4
      002274 BC 08 00         [24]  955 	cjne	r4,#0x08,00230$
      002277                        956 00230$:
      002277 40 D4            [24]  957 	jc	00131$
                                    958 ;	disp.c:208: if ((r = getchar_poll()) >= 0) {
      002279 12 20 9B         [24]  959 	lcall	_getchar_poll
      00227C AB 82            [24]  960 	mov	r3,dpl
      00227E AC 83            [24]  961 	mov	r4,dph
      002280 8B 07            [24]  962 	mov	ar7,r3
      002282 EC               [12]  963 	mov	a,r4
      002283 FE               [12]  964 	mov	r6,a
      002284 20 E7 58         [24]  965 	jb	acc.7,00120$
                                    966 ;	disp.c:209: r = toupper(r);
      002287 8F 82            [24]  967 	mov	dpl,r7
      002289 8E 83            [24]  968 	mov	dph,r6
      00228B 12 25 70         [24]  969 	lcall	_toupper
      00228E AB 82            [24]  970 	mov	r3,dpl
      002290 AC 83            [24]  971 	mov	r4,dph
                                    972 ;	disp.c:210: if ((r == (int)'P') || (r == (int)' ')) {
      002292 BB 50 05         [24]  973 	cjne	r3,#0x50,00233$
      002295 BC 00 02         [24]  974 	cjne	r4,#0x00,00233$
      002298 80 06            [24]  975 	sjmp	00114$
      00229A                        976 00233$:
      00229A BB 20 2A         [24]  977 	cjne	r3,#0x20,00115$
      00229D BC 00 27         [24]  978 	cjne	r4,#0x00,00115$
      0022A0                        979 00114$:
                                    980 ;	disp.c:211: printstr("PAUSE\r\n");
      0022A0 7E 89            [12]  981 	mov	r6,#___str_0
      0022A2 7C 26            [12]  982 	mov	r4,#(___str_0 >> 8)
      0022A4 7B 80            [12]  983 	mov	r3,#0x80
                                    984 ;	disp.c:48: return;
      0022A6                        985 00134$:
                                    986 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0022A6 8E 82            [24]  987 	mov	dpl,r6
      0022A8 8C 83            [24]  988 	mov	dph,r4
      0022AA 8B F0            [24]  989 	mov	b,r3
      0022AC 12 26 4E         [24]  990 	lcall	__gptrget
      0022AF FD               [12]  991 	mov	r5,a
      0022B0 60 10            [24]  992 	jz	00130$
      0022B2 7F 00            [12]  993 	mov	r7,#0x00
      0022B4 8D 82            [24]  994 	mov	dpl,r5
      0022B6 8F 83            [24]  995 	mov	dph,r7
      0022B8 12 20 8D         [24]  996 	lcall	_putchar
      0022BB 0E               [12]  997 	inc	r6
                                    998 ;	disp.c:211: printstr("PAUSE\r\n");
      0022BC BE 00 E7         [24]  999 	cjne	r6,#0x00,00134$
      0022BF 0C               [12] 1000 	inc	r4
      0022C0 80 E4            [24] 1001 	sjmp	00134$
      0022C2                       1002 00130$:
                                   1003 ;	disp.c:212: (void)getchar();
      0022C2 12 20 92         [24] 1004 	lcall	_getchar
      0022C5 80 18            [24] 1005 	sjmp	00120$
      0022C7                       1006 00115$:
                                   1007 ;	disp.c:213: } else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022C7 BB 54 05         [24] 1008 	cjne	r3,#0x54,00238$
      0022CA BC 00 02         [24] 1009 	cjne	r4,#0x00,00238$
      0022CD 80 24            [24] 1010 	sjmp	00121$
      0022CF                       1011 00238$:
      0022CF BB 52 05         [24] 1012 	cjne	r3,#0x52,00239$
      0022D2 BC 00 02         [24] 1013 	cjne	r4,#0x00,00239$
      0022D5 80 1C            [24] 1014 	sjmp	00121$
      0022D7                       1015 00239$:
      0022D7 BB 4C 05         [24] 1016 	cjne	r3,#0x4c,00240$
      0022DA BC 00 02         [24] 1017 	cjne	r4,#0x00,00240$
      0022DD 80 14            [24] 1018 	sjmp	00121$
      0022DF                       1019 00240$:
      0022DF                       1020 00120$:
                                   1021 ;	disp.c:189: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0022DF E5 10            [12] 1022 	mov	a,_bp
      0022E1 24 06            [12] 1023 	add	a,#0x06
      0022E3 F8               [12] 1024 	mov	r0,a
      0022E4 E6               [12] 1025 	mov	a,@r0
      0022E5 04               [12] 1026 	inc	a
      0022E6 FF               [12] 1027 	mov	r7,a
      0022E7 E5 10            [12] 1028 	mov	a,_bp
      0022E9 24 06            [12] 1029 	add	a,#0x06
      0022EB F8               [12] 1030 	mov	r0,a
      0022EC 74 07            [12] 1031 	mov	a,#0x07
      0022EE 5F               [12] 1032 	anl	a,r7
      0022EF F6               [12] 1033 	mov	@r0,a
      0022F0 02 21 97         [24] 1034 	ljmp	00136$
      0022F3                       1035 00121$:
                                   1036 ;	disp.c:217: return r;
      0022F3 8B 82            [24] 1037 	mov	dpl,r3
      0022F5 8C 83            [24] 1038 	mov	dph,r4
                                   1039 ;	disp.c:218: }
      0022F7 85 10 81         [24] 1040 	mov	sp,_bp
      0022FA D0 10            [24] 1041 	pop	_bp
      0022FC 22               [24] 1042 	ret
                                   1043 ;------------------------------------------------------------
                                   1044 ;Allocation info for local variables in function 'main'
                                   1045 ;------------------------------------------------------------
                                   1046 ;j                         Allocated to stack - _bp +1
                                   1047 ;c                         Allocated to registers r7 r6 
                                   1048 ;__1310720004              Allocated to registers 
                                   1049 ;s                         Allocated to registers r5 r6 r7 
                                   1050 ;__1966080006              Allocated to registers 
                                   1051 ;s                         Allocated to registers r5 r6 r7 
                                   1052 ;__1966080008              Allocated to registers 
                                   1053 ;s                         Allocated to registers r5 r6 r7 
                                   1054 ;__1966080010              Allocated to registers 
                                   1055 ;s                         Allocated to registers r5 r6 r7 
                                   1056 ;__3276800012              Allocated to registers 
                                   1057 ;s                         Allocated to registers r7 r6 r4 
                                   1058 ;__3276800014              Allocated to registers 
                                   1059 ;s                         Allocated to registers r7 r6 r4 
                                   1060 ;__3276800016              Allocated to registers 
                                   1061 ;s                         Allocated to registers r7 r6 r4 
                                   1062 ;__3276800018              Allocated to registers 
                                   1063 ;s                         Allocated to registers r7 r6 r4 
                                   1064 ;__3276800020              Allocated to registers 
                                   1065 ;s                         Allocated to registers r7 r6 r4 
                                   1066 ;__1310720022              Allocated to registers 
                                   1067 ;s                         Allocated to registers r5 r6 r7 
                                   1068 ;sloc0                     Allocated to stack - _bp +65
                                   1069 ;------------------------------------------------------------
                                   1070 ;	disp.c:220: void main(void) {
                                   1071 ;	-----------------------------------------
                                   1072 ;	 function main
                                   1073 ;	-----------------------------------------
      0022FD                       1074 _main:
      0022FD C0 10            [24] 1075 	push	_bp
      0022FF 85 81 10         [24] 1076 	mov	_bp,sp
      002302 05 81            [12] 1077 	inc	sp
      002304 05 81            [12] 1078 	inc	sp
                                   1079 ;	disp.c:224: init_gpo();
      002306 12 20 AF         [24] 1080 	lcall	_init_gpo
                                   1081 ;	disp.c:225: clear_gpo();
      002309 12 20 CD         [24] 1082 	lcall	_clear_gpo
                                   1083 ;	disp.c:226: init_disp();
      00230C 12 21 09         [24] 1084 	lcall	_init_disp
                                   1085 ;	disp.c:227: init_timer0();
      00230F 12 20 F1         [24] 1086 	lcall	_init_timer0
                                   1087 ;	disp.c:228: init_timer1();
      002312 12 20 FD         [24] 1088 	lcall	_init_timer1
                                   1089 ;	disp.c:229: init_intr();
      002315 12 20 E6         [24] 1090 	lcall	_init_intr
                                   1091 ;	disp.c:230: TR0 = 1;
                                   1092 ;	assignBit
      002318 D2 8C            [12] 1093 	setb	_TR0
                                   1094 ;	disp.c:232: reset:
      00231A                       1095 00101$:
                                   1096 ;	disp.c:233: init_disp();
      00231A 12 21 09         [24] 1097 	lcall	_init_disp
                                   1098 ;	disp.c:234: printstr("RESET\r\n");
      00231D 7D 91            [12] 1099 	mov	r5,#___str_1
      00231F 7E 26            [12] 1100 	mov	r6,#(___str_1 >> 8)
      002321 7F 80            [12] 1101 	mov	r7,#0x80
                                   1102 ;	disp.c:48: return;
      002323                       1103 00146$:
                                   1104 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002323 8D 82            [24] 1105 	mov	dpl,r5
      002325 8E 83            [24] 1106 	mov	dph,r6
      002327 8F F0            [24] 1107 	mov	b,r7
      002329 12 26 4E         [24] 1108 	lcall	__gptrget
      00232C FC               [12] 1109 	mov	r4,a
      00232D 60 10            [24] 1110 	jz	00126$
      00232F 7B 00            [12] 1111 	mov	r3,#0x00
      002331 8C 82            [24] 1112 	mov	dpl,r4
      002333 8B 83            [24] 1113 	mov	dph,r3
      002335 12 20 8D         [24] 1114 	lcall	_putchar
      002338 0D               [12] 1115 	inc	r5
                                   1116 ;	disp.c:234: printstr("RESET\r\n");
      002339 BD 00 E7         [24] 1117 	cjne	r5,#0x00,00146$
      00233C 0E               [12] 1118 	inc	r6
      00233D 80 E4            [24] 1119 	sjmp	00146$
      00233F                       1120 00126$:
                                   1121 ;	disp.c:235: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00233F E4               [12] 1122 	clr	a
      002340 C0 E0            [24] 1123 	push	acc
      002342 04               [12] 1124 	inc	a
      002343 C0 E0            [24] 1125 	push	acc
      002345 90 89 01         [24] 1126 	mov	dptr,#_initial
      002348 E0               [24] 1127 	movx	a,@dptr
      002349 C0 E0            [24] 1128 	push	acc
      00234B A3               [24] 1129 	inc	dptr
      00234C E0               [24] 1130 	movx	a,@dptr
      00234D C0 E0            [24] 1131 	push	acc
      00234F A3               [24] 1132 	inc	dptr
      002350 E0               [24] 1133 	movx	a,@dptr
      002351 C0 E0            [24] 1134 	push	acc
      002353 90 80 00         [24] 1135 	mov	dptr,#_buf
      002356 75 F0 00         [24] 1136 	mov	b,#0x00
      002359 12 25 97         [24] 1137 	lcall	_strncpy
      00235C E5 81            [12] 1138 	mov	a,sp
      00235E 24 FB            [12] 1139 	add	a,#0xfb
      002360 F5 81            [12] 1140 	mov	sp,a
                                   1141 ;	disp.c:236: buf[sizeof (buf) - 1u] = 0u;
      002362 90 81 00         [24] 1142 	mov	dptr,#(_buf + 0x0100)
      002365 E4               [12] 1143 	clr	a
      002366 F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	disp.c:238: while (1) {
      002367                       1146 00122$:
                                   1147 ;	disp.c:239: printstr("P SP L ENT S R T START MSG \"");
      002367 7D 99            [12] 1148 	mov	r5,#___str_2
      002369 7E 26            [12] 1149 	mov	r6,#(___str_2 >> 8)
      00236B 7F 80            [12] 1150 	mov	r7,#0x80
                                   1151 ;	disp.c:48: return;
      00236D                       1152 00149$:
                                   1153 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00236D 8D 82            [24] 1154 	mov	dpl,r5
      00236F 8E 83            [24] 1155 	mov	dph,r6
      002371 8F F0            [24] 1156 	mov	b,r7
      002373 12 26 4E         [24] 1157 	lcall	__gptrget
      002376 FC               [12] 1158 	mov	r4,a
      002377 60 10            [24] 1159 	jz	00128$
      002379 7B 00            [12] 1160 	mov	r3,#0x00
      00237B 8C 82            [24] 1161 	mov	dpl,r4
      00237D 8B 83            [24] 1162 	mov	dph,r3
      00237F 12 20 8D         [24] 1163 	lcall	_putchar
      002382 0D               [12] 1164 	inc	r5
                                   1165 ;	disp.c:239: printstr("P SP L ENT S R T START MSG \"");
      002383 BD 00 E7         [24] 1166 	cjne	r5,#0x00,00149$
      002386 0E               [12] 1167 	inc	r6
      002387 80 E4            [24] 1168 	sjmp	00149$
      002389                       1169 00128$:
                                   1170 ;	disp.c:240: printstr((char *)buf);
      002389 7D 00            [12] 1171 	mov	r5,#_buf
      00238B 7E 80            [12] 1172 	mov	r6,#(_buf >> 8)
      00238D 7F 00            [12] 1173 	mov	r7,#0x00
                                   1174 ;	disp.c:48: return;
      00238F                       1175 00152$:
                                   1176 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00238F 8D 82            [24] 1177 	mov	dpl,r5
      002391 8E 83            [24] 1178 	mov	dph,r6
      002393 8F F0            [24] 1179 	mov	b,r7
      002395 12 26 4E         [24] 1180 	lcall	__gptrget
      002398 FC               [12] 1181 	mov	r4,a
      002399 60 10            [24] 1182 	jz	00130$
      00239B 7B 00            [12] 1183 	mov	r3,#0x00
      00239D 8C 82            [24] 1184 	mov	dpl,r4
      00239F 8B 83            [24] 1185 	mov	dph,r3
      0023A1 12 20 8D         [24] 1186 	lcall	_putchar
      0023A4 0D               [12] 1187 	inc	r5
                                   1188 ;	disp.c:240: printstr((char *)buf);
      0023A5 BD 00 E7         [24] 1189 	cjne	r5,#0x00,00152$
      0023A8 0E               [12] 1190 	inc	r6
      0023A9 80 E4            [24] 1191 	sjmp	00152$
      0023AB                       1192 00130$:
                                   1193 ;	disp.c:241: printstr("\"\r\n");
      0023AB 7D B6            [12] 1194 	mov	r5,#___str_3
      0023AD 7E 26            [12] 1195 	mov	r6,#(___str_3 >> 8)
      0023AF 7F 80            [12] 1196 	mov	r7,#0x80
                                   1197 ;	disp.c:48: return;
      0023B1                       1198 00155$:
                                   1199 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023B1 8D 82            [24] 1200 	mov	dpl,r5
      0023B3 8E 83            [24] 1201 	mov	dph,r6
      0023B5 8F F0            [24] 1202 	mov	b,r7
      0023B7 12 26 4E         [24] 1203 	lcall	__gptrget
      0023BA FC               [12] 1204 	mov	r4,a
      0023BB 60 10            [24] 1205 	jz	00132$
      0023BD 7B 00            [12] 1206 	mov	r3,#0x00
      0023BF 8C 82            [24] 1207 	mov	dpl,r4
      0023C1 8B 83            [24] 1208 	mov	dph,r3
      0023C3 12 20 8D         [24] 1209 	lcall	_putchar
      0023C6 0D               [12] 1210 	inc	r5
                                   1211 ;	disp.c:241: printstr("\"\r\n");
      0023C7 BD 00 E7         [24] 1212 	cjne	r5,#0x00,00155$
      0023CA 0E               [12] 1213 	inc	r6
      0023CB 80 E4            [24] 1214 	sjmp	00155$
      0023CD                       1215 00132$:
                                   1216 ;	disp.c:243: c = scroll(buf);
      0023CD 90 80 00         [24] 1217 	mov	dptr,#_buf
      0023D0 75 F0 00         [24] 1218 	mov	b,#0x00
      0023D3 12 21 76         [24] 1219 	lcall	_scroll
      0023D6 AE 82            [24] 1220 	mov	r6,dpl
      0023D8 AF 83            [24] 1221 	mov	r7,dph
                                   1222 ;	disp.c:245: while (1) {
      0023DA                       1223 00119$:
                                   1224 ;	disp.c:246: if (c == (int)'T') goto term;
      0023DA BE 54 06         [24] 1225 	cjne	r6,#0x54,00337$
      0023DD BF 00 03         [24] 1226 	cjne	r7,#0x00,00337$
      0023E0 02 25 3D         [24] 1227 	ljmp	00124$
      0023E3                       1228 00337$:
                                   1229 ;	disp.c:247: else if (c == (int)'R') goto reset;
      0023E3 BE 52 06         [24] 1230 	cjne	r6,#0x52,00338$
      0023E6 BF 00 03         [24] 1231 	cjne	r7,#0x00,00338$
      0023E9 02 23 1A         [24] 1232 	ljmp	00101$
      0023EC                       1233 00338$:
                                   1234 ;	disp.c:248: else if (c == (int)'L') {
      0023EC BE 4C 05         [24] 1235 	cjne	r6,#0x4c,00339$
      0023EF BF 00 02         [24] 1236 	cjne	r7,#0x00,00339$
      0023F2 80 03            [24] 1237 	sjmp	00340$
      0023F4                       1238 00339$:
      0023F4 02 25 27         [24] 1239 	ljmp	00110$
      0023F7                       1240 00340$:
                                   1241 ;	disp.c:249: init_disp();
      0023F7 12 21 09         [24] 1242 	lcall	_init_disp
                                   1243 ;	disp.c:250: printstr("LOAD ");
      0023FA 7F BA            [12] 1244 	mov	r7,#___str_4
      0023FC 7E 26            [12] 1245 	mov	r6,#(___str_4 >> 8)
      0023FE 7C 80            [12] 1246 	mov	r4,#0x80
                                   1247 ;	disp.c:48: return;
      002400                       1248 00158$:
                                   1249 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002400 8F 82            [24] 1250 	mov	dpl,r7
      002402 8E 83            [24] 1251 	mov	dph,r6
      002404 8C F0            [24] 1252 	mov	b,r4
      002406 12 26 4E         [24] 1253 	lcall	__gptrget
      002409 FA               [12] 1254 	mov	r2,a
      00240A 60 10            [24] 1255 	jz	00134$
      00240C 7D 00            [12] 1256 	mov	r5,#0x00
      00240E 8A 82            [24] 1257 	mov	dpl,r2
      002410 8D 83            [24] 1258 	mov	dph,r5
      002412 12 20 8D         [24] 1259 	lcall	_putchar
      002415 0F               [12] 1260 	inc	r7
                                   1261 ;	disp.c:250: printstr("LOAD ");
      002416 BF 00 E7         [24] 1262 	cjne	r7,#0x00,00158$
      002419 0E               [12] 1263 	inc	r6
      00241A 80 E4            [24] 1264 	sjmp	00158$
      00241C                       1265 00134$:
                                   1266 ;	disp.c:251: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00241C 7C 00            [12] 1267 	mov	r4,#0x00
      00241E 7D 00            [12] 1268 	mov	r5,#0x00
      002420 A8 10            [24] 1269 	mov	r0,_bp
      002422 08               [12] 1270 	inc	r0
      002423 E4               [12] 1271 	clr	a
      002424 F6               [12] 1272 	mov	@r0,a
      002425 08               [12] 1273 	inc	r0
      002426 F6               [12] 1274 	mov	@r0,a
      002427                       1275 00160$:
                                   1276 ;	disp.c:252: c = getchar();
      002427 C0 04            [24] 1277 	push	ar4
      002429 C0 05            [24] 1278 	push	ar5
      00242B 12 20 92         [24] 1279 	lcall	_getchar
      00242E AC 82            [24] 1280 	mov	r4,dpl
      002430 AD 83            [24] 1281 	mov	r5,dph
      002432 8C 07            [24] 1282 	mov	ar7,r4
      002434 8D 06            [24] 1283 	mov	ar6,r5
                                   1284 ;	disp.c:253: (void)putchar(c);
      002436 8F 82            [24] 1285 	mov	dpl,r7
      002438 8E 83            [24] 1286 	mov	dph,r6
      00243A 12 20 8D         [24] 1287 	lcall	_putchar
                                   1288 ;	disp.c:254: if ((c == (int)'\r') || (c == (int)'\n')) {
      00243D BF 0D 09         [24] 1289 	cjne	r7,#0x0d,00343$
      002440 BE 00 06         [24] 1290 	cjne	r6,#0x00,00343$
      002443 D0 05            [24] 1291 	pop	ar5
      002445 D0 04            [24] 1292 	pop	ar4
      002447 80 0A            [24] 1293 	sjmp	00102$
      002449                       1294 00343$:
      002449 D0 05            [24] 1295 	pop	ar5
      00244B D0 04            [24] 1296 	pop	ar4
      00244D BF 0A 11         [24] 1297 	cjne	r7,#0x0a,00103$
      002450 BE 00 0E         [24] 1298 	cjne	r6,#0x00,00103$
      002453                       1299 00102$:
                                   1300 ;	disp.c:255: buf[j] = 0u;
      002453 EC               [12] 1301 	mov	a,r4
      002454 24 00            [12] 1302 	add	a,#_buf
      002456 F5 82            [12] 1303 	mov	dpl,a
      002458 ED               [12] 1304 	mov	a,r5
      002459 34 80            [12] 1305 	addc	a,#(_buf >> 8)
      00245B F5 83            [12] 1306 	mov	dph,a
      00245D E4               [12] 1307 	clr	a
      00245E F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	disp.c:256: break;
      00245F 80 32            [24] 1310 	sjmp	00106$
      002461                       1311 00103$:
                                   1312 ;	disp.c:257: } else buf[j] = c & 0xffu;
      002461 A8 10            [24] 1313 	mov	r0,_bp
      002463 08               [12] 1314 	inc	r0
      002464 E6               [12] 1315 	mov	a,@r0
      002465 24 00            [12] 1316 	add	a,#_buf
      002467 FD               [12] 1317 	mov	r5,a
      002468 08               [12] 1318 	inc	r0
      002469 E6               [12] 1319 	mov	a,@r0
      00246A 34 80            [12] 1320 	addc	a,#(_buf >> 8)
      00246C FC               [12] 1321 	mov	r4,a
      00246D 8F 03            [24] 1322 	mov	ar3,r7
      00246F 8D 82            [24] 1323 	mov	dpl,r5
      002471 8C 83            [24] 1324 	mov	dph,r4
      002473 EB               [12] 1325 	mov	a,r3
      002474 F0               [24] 1326 	movx	@dptr,a
                                   1327 ;	disp.c:251: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002475 A8 10            [24] 1328 	mov	r0,_bp
      002477 08               [12] 1329 	inc	r0
      002478 06               [12] 1330 	inc	@r0
      002479 B6 00 02         [24] 1331 	cjne	@r0,#0x00,00346$
      00247C 08               [12] 1332 	inc	r0
      00247D 06               [12] 1333 	inc	@r0
      00247E                       1334 00346$:
      00247E A8 10            [24] 1335 	mov	r0,_bp
      002480 08               [12] 1336 	inc	r0
      002481 86 04            [24] 1337 	mov	ar4,@r0
      002483 08               [12] 1338 	inc	r0
      002484 86 05            [24] 1339 	mov	ar5,@r0
      002486 A8 10            [24] 1340 	mov	r0,_bp
      002488 08               [12] 1341 	inc	r0
      002489 86 02            [24] 1342 	mov	ar2,@r0
      00248B 08               [12] 1343 	inc	r0
      00248C 86 03            [24] 1344 	mov	ar3,@r0
      00248E 74 FF            [12] 1345 	mov	a,#0x100 - 0x01
      002490 2B               [12] 1346 	add	a,r3
      002491 50 94            [24] 1347 	jnc	00160$
      002493                       1348 00106$:
                                   1349 ;	disp.c:259: buf[j] = 0u;
      002493 EC               [12] 1350 	mov	a,r4
      002494 24 00            [12] 1351 	add	a,#_buf
      002496 F5 82            [12] 1352 	mov	dpl,a
      002498 ED               [12] 1353 	mov	a,r5
      002499 34 80            [12] 1354 	addc	a,#(_buf >> 8)
      00249B F5 83            [12] 1355 	mov	dph,a
      00249D E4               [12] 1356 	clr	a
      00249E F0               [24] 1357 	movx	@dptr,a
                                   1358 ;	disp.c:260: printstr("\r\n");
      00249F 7F C0            [12] 1359 	mov	r7,#___str_5
      0024A1 7E 26            [12] 1360 	mov	r6,#(___str_5 >> 8)
      0024A3 7C 80            [12] 1361 	mov	r4,#0x80
                                   1362 ;	disp.c:48: return;
      0024A5                       1363 00163$:
                                   1364 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024A5 8F 82            [24] 1365 	mov	dpl,r7
      0024A7 8E 83            [24] 1366 	mov	dph,r6
      0024A9 8C F0            [24] 1367 	mov	b,r4
      0024AB 12 26 4E         [24] 1368 	lcall	__gptrget
      0024AE FA               [12] 1369 	mov	r2,a
      0024AF 60 10            [24] 1370 	jz	00136$
      0024B1 7D 00            [12] 1371 	mov	r5,#0x00
      0024B3 8A 82            [24] 1372 	mov	dpl,r2
      0024B5 8D 83            [24] 1373 	mov	dph,r5
      0024B7 12 20 8D         [24] 1374 	lcall	_putchar
      0024BA 0F               [12] 1375 	inc	r7
                                   1376 ;	disp.c:260: printstr("\r\n");
      0024BB BF 00 E7         [24] 1377 	cjne	r7,#0x00,00163$
      0024BE 0E               [12] 1378 	inc	r6
      0024BF 80 E4            [24] 1379 	sjmp	00163$
      0024C1                       1380 00136$:
                                   1381 ;	disp.c:261: printstr("MSG \"");
      0024C1 7F C3            [12] 1382 	mov	r7,#___str_6
      0024C3 7E 26            [12] 1383 	mov	r6,#(___str_6 >> 8)
      0024C5 7C 80            [12] 1384 	mov	r4,#0x80
                                   1385 ;	disp.c:48: return;
      0024C7                       1386 00166$:
                                   1387 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024C7 8F 82            [24] 1388 	mov	dpl,r7
      0024C9 8E 83            [24] 1389 	mov	dph,r6
      0024CB 8C F0            [24] 1390 	mov	b,r4
      0024CD 12 26 4E         [24] 1391 	lcall	__gptrget
      0024D0 FA               [12] 1392 	mov	r2,a
      0024D1 60 10            [24] 1393 	jz	00138$
      0024D3 7D 00            [12] 1394 	mov	r5,#0x00
      0024D5 8A 82            [24] 1395 	mov	dpl,r2
      0024D7 8D 83            [24] 1396 	mov	dph,r5
      0024D9 12 20 8D         [24] 1397 	lcall	_putchar
      0024DC 0F               [12] 1398 	inc	r7
                                   1399 ;	disp.c:261: printstr("MSG \"");
      0024DD BF 00 E7         [24] 1400 	cjne	r7,#0x00,00166$
      0024E0 0E               [12] 1401 	inc	r6
      0024E1 80 E4            [24] 1402 	sjmp	00166$
      0024E3                       1403 00138$:
                                   1404 ;	disp.c:262: printstr((char *)buf);
      0024E3 7F 00            [12] 1405 	mov	r7,#_buf
      0024E5 7E 80            [12] 1406 	mov	r6,#(_buf >> 8)
      0024E7 7C 00            [12] 1407 	mov	r4,#0x00
                                   1408 ;	disp.c:48: return;
      0024E9                       1409 00169$:
                                   1410 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024E9 8F 82            [24] 1411 	mov	dpl,r7
      0024EB 8E 83            [24] 1412 	mov	dph,r6
      0024ED 8C F0            [24] 1413 	mov	b,r4
      0024EF 12 26 4E         [24] 1414 	lcall	__gptrget
      0024F2 FA               [12] 1415 	mov	r2,a
      0024F3 60 10            [24] 1416 	jz	00140$
      0024F5 7D 00            [12] 1417 	mov	r5,#0x00
      0024F7 8A 82            [24] 1418 	mov	dpl,r2
      0024F9 8D 83            [24] 1419 	mov	dph,r5
      0024FB 12 20 8D         [24] 1420 	lcall	_putchar
      0024FE 0F               [12] 1421 	inc	r7
                                   1422 ;	disp.c:262: printstr((char *)buf);
      0024FF BF 00 E7         [24] 1423 	cjne	r7,#0x00,00169$
      002502 0E               [12] 1424 	inc	r6
      002503 80 E4            [24] 1425 	sjmp	00169$
      002505                       1426 00140$:
                                   1427 ;	disp.c:263: printstr("\"\r\n");
      002505 7F B6            [12] 1428 	mov	r7,#___str_3
      002507 7E 26            [12] 1429 	mov	r6,#(___str_3 >> 8)
      002509 7C 80            [12] 1430 	mov	r4,#0x80
                                   1431 ;	disp.c:48: return;
      00250B                       1432 00172$:
                                   1433 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00250B 8F 82            [24] 1434 	mov	dpl,r7
      00250D 8E 83            [24] 1435 	mov	dph,r6
      00250F 8C F0            [24] 1436 	mov	b,r4
      002511 12 26 4E         [24] 1437 	lcall	__gptrget
      002514 FA               [12] 1438 	mov	r2,a
      002515 60 19            [24] 1439 	jz	00117$
      002517 7D 00            [12] 1440 	mov	r5,#0x00
      002519 8A 82            [24] 1441 	mov	dpl,r2
      00251B 8D 83            [24] 1442 	mov	dph,r5
      00251D 12 20 8D         [24] 1443 	lcall	_putchar
      002520 0F               [12] 1444 	inc	r7
                                   1445 ;	disp.c:263: printstr("\"\r\n");
      002521 BF 00 E7         [24] 1446 	cjne	r7,#0x00,00172$
      002524 0E               [12] 1447 	inc	r6
      002525 80 E4            [24] 1448 	sjmp	00172$
      002527                       1449 00110$:
                                   1450 ;	disp.c:264: } else if (c == (int)'S') break;
      002527 BE 53 06         [24] 1451 	cjne	r6,#0x53,00356$
      00252A BF 00 03         [24] 1452 	cjne	r7,#0x00,00356$
      00252D 02 23 67         [24] 1453 	ljmp	00122$
      002530                       1454 00356$:
      002530                       1455 00117$:
                                   1456 ;	disp.c:266: c = toupper(getchar());
      002530 12 20 92         [24] 1457 	lcall	_getchar
      002533 12 25 70         [24] 1458 	lcall	_toupper
      002536 AE 82            [24] 1459 	mov	r6,dpl
      002538 AF 83            [24] 1460 	mov	r7,dph
      00253A 02 23 DA         [24] 1461 	ljmp	00119$
                                   1462 ;	disp.c:270: term:	
      00253D                       1463 00124$:
                                   1464 ;	disp.c:271: EA = 0;
                                   1465 ;	assignBit
      00253D C2 AF            [12] 1466 	clr	_EA
                                   1467 ;	disp.c:272: init_disp();
      00253F 12 21 09         [24] 1468 	lcall	_init_disp
                                   1469 ;	disp.c:273: printstr("TERM\r\n");
      002542 7D C9            [12] 1470 	mov	r5,#___str_7
      002544 7E 26            [12] 1471 	mov	r6,#(___str_7 >> 8)
      002546 7F 80            [12] 1472 	mov	r7,#0x80
                                   1473 ;	disp.c:48: return;
      002548                       1474 00175$:
                                   1475 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002548 8D 82            [24] 1476 	mov	dpl,r5
      00254A 8E 83            [24] 1477 	mov	dph,r6
      00254C 8F F0            [24] 1478 	mov	b,r7
      00254E 12 26 4E         [24] 1479 	lcall	__gptrget
      002551 FC               [12] 1480 	mov	r4,a
      002552 60 10            [24] 1481 	jz	00144$
      002554 7B 00            [12] 1482 	mov	r3,#0x00
      002556 8C 82            [24] 1483 	mov	dpl,r4
      002558 8B 83            [24] 1484 	mov	dph,r3
      00255A 12 20 8D         [24] 1485 	lcall	_putchar
      00255D 0D               [12] 1486 	inc	r5
                                   1487 ;	disp.c:273: printstr("TERM\r\n");
      00255E BD 00 E7         [24] 1488 	cjne	r5,#0x00,00175$
      002561 0E               [12] 1489 	inc	r6
      002562 80 E4            [24] 1490 	sjmp	00175$
      002564                       1491 00144$:
                                   1492 ;	disp.c:274: (void)getchar();
      002564 12 20 92         [24] 1493 	lcall	_getchar
                                   1494 ;	disp.c:276: PCON |= 2;
      002567 43 87 02         [24] 1495 	orl	_PCON,#0x02
                                   1496 ;	disp.c:278: return;
                                   1497 ;	disp.c:279: }
      00256A 85 10 81         [24] 1498 	mov	sp,_bp
      00256D D0 10            [24] 1499 	pop	_bp
      00256F 22               [24] 1500 	ret
                                   1501 	.area CSEG    (CODE)
                                   1502 	.area CONST   (CODE)
                                   1503 	.area CONST   (CODE)
      002689                       1504 ___str_0:
      002689 50 41 55 53 45        1505 	.ascii "PAUSE"
      00268E 0D                    1506 	.db 0x0d
      00268F 0A                    1507 	.db 0x0a
      002690 00                    1508 	.db 0x00
                                   1509 	.area CSEG    (CODE)
                                   1510 	.area CONST   (CODE)
      002691                       1511 ___str_1:
      002691 52 45 53 45 54        1512 	.ascii "RESET"
      002696 0D                    1513 	.db 0x0d
      002697 0A                    1514 	.db 0x0a
      002698 00                    1515 	.db 0x00
                                   1516 	.area CSEG    (CODE)
                                   1517 	.area CONST   (CODE)
      002699                       1518 ___str_2:
      002699 50 20 53 50 20 4C 20  1519 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      0026B4 22                    1520 	.db 0x22
      0026B5 00                    1521 	.db 0x00
                                   1522 	.area CSEG    (CODE)
                                   1523 	.area CONST   (CODE)
      0026B6                       1524 ___str_3:
      0026B6 22                    1525 	.db 0x22
      0026B7 0D                    1526 	.db 0x0d
      0026B8 0A                    1527 	.db 0x0a
      0026B9 00                    1528 	.db 0x00
                                   1529 	.area CSEG    (CODE)
                                   1530 	.area CONST   (CODE)
      0026BA                       1531 ___str_4:
      0026BA 4C 4F 41 44 20        1532 	.ascii "LOAD "
      0026BF 00                    1533 	.db 0x00
                                   1534 	.area CSEG    (CODE)
                                   1535 	.area CONST   (CODE)
      0026C0                       1536 ___str_5:
      0026C0 0D                    1537 	.db 0x0d
      0026C1 0A                    1538 	.db 0x0a
      0026C2 00                    1539 	.db 0x00
                                   1540 	.area CSEG    (CODE)
                                   1541 	.area CONST   (CODE)
      0026C3                       1542 ___str_6:
      0026C3 4D 53 47 20           1543 	.ascii "MSG "
      0026C7 22                    1544 	.db 0x22
      0026C8 00                    1545 	.db 0x00
                                   1546 	.area CSEG    (CODE)
                                   1547 	.area CONST   (CODE)
      0026C9                       1548 ___str_7:
      0026C9 54 45 52 4D           1549 	.ascii "TERM"
      0026CD 0D                    1550 	.db 0x0d
      0026CE 0A                    1551 	.db 0x0a
      0026CF 00                    1552 	.db 0x00
                                   1553 	.area CSEG    (CODE)
                                   1554 	.area CONST   (CODE)
      0026D0                       1555 ___str_8:
      0026D0 4A 65 64 65 6D 20 64  1556 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      002701 00                    1557 	.db 0x00
                                   1558 	.area CSEG    (CODE)
                                   1559 	.area XINIT   (CODE)
      002702                       1560 __xinit___ft_font6x8:
      002702 00                    1561 	.db #0x00	; 0
      002703 00                    1562 	.db #0x00	; 0
      002704 00                    1563 	.db #0x00	; 0
      002705 00                    1564 	.db #0x00	; 0
      002706 00                    1565 	.db #0x00	; 0
      002707 00                    1566 	.db #0x00	; 0
      002708 00                    1567 	.db #0x00	; 0
      002709 00                    1568 	.db #0x00	; 0
      00270A 1C                    1569 	.db #0x1c	; 28
      00270B 22                    1570 	.db #0x22	; 34
      00270C 36                    1571 	.db #0x36	; 54	'6'
      00270D 22                    1572 	.db #0x22	; 34
      00270E 2A                    1573 	.db #0x2a	; 42
      00270F 22                    1574 	.db #0x22	; 34
      002710 1C                    1575 	.db #0x1c	; 28
      002711 00                    1576 	.db #0x00	; 0
      002712 1C                    1577 	.db #0x1c	; 28
      002713 3E                    1578 	.db #0x3e	; 62
      002714 2A                    1579 	.db #0x2a	; 42
      002715 3E                    1580 	.db #0x3e	; 62
      002716 22                    1581 	.db #0x22	; 34
      002717 3E                    1582 	.db #0x3e	; 62
      002718 1C                    1583 	.db #0x1c	; 28
      002719 00                    1584 	.db #0x00	; 0
      00271A 00                    1585 	.db #0x00	; 0
      00271B 14                    1586 	.db #0x14	; 20
      00271C 3E                    1587 	.db #0x3e	; 62
      00271D 3E                    1588 	.db #0x3e	; 62
      00271E 3E                    1589 	.db #0x3e	; 62
      00271F 1C                    1590 	.db #0x1c	; 28
      002720 08                    1591 	.db #0x08	; 8
      002721 00                    1592 	.db #0x00	; 0
      002722 00                    1593 	.db #0x00	; 0
      002723 08                    1594 	.db #0x08	; 8
      002724 1C                    1595 	.db #0x1c	; 28
      002725 3E                    1596 	.db #0x3e	; 62
      002726 3E                    1597 	.db #0x3e	; 62
      002727 1C                    1598 	.db #0x1c	; 28
      002728 08                    1599 	.db #0x08	; 8
      002729 00                    1600 	.db #0x00	; 0
      00272A 08                    1601 	.db #0x08	; 8
      00272B 1C                    1602 	.db #0x1c	; 28
      00272C 1C                    1603 	.db #0x1c	; 28
      00272D 08                    1604 	.db #0x08	; 8
      00272E 3E                    1605 	.db #0x3e	; 62
      00272F 3E                    1606 	.db #0x3e	; 62
      002730 08                    1607 	.db #0x08	; 8
      002731 00                    1608 	.db #0x00	; 0
      002732 00                    1609 	.db #0x00	; 0
      002733 08                    1610 	.db #0x08	; 8
      002734 1C                    1611 	.db #0x1c	; 28
      002735 3E                    1612 	.db #0x3e	; 62
      002736 3E                    1613 	.db #0x3e	; 62
      002737 08                    1614 	.db #0x08	; 8
      002738 1C                    1615 	.db #0x1c	; 28
      002739 00                    1616 	.db #0x00	; 0
      00273A 00                    1617 	.db #0x00	; 0
      00273B 00                    1618 	.db #0x00	; 0
      00273C 00                    1619 	.db #0x00	; 0
      00273D 0C                    1620 	.db #0x0c	; 12
      00273E 0C                    1621 	.db #0x0c	; 12
      00273F 00                    1622 	.db #0x00	; 0
      002740 00                    1623 	.db #0x00	; 0
      002741 00                    1624 	.db #0x00	; 0
      002742 3F                    1625 	.db #0x3f	; 63
      002743 3F                    1626 	.db #0x3f	; 63
      002744 3F                    1627 	.db #0x3f	; 63
      002745 33                    1628 	.db #0x33	; 51	'3'
      002746 33                    1629 	.db #0x33	; 51	'3'
      002747 3F                    1630 	.db #0x3f	; 63
      002748 3F                    1631 	.db #0x3f	; 63
      002749 3F                    1632 	.db #0x3f	; 63
      00274A 00                    1633 	.db #0x00	; 0
      00274B 00                    1634 	.db #0x00	; 0
      00274C 1E                    1635 	.db #0x1e	; 30
      00274D 12                    1636 	.db #0x12	; 18
      00274E 12                    1637 	.db #0x12	; 18
      00274F 1E                    1638 	.db #0x1e	; 30
      002750 00                    1639 	.db #0x00	; 0
      002751 00                    1640 	.db #0x00	; 0
      002752 3F                    1641 	.db #0x3f	; 63
      002753 3F                    1642 	.db #0x3f	; 63
      002754 21                    1643 	.db #0x21	; 33
      002755 2D                    1644 	.db #0x2d	; 45
      002756 2D                    1645 	.db #0x2d	; 45
      002757 21                    1646 	.db #0x21	; 33
      002758 3F                    1647 	.db #0x3f	; 63
      002759 3F                    1648 	.db #0x3f	; 63
      00275A 00                    1649 	.db #0x00	; 0
      00275B 38                    1650 	.db #0x38	; 56	'8'
      00275C 30                    1651 	.db #0x30	; 48	'0'
      00275D 2C                    1652 	.db #0x2c	; 44
      00275E 12                    1653 	.db #0x12	; 18
      00275F 12                    1654 	.db #0x12	; 18
      002760 0C                    1655 	.db #0x0c	; 12
      002761 00                    1656 	.db #0x00	; 0
      002762 1C                    1657 	.db #0x1c	; 28
      002763 22                    1658 	.db #0x22	; 34
      002764 22                    1659 	.db #0x22	; 34
      002765 1C                    1660 	.db #0x1c	; 28
      002766 08                    1661 	.db #0x08	; 8
      002767 1C                    1662 	.db #0x1c	; 28
      002768 08                    1663 	.db #0x08	; 8
      002769 00                    1664 	.db #0x00	; 0
      00276A 08                    1665 	.db #0x08	; 8
      00276B 18                    1666 	.db #0x18	; 24
      00276C 28                    1667 	.db #0x28	; 40
      00276D 08                    1668 	.db #0x08	; 8
      00276E 0C                    1669 	.db #0x0c	; 12
      00276F 0E                    1670 	.db #0x0e	; 14
      002770 06                    1671 	.db #0x06	; 6
      002771 00                    1672 	.db #0x00	; 0
      002772 30                    1673 	.db #0x30	; 48	'0'
      002773 2C                    1674 	.db #0x2c	; 44
      002774 34                    1675 	.db #0x34	; 52	'4'
      002775 2C                    1676 	.db #0x2c	; 44
      002776 34                    1677 	.db #0x34	; 52	'4'
      002777 36                    1678 	.db #0x36	; 54	'6'
      002778 06                    1679 	.db #0x06	; 6
      002779 00                    1680 	.db #0x00	; 0
      00277A 00                    1681 	.db #0x00	; 0
      00277B 2A                    1682 	.db #0x2a	; 42
      00277C 1C                    1683 	.db #0x1c	; 28
      00277D 36                    1684 	.db #0x36	; 54	'6'
      00277E 1C                    1685 	.db #0x1c	; 28
      00277F 2A                    1686 	.db #0x2a	; 42
      002780 00                    1687 	.db #0x00	; 0
      002781 00                    1688 	.db #0x00	; 0
      002782 04                    1689 	.db #0x04	; 4
      002783 0C                    1690 	.db #0x0c	; 12
      002784 1C                    1691 	.db #0x1c	; 28
      002785 3C                    1692 	.db #0x3c	; 60
      002786 1C                    1693 	.db #0x1c	; 28
      002787 0C                    1694 	.db #0x0c	; 12
      002788 04                    1695 	.db #0x04	; 4
      002789 00                    1696 	.db #0x00	; 0
      00278A 10                    1697 	.db #0x10	; 16
      00278B 18                    1698 	.db #0x18	; 24
      00278C 1C                    1699 	.db #0x1c	; 28
      00278D 1E                    1700 	.db #0x1e	; 30
      00278E 1C                    1701 	.db #0x1c	; 28
      00278F 18                    1702 	.db #0x18	; 24
      002790 10                    1703 	.db #0x10	; 16
      002791 00                    1704 	.db #0x00	; 0
      002792 08                    1705 	.db #0x08	; 8
      002793 1C                    1706 	.db #0x1c	; 28
      002794 3E                    1707 	.db #0x3e	; 62
      002795 08                    1708 	.db #0x08	; 8
      002796 3E                    1709 	.db #0x3e	; 62
      002797 1C                    1710 	.db #0x1c	; 28
      002798 08                    1711 	.db #0x08	; 8
      002799 00                    1712 	.db #0x00	; 0
      00279A 14                    1713 	.db #0x14	; 20
      00279B 14                    1714 	.db #0x14	; 20
      00279C 14                    1715 	.db #0x14	; 20
      00279D 14                    1716 	.db #0x14	; 20
      00279E 14                    1717 	.db #0x14	; 20
      00279F 00                    1718 	.db #0x00	; 0
      0027A0 14                    1719 	.db #0x14	; 20
      0027A1 00                    1720 	.db #0x00	; 0
      0027A2 3C                    1721 	.db #0x3c	; 60
      0027A3 2A                    1722 	.db #0x2a	; 42
      0027A4 2A                    1723 	.db #0x2a	; 42
      0027A5 2C                    1724 	.db #0x2c	; 44
      0027A6 28                    1725 	.db #0x28	; 40
      0027A7 28                    1726 	.db #0x28	; 40
      0027A8 28                    1727 	.db #0x28	; 40
      0027A9 00                    1728 	.db #0x00	; 0
      0027AA 1C                    1729 	.db #0x1c	; 28
      0027AB 22                    1730 	.db #0x22	; 34
      0027AC 0C                    1731 	.db #0x0c	; 12
      0027AD 14                    1732 	.db #0x14	; 20
      0027AE 18                    1733 	.db #0x18	; 24
      0027AF 22                    1734 	.db #0x22	; 34
      0027B0 1C                    1735 	.db #0x1c	; 28
      0027B1 00                    1736 	.db #0x00	; 0
      0027B2 00                    1737 	.db #0x00	; 0
      0027B3 00                    1738 	.db #0x00	; 0
      0027B4 00                    1739 	.db #0x00	; 0
      0027B5 00                    1740 	.db #0x00	; 0
      0027B6 00                    1741 	.db #0x00	; 0
      0027B7 1E                    1742 	.db #0x1e	; 30
      0027B8 1E                    1743 	.db #0x1e	; 30
      0027B9 00                    1744 	.db #0x00	; 0
      0027BA 08                    1745 	.db #0x08	; 8
      0027BB 1C                    1746 	.db #0x1c	; 28
      0027BC 3E                    1747 	.db #0x3e	; 62
      0027BD 08                    1748 	.db #0x08	; 8
      0027BE 3E                    1749 	.db #0x3e	; 62
      0027BF 1C                    1750 	.db #0x1c	; 28
      0027C0 08                    1751 	.db #0x08	; 8
      0027C1 1C                    1752 	.db #0x1c	; 28
      0027C2 08                    1753 	.db #0x08	; 8
      0027C3 1C                    1754 	.db #0x1c	; 28
      0027C4 3E                    1755 	.db #0x3e	; 62
      0027C5 08                    1756 	.db #0x08	; 8
      0027C6 08                    1757 	.db #0x08	; 8
      0027C7 08                    1758 	.db #0x08	; 8
      0027C8 08                    1759 	.db #0x08	; 8
      0027C9 00                    1760 	.db #0x00	; 0
      0027CA 08                    1761 	.db #0x08	; 8
      0027CB 08                    1762 	.db #0x08	; 8
      0027CC 08                    1763 	.db #0x08	; 8
      0027CD 08                    1764 	.db #0x08	; 8
      0027CE 3E                    1765 	.db #0x3e	; 62
      0027CF 1C                    1766 	.db #0x1c	; 28
      0027D0 08                    1767 	.db #0x08	; 8
      0027D1 00                    1768 	.db #0x00	; 0
      0027D2 00                    1769 	.db #0x00	; 0
      0027D3 08                    1770 	.db #0x08	; 8
      0027D4 18                    1771 	.db #0x18	; 24
      0027D5 3E                    1772 	.db #0x3e	; 62
      0027D6 18                    1773 	.db #0x18	; 24
      0027D7 08                    1774 	.db #0x08	; 8
      0027D8 00                    1775 	.db #0x00	; 0
      0027D9 00                    1776 	.db #0x00	; 0
      0027DA 00                    1777 	.db #0x00	; 0
      0027DB 08                    1778 	.db #0x08	; 8
      0027DC 0C                    1779 	.db #0x0c	; 12
      0027DD 3E                    1780 	.db #0x3e	; 62
      0027DE 0C                    1781 	.db #0x0c	; 12
      0027DF 08                    1782 	.db #0x08	; 8
      0027E0 00                    1783 	.db #0x00	; 0
      0027E1 00                    1784 	.db #0x00	; 0
      0027E2 00                    1785 	.db #0x00	; 0
      0027E3 00                    1786 	.db #0x00	; 0
      0027E4 00                    1787 	.db #0x00	; 0
      0027E5 02                    1788 	.db #0x02	; 2
      0027E6 02                    1789 	.db #0x02	; 2
      0027E7 02                    1790 	.db #0x02	; 2
      0027E8 3E                    1791 	.db #0x3e	; 62
      0027E9 00                    1792 	.db #0x00	; 0
      0027EA 00                    1793 	.db #0x00	; 0
      0027EB 14                    1794 	.db #0x14	; 20
      0027EC 14                    1795 	.db #0x14	; 20
      0027ED 3E                    1796 	.db #0x3e	; 62
      0027EE 14                    1797 	.db #0x14	; 20
      0027EF 14                    1798 	.db #0x14	; 20
      0027F0 00                    1799 	.db #0x00	; 0
      0027F1 00                    1800 	.db #0x00	; 0
      0027F2 08                    1801 	.db #0x08	; 8
      0027F3 08                    1802 	.db #0x08	; 8
      0027F4 1C                    1803 	.db #0x1c	; 28
      0027F5 1C                    1804 	.db #0x1c	; 28
      0027F6 3E                    1805 	.db #0x3e	; 62
      0027F7 3E                    1806 	.db #0x3e	; 62
      0027F8 00                    1807 	.db #0x00	; 0
      0027F9 00                    1808 	.db #0x00	; 0
      0027FA 3E                    1809 	.db #0x3e	; 62
      0027FB 3E                    1810 	.db #0x3e	; 62
      0027FC 1C                    1811 	.db #0x1c	; 28
      0027FD 1C                    1812 	.db #0x1c	; 28
      0027FE 08                    1813 	.db #0x08	; 8
      0027FF 08                    1814 	.db #0x08	; 8
      002800 00                    1815 	.db #0x00	; 0
      002801 00                    1816 	.db #0x00	; 0
      002802 00                    1817 	.db #0x00	; 0
      002803 00                    1818 	.db #0x00	; 0
      002804 00                    1819 	.db #0x00	; 0
      002805 00                    1820 	.db #0x00	; 0
      002806 00                    1821 	.db #0x00	; 0
      002807 00                    1822 	.db #0x00	; 0
      002808 00                    1823 	.db #0x00	; 0
      002809 00                    1824 	.db #0x00	; 0
      00280A 08                    1825 	.db #0x08	; 8
      00280B 1C                    1826 	.db #0x1c	; 28
      00280C 1C                    1827 	.db #0x1c	; 28
      00280D 08                    1828 	.db #0x08	; 8
      00280E 08                    1829 	.db #0x08	; 8
      00280F 00                    1830 	.db #0x00	; 0
      002810 08                    1831 	.db #0x08	; 8
      002811 00                    1832 	.db #0x00	; 0
      002812 36                    1833 	.db #0x36	; 54	'6'
      002813 36                    1834 	.db #0x36	; 54	'6'
      002814 12                    1835 	.db #0x12	; 18
      002815 00                    1836 	.db #0x00	; 0
      002816 00                    1837 	.db #0x00	; 0
      002817 00                    1838 	.db #0x00	; 0
      002818 00                    1839 	.db #0x00	; 0
      002819 00                    1840 	.db #0x00	; 0
      00281A 00                    1841 	.db #0x00	; 0
      00281B 14                    1842 	.db #0x14	; 20
      00281C 3E                    1843 	.db #0x3e	; 62
      00281D 14                    1844 	.db #0x14	; 20
      00281E 14                    1845 	.db #0x14	; 20
      00281F 3E                    1846 	.db #0x3e	; 62
      002820 14                    1847 	.db #0x14	; 20
      002821 00                    1848 	.db #0x00	; 0
      002822 04                    1849 	.db #0x04	; 4
      002823 1C                    1850 	.db #0x1c	; 28
      002824 02                    1851 	.db #0x02	; 2
      002825 0C                    1852 	.db #0x0c	; 12
      002826 10                    1853 	.db #0x10	; 16
      002827 0E                    1854 	.db #0x0e	; 14
      002828 08                    1855 	.db #0x08	; 8
      002829 00                    1856 	.db #0x00	; 0
      00282A 26                    1857 	.db #0x26	; 38
      00282B 26                    1858 	.db #0x26	; 38
      00282C 10                    1859 	.db #0x10	; 16
      00282D 08                    1860 	.db #0x08	; 8
      00282E 04                    1861 	.db #0x04	; 4
      00282F 32                    1862 	.db #0x32	; 50	'2'
      002830 32                    1863 	.db #0x32	; 50	'2'
      002831 00                    1864 	.db #0x00	; 0
      002832 04                    1865 	.db #0x04	; 4
      002833 0A                    1866 	.db #0x0a	; 10
      002834 0A                    1867 	.db #0x0a	; 10
      002835 04                    1868 	.db #0x04	; 4
      002836 2A                    1869 	.db #0x2a	; 42
      002837 12                    1870 	.db #0x12	; 18
      002838 2C                    1871 	.db #0x2c	; 44
      002839 00                    1872 	.db #0x00	; 0
      00283A 0C                    1873 	.db #0x0c	; 12
      00283B 0C                    1874 	.db #0x0c	; 12
      00283C 04                    1875 	.db #0x04	; 4
      00283D 00                    1876 	.db #0x00	; 0
      00283E 00                    1877 	.db #0x00	; 0
      00283F 00                    1878 	.db #0x00	; 0
      002840 00                    1879 	.db #0x00	; 0
      002841 00                    1880 	.db #0x00	; 0
      002842 08                    1881 	.db #0x08	; 8
      002843 04                    1882 	.db #0x04	; 4
      002844 04                    1883 	.db #0x04	; 4
      002845 04                    1884 	.db #0x04	; 4
      002846 04                    1885 	.db #0x04	; 4
      002847 04                    1886 	.db #0x04	; 4
      002848 08                    1887 	.db #0x08	; 8
      002849 00                    1888 	.db #0x00	; 0
      00284A 04                    1889 	.db #0x04	; 4
      00284B 08                    1890 	.db #0x08	; 8
      00284C 08                    1891 	.db #0x08	; 8
      00284D 08                    1892 	.db #0x08	; 8
      00284E 08                    1893 	.db #0x08	; 8
      00284F 08                    1894 	.db #0x08	; 8
      002850 04                    1895 	.db #0x04	; 4
      002851 00                    1896 	.db #0x00	; 0
      002852 00                    1897 	.db #0x00	; 0
      002853 14                    1898 	.db #0x14	; 20
      002854 1C                    1899 	.db #0x1c	; 28
      002855 3E                    1900 	.db #0x3e	; 62
      002856 1C                    1901 	.db #0x1c	; 28
      002857 14                    1902 	.db #0x14	; 20
      002858 00                    1903 	.db #0x00	; 0
      002859 00                    1904 	.db #0x00	; 0
      00285A 00                    1905 	.db #0x00	; 0
      00285B 08                    1906 	.db #0x08	; 8
      00285C 08                    1907 	.db #0x08	; 8
      00285D 3E                    1908 	.db #0x3e	; 62
      00285E 08                    1909 	.db #0x08	; 8
      00285F 08                    1910 	.db #0x08	; 8
      002860 00                    1911 	.db #0x00	; 0
      002861 00                    1912 	.db #0x00	; 0
      002862 00                    1913 	.db #0x00	; 0
      002863 00                    1914 	.db #0x00	; 0
      002864 00                    1915 	.db #0x00	; 0
      002865 00                    1916 	.db #0x00	; 0
      002866 00                    1917 	.db #0x00	; 0
      002867 0C                    1918 	.db #0x0c	; 12
      002868 0C                    1919 	.db #0x0c	; 12
      002869 04                    1920 	.db #0x04	; 4
      00286A 00                    1921 	.db #0x00	; 0
      00286B 00                    1922 	.db #0x00	; 0
      00286C 00                    1923 	.db #0x00	; 0
      00286D 3E                    1924 	.db #0x3e	; 62
      00286E 00                    1925 	.db #0x00	; 0
      00286F 00                    1926 	.db #0x00	; 0
      002870 00                    1927 	.db #0x00	; 0
      002871 00                    1928 	.db #0x00	; 0
      002872 00                    1929 	.db #0x00	; 0
      002873 00                    1930 	.db #0x00	; 0
      002874 00                    1931 	.db #0x00	; 0
      002875 00                    1932 	.db #0x00	; 0
      002876 00                    1933 	.db #0x00	; 0
      002877 0C                    1934 	.db #0x0c	; 12
      002878 0C                    1935 	.db #0x0c	; 12
      002879 00                    1936 	.db #0x00	; 0
      00287A 00                    1937 	.db #0x00	; 0
      00287B 20                    1938 	.db #0x20	; 32
      00287C 10                    1939 	.db #0x10	; 16
      00287D 08                    1940 	.db #0x08	; 8
      00287E 04                    1941 	.db #0x04	; 4
      00287F 02                    1942 	.db #0x02	; 2
      002880 00                    1943 	.db #0x00	; 0
      002881 00                    1944 	.db #0x00	; 0
      002882 1C                    1945 	.db #0x1c	; 28
      002883 22                    1946 	.db #0x22	; 34
      002884 32                    1947 	.db #0x32	; 50	'2'
      002885 2A                    1948 	.db #0x2a	; 42
      002886 26                    1949 	.db #0x26	; 38
      002887 22                    1950 	.db #0x22	; 34
      002888 1C                    1951 	.db #0x1c	; 28
      002889 00                    1952 	.db #0x00	; 0
      00288A 08                    1953 	.db #0x08	; 8
      00288B 0C                    1954 	.db #0x0c	; 12
      00288C 08                    1955 	.db #0x08	; 8
      00288D 08                    1956 	.db #0x08	; 8
      00288E 08                    1957 	.db #0x08	; 8
      00288F 08                    1958 	.db #0x08	; 8
      002890 1C                    1959 	.db #0x1c	; 28
      002891 00                    1960 	.db #0x00	; 0
      002892 1C                    1961 	.db #0x1c	; 28
      002893 22                    1962 	.db #0x22	; 34
      002894 20                    1963 	.db #0x20	; 32
      002895 18                    1964 	.db #0x18	; 24
      002896 04                    1965 	.db #0x04	; 4
      002897 02                    1966 	.db #0x02	; 2
      002898 3E                    1967 	.db #0x3e	; 62
      002899 00                    1968 	.db #0x00	; 0
      00289A 1C                    1969 	.db #0x1c	; 28
      00289B 22                    1970 	.db #0x22	; 34
      00289C 20                    1971 	.db #0x20	; 32
      00289D 1C                    1972 	.db #0x1c	; 28
      00289E 20                    1973 	.db #0x20	; 32
      00289F 22                    1974 	.db #0x22	; 34
      0028A0 1C                    1975 	.db #0x1c	; 28
      0028A1 00                    1976 	.db #0x00	; 0
      0028A2 10                    1977 	.db #0x10	; 16
      0028A3 18                    1978 	.db #0x18	; 24
      0028A4 14                    1979 	.db #0x14	; 20
      0028A5 12                    1980 	.db #0x12	; 18
      0028A6 3E                    1981 	.db #0x3e	; 62
      0028A7 10                    1982 	.db #0x10	; 16
      0028A8 10                    1983 	.db #0x10	; 16
      0028A9 00                    1984 	.db #0x00	; 0
      0028AA 3E                    1985 	.db #0x3e	; 62
      0028AB 02                    1986 	.db #0x02	; 2
      0028AC 02                    1987 	.db #0x02	; 2
      0028AD 1E                    1988 	.db #0x1e	; 30
      0028AE 20                    1989 	.db #0x20	; 32
      0028AF 22                    1990 	.db #0x22	; 34
      0028B0 1C                    1991 	.db #0x1c	; 28
      0028B1 00                    1992 	.db #0x00	; 0
      0028B2 18                    1993 	.db #0x18	; 24
      0028B3 04                    1994 	.db #0x04	; 4
      0028B4 02                    1995 	.db #0x02	; 2
      0028B5 1E                    1996 	.db #0x1e	; 30
      0028B6 22                    1997 	.db #0x22	; 34
      0028B7 22                    1998 	.db #0x22	; 34
      0028B8 1C                    1999 	.db #0x1c	; 28
      0028B9 00                    2000 	.db #0x00	; 0
      0028BA 3E                    2001 	.db #0x3e	; 62
      0028BB 20                    2002 	.db #0x20	; 32
      0028BC 10                    2003 	.db #0x10	; 16
      0028BD 08                    2004 	.db #0x08	; 8
      0028BE 04                    2005 	.db #0x04	; 4
      0028BF 04                    2006 	.db #0x04	; 4
      0028C0 04                    2007 	.db #0x04	; 4
      0028C1 00                    2008 	.db #0x00	; 0
      0028C2 1C                    2009 	.db #0x1c	; 28
      0028C3 22                    2010 	.db #0x22	; 34
      0028C4 22                    2011 	.db #0x22	; 34
      0028C5 1C                    2012 	.db #0x1c	; 28
      0028C6 22                    2013 	.db #0x22	; 34
      0028C7 22                    2014 	.db #0x22	; 34
      0028C8 1C                    2015 	.db #0x1c	; 28
      0028C9 00                    2016 	.db #0x00	; 0
      0028CA 1C                    2017 	.db #0x1c	; 28
      0028CB 22                    2018 	.db #0x22	; 34
      0028CC 22                    2019 	.db #0x22	; 34
      0028CD 3C                    2020 	.db #0x3c	; 60
      0028CE 20                    2021 	.db #0x20	; 32
      0028CF 10                    2022 	.db #0x10	; 16
      0028D0 0C                    2023 	.db #0x0c	; 12
      0028D1 00                    2024 	.db #0x00	; 0
      0028D2 00                    2025 	.db #0x00	; 0
      0028D3 00                    2026 	.db #0x00	; 0
      0028D4 0C                    2027 	.db #0x0c	; 12
      0028D5 0C                    2028 	.db #0x0c	; 12
      0028D6 00                    2029 	.db #0x00	; 0
      0028D7 0C                    2030 	.db #0x0c	; 12
      0028D8 0C                    2031 	.db #0x0c	; 12
      0028D9 00                    2032 	.db #0x00	; 0
      0028DA 00                    2033 	.db #0x00	; 0
      0028DB 00                    2034 	.db #0x00	; 0
      0028DC 0C                    2035 	.db #0x0c	; 12
      0028DD 0C                    2036 	.db #0x0c	; 12
      0028DE 00                    2037 	.db #0x00	; 0
      0028DF 0C                    2038 	.db #0x0c	; 12
      0028E0 0C                    2039 	.db #0x0c	; 12
      0028E1 04                    2040 	.db #0x04	; 4
      0028E2 10                    2041 	.db #0x10	; 16
      0028E3 08                    2042 	.db #0x08	; 8
      0028E4 04                    2043 	.db #0x04	; 4
      0028E5 02                    2044 	.db #0x02	; 2
      0028E6 04                    2045 	.db #0x04	; 4
      0028E7 08                    2046 	.db #0x08	; 8
      0028E8 10                    2047 	.db #0x10	; 16
      0028E9 00                    2048 	.db #0x00	; 0
      0028EA 00                    2049 	.db #0x00	; 0
      0028EB 00                    2050 	.db #0x00	; 0
      0028EC 3E                    2051 	.db #0x3e	; 62
      0028ED 00                    2052 	.db #0x00	; 0
      0028EE 00                    2053 	.db #0x00	; 0
      0028EF 3E                    2054 	.db #0x3e	; 62
      0028F0 00                    2055 	.db #0x00	; 0
      0028F1 00                    2056 	.db #0x00	; 0
      0028F2 04                    2057 	.db #0x04	; 4
      0028F3 08                    2058 	.db #0x08	; 8
      0028F4 10                    2059 	.db #0x10	; 16
      0028F5 20                    2060 	.db #0x20	; 32
      0028F6 10                    2061 	.db #0x10	; 16
      0028F7 08                    2062 	.db #0x08	; 8
      0028F8 04                    2063 	.db #0x04	; 4
      0028F9 00                    2064 	.db #0x00	; 0
      0028FA 1C                    2065 	.db #0x1c	; 28
      0028FB 22                    2066 	.db #0x22	; 34
      0028FC 20                    2067 	.db #0x20	; 32
      0028FD 18                    2068 	.db #0x18	; 24
      0028FE 08                    2069 	.db #0x08	; 8
      0028FF 00                    2070 	.db #0x00	; 0
      002900 08                    2071 	.db #0x08	; 8
      002901 00                    2072 	.db #0x00	; 0
      002902 1C                    2073 	.db #0x1c	; 28
      002903 22                    2074 	.db #0x22	; 34
      002904 3A                    2075 	.db #0x3a	; 58
      002905 2A                    2076 	.db #0x2a	; 42
      002906 3A                    2077 	.db #0x3a	; 58
      002907 02                    2078 	.db #0x02	; 2
      002908 1C                    2079 	.db #0x1c	; 28
      002909 00                    2080 	.db #0x00	; 0
      00290A 1C                    2081 	.db #0x1c	; 28
      00290B 22                    2082 	.db #0x22	; 34
      00290C 22                    2083 	.db #0x22	; 34
      00290D 22                    2084 	.db #0x22	; 34
      00290E 3E                    2085 	.db #0x3e	; 62
      00290F 22                    2086 	.db #0x22	; 34
      002910 22                    2087 	.db #0x22	; 34
      002911 00                    2088 	.db #0x00	; 0
      002912 1E                    2089 	.db #0x1e	; 30
      002913 22                    2090 	.db #0x22	; 34
      002914 22                    2091 	.db #0x22	; 34
      002915 1E                    2092 	.db #0x1e	; 30
      002916 22                    2093 	.db #0x22	; 34
      002917 22                    2094 	.db #0x22	; 34
      002918 1E                    2095 	.db #0x1e	; 30
      002919 00                    2096 	.db #0x00	; 0
      00291A 1C                    2097 	.db #0x1c	; 28
      00291B 22                    2098 	.db #0x22	; 34
      00291C 02                    2099 	.db #0x02	; 2
      00291D 02                    2100 	.db #0x02	; 2
      00291E 02                    2101 	.db #0x02	; 2
      00291F 22                    2102 	.db #0x22	; 34
      002920 1C                    2103 	.db #0x1c	; 28
      002921 00                    2104 	.db #0x00	; 0
      002922 1E                    2105 	.db #0x1e	; 30
      002923 22                    2106 	.db #0x22	; 34
      002924 22                    2107 	.db #0x22	; 34
      002925 22                    2108 	.db #0x22	; 34
      002926 22                    2109 	.db #0x22	; 34
      002927 22                    2110 	.db #0x22	; 34
      002928 1E                    2111 	.db #0x1e	; 30
      002929 00                    2112 	.db #0x00	; 0
      00292A 3E                    2113 	.db #0x3e	; 62
      00292B 02                    2114 	.db #0x02	; 2
      00292C 02                    2115 	.db #0x02	; 2
      00292D 1E                    2116 	.db #0x1e	; 30
      00292E 02                    2117 	.db #0x02	; 2
      00292F 02                    2118 	.db #0x02	; 2
      002930 3E                    2119 	.db #0x3e	; 62
      002931 00                    2120 	.db #0x00	; 0
      002932 3E                    2121 	.db #0x3e	; 62
      002933 02                    2122 	.db #0x02	; 2
      002934 02                    2123 	.db #0x02	; 2
      002935 1E                    2124 	.db #0x1e	; 30
      002936 02                    2125 	.db #0x02	; 2
      002937 02                    2126 	.db #0x02	; 2
      002938 02                    2127 	.db #0x02	; 2
      002939 00                    2128 	.db #0x00	; 0
      00293A 1C                    2129 	.db #0x1c	; 28
      00293B 22                    2130 	.db #0x22	; 34
      00293C 02                    2131 	.db #0x02	; 2
      00293D 3A                    2132 	.db #0x3a	; 58
      00293E 22                    2133 	.db #0x22	; 34
      00293F 22                    2134 	.db #0x22	; 34
      002940 3C                    2135 	.db #0x3c	; 60
      002941 00                    2136 	.db #0x00	; 0
      002942 22                    2137 	.db #0x22	; 34
      002943 22                    2138 	.db #0x22	; 34
      002944 22                    2139 	.db #0x22	; 34
      002945 3E                    2140 	.db #0x3e	; 62
      002946 22                    2141 	.db #0x22	; 34
      002947 22                    2142 	.db #0x22	; 34
      002948 22                    2143 	.db #0x22	; 34
      002949 00                    2144 	.db #0x00	; 0
      00294A 1C                    2145 	.db #0x1c	; 28
      00294B 08                    2146 	.db #0x08	; 8
      00294C 08                    2147 	.db #0x08	; 8
      00294D 08                    2148 	.db #0x08	; 8
      00294E 08                    2149 	.db #0x08	; 8
      00294F 08                    2150 	.db #0x08	; 8
      002950 1C                    2151 	.db #0x1c	; 28
      002951 00                    2152 	.db #0x00	; 0
      002952 20                    2153 	.db #0x20	; 32
      002953 20                    2154 	.db #0x20	; 32
      002954 20                    2155 	.db #0x20	; 32
      002955 20                    2156 	.db #0x20	; 32
      002956 22                    2157 	.db #0x22	; 34
      002957 22                    2158 	.db #0x22	; 34
      002958 1C                    2159 	.db #0x1c	; 28
      002959 00                    2160 	.db #0x00	; 0
      00295A 22                    2161 	.db #0x22	; 34
      00295B 12                    2162 	.db #0x12	; 18
      00295C 0A                    2163 	.db #0x0a	; 10
      00295D 06                    2164 	.db #0x06	; 6
      00295E 0A                    2165 	.db #0x0a	; 10
      00295F 12                    2166 	.db #0x12	; 18
      002960 22                    2167 	.db #0x22	; 34
      002961 00                    2168 	.db #0x00	; 0
      002962 02                    2169 	.db #0x02	; 2
      002963 02                    2170 	.db #0x02	; 2
      002964 02                    2171 	.db #0x02	; 2
      002965 02                    2172 	.db #0x02	; 2
      002966 02                    2173 	.db #0x02	; 2
      002967 02                    2174 	.db #0x02	; 2
      002968 3E                    2175 	.db #0x3e	; 62
      002969 00                    2176 	.db #0x00	; 0
      00296A 22                    2177 	.db #0x22	; 34
      00296B 36                    2178 	.db #0x36	; 54	'6'
      00296C 2A                    2179 	.db #0x2a	; 42
      00296D 22                    2180 	.db #0x22	; 34
      00296E 22                    2181 	.db #0x22	; 34
      00296F 22                    2182 	.db #0x22	; 34
      002970 22                    2183 	.db #0x22	; 34
      002971 00                    2184 	.db #0x00	; 0
      002972 22                    2185 	.db #0x22	; 34
      002973 26                    2186 	.db #0x26	; 38
      002974 2A                    2187 	.db #0x2a	; 42
      002975 32                    2188 	.db #0x32	; 50	'2'
      002976 22                    2189 	.db #0x22	; 34
      002977 22                    2190 	.db #0x22	; 34
      002978 22                    2191 	.db #0x22	; 34
      002979 00                    2192 	.db #0x00	; 0
      00297A 1C                    2193 	.db #0x1c	; 28
      00297B 22                    2194 	.db #0x22	; 34
      00297C 22                    2195 	.db #0x22	; 34
      00297D 22                    2196 	.db #0x22	; 34
      00297E 22                    2197 	.db #0x22	; 34
      00297F 22                    2198 	.db #0x22	; 34
      002980 1C                    2199 	.db #0x1c	; 28
      002981 00                    2200 	.db #0x00	; 0
      002982 1E                    2201 	.db #0x1e	; 30
      002983 22                    2202 	.db #0x22	; 34
      002984 22                    2203 	.db #0x22	; 34
      002985 1E                    2204 	.db #0x1e	; 30
      002986 02                    2205 	.db #0x02	; 2
      002987 02                    2206 	.db #0x02	; 2
      002988 02                    2207 	.db #0x02	; 2
      002989 00                    2208 	.db #0x00	; 0
      00298A 1C                    2209 	.db #0x1c	; 28
      00298B 22                    2210 	.db #0x22	; 34
      00298C 22                    2211 	.db #0x22	; 34
      00298D 22                    2212 	.db #0x22	; 34
      00298E 2A                    2213 	.db #0x2a	; 42
      00298F 12                    2214 	.db #0x12	; 18
      002990 2C                    2215 	.db #0x2c	; 44
      002991 00                    2216 	.db #0x00	; 0
      002992 1E                    2217 	.db #0x1e	; 30
      002993 22                    2218 	.db #0x22	; 34
      002994 22                    2219 	.db #0x22	; 34
      002995 1E                    2220 	.db #0x1e	; 30
      002996 12                    2221 	.db #0x12	; 18
      002997 22                    2222 	.db #0x22	; 34
      002998 22                    2223 	.db #0x22	; 34
      002999 00                    2224 	.db #0x00	; 0
      00299A 1C                    2225 	.db #0x1c	; 28
      00299B 22                    2226 	.db #0x22	; 34
      00299C 02                    2227 	.db #0x02	; 2
      00299D 1C                    2228 	.db #0x1c	; 28
      00299E 20                    2229 	.db #0x20	; 32
      00299F 22                    2230 	.db #0x22	; 34
      0029A0 1C                    2231 	.db #0x1c	; 28
      0029A1 00                    2232 	.db #0x00	; 0
      0029A2 3E                    2233 	.db #0x3e	; 62
      0029A3 08                    2234 	.db #0x08	; 8
      0029A4 08                    2235 	.db #0x08	; 8
      0029A5 08                    2236 	.db #0x08	; 8
      0029A6 08                    2237 	.db #0x08	; 8
      0029A7 08                    2238 	.db #0x08	; 8
      0029A8 08                    2239 	.db #0x08	; 8
      0029A9 00                    2240 	.db #0x00	; 0
      0029AA 22                    2241 	.db #0x22	; 34
      0029AB 22                    2242 	.db #0x22	; 34
      0029AC 22                    2243 	.db #0x22	; 34
      0029AD 22                    2244 	.db #0x22	; 34
      0029AE 22                    2245 	.db #0x22	; 34
      0029AF 22                    2246 	.db #0x22	; 34
      0029B0 1C                    2247 	.db #0x1c	; 28
      0029B1 00                    2248 	.db #0x00	; 0
      0029B2 22                    2249 	.db #0x22	; 34
      0029B3 22                    2250 	.db #0x22	; 34
      0029B4 22                    2251 	.db #0x22	; 34
      0029B5 22                    2252 	.db #0x22	; 34
      0029B6 22                    2253 	.db #0x22	; 34
      0029B7 14                    2254 	.db #0x14	; 20
      0029B8 08                    2255 	.db #0x08	; 8
      0029B9 00                    2256 	.db #0x00	; 0
      0029BA 22                    2257 	.db #0x22	; 34
      0029BB 22                    2258 	.db #0x22	; 34
      0029BC 2A                    2259 	.db #0x2a	; 42
      0029BD 2A                    2260 	.db #0x2a	; 42
      0029BE 2A                    2261 	.db #0x2a	; 42
      0029BF 2A                    2262 	.db #0x2a	; 42
      0029C0 14                    2263 	.db #0x14	; 20
      0029C1 00                    2264 	.db #0x00	; 0
      0029C2 22                    2265 	.db #0x22	; 34
      0029C3 22                    2266 	.db #0x22	; 34
      0029C4 14                    2267 	.db #0x14	; 20
      0029C5 08                    2268 	.db #0x08	; 8
      0029C6 14                    2269 	.db #0x14	; 20
      0029C7 22                    2270 	.db #0x22	; 34
      0029C8 22                    2271 	.db #0x22	; 34
      0029C9 00                    2272 	.db #0x00	; 0
      0029CA 22                    2273 	.db #0x22	; 34
      0029CB 22                    2274 	.db #0x22	; 34
      0029CC 22                    2275 	.db #0x22	; 34
      0029CD 14                    2276 	.db #0x14	; 20
      0029CE 08                    2277 	.db #0x08	; 8
      0029CF 08                    2278 	.db #0x08	; 8
      0029D0 08                    2279 	.db #0x08	; 8
      0029D1 00                    2280 	.db #0x00	; 0
      0029D2 1E                    2281 	.db #0x1e	; 30
      0029D3 10                    2282 	.db #0x10	; 16
      0029D4 08                    2283 	.db #0x08	; 8
      0029D5 04                    2284 	.db #0x04	; 4
      0029D6 02                    2285 	.db #0x02	; 2
      0029D7 02                    2286 	.db #0x02	; 2
      0029D8 1E                    2287 	.db #0x1e	; 30
      0029D9 00                    2288 	.db #0x00	; 0
      0029DA 1C                    2289 	.db #0x1c	; 28
      0029DB 04                    2290 	.db #0x04	; 4
      0029DC 04                    2291 	.db #0x04	; 4
      0029DD 04                    2292 	.db #0x04	; 4
      0029DE 04                    2293 	.db #0x04	; 4
      0029DF 04                    2294 	.db #0x04	; 4
      0029E0 1C                    2295 	.db #0x1c	; 28
      0029E1 00                    2296 	.db #0x00	; 0
      0029E2 00                    2297 	.db #0x00	; 0
      0029E3 02                    2298 	.db #0x02	; 2
      0029E4 04                    2299 	.db #0x04	; 4
      0029E5 08                    2300 	.db #0x08	; 8
      0029E6 10                    2301 	.db #0x10	; 16
      0029E7 20                    2302 	.db #0x20	; 32
      0029E8 00                    2303 	.db #0x00	; 0
      0029E9 00                    2304 	.db #0x00	; 0
      0029EA 1C                    2305 	.db #0x1c	; 28
      0029EB 10                    2306 	.db #0x10	; 16
      0029EC 10                    2307 	.db #0x10	; 16
      0029ED 10                    2308 	.db #0x10	; 16
      0029EE 10                    2309 	.db #0x10	; 16
      0029EF 10                    2310 	.db #0x10	; 16
      0029F0 1C                    2311 	.db #0x1c	; 28
      0029F1 00                    2312 	.db #0x00	; 0
      0029F2 08                    2313 	.db #0x08	; 8
      0029F3 14                    2314 	.db #0x14	; 20
      0029F4 22                    2315 	.db #0x22	; 34
      0029F5 00                    2316 	.db #0x00	; 0
      0029F6 00                    2317 	.db #0x00	; 0
      0029F7 00                    2318 	.db #0x00	; 0
      0029F8 00                    2319 	.db #0x00	; 0
      0029F9 00                    2320 	.db #0x00	; 0
      0029FA 00                    2321 	.db #0x00	; 0
      0029FB 00                    2322 	.db #0x00	; 0
      0029FC 00                    2323 	.db #0x00	; 0
      0029FD 00                    2324 	.db #0x00	; 0
      0029FE 00                    2325 	.db #0x00	; 0
      0029FF 00                    2326 	.db #0x00	; 0
      002A00 00                    2327 	.db #0x00	; 0
      002A01 3F                    2328 	.db #0x3f	; 63
      002A02 0C                    2329 	.db #0x0c	; 12
      002A03 0C                    2330 	.db #0x0c	; 12
      002A04 08                    2331 	.db #0x08	; 8
      002A05 00                    2332 	.db #0x00	; 0
      002A06 00                    2333 	.db #0x00	; 0
      002A07 00                    2334 	.db #0x00	; 0
      002A08 00                    2335 	.db #0x00	; 0
      002A09 00                    2336 	.db #0x00	; 0
      002A0A 00                    2337 	.db #0x00	; 0
      002A0B 00                    2338 	.db #0x00	; 0
      002A0C 1C                    2339 	.db #0x1c	; 28
      002A0D 20                    2340 	.db #0x20	; 32
      002A0E 3C                    2341 	.db #0x3c	; 60
      002A0F 22                    2342 	.db #0x22	; 34
      002A10 3C                    2343 	.db #0x3c	; 60
      002A11 00                    2344 	.db #0x00	; 0
      002A12 02                    2345 	.db #0x02	; 2
      002A13 02                    2346 	.db #0x02	; 2
      002A14 1E                    2347 	.db #0x1e	; 30
      002A15 22                    2348 	.db #0x22	; 34
      002A16 22                    2349 	.db #0x22	; 34
      002A17 22                    2350 	.db #0x22	; 34
      002A18 1E                    2351 	.db #0x1e	; 30
      002A19 00                    2352 	.db #0x00	; 0
      002A1A 00                    2353 	.db #0x00	; 0
      002A1B 00                    2354 	.db #0x00	; 0
      002A1C 1C                    2355 	.db #0x1c	; 28
      002A1D 22                    2356 	.db #0x22	; 34
      002A1E 02                    2357 	.db #0x02	; 2
      002A1F 22                    2358 	.db #0x22	; 34
      002A20 1C                    2359 	.db #0x1c	; 28
      002A21 00                    2360 	.db #0x00	; 0
      002A22 20                    2361 	.db #0x20	; 32
      002A23 20                    2362 	.db #0x20	; 32
      002A24 3C                    2363 	.db #0x3c	; 60
      002A25 22                    2364 	.db #0x22	; 34
      002A26 22                    2365 	.db #0x22	; 34
      002A27 22                    2366 	.db #0x22	; 34
      002A28 3C                    2367 	.db #0x3c	; 60
      002A29 00                    2368 	.db #0x00	; 0
      002A2A 00                    2369 	.db #0x00	; 0
      002A2B 00                    2370 	.db #0x00	; 0
      002A2C 1C                    2371 	.db #0x1c	; 28
      002A2D 22                    2372 	.db #0x22	; 34
      002A2E 1E                    2373 	.db #0x1e	; 30
      002A2F 02                    2374 	.db #0x02	; 2
      002A30 1C                    2375 	.db #0x1c	; 28
      002A31 00                    2376 	.db #0x00	; 0
      002A32 18                    2377 	.db #0x18	; 24
      002A33 04                    2378 	.db #0x04	; 4
      002A34 04                    2379 	.db #0x04	; 4
      002A35 1E                    2380 	.db #0x1e	; 30
      002A36 04                    2381 	.db #0x04	; 4
      002A37 04                    2382 	.db #0x04	; 4
      002A38 04                    2383 	.db #0x04	; 4
      002A39 00                    2384 	.db #0x00	; 0
      002A3A 00                    2385 	.db #0x00	; 0
      002A3B 00                    2386 	.db #0x00	; 0
      002A3C 3C                    2387 	.db #0x3c	; 60
      002A3D 22                    2388 	.db #0x22	; 34
      002A3E 22                    2389 	.db #0x22	; 34
      002A3F 3C                    2390 	.db #0x3c	; 60
      002A40 20                    2391 	.db #0x20	; 32
      002A41 1C                    2392 	.db #0x1c	; 28
      002A42 02                    2393 	.db #0x02	; 2
      002A43 02                    2394 	.db #0x02	; 2
      002A44 0E                    2395 	.db #0x0e	; 14
      002A45 12                    2396 	.db #0x12	; 18
      002A46 12                    2397 	.db #0x12	; 18
      002A47 12                    2398 	.db #0x12	; 18
      002A48 12                    2399 	.db #0x12	; 18
      002A49 00                    2400 	.db #0x00	; 0
      002A4A 08                    2401 	.db #0x08	; 8
      002A4B 00                    2402 	.db #0x00	; 0
      002A4C 08                    2403 	.db #0x08	; 8
      002A4D 08                    2404 	.db #0x08	; 8
      002A4E 08                    2405 	.db #0x08	; 8
      002A4F 08                    2406 	.db #0x08	; 8
      002A50 18                    2407 	.db #0x18	; 24
      002A51 00                    2408 	.db #0x00	; 0
      002A52 10                    2409 	.db #0x10	; 16
      002A53 00                    2410 	.db #0x00	; 0
      002A54 18                    2411 	.db #0x18	; 24
      002A55 10                    2412 	.db #0x10	; 16
      002A56 10                    2413 	.db #0x10	; 16
      002A57 10                    2414 	.db #0x10	; 16
      002A58 12                    2415 	.db #0x12	; 18
      002A59 0C                    2416 	.db #0x0c	; 12
      002A5A 02                    2417 	.db #0x02	; 2
      002A5B 02                    2418 	.db #0x02	; 2
      002A5C 12                    2419 	.db #0x12	; 18
      002A5D 0A                    2420 	.db #0x0a	; 10
      002A5E 06                    2421 	.db #0x06	; 6
      002A5F 0A                    2422 	.db #0x0a	; 10
      002A60 12                    2423 	.db #0x12	; 18
      002A61 00                    2424 	.db #0x00	; 0
      002A62 08                    2425 	.db #0x08	; 8
      002A63 08                    2426 	.db #0x08	; 8
      002A64 08                    2427 	.db #0x08	; 8
      002A65 08                    2428 	.db #0x08	; 8
      002A66 08                    2429 	.db #0x08	; 8
      002A67 08                    2430 	.db #0x08	; 8
      002A68 18                    2431 	.db #0x18	; 24
      002A69 00                    2432 	.db #0x00	; 0
      002A6A 00                    2433 	.db #0x00	; 0
      002A6B 00                    2434 	.db #0x00	; 0
      002A6C 16                    2435 	.db #0x16	; 22
      002A6D 2A                    2436 	.db #0x2a	; 42
      002A6E 2A                    2437 	.db #0x2a	; 42
      002A6F 22                    2438 	.db #0x22	; 34
      002A70 22                    2439 	.db #0x22	; 34
      002A71 00                    2440 	.db #0x00	; 0
      002A72 00                    2441 	.db #0x00	; 0
      002A73 00                    2442 	.db #0x00	; 0
      002A74 0E                    2443 	.db #0x0e	; 14
      002A75 12                    2444 	.db #0x12	; 18
      002A76 12                    2445 	.db #0x12	; 18
      002A77 12                    2446 	.db #0x12	; 18
      002A78 12                    2447 	.db #0x12	; 18
      002A79 00                    2448 	.db #0x00	; 0
      002A7A 00                    2449 	.db #0x00	; 0
      002A7B 00                    2450 	.db #0x00	; 0
      002A7C 1C                    2451 	.db #0x1c	; 28
      002A7D 22                    2452 	.db #0x22	; 34
      002A7E 22                    2453 	.db #0x22	; 34
      002A7F 22                    2454 	.db #0x22	; 34
      002A80 1C                    2455 	.db #0x1c	; 28
      002A81 00                    2456 	.db #0x00	; 0
      002A82 00                    2457 	.db #0x00	; 0
      002A83 00                    2458 	.db #0x00	; 0
      002A84 1E                    2459 	.db #0x1e	; 30
      002A85 22                    2460 	.db #0x22	; 34
      002A86 22                    2461 	.db #0x22	; 34
      002A87 22                    2462 	.db #0x22	; 34
      002A88 1E                    2463 	.db #0x1e	; 30
      002A89 02                    2464 	.db #0x02	; 2
      002A8A 00                    2465 	.db #0x00	; 0
      002A8B 00                    2466 	.db #0x00	; 0
      002A8C 3C                    2467 	.db #0x3c	; 60
      002A8D 22                    2468 	.db #0x22	; 34
      002A8E 22                    2469 	.db #0x22	; 34
      002A8F 22                    2470 	.db #0x22	; 34
      002A90 3C                    2471 	.db #0x3c	; 60
      002A91 20                    2472 	.db #0x20	; 32
      002A92 00                    2473 	.db #0x00	; 0
      002A93 00                    2474 	.db #0x00	; 0
      002A94 1A                    2475 	.db #0x1a	; 26
      002A95 24                    2476 	.db #0x24	; 36
      002A96 04                    2477 	.db #0x04	; 4
      002A97 04                    2478 	.db #0x04	; 4
      002A98 0E                    2479 	.db #0x0e	; 14
      002A99 00                    2480 	.db #0x00	; 0
      002A9A 00                    2481 	.db #0x00	; 0
      002A9B 00                    2482 	.db #0x00	; 0
      002A9C 1C                    2483 	.db #0x1c	; 28
      002A9D 02                    2484 	.db #0x02	; 2
      002A9E 1C                    2485 	.db #0x1c	; 28
      002A9F 20                    2486 	.db #0x20	; 32
      002AA0 1C                    2487 	.db #0x1c	; 28
      002AA1 00                    2488 	.db #0x00	; 0
      002AA2 00                    2489 	.db #0x00	; 0
      002AA3 04                    2490 	.db #0x04	; 4
      002AA4 1E                    2491 	.db #0x1e	; 30
      002AA5 04                    2492 	.db #0x04	; 4
      002AA6 04                    2493 	.db #0x04	; 4
      002AA7 14                    2494 	.db #0x14	; 20
      002AA8 08                    2495 	.db #0x08	; 8
      002AA9 00                    2496 	.db #0x00	; 0
      002AAA 00                    2497 	.db #0x00	; 0
      002AAB 00                    2498 	.db #0x00	; 0
      002AAC 12                    2499 	.db #0x12	; 18
      002AAD 12                    2500 	.db #0x12	; 18
      002AAE 12                    2501 	.db #0x12	; 18
      002AAF 1A                    2502 	.db #0x1a	; 26
      002AB0 14                    2503 	.db #0x14	; 20
      002AB1 00                    2504 	.db #0x00	; 0
      002AB2 00                    2505 	.db #0x00	; 0
      002AB3 00                    2506 	.db #0x00	; 0
      002AB4 22                    2507 	.db #0x22	; 34
      002AB5 22                    2508 	.db #0x22	; 34
      002AB6 22                    2509 	.db #0x22	; 34
      002AB7 14                    2510 	.db #0x14	; 20
      002AB8 08                    2511 	.db #0x08	; 8
      002AB9 00                    2512 	.db #0x00	; 0
      002ABA 00                    2513 	.db #0x00	; 0
      002ABB 00                    2514 	.db #0x00	; 0
      002ABC 22                    2515 	.db #0x22	; 34
      002ABD 22                    2516 	.db #0x22	; 34
      002ABE 2A                    2517 	.db #0x2a	; 42
      002ABF 3E                    2518 	.db #0x3e	; 62
      002AC0 14                    2519 	.db #0x14	; 20
      002AC1 00                    2520 	.db #0x00	; 0
      002AC2 00                    2521 	.db #0x00	; 0
      002AC3 00                    2522 	.db #0x00	; 0
      002AC4 12                    2523 	.db #0x12	; 18
      002AC5 12                    2524 	.db #0x12	; 18
      002AC6 0C                    2525 	.db #0x0c	; 12
      002AC7 12                    2526 	.db #0x12	; 18
      002AC8 12                    2527 	.db #0x12	; 18
      002AC9 00                    2528 	.db #0x00	; 0
      002ACA 00                    2529 	.db #0x00	; 0
      002ACB 00                    2530 	.db #0x00	; 0
      002ACC 12                    2531 	.db #0x12	; 18
      002ACD 12                    2532 	.db #0x12	; 18
      002ACE 12                    2533 	.db #0x12	; 18
      002ACF 1C                    2534 	.db #0x1c	; 28
      002AD0 08                    2535 	.db #0x08	; 8
      002AD1 06                    2536 	.db #0x06	; 6
      002AD2 00                    2537 	.db #0x00	; 0
      002AD3 00                    2538 	.db #0x00	; 0
      002AD4 1E                    2539 	.db #0x1e	; 30
      002AD5 10                    2540 	.db #0x10	; 16
      002AD6 0C                    2541 	.db #0x0c	; 12
      002AD7 02                    2542 	.db #0x02	; 2
      002AD8 1E                    2543 	.db #0x1e	; 30
      002AD9 00                    2544 	.db #0x00	; 0
      002ADA 18                    2545 	.db #0x18	; 24
      002ADB 04                    2546 	.db #0x04	; 4
      002ADC 04                    2547 	.db #0x04	; 4
      002ADD 06                    2548 	.db #0x06	; 6
      002ADE 04                    2549 	.db #0x04	; 4
      002ADF 04                    2550 	.db #0x04	; 4
      002AE0 18                    2551 	.db #0x18	; 24
      002AE1 00                    2552 	.db #0x00	; 0
      002AE2 08                    2553 	.db #0x08	; 8
      002AE3 08                    2554 	.db #0x08	; 8
      002AE4 08                    2555 	.db #0x08	; 8
      002AE5 00                    2556 	.db #0x00	; 0
      002AE6 08                    2557 	.db #0x08	; 8
      002AE7 08                    2558 	.db #0x08	; 8
      002AE8 08                    2559 	.db #0x08	; 8
      002AE9 00                    2560 	.db #0x00	; 0
      002AEA 0C                    2561 	.db #0x0c	; 12
      002AEB 10                    2562 	.db #0x10	; 16
      002AEC 10                    2563 	.db #0x10	; 16
      002AED 30                    2564 	.db #0x30	; 48	'0'
      002AEE 10                    2565 	.db #0x10	; 16
      002AEF 10                    2566 	.db #0x10	; 16
      002AF0 0C                    2567 	.db #0x0c	; 12
      002AF1 00                    2568 	.db #0x00	; 0
      002AF2 14                    2569 	.db #0x14	; 20
      002AF3 0A                    2570 	.db #0x0a	; 10
      002AF4 00                    2571 	.db #0x00	; 0
      002AF5 00                    2572 	.db #0x00	; 0
      002AF6 00                    2573 	.db #0x00	; 0
      002AF7 00                    2574 	.db #0x00	; 0
      002AF8 00                    2575 	.db #0x00	; 0
      002AF9 00                    2576 	.db #0x00	; 0
      002AFA 08                    2577 	.db #0x08	; 8
      002AFB 1C                    2578 	.db #0x1c	; 28
      002AFC 36                    2579 	.db #0x36	; 54	'6'
      002AFD 22                    2580 	.db #0x22	; 34
      002AFE 22                    2581 	.db #0x22	; 34
      002AFF 3E                    2582 	.db #0x3e	; 62
      002B00 00                    2583 	.db #0x00	; 0
      002B01 00                    2584 	.db #0x00	; 0
      002B02 1C                    2585 	.db #0x1c	; 28
      002B03 22                    2586 	.db #0x22	; 34
      002B04 02                    2587 	.db #0x02	; 2
      002B05 02                    2588 	.db #0x02	; 2
      002B06 22                    2589 	.db #0x22	; 34
      002B07 1C                    2590 	.db #0x1c	; 28
      002B08 08                    2591 	.db #0x08	; 8
      002B09 0C                    2592 	.db #0x0c	; 12
      002B0A 12                    2593 	.db #0x12	; 18
      002B0B 00                    2594 	.db #0x00	; 0
      002B0C 12                    2595 	.db #0x12	; 18
      002B0D 12                    2596 	.db #0x12	; 18
      002B0E 12                    2597 	.db #0x12	; 18
      002B0F 1A                    2598 	.db #0x1a	; 26
      002B10 14                    2599 	.db #0x14	; 20
      002B11 00                    2600 	.db #0x00	; 0
      002B12 30                    2601 	.db #0x30	; 48	'0'
      002B13 00                    2602 	.db #0x00	; 0
      002B14 1C                    2603 	.db #0x1c	; 28
      002B15 22                    2604 	.db #0x22	; 34
      002B16 1E                    2605 	.db #0x1e	; 30
      002B17 02                    2606 	.db #0x02	; 2
      002B18 1C                    2607 	.db #0x1c	; 28
      002B19 00                    2608 	.db #0x00	; 0
      002B1A 1C                    2609 	.db #0x1c	; 28
      002B1B 00                    2610 	.db #0x00	; 0
      002B1C 1C                    2611 	.db #0x1c	; 28
      002B1D 20                    2612 	.db #0x20	; 32
      002B1E 3C                    2613 	.db #0x3c	; 60
      002B1F 22                    2614 	.db #0x22	; 34
      002B20 3C                    2615 	.db #0x3c	; 60
      002B21 00                    2616 	.db #0x00	; 0
      002B22 14                    2617 	.db #0x14	; 20
      002B23 00                    2618 	.db #0x00	; 0
      002B24 1C                    2619 	.db #0x1c	; 28
      002B25 20                    2620 	.db #0x20	; 32
      002B26 3C                    2621 	.db #0x3c	; 60
      002B27 22                    2622 	.db #0x22	; 34
      002B28 3C                    2623 	.db #0x3c	; 60
      002B29 00                    2624 	.db #0x00	; 0
      002B2A 0C                    2625 	.db #0x0c	; 12
      002B2B 00                    2626 	.db #0x00	; 0
      002B2C 1C                    2627 	.db #0x1c	; 28
      002B2D 20                    2628 	.db #0x20	; 32
      002B2E 3C                    2629 	.db #0x3c	; 60
      002B2F 22                    2630 	.db #0x22	; 34
      002B30 3C                    2631 	.db #0x3c	; 60
      002B31 00                    2632 	.db #0x00	; 0
      002B32 1C                    2633 	.db #0x1c	; 28
      002B33 14                    2634 	.db #0x14	; 20
      002B34 1C                    2635 	.db #0x1c	; 28
      002B35 20                    2636 	.db #0x20	; 32
      002B36 3C                    2637 	.db #0x3c	; 60
      002B37 22                    2638 	.db #0x22	; 34
      002B38 3C                    2639 	.db #0x3c	; 60
      002B39 00                    2640 	.db #0x00	; 0
      002B3A 00                    2641 	.db #0x00	; 0
      002B3B 1C                    2642 	.db #0x1c	; 28
      002B3C 22                    2643 	.db #0x22	; 34
      002B3D 02                    2644 	.db #0x02	; 2
      002B3E 22                    2645 	.db #0x22	; 34
      002B3F 1C                    2646 	.db #0x1c	; 28
      002B40 08                    2647 	.db #0x08	; 8
      002B41 0C                    2648 	.db #0x0c	; 12
      002B42 1C                    2649 	.db #0x1c	; 28
      002B43 00                    2650 	.db #0x00	; 0
      002B44 1C                    2651 	.db #0x1c	; 28
      002B45 22                    2652 	.db #0x22	; 34
      002B46 1E                    2653 	.db #0x1e	; 30
      002B47 02                    2654 	.db #0x02	; 2
      002B48 1C                    2655 	.db #0x1c	; 28
      002B49 00                    2656 	.db #0x00	; 0
      002B4A 14                    2657 	.db #0x14	; 20
      002B4B 00                    2658 	.db #0x00	; 0
      002B4C 1C                    2659 	.db #0x1c	; 28
      002B4D 22                    2660 	.db #0x22	; 34
      002B4E 1E                    2661 	.db #0x1e	; 30
      002B4F 02                    2662 	.db #0x02	; 2
      002B50 1C                    2663 	.db #0x1c	; 28
      002B51 00                    2664 	.db #0x00	; 0
      002B52 0C                    2665 	.db #0x0c	; 12
      002B53 00                    2666 	.db #0x00	; 0
      002B54 1C                    2667 	.db #0x1c	; 28
      002B55 22                    2668 	.db #0x22	; 34
      002B56 1E                    2669 	.db #0x1e	; 30
      002B57 02                    2670 	.db #0x02	; 2
      002B58 1C                    2671 	.db #0x1c	; 28
      002B59 00                    2672 	.db #0x00	; 0
      002B5A 14                    2673 	.db #0x14	; 20
      002B5B 00                    2674 	.db #0x00	; 0
      002B5C 08                    2675 	.db #0x08	; 8
      002B5D 08                    2676 	.db #0x08	; 8
      002B5E 08                    2677 	.db #0x08	; 8
      002B5F 08                    2678 	.db #0x08	; 8
      002B60 18                    2679 	.db #0x18	; 24
      002B61 00                    2680 	.db #0x00	; 0
      002B62 08                    2681 	.db #0x08	; 8
      002B63 14                    2682 	.db #0x14	; 20
      002B64 00                    2683 	.db #0x00	; 0
      002B65 08                    2684 	.db #0x08	; 8
      002B66 08                    2685 	.db #0x08	; 8
      002B67 08                    2686 	.db #0x08	; 8
      002B68 18                    2687 	.db #0x18	; 24
      002B69 00                    2688 	.db #0x00	; 0
      002B6A 04                    2689 	.db #0x04	; 4
      002B6B 00                    2690 	.db #0x00	; 0
      002B6C 08                    2691 	.db #0x08	; 8
      002B6D 08                    2692 	.db #0x08	; 8
      002B6E 08                    2693 	.db #0x08	; 8
      002B6F 08                    2694 	.db #0x08	; 8
      002B70 18                    2695 	.db #0x18	; 24
      002B71 00                    2696 	.db #0x00	; 0
      002B72 14                    2697 	.db #0x14	; 20
      002B73 00                    2698 	.db #0x00	; 0
      002B74 08                    2699 	.db #0x08	; 8
      002B75 14                    2700 	.db #0x14	; 20
      002B76 22                    2701 	.db #0x22	; 34
      002B77 3E                    2702 	.db #0x3e	; 62
      002B78 22                    2703 	.db #0x22	; 34
      002B79 00                    2704 	.db #0x00	; 0
      002B7A 1C                    2705 	.db #0x1c	; 28
      002B7B 14                    2706 	.db #0x14	; 20
      002B7C 1C                    2707 	.db #0x1c	; 28
      002B7D 36                    2708 	.db #0x36	; 54	'6'
      002B7E 22                    2709 	.db #0x22	; 34
      002B7F 3E                    2710 	.db #0x3e	; 62
      002B80 22                    2711 	.db #0x22	; 34
      002B81 00                    2712 	.db #0x00	; 0
      002B82 30                    2713 	.db #0x30	; 48	'0'
      002B83 00                    2714 	.db #0x00	; 0
      002B84 3E                    2715 	.db #0x3e	; 62
      002B85 02                    2716 	.db #0x02	; 2
      002B86 1E                    2717 	.db #0x1e	; 30
      002B87 02                    2718 	.db #0x02	; 2
      002B88 3E                    2719 	.db #0x3e	; 62
      002B89 00                    2720 	.db #0x00	; 0
      002B8A 00                    2721 	.db #0x00	; 0
      002B8B 00                    2722 	.db #0x00	; 0
      002B8C 1E                    2723 	.db #0x1e	; 30
      002B8D 28                    2724 	.db #0x28	; 40
      002B8E 3E                    2725 	.db #0x3e	; 62
      002B8F 0A                    2726 	.db #0x0a	; 10
      002B90 3C                    2727 	.db #0x3c	; 60
      002B91 00                    2728 	.db #0x00	; 0
      002B92 3C                    2729 	.db #0x3c	; 60
      002B93 0A                    2730 	.db #0x0a	; 10
      002B94 0A                    2731 	.db #0x0a	; 10
      002B95 3E                    2732 	.db #0x3e	; 62
      002B96 0A                    2733 	.db #0x0a	; 10
      002B97 0A                    2734 	.db #0x0a	; 10
      002B98 3A                    2735 	.db #0x3a	; 58
      002B99 00                    2736 	.db #0x00	; 0
      002B9A 1C                    2737 	.db #0x1c	; 28
      002B9B 00                    2738 	.db #0x00	; 0
      002B9C 0C                    2739 	.db #0x0c	; 12
      002B9D 12                    2740 	.db #0x12	; 18
      002B9E 12                    2741 	.db #0x12	; 18
      002B9F 12                    2742 	.db #0x12	; 18
      002BA0 0C                    2743 	.db #0x0c	; 12
      002BA1 00                    2744 	.db #0x00	; 0
      002BA2 14                    2745 	.db #0x14	; 20
      002BA3 00                    2746 	.db #0x00	; 0
      002BA4 0C                    2747 	.db #0x0c	; 12
      002BA5 12                    2748 	.db #0x12	; 18
      002BA6 12                    2749 	.db #0x12	; 18
      002BA7 12                    2750 	.db #0x12	; 18
      002BA8 0C                    2751 	.db #0x0c	; 12
      002BA9 00                    2752 	.db #0x00	; 0
      002BAA 06                    2753 	.db #0x06	; 6
      002BAB 00                    2754 	.db #0x00	; 0
      002BAC 0C                    2755 	.db #0x0c	; 12
      002BAD 12                    2756 	.db #0x12	; 18
      002BAE 12                    2757 	.db #0x12	; 18
      002BAF 12                    2758 	.db #0x12	; 18
      002BB0 0C                    2759 	.db #0x0c	; 12
      002BB1 00                    2760 	.db #0x00	; 0
      002BB2 1C                    2761 	.db #0x1c	; 28
      002BB3 00                    2762 	.db #0x00	; 0
      002BB4 12                    2763 	.db #0x12	; 18
      002BB5 12                    2764 	.db #0x12	; 18
      002BB6 12                    2765 	.db #0x12	; 18
      002BB7 1A                    2766 	.db #0x1a	; 26
      002BB8 14                    2767 	.db #0x14	; 20
      002BB9 00                    2768 	.db #0x00	; 0
      002BBA 06                    2769 	.db #0x06	; 6
      002BBB 00                    2770 	.db #0x00	; 0
      002BBC 12                    2771 	.db #0x12	; 18
      002BBD 12                    2772 	.db #0x12	; 18
      002BBE 12                    2773 	.db #0x12	; 18
      002BBF 1A                    2774 	.db #0x1a	; 26
      002BC0 14                    2775 	.db #0x14	; 20
      002BC1 00                    2776 	.db #0x00	; 0
      002BC2 14                    2777 	.db #0x14	; 20
      002BC3 00                    2778 	.db #0x00	; 0
      002BC4 12                    2779 	.db #0x12	; 18
      002BC5 12                    2780 	.db #0x12	; 18
      002BC6 12                    2781 	.db #0x12	; 18
      002BC7 1C                    2782 	.db #0x1c	; 28
      002BC8 08                    2783 	.db #0x08	; 8
      002BC9 06                    2784 	.db #0x06	; 6
      002BCA 12                    2785 	.db #0x12	; 18
      002BCB 0C                    2786 	.db #0x0c	; 12
      002BCC 12                    2787 	.db #0x12	; 18
      002BCD 12                    2788 	.db #0x12	; 18
      002BCE 12                    2789 	.db #0x12	; 18
      002BCF 12                    2790 	.db #0x12	; 18
      002BD0 0C                    2791 	.db #0x0c	; 12
      002BD1 00                    2792 	.db #0x00	; 0
      002BD2 14                    2793 	.db #0x14	; 20
      002BD3 00                    2794 	.db #0x00	; 0
      002BD4 12                    2795 	.db #0x12	; 18
      002BD5 12                    2796 	.db #0x12	; 18
      002BD6 12                    2797 	.db #0x12	; 18
      002BD7 12                    2798 	.db #0x12	; 18
      002BD8 0C                    2799 	.db #0x0c	; 12
      002BD9 00                    2800 	.db #0x00	; 0
      002BDA 00                    2801 	.db #0x00	; 0
      002BDB 08                    2802 	.db #0x08	; 8
      002BDC 1C                    2803 	.db #0x1c	; 28
      002BDD 02                    2804 	.db #0x02	; 2
      002BDE 02                    2805 	.db #0x02	; 2
      002BDF 1C                    2806 	.db #0x1c	; 28
      002BE0 08                    2807 	.db #0x08	; 8
      002BE1 00                    2808 	.db #0x00	; 0
      002BE2 18                    2809 	.db #0x18	; 24
      002BE3 24                    2810 	.db #0x24	; 36
      002BE4 04                    2811 	.db #0x04	; 4
      002BE5 1E                    2812 	.db #0x1e	; 30
      002BE6 04                    2813 	.db #0x04	; 4
      002BE7 24                    2814 	.db #0x24	; 36
      002BE8 3A                    2815 	.db #0x3a	; 58
      002BE9 00                    2816 	.db #0x00	; 0
      002BEA 22                    2817 	.db #0x22	; 34
      002BEB 14                    2818 	.db #0x14	; 20
      002BEC 08                    2819 	.db #0x08	; 8
      002BED 3E                    2820 	.db #0x3e	; 62
      002BEE 08                    2821 	.db #0x08	; 8
      002BEF 3E                    2822 	.db #0x3e	; 62
      002BF0 08                    2823 	.db #0x08	; 8
      002BF1 00                    2824 	.db #0x00	; 0
      002BF2 06                    2825 	.db #0x06	; 6
      002BF3 0A                    2826 	.db #0x0a	; 10
      002BF4 0A                    2827 	.db #0x0a	; 10
      002BF5 16                    2828 	.db #0x16	; 22
      002BF6 3A                    2829 	.db #0x3a	; 58
      002BF7 12                    2830 	.db #0x12	; 18
      002BF8 12                    2831 	.db #0x12	; 18
      002BF9 00                    2832 	.db #0x00	; 0
      002BFA 10                    2833 	.db #0x10	; 16
      002BFB 28                    2834 	.db #0x28	; 40
      002BFC 08                    2835 	.db #0x08	; 8
      002BFD 1C                    2836 	.db #0x1c	; 28
      002BFE 08                    2837 	.db #0x08	; 8
      002BFF 08                    2838 	.db #0x08	; 8
      002C00 0A                    2839 	.db #0x0a	; 10
      002C01 04                    2840 	.db #0x04	; 4
      002C02 18                    2841 	.db #0x18	; 24
      002C03 00                    2842 	.db #0x00	; 0
      002C04 1C                    2843 	.db #0x1c	; 28
      002C05 20                    2844 	.db #0x20	; 32
      002C06 3C                    2845 	.db #0x3c	; 60
      002C07 22                    2846 	.db #0x22	; 34
      002C08 3C                    2847 	.db #0x3c	; 60
      002C09 00                    2848 	.db #0x00	; 0
      002C0A 18                    2849 	.db #0x18	; 24
      002C0B 00                    2850 	.db #0x00	; 0
      002C0C 08                    2851 	.db #0x08	; 8
      002C0D 08                    2852 	.db #0x08	; 8
      002C0E 08                    2853 	.db #0x08	; 8
      002C0F 08                    2854 	.db #0x08	; 8
      002C10 18                    2855 	.db #0x18	; 24
      002C11 00                    2856 	.db #0x00	; 0
      002C12 18                    2857 	.db #0x18	; 24
      002C13 00                    2858 	.db #0x00	; 0
      002C14 0C                    2859 	.db #0x0c	; 12
      002C15 12                    2860 	.db #0x12	; 18
      002C16 12                    2861 	.db #0x12	; 18
      002C17 12                    2862 	.db #0x12	; 18
      002C18 0C                    2863 	.db #0x0c	; 12
      002C19 00                    2864 	.db #0x00	; 0
      002C1A 18                    2865 	.db #0x18	; 24
      002C1B 00                    2866 	.db #0x00	; 0
      002C1C 12                    2867 	.db #0x12	; 18
      002C1D 12                    2868 	.db #0x12	; 18
      002C1E 12                    2869 	.db #0x12	; 18
      002C1F 1A                    2870 	.db #0x1a	; 26
      002C20 14                    2871 	.db #0x14	; 20
      002C21 00                    2872 	.db #0x00	; 0
      002C22 14                    2873 	.db #0x14	; 20
      002C23 0A                    2874 	.db #0x0a	; 10
      002C24 00                    2875 	.db #0x00	; 0
      002C25 0E                    2876 	.db #0x0e	; 14
      002C26 12                    2877 	.db #0x12	; 18
      002C27 12                    2878 	.db #0x12	; 18
      002C28 12                    2879 	.db #0x12	; 18
      002C29 00                    2880 	.db #0x00	; 0
      002C2A 14                    2881 	.db #0x14	; 20
      002C2B 0A                    2882 	.db #0x0a	; 10
      002C2C 00                    2883 	.db #0x00	; 0
      002C2D 12                    2884 	.db #0x12	; 18
      002C2E 16                    2885 	.db #0x16	; 22
      002C2F 1A                    2886 	.db #0x1a	; 26
      002C30 12                    2887 	.db #0x12	; 18
      002C31 00                    2888 	.db #0x00	; 0
      002C32 1C                    2889 	.db #0x1c	; 28
      002C33 20                    2890 	.db #0x20	; 32
      002C34 3C                    2891 	.db #0x3c	; 60
      002C35 22                    2892 	.db #0x22	; 34
      002C36 3C                    2893 	.db #0x3c	; 60
      002C37 00                    2894 	.db #0x00	; 0
      002C38 3C                    2895 	.db #0x3c	; 60
      002C39 00                    2896 	.db #0x00	; 0
      002C3A 0C                    2897 	.db #0x0c	; 12
      002C3B 12                    2898 	.db #0x12	; 18
      002C3C 12                    2899 	.db #0x12	; 18
      002C3D 12                    2900 	.db #0x12	; 18
      002C3E 0C                    2901 	.db #0x0c	; 12
      002C3F 00                    2902 	.db #0x00	; 0
      002C40 1E                    2903 	.db #0x1e	; 30
      002C41 00                    2904 	.db #0x00	; 0
      002C42 08                    2905 	.db #0x08	; 8
      002C43 00                    2906 	.db #0x00	; 0
      002C44 08                    2907 	.db #0x08	; 8
      002C45 0C                    2908 	.db #0x0c	; 12
      002C46 02                    2909 	.db #0x02	; 2
      002C47 22                    2910 	.db #0x22	; 34
      002C48 1C                    2911 	.db #0x1c	; 28
      002C49 00                    2912 	.db #0x00	; 0
      002C4A 00                    2913 	.db #0x00	; 0
      002C4B 00                    2914 	.db #0x00	; 0
      002C4C 3E                    2915 	.db #0x3e	; 62
      002C4D 02                    2916 	.db #0x02	; 2
      002C4E 02                    2917 	.db #0x02	; 2
      002C4F 02                    2918 	.db #0x02	; 2
      002C50 00                    2919 	.db #0x00	; 0
      002C51 00                    2920 	.db #0x00	; 0
      002C52 00                    2921 	.db #0x00	; 0
      002C53 00                    2922 	.db #0x00	; 0
      002C54 3F                    2923 	.db #0x3f	; 63
      002C55 20                    2924 	.db #0x20	; 32
      002C56 20                    2925 	.db #0x20	; 32
      002C57 00                    2926 	.db #0x00	; 0
      002C58 00                    2927 	.db #0x00	; 0
      002C59 00                    2928 	.db #0x00	; 0
      002C5A 02                    2929 	.db #0x02	; 2
      002C5B 12                    2930 	.db #0x12	; 18
      002C5C 0A                    2931 	.db #0x0a	; 10
      002C5D 1C                    2932 	.db #0x1c	; 28
      002C5E 22                    2933 	.db #0x22	; 34
      002C5F 10                    2934 	.db #0x10	; 16
      002C60 38                    2935 	.db #0x38	; 56	'8'
      002C61 00                    2936 	.db #0x00	; 0
      002C62 02                    2937 	.db #0x02	; 2
      002C63 12                    2938 	.db #0x12	; 18
      002C64 0A                    2939 	.db #0x0a	; 10
      002C65 34                    2940 	.db #0x34	; 52	'4'
      002C66 2A                    2941 	.db #0x2a	; 42
      002C67 38                    2942 	.db #0x38	; 56	'8'
      002C68 20                    2943 	.db #0x20	; 32
      002C69 00                    2944 	.db #0x00	; 0
      002C6A 08                    2945 	.db #0x08	; 8
      002C6B 00                    2946 	.db #0x00	; 0
      002C6C 08                    2947 	.db #0x08	; 8
      002C6D 08                    2948 	.db #0x08	; 8
      002C6E 1C                    2949 	.db #0x1c	; 28
      002C6F 1C                    2950 	.db #0x1c	; 28
      002C70 08                    2951 	.db #0x08	; 8
      002C71 00                    2952 	.db #0x00	; 0
      002C72 00                    2953 	.db #0x00	; 0
      002C73 00                    2954 	.db #0x00	; 0
      002C74 24                    2955 	.db #0x24	; 36
      002C75 12                    2956 	.db #0x12	; 18
      002C76 24                    2957 	.db #0x24	; 36
      002C77 00                    2958 	.db #0x00	; 0
      002C78 00                    2959 	.db #0x00	; 0
      002C79 00                    2960 	.db #0x00	; 0
      002C7A 00                    2961 	.db #0x00	; 0
      002C7B 00                    2962 	.db #0x00	; 0
      002C7C 12                    2963 	.db #0x12	; 18
      002C7D 24                    2964 	.db #0x24	; 36
      002C7E 12                    2965 	.db #0x12	; 18
      002C7F 00                    2966 	.db #0x00	; 0
      002C80 00                    2967 	.db #0x00	; 0
      002C81 00                    2968 	.db #0x00	; 0
      002C82 2A                    2969 	.db #0x2a	; 42
      002C83 00                    2970 	.db #0x00	; 0
      002C84 15                    2971 	.db #0x15	; 21
      002C85 00                    2972 	.db #0x00	; 0
      002C86 2A                    2973 	.db #0x2a	; 42
      002C87 00                    2974 	.db #0x00	; 0
      002C88 15                    2975 	.db #0x15	; 21
      002C89 00                    2976 	.db #0x00	; 0
      002C8A 2A                    2977 	.db #0x2a	; 42
      002C8B 15                    2978 	.db #0x15	; 21
      002C8C 2A                    2979 	.db #0x2a	; 42
      002C8D 15                    2980 	.db #0x15	; 21
      002C8E 2A                    2981 	.db #0x2a	; 42
      002C8F 15                    2982 	.db #0x15	; 21
      002C90 2A                    2983 	.db #0x2a	; 42
      002C91 15                    2984 	.db #0x15	; 21
      002C92 15                    2985 	.db #0x15	; 21
      002C93 3F                    2986 	.db #0x3f	; 63
      002C94 2A                    2987 	.db #0x2a	; 42
      002C95 3F                    2988 	.db #0x3f	; 63
      002C96 15                    2989 	.db #0x15	; 21
      002C97 3F                    2990 	.db #0x3f	; 63
      002C98 2A                    2991 	.db #0x2a	; 42
      002C99 3F                    2992 	.db #0x3f	; 63
      002C9A 08                    2993 	.db #0x08	; 8
      002C9B 08                    2994 	.db #0x08	; 8
      002C9C 08                    2995 	.db #0x08	; 8
      002C9D 08                    2996 	.db #0x08	; 8
      002C9E 08                    2997 	.db #0x08	; 8
      002C9F 08                    2998 	.db #0x08	; 8
      002CA0 08                    2999 	.db #0x08	; 8
      002CA1 08                    3000 	.db #0x08	; 8
      002CA2 08                    3001 	.db #0x08	; 8
      002CA3 08                    3002 	.db #0x08	; 8
      002CA4 08                    3003 	.db #0x08	; 8
      002CA5 0F                    3004 	.db #0x0f	; 15
      002CA6 08                    3005 	.db #0x08	; 8
      002CA7 08                    3006 	.db #0x08	; 8
      002CA8 08                    3007 	.db #0x08	; 8
      002CA9 08                    3008 	.db #0x08	; 8
      002CAA 08                    3009 	.db #0x08	; 8
      002CAB 0F                    3010 	.db #0x0f	; 15
      002CAC 08                    3011 	.db #0x08	; 8
      002CAD 0F                    3012 	.db #0x0f	; 15
      002CAE 08                    3013 	.db #0x08	; 8
      002CAF 08                    3014 	.db #0x08	; 8
      002CB0 08                    3015 	.db #0x08	; 8
      002CB1 08                    3016 	.db #0x08	; 8
      002CB2 0A                    3017 	.db #0x0a	; 10
      002CB3 0A                    3018 	.db #0x0a	; 10
      002CB4 0A                    3019 	.db #0x0a	; 10
      002CB5 0B                    3020 	.db #0x0b	; 11
      002CB6 0A                    3021 	.db #0x0a	; 10
      002CB7 0A                    3022 	.db #0x0a	; 10
      002CB8 0A                    3023 	.db #0x0a	; 10
      002CB9 0A                    3024 	.db #0x0a	; 10
      002CBA 00                    3025 	.db #0x00	; 0
      002CBB 00                    3026 	.db #0x00	; 0
      002CBC 00                    3027 	.db #0x00	; 0
      002CBD 0F                    3028 	.db #0x0f	; 15
      002CBE 0A                    3029 	.db #0x0a	; 10
      002CBF 0A                    3030 	.db #0x0a	; 10
      002CC0 0A                    3031 	.db #0x0a	; 10
      002CC1 0A                    3032 	.db #0x0a	; 10
      002CC2 00                    3033 	.db #0x00	; 0
      002CC3 0F                    3034 	.db #0x0f	; 15
      002CC4 08                    3035 	.db #0x08	; 8
      002CC5 0F                    3036 	.db #0x0f	; 15
      002CC6 08                    3037 	.db #0x08	; 8
      002CC7 08                    3038 	.db #0x08	; 8
      002CC8 08                    3039 	.db #0x08	; 8
      002CC9 08                    3040 	.db #0x08	; 8
      002CCA 0A                    3041 	.db #0x0a	; 10
      002CCB 0B                    3042 	.db #0x0b	; 11
      002CCC 08                    3043 	.db #0x08	; 8
      002CCD 0B                    3044 	.db #0x0b	; 11
      002CCE 0A                    3045 	.db #0x0a	; 10
      002CCF 0A                    3046 	.db #0x0a	; 10
      002CD0 0A                    3047 	.db #0x0a	; 10
      002CD1 0A                    3048 	.db #0x0a	; 10
      002CD2 0A                    3049 	.db #0x0a	; 10
      002CD3 0A                    3050 	.db #0x0a	; 10
      002CD4 0A                    3051 	.db #0x0a	; 10
      002CD5 0A                    3052 	.db #0x0a	; 10
      002CD6 0A                    3053 	.db #0x0a	; 10
      002CD7 0A                    3054 	.db #0x0a	; 10
      002CD8 0A                    3055 	.db #0x0a	; 10
      002CD9 0A                    3056 	.db #0x0a	; 10
      002CDA 00                    3057 	.db #0x00	; 0
      002CDB 0F                    3058 	.db #0x0f	; 15
      002CDC 08                    3059 	.db #0x08	; 8
      002CDD 0B                    3060 	.db #0x0b	; 11
      002CDE 0A                    3061 	.db #0x0a	; 10
      002CDF 0A                    3062 	.db #0x0a	; 10
      002CE0 0A                    3063 	.db #0x0a	; 10
      002CE1 0A                    3064 	.db #0x0a	; 10
      002CE2 0A                    3065 	.db #0x0a	; 10
      002CE3 0B                    3066 	.db #0x0b	; 11
      002CE4 08                    3067 	.db #0x08	; 8
      002CE5 0F                    3068 	.db #0x0f	; 15
      002CE6 00                    3069 	.db #0x00	; 0
      002CE7 00                    3070 	.db #0x00	; 0
      002CE8 00                    3071 	.db #0x00	; 0
      002CE9 00                    3072 	.db #0x00	; 0
      002CEA 0A                    3073 	.db #0x0a	; 10
      002CEB 0A                    3074 	.db #0x0a	; 10
      002CEC 0A                    3075 	.db #0x0a	; 10
      002CED 0F                    3076 	.db #0x0f	; 15
      002CEE 00                    3077 	.db #0x00	; 0
      002CEF 00                    3078 	.db #0x00	; 0
      002CF0 00                    3079 	.db #0x00	; 0
      002CF1 00                    3080 	.db #0x00	; 0
      002CF2 08                    3081 	.db #0x08	; 8
      002CF3 0F                    3082 	.db #0x0f	; 15
      002CF4 08                    3083 	.db #0x08	; 8
      002CF5 0F                    3084 	.db #0x0f	; 15
      002CF6 00                    3085 	.db #0x00	; 0
      002CF7 00                    3086 	.db #0x00	; 0
      002CF8 00                    3087 	.db #0x00	; 0
      002CF9 00                    3088 	.db #0x00	; 0
      002CFA 00                    3089 	.db #0x00	; 0
      002CFB 00                    3090 	.db #0x00	; 0
      002CFC 00                    3091 	.db #0x00	; 0
      002CFD 0F                    3092 	.db #0x0f	; 15
      002CFE 08                    3093 	.db #0x08	; 8
      002CFF 08                    3094 	.db #0x08	; 8
      002D00 08                    3095 	.db #0x08	; 8
      002D01 08                    3096 	.db #0x08	; 8
      002D02 08                    3097 	.db #0x08	; 8
      002D03 08                    3098 	.db #0x08	; 8
      002D04 08                    3099 	.db #0x08	; 8
      002D05 38                    3100 	.db #0x38	; 56	'8'
      002D06 00                    3101 	.db #0x00	; 0
      002D07 00                    3102 	.db #0x00	; 0
      002D08 00                    3103 	.db #0x00	; 0
      002D09 00                    3104 	.db #0x00	; 0
      002D0A 08                    3105 	.db #0x08	; 8
      002D0B 08                    3106 	.db #0x08	; 8
      002D0C 08                    3107 	.db #0x08	; 8
      002D0D 3F                    3108 	.db #0x3f	; 63
      002D0E 00                    3109 	.db #0x00	; 0
      002D0F 00                    3110 	.db #0x00	; 0
      002D10 00                    3111 	.db #0x00	; 0
      002D11 00                    3112 	.db #0x00	; 0
      002D12 00                    3113 	.db #0x00	; 0
      002D13 00                    3114 	.db #0x00	; 0
      002D14 00                    3115 	.db #0x00	; 0
      002D15 3F                    3116 	.db #0x3f	; 63
      002D16 08                    3117 	.db #0x08	; 8
      002D17 08                    3118 	.db #0x08	; 8
      002D18 08                    3119 	.db #0x08	; 8
      002D19 08                    3120 	.db #0x08	; 8
      002D1A 08                    3121 	.db #0x08	; 8
      002D1B 08                    3122 	.db #0x08	; 8
      002D1C 08                    3123 	.db #0x08	; 8
      002D1D 38                    3124 	.db #0x38	; 56	'8'
      002D1E 08                    3125 	.db #0x08	; 8
      002D1F 08                    3126 	.db #0x08	; 8
      002D20 08                    3127 	.db #0x08	; 8
      002D21 08                    3128 	.db #0x08	; 8
      002D22 00                    3129 	.db #0x00	; 0
      002D23 00                    3130 	.db #0x00	; 0
      002D24 00                    3131 	.db #0x00	; 0
      002D25 3F                    3132 	.db #0x3f	; 63
      002D26 00                    3133 	.db #0x00	; 0
      002D27 00                    3134 	.db #0x00	; 0
      002D28 00                    3135 	.db #0x00	; 0
      002D29 00                    3136 	.db #0x00	; 0
      002D2A 08                    3137 	.db #0x08	; 8
      002D2B 08                    3138 	.db #0x08	; 8
      002D2C 08                    3139 	.db #0x08	; 8
      002D2D 3F                    3140 	.db #0x3f	; 63
      002D2E 08                    3141 	.db #0x08	; 8
      002D2F 08                    3142 	.db #0x08	; 8
      002D30 08                    3143 	.db #0x08	; 8
      002D31 08                    3144 	.db #0x08	; 8
      002D32 08                    3145 	.db #0x08	; 8
      002D33 38                    3146 	.db #0x38	; 56	'8'
      002D34 08                    3147 	.db #0x08	; 8
      002D35 38                    3148 	.db #0x38	; 56	'8'
      002D36 08                    3149 	.db #0x08	; 8
      002D37 08                    3150 	.db #0x08	; 8
      002D38 08                    3151 	.db #0x08	; 8
      002D39 08                    3152 	.db #0x08	; 8
      002D3A 0A                    3153 	.db #0x0a	; 10
      002D3B 0A                    3154 	.db #0x0a	; 10
      002D3C 0A                    3155 	.db #0x0a	; 10
      002D3D 3A                    3156 	.db #0x3a	; 58
      002D3E 0A                    3157 	.db #0x0a	; 10
      002D3F 0A                    3158 	.db #0x0a	; 10
      002D40 0A                    3159 	.db #0x0a	; 10
      002D41 0A                    3160 	.db #0x0a	; 10
      002D42 0A                    3161 	.db #0x0a	; 10
      002D43 3A                    3162 	.db #0x3a	; 58
      002D44 02                    3163 	.db #0x02	; 2
      002D45 3E                    3164 	.db #0x3e	; 62
      002D46 00                    3165 	.db #0x00	; 0
      002D47 00                    3166 	.db #0x00	; 0
      002D48 00                    3167 	.db #0x00	; 0
      002D49 00                    3168 	.db #0x00	; 0
      002D4A 00                    3169 	.db #0x00	; 0
      002D4B 3E                    3170 	.db #0x3e	; 62
      002D4C 02                    3171 	.db #0x02	; 2
      002D4D 3A                    3172 	.db #0x3a	; 58
      002D4E 0A                    3173 	.db #0x0a	; 10
      002D4F 0A                    3174 	.db #0x0a	; 10
      002D50 0A                    3175 	.db #0x0a	; 10
      002D51 0A                    3176 	.db #0x0a	; 10
      002D52 0A                    3177 	.db #0x0a	; 10
      002D53 3B                    3178 	.db #0x3b	; 59
      002D54 00                    3179 	.db #0x00	; 0
      002D55 3F                    3180 	.db #0x3f	; 63
      002D56 00                    3181 	.db #0x00	; 0
      002D57 00                    3182 	.db #0x00	; 0
      002D58 00                    3183 	.db #0x00	; 0
      002D59 00                    3184 	.db #0x00	; 0
      002D5A 00                    3185 	.db #0x00	; 0
      002D5B 3F                    3186 	.db #0x3f	; 63
      002D5C 00                    3187 	.db #0x00	; 0
      002D5D 3B                    3188 	.db #0x3b	; 59
      002D5E 0A                    3189 	.db #0x0a	; 10
      002D5F 0A                    3190 	.db #0x0a	; 10
      002D60 0A                    3191 	.db #0x0a	; 10
      002D61 0A                    3192 	.db #0x0a	; 10
      002D62 0A                    3193 	.db #0x0a	; 10
      002D63 3A                    3194 	.db #0x3a	; 58
      002D64 02                    3195 	.db #0x02	; 2
      002D65 3A                    3196 	.db #0x3a	; 58
      002D66 0A                    3197 	.db #0x0a	; 10
      002D67 0A                    3198 	.db #0x0a	; 10
      002D68 0A                    3199 	.db #0x0a	; 10
      002D69 0A                    3200 	.db #0x0a	; 10
      002D6A 00                    3201 	.db #0x00	; 0
      002D6B 3F                    3202 	.db #0x3f	; 63
      002D6C 00                    3203 	.db #0x00	; 0
      002D6D 3F                    3204 	.db #0x3f	; 63
      002D6E 00                    3205 	.db #0x00	; 0
      002D6F 00                    3206 	.db #0x00	; 0
      002D70 00                    3207 	.db #0x00	; 0
      002D71 00                    3208 	.db #0x00	; 0
      002D72 0A                    3209 	.db #0x0a	; 10
      002D73 3B                    3210 	.db #0x3b	; 59
      002D74 00                    3211 	.db #0x00	; 0
      002D75 3B                    3212 	.db #0x3b	; 59
      002D76 0A                    3213 	.db #0x0a	; 10
      002D77 0A                    3214 	.db #0x0a	; 10
      002D78 0A                    3215 	.db #0x0a	; 10
      002D79 0A                    3216 	.db #0x0a	; 10
      002D7A 08                    3217 	.db #0x08	; 8
      002D7B 3F                    3218 	.db #0x3f	; 63
      002D7C 00                    3219 	.db #0x00	; 0
      002D7D 3F                    3220 	.db #0x3f	; 63
      002D7E 00                    3221 	.db #0x00	; 0
      002D7F 00                    3222 	.db #0x00	; 0
      002D80 00                    3223 	.db #0x00	; 0
      002D81 00                    3224 	.db #0x00	; 0
      002D82 0A                    3225 	.db #0x0a	; 10
      002D83 0A                    3226 	.db #0x0a	; 10
      002D84 0A                    3227 	.db #0x0a	; 10
      002D85 3F                    3228 	.db #0x3f	; 63
      002D86 00                    3229 	.db #0x00	; 0
      002D87 00                    3230 	.db #0x00	; 0
      002D88 00                    3231 	.db #0x00	; 0
      002D89 00                    3232 	.db #0x00	; 0
      002D8A 00                    3233 	.db #0x00	; 0
      002D8B 3F                    3234 	.db #0x3f	; 63
      002D8C 00                    3235 	.db #0x00	; 0
      002D8D 3F                    3236 	.db #0x3f	; 63
      002D8E 08                    3237 	.db #0x08	; 8
      002D8F 08                    3238 	.db #0x08	; 8
      002D90 08                    3239 	.db #0x08	; 8
      002D91 08                    3240 	.db #0x08	; 8
      002D92 00                    3241 	.db #0x00	; 0
      002D93 00                    3242 	.db #0x00	; 0
      002D94 00                    3243 	.db #0x00	; 0
      002D95 3F                    3244 	.db #0x3f	; 63
      002D96 0A                    3245 	.db #0x0a	; 10
      002D97 0A                    3246 	.db #0x0a	; 10
      002D98 0A                    3247 	.db #0x0a	; 10
      002D99 0A                    3248 	.db #0x0a	; 10
      002D9A 0A                    3249 	.db #0x0a	; 10
      002D9B 0A                    3250 	.db #0x0a	; 10
      002D9C 0A                    3251 	.db #0x0a	; 10
      002D9D 3E                    3252 	.db #0x3e	; 62
      002D9E 00                    3253 	.db #0x00	; 0
      002D9F 00                    3254 	.db #0x00	; 0
      002DA0 00                    3255 	.db #0x00	; 0
      002DA1 00                    3256 	.db #0x00	; 0
      002DA2 08                    3257 	.db #0x08	; 8
      002DA3 38                    3258 	.db #0x38	; 56	'8'
      002DA4 08                    3259 	.db #0x08	; 8
      002DA5 38                    3260 	.db #0x38	; 56	'8'
      002DA6 00                    3261 	.db #0x00	; 0
      002DA7 00                    3262 	.db #0x00	; 0
      002DA8 00                    3263 	.db #0x00	; 0
      002DA9 00                    3264 	.db #0x00	; 0
      002DAA 00                    3265 	.db #0x00	; 0
      002DAB 38                    3266 	.db #0x38	; 56	'8'
      002DAC 08                    3267 	.db #0x08	; 8
      002DAD 38                    3268 	.db #0x38	; 56	'8'
      002DAE 08                    3269 	.db #0x08	; 8
      002DAF 08                    3270 	.db #0x08	; 8
      002DB0 08                    3271 	.db #0x08	; 8
      002DB1 08                    3272 	.db #0x08	; 8
      002DB2 00                    3273 	.db #0x00	; 0
      002DB3 00                    3274 	.db #0x00	; 0
      002DB4 00                    3275 	.db #0x00	; 0
      002DB5 3E                    3276 	.db #0x3e	; 62
      002DB6 0A                    3277 	.db #0x0a	; 10
      002DB7 0A                    3278 	.db #0x0a	; 10
      002DB8 0A                    3279 	.db #0x0a	; 10
      002DB9 0A                    3280 	.db #0x0a	; 10
      002DBA 0A                    3281 	.db #0x0a	; 10
      002DBB 0A                    3282 	.db #0x0a	; 10
      002DBC 0A                    3283 	.db #0x0a	; 10
      002DBD 3B                    3284 	.db #0x3b	; 59
      002DBE 0A                    3285 	.db #0x0a	; 10
      002DBF 0A                    3286 	.db #0x0a	; 10
      002DC0 0A                    3287 	.db #0x0a	; 10
      002DC1 0A                    3288 	.db #0x0a	; 10
      002DC2 08                    3289 	.db #0x08	; 8
      002DC3 3F                    3290 	.db #0x3f	; 63
      002DC4 00                    3291 	.db #0x00	; 0
      002DC5 3F                    3292 	.db #0x3f	; 63
      002DC6 08                    3293 	.db #0x08	; 8
      002DC7 08                    3294 	.db #0x08	; 8
      002DC8 08                    3295 	.db #0x08	; 8
      002DC9 08                    3296 	.db #0x08	; 8
      002DCA 08                    3297 	.db #0x08	; 8
      002DCB 08                    3298 	.db #0x08	; 8
      002DCC 08                    3299 	.db #0x08	; 8
      002DCD 0F                    3300 	.db #0x0f	; 15
      002DCE 00                    3301 	.db #0x00	; 0
      002DCF 00                    3302 	.db #0x00	; 0
      002DD0 00                    3303 	.db #0x00	; 0
      002DD1 00                    3304 	.db #0x00	; 0
      002DD2 00                    3305 	.db #0x00	; 0
      002DD3 00                    3306 	.db #0x00	; 0
      002DD4 00                    3307 	.db #0x00	; 0
      002DD5 38                    3308 	.db #0x38	; 56	'8'
      002DD6 08                    3309 	.db #0x08	; 8
      002DD7 08                    3310 	.db #0x08	; 8
      002DD8 08                    3311 	.db #0x08	; 8
      002DD9 08                    3312 	.db #0x08	; 8
      002DDA 3F                    3313 	.db #0x3f	; 63
      002DDB 3F                    3314 	.db #0x3f	; 63
      002DDC 3F                    3315 	.db #0x3f	; 63
      002DDD 3F                    3316 	.db #0x3f	; 63
      002DDE 3F                    3317 	.db #0x3f	; 63
      002DDF 3F                    3318 	.db #0x3f	; 63
      002DE0 3F                    3319 	.db #0x3f	; 63
      002DE1 3F                    3320 	.db #0x3f	; 63
      002DE2 00                    3321 	.db #0x00	; 0
      002DE3 00                    3322 	.db #0x00	; 0
      002DE4 00                    3323 	.db #0x00	; 0
      002DE5 00                    3324 	.db #0x00	; 0
      002DE6 3F                    3325 	.db #0x3f	; 63
      002DE7 3F                    3326 	.db #0x3f	; 63
      002DE8 3F                    3327 	.db #0x3f	; 63
      002DE9 3F                    3328 	.db #0x3f	; 63
      002DEA 07                    3329 	.db #0x07	; 7
      002DEB 07                    3330 	.db #0x07	; 7
      002DEC 07                    3331 	.db #0x07	; 7
      002DED 07                    3332 	.db #0x07	; 7
      002DEE 07                    3333 	.db #0x07	; 7
      002DEF 07                    3334 	.db #0x07	; 7
      002DF0 07                    3335 	.db #0x07	; 7
      002DF1 07                    3336 	.db #0x07	; 7
      002DF2 38                    3337 	.db #0x38	; 56	'8'
      002DF3 38                    3338 	.db #0x38	; 56	'8'
      002DF4 38                    3339 	.db #0x38	; 56	'8'
      002DF5 38                    3340 	.db #0x38	; 56	'8'
      002DF6 38                    3341 	.db #0x38	; 56	'8'
      002DF7 38                    3342 	.db #0x38	; 56	'8'
      002DF8 38                    3343 	.db #0x38	; 56	'8'
      002DF9 38                    3344 	.db #0x38	; 56	'8'
      002DFA 3F                    3345 	.db #0x3f	; 63
      002DFB 3F                    3346 	.db #0x3f	; 63
      002DFC 3F                    3347 	.db #0x3f	; 63
      002DFD 3F                    3348 	.db #0x3f	; 63
      002DFE 00                    3349 	.db #0x00	; 0
      002DFF 00                    3350 	.db #0x00	; 0
      002E00 00                    3351 	.db #0x00	; 0
      002E01 00                    3352 	.db #0x00	; 0
      002E02 00                    3353 	.db #0x00	; 0
      002E03 00                    3354 	.db #0x00	; 0
      002E04 2C                    3355 	.db #0x2c	; 44
      002E05 12                    3356 	.db #0x12	; 18
      002E06 12                    3357 	.db #0x12	; 18
      002E07 2C                    3358 	.db #0x2c	; 44
      002E08 00                    3359 	.db #0x00	; 0
      002E09 00                    3360 	.db #0x00	; 0
      002E0A 00                    3361 	.db #0x00	; 0
      002E0B 0E                    3362 	.db #0x0e	; 14
      002E0C 12                    3363 	.db #0x12	; 18
      002E0D 0E                    3364 	.db #0x0e	; 14
      002E0E 12                    3365 	.db #0x12	; 18
      002E0F 12                    3366 	.db #0x12	; 18
      002E10 0E                    3367 	.db #0x0e	; 14
      002E11 02                    3368 	.db #0x02	; 2
      002E12 1E                    3369 	.db #0x1e	; 30
      002E13 12                    3370 	.db #0x12	; 18
      002E14 02                    3371 	.db #0x02	; 2
      002E15 02                    3372 	.db #0x02	; 2
      002E16 02                    3373 	.db #0x02	; 2
      002E17 02                    3374 	.db #0x02	; 2
      002E18 02                    3375 	.db #0x02	; 2
      002E19 00                    3376 	.db #0x00	; 0
      002E1A 00                    3377 	.db #0x00	; 0
      002E1B 3E                    3378 	.db #0x3e	; 62
      002E1C 14                    3379 	.db #0x14	; 20
      002E1D 14                    3380 	.db #0x14	; 20
      002E1E 14                    3381 	.db #0x14	; 20
      002E1F 14                    3382 	.db #0x14	; 20
      002E20 14                    3383 	.db #0x14	; 20
      002E21 00                    3384 	.db #0x00	; 0
      002E22 1E                    3385 	.db #0x1e	; 30
      002E23 12                    3386 	.db #0x12	; 18
      002E24 04                    3387 	.db #0x04	; 4
      002E25 08                    3388 	.db #0x08	; 8
      002E26 04                    3389 	.db #0x04	; 4
      002E27 12                    3390 	.db #0x12	; 18
      002E28 1E                    3391 	.db #0x1e	; 30
      002E29 00                    3392 	.db #0x00	; 0
      002E2A 00                    3393 	.db #0x00	; 0
      002E2B 00                    3394 	.db #0x00	; 0
      002E2C 3C                    3395 	.db #0x3c	; 60
      002E2D 12                    3396 	.db #0x12	; 18
      002E2E 12                    3397 	.db #0x12	; 18
      002E2F 0C                    3398 	.db #0x0c	; 12
      002E30 00                    3399 	.db #0x00	; 0
      002E31 00                    3400 	.db #0x00	; 0
      002E32 00                    3401 	.db #0x00	; 0
      002E33 00                    3402 	.db #0x00	; 0
      002E34 12                    3403 	.db #0x12	; 18
      002E35 12                    3404 	.db #0x12	; 18
      002E36 12                    3405 	.db #0x12	; 18
      002E37 0E                    3406 	.db #0x0e	; 14
      002E38 02                    3407 	.db #0x02	; 2
      002E39 02                    3408 	.db #0x02	; 2
      002E3A 00                    3409 	.db #0x00	; 0
      002E3B 00                    3410 	.db #0x00	; 0
      002E3C 14                    3411 	.db #0x14	; 20
      002E3D 0A                    3412 	.db #0x0a	; 10
      002E3E 08                    3413 	.db #0x08	; 8
      002E3F 08                    3414 	.db #0x08	; 8
      002E40 08                    3415 	.db #0x08	; 8
      002E41 00                    3416 	.db #0x00	; 0
      002E42 1C                    3417 	.db #0x1c	; 28
      002E43 08                    3418 	.db #0x08	; 8
      002E44 1C                    3419 	.db #0x1c	; 28
      002E45 22                    3420 	.db #0x22	; 34
      002E46 1C                    3421 	.db #0x1c	; 28
      002E47 08                    3422 	.db #0x08	; 8
      002E48 1C                    3423 	.db #0x1c	; 28
      002E49 00                    3424 	.db #0x00	; 0
      002E4A 0C                    3425 	.db #0x0c	; 12
      002E4B 12                    3426 	.db #0x12	; 18
      002E4C 12                    3427 	.db #0x12	; 18
      002E4D 1E                    3428 	.db #0x1e	; 30
      002E4E 12                    3429 	.db #0x12	; 18
      002E4F 12                    3430 	.db #0x12	; 18
      002E50 0C                    3431 	.db #0x0c	; 12
      002E51 00                    3432 	.db #0x00	; 0
      002E52 00                    3433 	.db #0x00	; 0
      002E53 1C                    3434 	.db #0x1c	; 28
      002E54 22                    3435 	.db #0x22	; 34
      002E55 22                    3436 	.db #0x22	; 34
      002E56 14                    3437 	.db #0x14	; 20
      002E57 14                    3438 	.db #0x14	; 20
      002E58 36                    3439 	.db #0x36	; 54	'6'
      002E59 00                    3440 	.db #0x00	; 0
      002E5A 0C                    3441 	.db #0x0c	; 12
      002E5B 02                    3442 	.db #0x02	; 2
      002E5C 04                    3443 	.db #0x04	; 4
      002E5D 08                    3444 	.db #0x08	; 8
      002E5E 1C                    3445 	.db #0x1c	; 28
      002E5F 12                    3446 	.db #0x12	; 18
      002E60 0C                    3447 	.db #0x0c	; 12
      002E61 00                    3448 	.db #0x00	; 0
      002E62 00                    3449 	.db #0x00	; 0
      002E63 00                    3450 	.db #0x00	; 0
      002E64 14                    3451 	.db #0x14	; 20
      002E65 2A                    3452 	.db #0x2a	; 42
      002E66 2A                    3453 	.db #0x2a	; 42
      002E67 14                    3454 	.db #0x14	; 20
      002E68 00                    3455 	.db #0x00	; 0
      002E69 00                    3456 	.db #0x00	; 0
      002E6A 00                    3457 	.db #0x00	; 0
      002E6B 08                    3458 	.db #0x08	; 8
      002E6C 1C                    3459 	.db #0x1c	; 28
      002E6D 2A                    3460 	.db #0x2a	; 42
      002E6E 2A                    3461 	.db #0x2a	; 42
      002E6F 1C                    3462 	.db #0x1c	; 28
      002E70 08                    3463 	.db #0x08	; 8
      002E71 00                    3464 	.db #0x00	; 0
      002E72 00                    3465 	.db #0x00	; 0
      002E73 1C                    3466 	.db #0x1c	; 28
      002E74 02                    3467 	.db #0x02	; 2
      002E75 1E                    3468 	.db #0x1e	; 30
      002E76 02                    3469 	.db #0x02	; 2
      002E77 1C                    3470 	.db #0x1c	; 28
      002E78 00                    3471 	.db #0x00	; 0
      002E79 00                    3472 	.db #0x00	; 0
      002E7A 00                    3473 	.db #0x00	; 0
      002E7B 0C                    3474 	.db #0x0c	; 12
      002E7C 12                    3475 	.db #0x12	; 18
      002E7D 12                    3476 	.db #0x12	; 18
      002E7E 12                    3477 	.db #0x12	; 18
      002E7F 12                    3478 	.db #0x12	; 18
      002E80 00                    3479 	.db #0x00	; 0
      002E81 00                    3480 	.db #0x00	; 0
      002E82 00                    3481 	.db #0x00	; 0
      002E83 1E                    3482 	.db #0x1e	; 30
      002E84 00                    3483 	.db #0x00	; 0
      002E85 1E                    3484 	.db #0x1e	; 30
      002E86 00                    3485 	.db #0x00	; 0
      002E87 1E                    3486 	.db #0x1e	; 30
      002E88 00                    3487 	.db #0x00	; 0
      002E89 00                    3488 	.db #0x00	; 0
      002E8A 00                    3489 	.db #0x00	; 0
      002E8B 08                    3490 	.db #0x08	; 8
      002E8C 1C                    3491 	.db #0x1c	; 28
      002E8D 08                    3492 	.db #0x08	; 8
      002E8E 00                    3493 	.db #0x00	; 0
      002E8F 1C                    3494 	.db #0x1c	; 28
      002E90 00                    3495 	.db #0x00	; 0
      002E91 00                    3496 	.db #0x00	; 0
      002E92 02                    3497 	.db #0x02	; 2
      002E93 0C                    3498 	.db #0x0c	; 12
      002E94 10                    3499 	.db #0x10	; 16
      002E95 0C                    3500 	.db #0x0c	; 12
      002E96 02                    3501 	.db #0x02	; 2
      002E97 00                    3502 	.db #0x00	; 0
      002E98 1E                    3503 	.db #0x1e	; 30
      002E99 00                    3504 	.db #0x00	; 0
      002E9A 10                    3505 	.db #0x10	; 16
      002E9B 0C                    3506 	.db #0x0c	; 12
      002E9C 02                    3507 	.db #0x02	; 2
      002E9D 0C                    3508 	.db #0x0c	; 12
      002E9E 10                    3509 	.db #0x10	; 16
      002E9F 00                    3510 	.db #0x00	; 0
      002EA0 1E                    3511 	.db #0x1e	; 30
      002EA1 00                    3512 	.db #0x00	; 0
      002EA2 00                    3513 	.db #0x00	; 0
      002EA3 10                    3514 	.db #0x10	; 16
      002EA4 28                    3515 	.db #0x28	; 40
      002EA5 08                    3516 	.db #0x08	; 8
      002EA6 08                    3517 	.db #0x08	; 8
      002EA7 08                    3518 	.db #0x08	; 8
      002EA8 08                    3519 	.db #0x08	; 8
      002EA9 08                    3520 	.db #0x08	; 8
      002EAA 08                    3521 	.db #0x08	; 8
      002EAB 08                    3522 	.db #0x08	; 8
      002EAC 08                    3523 	.db #0x08	; 8
      002EAD 08                    3524 	.db #0x08	; 8
      002EAE 08                    3525 	.db #0x08	; 8
      002EAF 0A                    3526 	.db #0x0a	; 10
      002EB0 04                    3527 	.db #0x04	; 4
      002EB1 00                    3528 	.db #0x00	; 0
      002EB2 00                    3529 	.db #0x00	; 0
      002EB3 08                    3530 	.db #0x08	; 8
      002EB4 00                    3531 	.db #0x00	; 0
      002EB5 3E                    3532 	.db #0x3e	; 62
      002EB6 00                    3533 	.db #0x00	; 0
      002EB7 08                    3534 	.db #0x08	; 8
      002EB8 00                    3535 	.db #0x00	; 0
      002EB9 00                    3536 	.db #0x00	; 0
      002EBA 00                    3537 	.db #0x00	; 0
      002EBB 14                    3538 	.db #0x14	; 20
      002EBC 0A                    3539 	.db #0x0a	; 10
      002EBD 00                    3540 	.db #0x00	; 0
      002EBE 14                    3541 	.db #0x14	; 20
      002EBF 0A                    3542 	.db #0x0a	; 10
      002EC0 00                    3543 	.db #0x00	; 0
      002EC1 00                    3544 	.db #0x00	; 0
      002EC2 0C                    3545 	.db #0x0c	; 12
      002EC3 12                    3546 	.db #0x12	; 18
      002EC4 12                    3547 	.db #0x12	; 18
      002EC5 0C                    3548 	.db #0x0c	; 12
      002EC6 00                    3549 	.db #0x00	; 0
      002EC7 00                    3550 	.db #0x00	; 0
      002EC8 00                    3551 	.db #0x00	; 0
      002EC9 00                    3552 	.db #0x00	; 0
      002ECA 00                    3553 	.db #0x00	; 0
      002ECB 00                    3554 	.db #0x00	; 0
      002ECC 00                    3555 	.db #0x00	; 0
      002ECD 0C                    3556 	.db #0x0c	; 12
      002ECE 0C                    3557 	.db #0x0c	; 12
      002ECF 00                    3558 	.db #0x00	; 0
      002ED0 00                    3559 	.db #0x00	; 0
      002ED1 00                    3560 	.db #0x00	; 0
      002ED2 00                    3561 	.db #0x00	; 0
      002ED3 00                    3562 	.db #0x00	; 0
      002ED4 00                    3563 	.db #0x00	; 0
      002ED5 04                    3564 	.db #0x04	; 4
      002ED6 00                    3565 	.db #0x00	; 0
      002ED7 00                    3566 	.db #0x00	; 0
      002ED8 00                    3567 	.db #0x00	; 0
      002ED9 00                    3568 	.db #0x00	; 0
      002EDA 00                    3569 	.db #0x00	; 0
      002EDB 38                    3570 	.db #0x38	; 56	'8'
      002EDC 08                    3571 	.db #0x08	; 8
      002EDD 08                    3572 	.db #0x08	; 8
      002EDE 0A                    3573 	.db #0x0a	; 10
      002EDF 0A                    3574 	.db #0x0a	; 10
      002EE0 04                    3575 	.db #0x04	; 4
      002EE1 00                    3576 	.db #0x00	; 0
      002EE2 0A                    3577 	.db #0x0a	; 10
      002EE3 14                    3578 	.db #0x14	; 20
      002EE4 14                    3579 	.db #0x14	; 20
      002EE5 14                    3580 	.db #0x14	; 20
      002EE6 00                    3581 	.db #0x00	; 0
      002EE7 00                    3582 	.db #0x00	; 0
      002EE8 00                    3583 	.db #0x00	; 0
      002EE9 00                    3584 	.db #0x00	; 0
      002EEA 06                    3585 	.db #0x06	; 6
      002EEB 08                    3586 	.db #0x08	; 8
      002EEC 04                    3587 	.db #0x04	; 4
      002EED 0E                    3588 	.db #0x0e	; 14
      002EEE 00                    3589 	.db #0x00	; 0
      002EEF 00                    3590 	.db #0x00	; 0
      002EF0 00                    3591 	.db #0x00	; 0
      002EF1 00                    3592 	.db #0x00	; 0
      002EF2 00                    3593 	.db #0x00	; 0
      002EF3 00                    3594 	.db #0x00	; 0
      002EF4 1E                    3595 	.db #0x1e	; 30
      002EF5 1E                    3596 	.db #0x1e	; 30
      002EF6 1E                    3597 	.db #0x1e	; 30
      002EF7 1E                    3598 	.db #0x1e	; 30
      002EF8 00                    3599 	.db #0x00	; 0
      002EF9 00                    3600 	.db #0x00	; 0
      002EFA 00                    3601 	.db #0x00	; 0
      002EFB 00                    3602 	.db #0x00	; 0
      002EFC 00                    3603 	.db #0x00	; 0
      002EFD 00                    3604 	.db #0x00	; 0
      002EFE 00                    3605 	.db #0x00	; 0
      002EFF 00                    3606 	.db #0x00	; 0
      002F00 00                    3607 	.db #0x00	; 0
      002F01 00                    3608 	.db #0x00	; 0
      002F02                       3609 __xinit__initial:
      002F02 D0 26 80              3610 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3611 	.area CABS    (ABS,CODE)
