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
                                     23 	.globl _strncpy
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _FL
                                     31 	.globl _P
                                     32 	.globl _TF2
                                     33 	.globl _EXF2
                                     34 	.globl _RCLK
                                     35 	.globl _TCLK
                                     36 	.globl _EXEN2
                                     37 	.globl _TR2
                                     38 	.globl _C_T2
                                     39 	.globl _CP_RL2
                                     40 	.globl _T2CON_7
                                     41 	.globl _T2CON_6
                                     42 	.globl _T2CON_5
                                     43 	.globl _T2CON_4
                                     44 	.globl _T2CON_3
                                     45 	.globl _T2CON_2
                                     46 	.globl _T2CON_1
                                     47 	.globl _T2CON_0
                                     48 	.globl _PT2
                                     49 	.globl _PS
                                     50 	.globl _PT1
                                     51 	.globl _PX1
                                     52 	.globl _PT0
                                     53 	.globl _PX0
                                     54 	.globl _RD
                                     55 	.globl _WR
                                     56 	.globl _T1
                                     57 	.globl _T0
                                     58 	.globl _INT1
                                     59 	.globl _INT0
                                     60 	.globl _TXD
                                     61 	.globl _RXD
                                     62 	.globl _P3_7
                                     63 	.globl _P3_6
                                     64 	.globl _P3_5
                                     65 	.globl _P3_4
                                     66 	.globl _P3_3
                                     67 	.globl _P3_2
                                     68 	.globl _P3_1
                                     69 	.globl _P3_0
                                     70 	.globl _EA
                                     71 	.globl _ET2
                                     72 	.globl _ES
                                     73 	.globl _ET1
                                     74 	.globl _EX1
                                     75 	.globl _ET0
                                     76 	.globl _EX0
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _SM0
                                     86 	.globl _SM1
                                     87 	.globl _SM2
                                     88 	.globl _REN
                                     89 	.globl _TB8
                                     90 	.globl _RB8
                                     91 	.globl _TI
                                     92 	.globl _RI
                                     93 	.globl _T2EX
                                     94 	.globl _T2
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _B
                                    120 	.globl _A
                                    121 	.globl _ACC
                                    122 	.globl _PSW
                                    123 	.globl _TH2
                                    124 	.globl _TL2
                                    125 	.globl _RCAP2H
                                    126 	.globl _RCAP2L
                                    127 	.globl _T2MOD
                                    128 	.globl _T2CON
                                    129 	.globl _IP
                                    130 	.globl _P3
                                    131 	.globl _IE
                                    132 	.globl _P2
                                    133 	.globl _SBUF
                                    134 	.globl _SCON
                                    135 	.globl _P1
                                    136 	.globl _TH1
                                    137 	.globl _TH0
                                    138 	.globl _TL1
                                    139 	.globl _TL0
                                    140 	.globl _TMOD
                                    141 	.globl _TCON
                                    142 	.globl _PCON
                                    143 	.globl _DPH
                                    144 	.globl _DPL
                                    145 	.globl _SP
                                    146 	.globl _P0
                                    147 	.globl _gpo
                                    148 	.globl _OE
                                    149 	.globl _column
                                    150 	.globl _ddata
                                    151 	.globl _dcol
                                    152 ;--------------------------------------------------------
                                    153 ; special function registers
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0	=	0x0080
                           000081   158 _SP	=	0x0081
                           000082   159 _DPL	=	0x0082
                           000083   160 _DPH	=	0x0083
                           000087   161 _PCON	=	0x0087
                           000088   162 _TCON	=	0x0088
                           000089   163 _TMOD	=	0x0089
                           00008A   164 _TL0	=	0x008a
                           00008B   165 _TL1	=	0x008b
                           00008C   166 _TH0	=	0x008c
                           00008D   167 _TH1	=	0x008d
                           000090   168 _P1	=	0x0090
                           000098   169 _SCON	=	0x0098
                           000099   170 _SBUF	=	0x0099
                           0000A0   171 _P2	=	0x00a0
                           0000A8   172 _IE	=	0x00a8
                           0000B0   173 _P3	=	0x00b0
                           0000B8   174 _IP	=	0x00b8
                           0000C8   175 _T2CON	=	0x00c8
                           0000C9   176 _T2MOD	=	0x00c9
                           0000CA   177 _RCAP2L	=	0x00ca
                           0000CB   178 _RCAP2H	=	0x00cb
                           0000CC   179 _TL2	=	0x00cc
                           0000CD   180 _TH2	=	0x00cd
                           0000D0   181 _PSW	=	0x00d0
                           0000E0   182 _ACC	=	0x00e0
                           0000E0   183 _A	=	0x00e0
                           0000F0   184 _B	=	0x00f0
                                    185 ;--------------------------------------------------------
                                    186 ; special function bits
                                    187 ;--------------------------------------------------------
                                    188 	.area RSEG    (ABS,DATA)
      000000                        189 	.org 0x0000
                           000080   190 _P0_0	=	0x0080
                           000081   191 _P0_1	=	0x0081
                           000082   192 _P0_2	=	0x0082
                           000083   193 _P0_3	=	0x0083
                           000084   194 _P0_4	=	0x0084
                           000085   195 _P0_5	=	0x0085
                           000086   196 _P0_6	=	0x0086
                           000087   197 _P0_7	=	0x0087
                           000088   198 _IT0	=	0x0088
                           000089   199 _IE0	=	0x0089
                           00008A   200 _IT1	=	0x008a
                           00008B   201 _IE1	=	0x008b
                           00008C   202 _TR0	=	0x008c
                           00008D   203 _TF0	=	0x008d
                           00008E   204 _TR1	=	0x008e
                           00008F   205 _TF1	=	0x008f
                           000090   206 _P1_0	=	0x0090
                           000091   207 _P1_1	=	0x0091
                           000092   208 _P1_2	=	0x0092
                           000093   209 _P1_3	=	0x0093
                           000094   210 _P1_4	=	0x0094
                           000095   211 _P1_5	=	0x0095
                           000096   212 _P1_6	=	0x0096
                           000097   213 _P1_7	=	0x0097
                           000090   214 _T2	=	0x0090
                           000091   215 _T2EX	=	0x0091
                           000098   216 _RI	=	0x0098
                           000099   217 _TI	=	0x0099
                           00009A   218 _RB8	=	0x009a
                           00009B   219 _TB8	=	0x009b
                           00009C   220 _REN	=	0x009c
                           00009D   221 _SM2	=	0x009d
                           00009E   222 _SM1	=	0x009e
                           00009F   223 _SM0	=	0x009f
                           0000A0   224 _P2_0	=	0x00a0
                           0000A1   225 _P2_1	=	0x00a1
                           0000A2   226 _P2_2	=	0x00a2
                           0000A3   227 _P2_3	=	0x00a3
                           0000A4   228 _P2_4	=	0x00a4
                           0000A5   229 _P2_5	=	0x00a5
                           0000A6   230 _P2_6	=	0x00a6
                           0000A7   231 _P2_7	=	0x00a7
                           0000A8   232 _EX0	=	0x00a8
                           0000A9   233 _ET0	=	0x00a9
                           0000AA   234 _EX1	=	0x00aa
                           0000AB   235 _ET1	=	0x00ab
                           0000AC   236 _ES	=	0x00ac
                           0000AD   237 _ET2	=	0x00ad
                           0000AF   238 _EA	=	0x00af
                           0000B0   239 _P3_0	=	0x00b0
                           0000B1   240 _P3_1	=	0x00b1
                           0000B2   241 _P3_2	=	0x00b2
                           0000B3   242 _P3_3	=	0x00b3
                           0000B4   243 _P3_4	=	0x00b4
                           0000B5   244 _P3_5	=	0x00b5
                           0000B6   245 _P3_6	=	0x00b6
                           0000B7   246 _P3_7	=	0x00b7
                           0000B0   247 _RXD	=	0x00b0
                           0000B1   248 _TXD	=	0x00b1
                           0000B2   249 _INT0	=	0x00b2
                           0000B3   250 _INT1	=	0x00b3
                           0000B4   251 _T0	=	0x00b4
                           0000B5   252 _T1	=	0x00b5
                           0000B6   253 _WR	=	0x00b6
                           0000B7   254 _RD	=	0x00b7
                           0000B8   255 _PX0	=	0x00b8
                           0000B9   256 _PT0	=	0x00b9
                           0000BA   257 _PX1	=	0x00ba
                           0000BB   258 _PT1	=	0x00bb
                           0000BC   259 _PS	=	0x00bc
                           0000BD   260 _PT2	=	0x00bd
                           0000C8   261 _T2CON_0	=	0x00c8
                           0000C9   262 _T2CON_1	=	0x00c9
                           0000CA   263 _T2CON_2	=	0x00ca
                           0000CB   264 _T2CON_3	=	0x00cb
                           0000CC   265 _T2CON_4	=	0x00cc
                           0000CD   266 _T2CON_5	=	0x00cd
                           0000CE   267 _T2CON_6	=	0x00ce
                           0000CF   268 _T2CON_7	=	0x00cf
                           0000C8   269 _CP_RL2	=	0x00c8
                           0000C9   270 _C_T2	=	0x00c9
                           0000CA   271 _TR2	=	0x00ca
                           0000CB   272 _EXEN2	=	0x00cb
                           0000CC   273 _TCLK	=	0x00cc
                           0000CD   274 _RCLK	=	0x00cd
                           0000CE   275 _EXF2	=	0x00ce
                           0000CF   276 _TF2	=	0x00cf
                           0000D0   277 _P	=	0x00d0
                           0000D1   278 _FL	=	0x00d1
                           0000D2   279 _OV	=	0x00d2
                           0000D3   280 _RS0	=	0x00d3
                           0000D4   281 _RS1	=	0x00d4
                           0000D5   282 _F0	=	0x00d5
                           0000D6   283 _AC	=	0x00d6
                           0000D7   284 _CY	=	0x00d7
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable register banks
                                    287 ;--------------------------------------------------------
                                    288 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        289 	.ds 8
                                    290 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        291 	.ds 8
                                    292 ;--------------------------------------------------------
                                    293 ; internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area DSEG    (DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable items in internal ram 
                                    298 ;--------------------------------------------------------
                                    299 ;--------------------------------------------------------
                                    300 ; Stack segment in internal ram 
                                    301 ;--------------------------------------------------------
                                    302 	.area	SSEG
      000033                        303 __start__stack:
      000033                        304 	.ds	1
                                    305 
                                    306 ;--------------------------------------------------------
                                    307 ; indirectly addressable internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area ISEG    (DATA)
      000021                        310 _dcol::
      000021                        311 	.ds 8
      000029                        312 _ddata::
      000029                        313 	.ds 8
      000031                        314 _column::
      000031                        315 	.ds 1
      000032                        316 _OE::
      000032                        317 	.ds 1
                                    318 ;--------------------------------------------------------
                                    319 ; absolute internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area IABS    (ABS,DATA)
                                    322 	.area IABS    (ABS,DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; bit data
                                    325 ;--------------------------------------------------------
                                    326 	.area BSEG    (BIT)
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                           000000   331 _gpo	=	0x0000
                                    332 ;--------------------------------------------------------
                                    333 ; external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XSEG    (XDATA)
      008000                        336 _buf:
      008000                        337 	.ds 257
                                    338 ;--------------------------------------------------------
                                    339 ; absolute external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XABS    (ABS,XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; external initialized ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XISEG   (XDATA)
      008101                        346 __ft_font6x8:
      008101                        347 	.ds 2048
      008901                        348 _initial:
      008901                        349 	.ds 3
                                    350 	.area HOME    (CODE)
                                    351 	.area GSINIT0 (CODE)
                                    352 	.area GSINIT1 (CODE)
                                    353 	.area GSINIT2 (CODE)
                                    354 	.area GSINIT3 (CODE)
                                    355 	.area GSINIT4 (CODE)
                                    356 	.area GSINIT5 (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area CSEG    (CODE)
                                    360 ;--------------------------------------------------------
                                    361 ; interrupt vector 
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
      002000                        364 __interrupt_vect:
      002000 02 20 11         [24]  365 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  366 	reti
      002004                        367 	.ds	7
      00200B 02 21 2A         [24]  368 	ljmp	_timer0_intr
                                    369 ;--------------------------------------------------------
                                    370 ; global & static initialisations
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.area GSFINAL (CODE)
                                    375 	.area GSINIT  (CODE)
                                    376 	.globl __sdcc_gsinit_startup
                                    377 	.globl __sdcc_program_startup
                                    378 	.globl __start__stack
                                    379 	.globl __mcs51_genXINIT
                                    380 	.globl __mcs51_genXRAMCLEAR
                                    381 	.globl __mcs51_genRAMCLEAR
                                    382 ;	disp.c:64: __idata const uint8_t dcol[8] = {
      00206A 78 21            [12]  383 	mov	r0,#_dcol
      00206C 76 80            [12]  384 	mov	@r0,#0x80
      00206E 78 22            [12]  385 	mov	r0,#(_dcol + 0x0001)
      002070 76 40            [12]  386 	mov	@r0,#0x40
      002072 78 23            [12]  387 	mov	r0,#(_dcol + 0x0002)
      002074 76 20            [12]  388 	mov	@r0,#0x20
      002076 78 24            [12]  389 	mov	r0,#(_dcol + 0x0003)
      002078 76 10            [12]  390 	mov	@r0,#0x10
      00207A 78 25            [12]  391 	mov	r0,#(_dcol + 0x0004)
      00207C 76 08            [12]  392 	mov	@r0,#0x08
      00207E 78 26            [12]  393 	mov	r0,#(_dcol + 0x0005)
      002080 76 04            [12]  394 	mov	@r0,#0x04
      002082 78 27            [12]  395 	mov	r0,#(_dcol + 0x0006)
      002084 76 02            [12]  396 	mov	@r0,#0x02
      002086 78 28            [12]  397 	mov	r0,#(_dcol + 0x0007)
      002088 76 01            [12]  398 	mov	@r0,#0x01
                                    399 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  400 	ljmp	__sdcc_program_startup
                                    401 ;--------------------------------------------------------
                                    402 ; Home
                                    403 ;--------------------------------------------------------
                                    404 	.area HOME    (CODE)
                                    405 	.area HOME    (CODE)
      00200E                        406 __sdcc_program_startup:
      00200E 02 22 EB         [24]  407 	ljmp	_main
                                    408 ;	return from main will return to caller
                                    409 ;--------------------------------------------------------
                                    410 ; code
                                    411 ;--------------------------------------------------------
                                    412 	.area CSEG    (CODE)
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'putchar'
                                    415 ;------------------------------------------------------------
                                    416 ;c                         Allocated to registers 
                                    417 ;------------------------------------------------------------
                                    418 ;	disp.c:13: int putchar(int c) __naked {
                                    419 ;	-----------------------------------------
                                    420 ;	 function putchar
                                    421 ;	-----------------------------------------
      00208D                        422 _putchar:
                                    423 ;	naked function: no prologue.
                                    424 ;	disp.c:18: __endasm;
      00208D E5 82            [12]  425 	mov	a, dpl
      00208F 02 00 30         [24]  426 	ljmp	0x0030
                                    427 ;	disp.c:19: }
                                    428 ;	naked function: no epilogue.
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'getchar'
                                    431 ;------------------------------------------------------------
                                    432 ;	disp.c:21: int getchar(void) __naked {
                                    433 ;	-----------------------------------------
                                    434 ;	 function getchar
                                    435 ;	-----------------------------------------
      002092                        436 _getchar:
                                    437 ;	naked function: no prologue.
                                    438 ;	disp.c:27: __endasm;
      002092 12 00 32         [24]  439 	lcall	0x0032
      002095 F5 82            [12]  440 	mov	dpl, a
      002097 75 83 00         [24]  441 	mov	dph, #0
      00209A 22               [24]  442 	ret
                                    443 ;	disp.c:28: }
                                    444 ;	naked function: no epilogue.
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'getchar_poll'
                                    447 ;------------------------------------------------------------
                                    448 ;	disp.c:30: int getchar_poll(void) __naked {
                                    449 ;	-----------------------------------------
                                    450 ;	 function getchar_poll
                                    451 ;	-----------------------------------------
      00209B                        452 _getchar_poll:
                                    453 ;	naked function: no prologue.
                                    454 ;	disp.c:42: __endasm;
      00209B 74 FF            [12]  455 	mov	a, #0xff
      00209D F5 F0            [12]  456 	mov	b, a
      00209F 30 98 07         [24]  457 	jnb	ri, nochar
      0020A2 C2 98            [12]  458 	clr	ri
      0020A4 E5 99            [12]  459 	mov	a, sbuf
      0020A6 75 F0 00         [24]  460 	mov	b, #0
      0020A9                        461 	nochar:
      0020A9 F5 82            [12]  462 	mov	dpl, a
      0020AB 85 F0 83         [24]  463 	mov	dph, b
      0020AE 22               [24]  464 	ret
                                    465 ;	disp.c:43: }
                                    466 ;	naked function: no epilogue.
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'init_gpo'
                                    469 ;------------------------------------------------------------
                                    470 ;	disp.c:83: void init_gpo(void) {
                                    471 ;	-----------------------------------------
                                    472 ;	 function init_gpo
                                    473 ;	-----------------------------------------
      0020AF                        474 _init_gpo:
                           000007   475 	ar7 = 0x07
                           000006   476 	ar6 = 0x06
                           000005   477 	ar5 = 0x05
                           000004   478 	ar4 = 0x04
                           000003   479 	ar3 = 0x03
                           000002   480 	ar2 = 0x02
                           000001   481 	ar1 = 0x01
                           000000   482 	ar0 = 0x00
                                    483 ;	disp.c:84: P1_7 = 0;
                                    484 ;	assignBit
      0020AF C2 97            [12]  485 	clr	_P1_7
                                    486 ;	disp.c:86: P2 = GPO_BASE_H;
      0020B1 75 A0 F0         [24]  487 	mov	_P2,#0xf0
                                    488 ;	disp.c:88: CLEAR_GPO;
      0020B4 78 06            [12]  489 	mov	r0,#(_gpo + 0x0006)
      0020B6 74 3F            [12]  490 	mov	a,#0x3f
      0020B8 F2               [24]  491 	movx	@r0,a
      0020B9 78 00            [12]  492 	mov	r0,#_gpo
      0020BB E4               [12]  493 	clr	a
      0020BC F2               [24]  494 	movx	@r0,a
      0020BD 78 01            [12]  495 	mov	r0,#(_gpo + 0x0001)
      0020BF F2               [24]  496 	movx	@r0,a
      0020C0 78 02            [12]  497 	mov	r0,#(_gpo + 0x0002)
      0020C2 F2               [24]  498 	movx	@r0,a
      0020C3 78 03            [12]  499 	mov	r0,#(_gpo + 0x0003)
      0020C5 F2               [24]  500 	movx	@r0,a
      0020C6 78 04            [12]  501 	mov	r0,#(_gpo + 0x0004)
      0020C8 F2               [24]  502 	movx	@r0,a
      0020C9 78 05            [12]  503 	mov	r0,#(_gpo + 0x0005)
      0020CB F2               [24]  504 	movx	@r0,a
                                    505 ;	disp.c:90: return;
                                    506 ;	disp.c:91: }
      0020CC 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'clear_gpo'
                                    510 ;------------------------------------------------------------
                                    511 ;	disp.c:93: void clear_gpo(void) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function clear_gpo
                                    514 ;	-----------------------------------------
      0020CD                        515 _clear_gpo:
                                    516 ;	disp.c:94: CLEAR_GPO;
      0020CD 78 06            [12]  517 	mov	r0,#(_gpo + 0x0006)
      0020CF 74 3F            [12]  518 	mov	a,#0x3f
      0020D1 F2               [24]  519 	movx	@r0,a
      0020D2 78 00            [12]  520 	mov	r0,#_gpo
      0020D4 E4               [12]  521 	clr	a
      0020D5 F2               [24]  522 	movx	@r0,a
      0020D6 78 01            [12]  523 	mov	r0,#(_gpo + 0x0001)
      0020D8 F2               [24]  524 	movx	@r0,a
      0020D9 78 02            [12]  525 	mov	r0,#(_gpo + 0x0002)
      0020DB F2               [24]  526 	movx	@r0,a
      0020DC 78 03            [12]  527 	mov	r0,#(_gpo + 0x0003)
      0020DE F2               [24]  528 	movx	@r0,a
      0020DF 78 04            [12]  529 	mov	r0,#(_gpo + 0x0004)
      0020E1 F2               [24]  530 	movx	@r0,a
      0020E2 78 05            [12]  531 	mov	r0,#(_gpo + 0x0005)
      0020E4 F2               [24]  532 	movx	@r0,a
                                    533 ;	disp.c:96: return;
                                    534 ;	disp.c:97: }
      0020E5 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'init_intr'
                                    538 ;------------------------------------------------------------
                                    539 ;	disp.c:99: void init_intr(void) {
                                    540 ;	-----------------------------------------
                                    541 ;	 function init_intr
                                    542 ;	-----------------------------------------
      0020E6                        543 _init_intr:
                                    544 ;	disp.c:100: TR0 = 0;
                                    545 ;	assignBit
      0020E6 C2 8C            [12]  546 	clr	_TR0
                                    547 ;	disp.c:101: ET0 = 1;
                                    548 ;	assignBit
      0020E8 D2 A9            [12]  549 	setb	_ET0
                                    550 ;	disp.c:102: EA  = 1;
                                    551 ;	assignBit
      0020EA D2 AF            [12]  552 	setb	_EA
                                    553 ;	disp.c:104: return;
                                    554 ;	disp.c:105: }
      0020EC 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'init_timer0'
                                    558 ;------------------------------------------------------------
                                    559 ;	disp.c:107: void init_timer0(void) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function init_timer0
                                    562 ;	-----------------------------------------
      0020ED                        563 _init_timer0:
                                    564 ;	disp.c:108: TR0 = 0;
                                    565 ;	assignBit
      0020ED C2 8C            [12]  566 	clr	_TR0
                                    567 ;	disp.c:109: TMOD = 0x01;
      0020EF 75 89 01         [24]  568 	mov	_TMOD,#0x01
                                    569 ;	disp.c:110: TH0 = 0xf8;
      0020F2 75 8C F8         [24]  570 	mov	_TH0,#0xf8
                                    571 ;	disp.c:111: TL0 = 0x00;
      0020F5 75 8A 00         [24]  572 	mov	_TL0,#0x00
                                    573 ;	disp.c:113: return;
                                    574 ;	disp.c:114: }
      0020F8 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'init_disp'
                                    578 ;------------------------------------------------------------
                                    579 ;	disp.c:116: void init_disp(void) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function init_disp
                                    582 ;	-----------------------------------------
      0020F9                        583 _init_disp:
                                    584 ;	disp.c:117: gpo[DISP_COL] = 0u;
      0020F9 78 05            [12]  585 	mov	r0,#(_gpo + 0x0005)
      0020FB E4               [12]  586 	clr	a
      0020FC F2               [24]  587 	movx	@r0,a
                                    588 ;	disp.c:118: gpo[DISP_DATA] = 0u;
      0020FD 78 04            [12]  589 	mov	r0,#(_gpo + 0x0004)
      0020FF F2               [24]  590 	movx	@r0,a
                                    591 ;	disp.c:119: OE = 0x0fu; /* 00_001111 */
      002100 78 32            [12]  592 	mov	r0,#_OE
      002102 76 0F            [12]  593 	mov	@r0,#0x0f
                                    594 ;	disp.c:120: gpo[GPO_OE] = OE;
      002104 78 06            [12]  595 	mov	r0,#(_gpo + 0x0006)
      002106 74 0F            [12]  596 	mov	a,#0x0f
      002108 F2               [24]  597 	movx	@r0,a
                                    598 ;	disp.c:122: for (column = 0u; column < 8u; column++)
      002109 78 31            [12]  599 	mov	r0,#_column
      00210B 76 00            [12]  600 	mov	@r0,#0x00
      00210D                        601 00103$:
      00210D 78 31            [12]  602 	mov	r0,#_column
      00210F B6 08 00         [24]  603 	cjne	@r0,#0x08,00115$
      002112                        604 00115$:
      002112 50 11            [24]  605 	jnc	00101$
                                    606 ;	disp.c:123: ddata[column] = 0u;
      002114 78 31            [12]  607 	mov	r0,#_column
      002116 E6               [12]  608 	mov	a,@r0
      002117 24 29            [12]  609 	add	a,#_ddata
      002119 F8               [12]  610 	mov	r0,a
      00211A 76 00            [12]  611 	mov	@r0,#0x00
                                    612 ;	disp.c:122: for (column = 0u; column < 8u; column++)
      00211C 78 31            [12]  613 	mov	r0,#_column
      00211E E6               [12]  614 	mov	a,@r0
      00211F 78 31            [12]  615 	mov	r0,#_column
      002121 04               [12]  616 	inc	a
      002122 F6               [12]  617 	mov	@r0,a
      002123 80 E8            [24]  618 	sjmp	00103$
      002125                        619 00101$:
                                    620 ;	disp.c:124: column = 0u;
      002125 78 31            [12]  621 	mov	r0,#_column
      002127 76 00            [12]  622 	mov	@r0,#0x00
                                    623 ;	disp.c:126: return;
                                    624 ;	disp.c:127: }
      002129 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'timer0_intr'
                                    628 ;------------------------------------------------------------
                                    629 ;t                         Allocated to registers r7 
                                    630 ;------------------------------------------------------------
                                    631 ;	disp.c:129: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    632 ;	-----------------------------------------
                                    633 ;	 function timer0_intr
                                    634 ;	-----------------------------------------
      00212A                        635 _timer0_intr:
                           00000F   636 	ar7 = 0x0f
                           00000E   637 	ar6 = 0x0e
                           00000D   638 	ar5 = 0x0d
                           00000C   639 	ar4 = 0x0c
                           00000B   640 	ar3 = 0x0b
                           00000A   641 	ar2 = 0x0a
                           000009   642 	ar1 = 0x09
                           000008   643 	ar0 = 0x08
      00212A C0 E0            [24]  644 	push	acc
      00212C C0 D0            [24]  645 	push	psw
      00212E 75 D0 08         [24]  646 	mov	psw,#0x08
                                    647 ;	disp.c:132: t = column & 7u;
      002131 78 31            [12]  648 	mov	r0,#_column
      002133 86 0F            [24]  649 	mov	ar7,@r0
      002135 53 0F 07         [24]  650 	anl	ar7,#0x07
                                    651 ;	disp.c:133: gpo[DISP_COL] = 0u;
      002138 78 05            [12]  652 	mov	r0,#(_gpo + 0x0005)
      00213A E4               [12]  653 	clr	a
      00213B F2               [24]  654 	movx	@r0,a
                                    655 ;	disp.c:134: gpo[DISP_DATA] = ddata[t];
      00213C EF               [12]  656 	mov	a,r7
      00213D 24 29            [12]  657 	add	a,#_ddata
      00213F F9               [12]  658 	mov	r1,a
      002140 87 0E            [24]  659 	mov	ar6,@r1
      002142 78 04            [12]  660 	mov	r0,#(_gpo + 0x0004)
      002144 EE               [12]  661 	mov	a,r6
      002145 F2               [24]  662 	movx	@r0,a
                                    663 ;	disp.c:135: gpo[DISP_COL] = dcol[t];
      002146 EF               [12]  664 	mov	a,r7
      002147 24 21            [12]  665 	add	a,#_dcol
      002149 F9               [12]  666 	mov	r1,a
      00214A 87 0F            [24]  667 	mov	ar7,@r1
      00214C 78 05            [12]  668 	mov	r0,#(_gpo + 0x0005)
      00214E EF               [12]  669 	mov	a,r7
      00214F F2               [24]  670 	movx	@r0,a
                                    671 ;	disp.c:136: column++;
      002150 78 31            [12]  672 	mov	r0,#_column
      002152 E6               [12]  673 	mov	a,@r0
      002153 78 31            [12]  674 	mov	r0,#_column
      002155 04               [12]  675 	inc	a
      002156 F6               [12]  676 	mov	@r0,a
                                    677 ;	disp.c:138: TR0 = 0;
                                    678 ;	assignBit
      002157 C2 8C            [12]  679 	clr	_TR0
                                    680 ;	disp.c:139: TH0 = 0xf8;
      002159 75 8C F8         [24]  681 	mov	_TH0,#0xf8
                                    682 ;	disp.c:140: TL0 = 0x00;
      00215C 75 8A 00         [24]  683 	mov	_TL0,#0x00
                                    684 ;	disp.c:141: TR0 = 1;
                                    685 ;	assignBit
      00215F D2 8C            [12]  686 	setb	_TR0
                                    687 ;	disp.c:143: return;
                                    688 ;	disp.c:144: }
      002161 D0 D0            [24]  689 	pop	psw
      002163 D0 E0            [24]  690 	pop	acc
      002165 32               [24]  691 	reti
                                    692 ;	eliminated unneeded push/pop dpl
                                    693 ;	eliminated unneeded push/pop dph
                                    694 ;	eliminated unneeded push/pop b
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'scroll'
                                    697 ;------------------------------------------------------------
                                    698 ;msg                       Allocated to stack - _bp +1
                                    699 ;symbol                    Allocated to stack - _bp +5
                                    700 ;bit                       Allocated to stack - _bp +6
                                    701 ;i                         Allocated to stack - _bp +7
                                    702 ;j                         Allocated to registers r4 
                                    703 ;r                         Allocated to registers r3 r4 
                                    704 ;i                         Allocated to registers r3 
                                    705 ;j                         Allocated to registers r2 
                                    706 ;__3932160002              Allocated to registers 
                                    707 ;s                         Allocated to registers r6 r4 r3 
                                    708 ;sloc0                     Allocated to stack - _bp +4
                                    709 ;sloc1                     Allocated to stack - _bp +20
                                    710 ;sloc2                     Allocated to stack - _bp +21
                                    711 ;------------------------------------------------------------
                                    712 ;	disp.c:174: int scroll(uint8_t *msg) {
                                    713 ;	-----------------------------------------
                                    714 ;	 function scroll
                                    715 ;	-----------------------------------------
      002166                        716 _scroll:
                           000007   717 	ar7 = 0x07
                           000006   718 	ar6 = 0x06
                           000005   719 	ar5 = 0x05
                           000004   720 	ar4 = 0x04
                           000003   721 	ar3 = 0x03
                           000002   722 	ar2 = 0x02
                           000001   723 	ar1 = 0x01
                           000000   724 	ar0 = 0x00
      002166 C0 10            [24]  725 	push	_bp
      002168 85 81 10         [24]  726 	mov	_bp,sp
      00216B C0 82            [24]  727 	push	dpl
      00216D C0 83            [24]  728 	push	dph
      00216F C0 F0            [24]  729 	push	b
      002171 E5 81            [12]  730 	mov	a,sp
      002173 24 05            [12]  731 	add	a,#0x05
      002175 F5 81            [12]  732 	mov	sp,a
                                    733 ;	disp.c:180: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      002177 E5 10            [12]  734 	mov	a,_bp
      002179 24 06            [12]  735 	add	a,#0x06
      00217B F8               [12]  736 	mov	r0,a
      00217C 76 00            [12]  737 	mov	@r0,#0x00
      00217E E5 10            [12]  738 	mov	a,_bp
      002180 24 07            [12]  739 	add	a,#0x07
      002182 F8               [12]  740 	mov	r0,a
      002183 E4               [12]  741 	clr	a
      002184 F6               [12]  742 	mov	@r0,a
      002185 08               [12]  743 	inc	r0
      002186 F6               [12]  744 	mov	@r0,a
      002187                        745 00136$:
                                    746 ;	disp.c:181: if (!bit) {
      002187 E5 10            [12]  747 	mov	a,_bp
      002189 24 06            [12]  748 	add	a,#0x06
      00218B F8               [12]  749 	mov	r0,a
      00218C E6               [12]  750 	mov	a,@r0
      00218D 70 55            [24]  751 	jnz	00104$
                                    752 ;	disp.c:182: symbol = msg[i];
      00218F A8 10            [24]  753 	mov	r0,_bp
      002191 08               [12]  754 	inc	r0
      002192 E5 10            [12]  755 	mov	a,_bp
      002194 24 07            [12]  756 	add	a,#0x07
      002196 F9               [12]  757 	mov	r1,a
      002197 E7               [12]  758 	mov	a,@r1
      002198 26               [12]  759 	add	a,@r0
      002199 FA               [12]  760 	mov	r2,a
      00219A 09               [12]  761 	inc	r1
      00219B E7               [12]  762 	mov	a,@r1
      00219C 08               [12]  763 	inc	r0
      00219D 36               [12]  764 	addc	a,@r0
      00219E FB               [12]  765 	mov	r3,a
      00219F 08               [12]  766 	inc	r0
      0021A0 86 04            [24]  767 	mov	ar4,@r0
      0021A2 8A 82            [24]  768 	mov	dpl,r2
      0021A4 8B 83            [24]  769 	mov	dph,r3
      0021A6 8C F0            [24]  770 	mov	b,r4
      0021A8 12 26 39         [24]  771 	lcall	__gptrget
      0021AB FA               [12]  772 	mov	r2,a
      0021AC E5 10            [12]  773 	mov	a,_bp
      0021AE 24 04            [12]  774 	add	a,#0x04
      0021B0 F8               [12]  775 	mov	r0,a
      0021B1 A6 02            [24]  776 	mov	@r0,ar2
                                    777 ;	disp.c:183: if (!symbol) {
      0021B3 EA               [12]  778 	mov	a,r2
      0021B4 70 1D            [24]  779 	jnz	00102$
                                    780 ;	disp.c:184: i = 0u;
      0021B6 E5 10            [12]  781 	mov	a,_bp
      0021B8 24 07            [12]  782 	add	a,#0x07
      0021BA F8               [12]  783 	mov	r0,a
      0021BB E4               [12]  784 	clr	a
      0021BC F6               [12]  785 	mov	@r0,a
      0021BD 08               [12]  786 	inc	r0
      0021BE F6               [12]  787 	mov	@r0,a
                                    788 ;	disp.c:185: symbol = msg[i];
      0021BF A8 10            [24]  789 	mov	r0,_bp
      0021C1 08               [12]  790 	inc	r0
      0021C2 86 82            [24]  791 	mov	dpl,@r0
      0021C4 08               [12]  792 	inc	r0
      0021C5 86 83            [24]  793 	mov	dph,@r0
      0021C7 08               [12]  794 	inc	r0
      0021C8 86 F0            [24]  795 	mov	b,@r0
      0021CA E5 10            [12]  796 	mov	a,_bp
      0021CC 24 04            [12]  797 	add	a,#0x04
      0021CE F9               [12]  798 	mov	r1,a
      0021CF 12 26 39         [24]  799 	lcall	__gptrget
      0021D2 F7               [12]  800 	mov	@r1,a
      0021D3                        801 00102$:
                                    802 ;	disp.c:187: i++;
      0021D3 E5 10            [12]  803 	mov	a,_bp
      0021D5 24 07            [12]  804 	add	a,#0x07
      0021D7 F8               [12]  805 	mov	r0,a
      0021D8 06               [12]  806 	inc	@r0
      0021D9 B6 00 02         [24]  807 	cjne	@r0,#0x00,00225$
      0021DC 08               [12]  808 	inc	r0
      0021DD 06               [12]  809 	inc	@r0
      0021DE                        810 00225$:
                                    811 ;	disp.c:188: OE = 0x8fu;
      0021DE 78 32            [12]  812 	mov	r0,#_OE
      0021E0 76 8F            [12]  813 	mov	@r0,#0x8f
      0021E2 80 04            [24]  814 	sjmp	00105$
      0021E4                        815 00104$:
                                    816 ;	disp.c:189: } else OE = 0x0fu;
      0021E4 78 32            [12]  817 	mov	r0,#_OE
      0021E6 76 0F            [12]  818 	mov	@r0,#0x0f
      0021E8                        819 00105$:
                                    820 ;	disp.c:190: gpo[GPO_OE] = OE;
      0021E8 78 06            [12]  821 	mov	r0,#(_gpo + 0x0006)
      0021EA 79 32            [12]  822 	mov	r1,#_OE
      0021EC E7               [12]  823 	mov	a,@r1
      0021ED F2               [24]  824 	movx	@r0,a
                                    825 ;	disp.c:192: if ((SKIPL > bit) || (bit > (7u - SKIPH))) continue;
      0021EE E5 10            [12]  826 	mov	a,_bp
      0021F0 24 06            [12]  827 	add	a,#0x06
      0021F2 F8               [12]  828 	mov	r0,a
      0021F3 E6               [12]  829 	mov	a,@r0
      0021F4 24 FA            [12]  830 	add	a,#0xff - 0x05
      0021F6 50 03            [24]  831 	jnc	00226$
      0021F8 02 22 CD         [24]  832 	ljmp	00120$
      0021FB                        833 00226$:
                                    834 ;	disp.c:153: do {
      0021FB 7B 00            [12]  835 	mov	r3,#0x00
                                    836 ;	disp.c:155: do {
      0021FD                        837 00142$:
      0021FD 7A 00            [12]  838 	mov	r2,#0x00
      0021FF                        839 00122$:
                                    840 ;	disp.c:167: __endasm;
      0021FF 00               [12]  841 	nop
      002200 00               [12]  842 	nop
      002201 00               [12]  843 	nop
      002202 00               [12]  844 	nop
                                    845 ;	disp.c:168: } while ((++j) ^ 0x80u);
      002203 0A               [12]  846 	inc	r2
      002204 8A 06            [24]  847 	mov	ar6,r2
      002206 7F 00            [12]  848 	mov	r7,#0x00
      002208 74 80            [12]  849 	mov	a,#0x80
      00220A 6E               [12]  850 	xrl	a,r6
      00220B 70 F2            [24]  851 	jnz	00122$
      00220D EF               [12]  852 	mov	a,r7
      00220E 70 EF            [24]  853 	jnz	00122$
                                    854 ;	disp.c:169: } while ((++i) ^ 0x80u);
      002210 0B               [12]  855 	inc	r3
      002211 8B 02            [24]  856 	mov	ar2,r3
      002213 7F 00            [12]  857 	mov	r7,#0x00
      002215 74 80            [12]  858 	mov	a,#0x80
      002217 6A               [12]  859 	xrl	a,r2
      002218 70 E3            [24]  860 	jnz	00142$
      00221A EF               [12]  861 	mov	a,r7
      00221B 70 E0            [24]  862 	jnz	00142$
                                    863 ;	disp.c:196: for (j = 0u; j < 8u; j++)
      00221D E5 10            [12]  864 	mov	a,_bp
      00221F 24 04            [12]  865 	add	a,#0x04
      002221 F8               [12]  866 	mov	r0,a
      002222 E6               [12]  867 	mov	a,@r0
      002223 75 F0 08         [24]  868 	mov	b,#0x08
      002226 A4               [48]  869 	mul	ab
      002227 24 01            [12]  870 	add	a,#__ft_font6x8
      002229 FA               [12]  871 	mov	r2,a
      00222A 74 81            [12]  872 	mov	a,#(__ft_font6x8 >> 8)
      00222C 35 F0            [12]  873 	addc	a,b
      00222E FB               [12]  874 	mov	r3,a
      00222F E5 10            [12]  875 	mov	a,_bp
      002231 24 06            [12]  876 	add	a,#0x06
      002233 F8               [12]  877 	mov	r0,a
      002234 74 07            [12]  878 	mov	a,#0x07
      002236 C3               [12]  879 	clr	c
      002237 96               [12]  880 	subb	a,@r0
      002238 FD               [12]  881 	mov	r5,a
      002239 7C 00            [12]  882 	mov	r4,#0x00
      00223B                        883 00131$:
                                    884 ;	disp.c:197: ddata[j] = ((FONT_TABLE[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00223B EC               [12]  885 	mov	a,r4
      00223C 24 29            [12]  886 	add	a,#_ddata
      00223E F9               [12]  887 	mov	r1,a
      00223F EC               [12]  888 	mov	a,r4
      002240 2A               [12]  889 	add	a,r2
      002241 F5 82            [12]  890 	mov	dpl,a
      002243 E4               [12]  891 	clr	a
      002244 3B               [12]  892 	addc	a,r3
      002245 F5 83            [12]  893 	mov	dph,a
      002247 E0               [24]  894 	movx	a,@dptr
      002248 FF               [12]  895 	mov	r7,a
      002249 8D F0            [24]  896 	mov	b,r5
      00224B 05 F0            [12]  897 	inc	b
      00224D EF               [12]  898 	mov	a,r7
      00224E 80 02            [24]  899 	sjmp	00233$
      002250                        900 00231$:
      002250 25 E0            [12]  901 	add	a,acc
      002252                        902 00233$:
      002252 D5 F0 FB         [24]  903 	djnz	b,00231$
      002255 54 80            [12]  904 	anl	a,#0x80
      002257 FF               [12]  905 	mov	r7,a
      002258 EC               [12]  906 	mov	a,r4
      002259 24 29            [12]  907 	add	a,#_ddata
      00225B F8               [12]  908 	mov	r0,a
      00225C E6               [12]  909 	mov	a,@r0
      00225D C3               [12]  910 	clr	c
      00225E 13               [12]  911 	rrc	a
      00225F 4F               [12]  912 	orl	a,r7
      002260 F7               [12]  913 	mov	@r1,a
                                    914 ;	disp.c:196: for (j = 0u; j < 8u; j++)
      002261 0C               [12]  915 	inc	r4
      002262 BC 08 00         [24]  916 	cjne	r4,#0x08,00234$
      002265                        917 00234$:
      002265 40 D4            [24]  918 	jc	00131$
                                    919 ;	disp.c:199: if ((r = getchar_poll()) >= 0) {
      002267 12 20 9B         [24]  920 	lcall	_getchar_poll
      00226A AB 82            [24]  921 	mov	r3,dpl
      00226C AC 83            [24]  922 	mov	r4,dph
      00226E 8B 07            [24]  923 	mov	ar7,r3
      002270 EC               [12]  924 	mov	a,r4
      002271 FE               [12]  925 	mov	r6,a
      002272 20 E7 58         [24]  926 	jb	acc.7,00120$
                                    927 ;	disp.c:200: r = toupper(r);
      002275 8F 82            [24]  928 	mov	dpl,r7
      002277 8E 83            [24]  929 	mov	dph,r6
      002279 12 25 5B         [24]  930 	lcall	_toupper
      00227C AB 82            [24]  931 	mov	r3,dpl
      00227E AC 83            [24]  932 	mov	r4,dph
                                    933 ;	disp.c:201: if ((r == (int)'P') || (r == (int)' ')) {
      002280 BB 50 05         [24]  934 	cjne	r3,#0x50,00237$
      002283 BC 00 02         [24]  935 	cjne	r4,#0x00,00237$
      002286 80 06            [24]  936 	sjmp	00114$
      002288                        937 00237$:
      002288 BB 20 2A         [24]  938 	cjne	r3,#0x20,00115$
      00228B BC 00 27         [24]  939 	cjne	r4,#0x00,00115$
      00228E                        940 00114$:
                                    941 ;	disp.c:202: printstr("PAUSE\r\n");
      00228E 7E 74            [12]  942 	mov	r6,#___str_0
      002290 7C 26            [12]  943 	mov	r4,#(___str_0 >> 8)
      002292 7B 80            [12]  944 	mov	r3,#0x80
                                    945 ;	disp.c:48: return;
      002294                        946 00134$:
                                    947 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002294 8E 82            [24]  948 	mov	dpl,r6
      002296 8C 83            [24]  949 	mov	dph,r4
      002298 8B F0            [24]  950 	mov	b,r3
      00229A 12 26 39         [24]  951 	lcall	__gptrget
      00229D FD               [12]  952 	mov	r5,a
      00229E 60 10            [24]  953 	jz	00130$
      0022A0 7F 00            [12]  954 	mov	r7,#0x00
      0022A2 8D 82            [24]  955 	mov	dpl,r5
      0022A4 8F 83            [24]  956 	mov	dph,r7
      0022A6 12 20 8D         [24]  957 	lcall	_putchar
      0022A9 0E               [12]  958 	inc	r6
                                    959 ;	disp.c:202: printstr("PAUSE\r\n");
      0022AA BE 00 E7         [24]  960 	cjne	r6,#0x00,00134$
      0022AD 0C               [12]  961 	inc	r4
      0022AE 80 E4            [24]  962 	sjmp	00134$
      0022B0                        963 00130$:
                                    964 ;	disp.c:203: (void)getchar();
      0022B0 12 20 92         [24]  965 	lcall	_getchar
      0022B3 80 18            [24]  966 	sjmp	00120$
      0022B5                        967 00115$:
                                    968 ;	disp.c:204: } else if ((r == (int)'T') || (r == (int)'R') || (r == (int)'L')) break;
      0022B5 BB 54 05         [24]  969 	cjne	r3,#0x54,00242$
      0022B8 BC 00 02         [24]  970 	cjne	r4,#0x00,00242$
      0022BB 80 24            [24]  971 	sjmp	00121$
      0022BD                        972 00242$:
      0022BD BB 52 05         [24]  973 	cjne	r3,#0x52,00243$
      0022C0 BC 00 02         [24]  974 	cjne	r4,#0x00,00243$
      0022C3 80 1C            [24]  975 	sjmp	00121$
      0022C5                        976 00243$:
      0022C5 BB 4C 05         [24]  977 	cjne	r3,#0x4c,00244$
      0022C8 BC 00 02         [24]  978 	cjne	r4,#0x00,00244$
      0022CB 80 14            [24]  979 	sjmp	00121$
      0022CD                        980 00244$:
      0022CD                        981 00120$:
                                    982 ;	disp.c:180: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0022CD E5 10            [12]  983 	mov	a,_bp
      0022CF 24 06            [12]  984 	add	a,#0x06
      0022D1 F8               [12]  985 	mov	r0,a
      0022D2 E6               [12]  986 	mov	a,@r0
      0022D3 04               [12]  987 	inc	a
      0022D4 FF               [12]  988 	mov	r7,a
      0022D5 E5 10            [12]  989 	mov	a,_bp
      0022D7 24 06            [12]  990 	add	a,#0x06
      0022D9 F8               [12]  991 	mov	r0,a
      0022DA 74 07            [12]  992 	mov	a,#0x07
      0022DC 5F               [12]  993 	anl	a,r7
      0022DD F6               [12]  994 	mov	@r0,a
      0022DE 02 21 87         [24]  995 	ljmp	00136$
      0022E1                        996 00121$:
                                    997 ;	disp.c:208: return r;
      0022E1 8B 82            [24]  998 	mov	dpl,r3
      0022E3 8C 83            [24]  999 	mov	dph,r4
                                   1000 ;	disp.c:209: }
      0022E5 85 10 81         [24] 1001 	mov	sp,_bp
      0022E8 D0 10            [24] 1002 	pop	_bp
      0022EA 22               [24] 1003 	ret
                                   1004 ;------------------------------------------------------------
                                   1005 ;Allocation info for local variables in function 'main'
                                   1006 ;------------------------------------------------------------
                                   1007 ;j                         Allocated to stack - _bp +1
                                   1008 ;c                         Allocated to registers r7 r6 
                                   1009 ;__1310720004              Allocated to registers 
                                   1010 ;s                         Allocated to registers r5 r6 r7 
                                   1011 ;__1966080006              Allocated to registers 
                                   1012 ;s                         Allocated to registers r5 r6 r7 
                                   1013 ;__1966080008              Allocated to registers 
                                   1014 ;s                         Allocated to registers r5 r6 r7 
                                   1015 ;__1966080010              Allocated to registers 
                                   1016 ;s                         Allocated to registers r5 r6 r7 
                                   1017 ;__3276800012              Allocated to registers 
                                   1018 ;s                         Allocated to registers r7 r6 r4 
                                   1019 ;__3276800014              Allocated to registers 
                                   1020 ;s                         Allocated to registers r7 r6 r4 
                                   1021 ;__3276800016              Allocated to registers 
                                   1022 ;s                         Allocated to registers r7 r6 r4 
                                   1023 ;__3276800018              Allocated to registers 
                                   1024 ;s                         Allocated to registers r7 r6 r4 
                                   1025 ;__3276800020              Allocated to registers 
                                   1026 ;s                         Allocated to registers r7 r6 r4 
                                   1027 ;__1310720022              Allocated to registers 
                                   1028 ;s                         Allocated to registers r5 r6 r7 
                                   1029 ;sloc0                     Allocated to stack - _bp +65
                                   1030 ;------------------------------------------------------------
                                   1031 ;	disp.c:211: void main(void) {
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function main
                                   1034 ;	-----------------------------------------
      0022EB                       1035 _main:
      0022EB C0 10            [24] 1036 	push	_bp
      0022ED 85 81 10         [24] 1037 	mov	_bp,sp
      0022F0 05 81            [12] 1038 	inc	sp
      0022F2 05 81            [12] 1039 	inc	sp
                                   1040 ;	disp.c:215: init_gpo();
      0022F4 12 20 AF         [24] 1041 	lcall	_init_gpo
                                   1042 ;	disp.c:216: clear_gpo();
      0022F7 12 20 CD         [24] 1043 	lcall	_clear_gpo
                                   1044 ;	disp.c:217: init_disp();
      0022FA 12 20 F9         [24] 1045 	lcall	_init_disp
                                   1046 ;	disp.c:218: init_timer0();
      0022FD 12 20 ED         [24] 1047 	lcall	_init_timer0
                                   1048 ;	disp.c:219: init_intr();
      002300 12 20 E6         [24] 1049 	lcall	_init_intr
                                   1050 ;	disp.c:220: TR0 = 1;
                                   1051 ;	assignBit
      002303 D2 8C            [12] 1052 	setb	_TR0
                                   1053 ;	disp.c:222: reset:
      002305                       1054 00101$:
                                   1055 ;	disp.c:223: init_disp();
      002305 12 20 F9         [24] 1056 	lcall	_init_disp
                                   1057 ;	disp.c:224: printstr("RESET\r\n");
      002308 7D 7C            [12] 1058 	mov	r5,#___str_1
      00230A 7E 26            [12] 1059 	mov	r6,#(___str_1 >> 8)
      00230C 7F 80            [12] 1060 	mov	r7,#0x80
                                   1061 ;	disp.c:48: return;
      00230E                       1062 00146$:
                                   1063 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00230E 8D 82            [24] 1064 	mov	dpl,r5
      002310 8E 83            [24] 1065 	mov	dph,r6
      002312 8F F0            [24] 1066 	mov	b,r7
      002314 12 26 39         [24] 1067 	lcall	__gptrget
      002317 FC               [12] 1068 	mov	r4,a
      002318 60 10            [24] 1069 	jz	00126$
      00231A 7B 00            [12] 1070 	mov	r3,#0x00
      00231C 8C 82            [24] 1071 	mov	dpl,r4
      00231E 8B 83            [24] 1072 	mov	dph,r3
      002320 12 20 8D         [24] 1073 	lcall	_putchar
      002323 0D               [12] 1074 	inc	r5
                                   1075 ;	disp.c:224: printstr("RESET\r\n");
      002324 BD 00 E7         [24] 1076 	cjne	r5,#0x00,00146$
      002327 0E               [12] 1077 	inc	r6
      002328 80 E4            [24] 1078 	sjmp	00146$
      00232A                       1079 00126$:
                                   1080 ;	disp.c:225: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00232A E4               [12] 1081 	clr	a
      00232B C0 E0            [24] 1082 	push	acc
      00232D 04               [12] 1083 	inc	a
      00232E C0 E0            [24] 1084 	push	acc
      002330 90 89 01         [24] 1085 	mov	dptr,#_initial
      002333 E0               [24] 1086 	movx	a,@dptr
      002334 C0 E0            [24] 1087 	push	acc
      002336 A3               [24] 1088 	inc	dptr
      002337 E0               [24] 1089 	movx	a,@dptr
      002338 C0 E0            [24] 1090 	push	acc
      00233A A3               [24] 1091 	inc	dptr
      00233B E0               [24] 1092 	movx	a,@dptr
      00233C C0 E0            [24] 1093 	push	acc
      00233E 90 80 00         [24] 1094 	mov	dptr,#_buf
      002341 75 F0 00         [24] 1095 	mov	b,#0x00
      002344 12 25 82         [24] 1096 	lcall	_strncpy
      002347 E5 81            [12] 1097 	mov	a,sp
      002349 24 FB            [12] 1098 	add	a,#0xfb
      00234B F5 81            [12] 1099 	mov	sp,a
                                   1100 ;	disp.c:226: buf[sizeof (buf) - 1u] = 0u;
      00234D 90 81 00         [24] 1101 	mov	dptr,#(_buf + 0x0100)
      002350 E4               [12] 1102 	clr	a
      002351 F0               [24] 1103 	movx	@dptr,a
                                   1104 ;	disp.c:228: while (1) {
      002352                       1105 00122$:
                                   1106 ;	disp.c:229: printstr("P SP L ENT S R T START MSG \"");
      002352 7D 84            [12] 1107 	mov	r5,#___str_2
      002354 7E 26            [12] 1108 	mov	r6,#(___str_2 >> 8)
      002356 7F 80            [12] 1109 	mov	r7,#0x80
                                   1110 ;	disp.c:48: return;
      002358                       1111 00149$:
                                   1112 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002358 8D 82            [24] 1113 	mov	dpl,r5
      00235A 8E 83            [24] 1114 	mov	dph,r6
      00235C 8F F0            [24] 1115 	mov	b,r7
      00235E 12 26 39         [24] 1116 	lcall	__gptrget
      002361 FC               [12] 1117 	mov	r4,a
      002362 60 10            [24] 1118 	jz	00128$
      002364 7B 00            [12] 1119 	mov	r3,#0x00
      002366 8C 82            [24] 1120 	mov	dpl,r4
      002368 8B 83            [24] 1121 	mov	dph,r3
      00236A 12 20 8D         [24] 1122 	lcall	_putchar
      00236D 0D               [12] 1123 	inc	r5
                                   1124 ;	disp.c:229: printstr("P SP L ENT S R T START MSG \"");
      00236E BD 00 E7         [24] 1125 	cjne	r5,#0x00,00149$
      002371 0E               [12] 1126 	inc	r6
      002372 80 E4            [24] 1127 	sjmp	00149$
      002374                       1128 00128$:
                                   1129 ;	disp.c:230: printstr((char *)buf);
      002374 7D 00            [12] 1130 	mov	r5,#_buf
      002376 7E 80            [12] 1131 	mov	r6,#(_buf >> 8)
      002378 7F 00            [12] 1132 	mov	r7,#0x00
                                   1133 ;	disp.c:48: return;
      00237A                       1134 00152$:
                                   1135 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00237A 8D 82            [24] 1136 	mov	dpl,r5
      00237C 8E 83            [24] 1137 	mov	dph,r6
      00237E 8F F0            [24] 1138 	mov	b,r7
      002380 12 26 39         [24] 1139 	lcall	__gptrget
      002383 FC               [12] 1140 	mov	r4,a
      002384 60 10            [24] 1141 	jz	00130$
      002386 7B 00            [12] 1142 	mov	r3,#0x00
      002388 8C 82            [24] 1143 	mov	dpl,r4
      00238A 8B 83            [24] 1144 	mov	dph,r3
      00238C 12 20 8D         [24] 1145 	lcall	_putchar
      00238F 0D               [12] 1146 	inc	r5
                                   1147 ;	disp.c:230: printstr((char *)buf);
      002390 BD 00 E7         [24] 1148 	cjne	r5,#0x00,00152$
      002393 0E               [12] 1149 	inc	r6
      002394 80 E4            [24] 1150 	sjmp	00152$
      002396                       1151 00130$:
                                   1152 ;	disp.c:231: printstr("\"\r\n");
      002396 7D A1            [12] 1153 	mov	r5,#___str_3
      002398 7E 26            [12] 1154 	mov	r6,#(___str_3 >> 8)
      00239A 7F 80            [12] 1155 	mov	r7,#0x80
                                   1156 ;	disp.c:48: return;
      00239C                       1157 00155$:
                                   1158 ;	disp.c:46: for (; *s; s++) putchar(*s);
      00239C 8D 82            [24] 1159 	mov	dpl,r5
      00239E 8E 83            [24] 1160 	mov	dph,r6
      0023A0 8F F0            [24] 1161 	mov	b,r7
      0023A2 12 26 39         [24] 1162 	lcall	__gptrget
      0023A5 FC               [12] 1163 	mov	r4,a
      0023A6 60 10            [24] 1164 	jz	00132$
      0023A8 7B 00            [12] 1165 	mov	r3,#0x00
      0023AA 8C 82            [24] 1166 	mov	dpl,r4
      0023AC 8B 83            [24] 1167 	mov	dph,r3
      0023AE 12 20 8D         [24] 1168 	lcall	_putchar
      0023B1 0D               [12] 1169 	inc	r5
                                   1170 ;	disp.c:231: printstr("\"\r\n");
      0023B2 BD 00 E7         [24] 1171 	cjne	r5,#0x00,00155$
      0023B5 0E               [12] 1172 	inc	r6
      0023B6 80 E4            [24] 1173 	sjmp	00155$
      0023B8                       1174 00132$:
                                   1175 ;	disp.c:233: c = scroll(buf);
      0023B8 90 80 00         [24] 1176 	mov	dptr,#_buf
      0023BB 75 F0 00         [24] 1177 	mov	b,#0x00
      0023BE 12 21 66         [24] 1178 	lcall	_scroll
      0023C1 AE 82            [24] 1179 	mov	r6,dpl
      0023C3 AF 83            [24] 1180 	mov	r7,dph
                                   1181 ;	disp.c:235: while (1) {
      0023C5                       1182 00119$:
                                   1183 ;	disp.c:236: if (c == (int)'T') goto term;
      0023C5 BE 54 06         [24] 1184 	cjne	r6,#0x54,00337$
      0023C8 BF 00 03         [24] 1185 	cjne	r7,#0x00,00337$
      0023CB 02 25 28         [24] 1186 	ljmp	00124$
      0023CE                       1187 00337$:
                                   1188 ;	disp.c:237: else if (c == (int)'R') goto reset;
      0023CE BE 52 06         [24] 1189 	cjne	r6,#0x52,00338$
      0023D1 BF 00 03         [24] 1190 	cjne	r7,#0x00,00338$
      0023D4 02 23 05         [24] 1191 	ljmp	00101$
      0023D7                       1192 00338$:
                                   1193 ;	disp.c:238: else if (c == (int)'L') {
      0023D7 BE 4C 05         [24] 1194 	cjne	r6,#0x4c,00339$
      0023DA BF 00 02         [24] 1195 	cjne	r7,#0x00,00339$
      0023DD 80 03            [24] 1196 	sjmp	00340$
      0023DF                       1197 00339$:
      0023DF 02 25 12         [24] 1198 	ljmp	00110$
      0023E2                       1199 00340$:
                                   1200 ;	disp.c:239: init_disp();
      0023E2 12 20 F9         [24] 1201 	lcall	_init_disp
                                   1202 ;	disp.c:240: printstr("LOAD ");
      0023E5 7F A5            [12] 1203 	mov	r7,#___str_4
      0023E7 7E 26            [12] 1204 	mov	r6,#(___str_4 >> 8)
      0023E9 7C 80            [12] 1205 	mov	r4,#0x80
                                   1206 ;	disp.c:48: return;
      0023EB                       1207 00158$:
                                   1208 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0023EB 8F 82            [24] 1209 	mov	dpl,r7
      0023ED 8E 83            [24] 1210 	mov	dph,r6
      0023EF 8C F0            [24] 1211 	mov	b,r4
      0023F1 12 26 39         [24] 1212 	lcall	__gptrget
      0023F4 FA               [12] 1213 	mov	r2,a
      0023F5 60 10            [24] 1214 	jz	00134$
      0023F7 7D 00            [12] 1215 	mov	r5,#0x00
      0023F9 8A 82            [24] 1216 	mov	dpl,r2
      0023FB 8D 83            [24] 1217 	mov	dph,r5
      0023FD 12 20 8D         [24] 1218 	lcall	_putchar
      002400 0F               [12] 1219 	inc	r7
                                   1220 ;	disp.c:240: printstr("LOAD ");
      002401 BF 00 E7         [24] 1221 	cjne	r7,#0x00,00158$
      002404 0E               [12] 1222 	inc	r6
      002405 80 E4            [24] 1223 	sjmp	00158$
      002407                       1224 00134$:
                                   1225 ;	disp.c:241: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002407 7C 00            [12] 1226 	mov	r4,#0x00
      002409 7D 00            [12] 1227 	mov	r5,#0x00
      00240B A8 10            [24] 1228 	mov	r0,_bp
      00240D 08               [12] 1229 	inc	r0
      00240E E4               [12] 1230 	clr	a
      00240F F6               [12] 1231 	mov	@r0,a
      002410 08               [12] 1232 	inc	r0
      002411 F6               [12] 1233 	mov	@r0,a
      002412                       1234 00160$:
                                   1235 ;	disp.c:242: c = getchar();
      002412 C0 04            [24] 1236 	push	ar4
      002414 C0 05            [24] 1237 	push	ar5
      002416 12 20 92         [24] 1238 	lcall	_getchar
      002419 AC 82            [24] 1239 	mov	r4,dpl
      00241B AD 83            [24] 1240 	mov	r5,dph
      00241D 8C 07            [24] 1241 	mov	ar7,r4
      00241F 8D 06            [24] 1242 	mov	ar6,r5
                                   1243 ;	disp.c:243: (void)putchar(c);
      002421 8F 82            [24] 1244 	mov	dpl,r7
      002423 8E 83            [24] 1245 	mov	dph,r6
      002425 12 20 8D         [24] 1246 	lcall	_putchar
                                   1247 ;	disp.c:244: if ((c == (int)'\r') || (c == (int)'\n')) {
      002428 BF 0D 09         [24] 1248 	cjne	r7,#0x0d,00343$
      00242B BE 00 06         [24] 1249 	cjne	r6,#0x00,00343$
      00242E D0 05            [24] 1250 	pop	ar5
      002430 D0 04            [24] 1251 	pop	ar4
      002432 80 0A            [24] 1252 	sjmp	00102$
      002434                       1253 00343$:
      002434 D0 05            [24] 1254 	pop	ar5
      002436 D0 04            [24] 1255 	pop	ar4
      002438 BF 0A 11         [24] 1256 	cjne	r7,#0x0a,00103$
      00243B BE 00 0E         [24] 1257 	cjne	r6,#0x00,00103$
      00243E                       1258 00102$:
                                   1259 ;	disp.c:245: buf[j] = 0u;
      00243E EC               [12] 1260 	mov	a,r4
      00243F 24 00            [12] 1261 	add	a,#_buf
      002441 F5 82            [12] 1262 	mov	dpl,a
      002443 ED               [12] 1263 	mov	a,r5
      002444 34 80            [12] 1264 	addc	a,#(_buf >> 8)
      002446 F5 83            [12] 1265 	mov	dph,a
      002448 E4               [12] 1266 	clr	a
      002449 F0               [24] 1267 	movx	@dptr,a
                                   1268 ;	disp.c:246: break;
      00244A 80 32            [24] 1269 	sjmp	00106$
      00244C                       1270 00103$:
                                   1271 ;	disp.c:247: } else buf[j] = c & 0xffu;
      00244C A8 10            [24] 1272 	mov	r0,_bp
      00244E 08               [12] 1273 	inc	r0
      00244F E6               [12] 1274 	mov	a,@r0
      002450 24 00            [12] 1275 	add	a,#_buf
      002452 FD               [12] 1276 	mov	r5,a
      002453 08               [12] 1277 	inc	r0
      002454 E6               [12] 1278 	mov	a,@r0
      002455 34 80            [12] 1279 	addc	a,#(_buf >> 8)
      002457 FC               [12] 1280 	mov	r4,a
      002458 8F 03            [24] 1281 	mov	ar3,r7
      00245A 8D 82            [24] 1282 	mov	dpl,r5
      00245C 8C 83            [24] 1283 	mov	dph,r4
      00245E EB               [12] 1284 	mov	a,r3
      00245F F0               [24] 1285 	movx	@dptr,a
                                   1286 ;	disp.c:241: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002460 A8 10            [24] 1287 	mov	r0,_bp
      002462 08               [12] 1288 	inc	r0
      002463 06               [12] 1289 	inc	@r0
      002464 B6 00 02         [24] 1290 	cjne	@r0,#0x00,00346$
      002467 08               [12] 1291 	inc	r0
      002468 06               [12] 1292 	inc	@r0
      002469                       1293 00346$:
      002469 A8 10            [24] 1294 	mov	r0,_bp
      00246B 08               [12] 1295 	inc	r0
      00246C 86 04            [24] 1296 	mov	ar4,@r0
      00246E 08               [12] 1297 	inc	r0
      00246F 86 05            [24] 1298 	mov	ar5,@r0
      002471 A8 10            [24] 1299 	mov	r0,_bp
      002473 08               [12] 1300 	inc	r0
      002474 86 02            [24] 1301 	mov	ar2,@r0
      002476 08               [12] 1302 	inc	r0
      002477 86 03            [24] 1303 	mov	ar3,@r0
      002479 74 FF            [12] 1304 	mov	a,#0x100 - 0x01
      00247B 2B               [12] 1305 	add	a,r3
      00247C 50 94            [24] 1306 	jnc	00160$
      00247E                       1307 00106$:
                                   1308 ;	disp.c:249: buf[j] = 0u;
      00247E EC               [12] 1309 	mov	a,r4
      00247F 24 00            [12] 1310 	add	a,#_buf
      002481 F5 82            [12] 1311 	mov	dpl,a
      002483 ED               [12] 1312 	mov	a,r5
      002484 34 80            [12] 1313 	addc	a,#(_buf >> 8)
      002486 F5 83            [12] 1314 	mov	dph,a
      002488 E4               [12] 1315 	clr	a
      002489 F0               [24] 1316 	movx	@dptr,a
                                   1317 ;	disp.c:250: printstr("\r\n");
      00248A 7F AB            [12] 1318 	mov	r7,#___str_5
      00248C 7E 26            [12] 1319 	mov	r6,#(___str_5 >> 8)
      00248E 7C 80            [12] 1320 	mov	r4,#0x80
                                   1321 ;	disp.c:48: return;
      002490                       1322 00163$:
                                   1323 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002490 8F 82            [24] 1324 	mov	dpl,r7
      002492 8E 83            [24] 1325 	mov	dph,r6
      002494 8C F0            [24] 1326 	mov	b,r4
      002496 12 26 39         [24] 1327 	lcall	__gptrget
      002499 FA               [12] 1328 	mov	r2,a
      00249A 60 10            [24] 1329 	jz	00136$
      00249C 7D 00            [12] 1330 	mov	r5,#0x00
      00249E 8A 82            [24] 1331 	mov	dpl,r2
      0024A0 8D 83            [24] 1332 	mov	dph,r5
      0024A2 12 20 8D         [24] 1333 	lcall	_putchar
      0024A5 0F               [12] 1334 	inc	r7
                                   1335 ;	disp.c:250: printstr("\r\n");
      0024A6 BF 00 E7         [24] 1336 	cjne	r7,#0x00,00163$
      0024A9 0E               [12] 1337 	inc	r6
      0024AA 80 E4            [24] 1338 	sjmp	00163$
      0024AC                       1339 00136$:
                                   1340 ;	disp.c:251: printstr("MSG \"");
      0024AC 7F AE            [12] 1341 	mov	r7,#___str_6
      0024AE 7E 26            [12] 1342 	mov	r6,#(___str_6 >> 8)
      0024B0 7C 80            [12] 1343 	mov	r4,#0x80
                                   1344 ;	disp.c:48: return;
      0024B2                       1345 00166$:
                                   1346 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024B2 8F 82            [24] 1347 	mov	dpl,r7
      0024B4 8E 83            [24] 1348 	mov	dph,r6
      0024B6 8C F0            [24] 1349 	mov	b,r4
      0024B8 12 26 39         [24] 1350 	lcall	__gptrget
      0024BB FA               [12] 1351 	mov	r2,a
      0024BC 60 10            [24] 1352 	jz	00138$
      0024BE 7D 00            [12] 1353 	mov	r5,#0x00
      0024C0 8A 82            [24] 1354 	mov	dpl,r2
      0024C2 8D 83            [24] 1355 	mov	dph,r5
      0024C4 12 20 8D         [24] 1356 	lcall	_putchar
      0024C7 0F               [12] 1357 	inc	r7
                                   1358 ;	disp.c:251: printstr("MSG \"");
      0024C8 BF 00 E7         [24] 1359 	cjne	r7,#0x00,00166$
      0024CB 0E               [12] 1360 	inc	r6
      0024CC 80 E4            [24] 1361 	sjmp	00166$
      0024CE                       1362 00138$:
                                   1363 ;	disp.c:252: printstr((char *)buf);
      0024CE 7F 00            [12] 1364 	mov	r7,#_buf
      0024D0 7E 80            [12] 1365 	mov	r6,#(_buf >> 8)
      0024D2 7C 00            [12] 1366 	mov	r4,#0x00
                                   1367 ;	disp.c:48: return;
      0024D4                       1368 00169$:
                                   1369 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024D4 8F 82            [24] 1370 	mov	dpl,r7
      0024D6 8E 83            [24] 1371 	mov	dph,r6
      0024D8 8C F0            [24] 1372 	mov	b,r4
      0024DA 12 26 39         [24] 1373 	lcall	__gptrget
      0024DD FA               [12] 1374 	mov	r2,a
      0024DE 60 10            [24] 1375 	jz	00140$
      0024E0 7D 00            [12] 1376 	mov	r5,#0x00
      0024E2 8A 82            [24] 1377 	mov	dpl,r2
      0024E4 8D 83            [24] 1378 	mov	dph,r5
      0024E6 12 20 8D         [24] 1379 	lcall	_putchar
      0024E9 0F               [12] 1380 	inc	r7
                                   1381 ;	disp.c:252: printstr((char *)buf);
      0024EA BF 00 E7         [24] 1382 	cjne	r7,#0x00,00169$
      0024ED 0E               [12] 1383 	inc	r6
      0024EE 80 E4            [24] 1384 	sjmp	00169$
      0024F0                       1385 00140$:
                                   1386 ;	disp.c:253: printstr("\"\r\n");
      0024F0 7F A1            [12] 1387 	mov	r7,#___str_3
      0024F2 7E 26            [12] 1388 	mov	r6,#(___str_3 >> 8)
      0024F4 7C 80            [12] 1389 	mov	r4,#0x80
                                   1390 ;	disp.c:48: return;
      0024F6                       1391 00172$:
                                   1392 ;	disp.c:46: for (; *s; s++) putchar(*s);
      0024F6 8F 82            [24] 1393 	mov	dpl,r7
      0024F8 8E 83            [24] 1394 	mov	dph,r6
      0024FA 8C F0            [24] 1395 	mov	b,r4
      0024FC 12 26 39         [24] 1396 	lcall	__gptrget
      0024FF FA               [12] 1397 	mov	r2,a
      002500 60 19            [24] 1398 	jz	00117$
      002502 7D 00            [12] 1399 	mov	r5,#0x00
      002504 8A 82            [24] 1400 	mov	dpl,r2
      002506 8D 83            [24] 1401 	mov	dph,r5
      002508 12 20 8D         [24] 1402 	lcall	_putchar
      00250B 0F               [12] 1403 	inc	r7
                                   1404 ;	disp.c:253: printstr("\"\r\n");
      00250C BF 00 E7         [24] 1405 	cjne	r7,#0x00,00172$
      00250F 0E               [12] 1406 	inc	r6
      002510 80 E4            [24] 1407 	sjmp	00172$
      002512                       1408 00110$:
                                   1409 ;	disp.c:254: } else if (c == (int)'S') break;
      002512 BE 53 06         [24] 1410 	cjne	r6,#0x53,00356$
      002515 BF 00 03         [24] 1411 	cjne	r7,#0x00,00356$
      002518 02 23 52         [24] 1412 	ljmp	00122$
      00251B                       1413 00356$:
      00251B                       1414 00117$:
                                   1415 ;	disp.c:256: c = toupper(getchar());
      00251B 12 20 92         [24] 1416 	lcall	_getchar
      00251E 12 25 5B         [24] 1417 	lcall	_toupper
      002521 AE 82            [24] 1418 	mov	r6,dpl
      002523 AF 83            [24] 1419 	mov	r7,dph
      002525 02 23 C5         [24] 1420 	ljmp	00119$
                                   1421 ;	disp.c:260: term:	
      002528                       1422 00124$:
                                   1423 ;	disp.c:261: EA = 0;
                                   1424 ;	assignBit
      002528 C2 AF            [12] 1425 	clr	_EA
                                   1426 ;	disp.c:262: init_disp();
      00252A 12 20 F9         [24] 1427 	lcall	_init_disp
                                   1428 ;	disp.c:263: printstr("TERM\r\n");
      00252D 7D B4            [12] 1429 	mov	r5,#___str_7
      00252F 7E 26            [12] 1430 	mov	r6,#(___str_7 >> 8)
      002531 7F 80            [12] 1431 	mov	r7,#0x80
                                   1432 ;	disp.c:48: return;
      002533                       1433 00175$:
                                   1434 ;	disp.c:46: for (; *s; s++) putchar(*s);
      002533 8D 82            [24] 1435 	mov	dpl,r5
      002535 8E 83            [24] 1436 	mov	dph,r6
      002537 8F F0            [24] 1437 	mov	b,r7
      002539 12 26 39         [24] 1438 	lcall	__gptrget
      00253C FC               [12] 1439 	mov	r4,a
      00253D 60 10            [24] 1440 	jz	00144$
      00253F 7B 00            [12] 1441 	mov	r3,#0x00
      002541 8C 82            [24] 1442 	mov	dpl,r4
      002543 8B 83            [24] 1443 	mov	dph,r3
      002545 12 20 8D         [24] 1444 	lcall	_putchar
      002548 0D               [12] 1445 	inc	r5
                                   1446 ;	disp.c:263: printstr("TERM\r\n");
      002549 BD 00 E7         [24] 1447 	cjne	r5,#0x00,00175$
      00254C 0E               [12] 1448 	inc	r6
      00254D 80 E4            [24] 1449 	sjmp	00175$
      00254F                       1450 00144$:
                                   1451 ;	disp.c:264: (void)getchar();
      00254F 12 20 92         [24] 1452 	lcall	_getchar
                                   1453 ;	disp.c:266: PCON |= 2;
      002552 43 87 02         [24] 1454 	orl	_PCON,#0x02
                                   1455 ;	disp.c:268: return;
                                   1456 ;	disp.c:269: }
      002555 85 10 81         [24] 1457 	mov	sp,_bp
      002558 D0 10            [24] 1458 	pop	_bp
      00255A 22               [24] 1459 	ret
                                   1460 	.area CSEG    (CODE)
                                   1461 	.area CONST   (CODE)
                                   1462 	.area CONST   (CODE)
      002674                       1463 ___str_0:
      002674 50 41 55 53 45        1464 	.ascii "PAUSE"
      002679 0D                    1465 	.db 0x0d
      00267A 0A                    1466 	.db 0x0a
      00267B 00                    1467 	.db 0x00
                                   1468 	.area CSEG    (CODE)
                                   1469 	.area CONST   (CODE)
      00267C                       1470 ___str_1:
      00267C 52 45 53 45 54        1471 	.ascii "RESET"
      002681 0D                    1472 	.db 0x0d
      002682 0A                    1473 	.db 0x0a
      002683 00                    1474 	.db 0x00
                                   1475 	.area CSEG    (CODE)
                                   1476 	.area CONST   (CODE)
      002684                       1477 ___str_2:
      002684 50 20 53 50 20 4C 20  1478 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      00269F 22                    1479 	.db 0x22
      0026A0 00                    1480 	.db 0x00
                                   1481 	.area CSEG    (CODE)
                                   1482 	.area CONST   (CODE)
      0026A1                       1483 ___str_3:
      0026A1 22                    1484 	.db 0x22
      0026A2 0D                    1485 	.db 0x0d
      0026A3 0A                    1486 	.db 0x0a
      0026A4 00                    1487 	.db 0x00
                                   1488 	.area CSEG    (CODE)
                                   1489 	.area CONST   (CODE)
      0026A5                       1490 ___str_4:
      0026A5 4C 4F 41 44 20        1491 	.ascii "LOAD "
      0026AA 00                    1492 	.db 0x00
                                   1493 	.area CSEG    (CODE)
                                   1494 	.area CONST   (CODE)
      0026AB                       1495 ___str_5:
      0026AB 0D                    1496 	.db 0x0d
      0026AC 0A                    1497 	.db 0x0a
      0026AD 00                    1498 	.db 0x00
                                   1499 	.area CSEG    (CODE)
                                   1500 	.area CONST   (CODE)
      0026AE                       1501 ___str_6:
      0026AE 4D 53 47 20           1502 	.ascii "MSG "
      0026B2 22                    1503 	.db 0x22
      0026B3 00                    1504 	.db 0x00
                                   1505 	.area CSEG    (CODE)
                                   1506 	.area CONST   (CODE)
      0026B4                       1507 ___str_7:
      0026B4 54 45 52 4D           1508 	.ascii "TERM"
      0026B8 0D                    1509 	.db 0x0d
      0026B9 0A                    1510 	.db 0x0a
      0026BA 00                    1511 	.db 0x00
                                   1512 	.area CSEG    (CODE)
                                   1513 	.area CONST   (CODE)
      0026BB                       1514 ___str_8:
      0026BB 4A 65 64 65 6D 20 64  1515 	.ascii "Jedem das Seine! IVSTITIA SVVM CVIQVE DISTRIBVIT "
             61 73 20 53 65 69 6E
             65 21 20 49 56 53 54
             49 54 49 41 20 53 56
             56 4D 20 43 56 49 51
             56 45 20 44 49 53 54
             52 49 42 56 49 54 20
      0026EC 00                    1516 	.db 0x00
                                   1517 	.area CSEG    (CODE)
                                   1518 	.area XINIT   (CODE)
      0026ED                       1519 __xinit___ft_font6x8:
      0026ED 00                    1520 	.db #0x00	; 0
      0026EE 00                    1521 	.db #0x00	; 0
      0026EF 00                    1522 	.db #0x00	; 0
      0026F0 00                    1523 	.db #0x00	; 0
      0026F1 00                    1524 	.db #0x00	; 0
      0026F2 00                    1525 	.db #0x00	; 0
      0026F3 00                    1526 	.db #0x00	; 0
      0026F4 00                    1527 	.db #0x00	; 0
      0026F5 1C                    1528 	.db #0x1c	; 28
      0026F6 22                    1529 	.db #0x22	; 34
      0026F7 36                    1530 	.db #0x36	; 54	'6'
      0026F8 22                    1531 	.db #0x22	; 34
      0026F9 2A                    1532 	.db #0x2a	; 42
      0026FA 22                    1533 	.db #0x22	; 34
      0026FB 1C                    1534 	.db #0x1c	; 28
      0026FC 00                    1535 	.db #0x00	; 0
      0026FD 1C                    1536 	.db #0x1c	; 28
      0026FE 3E                    1537 	.db #0x3e	; 62
      0026FF 2A                    1538 	.db #0x2a	; 42
      002700 3E                    1539 	.db #0x3e	; 62
      002701 22                    1540 	.db #0x22	; 34
      002702 3E                    1541 	.db #0x3e	; 62
      002703 1C                    1542 	.db #0x1c	; 28
      002704 00                    1543 	.db #0x00	; 0
      002705 00                    1544 	.db #0x00	; 0
      002706 14                    1545 	.db #0x14	; 20
      002707 3E                    1546 	.db #0x3e	; 62
      002708 3E                    1547 	.db #0x3e	; 62
      002709 3E                    1548 	.db #0x3e	; 62
      00270A 1C                    1549 	.db #0x1c	; 28
      00270B 08                    1550 	.db #0x08	; 8
      00270C 00                    1551 	.db #0x00	; 0
      00270D 00                    1552 	.db #0x00	; 0
      00270E 08                    1553 	.db #0x08	; 8
      00270F 1C                    1554 	.db #0x1c	; 28
      002710 3E                    1555 	.db #0x3e	; 62
      002711 3E                    1556 	.db #0x3e	; 62
      002712 1C                    1557 	.db #0x1c	; 28
      002713 08                    1558 	.db #0x08	; 8
      002714 00                    1559 	.db #0x00	; 0
      002715 08                    1560 	.db #0x08	; 8
      002716 1C                    1561 	.db #0x1c	; 28
      002717 1C                    1562 	.db #0x1c	; 28
      002718 08                    1563 	.db #0x08	; 8
      002719 3E                    1564 	.db #0x3e	; 62
      00271A 3E                    1565 	.db #0x3e	; 62
      00271B 08                    1566 	.db #0x08	; 8
      00271C 00                    1567 	.db #0x00	; 0
      00271D 00                    1568 	.db #0x00	; 0
      00271E 08                    1569 	.db #0x08	; 8
      00271F 1C                    1570 	.db #0x1c	; 28
      002720 3E                    1571 	.db #0x3e	; 62
      002721 3E                    1572 	.db #0x3e	; 62
      002722 08                    1573 	.db #0x08	; 8
      002723 1C                    1574 	.db #0x1c	; 28
      002724 00                    1575 	.db #0x00	; 0
      002725 00                    1576 	.db #0x00	; 0
      002726 00                    1577 	.db #0x00	; 0
      002727 00                    1578 	.db #0x00	; 0
      002728 0C                    1579 	.db #0x0c	; 12
      002729 0C                    1580 	.db #0x0c	; 12
      00272A 00                    1581 	.db #0x00	; 0
      00272B 00                    1582 	.db #0x00	; 0
      00272C 00                    1583 	.db #0x00	; 0
      00272D 3F                    1584 	.db #0x3f	; 63
      00272E 3F                    1585 	.db #0x3f	; 63
      00272F 3F                    1586 	.db #0x3f	; 63
      002730 33                    1587 	.db #0x33	; 51	'3'
      002731 33                    1588 	.db #0x33	; 51	'3'
      002732 3F                    1589 	.db #0x3f	; 63
      002733 3F                    1590 	.db #0x3f	; 63
      002734 3F                    1591 	.db #0x3f	; 63
      002735 00                    1592 	.db #0x00	; 0
      002736 00                    1593 	.db #0x00	; 0
      002737 1E                    1594 	.db #0x1e	; 30
      002738 12                    1595 	.db #0x12	; 18
      002739 12                    1596 	.db #0x12	; 18
      00273A 1E                    1597 	.db #0x1e	; 30
      00273B 00                    1598 	.db #0x00	; 0
      00273C 00                    1599 	.db #0x00	; 0
      00273D 3F                    1600 	.db #0x3f	; 63
      00273E 3F                    1601 	.db #0x3f	; 63
      00273F 21                    1602 	.db #0x21	; 33
      002740 2D                    1603 	.db #0x2d	; 45
      002741 2D                    1604 	.db #0x2d	; 45
      002742 21                    1605 	.db #0x21	; 33
      002743 3F                    1606 	.db #0x3f	; 63
      002744 3F                    1607 	.db #0x3f	; 63
      002745 00                    1608 	.db #0x00	; 0
      002746 38                    1609 	.db #0x38	; 56	'8'
      002747 30                    1610 	.db #0x30	; 48	'0'
      002748 2C                    1611 	.db #0x2c	; 44
      002749 12                    1612 	.db #0x12	; 18
      00274A 12                    1613 	.db #0x12	; 18
      00274B 0C                    1614 	.db #0x0c	; 12
      00274C 00                    1615 	.db #0x00	; 0
      00274D 1C                    1616 	.db #0x1c	; 28
      00274E 22                    1617 	.db #0x22	; 34
      00274F 22                    1618 	.db #0x22	; 34
      002750 1C                    1619 	.db #0x1c	; 28
      002751 08                    1620 	.db #0x08	; 8
      002752 1C                    1621 	.db #0x1c	; 28
      002753 08                    1622 	.db #0x08	; 8
      002754 00                    1623 	.db #0x00	; 0
      002755 08                    1624 	.db #0x08	; 8
      002756 18                    1625 	.db #0x18	; 24
      002757 28                    1626 	.db #0x28	; 40
      002758 08                    1627 	.db #0x08	; 8
      002759 0C                    1628 	.db #0x0c	; 12
      00275A 0E                    1629 	.db #0x0e	; 14
      00275B 06                    1630 	.db #0x06	; 6
      00275C 00                    1631 	.db #0x00	; 0
      00275D 30                    1632 	.db #0x30	; 48	'0'
      00275E 2C                    1633 	.db #0x2c	; 44
      00275F 34                    1634 	.db #0x34	; 52	'4'
      002760 2C                    1635 	.db #0x2c	; 44
      002761 34                    1636 	.db #0x34	; 52	'4'
      002762 36                    1637 	.db #0x36	; 54	'6'
      002763 06                    1638 	.db #0x06	; 6
      002764 00                    1639 	.db #0x00	; 0
      002765 00                    1640 	.db #0x00	; 0
      002766 2A                    1641 	.db #0x2a	; 42
      002767 1C                    1642 	.db #0x1c	; 28
      002768 36                    1643 	.db #0x36	; 54	'6'
      002769 1C                    1644 	.db #0x1c	; 28
      00276A 2A                    1645 	.db #0x2a	; 42
      00276B 00                    1646 	.db #0x00	; 0
      00276C 00                    1647 	.db #0x00	; 0
      00276D 04                    1648 	.db #0x04	; 4
      00276E 0C                    1649 	.db #0x0c	; 12
      00276F 1C                    1650 	.db #0x1c	; 28
      002770 3C                    1651 	.db #0x3c	; 60
      002771 1C                    1652 	.db #0x1c	; 28
      002772 0C                    1653 	.db #0x0c	; 12
      002773 04                    1654 	.db #0x04	; 4
      002774 00                    1655 	.db #0x00	; 0
      002775 10                    1656 	.db #0x10	; 16
      002776 18                    1657 	.db #0x18	; 24
      002777 1C                    1658 	.db #0x1c	; 28
      002778 1E                    1659 	.db #0x1e	; 30
      002779 1C                    1660 	.db #0x1c	; 28
      00277A 18                    1661 	.db #0x18	; 24
      00277B 10                    1662 	.db #0x10	; 16
      00277C 00                    1663 	.db #0x00	; 0
      00277D 08                    1664 	.db #0x08	; 8
      00277E 1C                    1665 	.db #0x1c	; 28
      00277F 3E                    1666 	.db #0x3e	; 62
      002780 08                    1667 	.db #0x08	; 8
      002781 3E                    1668 	.db #0x3e	; 62
      002782 1C                    1669 	.db #0x1c	; 28
      002783 08                    1670 	.db #0x08	; 8
      002784 00                    1671 	.db #0x00	; 0
      002785 14                    1672 	.db #0x14	; 20
      002786 14                    1673 	.db #0x14	; 20
      002787 14                    1674 	.db #0x14	; 20
      002788 14                    1675 	.db #0x14	; 20
      002789 14                    1676 	.db #0x14	; 20
      00278A 00                    1677 	.db #0x00	; 0
      00278B 14                    1678 	.db #0x14	; 20
      00278C 00                    1679 	.db #0x00	; 0
      00278D 3C                    1680 	.db #0x3c	; 60
      00278E 2A                    1681 	.db #0x2a	; 42
      00278F 2A                    1682 	.db #0x2a	; 42
      002790 2C                    1683 	.db #0x2c	; 44
      002791 28                    1684 	.db #0x28	; 40
      002792 28                    1685 	.db #0x28	; 40
      002793 28                    1686 	.db #0x28	; 40
      002794 00                    1687 	.db #0x00	; 0
      002795 1C                    1688 	.db #0x1c	; 28
      002796 22                    1689 	.db #0x22	; 34
      002797 0C                    1690 	.db #0x0c	; 12
      002798 14                    1691 	.db #0x14	; 20
      002799 18                    1692 	.db #0x18	; 24
      00279A 22                    1693 	.db #0x22	; 34
      00279B 1C                    1694 	.db #0x1c	; 28
      00279C 00                    1695 	.db #0x00	; 0
      00279D 00                    1696 	.db #0x00	; 0
      00279E 00                    1697 	.db #0x00	; 0
      00279F 00                    1698 	.db #0x00	; 0
      0027A0 00                    1699 	.db #0x00	; 0
      0027A1 00                    1700 	.db #0x00	; 0
      0027A2 1E                    1701 	.db #0x1e	; 30
      0027A3 1E                    1702 	.db #0x1e	; 30
      0027A4 00                    1703 	.db #0x00	; 0
      0027A5 08                    1704 	.db #0x08	; 8
      0027A6 1C                    1705 	.db #0x1c	; 28
      0027A7 3E                    1706 	.db #0x3e	; 62
      0027A8 08                    1707 	.db #0x08	; 8
      0027A9 3E                    1708 	.db #0x3e	; 62
      0027AA 1C                    1709 	.db #0x1c	; 28
      0027AB 08                    1710 	.db #0x08	; 8
      0027AC 1C                    1711 	.db #0x1c	; 28
      0027AD 08                    1712 	.db #0x08	; 8
      0027AE 1C                    1713 	.db #0x1c	; 28
      0027AF 3E                    1714 	.db #0x3e	; 62
      0027B0 08                    1715 	.db #0x08	; 8
      0027B1 08                    1716 	.db #0x08	; 8
      0027B2 08                    1717 	.db #0x08	; 8
      0027B3 08                    1718 	.db #0x08	; 8
      0027B4 00                    1719 	.db #0x00	; 0
      0027B5 08                    1720 	.db #0x08	; 8
      0027B6 08                    1721 	.db #0x08	; 8
      0027B7 08                    1722 	.db #0x08	; 8
      0027B8 08                    1723 	.db #0x08	; 8
      0027B9 3E                    1724 	.db #0x3e	; 62
      0027BA 1C                    1725 	.db #0x1c	; 28
      0027BB 08                    1726 	.db #0x08	; 8
      0027BC 00                    1727 	.db #0x00	; 0
      0027BD 00                    1728 	.db #0x00	; 0
      0027BE 08                    1729 	.db #0x08	; 8
      0027BF 18                    1730 	.db #0x18	; 24
      0027C0 3E                    1731 	.db #0x3e	; 62
      0027C1 18                    1732 	.db #0x18	; 24
      0027C2 08                    1733 	.db #0x08	; 8
      0027C3 00                    1734 	.db #0x00	; 0
      0027C4 00                    1735 	.db #0x00	; 0
      0027C5 00                    1736 	.db #0x00	; 0
      0027C6 08                    1737 	.db #0x08	; 8
      0027C7 0C                    1738 	.db #0x0c	; 12
      0027C8 3E                    1739 	.db #0x3e	; 62
      0027C9 0C                    1740 	.db #0x0c	; 12
      0027CA 08                    1741 	.db #0x08	; 8
      0027CB 00                    1742 	.db #0x00	; 0
      0027CC 00                    1743 	.db #0x00	; 0
      0027CD 00                    1744 	.db #0x00	; 0
      0027CE 00                    1745 	.db #0x00	; 0
      0027CF 00                    1746 	.db #0x00	; 0
      0027D0 02                    1747 	.db #0x02	; 2
      0027D1 02                    1748 	.db #0x02	; 2
      0027D2 02                    1749 	.db #0x02	; 2
      0027D3 3E                    1750 	.db #0x3e	; 62
      0027D4 00                    1751 	.db #0x00	; 0
      0027D5 00                    1752 	.db #0x00	; 0
      0027D6 14                    1753 	.db #0x14	; 20
      0027D7 14                    1754 	.db #0x14	; 20
      0027D8 3E                    1755 	.db #0x3e	; 62
      0027D9 14                    1756 	.db #0x14	; 20
      0027DA 14                    1757 	.db #0x14	; 20
      0027DB 00                    1758 	.db #0x00	; 0
      0027DC 00                    1759 	.db #0x00	; 0
      0027DD 08                    1760 	.db #0x08	; 8
      0027DE 08                    1761 	.db #0x08	; 8
      0027DF 1C                    1762 	.db #0x1c	; 28
      0027E0 1C                    1763 	.db #0x1c	; 28
      0027E1 3E                    1764 	.db #0x3e	; 62
      0027E2 3E                    1765 	.db #0x3e	; 62
      0027E3 00                    1766 	.db #0x00	; 0
      0027E4 00                    1767 	.db #0x00	; 0
      0027E5 3E                    1768 	.db #0x3e	; 62
      0027E6 3E                    1769 	.db #0x3e	; 62
      0027E7 1C                    1770 	.db #0x1c	; 28
      0027E8 1C                    1771 	.db #0x1c	; 28
      0027E9 08                    1772 	.db #0x08	; 8
      0027EA 08                    1773 	.db #0x08	; 8
      0027EB 00                    1774 	.db #0x00	; 0
      0027EC 00                    1775 	.db #0x00	; 0
      0027ED 00                    1776 	.db #0x00	; 0
      0027EE 00                    1777 	.db #0x00	; 0
      0027EF 00                    1778 	.db #0x00	; 0
      0027F0 00                    1779 	.db #0x00	; 0
      0027F1 00                    1780 	.db #0x00	; 0
      0027F2 00                    1781 	.db #0x00	; 0
      0027F3 00                    1782 	.db #0x00	; 0
      0027F4 00                    1783 	.db #0x00	; 0
      0027F5 08                    1784 	.db #0x08	; 8
      0027F6 1C                    1785 	.db #0x1c	; 28
      0027F7 1C                    1786 	.db #0x1c	; 28
      0027F8 08                    1787 	.db #0x08	; 8
      0027F9 08                    1788 	.db #0x08	; 8
      0027FA 00                    1789 	.db #0x00	; 0
      0027FB 08                    1790 	.db #0x08	; 8
      0027FC 00                    1791 	.db #0x00	; 0
      0027FD 36                    1792 	.db #0x36	; 54	'6'
      0027FE 36                    1793 	.db #0x36	; 54	'6'
      0027FF 12                    1794 	.db #0x12	; 18
      002800 00                    1795 	.db #0x00	; 0
      002801 00                    1796 	.db #0x00	; 0
      002802 00                    1797 	.db #0x00	; 0
      002803 00                    1798 	.db #0x00	; 0
      002804 00                    1799 	.db #0x00	; 0
      002805 00                    1800 	.db #0x00	; 0
      002806 14                    1801 	.db #0x14	; 20
      002807 3E                    1802 	.db #0x3e	; 62
      002808 14                    1803 	.db #0x14	; 20
      002809 14                    1804 	.db #0x14	; 20
      00280A 3E                    1805 	.db #0x3e	; 62
      00280B 14                    1806 	.db #0x14	; 20
      00280C 00                    1807 	.db #0x00	; 0
      00280D 04                    1808 	.db #0x04	; 4
      00280E 1C                    1809 	.db #0x1c	; 28
      00280F 02                    1810 	.db #0x02	; 2
      002810 0C                    1811 	.db #0x0c	; 12
      002811 10                    1812 	.db #0x10	; 16
      002812 0E                    1813 	.db #0x0e	; 14
      002813 08                    1814 	.db #0x08	; 8
      002814 00                    1815 	.db #0x00	; 0
      002815 26                    1816 	.db #0x26	; 38
      002816 26                    1817 	.db #0x26	; 38
      002817 10                    1818 	.db #0x10	; 16
      002818 08                    1819 	.db #0x08	; 8
      002819 04                    1820 	.db #0x04	; 4
      00281A 32                    1821 	.db #0x32	; 50	'2'
      00281B 32                    1822 	.db #0x32	; 50	'2'
      00281C 00                    1823 	.db #0x00	; 0
      00281D 04                    1824 	.db #0x04	; 4
      00281E 0A                    1825 	.db #0x0a	; 10
      00281F 0A                    1826 	.db #0x0a	; 10
      002820 04                    1827 	.db #0x04	; 4
      002821 2A                    1828 	.db #0x2a	; 42
      002822 12                    1829 	.db #0x12	; 18
      002823 2C                    1830 	.db #0x2c	; 44
      002824 00                    1831 	.db #0x00	; 0
      002825 0C                    1832 	.db #0x0c	; 12
      002826 0C                    1833 	.db #0x0c	; 12
      002827 04                    1834 	.db #0x04	; 4
      002828 00                    1835 	.db #0x00	; 0
      002829 00                    1836 	.db #0x00	; 0
      00282A 00                    1837 	.db #0x00	; 0
      00282B 00                    1838 	.db #0x00	; 0
      00282C 00                    1839 	.db #0x00	; 0
      00282D 08                    1840 	.db #0x08	; 8
      00282E 04                    1841 	.db #0x04	; 4
      00282F 04                    1842 	.db #0x04	; 4
      002830 04                    1843 	.db #0x04	; 4
      002831 04                    1844 	.db #0x04	; 4
      002832 04                    1845 	.db #0x04	; 4
      002833 08                    1846 	.db #0x08	; 8
      002834 00                    1847 	.db #0x00	; 0
      002835 04                    1848 	.db #0x04	; 4
      002836 08                    1849 	.db #0x08	; 8
      002837 08                    1850 	.db #0x08	; 8
      002838 08                    1851 	.db #0x08	; 8
      002839 08                    1852 	.db #0x08	; 8
      00283A 08                    1853 	.db #0x08	; 8
      00283B 04                    1854 	.db #0x04	; 4
      00283C 00                    1855 	.db #0x00	; 0
      00283D 00                    1856 	.db #0x00	; 0
      00283E 14                    1857 	.db #0x14	; 20
      00283F 1C                    1858 	.db #0x1c	; 28
      002840 3E                    1859 	.db #0x3e	; 62
      002841 1C                    1860 	.db #0x1c	; 28
      002842 14                    1861 	.db #0x14	; 20
      002843 00                    1862 	.db #0x00	; 0
      002844 00                    1863 	.db #0x00	; 0
      002845 00                    1864 	.db #0x00	; 0
      002846 08                    1865 	.db #0x08	; 8
      002847 08                    1866 	.db #0x08	; 8
      002848 3E                    1867 	.db #0x3e	; 62
      002849 08                    1868 	.db #0x08	; 8
      00284A 08                    1869 	.db #0x08	; 8
      00284B 00                    1870 	.db #0x00	; 0
      00284C 00                    1871 	.db #0x00	; 0
      00284D 00                    1872 	.db #0x00	; 0
      00284E 00                    1873 	.db #0x00	; 0
      00284F 00                    1874 	.db #0x00	; 0
      002850 00                    1875 	.db #0x00	; 0
      002851 00                    1876 	.db #0x00	; 0
      002852 0C                    1877 	.db #0x0c	; 12
      002853 0C                    1878 	.db #0x0c	; 12
      002854 04                    1879 	.db #0x04	; 4
      002855 00                    1880 	.db #0x00	; 0
      002856 00                    1881 	.db #0x00	; 0
      002857 00                    1882 	.db #0x00	; 0
      002858 3E                    1883 	.db #0x3e	; 62
      002859 00                    1884 	.db #0x00	; 0
      00285A 00                    1885 	.db #0x00	; 0
      00285B 00                    1886 	.db #0x00	; 0
      00285C 00                    1887 	.db #0x00	; 0
      00285D 00                    1888 	.db #0x00	; 0
      00285E 00                    1889 	.db #0x00	; 0
      00285F 00                    1890 	.db #0x00	; 0
      002860 00                    1891 	.db #0x00	; 0
      002861 00                    1892 	.db #0x00	; 0
      002862 0C                    1893 	.db #0x0c	; 12
      002863 0C                    1894 	.db #0x0c	; 12
      002864 00                    1895 	.db #0x00	; 0
      002865 00                    1896 	.db #0x00	; 0
      002866 20                    1897 	.db #0x20	; 32
      002867 10                    1898 	.db #0x10	; 16
      002868 08                    1899 	.db #0x08	; 8
      002869 04                    1900 	.db #0x04	; 4
      00286A 02                    1901 	.db #0x02	; 2
      00286B 00                    1902 	.db #0x00	; 0
      00286C 00                    1903 	.db #0x00	; 0
      00286D 1C                    1904 	.db #0x1c	; 28
      00286E 22                    1905 	.db #0x22	; 34
      00286F 32                    1906 	.db #0x32	; 50	'2'
      002870 2A                    1907 	.db #0x2a	; 42
      002871 26                    1908 	.db #0x26	; 38
      002872 22                    1909 	.db #0x22	; 34
      002873 1C                    1910 	.db #0x1c	; 28
      002874 00                    1911 	.db #0x00	; 0
      002875 08                    1912 	.db #0x08	; 8
      002876 0C                    1913 	.db #0x0c	; 12
      002877 08                    1914 	.db #0x08	; 8
      002878 08                    1915 	.db #0x08	; 8
      002879 08                    1916 	.db #0x08	; 8
      00287A 08                    1917 	.db #0x08	; 8
      00287B 1C                    1918 	.db #0x1c	; 28
      00287C 00                    1919 	.db #0x00	; 0
      00287D 1C                    1920 	.db #0x1c	; 28
      00287E 22                    1921 	.db #0x22	; 34
      00287F 20                    1922 	.db #0x20	; 32
      002880 18                    1923 	.db #0x18	; 24
      002881 04                    1924 	.db #0x04	; 4
      002882 02                    1925 	.db #0x02	; 2
      002883 3E                    1926 	.db #0x3e	; 62
      002884 00                    1927 	.db #0x00	; 0
      002885 1C                    1928 	.db #0x1c	; 28
      002886 22                    1929 	.db #0x22	; 34
      002887 20                    1930 	.db #0x20	; 32
      002888 1C                    1931 	.db #0x1c	; 28
      002889 20                    1932 	.db #0x20	; 32
      00288A 22                    1933 	.db #0x22	; 34
      00288B 1C                    1934 	.db #0x1c	; 28
      00288C 00                    1935 	.db #0x00	; 0
      00288D 10                    1936 	.db #0x10	; 16
      00288E 18                    1937 	.db #0x18	; 24
      00288F 14                    1938 	.db #0x14	; 20
      002890 12                    1939 	.db #0x12	; 18
      002891 3E                    1940 	.db #0x3e	; 62
      002892 10                    1941 	.db #0x10	; 16
      002893 10                    1942 	.db #0x10	; 16
      002894 00                    1943 	.db #0x00	; 0
      002895 3E                    1944 	.db #0x3e	; 62
      002896 02                    1945 	.db #0x02	; 2
      002897 02                    1946 	.db #0x02	; 2
      002898 1E                    1947 	.db #0x1e	; 30
      002899 20                    1948 	.db #0x20	; 32
      00289A 22                    1949 	.db #0x22	; 34
      00289B 1C                    1950 	.db #0x1c	; 28
      00289C 00                    1951 	.db #0x00	; 0
      00289D 18                    1952 	.db #0x18	; 24
      00289E 04                    1953 	.db #0x04	; 4
      00289F 02                    1954 	.db #0x02	; 2
      0028A0 1E                    1955 	.db #0x1e	; 30
      0028A1 22                    1956 	.db #0x22	; 34
      0028A2 22                    1957 	.db #0x22	; 34
      0028A3 1C                    1958 	.db #0x1c	; 28
      0028A4 00                    1959 	.db #0x00	; 0
      0028A5 3E                    1960 	.db #0x3e	; 62
      0028A6 20                    1961 	.db #0x20	; 32
      0028A7 10                    1962 	.db #0x10	; 16
      0028A8 08                    1963 	.db #0x08	; 8
      0028A9 04                    1964 	.db #0x04	; 4
      0028AA 04                    1965 	.db #0x04	; 4
      0028AB 04                    1966 	.db #0x04	; 4
      0028AC 00                    1967 	.db #0x00	; 0
      0028AD 1C                    1968 	.db #0x1c	; 28
      0028AE 22                    1969 	.db #0x22	; 34
      0028AF 22                    1970 	.db #0x22	; 34
      0028B0 1C                    1971 	.db #0x1c	; 28
      0028B1 22                    1972 	.db #0x22	; 34
      0028B2 22                    1973 	.db #0x22	; 34
      0028B3 1C                    1974 	.db #0x1c	; 28
      0028B4 00                    1975 	.db #0x00	; 0
      0028B5 1C                    1976 	.db #0x1c	; 28
      0028B6 22                    1977 	.db #0x22	; 34
      0028B7 22                    1978 	.db #0x22	; 34
      0028B8 3C                    1979 	.db #0x3c	; 60
      0028B9 20                    1980 	.db #0x20	; 32
      0028BA 10                    1981 	.db #0x10	; 16
      0028BB 0C                    1982 	.db #0x0c	; 12
      0028BC 00                    1983 	.db #0x00	; 0
      0028BD 00                    1984 	.db #0x00	; 0
      0028BE 00                    1985 	.db #0x00	; 0
      0028BF 0C                    1986 	.db #0x0c	; 12
      0028C0 0C                    1987 	.db #0x0c	; 12
      0028C1 00                    1988 	.db #0x00	; 0
      0028C2 0C                    1989 	.db #0x0c	; 12
      0028C3 0C                    1990 	.db #0x0c	; 12
      0028C4 00                    1991 	.db #0x00	; 0
      0028C5 00                    1992 	.db #0x00	; 0
      0028C6 00                    1993 	.db #0x00	; 0
      0028C7 0C                    1994 	.db #0x0c	; 12
      0028C8 0C                    1995 	.db #0x0c	; 12
      0028C9 00                    1996 	.db #0x00	; 0
      0028CA 0C                    1997 	.db #0x0c	; 12
      0028CB 0C                    1998 	.db #0x0c	; 12
      0028CC 04                    1999 	.db #0x04	; 4
      0028CD 10                    2000 	.db #0x10	; 16
      0028CE 08                    2001 	.db #0x08	; 8
      0028CF 04                    2002 	.db #0x04	; 4
      0028D0 02                    2003 	.db #0x02	; 2
      0028D1 04                    2004 	.db #0x04	; 4
      0028D2 08                    2005 	.db #0x08	; 8
      0028D3 10                    2006 	.db #0x10	; 16
      0028D4 00                    2007 	.db #0x00	; 0
      0028D5 00                    2008 	.db #0x00	; 0
      0028D6 00                    2009 	.db #0x00	; 0
      0028D7 3E                    2010 	.db #0x3e	; 62
      0028D8 00                    2011 	.db #0x00	; 0
      0028D9 00                    2012 	.db #0x00	; 0
      0028DA 3E                    2013 	.db #0x3e	; 62
      0028DB 00                    2014 	.db #0x00	; 0
      0028DC 00                    2015 	.db #0x00	; 0
      0028DD 04                    2016 	.db #0x04	; 4
      0028DE 08                    2017 	.db #0x08	; 8
      0028DF 10                    2018 	.db #0x10	; 16
      0028E0 20                    2019 	.db #0x20	; 32
      0028E1 10                    2020 	.db #0x10	; 16
      0028E2 08                    2021 	.db #0x08	; 8
      0028E3 04                    2022 	.db #0x04	; 4
      0028E4 00                    2023 	.db #0x00	; 0
      0028E5 1C                    2024 	.db #0x1c	; 28
      0028E6 22                    2025 	.db #0x22	; 34
      0028E7 20                    2026 	.db #0x20	; 32
      0028E8 18                    2027 	.db #0x18	; 24
      0028E9 08                    2028 	.db #0x08	; 8
      0028EA 00                    2029 	.db #0x00	; 0
      0028EB 08                    2030 	.db #0x08	; 8
      0028EC 00                    2031 	.db #0x00	; 0
      0028ED 1C                    2032 	.db #0x1c	; 28
      0028EE 22                    2033 	.db #0x22	; 34
      0028EF 3A                    2034 	.db #0x3a	; 58
      0028F0 2A                    2035 	.db #0x2a	; 42
      0028F1 3A                    2036 	.db #0x3a	; 58
      0028F2 02                    2037 	.db #0x02	; 2
      0028F3 1C                    2038 	.db #0x1c	; 28
      0028F4 00                    2039 	.db #0x00	; 0
      0028F5 1C                    2040 	.db #0x1c	; 28
      0028F6 22                    2041 	.db #0x22	; 34
      0028F7 22                    2042 	.db #0x22	; 34
      0028F8 22                    2043 	.db #0x22	; 34
      0028F9 3E                    2044 	.db #0x3e	; 62
      0028FA 22                    2045 	.db #0x22	; 34
      0028FB 22                    2046 	.db #0x22	; 34
      0028FC 00                    2047 	.db #0x00	; 0
      0028FD 1E                    2048 	.db #0x1e	; 30
      0028FE 22                    2049 	.db #0x22	; 34
      0028FF 22                    2050 	.db #0x22	; 34
      002900 1E                    2051 	.db #0x1e	; 30
      002901 22                    2052 	.db #0x22	; 34
      002902 22                    2053 	.db #0x22	; 34
      002903 1E                    2054 	.db #0x1e	; 30
      002904 00                    2055 	.db #0x00	; 0
      002905 1C                    2056 	.db #0x1c	; 28
      002906 22                    2057 	.db #0x22	; 34
      002907 02                    2058 	.db #0x02	; 2
      002908 02                    2059 	.db #0x02	; 2
      002909 02                    2060 	.db #0x02	; 2
      00290A 22                    2061 	.db #0x22	; 34
      00290B 1C                    2062 	.db #0x1c	; 28
      00290C 00                    2063 	.db #0x00	; 0
      00290D 1E                    2064 	.db #0x1e	; 30
      00290E 22                    2065 	.db #0x22	; 34
      00290F 22                    2066 	.db #0x22	; 34
      002910 22                    2067 	.db #0x22	; 34
      002911 22                    2068 	.db #0x22	; 34
      002912 22                    2069 	.db #0x22	; 34
      002913 1E                    2070 	.db #0x1e	; 30
      002914 00                    2071 	.db #0x00	; 0
      002915 3E                    2072 	.db #0x3e	; 62
      002916 02                    2073 	.db #0x02	; 2
      002917 02                    2074 	.db #0x02	; 2
      002918 1E                    2075 	.db #0x1e	; 30
      002919 02                    2076 	.db #0x02	; 2
      00291A 02                    2077 	.db #0x02	; 2
      00291B 3E                    2078 	.db #0x3e	; 62
      00291C 00                    2079 	.db #0x00	; 0
      00291D 3E                    2080 	.db #0x3e	; 62
      00291E 02                    2081 	.db #0x02	; 2
      00291F 02                    2082 	.db #0x02	; 2
      002920 1E                    2083 	.db #0x1e	; 30
      002921 02                    2084 	.db #0x02	; 2
      002922 02                    2085 	.db #0x02	; 2
      002923 02                    2086 	.db #0x02	; 2
      002924 00                    2087 	.db #0x00	; 0
      002925 1C                    2088 	.db #0x1c	; 28
      002926 22                    2089 	.db #0x22	; 34
      002927 02                    2090 	.db #0x02	; 2
      002928 3A                    2091 	.db #0x3a	; 58
      002929 22                    2092 	.db #0x22	; 34
      00292A 22                    2093 	.db #0x22	; 34
      00292B 3C                    2094 	.db #0x3c	; 60
      00292C 00                    2095 	.db #0x00	; 0
      00292D 22                    2096 	.db #0x22	; 34
      00292E 22                    2097 	.db #0x22	; 34
      00292F 22                    2098 	.db #0x22	; 34
      002930 3E                    2099 	.db #0x3e	; 62
      002931 22                    2100 	.db #0x22	; 34
      002932 22                    2101 	.db #0x22	; 34
      002933 22                    2102 	.db #0x22	; 34
      002934 00                    2103 	.db #0x00	; 0
      002935 1C                    2104 	.db #0x1c	; 28
      002936 08                    2105 	.db #0x08	; 8
      002937 08                    2106 	.db #0x08	; 8
      002938 08                    2107 	.db #0x08	; 8
      002939 08                    2108 	.db #0x08	; 8
      00293A 08                    2109 	.db #0x08	; 8
      00293B 1C                    2110 	.db #0x1c	; 28
      00293C 00                    2111 	.db #0x00	; 0
      00293D 20                    2112 	.db #0x20	; 32
      00293E 20                    2113 	.db #0x20	; 32
      00293F 20                    2114 	.db #0x20	; 32
      002940 20                    2115 	.db #0x20	; 32
      002941 22                    2116 	.db #0x22	; 34
      002942 22                    2117 	.db #0x22	; 34
      002943 1C                    2118 	.db #0x1c	; 28
      002944 00                    2119 	.db #0x00	; 0
      002945 22                    2120 	.db #0x22	; 34
      002946 12                    2121 	.db #0x12	; 18
      002947 0A                    2122 	.db #0x0a	; 10
      002948 06                    2123 	.db #0x06	; 6
      002949 0A                    2124 	.db #0x0a	; 10
      00294A 12                    2125 	.db #0x12	; 18
      00294B 22                    2126 	.db #0x22	; 34
      00294C 00                    2127 	.db #0x00	; 0
      00294D 02                    2128 	.db #0x02	; 2
      00294E 02                    2129 	.db #0x02	; 2
      00294F 02                    2130 	.db #0x02	; 2
      002950 02                    2131 	.db #0x02	; 2
      002951 02                    2132 	.db #0x02	; 2
      002952 02                    2133 	.db #0x02	; 2
      002953 3E                    2134 	.db #0x3e	; 62
      002954 00                    2135 	.db #0x00	; 0
      002955 22                    2136 	.db #0x22	; 34
      002956 36                    2137 	.db #0x36	; 54	'6'
      002957 2A                    2138 	.db #0x2a	; 42
      002958 22                    2139 	.db #0x22	; 34
      002959 22                    2140 	.db #0x22	; 34
      00295A 22                    2141 	.db #0x22	; 34
      00295B 22                    2142 	.db #0x22	; 34
      00295C 00                    2143 	.db #0x00	; 0
      00295D 22                    2144 	.db #0x22	; 34
      00295E 26                    2145 	.db #0x26	; 38
      00295F 2A                    2146 	.db #0x2a	; 42
      002960 32                    2147 	.db #0x32	; 50	'2'
      002961 22                    2148 	.db #0x22	; 34
      002962 22                    2149 	.db #0x22	; 34
      002963 22                    2150 	.db #0x22	; 34
      002964 00                    2151 	.db #0x00	; 0
      002965 1C                    2152 	.db #0x1c	; 28
      002966 22                    2153 	.db #0x22	; 34
      002967 22                    2154 	.db #0x22	; 34
      002968 22                    2155 	.db #0x22	; 34
      002969 22                    2156 	.db #0x22	; 34
      00296A 22                    2157 	.db #0x22	; 34
      00296B 1C                    2158 	.db #0x1c	; 28
      00296C 00                    2159 	.db #0x00	; 0
      00296D 1E                    2160 	.db #0x1e	; 30
      00296E 22                    2161 	.db #0x22	; 34
      00296F 22                    2162 	.db #0x22	; 34
      002970 1E                    2163 	.db #0x1e	; 30
      002971 02                    2164 	.db #0x02	; 2
      002972 02                    2165 	.db #0x02	; 2
      002973 02                    2166 	.db #0x02	; 2
      002974 00                    2167 	.db #0x00	; 0
      002975 1C                    2168 	.db #0x1c	; 28
      002976 22                    2169 	.db #0x22	; 34
      002977 22                    2170 	.db #0x22	; 34
      002978 22                    2171 	.db #0x22	; 34
      002979 2A                    2172 	.db #0x2a	; 42
      00297A 12                    2173 	.db #0x12	; 18
      00297B 2C                    2174 	.db #0x2c	; 44
      00297C 00                    2175 	.db #0x00	; 0
      00297D 1E                    2176 	.db #0x1e	; 30
      00297E 22                    2177 	.db #0x22	; 34
      00297F 22                    2178 	.db #0x22	; 34
      002980 1E                    2179 	.db #0x1e	; 30
      002981 12                    2180 	.db #0x12	; 18
      002982 22                    2181 	.db #0x22	; 34
      002983 22                    2182 	.db #0x22	; 34
      002984 00                    2183 	.db #0x00	; 0
      002985 1C                    2184 	.db #0x1c	; 28
      002986 22                    2185 	.db #0x22	; 34
      002987 02                    2186 	.db #0x02	; 2
      002988 1C                    2187 	.db #0x1c	; 28
      002989 20                    2188 	.db #0x20	; 32
      00298A 22                    2189 	.db #0x22	; 34
      00298B 1C                    2190 	.db #0x1c	; 28
      00298C 00                    2191 	.db #0x00	; 0
      00298D 3E                    2192 	.db #0x3e	; 62
      00298E 08                    2193 	.db #0x08	; 8
      00298F 08                    2194 	.db #0x08	; 8
      002990 08                    2195 	.db #0x08	; 8
      002991 08                    2196 	.db #0x08	; 8
      002992 08                    2197 	.db #0x08	; 8
      002993 08                    2198 	.db #0x08	; 8
      002994 00                    2199 	.db #0x00	; 0
      002995 22                    2200 	.db #0x22	; 34
      002996 22                    2201 	.db #0x22	; 34
      002997 22                    2202 	.db #0x22	; 34
      002998 22                    2203 	.db #0x22	; 34
      002999 22                    2204 	.db #0x22	; 34
      00299A 22                    2205 	.db #0x22	; 34
      00299B 1C                    2206 	.db #0x1c	; 28
      00299C 00                    2207 	.db #0x00	; 0
      00299D 22                    2208 	.db #0x22	; 34
      00299E 22                    2209 	.db #0x22	; 34
      00299F 22                    2210 	.db #0x22	; 34
      0029A0 22                    2211 	.db #0x22	; 34
      0029A1 22                    2212 	.db #0x22	; 34
      0029A2 14                    2213 	.db #0x14	; 20
      0029A3 08                    2214 	.db #0x08	; 8
      0029A4 00                    2215 	.db #0x00	; 0
      0029A5 22                    2216 	.db #0x22	; 34
      0029A6 22                    2217 	.db #0x22	; 34
      0029A7 2A                    2218 	.db #0x2a	; 42
      0029A8 2A                    2219 	.db #0x2a	; 42
      0029A9 2A                    2220 	.db #0x2a	; 42
      0029AA 2A                    2221 	.db #0x2a	; 42
      0029AB 14                    2222 	.db #0x14	; 20
      0029AC 00                    2223 	.db #0x00	; 0
      0029AD 22                    2224 	.db #0x22	; 34
      0029AE 22                    2225 	.db #0x22	; 34
      0029AF 14                    2226 	.db #0x14	; 20
      0029B0 08                    2227 	.db #0x08	; 8
      0029B1 14                    2228 	.db #0x14	; 20
      0029B2 22                    2229 	.db #0x22	; 34
      0029B3 22                    2230 	.db #0x22	; 34
      0029B4 00                    2231 	.db #0x00	; 0
      0029B5 22                    2232 	.db #0x22	; 34
      0029B6 22                    2233 	.db #0x22	; 34
      0029B7 22                    2234 	.db #0x22	; 34
      0029B8 14                    2235 	.db #0x14	; 20
      0029B9 08                    2236 	.db #0x08	; 8
      0029BA 08                    2237 	.db #0x08	; 8
      0029BB 08                    2238 	.db #0x08	; 8
      0029BC 00                    2239 	.db #0x00	; 0
      0029BD 1E                    2240 	.db #0x1e	; 30
      0029BE 10                    2241 	.db #0x10	; 16
      0029BF 08                    2242 	.db #0x08	; 8
      0029C0 04                    2243 	.db #0x04	; 4
      0029C1 02                    2244 	.db #0x02	; 2
      0029C2 02                    2245 	.db #0x02	; 2
      0029C3 1E                    2246 	.db #0x1e	; 30
      0029C4 00                    2247 	.db #0x00	; 0
      0029C5 1C                    2248 	.db #0x1c	; 28
      0029C6 04                    2249 	.db #0x04	; 4
      0029C7 04                    2250 	.db #0x04	; 4
      0029C8 04                    2251 	.db #0x04	; 4
      0029C9 04                    2252 	.db #0x04	; 4
      0029CA 04                    2253 	.db #0x04	; 4
      0029CB 1C                    2254 	.db #0x1c	; 28
      0029CC 00                    2255 	.db #0x00	; 0
      0029CD 00                    2256 	.db #0x00	; 0
      0029CE 02                    2257 	.db #0x02	; 2
      0029CF 04                    2258 	.db #0x04	; 4
      0029D0 08                    2259 	.db #0x08	; 8
      0029D1 10                    2260 	.db #0x10	; 16
      0029D2 20                    2261 	.db #0x20	; 32
      0029D3 00                    2262 	.db #0x00	; 0
      0029D4 00                    2263 	.db #0x00	; 0
      0029D5 1C                    2264 	.db #0x1c	; 28
      0029D6 10                    2265 	.db #0x10	; 16
      0029D7 10                    2266 	.db #0x10	; 16
      0029D8 10                    2267 	.db #0x10	; 16
      0029D9 10                    2268 	.db #0x10	; 16
      0029DA 10                    2269 	.db #0x10	; 16
      0029DB 1C                    2270 	.db #0x1c	; 28
      0029DC 00                    2271 	.db #0x00	; 0
      0029DD 08                    2272 	.db #0x08	; 8
      0029DE 14                    2273 	.db #0x14	; 20
      0029DF 22                    2274 	.db #0x22	; 34
      0029E0 00                    2275 	.db #0x00	; 0
      0029E1 00                    2276 	.db #0x00	; 0
      0029E2 00                    2277 	.db #0x00	; 0
      0029E3 00                    2278 	.db #0x00	; 0
      0029E4 00                    2279 	.db #0x00	; 0
      0029E5 00                    2280 	.db #0x00	; 0
      0029E6 00                    2281 	.db #0x00	; 0
      0029E7 00                    2282 	.db #0x00	; 0
      0029E8 00                    2283 	.db #0x00	; 0
      0029E9 00                    2284 	.db #0x00	; 0
      0029EA 00                    2285 	.db #0x00	; 0
      0029EB 00                    2286 	.db #0x00	; 0
      0029EC 3F                    2287 	.db #0x3f	; 63
      0029ED 0C                    2288 	.db #0x0c	; 12
      0029EE 0C                    2289 	.db #0x0c	; 12
      0029EF 08                    2290 	.db #0x08	; 8
      0029F0 00                    2291 	.db #0x00	; 0
      0029F1 00                    2292 	.db #0x00	; 0
      0029F2 00                    2293 	.db #0x00	; 0
      0029F3 00                    2294 	.db #0x00	; 0
      0029F4 00                    2295 	.db #0x00	; 0
      0029F5 00                    2296 	.db #0x00	; 0
      0029F6 00                    2297 	.db #0x00	; 0
      0029F7 1C                    2298 	.db #0x1c	; 28
      0029F8 20                    2299 	.db #0x20	; 32
      0029F9 3C                    2300 	.db #0x3c	; 60
      0029FA 22                    2301 	.db #0x22	; 34
      0029FB 3C                    2302 	.db #0x3c	; 60
      0029FC 00                    2303 	.db #0x00	; 0
      0029FD 02                    2304 	.db #0x02	; 2
      0029FE 02                    2305 	.db #0x02	; 2
      0029FF 1E                    2306 	.db #0x1e	; 30
      002A00 22                    2307 	.db #0x22	; 34
      002A01 22                    2308 	.db #0x22	; 34
      002A02 22                    2309 	.db #0x22	; 34
      002A03 1E                    2310 	.db #0x1e	; 30
      002A04 00                    2311 	.db #0x00	; 0
      002A05 00                    2312 	.db #0x00	; 0
      002A06 00                    2313 	.db #0x00	; 0
      002A07 1C                    2314 	.db #0x1c	; 28
      002A08 22                    2315 	.db #0x22	; 34
      002A09 02                    2316 	.db #0x02	; 2
      002A0A 22                    2317 	.db #0x22	; 34
      002A0B 1C                    2318 	.db #0x1c	; 28
      002A0C 00                    2319 	.db #0x00	; 0
      002A0D 20                    2320 	.db #0x20	; 32
      002A0E 20                    2321 	.db #0x20	; 32
      002A0F 3C                    2322 	.db #0x3c	; 60
      002A10 22                    2323 	.db #0x22	; 34
      002A11 22                    2324 	.db #0x22	; 34
      002A12 22                    2325 	.db #0x22	; 34
      002A13 3C                    2326 	.db #0x3c	; 60
      002A14 00                    2327 	.db #0x00	; 0
      002A15 00                    2328 	.db #0x00	; 0
      002A16 00                    2329 	.db #0x00	; 0
      002A17 1C                    2330 	.db #0x1c	; 28
      002A18 22                    2331 	.db #0x22	; 34
      002A19 1E                    2332 	.db #0x1e	; 30
      002A1A 02                    2333 	.db #0x02	; 2
      002A1B 1C                    2334 	.db #0x1c	; 28
      002A1C 00                    2335 	.db #0x00	; 0
      002A1D 18                    2336 	.db #0x18	; 24
      002A1E 04                    2337 	.db #0x04	; 4
      002A1F 04                    2338 	.db #0x04	; 4
      002A20 1E                    2339 	.db #0x1e	; 30
      002A21 04                    2340 	.db #0x04	; 4
      002A22 04                    2341 	.db #0x04	; 4
      002A23 04                    2342 	.db #0x04	; 4
      002A24 00                    2343 	.db #0x00	; 0
      002A25 00                    2344 	.db #0x00	; 0
      002A26 00                    2345 	.db #0x00	; 0
      002A27 3C                    2346 	.db #0x3c	; 60
      002A28 22                    2347 	.db #0x22	; 34
      002A29 22                    2348 	.db #0x22	; 34
      002A2A 3C                    2349 	.db #0x3c	; 60
      002A2B 20                    2350 	.db #0x20	; 32
      002A2C 1C                    2351 	.db #0x1c	; 28
      002A2D 02                    2352 	.db #0x02	; 2
      002A2E 02                    2353 	.db #0x02	; 2
      002A2F 0E                    2354 	.db #0x0e	; 14
      002A30 12                    2355 	.db #0x12	; 18
      002A31 12                    2356 	.db #0x12	; 18
      002A32 12                    2357 	.db #0x12	; 18
      002A33 12                    2358 	.db #0x12	; 18
      002A34 00                    2359 	.db #0x00	; 0
      002A35 08                    2360 	.db #0x08	; 8
      002A36 00                    2361 	.db #0x00	; 0
      002A37 08                    2362 	.db #0x08	; 8
      002A38 08                    2363 	.db #0x08	; 8
      002A39 08                    2364 	.db #0x08	; 8
      002A3A 08                    2365 	.db #0x08	; 8
      002A3B 18                    2366 	.db #0x18	; 24
      002A3C 00                    2367 	.db #0x00	; 0
      002A3D 10                    2368 	.db #0x10	; 16
      002A3E 00                    2369 	.db #0x00	; 0
      002A3F 18                    2370 	.db #0x18	; 24
      002A40 10                    2371 	.db #0x10	; 16
      002A41 10                    2372 	.db #0x10	; 16
      002A42 10                    2373 	.db #0x10	; 16
      002A43 12                    2374 	.db #0x12	; 18
      002A44 0C                    2375 	.db #0x0c	; 12
      002A45 02                    2376 	.db #0x02	; 2
      002A46 02                    2377 	.db #0x02	; 2
      002A47 12                    2378 	.db #0x12	; 18
      002A48 0A                    2379 	.db #0x0a	; 10
      002A49 06                    2380 	.db #0x06	; 6
      002A4A 0A                    2381 	.db #0x0a	; 10
      002A4B 12                    2382 	.db #0x12	; 18
      002A4C 00                    2383 	.db #0x00	; 0
      002A4D 08                    2384 	.db #0x08	; 8
      002A4E 08                    2385 	.db #0x08	; 8
      002A4F 08                    2386 	.db #0x08	; 8
      002A50 08                    2387 	.db #0x08	; 8
      002A51 08                    2388 	.db #0x08	; 8
      002A52 08                    2389 	.db #0x08	; 8
      002A53 18                    2390 	.db #0x18	; 24
      002A54 00                    2391 	.db #0x00	; 0
      002A55 00                    2392 	.db #0x00	; 0
      002A56 00                    2393 	.db #0x00	; 0
      002A57 16                    2394 	.db #0x16	; 22
      002A58 2A                    2395 	.db #0x2a	; 42
      002A59 2A                    2396 	.db #0x2a	; 42
      002A5A 22                    2397 	.db #0x22	; 34
      002A5B 22                    2398 	.db #0x22	; 34
      002A5C 00                    2399 	.db #0x00	; 0
      002A5D 00                    2400 	.db #0x00	; 0
      002A5E 00                    2401 	.db #0x00	; 0
      002A5F 0E                    2402 	.db #0x0e	; 14
      002A60 12                    2403 	.db #0x12	; 18
      002A61 12                    2404 	.db #0x12	; 18
      002A62 12                    2405 	.db #0x12	; 18
      002A63 12                    2406 	.db #0x12	; 18
      002A64 00                    2407 	.db #0x00	; 0
      002A65 00                    2408 	.db #0x00	; 0
      002A66 00                    2409 	.db #0x00	; 0
      002A67 1C                    2410 	.db #0x1c	; 28
      002A68 22                    2411 	.db #0x22	; 34
      002A69 22                    2412 	.db #0x22	; 34
      002A6A 22                    2413 	.db #0x22	; 34
      002A6B 1C                    2414 	.db #0x1c	; 28
      002A6C 00                    2415 	.db #0x00	; 0
      002A6D 00                    2416 	.db #0x00	; 0
      002A6E 00                    2417 	.db #0x00	; 0
      002A6F 1E                    2418 	.db #0x1e	; 30
      002A70 22                    2419 	.db #0x22	; 34
      002A71 22                    2420 	.db #0x22	; 34
      002A72 22                    2421 	.db #0x22	; 34
      002A73 1E                    2422 	.db #0x1e	; 30
      002A74 02                    2423 	.db #0x02	; 2
      002A75 00                    2424 	.db #0x00	; 0
      002A76 00                    2425 	.db #0x00	; 0
      002A77 3C                    2426 	.db #0x3c	; 60
      002A78 22                    2427 	.db #0x22	; 34
      002A79 22                    2428 	.db #0x22	; 34
      002A7A 22                    2429 	.db #0x22	; 34
      002A7B 3C                    2430 	.db #0x3c	; 60
      002A7C 20                    2431 	.db #0x20	; 32
      002A7D 00                    2432 	.db #0x00	; 0
      002A7E 00                    2433 	.db #0x00	; 0
      002A7F 1A                    2434 	.db #0x1a	; 26
      002A80 24                    2435 	.db #0x24	; 36
      002A81 04                    2436 	.db #0x04	; 4
      002A82 04                    2437 	.db #0x04	; 4
      002A83 0E                    2438 	.db #0x0e	; 14
      002A84 00                    2439 	.db #0x00	; 0
      002A85 00                    2440 	.db #0x00	; 0
      002A86 00                    2441 	.db #0x00	; 0
      002A87 1C                    2442 	.db #0x1c	; 28
      002A88 02                    2443 	.db #0x02	; 2
      002A89 1C                    2444 	.db #0x1c	; 28
      002A8A 20                    2445 	.db #0x20	; 32
      002A8B 1C                    2446 	.db #0x1c	; 28
      002A8C 00                    2447 	.db #0x00	; 0
      002A8D 00                    2448 	.db #0x00	; 0
      002A8E 04                    2449 	.db #0x04	; 4
      002A8F 1E                    2450 	.db #0x1e	; 30
      002A90 04                    2451 	.db #0x04	; 4
      002A91 04                    2452 	.db #0x04	; 4
      002A92 14                    2453 	.db #0x14	; 20
      002A93 08                    2454 	.db #0x08	; 8
      002A94 00                    2455 	.db #0x00	; 0
      002A95 00                    2456 	.db #0x00	; 0
      002A96 00                    2457 	.db #0x00	; 0
      002A97 12                    2458 	.db #0x12	; 18
      002A98 12                    2459 	.db #0x12	; 18
      002A99 12                    2460 	.db #0x12	; 18
      002A9A 1A                    2461 	.db #0x1a	; 26
      002A9B 14                    2462 	.db #0x14	; 20
      002A9C 00                    2463 	.db #0x00	; 0
      002A9D 00                    2464 	.db #0x00	; 0
      002A9E 00                    2465 	.db #0x00	; 0
      002A9F 22                    2466 	.db #0x22	; 34
      002AA0 22                    2467 	.db #0x22	; 34
      002AA1 22                    2468 	.db #0x22	; 34
      002AA2 14                    2469 	.db #0x14	; 20
      002AA3 08                    2470 	.db #0x08	; 8
      002AA4 00                    2471 	.db #0x00	; 0
      002AA5 00                    2472 	.db #0x00	; 0
      002AA6 00                    2473 	.db #0x00	; 0
      002AA7 22                    2474 	.db #0x22	; 34
      002AA8 22                    2475 	.db #0x22	; 34
      002AA9 2A                    2476 	.db #0x2a	; 42
      002AAA 3E                    2477 	.db #0x3e	; 62
      002AAB 14                    2478 	.db #0x14	; 20
      002AAC 00                    2479 	.db #0x00	; 0
      002AAD 00                    2480 	.db #0x00	; 0
      002AAE 00                    2481 	.db #0x00	; 0
      002AAF 12                    2482 	.db #0x12	; 18
      002AB0 12                    2483 	.db #0x12	; 18
      002AB1 0C                    2484 	.db #0x0c	; 12
      002AB2 12                    2485 	.db #0x12	; 18
      002AB3 12                    2486 	.db #0x12	; 18
      002AB4 00                    2487 	.db #0x00	; 0
      002AB5 00                    2488 	.db #0x00	; 0
      002AB6 00                    2489 	.db #0x00	; 0
      002AB7 12                    2490 	.db #0x12	; 18
      002AB8 12                    2491 	.db #0x12	; 18
      002AB9 12                    2492 	.db #0x12	; 18
      002ABA 1C                    2493 	.db #0x1c	; 28
      002ABB 08                    2494 	.db #0x08	; 8
      002ABC 06                    2495 	.db #0x06	; 6
      002ABD 00                    2496 	.db #0x00	; 0
      002ABE 00                    2497 	.db #0x00	; 0
      002ABF 1E                    2498 	.db #0x1e	; 30
      002AC0 10                    2499 	.db #0x10	; 16
      002AC1 0C                    2500 	.db #0x0c	; 12
      002AC2 02                    2501 	.db #0x02	; 2
      002AC3 1E                    2502 	.db #0x1e	; 30
      002AC4 00                    2503 	.db #0x00	; 0
      002AC5 18                    2504 	.db #0x18	; 24
      002AC6 04                    2505 	.db #0x04	; 4
      002AC7 04                    2506 	.db #0x04	; 4
      002AC8 06                    2507 	.db #0x06	; 6
      002AC9 04                    2508 	.db #0x04	; 4
      002ACA 04                    2509 	.db #0x04	; 4
      002ACB 18                    2510 	.db #0x18	; 24
      002ACC 00                    2511 	.db #0x00	; 0
      002ACD 08                    2512 	.db #0x08	; 8
      002ACE 08                    2513 	.db #0x08	; 8
      002ACF 08                    2514 	.db #0x08	; 8
      002AD0 00                    2515 	.db #0x00	; 0
      002AD1 08                    2516 	.db #0x08	; 8
      002AD2 08                    2517 	.db #0x08	; 8
      002AD3 08                    2518 	.db #0x08	; 8
      002AD4 00                    2519 	.db #0x00	; 0
      002AD5 0C                    2520 	.db #0x0c	; 12
      002AD6 10                    2521 	.db #0x10	; 16
      002AD7 10                    2522 	.db #0x10	; 16
      002AD8 30                    2523 	.db #0x30	; 48	'0'
      002AD9 10                    2524 	.db #0x10	; 16
      002ADA 10                    2525 	.db #0x10	; 16
      002ADB 0C                    2526 	.db #0x0c	; 12
      002ADC 00                    2527 	.db #0x00	; 0
      002ADD 14                    2528 	.db #0x14	; 20
      002ADE 0A                    2529 	.db #0x0a	; 10
      002ADF 00                    2530 	.db #0x00	; 0
      002AE0 00                    2531 	.db #0x00	; 0
      002AE1 00                    2532 	.db #0x00	; 0
      002AE2 00                    2533 	.db #0x00	; 0
      002AE3 00                    2534 	.db #0x00	; 0
      002AE4 00                    2535 	.db #0x00	; 0
      002AE5 08                    2536 	.db #0x08	; 8
      002AE6 1C                    2537 	.db #0x1c	; 28
      002AE7 36                    2538 	.db #0x36	; 54	'6'
      002AE8 22                    2539 	.db #0x22	; 34
      002AE9 22                    2540 	.db #0x22	; 34
      002AEA 3E                    2541 	.db #0x3e	; 62
      002AEB 00                    2542 	.db #0x00	; 0
      002AEC 00                    2543 	.db #0x00	; 0
      002AED 1C                    2544 	.db #0x1c	; 28
      002AEE 22                    2545 	.db #0x22	; 34
      002AEF 02                    2546 	.db #0x02	; 2
      002AF0 02                    2547 	.db #0x02	; 2
      002AF1 22                    2548 	.db #0x22	; 34
      002AF2 1C                    2549 	.db #0x1c	; 28
      002AF3 08                    2550 	.db #0x08	; 8
      002AF4 0C                    2551 	.db #0x0c	; 12
      002AF5 12                    2552 	.db #0x12	; 18
      002AF6 00                    2553 	.db #0x00	; 0
      002AF7 12                    2554 	.db #0x12	; 18
      002AF8 12                    2555 	.db #0x12	; 18
      002AF9 12                    2556 	.db #0x12	; 18
      002AFA 1A                    2557 	.db #0x1a	; 26
      002AFB 14                    2558 	.db #0x14	; 20
      002AFC 00                    2559 	.db #0x00	; 0
      002AFD 30                    2560 	.db #0x30	; 48	'0'
      002AFE 00                    2561 	.db #0x00	; 0
      002AFF 1C                    2562 	.db #0x1c	; 28
      002B00 22                    2563 	.db #0x22	; 34
      002B01 1E                    2564 	.db #0x1e	; 30
      002B02 02                    2565 	.db #0x02	; 2
      002B03 1C                    2566 	.db #0x1c	; 28
      002B04 00                    2567 	.db #0x00	; 0
      002B05 1C                    2568 	.db #0x1c	; 28
      002B06 00                    2569 	.db #0x00	; 0
      002B07 1C                    2570 	.db #0x1c	; 28
      002B08 20                    2571 	.db #0x20	; 32
      002B09 3C                    2572 	.db #0x3c	; 60
      002B0A 22                    2573 	.db #0x22	; 34
      002B0B 3C                    2574 	.db #0x3c	; 60
      002B0C 00                    2575 	.db #0x00	; 0
      002B0D 14                    2576 	.db #0x14	; 20
      002B0E 00                    2577 	.db #0x00	; 0
      002B0F 1C                    2578 	.db #0x1c	; 28
      002B10 20                    2579 	.db #0x20	; 32
      002B11 3C                    2580 	.db #0x3c	; 60
      002B12 22                    2581 	.db #0x22	; 34
      002B13 3C                    2582 	.db #0x3c	; 60
      002B14 00                    2583 	.db #0x00	; 0
      002B15 0C                    2584 	.db #0x0c	; 12
      002B16 00                    2585 	.db #0x00	; 0
      002B17 1C                    2586 	.db #0x1c	; 28
      002B18 20                    2587 	.db #0x20	; 32
      002B19 3C                    2588 	.db #0x3c	; 60
      002B1A 22                    2589 	.db #0x22	; 34
      002B1B 3C                    2590 	.db #0x3c	; 60
      002B1C 00                    2591 	.db #0x00	; 0
      002B1D 1C                    2592 	.db #0x1c	; 28
      002B1E 14                    2593 	.db #0x14	; 20
      002B1F 1C                    2594 	.db #0x1c	; 28
      002B20 20                    2595 	.db #0x20	; 32
      002B21 3C                    2596 	.db #0x3c	; 60
      002B22 22                    2597 	.db #0x22	; 34
      002B23 3C                    2598 	.db #0x3c	; 60
      002B24 00                    2599 	.db #0x00	; 0
      002B25 00                    2600 	.db #0x00	; 0
      002B26 1C                    2601 	.db #0x1c	; 28
      002B27 22                    2602 	.db #0x22	; 34
      002B28 02                    2603 	.db #0x02	; 2
      002B29 22                    2604 	.db #0x22	; 34
      002B2A 1C                    2605 	.db #0x1c	; 28
      002B2B 08                    2606 	.db #0x08	; 8
      002B2C 0C                    2607 	.db #0x0c	; 12
      002B2D 1C                    2608 	.db #0x1c	; 28
      002B2E 00                    2609 	.db #0x00	; 0
      002B2F 1C                    2610 	.db #0x1c	; 28
      002B30 22                    2611 	.db #0x22	; 34
      002B31 1E                    2612 	.db #0x1e	; 30
      002B32 02                    2613 	.db #0x02	; 2
      002B33 1C                    2614 	.db #0x1c	; 28
      002B34 00                    2615 	.db #0x00	; 0
      002B35 14                    2616 	.db #0x14	; 20
      002B36 00                    2617 	.db #0x00	; 0
      002B37 1C                    2618 	.db #0x1c	; 28
      002B38 22                    2619 	.db #0x22	; 34
      002B39 1E                    2620 	.db #0x1e	; 30
      002B3A 02                    2621 	.db #0x02	; 2
      002B3B 1C                    2622 	.db #0x1c	; 28
      002B3C 00                    2623 	.db #0x00	; 0
      002B3D 0C                    2624 	.db #0x0c	; 12
      002B3E 00                    2625 	.db #0x00	; 0
      002B3F 1C                    2626 	.db #0x1c	; 28
      002B40 22                    2627 	.db #0x22	; 34
      002B41 1E                    2628 	.db #0x1e	; 30
      002B42 02                    2629 	.db #0x02	; 2
      002B43 1C                    2630 	.db #0x1c	; 28
      002B44 00                    2631 	.db #0x00	; 0
      002B45 14                    2632 	.db #0x14	; 20
      002B46 00                    2633 	.db #0x00	; 0
      002B47 08                    2634 	.db #0x08	; 8
      002B48 08                    2635 	.db #0x08	; 8
      002B49 08                    2636 	.db #0x08	; 8
      002B4A 08                    2637 	.db #0x08	; 8
      002B4B 18                    2638 	.db #0x18	; 24
      002B4C 00                    2639 	.db #0x00	; 0
      002B4D 08                    2640 	.db #0x08	; 8
      002B4E 14                    2641 	.db #0x14	; 20
      002B4F 00                    2642 	.db #0x00	; 0
      002B50 08                    2643 	.db #0x08	; 8
      002B51 08                    2644 	.db #0x08	; 8
      002B52 08                    2645 	.db #0x08	; 8
      002B53 18                    2646 	.db #0x18	; 24
      002B54 00                    2647 	.db #0x00	; 0
      002B55 04                    2648 	.db #0x04	; 4
      002B56 00                    2649 	.db #0x00	; 0
      002B57 08                    2650 	.db #0x08	; 8
      002B58 08                    2651 	.db #0x08	; 8
      002B59 08                    2652 	.db #0x08	; 8
      002B5A 08                    2653 	.db #0x08	; 8
      002B5B 18                    2654 	.db #0x18	; 24
      002B5C 00                    2655 	.db #0x00	; 0
      002B5D 14                    2656 	.db #0x14	; 20
      002B5E 00                    2657 	.db #0x00	; 0
      002B5F 08                    2658 	.db #0x08	; 8
      002B60 14                    2659 	.db #0x14	; 20
      002B61 22                    2660 	.db #0x22	; 34
      002B62 3E                    2661 	.db #0x3e	; 62
      002B63 22                    2662 	.db #0x22	; 34
      002B64 00                    2663 	.db #0x00	; 0
      002B65 1C                    2664 	.db #0x1c	; 28
      002B66 14                    2665 	.db #0x14	; 20
      002B67 1C                    2666 	.db #0x1c	; 28
      002B68 36                    2667 	.db #0x36	; 54	'6'
      002B69 22                    2668 	.db #0x22	; 34
      002B6A 3E                    2669 	.db #0x3e	; 62
      002B6B 22                    2670 	.db #0x22	; 34
      002B6C 00                    2671 	.db #0x00	; 0
      002B6D 30                    2672 	.db #0x30	; 48	'0'
      002B6E 00                    2673 	.db #0x00	; 0
      002B6F 3E                    2674 	.db #0x3e	; 62
      002B70 02                    2675 	.db #0x02	; 2
      002B71 1E                    2676 	.db #0x1e	; 30
      002B72 02                    2677 	.db #0x02	; 2
      002B73 3E                    2678 	.db #0x3e	; 62
      002B74 00                    2679 	.db #0x00	; 0
      002B75 00                    2680 	.db #0x00	; 0
      002B76 00                    2681 	.db #0x00	; 0
      002B77 1E                    2682 	.db #0x1e	; 30
      002B78 28                    2683 	.db #0x28	; 40
      002B79 3E                    2684 	.db #0x3e	; 62
      002B7A 0A                    2685 	.db #0x0a	; 10
      002B7B 3C                    2686 	.db #0x3c	; 60
      002B7C 00                    2687 	.db #0x00	; 0
      002B7D 3C                    2688 	.db #0x3c	; 60
      002B7E 0A                    2689 	.db #0x0a	; 10
      002B7F 0A                    2690 	.db #0x0a	; 10
      002B80 3E                    2691 	.db #0x3e	; 62
      002B81 0A                    2692 	.db #0x0a	; 10
      002B82 0A                    2693 	.db #0x0a	; 10
      002B83 3A                    2694 	.db #0x3a	; 58
      002B84 00                    2695 	.db #0x00	; 0
      002B85 1C                    2696 	.db #0x1c	; 28
      002B86 00                    2697 	.db #0x00	; 0
      002B87 0C                    2698 	.db #0x0c	; 12
      002B88 12                    2699 	.db #0x12	; 18
      002B89 12                    2700 	.db #0x12	; 18
      002B8A 12                    2701 	.db #0x12	; 18
      002B8B 0C                    2702 	.db #0x0c	; 12
      002B8C 00                    2703 	.db #0x00	; 0
      002B8D 14                    2704 	.db #0x14	; 20
      002B8E 00                    2705 	.db #0x00	; 0
      002B8F 0C                    2706 	.db #0x0c	; 12
      002B90 12                    2707 	.db #0x12	; 18
      002B91 12                    2708 	.db #0x12	; 18
      002B92 12                    2709 	.db #0x12	; 18
      002B93 0C                    2710 	.db #0x0c	; 12
      002B94 00                    2711 	.db #0x00	; 0
      002B95 06                    2712 	.db #0x06	; 6
      002B96 00                    2713 	.db #0x00	; 0
      002B97 0C                    2714 	.db #0x0c	; 12
      002B98 12                    2715 	.db #0x12	; 18
      002B99 12                    2716 	.db #0x12	; 18
      002B9A 12                    2717 	.db #0x12	; 18
      002B9B 0C                    2718 	.db #0x0c	; 12
      002B9C 00                    2719 	.db #0x00	; 0
      002B9D 1C                    2720 	.db #0x1c	; 28
      002B9E 00                    2721 	.db #0x00	; 0
      002B9F 12                    2722 	.db #0x12	; 18
      002BA0 12                    2723 	.db #0x12	; 18
      002BA1 12                    2724 	.db #0x12	; 18
      002BA2 1A                    2725 	.db #0x1a	; 26
      002BA3 14                    2726 	.db #0x14	; 20
      002BA4 00                    2727 	.db #0x00	; 0
      002BA5 06                    2728 	.db #0x06	; 6
      002BA6 00                    2729 	.db #0x00	; 0
      002BA7 12                    2730 	.db #0x12	; 18
      002BA8 12                    2731 	.db #0x12	; 18
      002BA9 12                    2732 	.db #0x12	; 18
      002BAA 1A                    2733 	.db #0x1a	; 26
      002BAB 14                    2734 	.db #0x14	; 20
      002BAC 00                    2735 	.db #0x00	; 0
      002BAD 14                    2736 	.db #0x14	; 20
      002BAE 00                    2737 	.db #0x00	; 0
      002BAF 12                    2738 	.db #0x12	; 18
      002BB0 12                    2739 	.db #0x12	; 18
      002BB1 12                    2740 	.db #0x12	; 18
      002BB2 1C                    2741 	.db #0x1c	; 28
      002BB3 08                    2742 	.db #0x08	; 8
      002BB4 06                    2743 	.db #0x06	; 6
      002BB5 12                    2744 	.db #0x12	; 18
      002BB6 0C                    2745 	.db #0x0c	; 12
      002BB7 12                    2746 	.db #0x12	; 18
      002BB8 12                    2747 	.db #0x12	; 18
      002BB9 12                    2748 	.db #0x12	; 18
      002BBA 12                    2749 	.db #0x12	; 18
      002BBB 0C                    2750 	.db #0x0c	; 12
      002BBC 00                    2751 	.db #0x00	; 0
      002BBD 14                    2752 	.db #0x14	; 20
      002BBE 00                    2753 	.db #0x00	; 0
      002BBF 12                    2754 	.db #0x12	; 18
      002BC0 12                    2755 	.db #0x12	; 18
      002BC1 12                    2756 	.db #0x12	; 18
      002BC2 12                    2757 	.db #0x12	; 18
      002BC3 0C                    2758 	.db #0x0c	; 12
      002BC4 00                    2759 	.db #0x00	; 0
      002BC5 00                    2760 	.db #0x00	; 0
      002BC6 08                    2761 	.db #0x08	; 8
      002BC7 1C                    2762 	.db #0x1c	; 28
      002BC8 02                    2763 	.db #0x02	; 2
      002BC9 02                    2764 	.db #0x02	; 2
      002BCA 1C                    2765 	.db #0x1c	; 28
      002BCB 08                    2766 	.db #0x08	; 8
      002BCC 00                    2767 	.db #0x00	; 0
      002BCD 18                    2768 	.db #0x18	; 24
      002BCE 24                    2769 	.db #0x24	; 36
      002BCF 04                    2770 	.db #0x04	; 4
      002BD0 1E                    2771 	.db #0x1e	; 30
      002BD1 04                    2772 	.db #0x04	; 4
      002BD2 24                    2773 	.db #0x24	; 36
      002BD3 3A                    2774 	.db #0x3a	; 58
      002BD4 00                    2775 	.db #0x00	; 0
      002BD5 22                    2776 	.db #0x22	; 34
      002BD6 14                    2777 	.db #0x14	; 20
      002BD7 08                    2778 	.db #0x08	; 8
      002BD8 3E                    2779 	.db #0x3e	; 62
      002BD9 08                    2780 	.db #0x08	; 8
      002BDA 3E                    2781 	.db #0x3e	; 62
      002BDB 08                    2782 	.db #0x08	; 8
      002BDC 00                    2783 	.db #0x00	; 0
      002BDD 06                    2784 	.db #0x06	; 6
      002BDE 0A                    2785 	.db #0x0a	; 10
      002BDF 0A                    2786 	.db #0x0a	; 10
      002BE0 16                    2787 	.db #0x16	; 22
      002BE1 3A                    2788 	.db #0x3a	; 58
      002BE2 12                    2789 	.db #0x12	; 18
      002BE3 12                    2790 	.db #0x12	; 18
      002BE4 00                    2791 	.db #0x00	; 0
      002BE5 10                    2792 	.db #0x10	; 16
      002BE6 28                    2793 	.db #0x28	; 40
      002BE7 08                    2794 	.db #0x08	; 8
      002BE8 1C                    2795 	.db #0x1c	; 28
      002BE9 08                    2796 	.db #0x08	; 8
      002BEA 08                    2797 	.db #0x08	; 8
      002BEB 0A                    2798 	.db #0x0a	; 10
      002BEC 04                    2799 	.db #0x04	; 4
      002BED 18                    2800 	.db #0x18	; 24
      002BEE 00                    2801 	.db #0x00	; 0
      002BEF 1C                    2802 	.db #0x1c	; 28
      002BF0 20                    2803 	.db #0x20	; 32
      002BF1 3C                    2804 	.db #0x3c	; 60
      002BF2 22                    2805 	.db #0x22	; 34
      002BF3 3C                    2806 	.db #0x3c	; 60
      002BF4 00                    2807 	.db #0x00	; 0
      002BF5 18                    2808 	.db #0x18	; 24
      002BF6 00                    2809 	.db #0x00	; 0
      002BF7 08                    2810 	.db #0x08	; 8
      002BF8 08                    2811 	.db #0x08	; 8
      002BF9 08                    2812 	.db #0x08	; 8
      002BFA 08                    2813 	.db #0x08	; 8
      002BFB 18                    2814 	.db #0x18	; 24
      002BFC 00                    2815 	.db #0x00	; 0
      002BFD 18                    2816 	.db #0x18	; 24
      002BFE 00                    2817 	.db #0x00	; 0
      002BFF 0C                    2818 	.db #0x0c	; 12
      002C00 12                    2819 	.db #0x12	; 18
      002C01 12                    2820 	.db #0x12	; 18
      002C02 12                    2821 	.db #0x12	; 18
      002C03 0C                    2822 	.db #0x0c	; 12
      002C04 00                    2823 	.db #0x00	; 0
      002C05 18                    2824 	.db #0x18	; 24
      002C06 00                    2825 	.db #0x00	; 0
      002C07 12                    2826 	.db #0x12	; 18
      002C08 12                    2827 	.db #0x12	; 18
      002C09 12                    2828 	.db #0x12	; 18
      002C0A 1A                    2829 	.db #0x1a	; 26
      002C0B 14                    2830 	.db #0x14	; 20
      002C0C 00                    2831 	.db #0x00	; 0
      002C0D 14                    2832 	.db #0x14	; 20
      002C0E 0A                    2833 	.db #0x0a	; 10
      002C0F 00                    2834 	.db #0x00	; 0
      002C10 0E                    2835 	.db #0x0e	; 14
      002C11 12                    2836 	.db #0x12	; 18
      002C12 12                    2837 	.db #0x12	; 18
      002C13 12                    2838 	.db #0x12	; 18
      002C14 00                    2839 	.db #0x00	; 0
      002C15 14                    2840 	.db #0x14	; 20
      002C16 0A                    2841 	.db #0x0a	; 10
      002C17 00                    2842 	.db #0x00	; 0
      002C18 12                    2843 	.db #0x12	; 18
      002C19 16                    2844 	.db #0x16	; 22
      002C1A 1A                    2845 	.db #0x1a	; 26
      002C1B 12                    2846 	.db #0x12	; 18
      002C1C 00                    2847 	.db #0x00	; 0
      002C1D 1C                    2848 	.db #0x1c	; 28
      002C1E 20                    2849 	.db #0x20	; 32
      002C1F 3C                    2850 	.db #0x3c	; 60
      002C20 22                    2851 	.db #0x22	; 34
      002C21 3C                    2852 	.db #0x3c	; 60
      002C22 00                    2853 	.db #0x00	; 0
      002C23 3C                    2854 	.db #0x3c	; 60
      002C24 00                    2855 	.db #0x00	; 0
      002C25 0C                    2856 	.db #0x0c	; 12
      002C26 12                    2857 	.db #0x12	; 18
      002C27 12                    2858 	.db #0x12	; 18
      002C28 12                    2859 	.db #0x12	; 18
      002C29 0C                    2860 	.db #0x0c	; 12
      002C2A 00                    2861 	.db #0x00	; 0
      002C2B 1E                    2862 	.db #0x1e	; 30
      002C2C 00                    2863 	.db #0x00	; 0
      002C2D 08                    2864 	.db #0x08	; 8
      002C2E 00                    2865 	.db #0x00	; 0
      002C2F 08                    2866 	.db #0x08	; 8
      002C30 0C                    2867 	.db #0x0c	; 12
      002C31 02                    2868 	.db #0x02	; 2
      002C32 22                    2869 	.db #0x22	; 34
      002C33 1C                    2870 	.db #0x1c	; 28
      002C34 00                    2871 	.db #0x00	; 0
      002C35 00                    2872 	.db #0x00	; 0
      002C36 00                    2873 	.db #0x00	; 0
      002C37 3E                    2874 	.db #0x3e	; 62
      002C38 02                    2875 	.db #0x02	; 2
      002C39 02                    2876 	.db #0x02	; 2
      002C3A 02                    2877 	.db #0x02	; 2
      002C3B 00                    2878 	.db #0x00	; 0
      002C3C 00                    2879 	.db #0x00	; 0
      002C3D 00                    2880 	.db #0x00	; 0
      002C3E 00                    2881 	.db #0x00	; 0
      002C3F 3F                    2882 	.db #0x3f	; 63
      002C40 20                    2883 	.db #0x20	; 32
      002C41 20                    2884 	.db #0x20	; 32
      002C42 00                    2885 	.db #0x00	; 0
      002C43 00                    2886 	.db #0x00	; 0
      002C44 00                    2887 	.db #0x00	; 0
      002C45 02                    2888 	.db #0x02	; 2
      002C46 12                    2889 	.db #0x12	; 18
      002C47 0A                    2890 	.db #0x0a	; 10
      002C48 1C                    2891 	.db #0x1c	; 28
      002C49 22                    2892 	.db #0x22	; 34
      002C4A 10                    2893 	.db #0x10	; 16
      002C4B 38                    2894 	.db #0x38	; 56	'8'
      002C4C 00                    2895 	.db #0x00	; 0
      002C4D 02                    2896 	.db #0x02	; 2
      002C4E 12                    2897 	.db #0x12	; 18
      002C4F 0A                    2898 	.db #0x0a	; 10
      002C50 34                    2899 	.db #0x34	; 52	'4'
      002C51 2A                    2900 	.db #0x2a	; 42
      002C52 38                    2901 	.db #0x38	; 56	'8'
      002C53 20                    2902 	.db #0x20	; 32
      002C54 00                    2903 	.db #0x00	; 0
      002C55 08                    2904 	.db #0x08	; 8
      002C56 00                    2905 	.db #0x00	; 0
      002C57 08                    2906 	.db #0x08	; 8
      002C58 08                    2907 	.db #0x08	; 8
      002C59 1C                    2908 	.db #0x1c	; 28
      002C5A 1C                    2909 	.db #0x1c	; 28
      002C5B 08                    2910 	.db #0x08	; 8
      002C5C 00                    2911 	.db #0x00	; 0
      002C5D 00                    2912 	.db #0x00	; 0
      002C5E 00                    2913 	.db #0x00	; 0
      002C5F 24                    2914 	.db #0x24	; 36
      002C60 12                    2915 	.db #0x12	; 18
      002C61 24                    2916 	.db #0x24	; 36
      002C62 00                    2917 	.db #0x00	; 0
      002C63 00                    2918 	.db #0x00	; 0
      002C64 00                    2919 	.db #0x00	; 0
      002C65 00                    2920 	.db #0x00	; 0
      002C66 00                    2921 	.db #0x00	; 0
      002C67 12                    2922 	.db #0x12	; 18
      002C68 24                    2923 	.db #0x24	; 36
      002C69 12                    2924 	.db #0x12	; 18
      002C6A 00                    2925 	.db #0x00	; 0
      002C6B 00                    2926 	.db #0x00	; 0
      002C6C 00                    2927 	.db #0x00	; 0
      002C6D 2A                    2928 	.db #0x2a	; 42
      002C6E 00                    2929 	.db #0x00	; 0
      002C6F 15                    2930 	.db #0x15	; 21
      002C70 00                    2931 	.db #0x00	; 0
      002C71 2A                    2932 	.db #0x2a	; 42
      002C72 00                    2933 	.db #0x00	; 0
      002C73 15                    2934 	.db #0x15	; 21
      002C74 00                    2935 	.db #0x00	; 0
      002C75 2A                    2936 	.db #0x2a	; 42
      002C76 15                    2937 	.db #0x15	; 21
      002C77 2A                    2938 	.db #0x2a	; 42
      002C78 15                    2939 	.db #0x15	; 21
      002C79 2A                    2940 	.db #0x2a	; 42
      002C7A 15                    2941 	.db #0x15	; 21
      002C7B 2A                    2942 	.db #0x2a	; 42
      002C7C 15                    2943 	.db #0x15	; 21
      002C7D 15                    2944 	.db #0x15	; 21
      002C7E 3F                    2945 	.db #0x3f	; 63
      002C7F 2A                    2946 	.db #0x2a	; 42
      002C80 3F                    2947 	.db #0x3f	; 63
      002C81 15                    2948 	.db #0x15	; 21
      002C82 3F                    2949 	.db #0x3f	; 63
      002C83 2A                    2950 	.db #0x2a	; 42
      002C84 3F                    2951 	.db #0x3f	; 63
      002C85 08                    2952 	.db #0x08	; 8
      002C86 08                    2953 	.db #0x08	; 8
      002C87 08                    2954 	.db #0x08	; 8
      002C88 08                    2955 	.db #0x08	; 8
      002C89 08                    2956 	.db #0x08	; 8
      002C8A 08                    2957 	.db #0x08	; 8
      002C8B 08                    2958 	.db #0x08	; 8
      002C8C 08                    2959 	.db #0x08	; 8
      002C8D 08                    2960 	.db #0x08	; 8
      002C8E 08                    2961 	.db #0x08	; 8
      002C8F 08                    2962 	.db #0x08	; 8
      002C90 0F                    2963 	.db #0x0f	; 15
      002C91 08                    2964 	.db #0x08	; 8
      002C92 08                    2965 	.db #0x08	; 8
      002C93 08                    2966 	.db #0x08	; 8
      002C94 08                    2967 	.db #0x08	; 8
      002C95 08                    2968 	.db #0x08	; 8
      002C96 0F                    2969 	.db #0x0f	; 15
      002C97 08                    2970 	.db #0x08	; 8
      002C98 0F                    2971 	.db #0x0f	; 15
      002C99 08                    2972 	.db #0x08	; 8
      002C9A 08                    2973 	.db #0x08	; 8
      002C9B 08                    2974 	.db #0x08	; 8
      002C9C 08                    2975 	.db #0x08	; 8
      002C9D 0A                    2976 	.db #0x0a	; 10
      002C9E 0A                    2977 	.db #0x0a	; 10
      002C9F 0A                    2978 	.db #0x0a	; 10
      002CA0 0B                    2979 	.db #0x0b	; 11
      002CA1 0A                    2980 	.db #0x0a	; 10
      002CA2 0A                    2981 	.db #0x0a	; 10
      002CA3 0A                    2982 	.db #0x0a	; 10
      002CA4 0A                    2983 	.db #0x0a	; 10
      002CA5 00                    2984 	.db #0x00	; 0
      002CA6 00                    2985 	.db #0x00	; 0
      002CA7 00                    2986 	.db #0x00	; 0
      002CA8 0F                    2987 	.db #0x0f	; 15
      002CA9 0A                    2988 	.db #0x0a	; 10
      002CAA 0A                    2989 	.db #0x0a	; 10
      002CAB 0A                    2990 	.db #0x0a	; 10
      002CAC 0A                    2991 	.db #0x0a	; 10
      002CAD 00                    2992 	.db #0x00	; 0
      002CAE 0F                    2993 	.db #0x0f	; 15
      002CAF 08                    2994 	.db #0x08	; 8
      002CB0 0F                    2995 	.db #0x0f	; 15
      002CB1 08                    2996 	.db #0x08	; 8
      002CB2 08                    2997 	.db #0x08	; 8
      002CB3 08                    2998 	.db #0x08	; 8
      002CB4 08                    2999 	.db #0x08	; 8
      002CB5 0A                    3000 	.db #0x0a	; 10
      002CB6 0B                    3001 	.db #0x0b	; 11
      002CB7 08                    3002 	.db #0x08	; 8
      002CB8 0B                    3003 	.db #0x0b	; 11
      002CB9 0A                    3004 	.db #0x0a	; 10
      002CBA 0A                    3005 	.db #0x0a	; 10
      002CBB 0A                    3006 	.db #0x0a	; 10
      002CBC 0A                    3007 	.db #0x0a	; 10
      002CBD 0A                    3008 	.db #0x0a	; 10
      002CBE 0A                    3009 	.db #0x0a	; 10
      002CBF 0A                    3010 	.db #0x0a	; 10
      002CC0 0A                    3011 	.db #0x0a	; 10
      002CC1 0A                    3012 	.db #0x0a	; 10
      002CC2 0A                    3013 	.db #0x0a	; 10
      002CC3 0A                    3014 	.db #0x0a	; 10
      002CC4 0A                    3015 	.db #0x0a	; 10
      002CC5 00                    3016 	.db #0x00	; 0
      002CC6 0F                    3017 	.db #0x0f	; 15
      002CC7 08                    3018 	.db #0x08	; 8
      002CC8 0B                    3019 	.db #0x0b	; 11
      002CC9 0A                    3020 	.db #0x0a	; 10
      002CCA 0A                    3021 	.db #0x0a	; 10
      002CCB 0A                    3022 	.db #0x0a	; 10
      002CCC 0A                    3023 	.db #0x0a	; 10
      002CCD 0A                    3024 	.db #0x0a	; 10
      002CCE 0B                    3025 	.db #0x0b	; 11
      002CCF 08                    3026 	.db #0x08	; 8
      002CD0 0F                    3027 	.db #0x0f	; 15
      002CD1 00                    3028 	.db #0x00	; 0
      002CD2 00                    3029 	.db #0x00	; 0
      002CD3 00                    3030 	.db #0x00	; 0
      002CD4 00                    3031 	.db #0x00	; 0
      002CD5 0A                    3032 	.db #0x0a	; 10
      002CD6 0A                    3033 	.db #0x0a	; 10
      002CD7 0A                    3034 	.db #0x0a	; 10
      002CD8 0F                    3035 	.db #0x0f	; 15
      002CD9 00                    3036 	.db #0x00	; 0
      002CDA 00                    3037 	.db #0x00	; 0
      002CDB 00                    3038 	.db #0x00	; 0
      002CDC 00                    3039 	.db #0x00	; 0
      002CDD 08                    3040 	.db #0x08	; 8
      002CDE 0F                    3041 	.db #0x0f	; 15
      002CDF 08                    3042 	.db #0x08	; 8
      002CE0 0F                    3043 	.db #0x0f	; 15
      002CE1 00                    3044 	.db #0x00	; 0
      002CE2 00                    3045 	.db #0x00	; 0
      002CE3 00                    3046 	.db #0x00	; 0
      002CE4 00                    3047 	.db #0x00	; 0
      002CE5 00                    3048 	.db #0x00	; 0
      002CE6 00                    3049 	.db #0x00	; 0
      002CE7 00                    3050 	.db #0x00	; 0
      002CE8 0F                    3051 	.db #0x0f	; 15
      002CE9 08                    3052 	.db #0x08	; 8
      002CEA 08                    3053 	.db #0x08	; 8
      002CEB 08                    3054 	.db #0x08	; 8
      002CEC 08                    3055 	.db #0x08	; 8
      002CED 08                    3056 	.db #0x08	; 8
      002CEE 08                    3057 	.db #0x08	; 8
      002CEF 08                    3058 	.db #0x08	; 8
      002CF0 38                    3059 	.db #0x38	; 56	'8'
      002CF1 00                    3060 	.db #0x00	; 0
      002CF2 00                    3061 	.db #0x00	; 0
      002CF3 00                    3062 	.db #0x00	; 0
      002CF4 00                    3063 	.db #0x00	; 0
      002CF5 08                    3064 	.db #0x08	; 8
      002CF6 08                    3065 	.db #0x08	; 8
      002CF7 08                    3066 	.db #0x08	; 8
      002CF8 3F                    3067 	.db #0x3f	; 63
      002CF9 00                    3068 	.db #0x00	; 0
      002CFA 00                    3069 	.db #0x00	; 0
      002CFB 00                    3070 	.db #0x00	; 0
      002CFC 00                    3071 	.db #0x00	; 0
      002CFD 00                    3072 	.db #0x00	; 0
      002CFE 00                    3073 	.db #0x00	; 0
      002CFF 00                    3074 	.db #0x00	; 0
      002D00 3F                    3075 	.db #0x3f	; 63
      002D01 08                    3076 	.db #0x08	; 8
      002D02 08                    3077 	.db #0x08	; 8
      002D03 08                    3078 	.db #0x08	; 8
      002D04 08                    3079 	.db #0x08	; 8
      002D05 08                    3080 	.db #0x08	; 8
      002D06 08                    3081 	.db #0x08	; 8
      002D07 08                    3082 	.db #0x08	; 8
      002D08 38                    3083 	.db #0x38	; 56	'8'
      002D09 08                    3084 	.db #0x08	; 8
      002D0A 08                    3085 	.db #0x08	; 8
      002D0B 08                    3086 	.db #0x08	; 8
      002D0C 08                    3087 	.db #0x08	; 8
      002D0D 00                    3088 	.db #0x00	; 0
      002D0E 00                    3089 	.db #0x00	; 0
      002D0F 00                    3090 	.db #0x00	; 0
      002D10 3F                    3091 	.db #0x3f	; 63
      002D11 00                    3092 	.db #0x00	; 0
      002D12 00                    3093 	.db #0x00	; 0
      002D13 00                    3094 	.db #0x00	; 0
      002D14 00                    3095 	.db #0x00	; 0
      002D15 08                    3096 	.db #0x08	; 8
      002D16 08                    3097 	.db #0x08	; 8
      002D17 08                    3098 	.db #0x08	; 8
      002D18 3F                    3099 	.db #0x3f	; 63
      002D19 08                    3100 	.db #0x08	; 8
      002D1A 08                    3101 	.db #0x08	; 8
      002D1B 08                    3102 	.db #0x08	; 8
      002D1C 08                    3103 	.db #0x08	; 8
      002D1D 08                    3104 	.db #0x08	; 8
      002D1E 38                    3105 	.db #0x38	; 56	'8'
      002D1F 08                    3106 	.db #0x08	; 8
      002D20 38                    3107 	.db #0x38	; 56	'8'
      002D21 08                    3108 	.db #0x08	; 8
      002D22 08                    3109 	.db #0x08	; 8
      002D23 08                    3110 	.db #0x08	; 8
      002D24 08                    3111 	.db #0x08	; 8
      002D25 0A                    3112 	.db #0x0a	; 10
      002D26 0A                    3113 	.db #0x0a	; 10
      002D27 0A                    3114 	.db #0x0a	; 10
      002D28 3A                    3115 	.db #0x3a	; 58
      002D29 0A                    3116 	.db #0x0a	; 10
      002D2A 0A                    3117 	.db #0x0a	; 10
      002D2B 0A                    3118 	.db #0x0a	; 10
      002D2C 0A                    3119 	.db #0x0a	; 10
      002D2D 0A                    3120 	.db #0x0a	; 10
      002D2E 3A                    3121 	.db #0x3a	; 58
      002D2F 02                    3122 	.db #0x02	; 2
      002D30 3E                    3123 	.db #0x3e	; 62
      002D31 00                    3124 	.db #0x00	; 0
      002D32 00                    3125 	.db #0x00	; 0
      002D33 00                    3126 	.db #0x00	; 0
      002D34 00                    3127 	.db #0x00	; 0
      002D35 00                    3128 	.db #0x00	; 0
      002D36 3E                    3129 	.db #0x3e	; 62
      002D37 02                    3130 	.db #0x02	; 2
      002D38 3A                    3131 	.db #0x3a	; 58
      002D39 0A                    3132 	.db #0x0a	; 10
      002D3A 0A                    3133 	.db #0x0a	; 10
      002D3B 0A                    3134 	.db #0x0a	; 10
      002D3C 0A                    3135 	.db #0x0a	; 10
      002D3D 0A                    3136 	.db #0x0a	; 10
      002D3E 3B                    3137 	.db #0x3b	; 59
      002D3F 00                    3138 	.db #0x00	; 0
      002D40 3F                    3139 	.db #0x3f	; 63
      002D41 00                    3140 	.db #0x00	; 0
      002D42 00                    3141 	.db #0x00	; 0
      002D43 00                    3142 	.db #0x00	; 0
      002D44 00                    3143 	.db #0x00	; 0
      002D45 00                    3144 	.db #0x00	; 0
      002D46 3F                    3145 	.db #0x3f	; 63
      002D47 00                    3146 	.db #0x00	; 0
      002D48 3B                    3147 	.db #0x3b	; 59
      002D49 0A                    3148 	.db #0x0a	; 10
      002D4A 0A                    3149 	.db #0x0a	; 10
      002D4B 0A                    3150 	.db #0x0a	; 10
      002D4C 0A                    3151 	.db #0x0a	; 10
      002D4D 0A                    3152 	.db #0x0a	; 10
      002D4E 3A                    3153 	.db #0x3a	; 58
      002D4F 02                    3154 	.db #0x02	; 2
      002D50 3A                    3155 	.db #0x3a	; 58
      002D51 0A                    3156 	.db #0x0a	; 10
      002D52 0A                    3157 	.db #0x0a	; 10
      002D53 0A                    3158 	.db #0x0a	; 10
      002D54 0A                    3159 	.db #0x0a	; 10
      002D55 00                    3160 	.db #0x00	; 0
      002D56 3F                    3161 	.db #0x3f	; 63
      002D57 00                    3162 	.db #0x00	; 0
      002D58 3F                    3163 	.db #0x3f	; 63
      002D59 00                    3164 	.db #0x00	; 0
      002D5A 00                    3165 	.db #0x00	; 0
      002D5B 00                    3166 	.db #0x00	; 0
      002D5C 00                    3167 	.db #0x00	; 0
      002D5D 0A                    3168 	.db #0x0a	; 10
      002D5E 3B                    3169 	.db #0x3b	; 59
      002D5F 00                    3170 	.db #0x00	; 0
      002D60 3B                    3171 	.db #0x3b	; 59
      002D61 0A                    3172 	.db #0x0a	; 10
      002D62 0A                    3173 	.db #0x0a	; 10
      002D63 0A                    3174 	.db #0x0a	; 10
      002D64 0A                    3175 	.db #0x0a	; 10
      002D65 08                    3176 	.db #0x08	; 8
      002D66 3F                    3177 	.db #0x3f	; 63
      002D67 00                    3178 	.db #0x00	; 0
      002D68 3F                    3179 	.db #0x3f	; 63
      002D69 00                    3180 	.db #0x00	; 0
      002D6A 00                    3181 	.db #0x00	; 0
      002D6B 00                    3182 	.db #0x00	; 0
      002D6C 00                    3183 	.db #0x00	; 0
      002D6D 0A                    3184 	.db #0x0a	; 10
      002D6E 0A                    3185 	.db #0x0a	; 10
      002D6F 0A                    3186 	.db #0x0a	; 10
      002D70 3F                    3187 	.db #0x3f	; 63
      002D71 00                    3188 	.db #0x00	; 0
      002D72 00                    3189 	.db #0x00	; 0
      002D73 00                    3190 	.db #0x00	; 0
      002D74 00                    3191 	.db #0x00	; 0
      002D75 00                    3192 	.db #0x00	; 0
      002D76 3F                    3193 	.db #0x3f	; 63
      002D77 00                    3194 	.db #0x00	; 0
      002D78 3F                    3195 	.db #0x3f	; 63
      002D79 08                    3196 	.db #0x08	; 8
      002D7A 08                    3197 	.db #0x08	; 8
      002D7B 08                    3198 	.db #0x08	; 8
      002D7C 08                    3199 	.db #0x08	; 8
      002D7D 00                    3200 	.db #0x00	; 0
      002D7E 00                    3201 	.db #0x00	; 0
      002D7F 00                    3202 	.db #0x00	; 0
      002D80 3F                    3203 	.db #0x3f	; 63
      002D81 0A                    3204 	.db #0x0a	; 10
      002D82 0A                    3205 	.db #0x0a	; 10
      002D83 0A                    3206 	.db #0x0a	; 10
      002D84 0A                    3207 	.db #0x0a	; 10
      002D85 0A                    3208 	.db #0x0a	; 10
      002D86 0A                    3209 	.db #0x0a	; 10
      002D87 0A                    3210 	.db #0x0a	; 10
      002D88 3E                    3211 	.db #0x3e	; 62
      002D89 00                    3212 	.db #0x00	; 0
      002D8A 00                    3213 	.db #0x00	; 0
      002D8B 00                    3214 	.db #0x00	; 0
      002D8C 00                    3215 	.db #0x00	; 0
      002D8D 08                    3216 	.db #0x08	; 8
      002D8E 38                    3217 	.db #0x38	; 56	'8'
      002D8F 08                    3218 	.db #0x08	; 8
      002D90 38                    3219 	.db #0x38	; 56	'8'
      002D91 00                    3220 	.db #0x00	; 0
      002D92 00                    3221 	.db #0x00	; 0
      002D93 00                    3222 	.db #0x00	; 0
      002D94 00                    3223 	.db #0x00	; 0
      002D95 00                    3224 	.db #0x00	; 0
      002D96 38                    3225 	.db #0x38	; 56	'8'
      002D97 08                    3226 	.db #0x08	; 8
      002D98 38                    3227 	.db #0x38	; 56	'8'
      002D99 08                    3228 	.db #0x08	; 8
      002D9A 08                    3229 	.db #0x08	; 8
      002D9B 08                    3230 	.db #0x08	; 8
      002D9C 08                    3231 	.db #0x08	; 8
      002D9D 00                    3232 	.db #0x00	; 0
      002D9E 00                    3233 	.db #0x00	; 0
      002D9F 00                    3234 	.db #0x00	; 0
      002DA0 3E                    3235 	.db #0x3e	; 62
      002DA1 0A                    3236 	.db #0x0a	; 10
      002DA2 0A                    3237 	.db #0x0a	; 10
      002DA3 0A                    3238 	.db #0x0a	; 10
      002DA4 0A                    3239 	.db #0x0a	; 10
      002DA5 0A                    3240 	.db #0x0a	; 10
      002DA6 0A                    3241 	.db #0x0a	; 10
      002DA7 0A                    3242 	.db #0x0a	; 10
      002DA8 3B                    3243 	.db #0x3b	; 59
      002DA9 0A                    3244 	.db #0x0a	; 10
      002DAA 0A                    3245 	.db #0x0a	; 10
      002DAB 0A                    3246 	.db #0x0a	; 10
      002DAC 0A                    3247 	.db #0x0a	; 10
      002DAD 08                    3248 	.db #0x08	; 8
      002DAE 3F                    3249 	.db #0x3f	; 63
      002DAF 00                    3250 	.db #0x00	; 0
      002DB0 3F                    3251 	.db #0x3f	; 63
      002DB1 08                    3252 	.db #0x08	; 8
      002DB2 08                    3253 	.db #0x08	; 8
      002DB3 08                    3254 	.db #0x08	; 8
      002DB4 08                    3255 	.db #0x08	; 8
      002DB5 08                    3256 	.db #0x08	; 8
      002DB6 08                    3257 	.db #0x08	; 8
      002DB7 08                    3258 	.db #0x08	; 8
      002DB8 0F                    3259 	.db #0x0f	; 15
      002DB9 00                    3260 	.db #0x00	; 0
      002DBA 00                    3261 	.db #0x00	; 0
      002DBB 00                    3262 	.db #0x00	; 0
      002DBC 00                    3263 	.db #0x00	; 0
      002DBD 00                    3264 	.db #0x00	; 0
      002DBE 00                    3265 	.db #0x00	; 0
      002DBF 00                    3266 	.db #0x00	; 0
      002DC0 38                    3267 	.db #0x38	; 56	'8'
      002DC1 08                    3268 	.db #0x08	; 8
      002DC2 08                    3269 	.db #0x08	; 8
      002DC3 08                    3270 	.db #0x08	; 8
      002DC4 08                    3271 	.db #0x08	; 8
      002DC5 3F                    3272 	.db #0x3f	; 63
      002DC6 3F                    3273 	.db #0x3f	; 63
      002DC7 3F                    3274 	.db #0x3f	; 63
      002DC8 3F                    3275 	.db #0x3f	; 63
      002DC9 3F                    3276 	.db #0x3f	; 63
      002DCA 3F                    3277 	.db #0x3f	; 63
      002DCB 3F                    3278 	.db #0x3f	; 63
      002DCC 3F                    3279 	.db #0x3f	; 63
      002DCD 00                    3280 	.db #0x00	; 0
      002DCE 00                    3281 	.db #0x00	; 0
      002DCF 00                    3282 	.db #0x00	; 0
      002DD0 00                    3283 	.db #0x00	; 0
      002DD1 3F                    3284 	.db #0x3f	; 63
      002DD2 3F                    3285 	.db #0x3f	; 63
      002DD3 3F                    3286 	.db #0x3f	; 63
      002DD4 3F                    3287 	.db #0x3f	; 63
      002DD5 07                    3288 	.db #0x07	; 7
      002DD6 07                    3289 	.db #0x07	; 7
      002DD7 07                    3290 	.db #0x07	; 7
      002DD8 07                    3291 	.db #0x07	; 7
      002DD9 07                    3292 	.db #0x07	; 7
      002DDA 07                    3293 	.db #0x07	; 7
      002DDB 07                    3294 	.db #0x07	; 7
      002DDC 07                    3295 	.db #0x07	; 7
      002DDD 38                    3296 	.db #0x38	; 56	'8'
      002DDE 38                    3297 	.db #0x38	; 56	'8'
      002DDF 38                    3298 	.db #0x38	; 56	'8'
      002DE0 38                    3299 	.db #0x38	; 56	'8'
      002DE1 38                    3300 	.db #0x38	; 56	'8'
      002DE2 38                    3301 	.db #0x38	; 56	'8'
      002DE3 38                    3302 	.db #0x38	; 56	'8'
      002DE4 38                    3303 	.db #0x38	; 56	'8'
      002DE5 3F                    3304 	.db #0x3f	; 63
      002DE6 3F                    3305 	.db #0x3f	; 63
      002DE7 3F                    3306 	.db #0x3f	; 63
      002DE8 3F                    3307 	.db #0x3f	; 63
      002DE9 00                    3308 	.db #0x00	; 0
      002DEA 00                    3309 	.db #0x00	; 0
      002DEB 00                    3310 	.db #0x00	; 0
      002DEC 00                    3311 	.db #0x00	; 0
      002DED 00                    3312 	.db #0x00	; 0
      002DEE 00                    3313 	.db #0x00	; 0
      002DEF 2C                    3314 	.db #0x2c	; 44
      002DF0 12                    3315 	.db #0x12	; 18
      002DF1 12                    3316 	.db #0x12	; 18
      002DF2 2C                    3317 	.db #0x2c	; 44
      002DF3 00                    3318 	.db #0x00	; 0
      002DF4 00                    3319 	.db #0x00	; 0
      002DF5 00                    3320 	.db #0x00	; 0
      002DF6 0E                    3321 	.db #0x0e	; 14
      002DF7 12                    3322 	.db #0x12	; 18
      002DF8 0E                    3323 	.db #0x0e	; 14
      002DF9 12                    3324 	.db #0x12	; 18
      002DFA 12                    3325 	.db #0x12	; 18
      002DFB 0E                    3326 	.db #0x0e	; 14
      002DFC 02                    3327 	.db #0x02	; 2
      002DFD 1E                    3328 	.db #0x1e	; 30
      002DFE 12                    3329 	.db #0x12	; 18
      002DFF 02                    3330 	.db #0x02	; 2
      002E00 02                    3331 	.db #0x02	; 2
      002E01 02                    3332 	.db #0x02	; 2
      002E02 02                    3333 	.db #0x02	; 2
      002E03 02                    3334 	.db #0x02	; 2
      002E04 00                    3335 	.db #0x00	; 0
      002E05 00                    3336 	.db #0x00	; 0
      002E06 3E                    3337 	.db #0x3e	; 62
      002E07 14                    3338 	.db #0x14	; 20
      002E08 14                    3339 	.db #0x14	; 20
      002E09 14                    3340 	.db #0x14	; 20
      002E0A 14                    3341 	.db #0x14	; 20
      002E0B 14                    3342 	.db #0x14	; 20
      002E0C 00                    3343 	.db #0x00	; 0
      002E0D 1E                    3344 	.db #0x1e	; 30
      002E0E 12                    3345 	.db #0x12	; 18
      002E0F 04                    3346 	.db #0x04	; 4
      002E10 08                    3347 	.db #0x08	; 8
      002E11 04                    3348 	.db #0x04	; 4
      002E12 12                    3349 	.db #0x12	; 18
      002E13 1E                    3350 	.db #0x1e	; 30
      002E14 00                    3351 	.db #0x00	; 0
      002E15 00                    3352 	.db #0x00	; 0
      002E16 00                    3353 	.db #0x00	; 0
      002E17 3C                    3354 	.db #0x3c	; 60
      002E18 12                    3355 	.db #0x12	; 18
      002E19 12                    3356 	.db #0x12	; 18
      002E1A 0C                    3357 	.db #0x0c	; 12
      002E1B 00                    3358 	.db #0x00	; 0
      002E1C 00                    3359 	.db #0x00	; 0
      002E1D 00                    3360 	.db #0x00	; 0
      002E1E 00                    3361 	.db #0x00	; 0
      002E1F 12                    3362 	.db #0x12	; 18
      002E20 12                    3363 	.db #0x12	; 18
      002E21 12                    3364 	.db #0x12	; 18
      002E22 0E                    3365 	.db #0x0e	; 14
      002E23 02                    3366 	.db #0x02	; 2
      002E24 02                    3367 	.db #0x02	; 2
      002E25 00                    3368 	.db #0x00	; 0
      002E26 00                    3369 	.db #0x00	; 0
      002E27 14                    3370 	.db #0x14	; 20
      002E28 0A                    3371 	.db #0x0a	; 10
      002E29 08                    3372 	.db #0x08	; 8
      002E2A 08                    3373 	.db #0x08	; 8
      002E2B 08                    3374 	.db #0x08	; 8
      002E2C 00                    3375 	.db #0x00	; 0
      002E2D 1C                    3376 	.db #0x1c	; 28
      002E2E 08                    3377 	.db #0x08	; 8
      002E2F 1C                    3378 	.db #0x1c	; 28
      002E30 22                    3379 	.db #0x22	; 34
      002E31 1C                    3380 	.db #0x1c	; 28
      002E32 08                    3381 	.db #0x08	; 8
      002E33 1C                    3382 	.db #0x1c	; 28
      002E34 00                    3383 	.db #0x00	; 0
      002E35 0C                    3384 	.db #0x0c	; 12
      002E36 12                    3385 	.db #0x12	; 18
      002E37 12                    3386 	.db #0x12	; 18
      002E38 1E                    3387 	.db #0x1e	; 30
      002E39 12                    3388 	.db #0x12	; 18
      002E3A 12                    3389 	.db #0x12	; 18
      002E3B 0C                    3390 	.db #0x0c	; 12
      002E3C 00                    3391 	.db #0x00	; 0
      002E3D 00                    3392 	.db #0x00	; 0
      002E3E 1C                    3393 	.db #0x1c	; 28
      002E3F 22                    3394 	.db #0x22	; 34
      002E40 22                    3395 	.db #0x22	; 34
      002E41 14                    3396 	.db #0x14	; 20
      002E42 14                    3397 	.db #0x14	; 20
      002E43 36                    3398 	.db #0x36	; 54	'6'
      002E44 00                    3399 	.db #0x00	; 0
      002E45 0C                    3400 	.db #0x0c	; 12
      002E46 02                    3401 	.db #0x02	; 2
      002E47 04                    3402 	.db #0x04	; 4
      002E48 08                    3403 	.db #0x08	; 8
      002E49 1C                    3404 	.db #0x1c	; 28
      002E4A 12                    3405 	.db #0x12	; 18
      002E4B 0C                    3406 	.db #0x0c	; 12
      002E4C 00                    3407 	.db #0x00	; 0
      002E4D 00                    3408 	.db #0x00	; 0
      002E4E 00                    3409 	.db #0x00	; 0
      002E4F 14                    3410 	.db #0x14	; 20
      002E50 2A                    3411 	.db #0x2a	; 42
      002E51 2A                    3412 	.db #0x2a	; 42
      002E52 14                    3413 	.db #0x14	; 20
      002E53 00                    3414 	.db #0x00	; 0
      002E54 00                    3415 	.db #0x00	; 0
      002E55 00                    3416 	.db #0x00	; 0
      002E56 08                    3417 	.db #0x08	; 8
      002E57 1C                    3418 	.db #0x1c	; 28
      002E58 2A                    3419 	.db #0x2a	; 42
      002E59 2A                    3420 	.db #0x2a	; 42
      002E5A 1C                    3421 	.db #0x1c	; 28
      002E5B 08                    3422 	.db #0x08	; 8
      002E5C 00                    3423 	.db #0x00	; 0
      002E5D 00                    3424 	.db #0x00	; 0
      002E5E 1C                    3425 	.db #0x1c	; 28
      002E5F 02                    3426 	.db #0x02	; 2
      002E60 1E                    3427 	.db #0x1e	; 30
      002E61 02                    3428 	.db #0x02	; 2
      002E62 1C                    3429 	.db #0x1c	; 28
      002E63 00                    3430 	.db #0x00	; 0
      002E64 00                    3431 	.db #0x00	; 0
      002E65 00                    3432 	.db #0x00	; 0
      002E66 0C                    3433 	.db #0x0c	; 12
      002E67 12                    3434 	.db #0x12	; 18
      002E68 12                    3435 	.db #0x12	; 18
      002E69 12                    3436 	.db #0x12	; 18
      002E6A 12                    3437 	.db #0x12	; 18
      002E6B 00                    3438 	.db #0x00	; 0
      002E6C 00                    3439 	.db #0x00	; 0
      002E6D 00                    3440 	.db #0x00	; 0
      002E6E 1E                    3441 	.db #0x1e	; 30
      002E6F 00                    3442 	.db #0x00	; 0
      002E70 1E                    3443 	.db #0x1e	; 30
      002E71 00                    3444 	.db #0x00	; 0
      002E72 1E                    3445 	.db #0x1e	; 30
      002E73 00                    3446 	.db #0x00	; 0
      002E74 00                    3447 	.db #0x00	; 0
      002E75 00                    3448 	.db #0x00	; 0
      002E76 08                    3449 	.db #0x08	; 8
      002E77 1C                    3450 	.db #0x1c	; 28
      002E78 08                    3451 	.db #0x08	; 8
      002E79 00                    3452 	.db #0x00	; 0
      002E7A 1C                    3453 	.db #0x1c	; 28
      002E7B 00                    3454 	.db #0x00	; 0
      002E7C 00                    3455 	.db #0x00	; 0
      002E7D 02                    3456 	.db #0x02	; 2
      002E7E 0C                    3457 	.db #0x0c	; 12
      002E7F 10                    3458 	.db #0x10	; 16
      002E80 0C                    3459 	.db #0x0c	; 12
      002E81 02                    3460 	.db #0x02	; 2
      002E82 00                    3461 	.db #0x00	; 0
      002E83 1E                    3462 	.db #0x1e	; 30
      002E84 00                    3463 	.db #0x00	; 0
      002E85 10                    3464 	.db #0x10	; 16
      002E86 0C                    3465 	.db #0x0c	; 12
      002E87 02                    3466 	.db #0x02	; 2
      002E88 0C                    3467 	.db #0x0c	; 12
      002E89 10                    3468 	.db #0x10	; 16
      002E8A 00                    3469 	.db #0x00	; 0
      002E8B 1E                    3470 	.db #0x1e	; 30
      002E8C 00                    3471 	.db #0x00	; 0
      002E8D 00                    3472 	.db #0x00	; 0
      002E8E 10                    3473 	.db #0x10	; 16
      002E8F 28                    3474 	.db #0x28	; 40
      002E90 08                    3475 	.db #0x08	; 8
      002E91 08                    3476 	.db #0x08	; 8
      002E92 08                    3477 	.db #0x08	; 8
      002E93 08                    3478 	.db #0x08	; 8
      002E94 08                    3479 	.db #0x08	; 8
      002E95 08                    3480 	.db #0x08	; 8
      002E96 08                    3481 	.db #0x08	; 8
      002E97 08                    3482 	.db #0x08	; 8
      002E98 08                    3483 	.db #0x08	; 8
      002E99 08                    3484 	.db #0x08	; 8
      002E9A 0A                    3485 	.db #0x0a	; 10
      002E9B 04                    3486 	.db #0x04	; 4
      002E9C 00                    3487 	.db #0x00	; 0
      002E9D 00                    3488 	.db #0x00	; 0
      002E9E 08                    3489 	.db #0x08	; 8
      002E9F 00                    3490 	.db #0x00	; 0
      002EA0 3E                    3491 	.db #0x3e	; 62
      002EA1 00                    3492 	.db #0x00	; 0
      002EA2 08                    3493 	.db #0x08	; 8
      002EA3 00                    3494 	.db #0x00	; 0
      002EA4 00                    3495 	.db #0x00	; 0
      002EA5 00                    3496 	.db #0x00	; 0
      002EA6 14                    3497 	.db #0x14	; 20
      002EA7 0A                    3498 	.db #0x0a	; 10
      002EA8 00                    3499 	.db #0x00	; 0
      002EA9 14                    3500 	.db #0x14	; 20
      002EAA 0A                    3501 	.db #0x0a	; 10
      002EAB 00                    3502 	.db #0x00	; 0
      002EAC 00                    3503 	.db #0x00	; 0
      002EAD 0C                    3504 	.db #0x0c	; 12
      002EAE 12                    3505 	.db #0x12	; 18
      002EAF 12                    3506 	.db #0x12	; 18
      002EB0 0C                    3507 	.db #0x0c	; 12
      002EB1 00                    3508 	.db #0x00	; 0
      002EB2 00                    3509 	.db #0x00	; 0
      002EB3 00                    3510 	.db #0x00	; 0
      002EB4 00                    3511 	.db #0x00	; 0
      002EB5 00                    3512 	.db #0x00	; 0
      002EB6 00                    3513 	.db #0x00	; 0
      002EB7 00                    3514 	.db #0x00	; 0
      002EB8 0C                    3515 	.db #0x0c	; 12
      002EB9 0C                    3516 	.db #0x0c	; 12
      002EBA 00                    3517 	.db #0x00	; 0
      002EBB 00                    3518 	.db #0x00	; 0
      002EBC 00                    3519 	.db #0x00	; 0
      002EBD 00                    3520 	.db #0x00	; 0
      002EBE 00                    3521 	.db #0x00	; 0
      002EBF 00                    3522 	.db #0x00	; 0
      002EC0 04                    3523 	.db #0x04	; 4
      002EC1 00                    3524 	.db #0x00	; 0
      002EC2 00                    3525 	.db #0x00	; 0
      002EC3 00                    3526 	.db #0x00	; 0
      002EC4 00                    3527 	.db #0x00	; 0
      002EC5 00                    3528 	.db #0x00	; 0
      002EC6 38                    3529 	.db #0x38	; 56	'8'
      002EC7 08                    3530 	.db #0x08	; 8
      002EC8 08                    3531 	.db #0x08	; 8
      002EC9 0A                    3532 	.db #0x0a	; 10
      002ECA 0A                    3533 	.db #0x0a	; 10
      002ECB 04                    3534 	.db #0x04	; 4
      002ECC 00                    3535 	.db #0x00	; 0
      002ECD 0A                    3536 	.db #0x0a	; 10
      002ECE 14                    3537 	.db #0x14	; 20
      002ECF 14                    3538 	.db #0x14	; 20
      002ED0 14                    3539 	.db #0x14	; 20
      002ED1 00                    3540 	.db #0x00	; 0
      002ED2 00                    3541 	.db #0x00	; 0
      002ED3 00                    3542 	.db #0x00	; 0
      002ED4 00                    3543 	.db #0x00	; 0
      002ED5 06                    3544 	.db #0x06	; 6
      002ED6 08                    3545 	.db #0x08	; 8
      002ED7 04                    3546 	.db #0x04	; 4
      002ED8 0E                    3547 	.db #0x0e	; 14
      002ED9 00                    3548 	.db #0x00	; 0
      002EDA 00                    3549 	.db #0x00	; 0
      002EDB 00                    3550 	.db #0x00	; 0
      002EDC 00                    3551 	.db #0x00	; 0
      002EDD 00                    3552 	.db #0x00	; 0
      002EDE 00                    3553 	.db #0x00	; 0
      002EDF 1E                    3554 	.db #0x1e	; 30
      002EE0 1E                    3555 	.db #0x1e	; 30
      002EE1 1E                    3556 	.db #0x1e	; 30
      002EE2 1E                    3557 	.db #0x1e	; 30
      002EE3 00                    3558 	.db #0x00	; 0
      002EE4 00                    3559 	.db #0x00	; 0
      002EE5 00                    3560 	.db #0x00	; 0
      002EE6 00                    3561 	.db #0x00	; 0
      002EE7 00                    3562 	.db #0x00	; 0
      002EE8 00                    3563 	.db #0x00	; 0
      002EE9 00                    3564 	.db #0x00	; 0
      002EEA 00                    3565 	.db #0x00	; 0
      002EEB 00                    3566 	.db #0x00	; 0
      002EEC 00                    3567 	.db #0x00	; 0
      002EED                       3568 __xinit__initial:
      002EED BB 26 80              3569 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3570 	.area CABS    (ABS,CODE)
