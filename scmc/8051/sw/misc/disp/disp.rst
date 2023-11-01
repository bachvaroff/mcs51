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
      008101                        346 _font6x8:
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
                                    382 ;	disp.c:62: __idata const uint8_t dcol[8] = {
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
                                    418 ;	disp.c:11: int putchar(int c) __naked {
                                    419 ;	-----------------------------------------
                                    420 ;	 function putchar
                                    421 ;	-----------------------------------------
      00208D                        422 _putchar:
                                    423 ;	naked function: no prologue.
                                    424 ;	disp.c:16: __endasm;
      00208D E5 82            [12]  425 	mov	a, dpl
      00208F 02 00 30         [24]  426 	ljmp	0x0030
                                    427 ;	disp.c:17: }
                                    428 ;	naked function: no epilogue.
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'getchar'
                                    431 ;------------------------------------------------------------
                                    432 ;	disp.c:19: int getchar(void) __naked {
                                    433 ;	-----------------------------------------
                                    434 ;	 function getchar
                                    435 ;	-----------------------------------------
      002092                        436 _getchar:
                                    437 ;	naked function: no prologue.
                                    438 ;	disp.c:25: __endasm;
      002092 12 00 32         [24]  439 	lcall	0x0032
      002095 F5 82            [12]  440 	mov	dpl, a
      002097 75 83 00         [24]  441 	mov	dph, #0
      00209A 22               [24]  442 	ret
                                    443 ;	disp.c:26: }
                                    444 ;	naked function: no epilogue.
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'getchar_poll'
                                    447 ;------------------------------------------------------------
                                    448 ;	disp.c:28: int getchar_poll(void) __naked {
                                    449 ;	-----------------------------------------
                                    450 ;	 function getchar_poll
                                    451 ;	-----------------------------------------
      00209B                        452 _getchar_poll:
                                    453 ;	naked function: no prologue.
                                    454 ;	disp.c:40: __endasm;
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
                                    465 ;	disp.c:41: }
                                    466 ;	naked function: no epilogue.
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'init_gpo'
                                    469 ;------------------------------------------------------------
                                    470 ;	disp.c:81: void init_gpo(void) {
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
                                    483 ;	disp.c:82: P1_7 = 0;
                                    484 ;	assignBit
      0020AF C2 97            [12]  485 	clr	_P1_7
                                    486 ;	disp.c:84: P2 = GPO_BASE_H;
      0020B1 75 A0 F0         [24]  487 	mov	_P2,#0xf0
                                    488 ;	disp.c:86: CLEAR_GPO;
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
                                    505 ;	disp.c:88: return;
                                    506 ;	disp.c:89: }
      0020CC 22               [24]  507 	ret
                                    508 ;------------------------------------------------------------
                                    509 ;Allocation info for local variables in function 'clear_gpo'
                                    510 ;------------------------------------------------------------
                                    511 ;	disp.c:91: void clear_gpo(void) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function clear_gpo
                                    514 ;	-----------------------------------------
      0020CD                        515 _clear_gpo:
                                    516 ;	disp.c:92: CLEAR_GPO;
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
                                    533 ;	disp.c:94: return;
                                    534 ;	disp.c:95: }
      0020E5 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'init_intr'
                                    538 ;------------------------------------------------------------
                                    539 ;	disp.c:97: void init_intr(void) {
                                    540 ;	-----------------------------------------
                                    541 ;	 function init_intr
                                    542 ;	-----------------------------------------
      0020E6                        543 _init_intr:
                                    544 ;	disp.c:98: TR0 = 0;
                                    545 ;	assignBit
      0020E6 C2 8C            [12]  546 	clr	_TR0
                                    547 ;	disp.c:99: ET0 = 1;
                                    548 ;	assignBit
      0020E8 D2 A9            [12]  549 	setb	_ET0
                                    550 ;	disp.c:100: EA  = 1;
                                    551 ;	assignBit
      0020EA D2 AF            [12]  552 	setb	_EA
                                    553 ;	disp.c:102: return;
                                    554 ;	disp.c:103: }
      0020EC 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'init_timer0'
                                    558 ;------------------------------------------------------------
                                    559 ;	disp.c:105: void init_timer0(void) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function init_timer0
                                    562 ;	-----------------------------------------
      0020ED                        563 _init_timer0:
                                    564 ;	disp.c:106: TR0 = 0;
                                    565 ;	assignBit
      0020ED C2 8C            [12]  566 	clr	_TR0
                                    567 ;	disp.c:107: TMOD = 0x01;
      0020EF 75 89 01         [24]  568 	mov	_TMOD,#0x01
                                    569 ;	disp.c:108: TH0 = 0xf8;
      0020F2 75 8C F8         [24]  570 	mov	_TH0,#0xf8
                                    571 ;	disp.c:109: TL0 = 0x00;
      0020F5 75 8A 00         [24]  572 	mov	_TL0,#0x00
                                    573 ;	disp.c:111: return;
                                    574 ;	disp.c:112: }
      0020F8 22               [24]  575 	ret
                                    576 ;------------------------------------------------------------
                                    577 ;Allocation info for local variables in function 'init_disp'
                                    578 ;------------------------------------------------------------
                                    579 ;	disp.c:114: void init_disp(void) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function init_disp
                                    582 ;	-----------------------------------------
      0020F9                        583 _init_disp:
                                    584 ;	disp.c:115: gpo[DISP_COL] = 0u;
      0020F9 78 05            [12]  585 	mov	r0,#(_gpo + 0x0005)
      0020FB E4               [12]  586 	clr	a
      0020FC F2               [24]  587 	movx	@r0,a
                                    588 ;	disp.c:116: gpo[DISP_DATA] = 0u;
      0020FD 78 04            [12]  589 	mov	r0,#(_gpo + 0x0004)
      0020FF F2               [24]  590 	movx	@r0,a
                                    591 ;	disp.c:117: OE = 0x0fu; /* 00_001111 */
      002100 78 32            [12]  592 	mov	r0,#_OE
      002102 76 0F            [12]  593 	mov	@r0,#0x0f
                                    594 ;	disp.c:118: gpo[GPO_OE] = OE;
      002104 78 06            [12]  595 	mov	r0,#(_gpo + 0x0006)
      002106 74 0F            [12]  596 	mov	a,#0x0f
      002108 F2               [24]  597 	movx	@r0,a
                                    598 ;	disp.c:120: for (column = 0u; column < 8u; column++)
      002109 78 31            [12]  599 	mov	r0,#_column
      00210B 76 00            [12]  600 	mov	@r0,#0x00
      00210D                        601 00103$:
      00210D 78 31            [12]  602 	mov	r0,#_column
      00210F B6 08 00         [24]  603 	cjne	@r0,#0x08,00115$
      002112                        604 00115$:
      002112 50 11            [24]  605 	jnc	00101$
                                    606 ;	disp.c:121: ddata[column] = 0u;
      002114 78 31            [12]  607 	mov	r0,#_column
      002116 E6               [12]  608 	mov	a,@r0
      002117 24 29            [12]  609 	add	a,#_ddata
      002119 F8               [12]  610 	mov	r0,a
      00211A 76 00            [12]  611 	mov	@r0,#0x00
                                    612 ;	disp.c:120: for (column = 0u; column < 8u; column++)
      00211C 78 31            [12]  613 	mov	r0,#_column
      00211E E6               [12]  614 	mov	a,@r0
      00211F 78 31            [12]  615 	mov	r0,#_column
      002121 04               [12]  616 	inc	a
      002122 F6               [12]  617 	mov	@r0,a
      002123 80 E8            [24]  618 	sjmp	00103$
      002125                        619 00101$:
                                    620 ;	disp.c:122: column = 0u;
      002125 78 31            [12]  621 	mov	r0,#_column
      002127 76 00            [12]  622 	mov	@r0,#0x00
                                    623 ;	disp.c:124: return;
                                    624 ;	disp.c:125: }
      002129 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'timer0_intr'
                                    628 ;------------------------------------------------------------
                                    629 ;t                         Allocated to registers r7 
                                    630 ;------------------------------------------------------------
                                    631 ;	disp.c:127: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
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
                                    647 ;	disp.c:130: t = column & 7u;
      002131 78 31            [12]  648 	mov	r0,#_column
      002133 86 0F            [24]  649 	mov	ar7,@r0
      002135 53 0F 07         [24]  650 	anl	ar7,#0x07
                                    651 ;	disp.c:131: gpo[DISP_COL] = 0u;
      002138 78 05            [12]  652 	mov	r0,#(_gpo + 0x0005)
      00213A E4               [12]  653 	clr	a
      00213B F2               [24]  654 	movx	@r0,a
                                    655 ;	disp.c:132: gpo[DISP_DATA] = ddata[t];
      00213C EF               [12]  656 	mov	a,r7
      00213D 24 29            [12]  657 	add	a,#_ddata
      00213F F9               [12]  658 	mov	r1,a
      002140 87 0E            [24]  659 	mov	ar6,@r1
      002142 78 04            [12]  660 	mov	r0,#(_gpo + 0x0004)
      002144 EE               [12]  661 	mov	a,r6
      002145 F2               [24]  662 	movx	@r0,a
                                    663 ;	disp.c:133: gpo[DISP_COL] = dcol[t];
      002146 EF               [12]  664 	mov	a,r7
      002147 24 21            [12]  665 	add	a,#_dcol
      002149 F9               [12]  666 	mov	r1,a
      00214A 87 0F            [24]  667 	mov	ar7,@r1
      00214C 78 05            [12]  668 	mov	r0,#(_gpo + 0x0005)
      00214E EF               [12]  669 	mov	a,r7
      00214F F2               [24]  670 	movx	@r0,a
                                    671 ;	disp.c:134: column++;
      002150 78 31            [12]  672 	mov	r0,#_column
      002152 E6               [12]  673 	mov	a,@r0
      002153 78 31            [12]  674 	mov	r0,#_column
      002155 04               [12]  675 	inc	a
      002156 F6               [12]  676 	mov	@r0,a
                                    677 ;	disp.c:136: TR0 = 0;
                                    678 ;	assignBit
      002157 C2 8C            [12]  679 	clr	_TR0
                                    680 ;	disp.c:137: TH0 = 0xf8;
      002159 75 8C F8         [24]  681 	mov	_TH0,#0xf8
                                    682 ;	disp.c:138: TL0 = 0x00;
      00215C 75 8A 00         [24]  683 	mov	_TL0,#0x00
                                    684 ;	disp.c:139: TR0 = 1;
                                    685 ;	assignBit
      00215F D2 8C            [12]  686 	setb	_TR0
                                    687 ;	disp.c:141: return;
                                    688 ;	disp.c:142: }
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
                                    712 ;	disp.c:172: int scroll(uint8_t *msg) {
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
                                    733 ;	disp.c:178: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
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
                                    746 ;	disp.c:179: if (!bit) {
      002187 E5 10            [12]  747 	mov	a,_bp
      002189 24 06            [12]  748 	add	a,#0x06
      00218B F8               [12]  749 	mov	r0,a
      00218C E6               [12]  750 	mov	a,@r0
      00218D 70 55            [24]  751 	jnz	00104$
                                    752 ;	disp.c:180: symbol = msg[i];
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
      0021A8 12 26 30         [24]  771 	lcall	__gptrget
      0021AB FA               [12]  772 	mov	r2,a
      0021AC E5 10            [12]  773 	mov	a,_bp
      0021AE 24 04            [12]  774 	add	a,#0x04
      0021B0 F8               [12]  775 	mov	r0,a
      0021B1 A6 02            [24]  776 	mov	@r0,ar2
                                    777 ;	disp.c:181: if (!symbol) {
      0021B3 EA               [12]  778 	mov	a,r2
      0021B4 70 1D            [24]  779 	jnz	00102$
                                    780 ;	disp.c:182: i = 0u;
      0021B6 E5 10            [12]  781 	mov	a,_bp
      0021B8 24 07            [12]  782 	add	a,#0x07
      0021BA F8               [12]  783 	mov	r0,a
      0021BB E4               [12]  784 	clr	a
      0021BC F6               [12]  785 	mov	@r0,a
      0021BD 08               [12]  786 	inc	r0
      0021BE F6               [12]  787 	mov	@r0,a
                                    788 ;	disp.c:183: symbol = msg[i];
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
      0021CF 12 26 30         [24]  799 	lcall	__gptrget
      0021D2 F7               [12]  800 	mov	@r1,a
      0021D3                        801 00102$:
                                    802 ;	disp.c:185: i++;
      0021D3 E5 10            [12]  803 	mov	a,_bp
      0021D5 24 07            [12]  804 	add	a,#0x07
      0021D7 F8               [12]  805 	mov	r0,a
      0021D8 06               [12]  806 	inc	@r0
      0021D9 B6 00 02         [24]  807 	cjne	@r0,#0x00,00225$
      0021DC 08               [12]  808 	inc	r0
      0021DD 06               [12]  809 	inc	@r0
      0021DE                        810 00225$:
                                    811 ;	disp.c:186: OE = 0x8fu;
      0021DE 78 32            [12]  812 	mov	r0,#_OE
      0021E0 76 8F            [12]  813 	mov	@r0,#0x8f
      0021E2 80 04            [24]  814 	sjmp	00105$
      0021E4                        815 00104$:
                                    816 ;	disp.c:187: } else OE = 0x0fu;
      0021E4 78 32            [12]  817 	mov	r0,#_OE
      0021E6 76 0F            [12]  818 	mov	@r0,#0x0f
      0021E8                        819 00105$:
                                    820 ;	disp.c:188: gpo[GPO_OE] = OE;
      0021E8 78 06            [12]  821 	mov	r0,#(_gpo + 0x0006)
      0021EA 79 32            [12]  822 	mov	r1,#_OE
      0021EC E7               [12]  823 	mov	a,@r1
      0021ED F2               [24]  824 	movx	@r0,a
                                    825 ;	disp.c:190: if ((SKIPL > bit) || (bit > (7u - SKIPH))) continue;
      0021EE E5 10            [12]  826 	mov	a,_bp
      0021F0 24 06            [12]  827 	add	a,#0x06
      0021F2 F8               [12]  828 	mov	r0,a
      0021F3 E6               [12]  829 	mov	a,@r0
      0021F4 24 FA            [12]  830 	add	a,#0xff - 0x05
      0021F6 50 03            [24]  831 	jnc	00226$
      0021F8 02 22 CD         [24]  832 	ljmp	00120$
      0021FB                        833 00226$:
                                    834 ;	disp.c:151: do {
      0021FB 7B 00            [12]  835 	mov	r3,#0x00
                                    836 ;	disp.c:153: do {
      0021FD                        837 00142$:
      0021FD 7A 00            [12]  838 	mov	r2,#0x00
      0021FF                        839 00122$:
                                    840 ;	disp.c:165: __endasm;
      0021FF 00               [12]  841 	nop
      002200 00               [12]  842 	nop
      002201 00               [12]  843 	nop
      002202 00               [12]  844 	nop
                                    845 ;	disp.c:166: } while ((++j) ^ 0x80u);
      002203 0A               [12]  846 	inc	r2
      002204 8A 06            [24]  847 	mov	ar6,r2
      002206 7F 00            [12]  848 	mov	r7,#0x00
      002208 74 80            [12]  849 	mov	a,#0x80
      00220A 6E               [12]  850 	xrl	a,r6
      00220B 70 F2            [24]  851 	jnz	00122$
      00220D EF               [12]  852 	mov	a,r7
      00220E 70 EF            [24]  853 	jnz	00122$
                                    854 ;	disp.c:167: } while ((++i) ^ 0x80u);
      002210 0B               [12]  855 	inc	r3
      002211 8B 02            [24]  856 	mov	ar2,r3
      002213 7F 00            [12]  857 	mov	r7,#0x00
      002215 74 80            [12]  858 	mov	a,#0x80
      002217 6A               [12]  859 	xrl	a,r2
      002218 70 E3            [24]  860 	jnz	00142$
      00221A EF               [12]  861 	mov	a,r7
      00221B 70 E0            [24]  862 	jnz	00142$
                                    863 ;	disp.c:194: for (j = 0u; j < 8u; j++)
      00221D E5 10            [12]  864 	mov	a,_bp
      00221F 24 04            [12]  865 	add	a,#0x04
      002221 F8               [12]  866 	mov	r0,a
      002222 E6               [12]  867 	mov	a,@r0
      002223 75 F0 08         [24]  868 	mov	b,#0x08
      002226 A4               [48]  869 	mul	ab
      002227 24 01            [12]  870 	add	a,#_font6x8
      002229 FA               [12]  871 	mov	r2,a
      00222A 74 81            [12]  872 	mov	a,#(_font6x8 >> 8)
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
                                    884 ;	disp.c:195: ddata[j] = ((FONT[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
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
                                    914 ;	disp.c:194: for (j = 0u; j < 8u; j++)
      002261 0C               [12]  915 	inc	r4
      002262 BC 08 00         [24]  916 	cjne	r4,#0x08,00234$
      002265                        917 00234$:
      002265 40 D4            [24]  918 	jc	00131$
                                    919 ;	disp.c:197: if ((r = getchar_poll()) >= 0) {
      002267 12 20 9B         [24]  920 	lcall	_getchar_poll
      00226A AB 82            [24]  921 	mov	r3,dpl
      00226C AC 83            [24]  922 	mov	r4,dph
      00226E 8B 07            [24]  923 	mov	ar7,r3
      002270 EC               [12]  924 	mov	a,r4
      002271 FE               [12]  925 	mov	r6,a
      002272 20 E7 58         [24]  926 	jb	acc.7,00120$
                                    927 ;	disp.c:198: r = toupper(r);
      002275 8F 82            [24]  928 	mov	dpl,r7
      002277 8E 83            [24]  929 	mov	dph,r6
      002279 12 25 52         [24]  930 	lcall	_toupper
      00227C AB 82            [24]  931 	mov	r3,dpl
      00227E AC 83            [24]  932 	mov	r4,dph
                                    933 ;	disp.c:199: if ((r == (int)'P') || (r == (int)' ')) {
      002280 BB 50 05         [24]  934 	cjne	r3,#0x50,00237$
      002283 BC 00 02         [24]  935 	cjne	r4,#0x00,00237$
      002286 80 06            [24]  936 	sjmp	00114$
      002288                        937 00237$:
      002288 BB 20 2A         [24]  938 	cjne	r3,#0x20,00115$
      00228B BC 00 27         [24]  939 	cjne	r4,#0x00,00115$
      00228E                        940 00114$:
                                    941 ;	disp.c:200: printstr("PAUSE\r\n");
      00228E 7E 6B            [12]  942 	mov	r6,#___str_0
      002290 7C 26            [12]  943 	mov	r4,#(___str_0 >> 8)
      002292 7B 80            [12]  944 	mov	r3,#0x80
                                    945 ;	disp.c:46: return;
      002294                        946 00134$:
                                    947 ;	disp.c:44: for (; *s; s++) putchar(*s);
      002294 8E 82            [24]  948 	mov	dpl,r6
      002296 8C 83            [24]  949 	mov	dph,r4
      002298 8B F0            [24]  950 	mov	b,r3
      00229A 12 26 30         [24]  951 	lcall	__gptrget
      00229D FD               [12]  952 	mov	r5,a
      00229E 60 10            [24]  953 	jz	00130$
      0022A0 7F 00            [12]  954 	mov	r7,#0x00
      0022A2 8D 82            [24]  955 	mov	dpl,r5
      0022A4 8F 83            [24]  956 	mov	dph,r7
      0022A6 12 20 8D         [24]  957 	lcall	_putchar
      0022A9 0E               [12]  958 	inc	r6
                                    959 ;	disp.c:200: printstr("PAUSE\r\n");
      0022AA BE 00 E7         [24]  960 	cjne	r6,#0x00,00134$
      0022AD 0C               [12]  961 	inc	r4
      0022AE 80 E4            [24]  962 	sjmp	00134$
      0022B0                        963 00130$:
                                    964 ;	disp.c:201: (void)getchar();
      0022B0 12 20 92         [24]  965 	lcall	_getchar
      0022B3 80 18            [24]  966 	sjmp	00120$
      0022B5                        967 00115$:
                                    968 ;	disp.c:202: } else if ((r == (int)'L') || (r == (int)'R') || (r == (int)'T')) break;
      0022B5 BB 4C 05         [24]  969 	cjne	r3,#0x4c,00242$
      0022B8 BC 00 02         [24]  970 	cjne	r4,#0x00,00242$
      0022BB 80 24            [24]  971 	sjmp	00121$
      0022BD                        972 00242$:
      0022BD BB 52 05         [24]  973 	cjne	r3,#0x52,00243$
      0022C0 BC 00 02         [24]  974 	cjne	r4,#0x00,00243$
      0022C3 80 1C            [24]  975 	sjmp	00121$
      0022C5                        976 00243$:
      0022C5 BB 54 05         [24]  977 	cjne	r3,#0x54,00244$
      0022C8 BC 00 02         [24]  978 	cjne	r4,#0x00,00244$
      0022CB 80 14            [24]  979 	sjmp	00121$
      0022CD                        980 00244$:
      0022CD                        981 00120$:
                                    982 ;	disp.c:178: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
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
                                    997 ;	disp.c:206: return r;
      0022E1 8B 82            [24]  998 	mov	dpl,r3
      0022E3 8C 83            [24]  999 	mov	dph,r4
                                   1000 ;	disp.c:207: }
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
                                   1031 ;	disp.c:209: void main(void) {
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function main
                                   1034 ;	-----------------------------------------
      0022EB                       1035 _main:
      0022EB C0 10            [24] 1036 	push	_bp
      0022ED 85 81 10         [24] 1037 	mov	_bp,sp
      0022F0 05 81            [12] 1038 	inc	sp
      0022F2 05 81            [12] 1039 	inc	sp
                                   1040 ;	disp.c:213: init_gpo();
      0022F4 12 20 AF         [24] 1041 	lcall	_init_gpo
                                   1042 ;	disp.c:214: clear_gpo();
      0022F7 12 20 CD         [24] 1043 	lcall	_clear_gpo
                                   1044 ;	disp.c:215: init_disp();	
      0022FA 12 20 F9         [24] 1045 	lcall	_init_disp
                                   1046 ;	disp.c:216: init_timer0();
      0022FD 12 20 ED         [24] 1047 	lcall	_init_timer0
                                   1048 ;	disp.c:217: init_intr();
      002300 12 20 E6         [24] 1049 	lcall	_init_intr
                                   1050 ;	disp.c:218: TR0 = 1;
                                   1051 ;	assignBit
      002303 D2 8C            [12] 1052 	setb	_TR0
                                   1053 ;	disp.c:220: reset:
      002305                       1054 00101$:
                                   1055 ;	disp.c:221: printstr("RESET\r\n");
      002305 7D 73            [12] 1056 	mov	r5,#___str_1
      002307 7E 26            [12] 1057 	mov	r6,#(___str_1 >> 8)
      002309 7F 80            [12] 1058 	mov	r7,#0x80
                                   1059 ;	disp.c:46: return;
      00230B                       1060 00146$:
                                   1061 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00230B 8D 82            [24] 1062 	mov	dpl,r5
      00230D 8E 83            [24] 1063 	mov	dph,r6
      00230F 8F F0            [24] 1064 	mov	b,r7
      002311 12 26 30         [24] 1065 	lcall	__gptrget
      002314 FC               [12] 1066 	mov	r4,a
      002315 60 10            [24] 1067 	jz	00126$
      002317 7B 00            [12] 1068 	mov	r3,#0x00
      002319 8C 82            [24] 1069 	mov	dpl,r4
      00231B 8B 83            [24] 1070 	mov	dph,r3
      00231D 12 20 8D         [24] 1071 	lcall	_putchar
      002320 0D               [12] 1072 	inc	r5
                                   1073 ;	disp.c:221: printstr("RESET\r\n");
      002321 BD 00 E7         [24] 1074 	cjne	r5,#0x00,00146$
      002324 0E               [12] 1075 	inc	r6
      002325 80 E4            [24] 1076 	sjmp	00146$
      002327                       1077 00126$:
                                   1078 ;	disp.c:222: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      002327 E4               [12] 1079 	clr	a
      002328 C0 E0            [24] 1080 	push	acc
      00232A 04               [12] 1081 	inc	a
      00232B C0 E0            [24] 1082 	push	acc
      00232D 90 89 01         [24] 1083 	mov	dptr,#_initial
      002330 E0               [24] 1084 	movx	a,@dptr
      002331 C0 E0            [24] 1085 	push	acc
      002333 A3               [24] 1086 	inc	dptr
      002334 E0               [24] 1087 	movx	a,@dptr
      002335 C0 E0            [24] 1088 	push	acc
      002337 A3               [24] 1089 	inc	dptr
      002338 E0               [24] 1090 	movx	a,@dptr
      002339 C0 E0            [24] 1091 	push	acc
      00233B 90 80 00         [24] 1092 	mov	dptr,#_buf
      00233E 75 F0 00         [24] 1093 	mov	b,#0x00
      002341 12 25 79         [24] 1094 	lcall	_strncpy
      002344 E5 81            [12] 1095 	mov	a,sp
      002346 24 FB            [12] 1096 	add	a,#0xfb
      002348 F5 81            [12] 1097 	mov	sp,a
                                   1098 ;	disp.c:223: buf[sizeof (buf) - 1u] = 0u;
      00234A 90 81 00         [24] 1099 	mov	dptr,#(_buf + 0x0100)
      00234D E4               [12] 1100 	clr	a
      00234E F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	disp.c:225: while (1) {
      00234F                       1103 00122$:
                                   1104 ;	disp.c:226: printstr("P SP L ENT S R T START MSG \"");
      00234F 7D 7B            [12] 1105 	mov	r5,#___str_2
      002351 7E 26            [12] 1106 	mov	r6,#(___str_2 >> 8)
      002353 7F 80            [12] 1107 	mov	r7,#0x80
                                   1108 ;	disp.c:46: return;
      002355                       1109 00149$:
                                   1110 ;	disp.c:44: for (; *s; s++) putchar(*s);
      002355 8D 82            [24] 1111 	mov	dpl,r5
      002357 8E 83            [24] 1112 	mov	dph,r6
      002359 8F F0            [24] 1113 	mov	b,r7
      00235B 12 26 30         [24] 1114 	lcall	__gptrget
      00235E FC               [12] 1115 	mov	r4,a
      00235F 60 10            [24] 1116 	jz	00128$
      002361 7B 00            [12] 1117 	mov	r3,#0x00
      002363 8C 82            [24] 1118 	mov	dpl,r4
      002365 8B 83            [24] 1119 	mov	dph,r3
      002367 12 20 8D         [24] 1120 	lcall	_putchar
      00236A 0D               [12] 1121 	inc	r5
                                   1122 ;	disp.c:226: printstr("P SP L ENT S R T START MSG \"");
      00236B BD 00 E7         [24] 1123 	cjne	r5,#0x00,00149$
      00236E 0E               [12] 1124 	inc	r6
      00236F 80 E4            [24] 1125 	sjmp	00149$
      002371                       1126 00128$:
                                   1127 ;	disp.c:227: printstr((char *)buf);
      002371 7D 00            [12] 1128 	mov	r5,#_buf
      002373 7E 80            [12] 1129 	mov	r6,#(_buf >> 8)
      002375 7F 00            [12] 1130 	mov	r7,#0x00
                                   1131 ;	disp.c:46: return;
      002377                       1132 00152$:
                                   1133 ;	disp.c:44: for (; *s; s++) putchar(*s);
      002377 8D 82            [24] 1134 	mov	dpl,r5
      002379 8E 83            [24] 1135 	mov	dph,r6
      00237B 8F F0            [24] 1136 	mov	b,r7
      00237D 12 26 30         [24] 1137 	lcall	__gptrget
      002380 FC               [12] 1138 	mov	r4,a
      002381 60 10            [24] 1139 	jz	00130$
      002383 7B 00            [12] 1140 	mov	r3,#0x00
      002385 8C 82            [24] 1141 	mov	dpl,r4
      002387 8B 83            [24] 1142 	mov	dph,r3
      002389 12 20 8D         [24] 1143 	lcall	_putchar
      00238C 0D               [12] 1144 	inc	r5
                                   1145 ;	disp.c:227: printstr((char *)buf);
      00238D BD 00 E7         [24] 1146 	cjne	r5,#0x00,00152$
      002390 0E               [12] 1147 	inc	r6
      002391 80 E4            [24] 1148 	sjmp	00152$
      002393                       1149 00130$:
                                   1150 ;	disp.c:228: printstr("\"\r\n");
      002393 7D 98            [12] 1151 	mov	r5,#___str_3
      002395 7E 26            [12] 1152 	mov	r6,#(___str_3 >> 8)
      002397 7F 80            [12] 1153 	mov	r7,#0x80
                                   1154 ;	disp.c:46: return;
      002399                       1155 00155$:
                                   1156 ;	disp.c:44: for (; *s; s++) putchar(*s);
      002399 8D 82            [24] 1157 	mov	dpl,r5
      00239B 8E 83            [24] 1158 	mov	dph,r6
      00239D 8F F0            [24] 1159 	mov	b,r7
      00239F 12 26 30         [24] 1160 	lcall	__gptrget
      0023A2 FC               [12] 1161 	mov	r4,a
      0023A3 60 10            [24] 1162 	jz	00132$
      0023A5 7B 00            [12] 1163 	mov	r3,#0x00
      0023A7 8C 82            [24] 1164 	mov	dpl,r4
      0023A9 8B 83            [24] 1165 	mov	dph,r3
      0023AB 12 20 8D         [24] 1166 	lcall	_putchar
      0023AE 0D               [12] 1167 	inc	r5
                                   1168 ;	disp.c:228: printstr("\"\r\n");
      0023AF BD 00 E7         [24] 1169 	cjne	r5,#0x00,00155$
      0023B2 0E               [12] 1170 	inc	r6
      0023B3 80 E4            [24] 1171 	sjmp	00155$
      0023B5                       1172 00132$:
                                   1173 ;	disp.c:230: c = scroll(buf);
      0023B5 90 80 00         [24] 1174 	mov	dptr,#_buf
      0023B8 75 F0 00         [24] 1175 	mov	b,#0x00
      0023BB 12 21 66         [24] 1176 	lcall	_scroll
      0023BE AE 82            [24] 1177 	mov	r6,dpl
      0023C0 AF 83            [24] 1178 	mov	r7,dph
                                   1179 ;	disp.c:232: while (1) {
      0023C2                       1180 00119$:
                                   1181 ;	disp.c:233: if (c == (int)'T') goto term;
      0023C2 BE 54 06         [24] 1182 	cjne	r6,#0x54,00337$
      0023C5 BF 00 03         [24] 1183 	cjne	r7,#0x00,00337$
      0023C8 02 25 22         [24] 1184 	ljmp	00124$
      0023CB                       1185 00337$:
                                   1186 ;	disp.c:234: else if (c == (int)'R') goto reset;
      0023CB BE 52 06         [24] 1187 	cjne	r6,#0x52,00338$
      0023CE BF 00 03         [24] 1188 	cjne	r7,#0x00,00338$
      0023D1 02 23 05         [24] 1189 	ljmp	00101$
      0023D4                       1190 00338$:
                                   1191 ;	disp.c:235: else if (c == (int)'L') {
      0023D4 BE 4C 05         [24] 1192 	cjne	r6,#0x4c,00339$
      0023D7 BF 00 02         [24] 1193 	cjne	r7,#0x00,00339$
      0023DA 80 03            [24] 1194 	sjmp	00340$
      0023DC                       1195 00339$:
      0023DC 02 25 0C         [24] 1196 	ljmp	00110$
      0023DF                       1197 00340$:
                                   1198 ;	disp.c:236: printstr("LOAD ");
      0023DF 7F 9C            [12] 1199 	mov	r7,#___str_4
      0023E1 7E 26            [12] 1200 	mov	r6,#(___str_4 >> 8)
      0023E3 7C 80            [12] 1201 	mov	r4,#0x80
                                   1202 ;	disp.c:46: return;
      0023E5                       1203 00158$:
                                   1204 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0023E5 8F 82            [24] 1205 	mov	dpl,r7
      0023E7 8E 83            [24] 1206 	mov	dph,r6
      0023E9 8C F0            [24] 1207 	mov	b,r4
      0023EB 12 26 30         [24] 1208 	lcall	__gptrget
      0023EE FA               [12] 1209 	mov	r2,a
      0023EF 60 10            [24] 1210 	jz	00134$
      0023F1 7D 00            [12] 1211 	mov	r5,#0x00
      0023F3 8A 82            [24] 1212 	mov	dpl,r2
      0023F5 8D 83            [24] 1213 	mov	dph,r5
      0023F7 12 20 8D         [24] 1214 	lcall	_putchar
      0023FA 0F               [12] 1215 	inc	r7
                                   1216 ;	disp.c:236: printstr("LOAD ");
      0023FB BF 00 E7         [24] 1217 	cjne	r7,#0x00,00158$
      0023FE 0E               [12] 1218 	inc	r6
      0023FF 80 E4            [24] 1219 	sjmp	00158$
      002401                       1220 00134$:
                                   1221 ;	disp.c:237: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      002401 7C 00            [12] 1222 	mov	r4,#0x00
      002403 7D 00            [12] 1223 	mov	r5,#0x00
      002405 A8 10            [24] 1224 	mov	r0,_bp
      002407 08               [12] 1225 	inc	r0
      002408 E4               [12] 1226 	clr	a
      002409 F6               [12] 1227 	mov	@r0,a
      00240A 08               [12] 1228 	inc	r0
      00240B F6               [12] 1229 	mov	@r0,a
      00240C                       1230 00160$:
                                   1231 ;	disp.c:238: c = getchar();
      00240C C0 04            [24] 1232 	push	ar4
      00240E C0 05            [24] 1233 	push	ar5
      002410 12 20 92         [24] 1234 	lcall	_getchar
      002413 AC 82            [24] 1235 	mov	r4,dpl
      002415 AD 83            [24] 1236 	mov	r5,dph
      002417 8C 07            [24] 1237 	mov	ar7,r4
      002419 8D 06            [24] 1238 	mov	ar6,r5
                                   1239 ;	disp.c:239: (void)putchar(c);
      00241B 8F 82            [24] 1240 	mov	dpl,r7
      00241D 8E 83            [24] 1241 	mov	dph,r6
      00241F 12 20 8D         [24] 1242 	lcall	_putchar
                                   1243 ;	disp.c:240: if ((c == (int)'\r') || (c == (int)'\n')) {
      002422 BF 0D 09         [24] 1244 	cjne	r7,#0x0d,00343$
      002425 BE 00 06         [24] 1245 	cjne	r6,#0x00,00343$
      002428 D0 05            [24] 1246 	pop	ar5
      00242A D0 04            [24] 1247 	pop	ar4
      00242C 80 0A            [24] 1248 	sjmp	00102$
      00242E                       1249 00343$:
      00242E D0 05            [24] 1250 	pop	ar5
      002430 D0 04            [24] 1251 	pop	ar4
      002432 BF 0A 11         [24] 1252 	cjne	r7,#0x0a,00103$
      002435 BE 00 0E         [24] 1253 	cjne	r6,#0x00,00103$
      002438                       1254 00102$:
                                   1255 ;	disp.c:241: buf[j] = 0u;
      002438 EC               [12] 1256 	mov	a,r4
      002439 24 00            [12] 1257 	add	a,#_buf
      00243B F5 82            [12] 1258 	mov	dpl,a
      00243D ED               [12] 1259 	mov	a,r5
      00243E 34 80            [12] 1260 	addc	a,#(_buf >> 8)
      002440 F5 83            [12] 1261 	mov	dph,a
      002442 E4               [12] 1262 	clr	a
      002443 F0               [24] 1263 	movx	@dptr,a
                                   1264 ;	disp.c:242: break;
      002444 80 32            [24] 1265 	sjmp	00106$
      002446                       1266 00103$:
                                   1267 ;	disp.c:243: } else buf[j] = c & 0xffu;
      002446 A8 10            [24] 1268 	mov	r0,_bp
      002448 08               [12] 1269 	inc	r0
      002449 E6               [12] 1270 	mov	a,@r0
      00244A 24 00            [12] 1271 	add	a,#_buf
      00244C FD               [12] 1272 	mov	r5,a
      00244D 08               [12] 1273 	inc	r0
      00244E E6               [12] 1274 	mov	a,@r0
      00244F 34 80            [12] 1275 	addc	a,#(_buf >> 8)
      002451 FC               [12] 1276 	mov	r4,a
      002452 8F 03            [24] 1277 	mov	ar3,r7
      002454 8D 82            [24] 1278 	mov	dpl,r5
      002456 8C 83            [24] 1279 	mov	dph,r4
      002458 EB               [12] 1280 	mov	a,r3
      002459 F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	disp.c:237: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00245A A8 10            [24] 1283 	mov	r0,_bp
      00245C 08               [12] 1284 	inc	r0
      00245D 06               [12] 1285 	inc	@r0
      00245E B6 00 02         [24] 1286 	cjne	@r0,#0x00,00346$
      002461 08               [12] 1287 	inc	r0
      002462 06               [12] 1288 	inc	@r0
      002463                       1289 00346$:
      002463 A8 10            [24] 1290 	mov	r0,_bp
      002465 08               [12] 1291 	inc	r0
      002466 86 04            [24] 1292 	mov	ar4,@r0
      002468 08               [12] 1293 	inc	r0
      002469 86 05            [24] 1294 	mov	ar5,@r0
      00246B A8 10            [24] 1295 	mov	r0,_bp
      00246D 08               [12] 1296 	inc	r0
      00246E 86 02            [24] 1297 	mov	ar2,@r0
      002470 08               [12] 1298 	inc	r0
      002471 86 03            [24] 1299 	mov	ar3,@r0
      002473 74 FF            [12] 1300 	mov	a,#0x100 - 0x01
      002475 2B               [12] 1301 	add	a,r3
      002476 50 94            [24] 1302 	jnc	00160$
      002478                       1303 00106$:
                                   1304 ;	disp.c:245: buf[j] = 0u;
      002478 EC               [12] 1305 	mov	a,r4
      002479 24 00            [12] 1306 	add	a,#_buf
      00247B F5 82            [12] 1307 	mov	dpl,a
      00247D ED               [12] 1308 	mov	a,r5
      00247E 34 80            [12] 1309 	addc	a,#(_buf >> 8)
      002480 F5 83            [12] 1310 	mov	dph,a
      002482 E4               [12] 1311 	clr	a
      002483 F0               [24] 1312 	movx	@dptr,a
                                   1313 ;	disp.c:246: printstr("\r\n");
      002484 7F A2            [12] 1314 	mov	r7,#___str_5
      002486 7E 26            [12] 1315 	mov	r6,#(___str_5 >> 8)
      002488 7C 80            [12] 1316 	mov	r4,#0x80
                                   1317 ;	disp.c:46: return;
      00248A                       1318 00163$:
                                   1319 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00248A 8F 82            [24] 1320 	mov	dpl,r7
      00248C 8E 83            [24] 1321 	mov	dph,r6
      00248E 8C F0            [24] 1322 	mov	b,r4
      002490 12 26 30         [24] 1323 	lcall	__gptrget
      002493 FA               [12] 1324 	mov	r2,a
      002494 60 10            [24] 1325 	jz	00136$
      002496 7D 00            [12] 1326 	mov	r5,#0x00
      002498 8A 82            [24] 1327 	mov	dpl,r2
      00249A 8D 83            [24] 1328 	mov	dph,r5
      00249C 12 20 8D         [24] 1329 	lcall	_putchar
      00249F 0F               [12] 1330 	inc	r7
                                   1331 ;	disp.c:246: printstr("\r\n");
      0024A0 BF 00 E7         [24] 1332 	cjne	r7,#0x00,00163$
      0024A3 0E               [12] 1333 	inc	r6
      0024A4 80 E4            [24] 1334 	sjmp	00163$
      0024A6                       1335 00136$:
                                   1336 ;	disp.c:247: printstr("MSG \"");
      0024A6 7F A5            [12] 1337 	mov	r7,#___str_6
      0024A8 7E 26            [12] 1338 	mov	r6,#(___str_6 >> 8)
      0024AA 7C 80            [12] 1339 	mov	r4,#0x80
                                   1340 ;	disp.c:46: return;
      0024AC                       1341 00166$:
                                   1342 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0024AC 8F 82            [24] 1343 	mov	dpl,r7
      0024AE 8E 83            [24] 1344 	mov	dph,r6
      0024B0 8C F0            [24] 1345 	mov	b,r4
      0024B2 12 26 30         [24] 1346 	lcall	__gptrget
      0024B5 FA               [12] 1347 	mov	r2,a
      0024B6 60 10            [24] 1348 	jz	00138$
      0024B8 7D 00            [12] 1349 	mov	r5,#0x00
      0024BA 8A 82            [24] 1350 	mov	dpl,r2
      0024BC 8D 83            [24] 1351 	mov	dph,r5
      0024BE 12 20 8D         [24] 1352 	lcall	_putchar
      0024C1 0F               [12] 1353 	inc	r7
                                   1354 ;	disp.c:247: printstr("MSG \"");
      0024C2 BF 00 E7         [24] 1355 	cjne	r7,#0x00,00166$
      0024C5 0E               [12] 1356 	inc	r6
      0024C6 80 E4            [24] 1357 	sjmp	00166$
      0024C8                       1358 00138$:
                                   1359 ;	disp.c:248: printstr((char *)buf);
      0024C8 7F 00            [12] 1360 	mov	r7,#_buf
      0024CA 7E 80            [12] 1361 	mov	r6,#(_buf >> 8)
      0024CC 7C 00            [12] 1362 	mov	r4,#0x00
                                   1363 ;	disp.c:46: return;
      0024CE                       1364 00169$:
                                   1365 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0024CE 8F 82            [24] 1366 	mov	dpl,r7
      0024D0 8E 83            [24] 1367 	mov	dph,r6
      0024D2 8C F0            [24] 1368 	mov	b,r4
      0024D4 12 26 30         [24] 1369 	lcall	__gptrget
      0024D7 FA               [12] 1370 	mov	r2,a
      0024D8 60 10            [24] 1371 	jz	00140$
      0024DA 7D 00            [12] 1372 	mov	r5,#0x00
      0024DC 8A 82            [24] 1373 	mov	dpl,r2
      0024DE 8D 83            [24] 1374 	mov	dph,r5
      0024E0 12 20 8D         [24] 1375 	lcall	_putchar
      0024E3 0F               [12] 1376 	inc	r7
                                   1377 ;	disp.c:248: printstr((char *)buf);
      0024E4 BF 00 E7         [24] 1378 	cjne	r7,#0x00,00169$
      0024E7 0E               [12] 1379 	inc	r6
      0024E8 80 E4            [24] 1380 	sjmp	00169$
      0024EA                       1381 00140$:
                                   1382 ;	disp.c:249: printstr("\"\r\n");
      0024EA 7F 98            [12] 1383 	mov	r7,#___str_3
      0024EC 7E 26            [12] 1384 	mov	r6,#(___str_3 >> 8)
      0024EE 7C 80            [12] 1385 	mov	r4,#0x80
                                   1386 ;	disp.c:46: return;
      0024F0                       1387 00172$:
                                   1388 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0024F0 8F 82            [24] 1389 	mov	dpl,r7
      0024F2 8E 83            [24] 1390 	mov	dph,r6
      0024F4 8C F0            [24] 1391 	mov	b,r4
      0024F6 12 26 30         [24] 1392 	lcall	__gptrget
      0024F9 FA               [12] 1393 	mov	r2,a
      0024FA 60 19            [24] 1394 	jz	00117$
      0024FC 7D 00            [12] 1395 	mov	r5,#0x00
      0024FE 8A 82            [24] 1396 	mov	dpl,r2
      002500 8D 83            [24] 1397 	mov	dph,r5
      002502 12 20 8D         [24] 1398 	lcall	_putchar
      002505 0F               [12] 1399 	inc	r7
                                   1400 ;	disp.c:249: printstr("\"\r\n");
      002506 BF 00 E7         [24] 1401 	cjne	r7,#0x00,00172$
      002509 0E               [12] 1402 	inc	r6
      00250A 80 E4            [24] 1403 	sjmp	00172$
      00250C                       1404 00110$:
                                   1405 ;	disp.c:250: } else if (c == (int)'S') break;
      00250C BE 53 06         [24] 1406 	cjne	r6,#0x53,00356$
      00250F BF 00 03         [24] 1407 	cjne	r7,#0x00,00356$
      002512 02 23 4F         [24] 1408 	ljmp	00122$
      002515                       1409 00356$:
      002515                       1410 00117$:
                                   1411 ;	disp.c:252: c = toupper(getchar());
      002515 12 20 92         [24] 1412 	lcall	_getchar
      002518 12 25 52         [24] 1413 	lcall	_toupper
      00251B AE 82            [24] 1414 	mov	r6,dpl
      00251D AF 83            [24] 1415 	mov	r7,dph
      00251F 02 23 C2         [24] 1416 	ljmp	00119$
                                   1417 ;	disp.c:256: term:	
      002522                       1418 00124$:
                                   1419 ;	disp.c:257: EA = 0;
                                   1420 ;	assignBit
      002522 C2 AF            [12] 1421 	clr	_EA
                                   1422 ;	disp.c:258: printstr("TERM\r\n");
      002524 7D AB            [12] 1423 	mov	r5,#___str_7
      002526 7E 26            [12] 1424 	mov	r6,#(___str_7 >> 8)
      002528 7F 80            [12] 1425 	mov	r7,#0x80
                                   1426 ;	disp.c:46: return;
      00252A                       1427 00175$:
                                   1428 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00252A 8D 82            [24] 1429 	mov	dpl,r5
      00252C 8E 83            [24] 1430 	mov	dph,r6
      00252E 8F F0            [24] 1431 	mov	b,r7
      002530 12 26 30         [24] 1432 	lcall	__gptrget
      002533 FC               [12] 1433 	mov	r4,a
      002534 60 10            [24] 1434 	jz	00144$
      002536 7B 00            [12] 1435 	mov	r3,#0x00
      002538 8C 82            [24] 1436 	mov	dpl,r4
      00253A 8B 83            [24] 1437 	mov	dph,r3
      00253C 12 20 8D         [24] 1438 	lcall	_putchar
      00253F 0D               [12] 1439 	inc	r5
                                   1440 ;	disp.c:258: printstr("TERM\r\n");
      002540 BD 00 E7         [24] 1441 	cjne	r5,#0x00,00175$
      002543 0E               [12] 1442 	inc	r6
      002544 80 E4            [24] 1443 	sjmp	00175$
      002546                       1444 00144$:
                                   1445 ;	disp.c:259: (void)getchar();
      002546 12 20 92         [24] 1446 	lcall	_getchar
                                   1447 ;	disp.c:263: __endasm;
      002549 43 87 02         [24] 1448 	orl	pcon, #2
                                   1449 ;	disp.c:264: }
      00254C 85 10 81         [24] 1450 	mov	sp,_bp
      00254F D0 10            [24] 1451 	pop	_bp
      002551 22               [24] 1452 	ret
                                   1453 	.area CSEG    (CODE)
                                   1454 	.area CONST   (CODE)
                                   1455 	.area CONST   (CODE)
      00266B                       1456 ___str_0:
      00266B 50 41 55 53 45        1457 	.ascii "PAUSE"
      002670 0D                    1458 	.db 0x0d
      002671 0A                    1459 	.db 0x0a
      002672 00                    1460 	.db 0x00
                                   1461 	.area CSEG    (CODE)
                                   1462 	.area CONST   (CODE)
      002673                       1463 ___str_1:
      002673 52 45 53 45 54        1464 	.ascii "RESET"
      002678 0D                    1465 	.db 0x0d
      002679 0A                    1466 	.db 0x0a
      00267A 00                    1467 	.db 0x00
                                   1468 	.area CSEG    (CODE)
                                   1469 	.area CONST   (CODE)
      00267B                       1470 ___str_2:
      00267B 50 20 53 50 20 4C 20  1471 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      002696 22                    1472 	.db 0x22
      002697 00                    1473 	.db 0x00
                                   1474 	.area CSEG    (CODE)
                                   1475 	.area CONST   (CODE)
      002698                       1476 ___str_3:
      002698 22                    1477 	.db 0x22
      002699 0D                    1478 	.db 0x0d
      00269A 0A                    1479 	.db 0x0a
      00269B 00                    1480 	.db 0x00
                                   1481 	.area CSEG    (CODE)
                                   1482 	.area CONST   (CODE)
      00269C                       1483 ___str_4:
      00269C 4C 4F 41 44 20        1484 	.ascii "LOAD "
      0026A1 00                    1485 	.db 0x00
                                   1486 	.area CSEG    (CODE)
                                   1487 	.area CONST   (CODE)
      0026A2                       1488 ___str_5:
      0026A2 0D                    1489 	.db 0x0d
      0026A3 0A                    1490 	.db 0x0a
      0026A4 00                    1491 	.db 0x00
                                   1492 	.area CSEG    (CODE)
                                   1493 	.area CONST   (CODE)
      0026A5                       1494 ___str_6:
      0026A5 4D 53 47 20           1495 	.ascii "MSG "
      0026A9 22                    1496 	.db 0x22
      0026AA 00                    1497 	.db 0x00
                                   1498 	.area CSEG    (CODE)
                                   1499 	.area CONST   (CODE)
      0026AB                       1500 ___str_7:
      0026AB 54 45 52 4D           1501 	.ascii "TERM"
      0026AF 0D                    1502 	.db 0x0d
      0026B0 0A                    1503 	.db 0x0a
      0026B1 00                    1504 	.db 0x00
                                   1505 	.area CSEG    (CODE)
                                   1506 	.area CONST   (CODE)
      0026B2                       1507 ___str_8:
      0026B2 47 6F 20 66 75 63 6B  1508 	.ascii "Go fuck yourselves you sons of bitches! "
             20 79 6F 75 72 73 65
             6C 76 65 73 20 79 6F
             75 20 73 6F 6E 73 20
             6F 66 20 62 69 74 63
             68 65 73 21 20
      0026DA 00                    1509 	.db 0x00
                                   1510 	.area CSEG    (CODE)
                                   1511 	.area XINIT   (CODE)
      0026DB                       1512 __xinit__font6x8:
      0026DB 00                    1513 	.db #0x00	; 0
      0026DC 00                    1514 	.db #0x00	; 0
      0026DD 00                    1515 	.db #0x00	; 0
      0026DE 00                    1516 	.db #0x00	; 0
      0026DF 00                    1517 	.db #0x00	; 0
      0026E0 00                    1518 	.db #0x00	; 0
      0026E1 00                    1519 	.db #0x00	; 0
      0026E2 00                    1520 	.db #0x00	; 0
      0026E3 1C                    1521 	.db #0x1c	; 28
      0026E4 22                    1522 	.db #0x22	; 34
      0026E5 36                    1523 	.db #0x36	; 54	'6'
      0026E6 22                    1524 	.db #0x22	; 34
      0026E7 2A                    1525 	.db #0x2a	; 42
      0026E8 22                    1526 	.db #0x22	; 34
      0026E9 1C                    1527 	.db #0x1c	; 28
      0026EA 00                    1528 	.db #0x00	; 0
      0026EB 1C                    1529 	.db #0x1c	; 28
      0026EC 3E                    1530 	.db #0x3e	; 62
      0026ED 2A                    1531 	.db #0x2a	; 42
      0026EE 3E                    1532 	.db #0x3e	; 62
      0026EF 22                    1533 	.db #0x22	; 34
      0026F0 3E                    1534 	.db #0x3e	; 62
      0026F1 1C                    1535 	.db #0x1c	; 28
      0026F2 00                    1536 	.db #0x00	; 0
      0026F3 00                    1537 	.db #0x00	; 0
      0026F4 14                    1538 	.db #0x14	; 20
      0026F5 3E                    1539 	.db #0x3e	; 62
      0026F6 3E                    1540 	.db #0x3e	; 62
      0026F7 3E                    1541 	.db #0x3e	; 62
      0026F8 1C                    1542 	.db #0x1c	; 28
      0026F9 08                    1543 	.db #0x08	; 8
      0026FA 00                    1544 	.db #0x00	; 0
      0026FB 00                    1545 	.db #0x00	; 0
      0026FC 08                    1546 	.db #0x08	; 8
      0026FD 1C                    1547 	.db #0x1c	; 28
      0026FE 3E                    1548 	.db #0x3e	; 62
      0026FF 3E                    1549 	.db #0x3e	; 62
      002700 1C                    1550 	.db #0x1c	; 28
      002701 08                    1551 	.db #0x08	; 8
      002702 00                    1552 	.db #0x00	; 0
      002703 08                    1553 	.db #0x08	; 8
      002704 1C                    1554 	.db #0x1c	; 28
      002705 1C                    1555 	.db #0x1c	; 28
      002706 08                    1556 	.db #0x08	; 8
      002707 3E                    1557 	.db #0x3e	; 62
      002708 3E                    1558 	.db #0x3e	; 62
      002709 08                    1559 	.db #0x08	; 8
      00270A 00                    1560 	.db #0x00	; 0
      00270B 00                    1561 	.db #0x00	; 0
      00270C 08                    1562 	.db #0x08	; 8
      00270D 1C                    1563 	.db #0x1c	; 28
      00270E 3E                    1564 	.db #0x3e	; 62
      00270F 3E                    1565 	.db #0x3e	; 62
      002710 08                    1566 	.db #0x08	; 8
      002711 1C                    1567 	.db #0x1c	; 28
      002712 00                    1568 	.db #0x00	; 0
      002713 00                    1569 	.db #0x00	; 0
      002714 00                    1570 	.db #0x00	; 0
      002715 00                    1571 	.db #0x00	; 0
      002716 0C                    1572 	.db #0x0c	; 12
      002717 0C                    1573 	.db #0x0c	; 12
      002718 00                    1574 	.db #0x00	; 0
      002719 00                    1575 	.db #0x00	; 0
      00271A 00                    1576 	.db #0x00	; 0
      00271B 3F                    1577 	.db #0x3f	; 63
      00271C 3F                    1578 	.db #0x3f	; 63
      00271D 3F                    1579 	.db #0x3f	; 63
      00271E 33                    1580 	.db #0x33	; 51	'3'
      00271F 33                    1581 	.db #0x33	; 51	'3'
      002720 3F                    1582 	.db #0x3f	; 63
      002721 3F                    1583 	.db #0x3f	; 63
      002722 3F                    1584 	.db #0x3f	; 63
      002723 00                    1585 	.db #0x00	; 0
      002724 00                    1586 	.db #0x00	; 0
      002725 1E                    1587 	.db #0x1e	; 30
      002726 12                    1588 	.db #0x12	; 18
      002727 12                    1589 	.db #0x12	; 18
      002728 1E                    1590 	.db #0x1e	; 30
      002729 00                    1591 	.db #0x00	; 0
      00272A 00                    1592 	.db #0x00	; 0
      00272B 3F                    1593 	.db #0x3f	; 63
      00272C 3F                    1594 	.db #0x3f	; 63
      00272D 21                    1595 	.db #0x21	; 33
      00272E 2D                    1596 	.db #0x2d	; 45
      00272F 2D                    1597 	.db #0x2d	; 45
      002730 21                    1598 	.db #0x21	; 33
      002731 3F                    1599 	.db #0x3f	; 63
      002732 3F                    1600 	.db #0x3f	; 63
      002733 00                    1601 	.db #0x00	; 0
      002734 38                    1602 	.db #0x38	; 56	'8'
      002735 30                    1603 	.db #0x30	; 48	'0'
      002736 2C                    1604 	.db #0x2c	; 44
      002737 12                    1605 	.db #0x12	; 18
      002738 12                    1606 	.db #0x12	; 18
      002739 0C                    1607 	.db #0x0c	; 12
      00273A 00                    1608 	.db #0x00	; 0
      00273B 1C                    1609 	.db #0x1c	; 28
      00273C 22                    1610 	.db #0x22	; 34
      00273D 22                    1611 	.db #0x22	; 34
      00273E 1C                    1612 	.db #0x1c	; 28
      00273F 08                    1613 	.db #0x08	; 8
      002740 1C                    1614 	.db #0x1c	; 28
      002741 08                    1615 	.db #0x08	; 8
      002742 00                    1616 	.db #0x00	; 0
      002743 08                    1617 	.db #0x08	; 8
      002744 18                    1618 	.db #0x18	; 24
      002745 28                    1619 	.db #0x28	; 40
      002746 08                    1620 	.db #0x08	; 8
      002747 0C                    1621 	.db #0x0c	; 12
      002748 0E                    1622 	.db #0x0e	; 14
      002749 06                    1623 	.db #0x06	; 6
      00274A 00                    1624 	.db #0x00	; 0
      00274B 30                    1625 	.db #0x30	; 48	'0'
      00274C 2C                    1626 	.db #0x2c	; 44
      00274D 34                    1627 	.db #0x34	; 52	'4'
      00274E 2C                    1628 	.db #0x2c	; 44
      00274F 34                    1629 	.db #0x34	; 52	'4'
      002750 36                    1630 	.db #0x36	; 54	'6'
      002751 06                    1631 	.db #0x06	; 6
      002752 00                    1632 	.db #0x00	; 0
      002753 00                    1633 	.db #0x00	; 0
      002754 2A                    1634 	.db #0x2a	; 42
      002755 1C                    1635 	.db #0x1c	; 28
      002756 36                    1636 	.db #0x36	; 54	'6'
      002757 1C                    1637 	.db #0x1c	; 28
      002758 2A                    1638 	.db #0x2a	; 42
      002759 00                    1639 	.db #0x00	; 0
      00275A 00                    1640 	.db #0x00	; 0
      00275B 04                    1641 	.db #0x04	; 4
      00275C 0C                    1642 	.db #0x0c	; 12
      00275D 1C                    1643 	.db #0x1c	; 28
      00275E 3C                    1644 	.db #0x3c	; 60
      00275F 1C                    1645 	.db #0x1c	; 28
      002760 0C                    1646 	.db #0x0c	; 12
      002761 04                    1647 	.db #0x04	; 4
      002762 00                    1648 	.db #0x00	; 0
      002763 10                    1649 	.db #0x10	; 16
      002764 18                    1650 	.db #0x18	; 24
      002765 1C                    1651 	.db #0x1c	; 28
      002766 1E                    1652 	.db #0x1e	; 30
      002767 1C                    1653 	.db #0x1c	; 28
      002768 18                    1654 	.db #0x18	; 24
      002769 10                    1655 	.db #0x10	; 16
      00276A 00                    1656 	.db #0x00	; 0
      00276B 08                    1657 	.db #0x08	; 8
      00276C 1C                    1658 	.db #0x1c	; 28
      00276D 3E                    1659 	.db #0x3e	; 62
      00276E 08                    1660 	.db #0x08	; 8
      00276F 3E                    1661 	.db #0x3e	; 62
      002770 1C                    1662 	.db #0x1c	; 28
      002771 08                    1663 	.db #0x08	; 8
      002772 00                    1664 	.db #0x00	; 0
      002773 14                    1665 	.db #0x14	; 20
      002774 14                    1666 	.db #0x14	; 20
      002775 14                    1667 	.db #0x14	; 20
      002776 14                    1668 	.db #0x14	; 20
      002777 14                    1669 	.db #0x14	; 20
      002778 00                    1670 	.db #0x00	; 0
      002779 14                    1671 	.db #0x14	; 20
      00277A 00                    1672 	.db #0x00	; 0
      00277B 3C                    1673 	.db #0x3c	; 60
      00277C 2A                    1674 	.db #0x2a	; 42
      00277D 2A                    1675 	.db #0x2a	; 42
      00277E 2C                    1676 	.db #0x2c	; 44
      00277F 28                    1677 	.db #0x28	; 40
      002780 28                    1678 	.db #0x28	; 40
      002781 28                    1679 	.db #0x28	; 40
      002782 00                    1680 	.db #0x00	; 0
      002783 1C                    1681 	.db #0x1c	; 28
      002784 22                    1682 	.db #0x22	; 34
      002785 0C                    1683 	.db #0x0c	; 12
      002786 14                    1684 	.db #0x14	; 20
      002787 18                    1685 	.db #0x18	; 24
      002788 22                    1686 	.db #0x22	; 34
      002789 1C                    1687 	.db #0x1c	; 28
      00278A 00                    1688 	.db #0x00	; 0
      00278B 00                    1689 	.db #0x00	; 0
      00278C 00                    1690 	.db #0x00	; 0
      00278D 00                    1691 	.db #0x00	; 0
      00278E 00                    1692 	.db #0x00	; 0
      00278F 00                    1693 	.db #0x00	; 0
      002790 1E                    1694 	.db #0x1e	; 30
      002791 1E                    1695 	.db #0x1e	; 30
      002792 00                    1696 	.db #0x00	; 0
      002793 08                    1697 	.db #0x08	; 8
      002794 1C                    1698 	.db #0x1c	; 28
      002795 3E                    1699 	.db #0x3e	; 62
      002796 08                    1700 	.db #0x08	; 8
      002797 3E                    1701 	.db #0x3e	; 62
      002798 1C                    1702 	.db #0x1c	; 28
      002799 08                    1703 	.db #0x08	; 8
      00279A 1C                    1704 	.db #0x1c	; 28
      00279B 08                    1705 	.db #0x08	; 8
      00279C 1C                    1706 	.db #0x1c	; 28
      00279D 3E                    1707 	.db #0x3e	; 62
      00279E 08                    1708 	.db #0x08	; 8
      00279F 08                    1709 	.db #0x08	; 8
      0027A0 08                    1710 	.db #0x08	; 8
      0027A1 08                    1711 	.db #0x08	; 8
      0027A2 00                    1712 	.db #0x00	; 0
      0027A3 08                    1713 	.db #0x08	; 8
      0027A4 08                    1714 	.db #0x08	; 8
      0027A5 08                    1715 	.db #0x08	; 8
      0027A6 08                    1716 	.db #0x08	; 8
      0027A7 3E                    1717 	.db #0x3e	; 62
      0027A8 1C                    1718 	.db #0x1c	; 28
      0027A9 08                    1719 	.db #0x08	; 8
      0027AA 00                    1720 	.db #0x00	; 0
      0027AB 00                    1721 	.db #0x00	; 0
      0027AC 08                    1722 	.db #0x08	; 8
      0027AD 18                    1723 	.db #0x18	; 24
      0027AE 3E                    1724 	.db #0x3e	; 62
      0027AF 18                    1725 	.db #0x18	; 24
      0027B0 08                    1726 	.db #0x08	; 8
      0027B1 00                    1727 	.db #0x00	; 0
      0027B2 00                    1728 	.db #0x00	; 0
      0027B3 00                    1729 	.db #0x00	; 0
      0027B4 08                    1730 	.db #0x08	; 8
      0027B5 0C                    1731 	.db #0x0c	; 12
      0027B6 3E                    1732 	.db #0x3e	; 62
      0027B7 0C                    1733 	.db #0x0c	; 12
      0027B8 08                    1734 	.db #0x08	; 8
      0027B9 00                    1735 	.db #0x00	; 0
      0027BA 00                    1736 	.db #0x00	; 0
      0027BB 00                    1737 	.db #0x00	; 0
      0027BC 00                    1738 	.db #0x00	; 0
      0027BD 00                    1739 	.db #0x00	; 0
      0027BE 02                    1740 	.db #0x02	; 2
      0027BF 02                    1741 	.db #0x02	; 2
      0027C0 02                    1742 	.db #0x02	; 2
      0027C1 3E                    1743 	.db #0x3e	; 62
      0027C2 00                    1744 	.db #0x00	; 0
      0027C3 00                    1745 	.db #0x00	; 0
      0027C4 14                    1746 	.db #0x14	; 20
      0027C5 14                    1747 	.db #0x14	; 20
      0027C6 3E                    1748 	.db #0x3e	; 62
      0027C7 14                    1749 	.db #0x14	; 20
      0027C8 14                    1750 	.db #0x14	; 20
      0027C9 00                    1751 	.db #0x00	; 0
      0027CA 00                    1752 	.db #0x00	; 0
      0027CB 08                    1753 	.db #0x08	; 8
      0027CC 08                    1754 	.db #0x08	; 8
      0027CD 1C                    1755 	.db #0x1c	; 28
      0027CE 1C                    1756 	.db #0x1c	; 28
      0027CF 3E                    1757 	.db #0x3e	; 62
      0027D0 3E                    1758 	.db #0x3e	; 62
      0027D1 00                    1759 	.db #0x00	; 0
      0027D2 00                    1760 	.db #0x00	; 0
      0027D3 3E                    1761 	.db #0x3e	; 62
      0027D4 3E                    1762 	.db #0x3e	; 62
      0027D5 1C                    1763 	.db #0x1c	; 28
      0027D6 1C                    1764 	.db #0x1c	; 28
      0027D7 08                    1765 	.db #0x08	; 8
      0027D8 08                    1766 	.db #0x08	; 8
      0027D9 00                    1767 	.db #0x00	; 0
      0027DA 00                    1768 	.db #0x00	; 0
      0027DB 00                    1769 	.db #0x00	; 0
      0027DC 00                    1770 	.db #0x00	; 0
      0027DD 00                    1771 	.db #0x00	; 0
      0027DE 00                    1772 	.db #0x00	; 0
      0027DF 00                    1773 	.db #0x00	; 0
      0027E0 00                    1774 	.db #0x00	; 0
      0027E1 00                    1775 	.db #0x00	; 0
      0027E2 00                    1776 	.db #0x00	; 0
      0027E3 08                    1777 	.db #0x08	; 8
      0027E4 1C                    1778 	.db #0x1c	; 28
      0027E5 1C                    1779 	.db #0x1c	; 28
      0027E6 08                    1780 	.db #0x08	; 8
      0027E7 08                    1781 	.db #0x08	; 8
      0027E8 00                    1782 	.db #0x00	; 0
      0027E9 08                    1783 	.db #0x08	; 8
      0027EA 00                    1784 	.db #0x00	; 0
      0027EB 36                    1785 	.db #0x36	; 54	'6'
      0027EC 36                    1786 	.db #0x36	; 54	'6'
      0027ED 12                    1787 	.db #0x12	; 18
      0027EE 00                    1788 	.db #0x00	; 0
      0027EF 00                    1789 	.db #0x00	; 0
      0027F0 00                    1790 	.db #0x00	; 0
      0027F1 00                    1791 	.db #0x00	; 0
      0027F2 00                    1792 	.db #0x00	; 0
      0027F3 00                    1793 	.db #0x00	; 0
      0027F4 14                    1794 	.db #0x14	; 20
      0027F5 3E                    1795 	.db #0x3e	; 62
      0027F6 14                    1796 	.db #0x14	; 20
      0027F7 14                    1797 	.db #0x14	; 20
      0027F8 3E                    1798 	.db #0x3e	; 62
      0027F9 14                    1799 	.db #0x14	; 20
      0027FA 00                    1800 	.db #0x00	; 0
      0027FB 04                    1801 	.db #0x04	; 4
      0027FC 1C                    1802 	.db #0x1c	; 28
      0027FD 02                    1803 	.db #0x02	; 2
      0027FE 0C                    1804 	.db #0x0c	; 12
      0027FF 10                    1805 	.db #0x10	; 16
      002800 0E                    1806 	.db #0x0e	; 14
      002801 08                    1807 	.db #0x08	; 8
      002802 00                    1808 	.db #0x00	; 0
      002803 26                    1809 	.db #0x26	; 38
      002804 26                    1810 	.db #0x26	; 38
      002805 10                    1811 	.db #0x10	; 16
      002806 08                    1812 	.db #0x08	; 8
      002807 04                    1813 	.db #0x04	; 4
      002808 32                    1814 	.db #0x32	; 50	'2'
      002809 32                    1815 	.db #0x32	; 50	'2'
      00280A 00                    1816 	.db #0x00	; 0
      00280B 04                    1817 	.db #0x04	; 4
      00280C 0A                    1818 	.db #0x0a	; 10
      00280D 0A                    1819 	.db #0x0a	; 10
      00280E 04                    1820 	.db #0x04	; 4
      00280F 2A                    1821 	.db #0x2a	; 42
      002810 12                    1822 	.db #0x12	; 18
      002811 2C                    1823 	.db #0x2c	; 44
      002812 00                    1824 	.db #0x00	; 0
      002813 0C                    1825 	.db #0x0c	; 12
      002814 0C                    1826 	.db #0x0c	; 12
      002815 04                    1827 	.db #0x04	; 4
      002816 00                    1828 	.db #0x00	; 0
      002817 00                    1829 	.db #0x00	; 0
      002818 00                    1830 	.db #0x00	; 0
      002819 00                    1831 	.db #0x00	; 0
      00281A 00                    1832 	.db #0x00	; 0
      00281B 08                    1833 	.db #0x08	; 8
      00281C 04                    1834 	.db #0x04	; 4
      00281D 04                    1835 	.db #0x04	; 4
      00281E 04                    1836 	.db #0x04	; 4
      00281F 04                    1837 	.db #0x04	; 4
      002820 04                    1838 	.db #0x04	; 4
      002821 08                    1839 	.db #0x08	; 8
      002822 00                    1840 	.db #0x00	; 0
      002823 04                    1841 	.db #0x04	; 4
      002824 08                    1842 	.db #0x08	; 8
      002825 08                    1843 	.db #0x08	; 8
      002826 08                    1844 	.db #0x08	; 8
      002827 08                    1845 	.db #0x08	; 8
      002828 08                    1846 	.db #0x08	; 8
      002829 04                    1847 	.db #0x04	; 4
      00282A 00                    1848 	.db #0x00	; 0
      00282B 00                    1849 	.db #0x00	; 0
      00282C 14                    1850 	.db #0x14	; 20
      00282D 1C                    1851 	.db #0x1c	; 28
      00282E 3E                    1852 	.db #0x3e	; 62
      00282F 1C                    1853 	.db #0x1c	; 28
      002830 14                    1854 	.db #0x14	; 20
      002831 00                    1855 	.db #0x00	; 0
      002832 00                    1856 	.db #0x00	; 0
      002833 00                    1857 	.db #0x00	; 0
      002834 08                    1858 	.db #0x08	; 8
      002835 08                    1859 	.db #0x08	; 8
      002836 3E                    1860 	.db #0x3e	; 62
      002837 08                    1861 	.db #0x08	; 8
      002838 08                    1862 	.db #0x08	; 8
      002839 00                    1863 	.db #0x00	; 0
      00283A 00                    1864 	.db #0x00	; 0
      00283B 00                    1865 	.db #0x00	; 0
      00283C 00                    1866 	.db #0x00	; 0
      00283D 00                    1867 	.db #0x00	; 0
      00283E 00                    1868 	.db #0x00	; 0
      00283F 00                    1869 	.db #0x00	; 0
      002840 0C                    1870 	.db #0x0c	; 12
      002841 0C                    1871 	.db #0x0c	; 12
      002842 04                    1872 	.db #0x04	; 4
      002843 00                    1873 	.db #0x00	; 0
      002844 00                    1874 	.db #0x00	; 0
      002845 00                    1875 	.db #0x00	; 0
      002846 3E                    1876 	.db #0x3e	; 62
      002847 00                    1877 	.db #0x00	; 0
      002848 00                    1878 	.db #0x00	; 0
      002849 00                    1879 	.db #0x00	; 0
      00284A 00                    1880 	.db #0x00	; 0
      00284B 00                    1881 	.db #0x00	; 0
      00284C 00                    1882 	.db #0x00	; 0
      00284D 00                    1883 	.db #0x00	; 0
      00284E 00                    1884 	.db #0x00	; 0
      00284F 00                    1885 	.db #0x00	; 0
      002850 0C                    1886 	.db #0x0c	; 12
      002851 0C                    1887 	.db #0x0c	; 12
      002852 00                    1888 	.db #0x00	; 0
      002853 00                    1889 	.db #0x00	; 0
      002854 20                    1890 	.db #0x20	; 32
      002855 10                    1891 	.db #0x10	; 16
      002856 08                    1892 	.db #0x08	; 8
      002857 04                    1893 	.db #0x04	; 4
      002858 02                    1894 	.db #0x02	; 2
      002859 00                    1895 	.db #0x00	; 0
      00285A 00                    1896 	.db #0x00	; 0
      00285B 1C                    1897 	.db #0x1c	; 28
      00285C 22                    1898 	.db #0x22	; 34
      00285D 32                    1899 	.db #0x32	; 50	'2'
      00285E 2A                    1900 	.db #0x2a	; 42
      00285F 26                    1901 	.db #0x26	; 38
      002860 22                    1902 	.db #0x22	; 34
      002861 1C                    1903 	.db #0x1c	; 28
      002862 00                    1904 	.db #0x00	; 0
      002863 08                    1905 	.db #0x08	; 8
      002864 0C                    1906 	.db #0x0c	; 12
      002865 08                    1907 	.db #0x08	; 8
      002866 08                    1908 	.db #0x08	; 8
      002867 08                    1909 	.db #0x08	; 8
      002868 08                    1910 	.db #0x08	; 8
      002869 1C                    1911 	.db #0x1c	; 28
      00286A 00                    1912 	.db #0x00	; 0
      00286B 1C                    1913 	.db #0x1c	; 28
      00286C 22                    1914 	.db #0x22	; 34
      00286D 20                    1915 	.db #0x20	; 32
      00286E 18                    1916 	.db #0x18	; 24
      00286F 04                    1917 	.db #0x04	; 4
      002870 02                    1918 	.db #0x02	; 2
      002871 3E                    1919 	.db #0x3e	; 62
      002872 00                    1920 	.db #0x00	; 0
      002873 1C                    1921 	.db #0x1c	; 28
      002874 22                    1922 	.db #0x22	; 34
      002875 20                    1923 	.db #0x20	; 32
      002876 1C                    1924 	.db #0x1c	; 28
      002877 20                    1925 	.db #0x20	; 32
      002878 22                    1926 	.db #0x22	; 34
      002879 1C                    1927 	.db #0x1c	; 28
      00287A 00                    1928 	.db #0x00	; 0
      00287B 10                    1929 	.db #0x10	; 16
      00287C 18                    1930 	.db #0x18	; 24
      00287D 14                    1931 	.db #0x14	; 20
      00287E 12                    1932 	.db #0x12	; 18
      00287F 3E                    1933 	.db #0x3e	; 62
      002880 10                    1934 	.db #0x10	; 16
      002881 10                    1935 	.db #0x10	; 16
      002882 00                    1936 	.db #0x00	; 0
      002883 3E                    1937 	.db #0x3e	; 62
      002884 02                    1938 	.db #0x02	; 2
      002885 02                    1939 	.db #0x02	; 2
      002886 1E                    1940 	.db #0x1e	; 30
      002887 20                    1941 	.db #0x20	; 32
      002888 22                    1942 	.db #0x22	; 34
      002889 1C                    1943 	.db #0x1c	; 28
      00288A 00                    1944 	.db #0x00	; 0
      00288B 18                    1945 	.db #0x18	; 24
      00288C 04                    1946 	.db #0x04	; 4
      00288D 02                    1947 	.db #0x02	; 2
      00288E 1E                    1948 	.db #0x1e	; 30
      00288F 22                    1949 	.db #0x22	; 34
      002890 22                    1950 	.db #0x22	; 34
      002891 1C                    1951 	.db #0x1c	; 28
      002892 00                    1952 	.db #0x00	; 0
      002893 3E                    1953 	.db #0x3e	; 62
      002894 20                    1954 	.db #0x20	; 32
      002895 10                    1955 	.db #0x10	; 16
      002896 08                    1956 	.db #0x08	; 8
      002897 04                    1957 	.db #0x04	; 4
      002898 04                    1958 	.db #0x04	; 4
      002899 04                    1959 	.db #0x04	; 4
      00289A 00                    1960 	.db #0x00	; 0
      00289B 1C                    1961 	.db #0x1c	; 28
      00289C 22                    1962 	.db #0x22	; 34
      00289D 22                    1963 	.db #0x22	; 34
      00289E 1C                    1964 	.db #0x1c	; 28
      00289F 22                    1965 	.db #0x22	; 34
      0028A0 22                    1966 	.db #0x22	; 34
      0028A1 1C                    1967 	.db #0x1c	; 28
      0028A2 00                    1968 	.db #0x00	; 0
      0028A3 1C                    1969 	.db #0x1c	; 28
      0028A4 22                    1970 	.db #0x22	; 34
      0028A5 22                    1971 	.db #0x22	; 34
      0028A6 3C                    1972 	.db #0x3c	; 60
      0028A7 20                    1973 	.db #0x20	; 32
      0028A8 10                    1974 	.db #0x10	; 16
      0028A9 0C                    1975 	.db #0x0c	; 12
      0028AA 00                    1976 	.db #0x00	; 0
      0028AB 00                    1977 	.db #0x00	; 0
      0028AC 00                    1978 	.db #0x00	; 0
      0028AD 0C                    1979 	.db #0x0c	; 12
      0028AE 0C                    1980 	.db #0x0c	; 12
      0028AF 00                    1981 	.db #0x00	; 0
      0028B0 0C                    1982 	.db #0x0c	; 12
      0028B1 0C                    1983 	.db #0x0c	; 12
      0028B2 00                    1984 	.db #0x00	; 0
      0028B3 00                    1985 	.db #0x00	; 0
      0028B4 00                    1986 	.db #0x00	; 0
      0028B5 0C                    1987 	.db #0x0c	; 12
      0028B6 0C                    1988 	.db #0x0c	; 12
      0028B7 00                    1989 	.db #0x00	; 0
      0028B8 0C                    1990 	.db #0x0c	; 12
      0028B9 0C                    1991 	.db #0x0c	; 12
      0028BA 04                    1992 	.db #0x04	; 4
      0028BB 10                    1993 	.db #0x10	; 16
      0028BC 08                    1994 	.db #0x08	; 8
      0028BD 04                    1995 	.db #0x04	; 4
      0028BE 02                    1996 	.db #0x02	; 2
      0028BF 04                    1997 	.db #0x04	; 4
      0028C0 08                    1998 	.db #0x08	; 8
      0028C1 10                    1999 	.db #0x10	; 16
      0028C2 00                    2000 	.db #0x00	; 0
      0028C3 00                    2001 	.db #0x00	; 0
      0028C4 00                    2002 	.db #0x00	; 0
      0028C5 3E                    2003 	.db #0x3e	; 62
      0028C6 00                    2004 	.db #0x00	; 0
      0028C7 00                    2005 	.db #0x00	; 0
      0028C8 3E                    2006 	.db #0x3e	; 62
      0028C9 00                    2007 	.db #0x00	; 0
      0028CA 00                    2008 	.db #0x00	; 0
      0028CB 04                    2009 	.db #0x04	; 4
      0028CC 08                    2010 	.db #0x08	; 8
      0028CD 10                    2011 	.db #0x10	; 16
      0028CE 20                    2012 	.db #0x20	; 32
      0028CF 10                    2013 	.db #0x10	; 16
      0028D0 08                    2014 	.db #0x08	; 8
      0028D1 04                    2015 	.db #0x04	; 4
      0028D2 00                    2016 	.db #0x00	; 0
      0028D3 1C                    2017 	.db #0x1c	; 28
      0028D4 22                    2018 	.db #0x22	; 34
      0028D5 20                    2019 	.db #0x20	; 32
      0028D6 18                    2020 	.db #0x18	; 24
      0028D7 08                    2021 	.db #0x08	; 8
      0028D8 00                    2022 	.db #0x00	; 0
      0028D9 08                    2023 	.db #0x08	; 8
      0028DA 00                    2024 	.db #0x00	; 0
      0028DB 1C                    2025 	.db #0x1c	; 28
      0028DC 22                    2026 	.db #0x22	; 34
      0028DD 3A                    2027 	.db #0x3a	; 58
      0028DE 2A                    2028 	.db #0x2a	; 42
      0028DF 3A                    2029 	.db #0x3a	; 58
      0028E0 02                    2030 	.db #0x02	; 2
      0028E1 1C                    2031 	.db #0x1c	; 28
      0028E2 00                    2032 	.db #0x00	; 0
      0028E3 1C                    2033 	.db #0x1c	; 28
      0028E4 22                    2034 	.db #0x22	; 34
      0028E5 22                    2035 	.db #0x22	; 34
      0028E6 22                    2036 	.db #0x22	; 34
      0028E7 3E                    2037 	.db #0x3e	; 62
      0028E8 22                    2038 	.db #0x22	; 34
      0028E9 22                    2039 	.db #0x22	; 34
      0028EA 00                    2040 	.db #0x00	; 0
      0028EB 1E                    2041 	.db #0x1e	; 30
      0028EC 22                    2042 	.db #0x22	; 34
      0028ED 22                    2043 	.db #0x22	; 34
      0028EE 1E                    2044 	.db #0x1e	; 30
      0028EF 22                    2045 	.db #0x22	; 34
      0028F0 22                    2046 	.db #0x22	; 34
      0028F1 1E                    2047 	.db #0x1e	; 30
      0028F2 00                    2048 	.db #0x00	; 0
      0028F3 1C                    2049 	.db #0x1c	; 28
      0028F4 22                    2050 	.db #0x22	; 34
      0028F5 02                    2051 	.db #0x02	; 2
      0028F6 02                    2052 	.db #0x02	; 2
      0028F7 02                    2053 	.db #0x02	; 2
      0028F8 22                    2054 	.db #0x22	; 34
      0028F9 1C                    2055 	.db #0x1c	; 28
      0028FA 00                    2056 	.db #0x00	; 0
      0028FB 1E                    2057 	.db #0x1e	; 30
      0028FC 22                    2058 	.db #0x22	; 34
      0028FD 22                    2059 	.db #0x22	; 34
      0028FE 22                    2060 	.db #0x22	; 34
      0028FF 22                    2061 	.db #0x22	; 34
      002900 22                    2062 	.db #0x22	; 34
      002901 1E                    2063 	.db #0x1e	; 30
      002902 00                    2064 	.db #0x00	; 0
      002903 3E                    2065 	.db #0x3e	; 62
      002904 02                    2066 	.db #0x02	; 2
      002905 02                    2067 	.db #0x02	; 2
      002906 1E                    2068 	.db #0x1e	; 30
      002907 02                    2069 	.db #0x02	; 2
      002908 02                    2070 	.db #0x02	; 2
      002909 3E                    2071 	.db #0x3e	; 62
      00290A 00                    2072 	.db #0x00	; 0
      00290B 3E                    2073 	.db #0x3e	; 62
      00290C 02                    2074 	.db #0x02	; 2
      00290D 02                    2075 	.db #0x02	; 2
      00290E 1E                    2076 	.db #0x1e	; 30
      00290F 02                    2077 	.db #0x02	; 2
      002910 02                    2078 	.db #0x02	; 2
      002911 02                    2079 	.db #0x02	; 2
      002912 00                    2080 	.db #0x00	; 0
      002913 1C                    2081 	.db #0x1c	; 28
      002914 22                    2082 	.db #0x22	; 34
      002915 02                    2083 	.db #0x02	; 2
      002916 3A                    2084 	.db #0x3a	; 58
      002917 22                    2085 	.db #0x22	; 34
      002918 22                    2086 	.db #0x22	; 34
      002919 3C                    2087 	.db #0x3c	; 60
      00291A 00                    2088 	.db #0x00	; 0
      00291B 22                    2089 	.db #0x22	; 34
      00291C 22                    2090 	.db #0x22	; 34
      00291D 22                    2091 	.db #0x22	; 34
      00291E 3E                    2092 	.db #0x3e	; 62
      00291F 22                    2093 	.db #0x22	; 34
      002920 22                    2094 	.db #0x22	; 34
      002921 22                    2095 	.db #0x22	; 34
      002922 00                    2096 	.db #0x00	; 0
      002923 1C                    2097 	.db #0x1c	; 28
      002924 08                    2098 	.db #0x08	; 8
      002925 08                    2099 	.db #0x08	; 8
      002926 08                    2100 	.db #0x08	; 8
      002927 08                    2101 	.db #0x08	; 8
      002928 08                    2102 	.db #0x08	; 8
      002929 1C                    2103 	.db #0x1c	; 28
      00292A 00                    2104 	.db #0x00	; 0
      00292B 20                    2105 	.db #0x20	; 32
      00292C 20                    2106 	.db #0x20	; 32
      00292D 20                    2107 	.db #0x20	; 32
      00292E 20                    2108 	.db #0x20	; 32
      00292F 22                    2109 	.db #0x22	; 34
      002930 22                    2110 	.db #0x22	; 34
      002931 1C                    2111 	.db #0x1c	; 28
      002932 00                    2112 	.db #0x00	; 0
      002933 22                    2113 	.db #0x22	; 34
      002934 12                    2114 	.db #0x12	; 18
      002935 0A                    2115 	.db #0x0a	; 10
      002936 06                    2116 	.db #0x06	; 6
      002937 0A                    2117 	.db #0x0a	; 10
      002938 12                    2118 	.db #0x12	; 18
      002939 22                    2119 	.db #0x22	; 34
      00293A 00                    2120 	.db #0x00	; 0
      00293B 02                    2121 	.db #0x02	; 2
      00293C 02                    2122 	.db #0x02	; 2
      00293D 02                    2123 	.db #0x02	; 2
      00293E 02                    2124 	.db #0x02	; 2
      00293F 02                    2125 	.db #0x02	; 2
      002940 02                    2126 	.db #0x02	; 2
      002941 3E                    2127 	.db #0x3e	; 62
      002942 00                    2128 	.db #0x00	; 0
      002943 22                    2129 	.db #0x22	; 34
      002944 36                    2130 	.db #0x36	; 54	'6'
      002945 2A                    2131 	.db #0x2a	; 42
      002946 22                    2132 	.db #0x22	; 34
      002947 22                    2133 	.db #0x22	; 34
      002948 22                    2134 	.db #0x22	; 34
      002949 22                    2135 	.db #0x22	; 34
      00294A 00                    2136 	.db #0x00	; 0
      00294B 22                    2137 	.db #0x22	; 34
      00294C 26                    2138 	.db #0x26	; 38
      00294D 2A                    2139 	.db #0x2a	; 42
      00294E 32                    2140 	.db #0x32	; 50	'2'
      00294F 22                    2141 	.db #0x22	; 34
      002950 22                    2142 	.db #0x22	; 34
      002951 22                    2143 	.db #0x22	; 34
      002952 00                    2144 	.db #0x00	; 0
      002953 1C                    2145 	.db #0x1c	; 28
      002954 22                    2146 	.db #0x22	; 34
      002955 22                    2147 	.db #0x22	; 34
      002956 22                    2148 	.db #0x22	; 34
      002957 22                    2149 	.db #0x22	; 34
      002958 22                    2150 	.db #0x22	; 34
      002959 1C                    2151 	.db #0x1c	; 28
      00295A 00                    2152 	.db #0x00	; 0
      00295B 1E                    2153 	.db #0x1e	; 30
      00295C 22                    2154 	.db #0x22	; 34
      00295D 22                    2155 	.db #0x22	; 34
      00295E 1E                    2156 	.db #0x1e	; 30
      00295F 02                    2157 	.db #0x02	; 2
      002960 02                    2158 	.db #0x02	; 2
      002961 02                    2159 	.db #0x02	; 2
      002962 00                    2160 	.db #0x00	; 0
      002963 1C                    2161 	.db #0x1c	; 28
      002964 22                    2162 	.db #0x22	; 34
      002965 22                    2163 	.db #0x22	; 34
      002966 22                    2164 	.db #0x22	; 34
      002967 2A                    2165 	.db #0x2a	; 42
      002968 12                    2166 	.db #0x12	; 18
      002969 2C                    2167 	.db #0x2c	; 44
      00296A 00                    2168 	.db #0x00	; 0
      00296B 1E                    2169 	.db #0x1e	; 30
      00296C 22                    2170 	.db #0x22	; 34
      00296D 22                    2171 	.db #0x22	; 34
      00296E 1E                    2172 	.db #0x1e	; 30
      00296F 12                    2173 	.db #0x12	; 18
      002970 22                    2174 	.db #0x22	; 34
      002971 22                    2175 	.db #0x22	; 34
      002972 00                    2176 	.db #0x00	; 0
      002973 1C                    2177 	.db #0x1c	; 28
      002974 22                    2178 	.db #0x22	; 34
      002975 02                    2179 	.db #0x02	; 2
      002976 1C                    2180 	.db #0x1c	; 28
      002977 20                    2181 	.db #0x20	; 32
      002978 22                    2182 	.db #0x22	; 34
      002979 1C                    2183 	.db #0x1c	; 28
      00297A 00                    2184 	.db #0x00	; 0
      00297B 3E                    2185 	.db #0x3e	; 62
      00297C 08                    2186 	.db #0x08	; 8
      00297D 08                    2187 	.db #0x08	; 8
      00297E 08                    2188 	.db #0x08	; 8
      00297F 08                    2189 	.db #0x08	; 8
      002980 08                    2190 	.db #0x08	; 8
      002981 08                    2191 	.db #0x08	; 8
      002982 00                    2192 	.db #0x00	; 0
      002983 22                    2193 	.db #0x22	; 34
      002984 22                    2194 	.db #0x22	; 34
      002985 22                    2195 	.db #0x22	; 34
      002986 22                    2196 	.db #0x22	; 34
      002987 22                    2197 	.db #0x22	; 34
      002988 22                    2198 	.db #0x22	; 34
      002989 1C                    2199 	.db #0x1c	; 28
      00298A 00                    2200 	.db #0x00	; 0
      00298B 22                    2201 	.db #0x22	; 34
      00298C 22                    2202 	.db #0x22	; 34
      00298D 22                    2203 	.db #0x22	; 34
      00298E 22                    2204 	.db #0x22	; 34
      00298F 22                    2205 	.db #0x22	; 34
      002990 14                    2206 	.db #0x14	; 20
      002991 08                    2207 	.db #0x08	; 8
      002992 00                    2208 	.db #0x00	; 0
      002993 22                    2209 	.db #0x22	; 34
      002994 22                    2210 	.db #0x22	; 34
      002995 2A                    2211 	.db #0x2a	; 42
      002996 2A                    2212 	.db #0x2a	; 42
      002997 2A                    2213 	.db #0x2a	; 42
      002998 2A                    2214 	.db #0x2a	; 42
      002999 14                    2215 	.db #0x14	; 20
      00299A 00                    2216 	.db #0x00	; 0
      00299B 22                    2217 	.db #0x22	; 34
      00299C 22                    2218 	.db #0x22	; 34
      00299D 14                    2219 	.db #0x14	; 20
      00299E 08                    2220 	.db #0x08	; 8
      00299F 14                    2221 	.db #0x14	; 20
      0029A0 22                    2222 	.db #0x22	; 34
      0029A1 22                    2223 	.db #0x22	; 34
      0029A2 00                    2224 	.db #0x00	; 0
      0029A3 22                    2225 	.db #0x22	; 34
      0029A4 22                    2226 	.db #0x22	; 34
      0029A5 22                    2227 	.db #0x22	; 34
      0029A6 14                    2228 	.db #0x14	; 20
      0029A7 08                    2229 	.db #0x08	; 8
      0029A8 08                    2230 	.db #0x08	; 8
      0029A9 08                    2231 	.db #0x08	; 8
      0029AA 00                    2232 	.db #0x00	; 0
      0029AB 1E                    2233 	.db #0x1e	; 30
      0029AC 10                    2234 	.db #0x10	; 16
      0029AD 08                    2235 	.db #0x08	; 8
      0029AE 04                    2236 	.db #0x04	; 4
      0029AF 02                    2237 	.db #0x02	; 2
      0029B0 02                    2238 	.db #0x02	; 2
      0029B1 1E                    2239 	.db #0x1e	; 30
      0029B2 00                    2240 	.db #0x00	; 0
      0029B3 1C                    2241 	.db #0x1c	; 28
      0029B4 04                    2242 	.db #0x04	; 4
      0029B5 04                    2243 	.db #0x04	; 4
      0029B6 04                    2244 	.db #0x04	; 4
      0029B7 04                    2245 	.db #0x04	; 4
      0029B8 04                    2246 	.db #0x04	; 4
      0029B9 1C                    2247 	.db #0x1c	; 28
      0029BA 00                    2248 	.db #0x00	; 0
      0029BB 00                    2249 	.db #0x00	; 0
      0029BC 02                    2250 	.db #0x02	; 2
      0029BD 04                    2251 	.db #0x04	; 4
      0029BE 08                    2252 	.db #0x08	; 8
      0029BF 10                    2253 	.db #0x10	; 16
      0029C0 20                    2254 	.db #0x20	; 32
      0029C1 00                    2255 	.db #0x00	; 0
      0029C2 00                    2256 	.db #0x00	; 0
      0029C3 1C                    2257 	.db #0x1c	; 28
      0029C4 10                    2258 	.db #0x10	; 16
      0029C5 10                    2259 	.db #0x10	; 16
      0029C6 10                    2260 	.db #0x10	; 16
      0029C7 10                    2261 	.db #0x10	; 16
      0029C8 10                    2262 	.db #0x10	; 16
      0029C9 1C                    2263 	.db #0x1c	; 28
      0029CA 00                    2264 	.db #0x00	; 0
      0029CB 08                    2265 	.db #0x08	; 8
      0029CC 14                    2266 	.db #0x14	; 20
      0029CD 22                    2267 	.db #0x22	; 34
      0029CE 00                    2268 	.db #0x00	; 0
      0029CF 00                    2269 	.db #0x00	; 0
      0029D0 00                    2270 	.db #0x00	; 0
      0029D1 00                    2271 	.db #0x00	; 0
      0029D2 00                    2272 	.db #0x00	; 0
      0029D3 00                    2273 	.db #0x00	; 0
      0029D4 00                    2274 	.db #0x00	; 0
      0029D5 00                    2275 	.db #0x00	; 0
      0029D6 00                    2276 	.db #0x00	; 0
      0029D7 00                    2277 	.db #0x00	; 0
      0029D8 00                    2278 	.db #0x00	; 0
      0029D9 00                    2279 	.db #0x00	; 0
      0029DA 3F                    2280 	.db #0x3f	; 63
      0029DB 0C                    2281 	.db #0x0c	; 12
      0029DC 0C                    2282 	.db #0x0c	; 12
      0029DD 08                    2283 	.db #0x08	; 8
      0029DE 00                    2284 	.db #0x00	; 0
      0029DF 00                    2285 	.db #0x00	; 0
      0029E0 00                    2286 	.db #0x00	; 0
      0029E1 00                    2287 	.db #0x00	; 0
      0029E2 00                    2288 	.db #0x00	; 0
      0029E3 00                    2289 	.db #0x00	; 0
      0029E4 00                    2290 	.db #0x00	; 0
      0029E5 1C                    2291 	.db #0x1c	; 28
      0029E6 20                    2292 	.db #0x20	; 32
      0029E7 3C                    2293 	.db #0x3c	; 60
      0029E8 22                    2294 	.db #0x22	; 34
      0029E9 3C                    2295 	.db #0x3c	; 60
      0029EA 00                    2296 	.db #0x00	; 0
      0029EB 02                    2297 	.db #0x02	; 2
      0029EC 02                    2298 	.db #0x02	; 2
      0029ED 1E                    2299 	.db #0x1e	; 30
      0029EE 22                    2300 	.db #0x22	; 34
      0029EF 22                    2301 	.db #0x22	; 34
      0029F0 22                    2302 	.db #0x22	; 34
      0029F1 1E                    2303 	.db #0x1e	; 30
      0029F2 00                    2304 	.db #0x00	; 0
      0029F3 00                    2305 	.db #0x00	; 0
      0029F4 00                    2306 	.db #0x00	; 0
      0029F5 1C                    2307 	.db #0x1c	; 28
      0029F6 22                    2308 	.db #0x22	; 34
      0029F7 02                    2309 	.db #0x02	; 2
      0029F8 22                    2310 	.db #0x22	; 34
      0029F9 1C                    2311 	.db #0x1c	; 28
      0029FA 00                    2312 	.db #0x00	; 0
      0029FB 20                    2313 	.db #0x20	; 32
      0029FC 20                    2314 	.db #0x20	; 32
      0029FD 3C                    2315 	.db #0x3c	; 60
      0029FE 22                    2316 	.db #0x22	; 34
      0029FF 22                    2317 	.db #0x22	; 34
      002A00 22                    2318 	.db #0x22	; 34
      002A01 3C                    2319 	.db #0x3c	; 60
      002A02 00                    2320 	.db #0x00	; 0
      002A03 00                    2321 	.db #0x00	; 0
      002A04 00                    2322 	.db #0x00	; 0
      002A05 1C                    2323 	.db #0x1c	; 28
      002A06 22                    2324 	.db #0x22	; 34
      002A07 1E                    2325 	.db #0x1e	; 30
      002A08 02                    2326 	.db #0x02	; 2
      002A09 1C                    2327 	.db #0x1c	; 28
      002A0A 00                    2328 	.db #0x00	; 0
      002A0B 18                    2329 	.db #0x18	; 24
      002A0C 04                    2330 	.db #0x04	; 4
      002A0D 04                    2331 	.db #0x04	; 4
      002A0E 1E                    2332 	.db #0x1e	; 30
      002A0F 04                    2333 	.db #0x04	; 4
      002A10 04                    2334 	.db #0x04	; 4
      002A11 04                    2335 	.db #0x04	; 4
      002A12 00                    2336 	.db #0x00	; 0
      002A13 00                    2337 	.db #0x00	; 0
      002A14 00                    2338 	.db #0x00	; 0
      002A15 3C                    2339 	.db #0x3c	; 60
      002A16 22                    2340 	.db #0x22	; 34
      002A17 22                    2341 	.db #0x22	; 34
      002A18 3C                    2342 	.db #0x3c	; 60
      002A19 20                    2343 	.db #0x20	; 32
      002A1A 1C                    2344 	.db #0x1c	; 28
      002A1B 02                    2345 	.db #0x02	; 2
      002A1C 02                    2346 	.db #0x02	; 2
      002A1D 0E                    2347 	.db #0x0e	; 14
      002A1E 12                    2348 	.db #0x12	; 18
      002A1F 12                    2349 	.db #0x12	; 18
      002A20 12                    2350 	.db #0x12	; 18
      002A21 12                    2351 	.db #0x12	; 18
      002A22 00                    2352 	.db #0x00	; 0
      002A23 08                    2353 	.db #0x08	; 8
      002A24 00                    2354 	.db #0x00	; 0
      002A25 08                    2355 	.db #0x08	; 8
      002A26 08                    2356 	.db #0x08	; 8
      002A27 08                    2357 	.db #0x08	; 8
      002A28 08                    2358 	.db #0x08	; 8
      002A29 18                    2359 	.db #0x18	; 24
      002A2A 00                    2360 	.db #0x00	; 0
      002A2B 10                    2361 	.db #0x10	; 16
      002A2C 00                    2362 	.db #0x00	; 0
      002A2D 18                    2363 	.db #0x18	; 24
      002A2E 10                    2364 	.db #0x10	; 16
      002A2F 10                    2365 	.db #0x10	; 16
      002A30 10                    2366 	.db #0x10	; 16
      002A31 12                    2367 	.db #0x12	; 18
      002A32 0C                    2368 	.db #0x0c	; 12
      002A33 02                    2369 	.db #0x02	; 2
      002A34 02                    2370 	.db #0x02	; 2
      002A35 12                    2371 	.db #0x12	; 18
      002A36 0A                    2372 	.db #0x0a	; 10
      002A37 06                    2373 	.db #0x06	; 6
      002A38 0A                    2374 	.db #0x0a	; 10
      002A39 12                    2375 	.db #0x12	; 18
      002A3A 00                    2376 	.db #0x00	; 0
      002A3B 08                    2377 	.db #0x08	; 8
      002A3C 08                    2378 	.db #0x08	; 8
      002A3D 08                    2379 	.db #0x08	; 8
      002A3E 08                    2380 	.db #0x08	; 8
      002A3F 08                    2381 	.db #0x08	; 8
      002A40 08                    2382 	.db #0x08	; 8
      002A41 18                    2383 	.db #0x18	; 24
      002A42 00                    2384 	.db #0x00	; 0
      002A43 00                    2385 	.db #0x00	; 0
      002A44 00                    2386 	.db #0x00	; 0
      002A45 16                    2387 	.db #0x16	; 22
      002A46 2A                    2388 	.db #0x2a	; 42
      002A47 2A                    2389 	.db #0x2a	; 42
      002A48 22                    2390 	.db #0x22	; 34
      002A49 22                    2391 	.db #0x22	; 34
      002A4A 00                    2392 	.db #0x00	; 0
      002A4B 00                    2393 	.db #0x00	; 0
      002A4C 00                    2394 	.db #0x00	; 0
      002A4D 0E                    2395 	.db #0x0e	; 14
      002A4E 12                    2396 	.db #0x12	; 18
      002A4F 12                    2397 	.db #0x12	; 18
      002A50 12                    2398 	.db #0x12	; 18
      002A51 12                    2399 	.db #0x12	; 18
      002A52 00                    2400 	.db #0x00	; 0
      002A53 00                    2401 	.db #0x00	; 0
      002A54 00                    2402 	.db #0x00	; 0
      002A55 1C                    2403 	.db #0x1c	; 28
      002A56 22                    2404 	.db #0x22	; 34
      002A57 22                    2405 	.db #0x22	; 34
      002A58 22                    2406 	.db #0x22	; 34
      002A59 1C                    2407 	.db #0x1c	; 28
      002A5A 00                    2408 	.db #0x00	; 0
      002A5B 00                    2409 	.db #0x00	; 0
      002A5C 00                    2410 	.db #0x00	; 0
      002A5D 1E                    2411 	.db #0x1e	; 30
      002A5E 22                    2412 	.db #0x22	; 34
      002A5F 22                    2413 	.db #0x22	; 34
      002A60 22                    2414 	.db #0x22	; 34
      002A61 1E                    2415 	.db #0x1e	; 30
      002A62 02                    2416 	.db #0x02	; 2
      002A63 00                    2417 	.db #0x00	; 0
      002A64 00                    2418 	.db #0x00	; 0
      002A65 3C                    2419 	.db #0x3c	; 60
      002A66 22                    2420 	.db #0x22	; 34
      002A67 22                    2421 	.db #0x22	; 34
      002A68 22                    2422 	.db #0x22	; 34
      002A69 3C                    2423 	.db #0x3c	; 60
      002A6A 20                    2424 	.db #0x20	; 32
      002A6B 00                    2425 	.db #0x00	; 0
      002A6C 00                    2426 	.db #0x00	; 0
      002A6D 1A                    2427 	.db #0x1a	; 26
      002A6E 24                    2428 	.db #0x24	; 36
      002A6F 04                    2429 	.db #0x04	; 4
      002A70 04                    2430 	.db #0x04	; 4
      002A71 0E                    2431 	.db #0x0e	; 14
      002A72 00                    2432 	.db #0x00	; 0
      002A73 00                    2433 	.db #0x00	; 0
      002A74 00                    2434 	.db #0x00	; 0
      002A75 1C                    2435 	.db #0x1c	; 28
      002A76 02                    2436 	.db #0x02	; 2
      002A77 1C                    2437 	.db #0x1c	; 28
      002A78 20                    2438 	.db #0x20	; 32
      002A79 1C                    2439 	.db #0x1c	; 28
      002A7A 00                    2440 	.db #0x00	; 0
      002A7B 00                    2441 	.db #0x00	; 0
      002A7C 04                    2442 	.db #0x04	; 4
      002A7D 1E                    2443 	.db #0x1e	; 30
      002A7E 04                    2444 	.db #0x04	; 4
      002A7F 04                    2445 	.db #0x04	; 4
      002A80 14                    2446 	.db #0x14	; 20
      002A81 08                    2447 	.db #0x08	; 8
      002A82 00                    2448 	.db #0x00	; 0
      002A83 00                    2449 	.db #0x00	; 0
      002A84 00                    2450 	.db #0x00	; 0
      002A85 12                    2451 	.db #0x12	; 18
      002A86 12                    2452 	.db #0x12	; 18
      002A87 12                    2453 	.db #0x12	; 18
      002A88 1A                    2454 	.db #0x1a	; 26
      002A89 14                    2455 	.db #0x14	; 20
      002A8A 00                    2456 	.db #0x00	; 0
      002A8B 00                    2457 	.db #0x00	; 0
      002A8C 00                    2458 	.db #0x00	; 0
      002A8D 22                    2459 	.db #0x22	; 34
      002A8E 22                    2460 	.db #0x22	; 34
      002A8F 22                    2461 	.db #0x22	; 34
      002A90 14                    2462 	.db #0x14	; 20
      002A91 08                    2463 	.db #0x08	; 8
      002A92 00                    2464 	.db #0x00	; 0
      002A93 00                    2465 	.db #0x00	; 0
      002A94 00                    2466 	.db #0x00	; 0
      002A95 22                    2467 	.db #0x22	; 34
      002A96 22                    2468 	.db #0x22	; 34
      002A97 2A                    2469 	.db #0x2a	; 42
      002A98 3E                    2470 	.db #0x3e	; 62
      002A99 14                    2471 	.db #0x14	; 20
      002A9A 00                    2472 	.db #0x00	; 0
      002A9B 00                    2473 	.db #0x00	; 0
      002A9C 00                    2474 	.db #0x00	; 0
      002A9D 12                    2475 	.db #0x12	; 18
      002A9E 12                    2476 	.db #0x12	; 18
      002A9F 0C                    2477 	.db #0x0c	; 12
      002AA0 12                    2478 	.db #0x12	; 18
      002AA1 12                    2479 	.db #0x12	; 18
      002AA2 00                    2480 	.db #0x00	; 0
      002AA3 00                    2481 	.db #0x00	; 0
      002AA4 00                    2482 	.db #0x00	; 0
      002AA5 12                    2483 	.db #0x12	; 18
      002AA6 12                    2484 	.db #0x12	; 18
      002AA7 12                    2485 	.db #0x12	; 18
      002AA8 1C                    2486 	.db #0x1c	; 28
      002AA9 08                    2487 	.db #0x08	; 8
      002AAA 06                    2488 	.db #0x06	; 6
      002AAB 00                    2489 	.db #0x00	; 0
      002AAC 00                    2490 	.db #0x00	; 0
      002AAD 1E                    2491 	.db #0x1e	; 30
      002AAE 10                    2492 	.db #0x10	; 16
      002AAF 0C                    2493 	.db #0x0c	; 12
      002AB0 02                    2494 	.db #0x02	; 2
      002AB1 1E                    2495 	.db #0x1e	; 30
      002AB2 00                    2496 	.db #0x00	; 0
      002AB3 18                    2497 	.db #0x18	; 24
      002AB4 04                    2498 	.db #0x04	; 4
      002AB5 04                    2499 	.db #0x04	; 4
      002AB6 06                    2500 	.db #0x06	; 6
      002AB7 04                    2501 	.db #0x04	; 4
      002AB8 04                    2502 	.db #0x04	; 4
      002AB9 18                    2503 	.db #0x18	; 24
      002ABA 00                    2504 	.db #0x00	; 0
      002ABB 08                    2505 	.db #0x08	; 8
      002ABC 08                    2506 	.db #0x08	; 8
      002ABD 08                    2507 	.db #0x08	; 8
      002ABE 00                    2508 	.db #0x00	; 0
      002ABF 08                    2509 	.db #0x08	; 8
      002AC0 08                    2510 	.db #0x08	; 8
      002AC1 08                    2511 	.db #0x08	; 8
      002AC2 00                    2512 	.db #0x00	; 0
      002AC3 0C                    2513 	.db #0x0c	; 12
      002AC4 10                    2514 	.db #0x10	; 16
      002AC5 10                    2515 	.db #0x10	; 16
      002AC6 30                    2516 	.db #0x30	; 48	'0'
      002AC7 10                    2517 	.db #0x10	; 16
      002AC8 10                    2518 	.db #0x10	; 16
      002AC9 0C                    2519 	.db #0x0c	; 12
      002ACA 00                    2520 	.db #0x00	; 0
      002ACB 14                    2521 	.db #0x14	; 20
      002ACC 0A                    2522 	.db #0x0a	; 10
      002ACD 00                    2523 	.db #0x00	; 0
      002ACE 00                    2524 	.db #0x00	; 0
      002ACF 00                    2525 	.db #0x00	; 0
      002AD0 00                    2526 	.db #0x00	; 0
      002AD1 00                    2527 	.db #0x00	; 0
      002AD2 00                    2528 	.db #0x00	; 0
      002AD3 08                    2529 	.db #0x08	; 8
      002AD4 1C                    2530 	.db #0x1c	; 28
      002AD5 36                    2531 	.db #0x36	; 54	'6'
      002AD6 22                    2532 	.db #0x22	; 34
      002AD7 22                    2533 	.db #0x22	; 34
      002AD8 3E                    2534 	.db #0x3e	; 62
      002AD9 00                    2535 	.db #0x00	; 0
      002ADA 00                    2536 	.db #0x00	; 0
      002ADB 1C                    2537 	.db #0x1c	; 28
      002ADC 22                    2538 	.db #0x22	; 34
      002ADD 02                    2539 	.db #0x02	; 2
      002ADE 02                    2540 	.db #0x02	; 2
      002ADF 22                    2541 	.db #0x22	; 34
      002AE0 1C                    2542 	.db #0x1c	; 28
      002AE1 08                    2543 	.db #0x08	; 8
      002AE2 0C                    2544 	.db #0x0c	; 12
      002AE3 12                    2545 	.db #0x12	; 18
      002AE4 00                    2546 	.db #0x00	; 0
      002AE5 12                    2547 	.db #0x12	; 18
      002AE6 12                    2548 	.db #0x12	; 18
      002AE7 12                    2549 	.db #0x12	; 18
      002AE8 1A                    2550 	.db #0x1a	; 26
      002AE9 14                    2551 	.db #0x14	; 20
      002AEA 00                    2552 	.db #0x00	; 0
      002AEB 30                    2553 	.db #0x30	; 48	'0'
      002AEC 00                    2554 	.db #0x00	; 0
      002AED 1C                    2555 	.db #0x1c	; 28
      002AEE 22                    2556 	.db #0x22	; 34
      002AEF 1E                    2557 	.db #0x1e	; 30
      002AF0 02                    2558 	.db #0x02	; 2
      002AF1 1C                    2559 	.db #0x1c	; 28
      002AF2 00                    2560 	.db #0x00	; 0
      002AF3 1C                    2561 	.db #0x1c	; 28
      002AF4 00                    2562 	.db #0x00	; 0
      002AF5 1C                    2563 	.db #0x1c	; 28
      002AF6 20                    2564 	.db #0x20	; 32
      002AF7 3C                    2565 	.db #0x3c	; 60
      002AF8 22                    2566 	.db #0x22	; 34
      002AF9 3C                    2567 	.db #0x3c	; 60
      002AFA 00                    2568 	.db #0x00	; 0
      002AFB 14                    2569 	.db #0x14	; 20
      002AFC 00                    2570 	.db #0x00	; 0
      002AFD 1C                    2571 	.db #0x1c	; 28
      002AFE 20                    2572 	.db #0x20	; 32
      002AFF 3C                    2573 	.db #0x3c	; 60
      002B00 22                    2574 	.db #0x22	; 34
      002B01 3C                    2575 	.db #0x3c	; 60
      002B02 00                    2576 	.db #0x00	; 0
      002B03 0C                    2577 	.db #0x0c	; 12
      002B04 00                    2578 	.db #0x00	; 0
      002B05 1C                    2579 	.db #0x1c	; 28
      002B06 20                    2580 	.db #0x20	; 32
      002B07 3C                    2581 	.db #0x3c	; 60
      002B08 22                    2582 	.db #0x22	; 34
      002B09 3C                    2583 	.db #0x3c	; 60
      002B0A 00                    2584 	.db #0x00	; 0
      002B0B 1C                    2585 	.db #0x1c	; 28
      002B0C 14                    2586 	.db #0x14	; 20
      002B0D 1C                    2587 	.db #0x1c	; 28
      002B0E 20                    2588 	.db #0x20	; 32
      002B0F 3C                    2589 	.db #0x3c	; 60
      002B10 22                    2590 	.db #0x22	; 34
      002B11 3C                    2591 	.db #0x3c	; 60
      002B12 00                    2592 	.db #0x00	; 0
      002B13 00                    2593 	.db #0x00	; 0
      002B14 1C                    2594 	.db #0x1c	; 28
      002B15 22                    2595 	.db #0x22	; 34
      002B16 02                    2596 	.db #0x02	; 2
      002B17 22                    2597 	.db #0x22	; 34
      002B18 1C                    2598 	.db #0x1c	; 28
      002B19 08                    2599 	.db #0x08	; 8
      002B1A 0C                    2600 	.db #0x0c	; 12
      002B1B 1C                    2601 	.db #0x1c	; 28
      002B1C 00                    2602 	.db #0x00	; 0
      002B1D 1C                    2603 	.db #0x1c	; 28
      002B1E 22                    2604 	.db #0x22	; 34
      002B1F 1E                    2605 	.db #0x1e	; 30
      002B20 02                    2606 	.db #0x02	; 2
      002B21 1C                    2607 	.db #0x1c	; 28
      002B22 00                    2608 	.db #0x00	; 0
      002B23 14                    2609 	.db #0x14	; 20
      002B24 00                    2610 	.db #0x00	; 0
      002B25 1C                    2611 	.db #0x1c	; 28
      002B26 22                    2612 	.db #0x22	; 34
      002B27 1E                    2613 	.db #0x1e	; 30
      002B28 02                    2614 	.db #0x02	; 2
      002B29 1C                    2615 	.db #0x1c	; 28
      002B2A 00                    2616 	.db #0x00	; 0
      002B2B 0C                    2617 	.db #0x0c	; 12
      002B2C 00                    2618 	.db #0x00	; 0
      002B2D 1C                    2619 	.db #0x1c	; 28
      002B2E 22                    2620 	.db #0x22	; 34
      002B2F 1E                    2621 	.db #0x1e	; 30
      002B30 02                    2622 	.db #0x02	; 2
      002B31 1C                    2623 	.db #0x1c	; 28
      002B32 00                    2624 	.db #0x00	; 0
      002B33 14                    2625 	.db #0x14	; 20
      002B34 00                    2626 	.db #0x00	; 0
      002B35 08                    2627 	.db #0x08	; 8
      002B36 08                    2628 	.db #0x08	; 8
      002B37 08                    2629 	.db #0x08	; 8
      002B38 08                    2630 	.db #0x08	; 8
      002B39 18                    2631 	.db #0x18	; 24
      002B3A 00                    2632 	.db #0x00	; 0
      002B3B 08                    2633 	.db #0x08	; 8
      002B3C 14                    2634 	.db #0x14	; 20
      002B3D 00                    2635 	.db #0x00	; 0
      002B3E 08                    2636 	.db #0x08	; 8
      002B3F 08                    2637 	.db #0x08	; 8
      002B40 08                    2638 	.db #0x08	; 8
      002B41 18                    2639 	.db #0x18	; 24
      002B42 00                    2640 	.db #0x00	; 0
      002B43 04                    2641 	.db #0x04	; 4
      002B44 00                    2642 	.db #0x00	; 0
      002B45 08                    2643 	.db #0x08	; 8
      002B46 08                    2644 	.db #0x08	; 8
      002B47 08                    2645 	.db #0x08	; 8
      002B48 08                    2646 	.db #0x08	; 8
      002B49 18                    2647 	.db #0x18	; 24
      002B4A 00                    2648 	.db #0x00	; 0
      002B4B 14                    2649 	.db #0x14	; 20
      002B4C 00                    2650 	.db #0x00	; 0
      002B4D 08                    2651 	.db #0x08	; 8
      002B4E 14                    2652 	.db #0x14	; 20
      002B4F 22                    2653 	.db #0x22	; 34
      002B50 3E                    2654 	.db #0x3e	; 62
      002B51 22                    2655 	.db #0x22	; 34
      002B52 00                    2656 	.db #0x00	; 0
      002B53 1C                    2657 	.db #0x1c	; 28
      002B54 14                    2658 	.db #0x14	; 20
      002B55 1C                    2659 	.db #0x1c	; 28
      002B56 36                    2660 	.db #0x36	; 54	'6'
      002B57 22                    2661 	.db #0x22	; 34
      002B58 3E                    2662 	.db #0x3e	; 62
      002B59 22                    2663 	.db #0x22	; 34
      002B5A 00                    2664 	.db #0x00	; 0
      002B5B 30                    2665 	.db #0x30	; 48	'0'
      002B5C 00                    2666 	.db #0x00	; 0
      002B5D 3E                    2667 	.db #0x3e	; 62
      002B5E 02                    2668 	.db #0x02	; 2
      002B5F 1E                    2669 	.db #0x1e	; 30
      002B60 02                    2670 	.db #0x02	; 2
      002B61 3E                    2671 	.db #0x3e	; 62
      002B62 00                    2672 	.db #0x00	; 0
      002B63 00                    2673 	.db #0x00	; 0
      002B64 00                    2674 	.db #0x00	; 0
      002B65 1E                    2675 	.db #0x1e	; 30
      002B66 28                    2676 	.db #0x28	; 40
      002B67 3E                    2677 	.db #0x3e	; 62
      002B68 0A                    2678 	.db #0x0a	; 10
      002B69 3C                    2679 	.db #0x3c	; 60
      002B6A 00                    2680 	.db #0x00	; 0
      002B6B 3C                    2681 	.db #0x3c	; 60
      002B6C 0A                    2682 	.db #0x0a	; 10
      002B6D 0A                    2683 	.db #0x0a	; 10
      002B6E 3E                    2684 	.db #0x3e	; 62
      002B6F 0A                    2685 	.db #0x0a	; 10
      002B70 0A                    2686 	.db #0x0a	; 10
      002B71 3A                    2687 	.db #0x3a	; 58
      002B72 00                    2688 	.db #0x00	; 0
      002B73 1C                    2689 	.db #0x1c	; 28
      002B74 00                    2690 	.db #0x00	; 0
      002B75 0C                    2691 	.db #0x0c	; 12
      002B76 12                    2692 	.db #0x12	; 18
      002B77 12                    2693 	.db #0x12	; 18
      002B78 12                    2694 	.db #0x12	; 18
      002B79 0C                    2695 	.db #0x0c	; 12
      002B7A 00                    2696 	.db #0x00	; 0
      002B7B 14                    2697 	.db #0x14	; 20
      002B7C 00                    2698 	.db #0x00	; 0
      002B7D 0C                    2699 	.db #0x0c	; 12
      002B7E 12                    2700 	.db #0x12	; 18
      002B7F 12                    2701 	.db #0x12	; 18
      002B80 12                    2702 	.db #0x12	; 18
      002B81 0C                    2703 	.db #0x0c	; 12
      002B82 00                    2704 	.db #0x00	; 0
      002B83 06                    2705 	.db #0x06	; 6
      002B84 00                    2706 	.db #0x00	; 0
      002B85 0C                    2707 	.db #0x0c	; 12
      002B86 12                    2708 	.db #0x12	; 18
      002B87 12                    2709 	.db #0x12	; 18
      002B88 12                    2710 	.db #0x12	; 18
      002B89 0C                    2711 	.db #0x0c	; 12
      002B8A 00                    2712 	.db #0x00	; 0
      002B8B 1C                    2713 	.db #0x1c	; 28
      002B8C 00                    2714 	.db #0x00	; 0
      002B8D 12                    2715 	.db #0x12	; 18
      002B8E 12                    2716 	.db #0x12	; 18
      002B8F 12                    2717 	.db #0x12	; 18
      002B90 1A                    2718 	.db #0x1a	; 26
      002B91 14                    2719 	.db #0x14	; 20
      002B92 00                    2720 	.db #0x00	; 0
      002B93 06                    2721 	.db #0x06	; 6
      002B94 00                    2722 	.db #0x00	; 0
      002B95 12                    2723 	.db #0x12	; 18
      002B96 12                    2724 	.db #0x12	; 18
      002B97 12                    2725 	.db #0x12	; 18
      002B98 1A                    2726 	.db #0x1a	; 26
      002B99 14                    2727 	.db #0x14	; 20
      002B9A 00                    2728 	.db #0x00	; 0
      002B9B 14                    2729 	.db #0x14	; 20
      002B9C 00                    2730 	.db #0x00	; 0
      002B9D 12                    2731 	.db #0x12	; 18
      002B9E 12                    2732 	.db #0x12	; 18
      002B9F 12                    2733 	.db #0x12	; 18
      002BA0 1C                    2734 	.db #0x1c	; 28
      002BA1 08                    2735 	.db #0x08	; 8
      002BA2 06                    2736 	.db #0x06	; 6
      002BA3 12                    2737 	.db #0x12	; 18
      002BA4 0C                    2738 	.db #0x0c	; 12
      002BA5 12                    2739 	.db #0x12	; 18
      002BA6 12                    2740 	.db #0x12	; 18
      002BA7 12                    2741 	.db #0x12	; 18
      002BA8 12                    2742 	.db #0x12	; 18
      002BA9 0C                    2743 	.db #0x0c	; 12
      002BAA 00                    2744 	.db #0x00	; 0
      002BAB 14                    2745 	.db #0x14	; 20
      002BAC 00                    2746 	.db #0x00	; 0
      002BAD 12                    2747 	.db #0x12	; 18
      002BAE 12                    2748 	.db #0x12	; 18
      002BAF 12                    2749 	.db #0x12	; 18
      002BB0 12                    2750 	.db #0x12	; 18
      002BB1 0C                    2751 	.db #0x0c	; 12
      002BB2 00                    2752 	.db #0x00	; 0
      002BB3 00                    2753 	.db #0x00	; 0
      002BB4 08                    2754 	.db #0x08	; 8
      002BB5 1C                    2755 	.db #0x1c	; 28
      002BB6 02                    2756 	.db #0x02	; 2
      002BB7 02                    2757 	.db #0x02	; 2
      002BB8 1C                    2758 	.db #0x1c	; 28
      002BB9 08                    2759 	.db #0x08	; 8
      002BBA 00                    2760 	.db #0x00	; 0
      002BBB 18                    2761 	.db #0x18	; 24
      002BBC 24                    2762 	.db #0x24	; 36
      002BBD 04                    2763 	.db #0x04	; 4
      002BBE 1E                    2764 	.db #0x1e	; 30
      002BBF 04                    2765 	.db #0x04	; 4
      002BC0 24                    2766 	.db #0x24	; 36
      002BC1 3A                    2767 	.db #0x3a	; 58
      002BC2 00                    2768 	.db #0x00	; 0
      002BC3 22                    2769 	.db #0x22	; 34
      002BC4 14                    2770 	.db #0x14	; 20
      002BC5 08                    2771 	.db #0x08	; 8
      002BC6 3E                    2772 	.db #0x3e	; 62
      002BC7 08                    2773 	.db #0x08	; 8
      002BC8 3E                    2774 	.db #0x3e	; 62
      002BC9 08                    2775 	.db #0x08	; 8
      002BCA 00                    2776 	.db #0x00	; 0
      002BCB 06                    2777 	.db #0x06	; 6
      002BCC 0A                    2778 	.db #0x0a	; 10
      002BCD 0A                    2779 	.db #0x0a	; 10
      002BCE 16                    2780 	.db #0x16	; 22
      002BCF 3A                    2781 	.db #0x3a	; 58
      002BD0 12                    2782 	.db #0x12	; 18
      002BD1 12                    2783 	.db #0x12	; 18
      002BD2 00                    2784 	.db #0x00	; 0
      002BD3 10                    2785 	.db #0x10	; 16
      002BD4 28                    2786 	.db #0x28	; 40
      002BD5 08                    2787 	.db #0x08	; 8
      002BD6 1C                    2788 	.db #0x1c	; 28
      002BD7 08                    2789 	.db #0x08	; 8
      002BD8 08                    2790 	.db #0x08	; 8
      002BD9 0A                    2791 	.db #0x0a	; 10
      002BDA 04                    2792 	.db #0x04	; 4
      002BDB 18                    2793 	.db #0x18	; 24
      002BDC 00                    2794 	.db #0x00	; 0
      002BDD 1C                    2795 	.db #0x1c	; 28
      002BDE 20                    2796 	.db #0x20	; 32
      002BDF 3C                    2797 	.db #0x3c	; 60
      002BE0 22                    2798 	.db #0x22	; 34
      002BE1 3C                    2799 	.db #0x3c	; 60
      002BE2 00                    2800 	.db #0x00	; 0
      002BE3 18                    2801 	.db #0x18	; 24
      002BE4 00                    2802 	.db #0x00	; 0
      002BE5 08                    2803 	.db #0x08	; 8
      002BE6 08                    2804 	.db #0x08	; 8
      002BE7 08                    2805 	.db #0x08	; 8
      002BE8 08                    2806 	.db #0x08	; 8
      002BE9 18                    2807 	.db #0x18	; 24
      002BEA 00                    2808 	.db #0x00	; 0
      002BEB 18                    2809 	.db #0x18	; 24
      002BEC 00                    2810 	.db #0x00	; 0
      002BED 0C                    2811 	.db #0x0c	; 12
      002BEE 12                    2812 	.db #0x12	; 18
      002BEF 12                    2813 	.db #0x12	; 18
      002BF0 12                    2814 	.db #0x12	; 18
      002BF1 0C                    2815 	.db #0x0c	; 12
      002BF2 00                    2816 	.db #0x00	; 0
      002BF3 18                    2817 	.db #0x18	; 24
      002BF4 00                    2818 	.db #0x00	; 0
      002BF5 12                    2819 	.db #0x12	; 18
      002BF6 12                    2820 	.db #0x12	; 18
      002BF7 12                    2821 	.db #0x12	; 18
      002BF8 1A                    2822 	.db #0x1a	; 26
      002BF9 14                    2823 	.db #0x14	; 20
      002BFA 00                    2824 	.db #0x00	; 0
      002BFB 14                    2825 	.db #0x14	; 20
      002BFC 0A                    2826 	.db #0x0a	; 10
      002BFD 00                    2827 	.db #0x00	; 0
      002BFE 0E                    2828 	.db #0x0e	; 14
      002BFF 12                    2829 	.db #0x12	; 18
      002C00 12                    2830 	.db #0x12	; 18
      002C01 12                    2831 	.db #0x12	; 18
      002C02 00                    2832 	.db #0x00	; 0
      002C03 14                    2833 	.db #0x14	; 20
      002C04 0A                    2834 	.db #0x0a	; 10
      002C05 00                    2835 	.db #0x00	; 0
      002C06 12                    2836 	.db #0x12	; 18
      002C07 16                    2837 	.db #0x16	; 22
      002C08 1A                    2838 	.db #0x1a	; 26
      002C09 12                    2839 	.db #0x12	; 18
      002C0A 00                    2840 	.db #0x00	; 0
      002C0B 1C                    2841 	.db #0x1c	; 28
      002C0C 20                    2842 	.db #0x20	; 32
      002C0D 3C                    2843 	.db #0x3c	; 60
      002C0E 22                    2844 	.db #0x22	; 34
      002C0F 3C                    2845 	.db #0x3c	; 60
      002C10 00                    2846 	.db #0x00	; 0
      002C11 3C                    2847 	.db #0x3c	; 60
      002C12 00                    2848 	.db #0x00	; 0
      002C13 0C                    2849 	.db #0x0c	; 12
      002C14 12                    2850 	.db #0x12	; 18
      002C15 12                    2851 	.db #0x12	; 18
      002C16 12                    2852 	.db #0x12	; 18
      002C17 0C                    2853 	.db #0x0c	; 12
      002C18 00                    2854 	.db #0x00	; 0
      002C19 1E                    2855 	.db #0x1e	; 30
      002C1A 00                    2856 	.db #0x00	; 0
      002C1B 08                    2857 	.db #0x08	; 8
      002C1C 00                    2858 	.db #0x00	; 0
      002C1D 08                    2859 	.db #0x08	; 8
      002C1E 0C                    2860 	.db #0x0c	; 12
      002C1F 02                    2861 	.db #0x02	; 2
      002C20 22                    2862 	.db #0x22	; 34
      002C21 1C                    2863 	.db #0x1c	; 28
      002C22 00                    2864 	.db #0x00	; 0
      002C23 00                    2865 	.db #0x00	; 0
      002C24 00                    2866 	.db #0x00	; 0
      002C25 3E                    2867 	.db #0x3e	; 62
      002C26 02                    2868 	.db #0x02	; 2
      002C27 02                    2869 	.db #0x02	; 2
      002C28 02                    2870 	.db #0x02	; 2
      002C29 00                    2871 	.db #0x00	; 0
      002C2A 00                    2872 	.db #0x00	; 0
      002C2B 00                    2873 	.db #0x00	; 0
      002C2C 00                    2874 	.db #0x00	; 0
      002C2D 3F                    2875 	.db #0x3f	; 63
      002C2E 20                    2876 	.db #0x20	; 32
      002C2F 20                    2877 	.db #0x20	; 32
      002C30 00                    2878 	.db #0x00	; 0
      002C31 00                    2879 	.db #0x00	; 0
      002C32 00                    2880 	.db #0x00	; 0
      002C33 02                    2881 	.db #0x02	; 2
      002C34 12                    2882 	.db #0x12	; 18
      002C35 0A                    2883 	.db #0x0a	; 10
      002C36 1C                    2884 	.db #0x1c	; 28
      002C37 22                    2885 	.db #0x22	; 34
      002C38 10                    2886 	.db #0x10	; 16
      002C39 38                    2887 	.db #0x38	; 56	'8'
      002C3A 00                    2888 	.db #0x00	; 0
      002C3B 02                    2889 	.db #0x02	; 2
      002C3C 12                    2890 	.db #0x12	; 18
      002C3D 0A                    2891 	.db #0x0a	; 10
      002C3E 34                    2892 	.db #0x34	; 52	'4'
      002C3F 2A                    2893 	.db #0x2a	; 42
      002C40 38                    2894 	.db #0x38	; 56	'8'
      002C41 20                    2895 	.db #0x20	; 32
      002C42 00                    2896 	.db #0x00	; 0
      002C43 08                    2897 	.db #0x08	; 8
      002C44 00                    2898 	.db #0x00	; 0
      002C45 08                    2899 	.db #0x08	; 8
      002C46 08                    2900 	.db #0x08	; 8
      002C47 1C                    2901 	.db #0x1c	; 28
      002C48 1C                    2902 	.db #0x1c	; 28
      002C49 08                    2903 	.db #0x08	; 8
      002C4A 00                    2904 	.db #0x00	; 0
      002C4B 00                    2905 	.db #0x00	; 0
      002C4C 00                    2906 	.db #0x00	; 0
      002C4D 24                    2907 	.db #0x24	; 36
      002C4E 12                    2908 	.db #0x12	; 18
      002C4F 24                    2909 	.db #0x24	; 36
      002C50 00                    2910 	.db #0x00	; 0
      002C51 00                    2911 	.db #0x00	; 0
      002C52 00                    2912 	.db #0x00	; 0
      002C53 00                    2913 	.db #0x00	; 0
      002C54 00                    2914 	.db #0x00	; 0
      002C55 12                    2915 	.db #0x12	; 18
      002C56 24                    2916 	.db #0x24	; 36
      002C57 12                    2917 	.db #0x12	; 18
      002C58 00                    2918 	.db #0x00	; 0
      002C59 00                    2919 	.db #0x00	; 0
      002C5A 00                    2920 	.db #0x00	; 0
      002C5B 2A                    2921 	.db #0x2a	; 42
      002C5C 00                    2922 	.db #0x00	; 0
      002C5D 15                    2923 	.db #0x15	; 21
      002C5E 00                    2924 	.db #0x00	; 0
      002C5F 2A                    2925 	.db #0x2a	; 42
      002C60 00                    2926 	.db #0x00	; 0
      002C61 15                    2927 	.db #0x15	; 21
      002C62 00                    2928 	.db #0x00	; 0
      002C63 2A                    2929 	.db #0x2a	; 42
      002C64 15                    2930 	.db #0x15	; 21
      002C65 2A                    2931 	.db #0x2a	; 42
      002C66 15                    2932 	.db #0x15	; 21
      002C67 2A                    2933 	.db #0x2a	; 42
      002C68 15                    2934 	.db #0x15	; 21
      002C69 2A                    2935 	.db #0x2a	; 42
      002C6A 15                    2936 	.db #0x15	; 21
      002C6B 15                    2937 	.db #0x15	; 21
      002C6C 3F                    2938 	.db #0x3f	; 63
      002C6D 2A                    2939 	.db #0x2a	; 42
      002C6E 3F                    2940 	.db #0x3f	; 63
      002C6F 15                    2941 	.db #0x15	; 21
      002C70 3F                    2942 	.db #0x3f	; 63
      002C71 2A                    2943 	.db #0x2a	; 42
      002C72 3F                    2944 	.db #0x3f	; 63
      002C73 08                    2945 	.db #0x08	; 8
      002C74 08                    2946 	.db #0x08	; 8
      002C75 08                    2947 	.db #0x08	; 8
      002C76 08                    2948 	.db #0x08	; 8
      002C77 08                    2949 	.db #0x08	; 8
      002C78 08                    2950 	.db #0x08	; 8
      002C79 08                    2951 	.db #0x08	; 8
      002C7A 08                    2952 	.db #0x08	; 8
      002C7B 08                    2953 	.db #0x08	; 8
      002C7C 08                    2954 	.db #0x08	; 8
      002C7D 08                    2955 	.db #0x08	; 8
      002C7E 0F                    2956 	.db #0x0f	; 15
      002C7F 08                    2957 	.db #0x08	; 8
      002C80 08                    2958 	.db #0x08	; 8
      002C81 08                    2959 	.db #0x08	; 8
      002C82 08                    2960 	.db #0x08	; 8
      002C83 08                    2961 	.db #0x08	; 8
      002C84 0F                    2962 	.db #0x0f	; 15
      002C85 08                    2963 	.db #0x08	; 8
      002C86 0F                    2964 	.db #0x0f	; 15
      002C87 08                    2965 	.db #0x08	; 8
      002C88 08                    2966 	.db #0x08	; 8
      002C89 08                    2967 	.db #0x08	; 8
      002C8A 08                    2968 	.db #0x08	; 8
      002C8B 0A                    2969 	.db #0x0a	; 10
      002C8C 0A                    2970 	.db #0x0a	; 10
      002C8D 0A                    2971 	.db #0x0a	; 10
      002C8E 0B                    2972 	.db #0x0b	; 11
      002C8F 0A                    2973 	.db #0x0a	; 10
      002C90 0A                    2974 	.db #0x0a	; 10
      002C91 0A                    2975 	.db #0x0a	; 10
      002C92 0A                    2976 	.db #0x0a	; 10
      002C93 00                    2977 	.db #0x00	; 0
      002C94 00                    2978 	.db #0x00	; 0
      002C95 00                    2979 	.db #0x00	; 0
      002C96 0F                    2980 	.db #0x0f	; 15
      002C97 0A                    2981 	.db #0x0a	; 10
      002C98 0A                    2982 	.db #0x0a	; 10
      002C99 0A                    2983 	.db #0x0a	; 10
      002C9A 0A                    2984 	.db #0x0a	; 10
      002C9B 00                    2985 	.db #0x00	; 0
      002C9C 0F                    2986 	.db #0x0f	; 15
      002C9D 08                    2987 	.db #0x08	; 8
      002C9E 0F                    2988 	.db #0x0f	; 15
      002C9F 08                    2989 	.db #0x08	; 8
      002CA0 08                    2990 	.db #0x08	; 8
      002CA1 08                    2991 	.db #0x08	; 8
      002CA2 08                    2992 	.db #0x08	; 8
      002CA3 0A                    2993 	.db #0x0a	; 10
      002CA4 0B                    2994 	.db #0x0b	; 11
      002CA5 08                    2995 	.db #0x08	; 8
      002CA6 0B                    2996 	.db #0x0b	; 11
      002CA7 0A                    2997 	.db #0x0a	; 10
      002CA8 0A                    2998 	.db #0x0a	; 10
      002CA9 0A                    2999 	.db #0x0a	; 10
      002CAA 0A                    3000 	.db #0x0a	; 10
      002CAB 0A                    3001 	.db #0x0a	; 10
      002CAC 0A                    3002 	.db #0x0a	; 10
      002CAD 0A                    3003 	.db #0x0a	; 10
      002CAE 0A                    3004 	.db #0x0a	; 10
      002CAF 0A                    3005 	.db #0x0a	; 10
      002CB0 0A                    3006 	.db #0x0a	; 10
      002CB1 0A                    3007 	.db #0x0a	; 10
      002CB2 0A                    3008 	.db #0x0a	; 10
      002CB3 00                    3009 	.db #0x00	; 0
      002CB4 0F                    3010 	.db #0x0f	; 15
      002CB5 08                    3011 	.db #0x08	; 8
      002CB6 0B                    3012 	.db #0x0b	; 11
      002CB7 0A                    3013 	.db #0x0a	; 10
      002CB8 0A                    3014 	.db #0x0a	; 10
      002CB9 0A                    3015 	.db #0x0a	; 10
      002CBA 0A                    3016 	.db #0x0a	; 10
      002CBB 0A                    3017 	.db #0x0a	; 10
      002CBC 0B                    3018 	.db #0x0b	; 11
      002CBD 08                    3019 	.db #0x08	; 8
      002CBE 0F                    3020 	.db #0x0f	; 15
      002CBF 00                    3021 	.db #0x00	; 0
      002CC0 00                    3022 	.db #0x00	; 0
      002CC1 00                    3023 	.db #0x00	; 0
      002CC2 00                    3024 	.db #0x00	; 0
      002CC3 0A                    3025 	.db #0x0a	; 10
      002CC4 0A                    3026 	.db #0x0a	; 10
      002CC5 0A                    3027 	.db #0x0a	; 10
      002CC6 0F                    3028 	.db #0x0f	; 15
      002CC7 00                    3029 	.db #0x00	; 0
      002CC8 00                    3030 	.db #0x00	; 0
      002CC9 00                    3031 	.db #0x00	; 0
      002CCA 00                    3032 	.db #0x00	; 0
      002CCB 08                    3033 	.db #0x08	; 8
      002CCC 0F                    3034 	.db #0x0f	; 15
      002CCD 08                    3035 	.db #0x08	; 8
      002CCE 0F                    3036 	.db #0x0f	; 15
      002CCF 00                    3037 	.db #0x00	; 0
      002CD0 00                    3038 	.db #0x00	; 0
      002CD1 00                    3039 	.db #0x00	; 0
      002CD2 00                    3040 	.db #0x00	; 0
      002CD3 00                    3041 	.db #0x00	; 0
      002CD4 00                    3042 	.db #0x00	; 0
      002CD5 00                    3043 	.db #0x00	; 0
      002CD6 0F                    3044 	.db #0x0f	; 15
      002CD7 08                    3045 	.db #0x08	; 8
      002CD8 08                    3046 	.db #0x08	; 8
      002CD9 08                    3047 	.db #0x08	; 8
      002CDA 08                    3048 	.db #0x08	; 8
      002CDB 08                    3049 	.db #0x08	; 8
      002CDC 08                    3050 	.db #0x08	; 8
      002CDD 08                    3051 	.db #0x08	; 8
      002CDE 38                    3052 	.db #0x38	; 56	'8'
      002CDF 00                    3053 	.db #0x00	; 0
      002CE0 00                    3054 	.db #0x00	; 0
      002CE1 00                    3055 	.db #0x00	; 0
      002CE2 00                    3056 	.db #0x00	; 0
      002CE3 08                    3057 	.db #0x08	; 8
      002CE4 08                    3058 	.db #0x08	; 8
      002CE5 08                    3059 	.db #0x08	; 8
      002CE6 3F                    3060 	.db #0x3f	; 63
      002CE7 00                    3061 	.db #0x00	; 0
      002CE8 00                    3062 	.db #0x00	; 0
      002CE9 00                    3063 	.db #0x00	; 0
      002CEA 00                    3064 	.db #0x00	; 0
      002CEB 00                    3065 	.db #0x00	; 0
      002CEC 00                    3066 	.db #0x00	; 0
      002CED 00                    3067 	.db #0x00	; 0
      002CEE 3F                    3068 	.db #0x3f	; 63
      002CEF 08                    3069 	.db #0x08	; 8
      002CF0 08                    3070 	.db #0x08	; 8
      002CF1 08                    3071 	.db #0x08	; 8
      002CF2 08                    3072 	.db #0x08	; 8
      002CF3 08                    3073 	.db #0x08	; 8
      002CF4 08                    3074 	.db #0x08	; 8
      002CF5 08                    3075 	.db #0x08	; 8
      002CF6 38                    3076 	.db #0x38	; 56	'8'
      002CF7 08                    3077 	.db #0x08	; 8
      002CF8 08                    3078 	.db #0x08	; 8
      002CF9 08                    3079 	.db #0x08	; 8
      002CFA 08                    3080 	.db #0x08	; 8
      002CFB 00                    3081 	.db #0x00	; 0
      002CFC 00                    3082 	.db #0x00	; 0
      002CFD 00                    3083 	.db #0x00	; 0
      002CFE 3F                    3084 	.db #0x3f	; 63
      002CFF 00                    3085 	.db #0x00	; 0
      002D00 00                    3086 	.db #0x00	; 0
      002D01 00                    3087 	.db #0x00	; 0
      002D02 00                    3088 	.db #0x00	; 0
      002D03 08                    3089 	.db #0x08	; 8
      002D04 08                    3090 	.db #0x08	; 8
      002D05 08                    3091 	.db #0x08	; 8
      002D06 3F                    3092 	.db #0x3f	; 63
      002D07 08                    3093 	.db #0x08	; 8
      002D08 08                    3094 	.db #0x08	; 8
      002D09 08                    3095 	.db #0x08	; 8
      002D0A 08                    3096 	.db #0x08	; 8
      002D0B 08                    3097 	.db #0x08	; 8
      002D0C 38                    3098 	.db #0x38	; 56	'8'
      002D0D 08                    3099 	.db #0x08	; 8
      002D0E 38                    3100 	.db #0x38	; 56	'8'
      002D0F 08                    3101 	.db #0x08	; 8
      002D10 08                    3102 	.db #0x08	; 8
      002D11 08                    3103 	.db #0x08	; 8
      002D12 08                    3104 	.db #0x08	; 8
      002D13 0A                    3105 	.db #0x0a	; 10
      002D14 0A                    3106 	.db #0x0a	; 10
      002D15 0A                    3107 	.db #0x0a	; 10
      002D16 3A                    3108 	.db #0x3a	; 58
      002D17 0A                    3109 	.db #0x0a	; 10
      002D18 0A                    3110 	.db #0x0a	; 10
      002D19 0A                    3111 	.db #0x0a	; 10
      002D1A 0A                    3112 	.db #0x0a	; 10
      002D1B 0A                    3113 	.db #0x0a	; 10
      002D1C 3A                    3114 	.db #0x3a	; 58
      002D1D 02                    3115 	.db #0x02	; 2
      002D1E 3E                    3116 	.db #0x3e	; 62
      002D1F 00                    3117 	.db #0x00	; 0
      002D20 00                    3118 	.db #0x00	; 0
      002D21 00                    3119 	.db #0x00	; 0
      002D22 00                    3120 	.db #0x00	; 0
      002D23 00                    3121 	.db #0x00	; 0
      002D24 3E                    3122 	.db #0x3e	; 62
      002D25 02                    3123 	.db #0x02	; 2
      002D26 3A                    3124 	.db #0x3a	; 58
      002D27 0A                    3125 	.db #0x0a	; 10
      002D28 0A                    3126 	.db #0x0a	; 10
      002D29 0A                    3127 	.db #0x0a	; 10
      002D2A 0A                    3128 	.db #0x0a	; 10
      002D2B 0A                    3129 	.db #0x0a	; 10
      002D2C 3B                    3130 	.db #0x3b	; 59
      002D2D 00                    3131 	.db #0x00	; 0
      002D2E 3F                    3132 	.db #0x3f	; 63
      002D2F 00                    3133 	.db #0x00	; 0
      002D30 00                    3134 	.db #0x00	; 0
      002D31 00                    3135 	.db #0x00	; 0
      002D32 00                    3136 	.db #0x00	; 0
      002D33 00                    3137 	.db #0x00	; 0
      002D34 3F                    3138 	.db #0x3f	; 63
      002D35 00                    3139 	.db #0x00	; 0
      002D36 3B                    3140 	.db #0x3b	; 59
      002D37 0A                    3141 	.db #0x0a	; 10
      002D38 0A                    3142 	.db #0x0a	; 10
      002D39 0A                    3143 	.db #0x0a	; 10
      002D3A 0A                    3144 	.db #0x0a	; 10
      002D3B 0A                    3145 	.db #0x0a	; 10
      002D3C 3A                    3146 	.db #0x3a	; 58
      002D3D 02                    3147 	.db #0x02	; 2
      002D3E 3A                    3148 	.db #0x3a	; 58
      002D3F 0A                    3149 	.db #0x0a	; 10
      002D40 0A                    3150 	.db #0x0a	; 10
      002D41 0A                    3151 	.db #0x0a	; 10
      002D42 0A                    3152 	.db #0x0a	; 10
      002D43 00                    3153 	.db #0x00	; 0
      002D44 3F                    3154 	.db #0x3f	; 63
      002D45 00                    3155 	.db #0x00	; 0
      002D46 3F                    3156 	.db #0x3f	; 63
      002D47 00                    3157 	.db #0x00	; 0
      002D48 00                    3158 	.db #0x00	; 0
      002D49 00                    3159 	.db #0x00	; 0
      002D4A 00                    3160 	.db #0x00	; 0
      002D4B 0A                    3161 	.db #0x0a	; 10
      002D4C 3B                    3162 	.db #0x3b	; 59
      002D4D 00                    3163 	.db #0x00	; 0
      002D4E 3B                    3164 	.db #0x3b	; 59
      002D4F 0A                    3165 	.db #0x0a	; 10
      002D50 0A                    3166 	.db #0x0a	; 10
      002D51 0A                    3167 	.db #0x0a	; 10
      002D52 0A                    3168 	.db #0x0a	; 10
      002D53 08                    3169 	.db #0x08	; 8
      002D54 3F                    3170 	.db #0x3f	; 63
      002D55 00                    3171 	.db #0x00	; 0
      002D56 3F                    3172 	.db #0x3f	; 63
      002D57 00                    3173 	.db #0x00	; 0
      002D58 00                    3174 	.db #0x00	; 0
      002D59 00                    3175 	.db #0x00	; 0
      002D5A 00                    3176 	.db #0x00	; 0
      002D5B 0A                    3177 	.db #0x0a	; 10
      002D5C 0A                    3178 	.db #0x0a	; 10
      002D5D 0A                    3179 	.db #0x0a	; 10
      002D5E 3F                    3180 	.db #0x3f	; 63
      002D5F 00                    3181 	.db #0x00	; 0
      002D60 00                    3182 	.db #0x00	; 0
      002D61 00                    3183 	.db #0x00	; 0
      002D62 00                    3184 	.db #0x00	; 0
      002D63 00                    3185 	.db #0x00	; 0
      002D64 3F                    3186 	.db #0x3f	; 63
      002D65 00                    3187 	.db #0x00	; 0
      002D66 3F                    3188 	.db #0x3f	; 63
      002D67 08                    3189 	.db #0x08	; 8
      002D68 08                    3190 	.db #0x08	; 8
      002D69 08                    3191 	.db #0x08	; 8
      002D6A 08                    3192 	.db #0x08	; 8
      002D6B 00                    3193 	.db #0x00	; 0
      002D6C 00                    3194 	.db #0x00	; 0
      002D6D 00                    3195 	.db #0x00	; 0
      002D6E 3F                    3196 	.db #0x3f	; 63
      002D6F 0A                    3197 	.db #0x0a	; 10
      002D70 0A                    3198 	.db #0x0a	; 10
      002D71 0A                    3199 	.db #0x0a	; 10
      002D72 0A                    3200 	.db #0x0a	; 10
      002D73 0A                    3201 	.db #0x0a	; 10
      002D74 0A                    3202 	.db #0x0a	; 10
      002D75 0A                    3203 	.db #0x0a	; 10
      002D76 3E                    3204 	.db #0x3e	; 62
      002D77 00                    3205 	.db #0x00	; 0
      002D78 00                    3206 	.db #0x00	; 0
      002D79 00                    3207 	.db #0x00	; 0
      002D7A 00                    3208 	.db #0x00	; 0
      002D7B 08                    3209 	.db #0x08	; 8
      002D7C 38                    3210 	.db #0x38	; 56	'8'
      002D7D 08                    3211 	.db #0x08	; 8
      002D7E 38                    3212 	.db #0x38	; 56	'8'
      002D7F 00                    3213 	.db #0x00	; 0
      002D80 00                    3214 	.db #0x00	; 0
      002D81 00                    3215 	.db #0x00	; 0
      002D82 00                    3216 	.db #0x00	; 0
      002D83 00                    3217 	.db #0x00	; 0
      002D84 38                    3218 	.db #0x38	; 56	'8'
      002D85 08                    3219 	.db #0x08	; 8
      002D86 38                    3220 	.db #0x38	; 56	'8'
      002D87 08                    3221 	.db #0x08	; 8
      002D88 08                    3222 	.db #0x08	; 8
      002D89 08                    3223 	.db #0x08	; 8
      002D8A 08                    3224 	.db #0x08	; 8
      002D8B 00                    3225 	.db #0x00	; 0
      002D8C 00                    3226 	.db #0x00	; 0
      002D8D 00                    3227 	.db #0x00	; 0
      002D8E 3E                    3228 	.db #0x3e	; 62
      002D8F 0A                    3229 	.db #0x0a	; 10
      002D90 0A                    3230 	.db #0x0a	; 10
      002D91 0A                    3231 	.db #0x0a	; 10
      002D92 0A                    3232 	.db #0x0a	; 10
      002D93 0A                    3233 	.db #0x0a	; 10
      002D94 0A                    3234 	.db #0x0a	; 10
      002D95 0A                    3235 	.db #0x0a	; 10
      002D96 3B                    3236 	.db #0x3b	; 59
      002D97 0A                    3237 	.db #0x0a	; 10
      002D98 0A                    3238 	.db #0x0a	; 10
      002D99 0A                    3239 	.db #0x0a	; 10
      002D9A 0A                    3240 	.db #0x0a	; 10
      002D9B 08                    3241 	.db #0x08	; 8
      002D9C 3F                    3242 	.db #0x3f	; 63
      002D9D 00                    3243 	.db #0x00	; 0
      002D9E 3F                    3244 	.db #0x3f	; 63
      002D9F 08                    3245 	.db #0x08	; 8
      002DA0 08                    3246 	.db #0x08	; 8
      002DA1 08                    3247 	.db #0x08	; 8
      002DA2 08                    3248 	.db #0x08	; 8
      002DA3 08                    3249 	.db #0x08	; 8
      002DA4 08                    3250 	.db #0x08	; 8
      002DA5 08                    3251 	.db #0x08	; 8
      002DA6 0F                    3252 	.db #0x0f	; 15
      002DA7 00                    3253 	.db #0x00	; 0
      002DA8 00                    3254 	.db #0x00	; 0
      002DA9 00                    3255 	.db #0x00	; 0
      002DAA 00                    3256 	.db #0x00	; 0
      002DAB 00                    3257 	.db #0x00	; 0
      002DAC 00                    3258 	.db #0x00	; 0
      002DAD 00                    3259 	.db #0x00	; 0
      002DAE 38                    3260 	.db #0x38	; 56	'8'
      002DAF 08                    3261 	.db #0x08	; 8
      002DB0 08                    3262 	.db #0x08	; 8
      002DB1 08                    3263 	.db #0x08	; 8
      002DB2 08                    3264 	.db #0x08	; 8
      002DB3 3F                    3265 	.db #0x3f	; 63
      002DB4 3F                    3266 	.db #0x3f	; 63
      002DB5 3F                    3267 	.db #0x3f	; 63
      002DB6 3F                    3268 	.db #0x3f	; 63
      002DB7 3F                    3269 	.db #0x3f	; 63
      002DB8 3F                    3270 	.db #0x3f	; 63
      002DB9 3F                    3271 	.db #0x3f	; 63
      002DBA 3F                    3272 	.db #0x3f	; 63
      002DBB 00                    3273 	.db #0x00	; 0
      002DBC 00                    3274 	.db #0x00	; 0
      002DBD 00                    3275 	.db #0x00	; 0
      002DBE 00                    3276 	.db #0x00	; 0
      002DBF 3F                    3277 	.db #0x3f	; 63
      002DC0 3F                    3278 	.db #0x3f	; 63
      002DC1 3F                    3279 	.db #0x3f	; 63
      002DC2 3F                    3280 	.db #0x3f	; 63
      002DC3 07                    3281 	.db #0x07	; 7
      002DC4 07                    3282 	.db #0x07	; 7
      002DC5 07                    3283 	.db #0x07	; 7
      002DC6 07                    3284 	.db #0x07	; 7
      002DC7 07                    3285 	.db #0x07	; 7
      002DC8 07                    3286 	.db #0x07	; 7
      002DC9 07                    3287 	.db #0x07	; 7
      002DCA 07                    3288 	.db #0x07	; 7
      002DCB 38                    3289 	.db #0x38	; 56	'8'
      002DCC 38                    3290 	.db #0x38	; 56	'8'
      002DCD 38                    3291 	.db #0x38	; 56	'8'
      002DCE 38                    3292 	.db #0x38	; 56	'8'
      002DCF 38                    3293 	.db #0x38	; 56	'8'
      002DD0 38                    3294 	.db #0x38	; 56	'8'
      002DD1 38                    3295 	.db #0x38	; 56	'8'
      002DD2 38                    3296 	.db #0x38	; 56	'8'
      002DD3 3F                    3297 	.db #0x3f	; 63
      002DD4 3F                    3298 	.db #0x3f	; 63
      002DD5 3F                    3299 	.db #0x3f	; 63
      002DD6 3F                    3300 	.db #0x3f	; 63
      002DD7 00                    3301 	.db #0x00	; 0
      002DD8 00                    3302 	.db #0x00	; 0
      002DD9 00                    3303 	.db #0x00	; 0
      002DDA 00                    3304 	.db #0x00	; 0
      002DDB 00                    3305 	.db #0x00	; 0
      002DDC 00                    3306 	.db #0x00	; 0
      002DDD 2C                    3307 	.db #0x2c	; 44
      002DDE 12                    3308 	.db #0x12	; 18
      002DDF 12                    3309 	.db #0x12	; 18
      002DE0 2C                    3310 	.db #0x2c	; 44
      002DE1 00                    3311 	.db #0x00	; 0
      002DE2 00                    3312 	.db #0x00	; 0
      002DE3 00                    3313 	.db #0x00	; 0
      002DE4 0E                    3314 	.db #0x0e	; 14
      002DE5 12                    3315 	.db #0x12	; 18
      002DE6 0E                    3316 	.db #0x0e	; 14
      002DE7 12                    3317 	.db #0x12	; 18
      002DE8 12                    3318 	.db #0x12	; 18
      002DE9 0E                    3319 	.db #0x0e	; 14
      002DEA 02                    3320 	.db #0x02	; 2
      002DEB 1E                    3321 	.db #0x1e	; 30
      002DEC 12                    3322 	.db #0x12	; 18
      002DED 02                    3323 	.db #0x02	; 2
      002DEE 02                    3324 	.db #0x02	; 2
      002DEF 02                    3325 	.db #0x02	; 2
      002DF0 02                    3326 	.db #0x02	; 2
      002DF1 02                    3327 	.db #0x02	; 2
      002DF2 00                    3328 	.db #0x00	; 0
      002DF3 00                    3329 	.db #0x00	; 0
      002DF4 3E                    3330 	.db #0x3e	; 62
      002DF5 14                    3331 	.db #0x14	; 20
      002DF6 14                    3332 	.db #0x14	; 20
      002DF7 14                    3333 	.db #0x14	; 20
      002DF8 14                    3334 	.db #0x14	; 20
      002DF9 14                    3335 	.db #0x14	; 20
      002DFA 00                    3336 	.db #0x00	; 0
      002DFB 1E                    3337 	.db #0x1e	; 30
      002DFC 12                    3338 	.db #0x12	; 18
      002DFD 04                    3339 	.db #0x04	; 4
      002DFE 08                    3340 	.db #0x08	; 8
      002DFF 04                    3341 	.db #0x04	; 4
      002E00 12                    3342 	.db #0x12	; 18
      002E01 1E                    3343 	.db #0x1e	; 30
      002E02 00                    3344 	.db #0x00	; 0
      002E03 00                    3345 	.db #0x00	; 0
      002E04 00                    3346 	.db #0x00	; 0
      002E05 3C                    3347 	.db #0x3c	; 60
      002E06 12                    3348 	.db #0x12	; 18
      002E07 12                    3349 	.db #0x12	; 18
      002E08 0C                    3350 	.db #0x0c	; 12
      002E09 00                    3351 	.db #0x00	; 0
      002E0A 00                    3352 	.db #0x00	; 0
      002E0B 00                    3353 	.db #0x00	; 0
      002E0C 00                    3354 	.db #0x00	; 0
      002E0D 12                    3355 	.db #0x12	; 18
      002E0E 12                    3356 	.db #0x12	; 18
      002E0F 12                    3357 	.db #0x12	; 18
      002E10 0E                    3358 	.db #0x0e	; 14
      002E11 02                    3359 	.db #0x02	; 2
      002E12 02                    3360 	.db #0x02	; 2
      002E13 00                    3361 	.db #0x00	; 0
      002E14 00                    3362 	.db #0x00	; 0
      002E15 14                    3363 	.db #0x14	; 20
      002E16 0A                    3364 	.db #0x0a	; 10
      002E17 08                    3365 	.db #0x08	; 8
      002E18 08                    3366 	.db #0x08	; 8
      002E19 08                    3367 	.db #0x08	; 8
      002E1A 00                    3368 	.db #0x00	; 0
      002E1B 1C                    3369 	.db #0x1c	; 28
      002E1C 08                    3370 	.db #0x08	; 8
      002E1D 1C                    3371 	.db #0x1c	; 28
      002E1E 22                    3372 	.db #0x22	; 34
      002E1F 1C                    3373 	.db #0x1c	; 28
      002E20 08                    3374 	.db #0x08	; 8
      002E21 1C                    3375 	.db #0x1c	; 28
      002E22 00                    3376 	.db #0x00	; 0
      002E23 0C                    3377 	.db #0x0c	; 12
      002E24 12                    3378 	.db #0x12	; 18
      002E25 12                    3379 	.db #0x12	; 18
      002E26 1E                    3380 	.db #0x1e	; 30
      002E27 12                    3381 	.db #0x12	; 18
      002E28 12                    3382 	.db #0x12	; 18
      002E29 0C                    3383 	.db #0x0c	; 12
      002E2A 00                    3384 	.db #0x00	; 0
      002E2B 00                    3385 	.db #0x00	; 0
      002E2C 1C                    3386 	.db #0x1c	; 28
      002E2D 22                    3387 	.db #0x22	; 34
      002E2E 22                    3388 	.db #0x22	; 34
      002E2F 14                    3389 	.db #0x14	; 20
      002E30 14                    3390 	.db #0x14	; 20
      002E31 36                    3391 	.db #0x36	; 54	'6'
      002E32 00                    3392 	.db #0x00	; 0
      002E33 0C                    3393 	.db #0x0c	; 12
      002E34 02                    3394 	.db #0x02	; 2
      002E35 04                    3395 	.db #0x04	; 4
      002E36 08                    3396 	.db #0x08	; 8
      002E37 1C                    3397 	.db #0x1c	; 28
      002E38 12                    3398 	.db #0x12	; 18
      002E39 0C                    3399 	.db #0x0c	; 12
      002E3A 00                    3400 	.db #0x00	; 0
      002E3B 00                    3401 	.db #0x00	; 0
      002E3C 00                    3402 	.db #0x00	; 0
      002E3D 14                    3403 	.db #0x14	; 20
      002E3E 2A                    3404 	.db #0x2a	; 42
      002E3F 2A                    3405 	.db #0x2a	; 42
      002E40 14                    3406 	.db #0x14	; 20
      002E41 00                    3407 	.db #0x00	; 0
      002E42 00                    3408 	.db #0x00	; 0
      002E43 00                    3409 	.db #0x00	; 0
      002E44 08                    3410 	.db #0x08	; 8
      002E45 1C                    3411 	.db #0x1c	; 28
      002E46 2A                    3412 	.db #0x2a	; 42
      002E47 2A                    3413 	.db #0x2a	; 42
      002E48 1C                    3414 	.db #0x1c	; 28
      002E49 08                    3415 	.db #0x08	; 8
      002E4A 00                    3416 	.db #0x00	; 0
      002E4B 00                    3417 	.db #0x00	; 0
      002E4C 1C                    3418 	.db #0x1c	; 28
      002E4D 02                    3419 	.db #0x02	; 2
      002E4E 1E                    3420 	.db #0x1e	; 30
      002E4F 02                    3421 	.db #0x02	; 2
      002E50 1C                    3422 	.db #0x1c	; 28
      002E51 00                    3423 	.db #0x00	; 0
      002E52 00                    3424 	.db #0x00	; 0
      002E53 00                    3425 	.db #0x00	; 0
      002E54 0C                    3426 	.db #0x0c	; 12
      002E55 12                    3427 	.db #0x12	; 18
      002E56 12                    3428 	.db #0x12	; 18
      002E57 12                    3429 	.db #0x12	; 18
      002E58 12                    3430 	.db #0x12	; 18
      002E59 00                    3431 	.db #0x00	; 0
      002E5A 00                    3432 	.db #0x00	; 0
      002E5B 00                    3433 	.db #0x00	; 0
      002E5C 1E                    3434 	.db #0x1e	; 30
      002E5D 00                    3435 	.db #0x00	; 0
      002E5E 1E                    3436 	.db #0x1e	; 30
      002E5F 00                    3437 	.db #0x00	; 0
      002E60 1E                    3438 	.db #0x1e	; 30
      002E61 00                    3439 	.db #0x00	; 0
      002E62 00                    3440 	.db #0x00	; 0
      002E63 00                    3441 	.db #0x00	; 0
      002E64 08                    3442 	.db #0x08	; 8
      002E65 1C                    3443 	.db #0x1c	; 28
      002E66 08                    3444 	.db #0x08	; 8
      002E67 00                    3445 	.db #0x00	; 0
      002E68 1C                    3446 	.db #0x1c	; 28
      002E69 00                    3447 	.db #0x00	; 0
      002E6A 00                    3448 	.db #0x00	; 0
      002E6B 02                    3449 	.db #0x02	; 2
      002E6C 0C                    3450 	.db #0x0c	; 12
      002E6D 10                    3451 	.db #0x10	; 16
      002E6E 0C                    3452 	.db #0x0c	; 12
      002E6F 02                    3453 	.db #0x02	; 2
      002E70 00                    3454 	.db #0x00	; 0
      002E71 1E                    3455 	.db #0x1e	; 30
      002E72 00                    3456 	.db #0x00	; 0
      002E73 10                    3457 	.db #0x10	; 16
      002E74 0C                    3458 	.db #0x0c	; 12
      002E75 02                    3459 	.db #0x02	; 2
      002E76 0C                    3460 	.db #0x0c	; 12
      002E77 10                    3461 	.db #0x10	; 16
      002E78 00                    3462 	.db #0x00	; 0
      002E79 1E                    3463 	.db #0x1e	; 30
      002E7A 00                    3464 	.db #0x00	; 0
      002E7B 00                    3465 	.db #0x00	; 0
      002E7C 10                    3466 	.db #0x10	; 16
      002E7D 28                    3467 	.db #0x28	; 40
      002E7E 08                    3468 	.db #0x08	; 8
      002E7F 08                    3469 	.db #0x08	; 8
      002E80 08                    3470 	.db #0x08	; 8
      002E81 08                    3471 	.db #0x08	; 8
      002E82 08                    3472 	.db #0x08	; 8
      002E83 08                    3473 	.db #0x08	; 8
      002E84 08                    3474 	.db #0x08	; 8
      002E85 08                    3475 	.db #0x08	; 8
      002E86 08                    3476 	.db #0x08	; 8
      002E87 08                    3477 	.db #0x08	; 8
      002E88 0A                    3478 	.db #0x0a	; 10
      002E89 04                    3479 	.db #0x04	; 4
      002E8A 00                    3480 	.db #0x00	; 0
      002E8B 00                    3481 	.db #0x00	; 0
      002E8C 08                    3482 	.db #0x08	; 8
      002E8D 00                    3483 	.db #0x00	; 0
      002E8E 3E                    3484 	.db #0x3e	; 62
      002E8F 00                    3485 	.db #0x00	; 0
      002E90 08                    3486 	.db #0x08	; 8
      002E91 00                    3487 	.db #0x00	; 0
      002E92 00                    3488 	.db #0x00	; 0
      002E93 00                    3489 	.db #0x00	; 0
      002E94 14                    3490 	.db #0x14	; 20
      002E95 0A                    3491 	.db #0x0a	; 10
      002E96 00                    3492 	.db #0x00	; 0
      002E97 14                    3493 	.db #0x14	; 20
      002E98 0A                    3494 	.db #0x0a	; 10
      002E99 00                    3495 	.db #0x00	; 0
      002E9A 00                    3496 	.db #0x00	; 0
      002E9B 0C                    3497 	.db #0x0c	; 12
      002E9C 12                    3498 	.db #0x12	; 18
      002E9D 12                    3499 	.db #0x12	; 18
      002E9E 0C                    3500 	.db #0x0c	; 12
      002E9F 00                    3501 	.db #0x00	; 0
      002EA0 00                    3502 	.db #0x00	; 0
      002EA1 00                    3503 	.db #0x00	; 0
      002EA2 00                    3504 	.db #0x00	; 0
      002EA3 00                    3505 	.db #0x00	; 0
      002EA4 00                    3506 	.db #0x00	; 0
      002EA5 00                    3507 	.db #0x00	; 0
      002EA6 0C                    3508 	.db #0x0c	; 12
      002EA7 0C                    3509 	.db #0x0c	; 12
      002EA8 00                    3510 	.db #0x00	; 0
      002EA9 00                    3511 	.db #0x00	; 0
      002EAA 00                    3512 	.db #0x00	; 0
      002EAB 00                    3513 	.db #0x00	; 0
      002EAC 00                    3514 	.db #0x00	; 0
      002EAD 00                    3515 	.db #0x00	; 0
      002EAE 04                    3516 	.db #0x04	; 4
      002EAF 00                    3517 	.db #0x00	; 0
      002EB0 00                    3518 	.db #0x00	; 0
      002EB1 00                    3519 	.db #0x00	; 0
      002EB2 00                    3520 	.db #0x00	; 0
      002EB3 00                    3521 	.db #0x00	; 0
      002EB4 38                    3522 	.db #0x38	; 56	'8'
      002EB5 08                    3523 	.db #0x08	; 8
      002EB6 08                    3524 	.db #0x08	; 8
      002EB7 0A                    3525 	.db #0x0a	; 10
      002EB8 0A                    3526 	.db #0x0a	; 10
      002EB9 04                    3527 	.db #0x04	; 4
      002EBA 00                    3528 	.db #0x00	; 0
      002EBB 0A                    3529 	.db #0x0a	; 10
      002EBC 14                    3530 	.db #0x14	; 20
      002EBD 14                    3531 	.db #0x14	; 20
      002EBE 14                    3532 	.db #0x14	; 20
      002EBF 00                    3533 	.db #0x00	; 0
      002EC0 00                    3534 	.db #0x00	; 0
      002EC1 00                    3535 	.db #0x00	; 0
      002EC2 00                    3536 	.db #0x00	; 0
      002EC3 06                    3537 	.db #0x06	; 6
      002EC4 08                    3538 	.db #0x08	; 8
      002EC5 04                    3539 	.db #0x04	; 4
      002EC6 0E                    3540 	.db #0x0e	; 14
      002EC7 00                    3541 	.db #0x00	; 0
      002EC8 00                    3542 	.db #0x00	; 0
      002EC9 00                    3543 	.db #0x00	; 0
      002ECA 00                    3544 	.db #0x00	; 0
      002ECB 00                    3545 	.db #0x00	; 0
      002ECC 00                    3546 	.db #0x00	; 0
      002ECD 1E                    3547 	.db #0x1e	; 30
      002ECE 1E                    3548 	.db #0x1e	; 30
      002ECF 1E                    3549 	.db #0x1e	; 30
      002ED0 1E                    3550 	.db #0x1e	; 30
      002ED1 00                    3551 	.db #0x00	; 0
      002ED2 00                    3552 	.db #0x00	; 0
      002ED3 00                    3553 	.db #0x00	; 0
      002ED4 00                    3554 	.db #0x00	; 0
      002ED5 00                    3555 	.db #0x00	; 0
      002ED6 00                    3556 	.db #0x00	; 0
      002ED7 00                    3557 	.db #0x00	; 0
      002ED8 00                    3558 	.db #0x00	; 0
      002ED9 00                    3559 	.db #0x00	; 0
      002EDA 00                    3560 	.db #0x00	; 0
      002EDB                       3561 __xinit__initial:
      002EDB B2 26 80              3562 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3563 	.area CABS    (ABS,CODE)
