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
      008101                        346 _font8x8:
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
      00200E 02 22 DE         [24]  407 	ljmp	_main
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
      002187                        745 00132$:
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
      0021A8 12 26 23         [24]  771 	lcall	__gptrget
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
      0021CF 12 26 23         [24]  799 	lcall	__gptrget
      0021D2 F7               [12]  800 	mov	@r1,a
      0021D3                        801 00102$:
                                    802 ;	disp.c:185: i++;
      0021D3 E5 10            [12]  803 	mov	a,_bp
      0021D5 24 07            [12]  804 	add	a,#0x07
      0021D7 F8               [12]  805 	mov	r0,a
      0021D8 06               [12]  806 	inc	@r0
      0021D9 B6 00 02         [24]  807 	cjne	@r0,#0x00,00217$
      0021DC 08               [12]  808 	inc	r0
      0021DD 06               [12]  809 	inc	@r0
      0021DE                        810 00217$:
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
                                    825 ;	disp.c:151: do {
      0021EE 7B 00            [12]  826 	mov	r3,#0x00
                                    827 ;	disp.c:153: do {
      0021F0                        828 00138$:
      0021F0 7A 00            [12]  829 	mov	r2,#0x00
      0021F2                        830 00118$:
                                    831 ;	disp.c:165: __endasm;
      0021F2 00               [12]  832 	nop
      0021F3 00               [12]  833 	nop
      0021F4 00               [12]  834 	nop
      0021F5 00               [12]  835 	nop
                                    836 ;	disp.c:166: } while ((++j) ^ 0x80u);
      0021F6 0A               [12]  837 	inc	r2
      0021F7 8A 06            [24]  838 	mov	ar6,r2
      0021F9 7F 00            [12]  839 	mov	r7,#0x00
      0021FB 74 80            [12]  840 	mov	a,#0x80
      0021FD 6E               [12]  841 	xrl	a,r6
      0021FE 70 F2            [24]  842 	jnz	00118$
      002200 EF               [12]  843 	mov	a,r7
      002201 70 EF            [24]  844 	jnz	00118$
                                    845 ;	disp.c:167: } while ((++i) ^ 0x80u);
      002203 0B               [12]  846 	inc	r3
      002204 8B 02            [24]  847 	mov	ar2,r3
      002206 7F 00            [12]  848 	mov	r7,#0x00
      002208 74 80            [12]  849 	mov	a,#0x80
      00220A 6A               [12]  850 	xrl	a,r2
      00220B 70 E3            [24]  851 	jnz	00138$
      00220D EF               [12]  852 	mov	a,r7
      00220E 70 E0            [24]  853 	jnz	00138$
                                    854 ;	disp.c:192: for (j = 0u; j < 8u; j++)
      002210 E5 10            [12]  855 	mov	a,_bp
      002212 24 04            [12]  856 	add	a,#0x04
      002214 F8               [12]  857 	mov	r0,a
      002215 E6               [12]  858 	mov	a,@r0
      002216 75 F0 08         [24]  859 	mov	b,#0x08
      002219 A4               [48]  860 	mul	ab
      00221A 24 01            [12]  861 	add	a,#_font8x8
      00221C FA               [12]  862 	mov	r2,a
      00221D 74 81            [12]  863 	mov	a,#(_font8x8 >> 8)
      00221F 35 F0            [12]  864 	addc	a,b
      002221 FB               [12]  865 	mov	r3,a
      002222 E5 10            [12]  866 	mov	a,_bp
      002224 24 06            [12]  867 	add	a,#0x06
      002226 F8               [12]  868 	mov	r0,a
      002227 74 07            [12]  869 	mov	a,#0x07
      002229 C3               [12]  870 	clr	c
      00222A 96               [12]  871 	subb	a,@r0
      00222B FD               [12]  872 	mov	r5,a
      00222C 7C 00            [12]  873 	mov	r4,#0x00
      00222E                        874 00127$:
                                    875 ;	disp.c:193: ddata[j] = ((font8x8[symbol][j] << (7u - bit)) & 0x80u) | (ddata[j] >> 1u);
      00222E EC               [12]  876 	mov	a,r4
      00222F 24 29            [12]  877 	add	a,#_ddata
      002231 F9               [12]  878 	mov	r1,a
      002232 EC               [12]  879 	mov	a,r4
      002233 2A               [12]  880 	add	a,r2
      002234 F5 82            [12]  881 	mov	dpl,a
      002236 E4               [12]  882 	clr	a
      002237 3B               [12]  883 	addc	a,r3
      002238 F5 83            [12]  884 	mov	dph,a
      00223A E0               [24]  885 	movx	a,@dptr
      00223B FF               [12]  886 	mov	r7,a
      00223C 8D F0            [24]  887 	mov	b,r5
      00223E 05 F0            [12]  888 	inc	b
      002240 EF               [12]  889 	mov	a,r7
      002241 80 02            [24]  890 	sjmp	00224$
      002243                        891 00222$:
      002243 25 E0            [12]  892 	add	a,acc
      002245                        893 00224$:
      002245 D5 F0 FB         [24]  894 	djnz	b,00222$
      002248 54 80            [12]  895 	anl	a,#0x80
      00224A FF               [12]  896 	mov	r7,a
      00224B EC               [12]  897 	mov	a,r4
      00224C 24 29            [12]  898 	add	a,#_ddata
      00224E F8               [12]  899 	mov	r0,a
      00224F E6               [12]  900 	mov	a,@r0
      002250 C3               [12]  901 	clr	c
      002251 13               [12]  902 	rrc	a
      002252 4F               [12]  903 	orl	a,r7
      002253 F7               [12]  904 	mov	@r1,a
                                    905 ;	disp.c:192: for (j = 0u; j < 8u; j++)
      002254 0C               [12]  906 	inc	r4
      002255 BC 08 00         [24]  907 	cjne	r4,#0x08,00225$
      002258                        908 00225$:
      002258 40 D4            [24]  909 	jc	00127$
                                    910 ;	disp.c:195: if ((r = getchar_poll()) >= 0) {
      00225A 12 20 9B         [24]  911 	lcall	_getchar_poll
      00225D AB 82            [24]  912 	mov	r3,dpl
      00225F AC 83            [24]  913 	mov	r4,dph
      002261 8B 07            [24]  914 	mov	ar7,r3
      002263 EC               [12]  915 	mov	a,r4
      002264 FE               [12]  916 	mov	r6,a
      002265 20 E7 58         [24]  917 	jb	acc.7,00133$
                                    918 ;	disp.c:196: r = toupper(r);
      002268 8F 82            [24]  919 	mov	dpl,r7
      00226A 8E 83            [24]  920 	mov	dph,r6
      00226C 12 25 45         [24]  921 	lcall	_toupper
      00226F AB 82            [24]  922 	mov	r3,dpl
      002271 AC 83            [24]  923 	mov	r4,dph
                                    924 ;	disp.c:197: if ((r == (int)'P') || (r == (int)' ')) {
      002273 BB 50 05         [24]  925 	cjne	r3,#0x50,00228$
      002276 BC 00 02         [24]  926 	cjne	r4,#0x00,00228$
      002279 80 06            [24]  927 	sjmp	00111$
      00227B                        928 00228$:
      00227B BB 20 2A         [24]  929 	cjne	r3,#0x20,00112$
      00227E BC 00 27         [24]  930 	cjne	r4,#0x00,00112$
      002281                        931 00111$:
                                    932 ;	disp.c:198: printstr("PAUSE\r\n");
      002281 7E 5E            [12]  933 	mov	r6,#___str_0
      002283 7C 26            [12]  934 	mov	r4,#(___str_0 >> 8)
      002285 7B 80            [12]  935 	mov	r3,#0x80
                                    936 ;	disp.c:46: return;
      002287                        937 00130$:
                                    938 ;	disp.c:44: for (; *s; s++) putchar(*s);
      002287 8E 82            [24]  939 	mov	dpl,r6
      002289 8C 83            [24]  940 	mov	dph,r4
      00228B 8B F0            [24]  941 	mov	b,r3
      00228D 12 26 23         [24]  942 	lcall	__gptrget
      002290 FD               [12]  943 	mov	r5,a
      002291 60 10            [24]  944 	jz	00126$
      002293 7F 00            [12]  945 	mov	r7,#0x00
      002295 8D 82            [24]  946 	mov	dpl,r5
      002297 8F 83            [24]  947 	mov	dph,r7
      002299 12 20 8D         [24]  948 	lcall	_putchar
      00229C 0E               [12]  949 	inc	r6
                                    950 ;	disp.c:198: printstr("PAUSE\r\n");
      00229D BE 00 E7         [24]  951 	cjne	r6,#0x00,00130$
      0022A0 0C               [12]  952 	inc	r4
      0022A1 80 E4            [24]  953 	sjmp	00130$
      0022A3                        954 00126$:
                                    955 ;	disp.c:199: (void)getchar();
      0022A3 12 20 92         [24]  956 	lcall	_getchar
      0022A6 80 18            [24]  957 	sjmp	00133$
      0022A8                        958 00112$:
                                    959 ;	disp.c:200: } else if ((r == (int)'L') || (r == (int)'R') || (r == (int)'T')) break;
      0022A8 BB 4C 05         [24]  960 	cjne	r3,#0x4c,00233$
      0022AB BC 00 02         [24]  961 	cjne	r4,#0x00,00233$
      0022AE 80 24            [24]  962 	sjmp	00117$
      0022B0                        963 00233$:
      0022B0 BB 52 05         [24]  964 	cjne	r3,#0x52,00234$
      0022B3 BC 00 02         [24]  965 	cjne	r4,#0x00,00234$
      0022B6 80 1C            [24]  966 	sjmp	00117$
      0022B8                        967 00234$:
      0022B8 BB 54 05         [24]  968 	cjne	r3,#0x54,00235$
      0022BB BC 00 02         [24]  969 	cjne	r4,#0x00,00235$
      0022BE 80 14            [24]  970 	sjmp	00117$
      0022C0                        971 00235$:
      0022C0                        972 00133$:
                                    973 ;	disp.c:178: for (bit = 0u, i = 0u; ; bit = (bit + 1u) & 0x07u) {
      0022C0 E5 10            [12]  974 	mov	a,_bp
      0022C2 24 06            [12]  975 	add	a,#0x06
      0022C4 F8               [12]  976 	mov	r0,a
      0022C5 E6               [12]  977 	mov	a,@r0
      0022C6 04               [12]  978 	inc	a
      0022C7 FF               [12]  979 	mov	r7,a
      0022C8 E5 10            [12]  980 	mov	a,_bp
      0022CA 24 06            [12]  981 	add	a,#0x06
      0022CC F8               [12]  982 	mov	r0,a
      0022CD 74 07            [12]  983 	mov	a,#0x07
      0022CF 5F               [12]  984 	anl	a,r7
      0022D0 F6               [12]  985 	mov	@r0,a
      0022D1 02 21 87         [24]  986 	ljmp	00132$
      0022D4                        987 00117$:
                                    988 ;	disp.c:204: return r;
      0022D4 8B 82            [24]  989 	mov	dpl,r3
      0022D6 8C 83            [24]  990 	mov	dph,r4
                                    991 ;	disp.c:205: }
      0022D8 85 10 81         [24]  992 	mov	sp,_bp
      0022DB D0 10            [24]  993 	pop	_bp
      0022DD 22               [24]  994 	ret
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'main'
                                    997 ;------------------------------------------------------------
                                    998 ;j                         Allocated to stack - _bp +1
                                    999 ;c                         Allocated to registers r7 r6 
                                   1000 ;__1310720004              Allocated to registers 
                                   1001 ;s                         Allocated to registers r5 r6 r7 
                                   1002 ;__1966080006              Allocated to registers 
                                   1003 ;s                         Allocated to registers r5 r6 r7 
                                   1004 ;__1966080008              Allocated to registers 
                                   1005 ;s                         Allocated to registers r5 r6 r7 
                                   1006 ;__1966080010              Allocated to registers 
                                   1007 ;s                         Allocated to registers r5 r6 r7 
                                   1008 ;__3276800012              Allocated to registers 
                                   1009 ;s                         Allocated to registers r7 r6 r4 
                                   1010 ;__3276800014              Allocated to registers 
                                   1011 ;s                         Allocated to registers r7 r6 r4 
                                   1012 ;__3276800016              Allocated to registers 
                                   1013 ;s                         Allocated to registers r7 r6 r4 
                                   1014 ;__3276800018              Allocated to registers 
                                   1015 ;s                         Allocated to registers r7 r6 r4 
                                   1016 ;__3276800020              Allocated to registers 
                                   1017 ;s                         Allocated to registers r7 r6 r4 
                                   1018 ;__1310720022              Allocated to registers 
                                   1019 ;s                         Allocated to registers r5 r6 r7 
                                   1020 ;sloc0                     Allocated to stack - _bp +65
                                   1021 ;------------------------------------------------------------
                                   1022 ;	disp.c:207: void main(void) {
                                   1023 ;	-----------------------------------------
                                   1024 ;	 function main
                                   1025 ;	-----------------------------------------
      0022DE                       1026 _main:
      0022DE C0 10            [24] 1027 	push	_bp
      0022E0 85 81 10         [24] 1028 	mov	_bp,sp
      0022E3 05 81            [12] 1029 	inc	sp
      0022E5 05 81            [12] 1030 	inc	sp
                                   1031 ;	disp.c:211: init_gpo();
      0022E7 12 20 AF         [24] 1032 	lcall	_init_gpo
                                   1033 ;	disp.c:212: clear_gpo();
      0022EA 12 20 CD         [24] 1034 	lcall	_clear_gpo
                                   1035 ;	disp.c:213: init_disp();	
      0022ED 12 20 F9         [24] 1036 	lcall	_init_disp
                                   1037 ;	disp.c:214: init_timer0();
      0022F0 12 20 ED         [24] 1038 	lcall	_init_timer0
                                   1039 ;	disp.c:215: init_intr();
      0022F3 12 20 E6         [24] 1040 	lcall	_init_intr
                                   1041 ;	disp.c:216: TR0 = 1;
                                   1042 ;	assignBit
      0022F6 D2 8C            [12] 1043 	setb	_TR0
                                   1044 ;	disp.c:218: reset:
      0022F8                       1045 00101$:
                                   1046 ;	disp.c:219: printstr("RESET\r\n");
      0022F8 7D 66            [12] 1047 	mov	r5,#___str_1
      0022FA 7E 26            [12] 1048 	mov	r6,#(___str_1 >> 8)
      0022FC 7F 80            [12] 1049 	mov	r7,#0x80
                                   1050 ;	disp.c:46: return;
      0022FE                       1051 00146$:
                                   1052 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0022FE 8D 82            [24] 1053 	mov	dpl,r5
      002300 8E 83            [24] 1054 	mov	dph,r6
      002302 8F F0            [24] 1055 	mov	b,r7
      002304 12 26 23         [24] 1056 	lcall	__gptrget
      002307 FC               [12] 1057 	mov	r4,a
      002308 60 10            [24] 1058 	jz	00126$
      00230A 7B 00            [12] 1059 	mov	r3,#0x00
      00230C 8C 82            [24] 1060 	mov	dpl,r4
      00230E 8B 83            [24] 1061 	mov	dph,r3
      002310 12 20 8D         [24] 1062 	lcall	_putchar
      002313 0D               [12] 1063 	inc	r5
                                   1064 ;	disp.c:219: printstr("RESET\r\n");
      002314 BD 00 E7         [24] 1065 	cjne	r5,#0x00,00146$
      002317 0E               [12] 1066 	inc	r6
      002318 80 E4            [24] 1067 	sjmp	00146$
      00231A                       1068 00126$:
                                   1069 ;	disp.c:220: (void)strncpy(buf, initial, sizeof (buf) - 1u);
      00231A E4               [12] 1070 	clr	a
      00231B C0 E0            [24] 1071 	push	acc
      00231D 04               [12] 1072 	inc	a
      00231E C0 E0            [24] 1073 	push	acc
      002320 90 89 01         [24] 1074 	mov	dptr,#_initial
      002323 E0               [24] 1075 	movx	a,@dptr
      002324 C0 E0            [24] 1076 	push	acc
      002326 A3               [24] 1077 	inc	dptr
      002327 E0               [24] 1078 	movx	a,@dptr
      002328 C0 E0            [24] 1079 	push	acc
      00232A A3               [24] 1080 	inc	dptr
      00232B E0               [24] 1081 	movx	a,@dptr
      00232C C0 E0            [24] 1082 	push	acc
      00232E 90 80 00         [24] 1083 	mov	dptr,#_buf
      002331 75 F0 00         [24] 1084 	mov	b,#0x00
      002334 12 25 6C         [24] 1085 	lcall	_strncpy
      002337 E5 81            [12] 1086 	mov	a,sp
      002339 24 FB            [12] 1087 	add	a,#0xfb
      00233B F5 81            [12] 1088 	mov	sp,a
                                   1089 ;	disp.c:221: buf[sizeof (buf) - 1u] = 0u;
      00233D 90 81 00         [24] 1090 	mov	dptr,#(_buf + 0x0100)
      002340 E4               [12] 1091 	clr	a
      002341 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	disp.c:223: while (1) {
      002342                       1094 00122$:
                                   1095 ;	disp.c:224: printstr("P SP L ENT S R T START MSG \"");
      002342 7D 6E            [12] 1096 	mov	r5,#___str_2
      002344 7E 26            [12] 1097 	mov	r6,#(___str_2 >> 8)
      002346 7F 80            [12] 1098 	mov	r7,#0x80
                                   1099 ;	disp.c:46: return;
      002348                       1100 00149$:
                                   1101 ;	disp.c:44: for (; *s; s++) putchar(*s);
      002348 8D 82            [24] 1102 	mov	dpl,r5
      00234A 8E 83            [24] 1103 	mov	dph,r6
      00234C 8F F0            [24] 1104 	mov	b,r7
      00234E 12 26 23         [24] 1105 	lcall	__gptrget
      002351 FC               [12] 1106 	mov	r4,a
      002352 60 10            [24] 1107 	jz	00128$
      002354 7B 00            [12] 1108 	mov	r3,#0x00
      002356 8C 82            [24] 1109 	mov	dpl,r4
      002358 8B 83            [24] 1110 	mov	dph,r3
      00235A 12 20 8D         [24] 1111 	lcall	_putchar
      00235D 0D               [12] 1112 	inc	r5
                                   1113 ;	disp.c:224: printstr("P SP L ENT S R T START MSG \"");
      00235E BD 00 E7         [24] 1114 	cjne	r5,#0x00,00149$
      002361 0E               [12] 1115 	inc	r6
      002362 80 E4            [24] 1116 	sjmp	00149$
      002364                       1117 00128$:
                                   1118 ;	disp.c:225: printstr((char *)buf);
      002364 7D 00            [12] 1119 	mov	r5,#_buf
      002366 7E 80            [12] 1120 	mov	r6,#(_buf >> 8)
      002368 7F 00            [12] 1121 	mov	r7,#0x00
                                   1122 ;	disp.c:46: return;
      00236A                       1123 00152$:
                                   1124 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00236A 8D 82            [24] 1125 	mov	dpl,r5
      00236C 8E 83            [24] 1126 	mov	dph,r6
      00236E 8F F0            [24] 1127 	mov	b,r7
      002370 12 26 23         [24] 1128 	lcall	__gptrget
      002373 FC               [12] 1129 	mov	r4,a
      002374 60 10            [24] 1130 	jz	00130$
      002376 7B 00            [12] 1131 	mov	r3,#0x00
      002378 8C 82            [24] 1132 	mov	dpl,r4
      00237A 8B 83            [24] 1133 	mov	dph,r3
      00237C 12 20 8D         [24] 1134 	lcall	_putchar
      00237F 0D               [12] 1135 	inc	r5
                                   1136 ;	disp.c:225: printstr((char *)buf);
      002380 BD 00 E7         [24] 1137 	cjne	r5,#0x00,00152$
      002383 0E               [12] 1138 	inc	r6
      002384 80 E4            [24] 1139 	sjmp	00152$
      002386                       1140 00130$:
                                   1141 ;	disp.c:226: printstr("\"\r\n");
      002386 7D 8B            [12] 1142 	mov	r5,#___str_3
      002388 7E 26            [12] 1143 	mov	r6,#(___str_3 >> 8)
      00238A 7F 80            [12] 1144 	mov	r7,#0x80
                                   1145 ;	disp.c:46: return;
      00238C                       1146 00155$:
                                   1147 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00238C 8D 82            [24] 1148 	mov	dpl,r5
      00238E 8E 83            [24] 1149 	mov	dph,r6
      002390 8F F0            [24] 1150 	mov	b,r7
      002392 12 26 23         [24] 1151 	lcall	__gptrget
      002395 FC               [12] 1152 	mov	r4,a
      002396 60 10            [24] 1153 	jz	00132$
      002398 7B 00            [12] 1154 	mov	r3,#0x00
      00239A 8C 82            [24] 1155 	mov	dpl,r4
      00239C 8B 83            [24] 1156 	mov	dph,r3
      00239E 12 20 8D         [24] 1157 	lcall	_putchar
      0023A1 0D               [12] 1158 	inc	r5
                                   1159 ;	disp.c:226: printstr("\"\r\n");
      0023A2 BD 00 E7         [24] 1160 	cjne	r5,#0x00,00155$
      0023A5 0E               [12] 1161 	inc	r6
      0023A6 80 E4            [24] 1162 	sjmp	00155$
      0023A8                       1163 00132$:
                                   1164 ;	disp.c:228: c = scroll(buf);
      0023A8 90 80 00         [24] 1165 	mov	dptr,#_buf
      0023AB 75 F0 00         [24] 1166 	mov	b,#0x00
      0023AE 12 21 66         [24] 1167 	lcall	_scroll
      0023B1 AE 82            [24] 1168 	mov	r6,dpl
      0023B3 AF 83            [24] 1169 	mov	r7,dph
                                   1170 ;	disp.c:230: while (1) {
      0023B5                       1171 00119$:
                                   1172 ;	disp.c:231: if (c == (int)'T') goto term;
      0023B5 BE 54 06         [24] 1173 	cjne	r6,#0x54,00337$
      0023B8 BF 00 03         [24] 1174 	cjne	r7,#0x00,00337$
      0023BB 02 25 15         [24] 1175 	ljmp	00124$
      0023BE                       1176 00337$:
                                   1177 ;	disp.c:232: else if (c == (int)'R') goto reset;
      0023BE BE 52 06         [24] 1178 	cjne	r6,#0x52,00338$
      0023C1 BF 00 03         [24] 1179 	cjne	r7,#0x00,00338$
      0023C4 02 22 F8         [24] 1180 	ljmp	00101$
      0023C7                       1181 00338$:
                                   1182 ;	disp.c:233: else if (c == (int)'L') {
      0023C7 BE 4C 05         [24] 1183 	cjne	r6,#0x4c,00339$
      0023CA BF 00 02         [24] 1184 	cjne	r7,#0x00,00339$
      0023CD 80 03            [24] 1185 	sjmp	00340$
      0023CF                       1186 00339$:
      0023CF 02 24 FF         [24] 1187 	ljmp	00110$
      0023D2                       1188 00340$:
                                   1189 ;	disp.c:234: printstr("LOAD ");
      0023D2 7F 8F            [12] 1190 	mov	r7,#___str_4
      0023D4 7E 26            [12] 1191 	mov	r6,#(___str_4 >> 8)
      0023D6 7C 80            [12] 1192 	mov	r4,#0x80
                                   1193 ;	disp.c:46: return;
      0023D8                       1194 00158$:
                                   1195 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0023D8 8F 82            [24] 1196 	mov	dpl,r7
      0023DA 8E 83            [24] 1197 	mov	dph,r6
      0023DC 8C F0            [24] 1198 	mov	b,r4
      0023DE 12 26 23         [24] 1199 	lcall	__gptrget
      0023E1 FA               [12] 1200 	mov	r2,a
      0023E2 60 10            [24] 1201 	jz	00134$
      0023E4 7D 00            [12] 1202 	mov	r5,#0x00
      0023E6 8A 82            [24] 1203 	mov	dpl,r2
      0023E8 8D 83            [24] 1204 	mov	dph,r5
      0023EA 12 20 8D         [24] 1205 	lcall	_putchar
      0023ED 0F               [12] 1206 	inc	r7
                                   1207 ;	disp.c:234: printstr("LOAD ");
      0023EE BF 00 E7         [24] 1208 	cjne	r7,#0x00,00158$
      0023F1 0E               [12] 1209 	inc	r6
      0023F2 80 E4            [24] 1210 	sjmp	00158$
      0023F4                       1211 00134$:
                                   1212 ;	disp.c:235: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      0023F4 7C 00            [12] 1213 	mov	r4,#0x00
      0023F6 7D 00            [12] 1214 	mov	r5,#0x00
      0023F8 A8 10            [24] 1215 	mov	r0,_bp
      0023FA 08               [12] 1216 	inc	r0
      0023FB E4               [12] 1217 	clr	a
      0023FC F6               [12] 1218 	mov	@r0,a
      0023FD 08               [12] 1219 	inc	r0
      0023FE F6               [12] 1220 	mov	@r0,a
      0023FF                       1221 00160$:
                                   1222 ;	disp.c:236: c = getchar();
      0023FF C0 04            [24] 1223 	push	ar4
      002401 C0 05            [24] 1224 	push	ar5
      002403 12 20 92         [24] 1225 	lcall	_getchar
      002406 AC 82            [24] 1226 	mov	r4,dpl
      002408 AD 83            [24] 1227 	mov	r5,dph
      00240A 8C 07            [24] 1228 	mov	ar7,r4
      00240C 8D 06            [24] 1229 	mov	ar6,r5
                                   1230 ;	disp.c:237: (void)putchar(c);
      00240E 8F 82            [24] 1231 	mov	dpl,r7
      002410 8E 83            [24] 1232 	mov	dph,r6
      002412 12 20 8D         [24] 1233 	lcall	_putchar
                                   1234 ;	disp.c:238: if ((c == (int)'\r') || (c == (int)'\n')) {
      002415 BF 0D 09         [24] 1235 	cjne	r7,#0x0d,00343$
      002418 BE 00 06         [24] 1236 	cjne	r6,#0x00,00343$
      00241B D0 05            [24] 1237 	pop	ar5
      00241D D0 04            [24] 1238 	pop	ar4
      00241F 80 0A            [24] 1239 	sjmp	00102$
      002421                       1240 00343$:
      002421 D0 05            [24] 1241 	pop	ar5
      002423 D0 04            [24] 1242 	pop	ar4
      002425 BF 0A 11         [24] 1243 	cjne	r7,#0x0a,00103$
      002428 BE 00 0E         [24] 1244 	cjne	r6,#0x00,00103$
      00242B                       1245 00102$:
                                   1246 ;	disp.c:239: buf[j] = 0u;
      00242B EC               [12] 1247 	mov	a,r4
      00242C 24 00            [12] 1248 	add	a,#_buf
      00242E F5 82            [12] 1249 	mov	dpl,a
      002430 ED               [12] 1250 	mov	a,r5
      002431 34 80            [12] 1251 	addc	a,#(_buf >> 8)
      002433 F5 83            [12] 1252 	mov	dph,a
      002435 E4               [12] 1253 	clr	a
      002436 F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	disp.c:240: break;
      002437 80 32            [24] 1256 	sjmp	00106$
      002439                       1257 00103$:
                                   1258 ;	disp.c:241: } else buf[j] = c & 0xffu;
      002439 A8 10            [24] 1259 	mov	r0,_bp
      00243B 08               [12] 1260 	inc	r0
      00243C E6               [12] 1261 	mov	a,@r0
      00243D 24 00            [12] 1262 	add	a,#_buf
      00243F FD               [12] 1263 	mov	r5,a
      002440 08               [12] 1264 	inc	r0
      002441 E6               [12] 1265 	mov	a,@r0
      002442 34 80            [12] 1266 	addc	a,#(_buf >> 8)
      002444 FC               [12] 1267 	mov	r4,a
      002445 8F 03            [24] 1268 	mov	ar3,r7
      002447 8D 82            [24] 1269 	mov	dpl,r5
      002449 8C 83            [24] 1270 	mov	dph,r4
      00244B EB               [12] 1271 	mov	a,r3
      00244C F0               [24] 1272 	movx	@dptr,a
                                   1273 ;	disp.c:235: for (j = 0u; j < (sizeof (buf) - 1u); j++) {
      00244D A8 10            [24] 1274 	mov	r0,_bp
      00244F 08               [12] 1275 	inc	r0
      002450 06               [12] 1276 	inc	@r0
      002451 B6 00 02         [24] 1277 	cjne	@r0,#0x00,00346$
      002454 08               [12] 1278 	inc	r0
      002455 06               [12] 1279 	inc	@r0
      002456                       1280 00346$:
      002456 A8 10            [24] 1281 	mov	r0,_bp
      002458 08               [12] 1282 	inc	r0
      002459 86 04            [24] 1283 	mov	ar4,@r0
      00245B 08               [12] 1284 	inc	r0
      00245C 86 05            [24] 1285 	mov	ar5,@r0
      00245E A8 10            [24] 1286 	mov	r0,_bp
      002460 08               [12] 1287 	inc	r0
      002461 86 02            [24] 1288 	mov	ar2,@r0
      002463 08               [12] 1289 	inc	r0
      002464 86 03            [24] 1290 	mov	ar3,@r0
      002466 74 FF            [12] 1291 	mov	a,#0x100 - 0x01
      002468 2B               [12] 1292 	add	a,r3
      002469 50 94            [24] 1293 	jnc	00160$
      00246B                       1294 00106$:
                                   1295 ;	disp.c:243: buf[j] = 0u;
      00246B EC               [12] 1296 	mov	a,r4
      00246C 24 00            [12] 1297 	add	a,#_buf
      00246E F5 82            [12] 1298 	mov	dpl,a
      002470 ED               [12] 1299 	mov	a,r5
      002471 34 80            [12] 1300 	addc	a,#(_buf >> 8)
      002473 F5 83            [12] 1301 	mov	dph,a
      002475 E4               [12] 1302 	clr	a
      002476 F0               [24] 1303 	movx	@dptr,a
                                   1304 ;	disp.c:244: printstr("\r\n");
      002477 7F 95            [12] 1305 	mov	r7,#___str_5
      002479 7E 26            [12] 1306 	mov	r6,#(___str_5 >> 8)
      00247B 7C 80            [12] 1307 	mov	r4,#0x80
                                   1308 ;	disp.c:46: return;
      00247D                       1309 00163$:
                                   1310 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00247D 8F 82            [24] 1311 	mov	dpl,r7
      00247F 8E 83            [24] 1312 	mov	dph,r6
      002481 8C F0            [24] 1313 	mov	b,r4
      002483 12 26 23         [24] 1314 	lcall	__gptrget
      002486 FA               [12] 1315 	mov	r2,a
      002487 60 10            [24] 1316 	jz	00136$
      002489 7D 00            [12] 1317 	mov	r5,#0x00
      00248B 8A 82            [24] 1318 	mov	dpl,r2
      00248D 8D 83            [24] 1319 	mov	dph,r5
      00248F 12 20 8D         [24] 1320 	lcall	_putchar
      002492 0F               [12] 1321 	inc	r7
                                   1322 ;	disp.c:244: printstr("\r\n");
      002493 BF 00 E7         [24] 1323 	cjne	r7,#0x00,00163$
      002496 0E               [12] 1324 	inc	r6
      002497 80 E4            [24] 1325 	sjmp	00163$
      002499                       1326 00136$:
                                   1327 ;	disp.c:245: printstr("MSG \"");
      002499 7F 98            [12] 1328 	mov	r7,#___str_6
      00249B 7E 26            [12] 1329 	mov	r6,#(___str_6 >> 8)
      00249D 7C 80            [12] 1330 	mov	r4,#0x80
                                   1331 ;	disp.c:46: return;
      00249F                       1332 00166$:
                                   1333 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00249F 8F 82            [24] 1334 	mov	dpl,r7
      0024A1 8E 83            [24] 1335 	mov	dph,r6
      0024A3 8C F0            [24] 1336 	mov	b,r4
      0024A5 12 26 23         [24] 1337 	lcall	__gptrget
      0024A8 FA               [12] 1338 	mov	r2,a
      0024A9 60 10            [24] 1339 	jz	00138$
      0024AB 7D 00            [12] 1340 	mov	r5,#0x00
      0024AD 8A 82            [24] 1341 	mov	dpl,r2
      0024AF 8D 83            [24] 1342 	mov	dph,r5
      0024B1 12 20 8D         [24] 1343 	lcall	_putchar
      0024B4 0F               [12] 1344 	inc	r7
                                   1345 ;	disp.c:245: printstr("MSG \"");
      0024B5 BF 00 E7         [24] 1346 	cjne	r7,#0x00,00166$
      0024B8 0E               [12] 1347 	inc	r6
      0024B9 80 E4            [24] 1348 	sjmp	00166$
      0024BB                       1349 00138$:
                                   1350 ;	disp.c:246: printstr((char *)buf);
      0024BB 7F 00            [12] 1351 	mov	r7,#_buf
      0024BD 7E 80            [12] 1352 	mov	r6,#(_buf >> 8)
      0024BF 7C 00            [12] 1353 	mov	r4,#0x00
                                   1354 ;	disp.c:46: return;
      0024C1                       1355 00169$:
                                   1356 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0024C1 8F 82            [24] 1357 	mov	dpl,r7
      0024C3 8E 83            [24] 1358 	mov	dph,r6
      0024C5 8C F0            [24] 1359 	mov	b,r4
      0024C7 12 26 23         [24] 1360 	lcall	__gptrget
      0024CA FA               [12] 1361 	mov	r2,a
      0024CB 60 10            [24] 1362 	jz	00140$
      0024CD 7D 00            [12] 1363 	mov	r5,#0x00
      0024CF 8A 82            [24] 1364 	mov	dpl,r2
      0024D1 8D 83            [24] 1365 	mov	dph,r5
      0024D3 12 20 8D         [24] 1366 	lcall	_putchar
      0024D6 0F               [12] 1367 	inc	r7
                                   1368 ;	disp.c:246: printstr((char *)buf);
      0024D7 BF 00 E7         [24] 1369 	cjne	r7,#0x00,00169$
      0024DA 0E               [12] 1370 	inc	r6
      0024DB 80 E4            [24] 1371 	sjmp	00169$
      0024DD                       1372 00140$:
                                   1373 ;	disp.c:247: printstr("\"\r\n");
      0024DD 7F 8B            [12] 1374 	mov	r7,#___str_3
      0024DF 7E 26            [12] 1375 	mov	r6,#(___str_3 >> 8)
      0024E1 7C 80            [12] 1376 	mov	r4,#0x80
                                   1377 ;	disp.c:46: return;
      0024E3                       1378 00172$:
                                   1379 ;	disp.c:44: for (; *s; s++) putchar(*s);
      0024E3 8F 82            [24] 1380 	mov	dpl,r7
      0024E5 8E 83            [24] 1381 	mov	dph,r6
      0024E7 8C F0            [24] 1382 	mov	b,r4
      0024E9 12 26 23         [24] 1383 	lcall	__gptrget
      0024EC FA               [12] 1384 	mov	r2,a
      0024ED 60 19            [24] 1385 	jz	00117$
      0024EF 7D 00            [12] 1386 	mov	r5,#0x00
      0024F1 8A 82            [24] 1387 	mov	dpl,r2
      0024F3 8D 83            [24] 1388 	mov	dph,r5
      0024F5 12 20 8D         [24] 1389 	lcall	_putchar
      0024F8 0F               [12] 1390 	inc	r7
                                   1391 ;	disp.c:247: printstr("\"\r\n");
      0024F9 BF 00 E7         [24] 1392 	cjne	r7,#0x00,00172$
      0024FC 0E               [12] 1393 	inc	r6
      0024FD 80 E4            [24] 1394 	sjmp	00172$
      0024FF                       1395 00110$:
                                   1396 ;	disp.c:248: } else if (c == (int)'S') break;
      0024FF BE 53 06         [24] 1397 	cjne	r6,#0x53,00356$
      002502 BF 00 03         [24] 1398 	cjne	r7,#0x00,00356$
      002505 02 23 42         [24] 1399 	ljmp	00122$
      002508                       1400 00356$:
      002508                       1401 00117$:
                                   1402 ;	disp.c:250: c = toupper(getchar());
      002508 12 20 92         [24] 1403 	lcall	_getchar
      00250B 12 25 45         [24] 1404 	lcall	_toupper
      00250E AE 82            [24] 1405 	mov	r6,dpl
      002510 AF 83            [24] 1406 	mov	r7,dph
      002512 02 23 B5         [24] 1407 	ljmp	00119$
                                   1408 ;	disp.c:254: term:	
      002515                       1409 00124$:
                                   1410 ;	disp.c:255: EA = 0;
                                   1411 ;	assignBit
      002515 C2 AF            [12] 1412 	clr	_EA
                                   1413 ;	disp.c:256: printstr("TERM\r\n");
      002517 7D 9E            [12] 1414 	mov	r5,#___str_7
      002519 7E 26            [12] 1415 	mov	r6,#(___str_7 >> 8)
      00251B 7F 80            [12] 1416 	mov	r7,#0x80
                                   1417 ;	disp.c:46: return;
      00251D                       1418 00175$:
                                   1419 ;	disp.c:44: for (; *s; s++) putchar(*s);
      00251D 8D 82            [24] 1420 	mov	dpl,r5
      00251F 8E 83            [24] 1421 	mov	dph,r6
      002521 8F F0            [24] 1422 	mov	b,r7
      002523 12 26 23         [24] 1423 	lcall	__gptrget
      002526 FC               [12] 1424 	mov	r4,a
      002527 60 10            [24] 1425 	jz	00144$
      002529 7B 00            [12] 1426 	mov	r3,#0x00
      00252B 8C 82            [24] 1427 	mov	dpl,r4
      00252D 8B 83            [24] 1428 	mov	dph,r3
      00252F 12 20 8D         [24] 1429 	lcall	_putchar
      002532 0D               [12] 1430 	inc	r5
                                   1431 ;	disp.c:256: printstr("TERM\r\n");
      002533 BD 00 E7         [24] 1432 	cjne	r5,#0x00,00175$
      002536 0E               [12] 1433 	inc	r6
      002537 80 E4            [24] 1434 	sjmp	00175$
      002539                       1435 00144$:
                                   1436 ;	disp.c:257: (void)getchar();
      002539 12 20 92         [24] 1437 	lcall	_getchar
                                   1438 ;	disp.c:261: __endasm;
      00253C 43 87 02         [24] 1439 	orl	pcon, #2
                                   1440 ;	disp.c:262: }
      00253F 85 10 81         [24] 1441 	mov	sp,_bp
      002542 D0 10            [24] 1442 	pop	_bp
      002544 22               [24] 1443 	ret
                                   1444 	.area CSEG    (CODE)
                                   1445 	.area CONST   (CODE)
                                   1446 	.area CONST   (CODE)
      00265E                       1447 ___str_0:
      00265E 50 41 55 53 45        1448 	.ascii "PAUSE"
      002663 0D                    1449 	.db 0x0d
      002664 0A                    1450 	.db 0x0a
      002665 00                    1451 	.db 0x00
                                   1452 	.area CSEG    (CODE)
                                   1453 	.area CONST   (CODE)
      002666                       1454 ___str_1:
      002666 52 45 53 45 54        1455 	.ascii "RESET"
      00266B 0D                    1456 	.db 0x0d
      00266C 0A                    1457 	.db 0x0a
      00266D 00                    1458 	.db 0x00
                                   1459 	.area CSEG    (CODE)
                                   1460 	.area CONST   (CODE)
      00266E                       1461 ___str_2:
      00266E 50 20 53 50 20 4C 20  1462 	.ascii "P SP L ENT S R T START MSG "
             45 4E 54 20 53 20 52
             20 54 20 53 54 41 52
             54 20 4D 53 47 20
      002689 22                    1463 	.db 0x22
      00268A 00                    1464 	.db 0x00
                                   1465 	.area CSEG    (CODE)
                                   1466 	.area CONST   (CODE)
      00268B                       1467 ___str_3:
      00268B 22                    1468 	.db 0x22
      00268C 0D                    1469 	.db 0x0d
      00268D 0A                    1470 	.db 0x0a
      00268E 00                    1471 	.db 0x00
                                   1472 	.area CSEG    (CODE)
                                   1473 	.area CONST   (CODE)
      00268F                       1474 ___str_4:
      00268F 4C 4F 41 44 20        1475 	.ascii "LOAD "
      002694 00                    1476 	.db 0x00
                                   1477 	.area CSEG    (CODE)
                                   1478 	.area CONST   (CODE)
      002695                       1479 ___str_5:
      002695 0D                    1480 	.db 0x0d
      002696 0A                    1481 	.db 0x0a
      002697 00                    1482 	.db 0x00
                                   1483 	.area CSEG    (CODE)
                                   1484 	.area CONST   (CODE)
      002698                       1485 ___str_6:
      002698 4D 53 47 20           1486 	.ascii "MSG "
      00269C 22                    1487 	.db 0x22
      00269D 00                    1488 	.db 0x00
                                   1489 	.area CSEG    (CODE)
                                   1490 	.area CONST   (CODE)
      00269E                       1491 ___str_7:
      00269E 54 45 52 4D           1492 	.ascii "TERM"
      0026A2 0D                    1493 	.db 0x0d
      0026A3 0A                    1494 	.db 0x0a
      0026A4 00                    1495 	.db 0x00
                                   1496 	.area CSEG    (CODE)
                                   1497 	.area CONST   (CODE)
      0026A5                       1498 ___str_8:
      0026A5 47 6F 20 66 75 63 6B  1499 	.ascii "Go fuck yourselves you sons of bitches! "
             20 79 6F 75 72 73 65
             6C 76 65 73 20 79 6F
             75 20 73 6F 6E 73 20
             6F 66 20 62 69 74 63
             68 65 73 21 20
      0026CD 00                    1500 	.db 0x00
                                   1501 	.area CSEG    (CODE)
                                   1502 	.area XINIT   (CODE)
      0026CE                       1503 __xinit__font8x8:
      0026CE 00                    1504 	.db #0x00	; 0
      0026CF 00                    1505 	.db #0x00	; 0
      0026D0 00                    1506 	.db #0x00	; 0
      0026D1 00                    1507 	.db #0x00	; 0
      0026D2 00                    1508 	.db #0x00	; 0
      0026D3 00                    1509 	.db #0x00	; 0
      0026D4 00                    1510 	.db #0x00	; 0
      0026D5 00                    1511 	.db #0x00	; 0
      0026D6 00                    1512 	.db #0x00	; 0
      0026D7 00                    1513 	.db #0x00	; 0
      0026D8 00                    1514 	.db #0x00	; 0
      0026D9 00                    1515 	.db #0x00	; 0
      0026DA 00                    1516 	.db #0x00	; 0
      0026DB 00                    1517 	.db #0x00	; 0
      0026DC 00                    1518 	.db #0x00	; 0
      0026DD 00                    1519 	.db #0x00	; 0
      0026DE 00                    1520 	.db #0x00	; 0
      0026DF 00                    1521 	.db #0x00	; 0
      0026E0 00                    1522 	.db #0x00	; 0
      0026E1 00                    1523 	.db #0x00	; 0
      0026E2 00                    1524 	.db #0x00	; 0
      0026E3 00                    1525 	.db #0x00	; 0
      0026E4 00                    1526 	.db #0x00	; 0
      0026E5 00                    1527 	.db #0x00	; 0
      0026E6 00                    1528 	.db #0x00	; 0
      0026E7 00                    1529 	.db #0x00	; 0
      0026E8 00                    1530 	.db #0x00	; 0
      0026E9 00                    1531 	.db #0x00	; 0
      0026EA 00                    1532 	.db #0x00	; 0
      0026EB 00                    1533 	.db #0x00	; 0
      0026EC 00                    1534 	.db #0x00	; 0
      0026ED 00                    1535 	.db #0x00	; 0
      0026EE 00                    1536 	.db #0x00	; 0
      0026EF 00                    1537 	.db #0x00	; 0
      0026F0 00                    1538 	.db #0x00	; 0
      0026F1 00                    1539 	.db #0x00	; 0
      0026F2 00                    1540 	.db #0x00	; 0
      0026F3 00                    1541 	.db #0x00	; 0
      0026F4 00                    1542 	.db #0x00	; 0
      0026F5 00                    1543 	.db #0x00	; 0
      0026F6 00                    1544 	.db #0x00	; 0
      0026F7 00                    1545 	.db #0x00	; 0
      0026F8 00                    1546 	.db #0x00	; 0
      0026F9 00                    1547 	.db #0x00	; 0
      0026FA 00                    1548 	.db #0x00	; 0
      0026FB 00                    1549 	.db #0x00	; 0
      0026FC 00                    1550 	.db #0x00	; 0
      0026FD 00                    1551 	.db #0x00	; 0
      0026FE 00                    1552 	.db #0x00	; 0
      0026FF 00                    1553 	.db #0x00	; 0
      002700 00                    1554 	.db #0x00	; 0
      002701 00                    1555 	.db #0x00	; 0
      002702 00                    1556 	.db #0x00	; 0
      002703 00                    1557 	.db #0x00	; 0
      002704 00                    1558 	.db #0x00	; 0
      002705 00                    1559 	.db #0x00	; 0
      002706 00                    1560 	.db #0x00	; 0
      002707 00                    1561 	.db #0x00	; 0
      002708 00                    1562 	.db #0x00	; 0
      002709 00                    1563 	.db #0x00	; 0
      00270A 00                    1564 	.db #0x00	; 0
      00270B 00                    1565 	.db #0x00	; 0
      00270C 00                    1566 	.db #0x00	; 0
      00270D 00                    1567 	.db #0x00	; 0
      00270E 00                    1568 	.db #0x00	; 0
      00270F 00                    1569 	.db #0x00	; 0
      002710 00                    1570 	.db #0x00	; 0
      002711 00                    1571 	.db #0x00	; 0
      002712 00                    1572 	.db #0x00	; 0
      002713 00                    1573 	.db #0x00	; 0
      002714 00                    1574 	.db #0x00	; 0
      002715 00                    1575 	.db #0x00	; 0
      002716 00                    1576 	.db #0x00	; 0
      002717 00                    1577 	.db #0x00	; 0
      002718 00                    1578 	.db #0x00	; 0
      002719 00                    1579 	.db #0x00	; 0
      00271A 00                    1580 	.db #0x00	; 0
      00271B 00                    1581 	.db #0x00	; 0
      00271C 00                    1582 	.db #0x00	; 0
      00271D 00                    1583 	.db #0x00	; 0
      00271E 00                    1584 	.db #0x00	; 0
      00271F 00                    1585 	.db #0x00	; 0
      002720 00                    1586 	.db #0x00	; 0
      002721 00                    1587 	.db #0x00	; 0
      002722 00                    1588 	.db #0x00	; 0
      002723 00                    1589 	.db #0x00	; 0
      002724 00                    1590 	.db #0x00	; 0
      002725 00                    1591 	.db #0x00	; 0
      002726 00                    1592 	.db #0x00	; 0
      002727 00                    1593 	.db #0x00	; 0
      002728 00                    1594 	.db #0x00	; 0
      002729 00                    1595 	.db #0x00	; 0
      00272A 00                    1596 	.db #0x00	; 0
      00272B 00                    1597 	.db #0x00	; 0
      00272C 00                    1598 	.db #0x00	; 0
      00272D 00                    1599 	.db #0x00	; 0
      00272E 00                    1600 	.db #0x00	; 0
      00272F 00                    1601 	.db #0x00	; 0
      002730 00                    1602 	.db #0x00	; 0
      002731 00                    1603 	.db #0x00	; 0
      002732 00                    1604 	.db #0x00	; 0
      002733 00                    1605 	.db #0x00	; 0
      002734 00                    1606 	.db #0x00	; 0
      002735 00                    1607 	.db #0x00	; 0
      002736 00                    1608 	.db #0x00	; 0
      002737 00                    1609 	.db #0x00	; 0
      002738 00                    1610 	.db #0x00	; 0
      002739 00                    1611 	.db #0x00	; 0
      00273A 00                    1612 	.db #0x00	; 0
      00273B 00                    1613 	.db #0x00	; 0
      00273C 00                    1614 	.db #0x00	; 0
      00273D 00                    1615 	.db #0x00	; 0
      00273E 00                    1616 	.db #0x00	; 0
      00273F 00                    1617 	.db #0x00	; 0
      002740 00                    1618 	.db #0x00	; 0
      002741 00                    1619 	.db #0x00	; 0
      002742 00                    1620 	.db #0x00	; 0
      002743 00                    1621 	.db #0x00	; 0
      002744 00                    1622 	.db #0x00	; 0
      002745 00                    1623 	.db #0x00	; 0
      002746 00                    1624 	.db #0x00	; 0
      002747 00                    1625 	.db #0x00	; 0
      002748 00                    1626 	.db #0x00	; 0
      002749 00                    1627 	.db #0x00	; 0
      00274A 00                    1628 	.db #0x00	; 0
      00274B 00                    1629 	.db #0x00	; 0
      00274C 00                    1630 	.db #0x00	; 0
      00274D 00                    1631 	.db #0x00	; 0
      00274E 00                    1632 	.db #0x00	; 0
      00274F 00                    1633 	.db #0x00	; 0
      002750 00                    1634 	.db #0x00	; 0
      002751 00                    1635 	.db #0x00	; 0
      002752 00                    1636 	.db #0x00	; 0
      002753 00                    1637 	.db #0x00	; 0
      002754 00                    1638 	.db #0x00	; 0
      002755 00                    1639 	.db #0x00	; 0
      002756 00                    1640 	.db #0x00	; 0
      002757 00                    1641 	.db #0x00	; 0
      002758 00                    1642 	.db #0x00	; 0
      002759 00                    1643 	.db #0x00	; 0
      00275A 00                    1644 	.db #0x00	; 0
      00275B 00                    1645 	.db #0x00	; 0
      00275C 00                    1646 	.db #0x00	; 0
      00275D 00                    1647 	.db #0x00	; 0
      00275E 00                    1648 	.db #0x00	; 0
      00275F 00                    1649 	.db #0x00	; 0
      002760 00                    1650 	.db #0x00	; 0
      002761 00                    1651 	.db #0x00	; 0
      002762 00                    1652 	.db #0x00	; 0
      002763 00                    1653 	.db #0x00	; 0
      002764 00                    1654 	.db #0x00	; 0
      002765 00                    1655 	.db #0x00	; 0
      002766 00                    1656 	.db #0x00	; 0
      002767 00                    1657 	.db #0x00	; 0
      002768 00                    1658 	.db #0x00	; 0
      002769 00                    1659 	.db #0x00	; 0
      00276A 00                    1660 	.db #0x00	; 0
      00276B 00                    1661 	.db #0x00	; 0
      00276C 00                    1662 	.db #0x00	; 0
      00276D 00                    1663 	.db #0x00	; 0
      00276E 00                    1664 	.db #0x00	; 0
      00276F 00                    1665 	.db #0x00	; 0
      002770 00                    1666 	.db #0x00	; 0
      002771 00                    1667 	.db #0x00	; 0
      002772 00                    1668 	.db #0x00	; 0
      002773 00                    1669 	.db #0x00	; 0
      002774 00                    1670 	.db #0x00	; 0
      002775 00                    1671 	.db #0x00	; 0
      002776 00                    1672 	.db #0x00	; 0
      002777 00                    1673 	.db #0x00	; 0
      002778 00                    1674 	.db #0x00	; 0
      002779 00                    1675 	.db #0x00	; 0
      00277A 00                    1676 	.db #0x00	; 0
      00277B 00                    1677 	.db #0x00	; 0
      00277C 00                    1678 	.db #0x00	; 0
      00277D 00                    1679 	.db #0x00	; 0
      00277E 00                    1680 	.db #0x00	; 0
      00277F 00                    1681 	.db #0x00	; 0
      002780 00                    1682 	.db #0x00	; 0
      002781 00                    1683 	.db #0x00	; 0
      002782 00                    1684 	.db #0x00	; 0
      002783 00                    1685 	.db #0x00	; 0
      002784 00                    1686 	.db #0x00	; 0
      002785 00                    1687 	.db #0x00	; 0
      002786 00                    1688 	.db #0x00	; 0
      002787 00                    1689 	.db #0x00	; 0
      002788 00                    1690 	.db #0x00	; 0
      002789 00                    1691 	.db #0x00	; 0
      00278A 00                    1692 	.db #0x00	; 0
      00278B 00                    1693 	.db #0x00	; 0
      00278C 00                    1694 	.db #0x00	; 0
      00278D 00                    1695 	.db #0x00	; 0
      00278E 00                    1696 	.db #0x00	; 0
      00278F 00                    1697 	.db #0x00	; 0
      002790 00                    1698 	.db #0x00	; 0
      002791 00                    1699 	.db #0x00	; 0
      002792 00                    1700 	.db #0x00	; 0
      002793 00                    1701 	.db #0x00	; 0
      002794 00                    1702 	.db #0x00	; 0
      002795 00                    1703 	.db #0x00	; 0
      002796 00                    1704 	.db #0x00	; 0
      002797 00                    1705 	.db #0x00	; 0
      002798 00                    1706 	.db #0x00	; 0
      002799 00                    1707 	.db #0x00	; 0
      00279A 00                    1708 	.db #0x00	; 0
      00279B 00                    1709 	.db #0x00	; 0
      00279C 00                    1710 	.db #0x00	; 0
      00279D 00                    1711 	.db #0x00	; 0
      00279E 00                    1712 	.db #0x00	; 0
      00279F 00                    1713 	.db #0x00	; 0
      0027A0 00                    1714 	.db #0x00	; 0
      0027A1 00                    1715 	.db #0x00	; 0
      0027A2 00                    1716 	.db #0x00	; 0
      0027A3 00                    1717 	.db #0x00	; 0
      0027A4 00                    1718 	.db #0x00	; 0
      0027A5 00                    1719 	.db #0x00	; 0
      0027A6 00                    1720 	.db #0x00	; 0
      0027A7 00                    1721 	.db #0x00	; 0
      0027A8 00                    1722 	.db #0x00	; 0
      0027A9 00                    1723 	.db #0x00	; 0
      0027AA 00                    1724 	.db #0x00	; 0
      0027AB 00                    1725 	.db #0x00	; 0
      0027AC 00                    1726 	.db #0x00	; 0
      0027AD 00                    1727 	.db #0x00	; 0
      0027AE 00                    1728 	.db #0x00	; 0
      0027AF 00                    1729 	.db #0x00	; 0
      0027B0 00                    1730 	.db #0x00	; 0
      0027B1 00                    1731 	.db #0x00	; 0
      0027B2 00                    1732 	.db #0x00	; 0
      0027B3 00                    1733 	.db #0x00	; 0
      0027B4 00                    1734 	.db #0x00	; 0
      0027B5 00                    1735 	.db #0x00	; 0
      0027B6 00                    1736 	.db #0x00	; 0
      0027B7 00                    1737 	.db #0x00	; 0
      0027B8 00                    1738 	.db #0x00	; 0
      0027B9 00                    1739 	.db #0x00	; 0
      0027BA 00                    1740 	.db #0x00	; 0
      0027BB 00                    1741 	.db #0x00	; 0
      0027BC 00                    1742 	.db #0x00	; 0
      0027BD 00                    1743 	.db #0x00	; 0
      0027BE 00                    1744 	.db #0x00	; 0
      0027BF 00                    1745 	.db #0x00	; 0
      0027C0 00                    1746 	.db #0x00	; 0
      0027C1 00                    1747 	.db #0x00	; 0
      0027C2 00                    1748 	.db #0x00	; 0
      0027C3 00                    1749 	.db #0x00	; 0
      0027C4 00                    1750 	.db #0x00	; 0
      0027C5 00                    1751 	.db #0x00	; 0
      0027C6 00                    1752 	.db #0x00	; 0
      0027C7 00                    1753 	.db #0x00	; 0
      0027C8 00                    1754 	.db #0x00	; 0
      0027C9 00                    1755 	.db #0x00	; 0
      0027CA 00                    1756 	.db #0x00	; 0
      0027CB 00                    1757 	.db #0x00	; 0
      0027CC 00                    1758 	.db #0x00	; 0
      0027CD 00                    1759 	.db #0x00	; 0
      0027CE 00                    1760 	.db #0x00	; 0
      0027CF 00                    1761 	.db #0x00	; 0
      0027D0 00                    1762 	.db #0x00	; 0
      0027D1 00                    1763 	.db #0x00	; 0
      0027D2 00                    1764 	.db #0x00	; 0
      0027D3 00                    1765 	.db #0x00	; 0
      0027D4 00                    1766 	.db #0x00	; 0
      0027D5 00                    1767 	.db #0x00	; 0
      0027D6 18                    1768 	.db #0x18	; 24
      0027D7 3C                    1769 	.db #0x3c	; 60
      0027D8 3C                    1770 	.db #0x3c	; 60
      0027D9 18                    1771 	.db #0x18	; 24
      0027DA 18                    1772 	.db #0x18	; 24
      0027DB 00                    1773 	.db #0x00	; 0
      0027DC 18                    1774 	.db #0x18	; 24
      0027DD 00                    1775 	.db #0x00	; 0
      0027DE 36                    1776 	.db #0x36	; 54	'6'
      0027DF 36                    1777 	.db #0x36	; 54	'6'
      0027E0 00                    1778 	.db #0x00	; 0
      0027E1 00                    1779 	.db #0x00	; 0
      0027E2 00                    1780 	.db #0x00	; 0
      0027E3 00                    1781 	.db #0x00	; 0
      0027E4 00                    1782 	.db #0x00	; 0
      0027E5 00                    1783 	.db #0x00	; 0
      0027E6 36                    1784 	.db #0x36	; 54	'6'
      0027E7 36                    1785 	.db #0x36	; 54	'6'
      0027E8 7F                    1786 	.db #0x7f	; 127
      0027E9 36                    1787 	.db #0x36	; 54	'6'
      0027EA 7F                    1788 	.db #0x7f	; 127
      0027EB 36                    1789 	.db #0x36	; 54	'6'
      0027EC 36                    1790 	.db #0x36	; 54	'6'
      0027ED 00                    1791 	.db #0x00	; 0
      0027EE 0C                    1792 	.db #0x0c	; 12
      0027EF 3E                    1793 	.db #0x3e	; 62
      0027F0 03                    1794 	.db #0x03	; 3
      0027F1 1E                    1795 	.db #0x1e	; 30
      0027F2 30                    1796 	.db #0x30	; 48	'0'
      0027F3 1F                    1797 	.db #0x1f	; 31
      0027F4 0C                    1798 	.db #0x0c	; 12
      0027F5 00                    1799 	.db #0x00	; 0
      0027F6 00                    1800 	.db #0x00	; 0
      0027F7 63                    1801 	.db #0x63	; 99	'c'
      0027F8 33                    1802 	.db #0x33	; 51	'3'
      0027F9 18                    1803 	.db #0x18	; 24
      0027FA 0C                    1804 	.db #0x0c	; 12
      0027FB 66                    1805 	.db #0x66	; 102	'f'
      0027FC 63                    1806 	.db #0x63	; 99	'c'
      0027FD 00                    1807 	.db #0x00	; 0
      0027FE 1C                    1808 	.db #0x1c	; 28
      0027FF 36                    1809 	.db #0x36	; 54	'6'
      002800 1C                    1810 	.db #0x1c	; 28
      002801 6E                    1811 	.db #0x6e	; 110	'n'
      002802 3B                    1812 	.db #0x3b	; 59
      002803 33                    1813 	.db #0x33	; 51	'3'
      002804 6E                    1814 	.db #0x6e	; 110	'n'
      002805 00                    1815 	.db #0x00	; 0
      002806 06                    1816 	.db #0x06	; 6
      002807 06                    1817 	.db #0x06	; 6
      002808 03                    1818 	.db #0x03	; 3
      002809 00                    1819 	.db #0x00	; 0
      00280A 00                    1820 	.db #0x00	; 0
      00280B 00                    1821 	.db #0x00	; 0
      00280C 00                    1822 	.db #0x00	; 0
      00280D 00                    1823 	.db #0x00	; 0
      00280E 18                    1824 	.db #0x18	; 24
      00280F 0C                    1825 	.db #0x0c	; 12
      002810 06                    1826 	.db #0x06	; 6
      002811 06                    1827 	.db #0x06	; 6
      002812 06                    1828 	.db #0x06	; 6
      002813 0C                    1829 	.db #0x0c	; 12
      002814 18                    1830 	.db #0x18	; 24
      002815 00                    1831 	.db #0x00	; 0
      002816 06                    1832 	.db #0x06	; 6
      002817 0C                    1833 	.db #0x0c	; 12
      002818 18                    1834 	.db #0x18	; 24
      002819 18                    1835 	.db #0x18	; 24
      00281A 18                    1836 	.db #0x18	; 24
      00281B 0C                    1837 	.db #0x0c	; 12
      00281C 06                    1838 	.db #0x06	; 6
      00281D 00                    1839 	.db #0x00	; 0
      00281E 00                    1840 	.db #0x00	; 0
      00281F 66                    1841 	.db #0x66	; 102	'f'
      002820 3C                    1842 	.db #0x3c	; 60
      002821 FF                    1843 	.db #0xff	; 255
      002822 3C                    1844 	.db #0x3c	; 60
      002823 66                    1845 	.db #0x66	; 102	'f'
      002824 00                    1846 	.db #0x00	; 0
      002825 00                    1847 	.db #0x00	; 0
      002826 00                    1848 	.db #0x00	; 0
      002827 0C                    1849 	.db #0x0c	; 12
      002828 0C                    1850 	.db #0x0c	; 12
      002829 3F                    1851 	.db #0x3f	; 63
      00282A 0C                    1852 	.db #0x0c	; 12
      00282B 0C                    1853 	.db #0x0c	; 12
      00282C 00                    1854 	.db #0x00	; 0
      00282D 00                    1855 	.db #0x00	; 0
      00282E 00                    1856 	.db #0x00	; 0
      00282F 00                    1857 	.db #0x00	; 0
      002830 00                    1858 	.db #0x00	; 0
      002831 00                    1859 	.db #0x00	; 0
      002832 00                    1860 	.db #0x00	; 0
      002833 0C                    1861 	.db #0x0c	; 12
      002834 0C                    1862 	.db #0x0c	; 12
      002835 06                    1863 	.db #0x06	; 6
      002836 00                    1864 	.db #0x00	; 0
      002837 00                    1865 	.db #0x00	; 0
      002838 00                    1866 	.db #0x00	; 0
      002839 3F                    1867 	.db #0x3f	; 63
      00283A 00                    1868 	.db #0x00	; 0
      00283B 00                    1869 	.db #0x00	; 0
      00283C 00                    1870 	.db #0x00	; 0
      00283D 00                    1871 	.db #0x00	; 0
      00283E 00                    1872 	.db #0x00	; 0
      00283F 00                    1873 	.db #0x00	; 0
      002840 00                    1874 	.db #0x00	; 0
      002841 00                    1875 	.db #0x00	; 0
      002842 00                    1876 	.db #0x00	; 0
      002843 0C                    1877 	.db #0x0c	; 12
      002844 0C                    1878 	.db #0x0c	; 12
      002845 00                    1879 	.db #0x00	; 0
      002846 60                    1880 	.db #0x60	; 96
      002847 30                    1881 	.db #0x30	; 48	'0'
      002848 18                    1882 	.db #0x18	; 24
      002849 0C                    1883 	.db #0x0c	; 12
      00284A 06                    1884 	.db #0x06	; 6
      00284B 03                    1885 	.db #0x03	; 3
      00284C 01                    1886 	.db #0x01	; 1
      00284D 00                    1887 	.db #0x00	; 0
      00284E 3E                    1888 	.db #0x3e	; 62
      00284F 63                    1889 	.db #0x63	; 99	'c'
      002850 73                    1890 	.db #0x73	; 115	's'
      002851 7B                    1891 	.db #0x7b	; 123
      002852 6F                    1892 	.db #0x6f	; 111	'o'
      002853 67                    1893 	.db #0x67	; 103	'g'
      002854 3E                    1894 	.db #0x3e	; 62
      002855 00                    1895 	.db #0x00	; 0
      002856 0C                    1896 	.db #0x0c	; 12
      002857 0E                    1897 	.db #0x0e	; 14
      002858 0C                    1898 	.db #0x0c	; 12
      002859 0C                    1899 	.db #0x0c	; 12
      00285A 0C                    1900 	.db #0x0c	; 12
      00285B 0C                    1901 	.db #0x0c	; 12
      00285C 3F                    1902 	.db #0x3f	; 63
      00285D 00                    1903 	.db #0x00	; 0
      00285E 1E                    1904 	.db #0x1e	; 30
      00285F 33                    1905 	.db #0x33	; 51	'3'
      002860 30                    1906 	.db #0x30	; 48	'0'
      002861 1C                    1907 	.db #0x1c	; 28
      002862 06                    1908 	.db #0x06	; 6
      002863 33                    1909 	.db #0x33	; 51	'3'
      002864 3F                    1910 	.db #0x3f	; 63
      002865 00                    1911 	.db #0x00	; 0
      002866 1E                    1912 	.db #0x1e	; 30
      002867 33                    1913 	.db #0x33	; 51	'3'
      002868 30                    1914 	.db #0x30	; 48	'0'
      002869 1C                    1915 	.db #0x1c	; 28
      00286A 30                    1916 	.db #0x30	; 48	'0'
      00286B 33                    1917 	.db #0x33	; 51	'3'
      00286C 1E                    1918 	.db #0x1e	; 30
      00286D 00                    1919 	.db #0x00	; 0
      00286E 38                    1920 	.db #0x38	; 56	'8'
      00286F 3C                    1921 	.db #0x3c	; 60
      002870 36                    1922 	.db #0x36	; 54	'6'
      002871 33                    1923 	.db #0x33	; 51	'3'
      002872 7F                    1924 	.db #0x7f	; 127
      002873 30                    1925 	.db #0x30	; 48	'0'
      002874 78                    1926 	.db #0x78	; 120	'x'
      002875 00                    1927 	.db #0x00	; 0
      002876 3F                    1928 	.db #0x3f	; 63
      002877 03                    1929 	.db #0x03	; 3
      002878 1F                    1930 	.db #0x1f	; 31
      002879 30                    1931 	.db #0x30	; 48	'0'
      00287A 30                    1932 	.db #0x30	; 48	'0'
      00287B 33                    1933 	.db #0x33	; 51	'3'
      00287C 1E                    1934 	.db #0x1e	; 30
      00287D 00                    1935 	.db #0x00	; 0
      00287E 1C                    1936 	.db #0x1c	; 28
      00287F 06                    1937 	.db #0x06	; 6
      002880 03                    1938 	.db #0x03	; 3
      002881 1F                    1939 	.db #0x1f	; 31
      002882 33                    1940 	.db #0x33	; 51	'3'
      002883 33                    1941 	.db #0x33	; 51	'3'
      002884 1E                    1942 	.db #0x1e	; 30
      002885 00                    1943 	.db #0x00	; 0
      002886 3F                    1944 	.db #0x3f	; 63
      002887 33                    1945 	.db #0x33	; 51	'3'
      002888 30                    1946 	.db #0x30	; 48	'0'
      002889 18                    1947 	.db #0x18	; 24
      00288A 0C                    1948 	.db #0x0c	; 12
      00288B 0C                    1949 	.db #0x0c	; 12
      00288C 0C                    1950 	.db #0x0c	; 12
      00288D 00                    1951 	.db #0x00	; 0
      00288E 1E                    1952 	.db #0x1e	; 30
      00288F 33                    1953 	.db #0x33	; 51	'3'
      002890 33                    1954 	.db #0x33	; 51	'3'
      002891 1E                    1955 	.db #0x1e	; 30
      002892 33                    1956 	.db #0x33	; 51	'3'
      002893 33                    1957 	.db #0x33	; 51	'3'
      002894 1E                    1958 	.db #0x1e	; 30
      002895 00                    1959 	.db #0x00	; 0
      002896 1E                    1960 	.db #0x1e	; 30
      002897 33                    1961 	.db #0x33	; 51	'3'
      002898 33                    1962 	.db #0x33	; 51	'3'
      002899 3E                    1963 	.db #0x3e	; 62
      00289A 30                    1964 	.db #0x30	; 48	'0'
      00289B 18                    1965 	.db #0x18	; 24
      00289C 0E                    1966 	.db #0x0e	; 14
      00289D 00                    1967 	.db #0x00	; 0
      00289E 00                    1968 	.db #0x00	; 0
      00289F 0C                    1969 	.db #0x0c	; 12
      0028A0 0C                    1970 	.db #0x0c	; 12
      0028A1 00                    1971 	.db #0x00	; 0
      0028A2 00                    1972 	.db #0x00	; 0
      0028A3 0C                    1973 	.db #0x0c	; 12
      0028A4 0C                    1974 	.db #0x0c	; 12
      0028A5 00                    1975 	.db #0x00	; 0
      0028A6 00                    1976 	.db #0x00	; 0
      0028A7 0C                    1977 	.db #0x0c	; 12
      0028A8 0C                    1978 	.db #0x0c	; 12
      0028A9 00                    1979 	.db #0x00	; 0
      0028AA 00                    1980 	.db #0x00	; 0
      0028AB 0C                    1981 	.db #0x0c	; 12
      0028AC 0C                    1982 	.db #0x0c	; 12
      0028AD 06                    1983 	.db #0x06	; 6
      0028AE 18                    1984 	.db #0x18	; 24
      0028AF 0C                    1985 	.db #0x0c	; 12
      0028B0 06                    1986 	.db #0x06	; 6
      0028B1 03                    1987 	.db #0x03	; 3
      0028B2 06                    1988 	.db #0x06	; 6
      0028B3 0C                    1989 	.db #0x0c	; 12
      0028B4 18                    1990 	.db #0x18	; 24
      0028B5 00                    1991 	.db #0x00	; 0
      0028B6 00                    1992 	.db #0x00	; 0
      0028B7 00                    1993 	.db #0x00	; 0
      0028B8 3F                    1994 	.db #0x3f	; 63
      0028B9 00                    1995 	.db #0x00	; 0
      0028BA 00                    1996 	.db #0x00	; 0
      0028BB 3F                    1997 	.db #0x3f	; 63
      0028BC 00                    1998 	.db #0x00	; 0
      0028BD 00                    1999 	.db #0x00	; 0
      0028BE 06                    2000 	.db #0x06	; 6
      0028BF 0C                    2001 	.db #0x0c	; 12
      0028C0 18                    2002 	.db #0x18	; 24
      0028C1 30                    2003 	.db #0x30	; 48	'0'
      0028C2 18                    2004 	.db #0x18	; 24
      0028C3 0C                    2005 	.db #0x0c	; 12
      0028C4 06                    2006 	.db #0x06	; 6
      0028C5 00                    2007 	.db #0x00	; 0
      0028C6 1E                    2008 	.db #0x1e	; 30
      0028C7 33                    2009 	.db #0x33	; 51	'3'
      0028C8 30                    2010 	.db #0x30	; 48	'0'
      0028C9 18                    2011 	.db #0x18	; 24
      0028CA 0C                    2012 	.db #0x0c	; 12
      0028CB 00                    2013 	.db #0x00	; 0
      0028CC 0C                    2014 	.db #0x0c	; 12
      0028CD 00                    2015 	.db #0x00	; 0
      0028CE 3E                    2016 	.db #0x3e	; 62
      0028CF 63                    2017 	.db #0x63	; 99	'c'
      0028D0 7B                    2018 	.db #0x7b	; 123
      0028D1 7B                    2019 	.db #0x7b	; 123
      0028D2 7B                    2020 	.db #0x7b	; 123
      0028D3 03                    2021 	.db #0x03	; 3
      0028D4 1E                    2022 	.db #0x1e	; 30
      0028D5 00                    2023 	.db #0x00	; 0
      0028D6 0C                    2024 	.db #0x0c	; 12
      0028D7 1E                    2025 	.db #0x1e	; 30
      0028D8 33                    2026 	.db #0x33	; 51	'3'
      0028D9 33                    2027 	.db #0x33	; 51	'3'
      0028DA 3F                    2028 	.db #0x3f	; 63
      0028DB 33                    2029 	.db #0x33	; 51	'3'
      0028DC 33                    2030 	.db #0x33	; 51	'3'
      0028DD 00                    2031 	.db #0x00	; 0
      0028DE 3F                    2032 	.db #0x3f	; 63
      0028DF 66                    2033 	.db #0x66	; 102	'f'
      0028E0 66                    2034 	.db #0x66	; 102	'f'
      0028E1 3E                    2035 	.db #0x3e	; 62
      0028E2 66                    2036 	.db #0x66	; 102	'f'
      0028E3 66                    2037 	.db #0x66	; 102	'f'
      0028E4 3F                    2038 	.db #0x3f	; 63
      0028E5 00                    2039 	.db #0x00	; 0
      0028E6 3C                    2040 	.db #0x3c	; 60
      0028E7 66                    2041 	.db #0x66	; 102	'f'
      0028E8 03                    2042 	.db #0x03	; 3
      0028E9 03                    2043 	.db #0x03	; 3
      0028EA 03                    2044 	.db #0x03	; 3
      0028EB 66                    2045 	.db #0x66	; 102	'f'
      0028EC 3C                    2046 	.db #0x3c	; 60
      0028ED 00                    2047 	.db #0x00	; 0
      0028EE 1F                    2048 	.db #0x1f	; 31
      0028EF 36                    2049 	.db #0x36	; 54	'6'
      0028F0 66                    2050 	.db #0x66	; 102	'f'
      0028F1 66                    2051 	.db #0x66	; 102	'f'
      0028F2 66                    2052 	.db #0x66	; 102	'f'
      0028F3 36                    2053 	.db #0x36	; 54	'6'
      0028F4 1F                    2054 	.db #0x1f	; 31
      0028F5 00                    2055 	.db #0x00	; 0
      0028F6 7F                    2056 	.db #0x7f	; 127
      0028F7 46                    2057 	.db #0x46	; 70	'F'
      0028F8 16                    2058 	.db #0x16	; 22
      0028F9 1E                    2059 	.db #0x1e	; 30
      0028FA 16                    2060 	.db #0x16	; 22
      0028FB 46                    2061 	.db #0x46	; 70	'F'
      0028FC 7F                    2062 	.db #0x7f	; 127
      0028FD 00                    2063 	.db #0x00	; 0
      0028FE 7F                    2064 	.db #0x7f	; 127
      0028FF 46                    2065 	.db #0x46	; 70	'F'
      002900 16                    2066 	.db #0x16	; 22
      002901 1E                    2067 	.db #0x1e	; 30
      002902 16                    2068 	.db #0x16	; 22
      002903 06                    2069 	.db #0x06	; 6
      002904 0F                    2070 	.db #0x0f	; 15
      002905 00                    2071 	.db #0x00	; 0
      002906 3C                    2072 	.db #0x3c	; 60
      002907 66                    2073 	.db #0x66	; 102	'f'
      002908 03                    2074 	.db #0x03	; 3
      002909 03                    2075 	.db #0x03	; 3
      00290A 73                    2076 	.db #0x73	; 115	's'
      00290B 66                    2077 	.db #0x66	; 102	'f'
      00290C 7C                    2078 	.db #0x7c	; 124
      00290D 00                    2079 	.db #0x00	; 0
      00290E 33                    2080 	.db #0x33	; 51	'3'
      00290F 33                    2081 	.db #0x33	; 51	'3'
      002910 33                    2082 	.db #0x33	; 51	'3'
      002911 3F                    2083 	.db #0x3f	; 63
      002912 33                    2084 	.db #0x33	; 51	'3'
      002913 33                    2085 	.db #0x33	; 51	'3'
      002914 33                    2086 	.db #0x33	; 51	'3'
      002915 00                    2087 	.db #0x00	; 0
      002916 1E                    2088 	.db #0x1e	; 30
      002917 0C                    2089 	.db #0x0c	; 12
      002918 0C                    2090 	.db #0x0c	; 12
      002919 0C                    2091 	.db #0x0c	; 12
      00291A 0C                    2092 	.db #0x0c	; 12
      00291B 0C                    2093 	.db #0x0c	; 12
      00291C 1E                    2094 	.db #0x1e	; 30
      00291D 00                    2095 	.db #0x00	; 0
      00291E 78                    2096 	.db #0x78	; 120	'x'
      00291F 30                    2097 	.db #0x30	; 48	'0'
      002920 30                    2098 	.db #0x30	; 48	'0'
      002921 30                    2099 	.db #0x30	; 48	'0'
      002922 33                    2100 	.db #0x33	; 51	'3'
      002923 33                    2101 	.db #0x33	; 51	'3'
      002924 1E                    2102 	.db #0x1e	; 30
      002925 00                    2103 	.db #0x00	; 0
      002926 67                    2104 	.db #0x67	; 103	'g'
      002927 66                    2105 	.db #0x66	; 102	'f'
      002928 36                    2106 	.db #0x36	; 54	'6'
      002929 1E                    2107 	.db #0x1e	; 30
      00292A 36                    2108 	.db #0x36	; 54	'6'
      00292B 66                    2109 	.db #0x66	; 102	'f'
      00292C 67                    2110 	.db #0x67	; 103	'g'
      00292D 00                    2111 	.db #0x00	; 0
      00292E 0F                    2112 	.db #0x0f	; 15
      00292F 06                    2113 	.db #0x06	; 6
      002930 06                    2114 	.db #0x06	; 6
      002931 06                    2115 	.db #0x06	; 6
      002932 46                    2116 	.db #0x46	; 70	'F'
      002933 66                    2117 	.db #0x66	; 102	'f'
      002934 7F                    2118 	.db #0x7f	; 127
      002935 00                    2119 	.db #0x00	; 0
      002936 63                    2120 	.db #0x63	; 99	'c'
      002937 77                    2121 	.db #0x77	; 119	'w'
      002938 7F                    2122 	.db #0x7f	; 127
      002939 7F                    2123 	.db #0x7f	; 127
      00293A 6B                    2124 	.db #0x6b	; 107	'k'
      00293B 63                    2125 	.db #0x63	; 99	'c'
      00293C 63                    2126 	.db #0x63	; 99	'c'
      00293D 00                    2127 	.db #0x00	; 0
      00293E 63                    2128 	.db #0x63	; 99	'c'
      00293F 67                    2129 	.db #0x67	; 103	'g'
      002940 6F                    2130 	.db #0x6f	; 111	'o'
      002941 7B                    2131 	.db #0x7b	; 123
      002942 73                    2132 	.db #0x73	; 115	's'
      002943 63                    2133 	.db #0x63	; 99	'c'
      002944 63                    2134 	.db #0x63	; 99	'c'
      002945 00                    2135 	.db #0x00	; 0
      002946 1C                    2136 	.db #0x1c	; 28
      002947 36                    2137 	.db #0x36	; 54	'6'
      002948 63                    2138 	.db #0x63	; 99	'c'
      002949 63                    2139 	.db #0x63	; 99	'c'
      00294A 63                    2140 	.db #0x63	; 99	'c'
      00294B 36                    2141 	.db #0x36	; 54	'6'
      00294C 1C                    2142 	.db #0x1c	; 28
      00294D 00                    2143 	.db #0x00	; 0
      00294E 3F                    2144 	.db #0x3f	; 63
      00294F 66                    2145 	.db #0x66	; 102	'f'
      002950 66                    2146 	.db #0x66	; 102	'f'
      002951 3E                    2147 	.db #0x3e	; 62
      002952 06                    2148 	.db #0x06	; 6
      002953 06                    2149 	.db #0x06	; 6
      002954 0F                    2150 	.db #0x0f	; 15
      002955 00                    2151 	.db #0x00	; 0
      002956 1E                    2152 	.db #0x1e	; 30
      002957 33                    2153 	.db #0x33	; 51	'3'
      002958 33                    2154 	.db #0x33	; 51	'3'
      002959 33                    2155 	.db #0x33	; 51	'3'
      00295A 3B                    2156 	.db #0x3b	; 59
      00295B 1E                    2157 	.db #0x1e	; 30
      00295C 38                    2158 	.db #0x38	; 56	'8'
      00295D 00                    2159 	.db #0x00	; 0
      00295E 3F                    2160 	.db #0x3f	; 63
      00295F 66                    2161 	.db #0x66	; 102	'f'
      002960 66                    2162 	.db #0x66	; 102	'f'
      002961 3E                    2163 	.db #0x3e	; 62
      002962 36                    2164 	.db #0x36	; 54	'6'
      002963 66                    2165 	.db #0x66	; 102	'f'
      002964 67                    2166 	.db #0x67	; 103	'g'
      002965 00                    2167 	.db #0x00	; 0
      002966 1E                    2168 	.db #0x1e	; 30
      002967 33                    2169 	.db #0x33	; 51	'3'
      002968 07                    2170 	.db #0x07	; 7
      002969 0E                    2171 	.db #0x0e	; 14
      00296A 38                    2172 	.db #0x38	; 56	'8'
      00296B 33                    2173 	.db #0x33	; 51	'3'
      00296C 1E                    2174 	.db #0x1e	; 30
      00296D 00                    2175 	.db #0x00	; 0
      00296E 3F                    2176 	.db #0x3f	; 63
      00296F 2D                    2177 	.db #0x2d	; 45
      002970 0C                    2178 	.db #0x0c	; 12
      002971 0C                    2179 	.db #0x0c	; 12
      002972 0C                    2180 	.db #0x0c	; 12
      002973 0C                    2181 	.db #0x0c	; 12
      002974 1E                    2182 	.db #0x1e	; 30
      002975 00                    2183 	.db #0x00	; 0
      002976 33                    2184 	.db #0x33	; 51	'3'
      002977 33                    2185 	.db #0x33	; 51	'3'
      002978 33                    2186 	.db #0x33	; 51	'3'
      002979 33                    2187 	.db #0x33	; 51	'3'
      00297A 33                    2188 	.db #0x33	; 51	'3'
      00297B 33                    2189 	.db #0x33	; 51	'3'
      00297C 3F                    2190 	.db #0x3f	; 63
      00297D 00                    2191 	.db #0x00	; 0
      00297E 33                    2192 	.db #0x33	; 51	'3'
      00297F 33                    2193 	.db #0x33	; 51	'3'
      002980 33                    2194 	.db #0x33	; 51	'3'
      002981 33                    2195 	.db #0x33	; 51	'3'
      002982 33                    2196 	.db #0x33	; 51	'3'
      002983 1E                    2197 	.db #0x1e	; 30
      002984 0C                    2198 	.db #0x0c	; 12
      002985 00                    2199 	.db #0x00	; 0
      002986 63                    2200 	.db #0x63	; 99	'c'
      002987 63                    2201 	.db #0x63	; 99	'c'
      002988 63                    2202 	.db #0x63	; 99	'c'
      002989 6B                    2203 	.db #0x6b	; 107	'k'
      00298A 7F                    2204 	.db #0x7f	; 127
      00298B 77                    2205 	.db #0x77	; 119	'w'
      00298C 63                    2206 	.db #0x63	; 99	'c'
      00298D 00                    2207 	.db #0x00	; 0
      00298E 63                    2208 	.db #0x63	; 99	'c'
      00298F 63                    2209 	.db #0x63	; 99	'c'
      002990 36                    2210 	.db #0x36	; 54	'6'
      002991 1C                    2211 	.db #0x1c	; 28
      002992 1C                    2212 	.db #0x1c	; 28
      002993 36                    2213 	.db #0x36	; 54	'6'
      002994 63                    2214 	.db #0x63	; 99	'c'
      002995 00                    2215 	.db #0x00	; 0
      002996 33                    2216 	.db #0x33	; 51	'3'
      002997 33                    2217 	.db #0x33	; 51	'3'
      002998 33                    2218 	.db #0x33	; 51	'3'
      002999 1E                    2219 	.db #0x1e	; 30
      00299A 0C                    2220 	.db #0x0c	; 12
      00299B 0C                    2221 	.db #0x0c	; 12
      00299C 1E                    2222 	.db #0x1e	; 30
      00299D 00                    2223 	.db #0x00	; 0
      00299E 7F                    2224 	.db #0x7f	; 127
      00299F 63                    2225 	.db #0x63	; 99	'c'
      0029A0 31                    2226 	.db #0x31	; 49	'1'
      0029A1 18                    2227 	.db #0x18	; 24
      0029A2 4C                    2228 	.db #0x4c	; 76	'L'
      0029A3 66                    2229 	.db #0x66	; 102	'f'
      0029A4 7F                    2230 	.db #0x7f	; 127
      0029A5 00                    2231 	.db #0x00	; 0
      0029A6 1E                    2232 	.db #0x1e	; 30
      0029A7 06                    2233 	.db #0x06	; 6
      0029A8 06                    2234 	.db #0x06	; 6
      0029A9 06                    2235 	.db #0x06	; 6
      0029AA 06                    2236 	.db #0x06	; 6
      0029AB 06                    2237 	.db #0x06	; 6
      0029AC 1E                    2238 	.db #0x1e	; 30
      0029AD 00                    2239 	.db #0x00	; 0
      0029AE 03                    2240 	.db #0x03	; 3
      0029AF 06                    2241 	.db #0x06	; 6
      0029B0 0C                    2242 	.db #0x0c	; 12
      0029B1 18                    2243 	.db #0x18	; 24
      0029B2 30                    2244 	.db #0x30	; 48	'0'
      0029B3 60                    2245 	.db #0x60	; 96
      0029B4 40                    2246 	.db #0x40	; 64
      0029B5 00                    2247 	.db #0x00	; 0
      0029B6 1E                    2248 	.db #0x1e	; 30
      0029B7 18                    2249 	.db #0x18	; 24
      0029B8 18                    2250 	.db #0x18	; 24
      0029B9 18                    2251 	.db #0x18	; 24
      0029BA 18                    2252 	.db #0x18	; 24
      0029BB 18                    2253 	.db #0x18	; 24
      0029BC 1E                    2254 	.db #0x1e	; 30
      0029BD 00                    2255 	.db #0x00	; 0
      0029BE 08                    2256 	.db #0x08	; 8
      0029BF 1C                    2257 	.db #0x1c	; 28
      0029C0 36                    2258 	.db #0x36	; 54	'6'
      0029C1 63                    2259 	.db #0x63	; 99	'c'
      0029C2 00                    2260 	.db #0x00	; 0
      0029C3 00                    2261 	.db #0x00	; 0
      0029C4 00                    2262 	.db #0x00	; 0
      0029C5 00                    2263 	.db #0x00	; 0
      0029C6 00                    2264 	.db #0x00	; 0
      0029C7 00                    2265 	.db #0x00	; 0
      0029C8 00                    2266 	.db #0x00	; 0
      0029C9 00                    2267 	.db #0x00	; 0
      0029CA 00                    2268 	.db #0x00	; 0
      0029CB 00                    2269 	.db #0x00	; 0
      0029CC 00                    2270 	.db #0x00	; 0
      0029CD FF                    2271 	.db #0xff	; 255
      0029CE 0C                    2272 	.db #0x0c	; 12
      0029CF 0C                    2273 	.db #0x0c	; 12
      0029D0 18                    2274 	.db #0x18	; 24
      0029D1 00                    2275 	.db #0x00	; 0
      0029D2 00                    2276 	.db #0x00	; 0
      0029D3 00                    2277 	.db #0x00	; 0
      0029D4 00                    2278 	.db #0x00	; 0
      0029D5 00                    2279 	.db #0x00	; 0
      0029D6 00                    2280 	.db #0x00	; 0
      0029D7 00                    2281 	.db #0x00	; 0
      0029D8 1E                    2282 	.db #0x1e	; 30
      0029D9 30                    2283 	.db #0x30	; 48	'0'
      0029DA 3E                    2284 	.db #0x3e	; 62
      0029DB 33                    2285 	.db #0x33	; 51	'3'
      0029DC 6E                    2286 	.db #0x6e	; 110	'n'
      0029DD 00                    2287 	.db #0x00	; 0
      0029DE 07                    2288 	.db #0x07	; 7
      0029DF 06                    2289 	.db #0x06	; 6
      0029E0 06                    2290 	.db #0x06	; 6
      0029E1 3E                    2291 	.db #0x3e	; 62
      0029E2 66                    2292 	.db #0x66	; 102	'f'
      0029E3 66                    2293 	.db #0x66	; 102	'f'
      0029E4 3B                    2294 	.db #0x3b	; 59
      0029E5 00                    2295 	.db #0x00	; 0
      0029E6 00                    2296 	.db #0x00	; 0
      0029E7 00                    2297 	.db #0x00	; 0
      0029E8 1E                    2298 	.db #0x1e	; 30
      0029E9 33                    2299 	.db #0x33	; 51	'3'
      0029EA 03                    2300 	.db #0x03	; 3
      0029EB 33                    2301 	.db #0x33	; 51	'3'
      0029EC 1E                    2302 	.db #0x1e	; 30
      0029ED 00                    2303 	.db #0x00	; 0
      0029EE 38                    2304 	.db #0x38	; 56	'8'
      0029EF 30                    2305 	.db #0x30	; 48	'0'
      0029F0 30                    2306 	.db #0x30	; 48	'0'
      0029F1 3E                    2307 	.db #0x3e	; 62
      0029F2 33                    2308 	.db #0x33	; 51	'3'
      0029F3 33                    2309 	.db #0x33	; 51	'3'
      0029F4 6E                    2310 	.db #0x6e	; 110	'n'
      0029F5 00                    2311 	.db #0x00	; 0
      0029F6 00                    2312 	.db #0x00	; 0
      0029F7 00                    2313 	.db #0x00	; 0
      0029F8 1E                    2314 	.db #0x1e	; 30
      0029F9 33                    2315 	.db #0x33	; 51	'3'
      0029FA 3F                    2316 	.db #0x3f	; 63
      0029FB 03                    2317 	.db #0x03	; 3
      0029FC 1E                    2318 	.db #0x1e	; 30
      0029FD 00                    2319 	.db #0x00	; 0
      0029FE 1C                    2320 	.db #0x1c	; 28
      0029FF 36                    2321 	.db #0x36	; 54	'6'
      002A00 06                    2322 	.db #0x06	; 6
      002A01 0F                    2323 	.db #0x0f	; 15
      002A02 06                    2324 	.db #0x06	; 6
      002A03 06                    2325 	.db #0x06	; 6
      002A04 0F                    2326 	.db #0x0f	; 15
      002A05 00                    2327 	.db #0x00	; 0
      002A06 00                    2328 	.db #0x00	; 0
      002A07 00                    2329 	.db #0x00	; 0
      002A08 6E                    2330 	.db #0x6e	; 110	'n'
      002A09 33                    2331 	.db #0x33	; 51	'3'
      002A0A 33                    2332 	.db #0x33	; 51	'3'
      002A0B 3E                    2333 	.db #0x3e	; 62
      002A0C 30                    2334 	.db #0x30	; 48	'0'
      002A0D 1F                    2335 	.db #0x1f	; 31
      002A0E 07                    2336 	.db #0x07	; 7
      002A0F 06                    2337 	.db #0x06	; 6
      002A10 36                    2338 	.db #0x36	; 54	'6'
      002A11 6E                    2339 	.db #0x6e	; 110	'n'
      002A12 66                    2340 	.db #0x66	; 102	'f'
      002A13 66                    2341 	.db #0x66	; 102	'f'
      002A14 67                    2342 	.db #0x67	; 103	'g'
      002A15 00                    2343 	.db #0x00	; 0
      002A16 0C                    2344 	.db #0x0c	; 12
      002A17 00                    2345 	.db #0x00	; 0
      002A18 0E                    2346 	.db #0x0e	; 14
      002A19 0C                    2347 	.db #0x0c	; 12
      002A1A 0C                    2348 	.db #0x0c	; 12
      002A1B 0C                    2349 	.db #0x0c	; 12
      002A1C 1E                    2350 	.db #0x1e	; 30
      002A1D 00                    2351 	.db #0x00	; 0
      002A1E 30                    2352 	.db #0x30	; 48	'0'
      002A1F 00                    2353 	.db #0x00	; 0
      002A20 30                    2354 	.db #0x30	; 48	'0'
      002A21 30                    2355 	.db #0x30	; 48	'0'
      002A22 30                    2356 	.db #0x30	; 48	'0'
      002A23 33                    2357 	.db #0x33	; 51	'3'
      002A24 33                    2358 	.db #0x33	; 51	'3'
      002A25 1E                    2359 	.db #0x1e	; 30
      002A26 07                    2360 	.db #0x07	; 7
      002A27 06                    2361 	.db #0x06	; 6
      002A28 66                    2362 	.db #0x66	; 102	'f'
      002A29 36                    2363 	.db #0x36	; 54	'6'
      002A2A 1E                    2364 	.db #0x1e	; 30
      002A2B 36                    2365 	.db #0x36	; 54	'6'
      002A2C 67                    2366 	.db #0x67	; 103	'g'
      002A2D 00                    2367 	.db #0x00	; 0
      002A2E 0E                    2368 	.db #0x0e	; 14
      002A2F 0C                    2369 	.db #0x0c	; 12
      002A30 0C                    2370 	.db #0x0c	; 12
      002A31 0C                    2371 	.db #0x0c	; 12
      002A32 0C                    2372 	.db #0x0c	; 12
      002A33 0C                    2373 	.db #0x0c	; 12
      002A34 1E                    2374 	.db #0x1e	; 30
      002A35 00                    2375 	.db #0x00	; 0
      002A36 00                    2376 	.db #0x00	; 0
      002A37 00                    2377 	.db #0x00	; 0
      002A38 33                    2378 	.db #0x33	; 51	'3'
      002A39 7F                    2379 	.db #0x7f	; 127
      002A3A 7F                    2380 	.db #0x7f	; 127
      002A3B 6B                    2381 	.db #0x6b	; 107	'k'
      002A3C 63                    2382 	.db #0x63	; 99	'c'
      002A3D 00                    2383 	.db #0x00	; 0
      002A3E 00                    2384 	.db #0x00	; 0
      002A3F 00                    2385 	.db #0x00	; 0
      002A40 1F                    2386 	.db #0x1f	; 31
      002A41 33                    2387 	.db #0x33	; 51	'3'
      002A42 33                    2388 	.db #0x33	; 51	'3'
      002A43 33                    2389 	.db #0x33	; 51	'3'
      002A44 33                    2390 	.db #0x33	; 51	'3'
      002A45 00                    2391 	.db #0x00	; 0
      002A46 00                    2392 	.db #0x00	; 0
      002A47 00                    2393 	.db #0x00	; 0
      002A48 1E                    2394 	.db #0x1e	; 30
      002A49 33                    2395 	.db #0x33	; 51	'3'
      002A4A 33                    2396 	.db #0x33	; 51	'3'
      002A4B 33                    2397 	.db #0x33	; 51	'3'
      002A4C 1E                    2398 	.db #0x1e	; 30
      002A4D 00                    2399 	.db #0x00	; 0
      002A4E 00                    2400 	.db #0x00	; 0
      002A4F 00                    2401 	.db #0x00	; 0
      002A50 3B                    2402 	.db #0x3b	; 59
      002A51 66                    2403 	.db #0x66	; 102	'f'
      002A52 66                    2404 	.db #0x66	; 102	'f'
      002A53 3E                    2405 	.db #0x3e	; 62
      002A54 06                    2406 	.db #0x06	; 6
      002A55 0F                    2407 	.db #0x0f	; 15
      002A56 00                    2408 	.db #0x00	; 0
      002A57 00                    2409 	.db #0x00	; 0
      002A58 6E                    2410 	.db #0x6e	; 110	'n'
      002A59 33                    2411 	.db #0x33	; 51	'3'
      002A5A 33                    2412 	.db #0x33	; 51	'3'
      002A5B 3E                    2413 	.db #0x3e	; 62
      002A5C 30                    2414 	.db #0x30	; 48	'0'
      002A5D 78                    2415 	.db #0x78	; 120	'x'
      002A5E 00                    2416 	.db #0x00	; 0
      002A5F 00                    2417 	.db #0x00	; 0
      002A60 3B                    2418 	.db #0x3b	; 59
      002A61 6E                    2419 	.db #0x6e	; 110	'n'
      002A62 66                    2420 	.db #0x66	; 102	'f'
      002A63 06                    2421 	.db #0x06	; 6
      002A64 0F                    2422 	.db #0x0f	; 15
      002A65 00                    2423 	.db #0x00	; 0
      002A66 00                    2424 	.db #0x00	; 0
      002A67 00                    2425 	.db #0x00	; 0
      002A68 3E                    2426 	.db #0x3e	; 62
      002A69 03                    2427 	.db #0x03	; 3
      002A6A 1E                    2428 	.db #0x1e	; 30
      002A6B 30                    2429 	.db #0x30	; 48	'0'
      002A6C 1F                    2430 	.db #0x1f	; 31
      002A6D 00                    2431 	.db #0x00	; 0
      002A6E 08                    2432 	.db #0x08	; 8
      002A6F 0C                    2433 	.db #0x0c	; 12
      002A70 3E                    2434 	.db #0x3e	; 62
      002A71 0C                    2435 	.db #0x0c	; 12
      002A72 0C                    2436 	.db #0x0c	; 12
      002A73 2C                    2437 	.db #0x2c	; 44
      002A74 18                    2438 	.db #0x18	; 24
      002A75 00                    2439 	.db #0x00	; 0
      002A76 00                    2440 	.db #0x00	; 0
      002A77 00                    2441 	.db #0x00	; 0
      002A78 33                    2442 	.db #0x33	; 51	'3'
      002A79 33                    2443 	.db #0x33	; 51	'3'
      002A7A 33                    2444 	.db #0x33	; 51	'3'
      002A7B 33                    2445 	.db #0x33	; 51	'3'
      002A7C 6E                    2446 	.db #0x6e	; 110	'n'
      002A7D 00                    2447 	.db #0x00	; 0
      002A7E 00                    2448 	.db #0x00	; 0
      002A7F 00                    2449 	.db #0x00	; 0
      002A80 33                    2450 	.db #0x33	; 51	'3'
      002A81 33                    2451 	.db #0x33	; 51	'3'
      002A82 33                    2452 	.db #0x33	; 51	'3'
      002A83 1E                    2453 	.db #0x1e	; 30
      002A84 0C                    2454 	.db #0x0c	; 12
      002A85 00                    2455 	.db #0x00	; 0
      002A86 00                    2456 	.db #0x00	; 0
      002A87 00                    2457 	.db #0x00	; 0
      002A88 63                    2458 	.db #0x63	; 99	'c'
      002A89 6B                    2459 	.db #0x6b	; 107	'k'
      002A8A 7F                    2460 	.db #0x7f	; 127
      002A8B 7F                    2461 	.db #0x7f	; 127
      002A8C 36                    2462 	.db #0x36	; 54	'6'
      002A8D 00                    2463 	.db #0x00	; 0
      002A8E 00                    2464 	.db #0x00	; 0
      002A8F 00                    2465 	.db #0x00	; 0
      002A90 63                    2466 	.db #0x63	; 99	'c'
      002A91 36                    2467 	.db #0x36	; 54	'6'
      002A92 1C                    2468 	.db #0x1c	; 28
      002A93 36                    2469 	.db #0x36	; 54	'6'
      002A94 63                    2470 	.db #0x63	; 99	'c'
      002A95 00                    2471 	.db #0x00	; 0
      002A96 00                    2472 	.db #0x00	; 0
      002A97 00                    2473 	.db #0x00	; 0
      002A98 33                    2474 	.db #0x33	; 51	'3'
      002A99 33                    2475 	.db #0x33	; 51	'3'
      002A9A 33                    2476 	.db #0x33	; 51	'3'
      002A9B 3E                    2477 	.db #0x3e	; 62
      002A9C 30                    2478 	.db #0x30	; 48	'0'
      002A9D 1F                    2479 	.db #0x1f	; 31
      002A9E 00                    2480 	.db #0x00	; 0
      002A9F 00                    2481 	.db #0x00	; 0
      002AA0 3F                    2482 	.db #0x3f	; 63
      002AA1 19                    2483 	.db #0x19	; 25
      002AA2 0C                    2484 	.db #0x0c	; 12
      002AA3 26                    2485 	.db #0x26	; 38
      002AA4 3F                    2486 	.db #0x3f	; 63
      002AA5 00                    2487 	.db #0x00	; 0
      002AA6 38                    2488 	.db #0x38	; 56	'8'
      002AA7 0C                    2489 	.db #0x0c	; 12
      002AA8 0C                    2490 	.db #0x0c	; 12
      002AA9 07                    2491 	.db #0x07	; 7
      002AAA 0C                    2492 	.db #0x0c	; 12
      002AAB 0C                    2493 	.db #0x0c	; 12
      002AAC 38                    2494 	.db #0x38	; 56	'8'
      002AAD 00                    2495 	.db #0x00	; 0
      002AAE 18                    2496 	.db #0x18	; 24
      002AAF 18                    2497 	.db #0x18	; 24
      002AB0 18                    2498 	.db #0x18	; 24
      002AB1 00                    2499 	.db #0x00	; 0
      002AB2 18                    2500 	.db #0x18	; 24
      002AB3 18                    2501 	.db #0x18	; 24
      002AB4 18                    2502 	.db #0x18	; 24
      002AB5 00                    2503 	.db #0x00	; 0
      002AB6 07                    2504 	.db #0x07	; 7
      002AB7 0C                    2505 	.db #0x0c	; 12
      002AB8 0C                    2506 	.db #0x0c	; 12
      002AB9 38                    2507 	.db #0x38	; 56	'8'
      002ABA 0C                    2508 	.db #0x0c	; 12
      002ABB 0C                    2509 	.db #0x0c	; 12
      002ABC 07                    2510 	.db #0x07	; 7
      002ABD 00                    2511 	.db #0x00	; 0
      002ABE 6E                    2512 	.db #0x6e	; 110	'n'
      002ABF 3B                    2513 	.db #0x3b	; 59
      002AC0 00                    2514 	.db #0x00	; 0
      002AC1 00                    2515 	.db #0x00	; 0
      002AC2 00                    2516 	.db #0x00	; 0
      002AC3 00                    2517 	.db #0x00	; 0
      002AC4 00                    2518 	.db #0x00	; 0
      002AC5 00                    2519 	.db #0x00	; 0
      002AC6 00                    2520 	.db #0x00	; 0
      002AC7 00                    2521 	.db #0x00	; 0
      002AC8 00                    2522 	.db #0x00	; 0
      002AC9 00                    2523 	.db #0x00	; 0
      002ACA 00                    2524 	.db #0x00	; 0
      002ACB 00                    2525 	.db #0x00	; 0
      002ACC 00                    2526 	.db #0x00	; 0
      002ACD 00                    2527 	.db #0x00	; 0
      002ACE 00                    2528 	.db #0x00	; 0
      002ACF 00                    2529 	.db #0x00	; 0
      002AD0 00                    2530 	.db #0x00	; 0
      002AD1 00                    2531 	.db #0x00	; 0
      002AD2 00                    2532 	.db #0x00	; 0
      002AD3 00                    2533 	.db #0x00	; 0
      002AD4 00                    2534 	.db #0x00	; 0
      002AD5 00                    2535 	.db #0x00	; 0
      002AD6 00                    2536 	.db #0x00	; 0
      002AD7 00                    2537 	.db #0x00	; 0
      002AD8 00                    2538 	.db #0x00	; 0
      002AD9 00                    2539 	.db #0x00	; 0
      002ADA 00                    2540 	.db #0x00	; 0
      002ADB 00                    2541 	.db #0x00	; 0
      002ADC 00                    2542 	.db #0x00	; 0
      002ADD 00                    2543 	.db #0x00	; 0
      002ADE 00                    2544 	.db #0x00	; 0
      002ADF 00                    2545 	.db #0x00	; 0
      002AE0 00                    2546 	.db #0x00	; 0
      002AE1 00                    2547 	.db #0x00	; 0
      002AE2 00                    2548 	.db #0x00	; 0
      002AE3 00                    2549 	.db #0x00	; 0
      002AE4 00                    2550 	.db #0x00	; 0
      002AE5 00                    2551 	.db #0x00	; 0
      002AE6 00                    2552 	.db #0x00	; 0
      002AE7 00                    2553 	.db #0x00	; 0
      002AE8 00                    2554 	.db #0x00	; 0
      002AE9 00                    2555 	.db #0x00	; 0
      002AEA 00                    2556 	.db #0x00	; 0
      002AEB 00                    2557 	.db #0x00	; 0
      002AEC 00                    2558 	.db #0x00	; 0
      002AED 00                    2559 	.db #0x00	; 0
      002AEE 00                    2560 	.db #0x00	; 0
      002AEF 00                    2561 	.db #0x00	; 0
      002AF0 00                    2562 	.db #0x00	; 0
      002AF1 00                    2563 	.db #0x00	; 0
      002AF2 00                    2564 	.db #0x00	; 0
      002AF3 00                    2565 	.db #0x00	; 0
      002AF4 00                    2566 	.db #0x00	; 0
      002AF5 00                    2567 	.db #0x00	; 0
      002AF6 00                    2568 	.db #0x00	; 0
      002AF7 00                    2569 	.db #0x00	; 0
      002AF8 00                    2570 	.db #0x00	; 0
      002AF9 00                    2571 	.db #0x00	; 0
      002AFA 00                    2572 	.db #0x00	; 0
      002AFB 00                    2573 	.db #0x00	; 0
      002AFC 00                    2574 	.db #0x00	; 0
      002AFD 00                    2575 	.db #0x00	; 0
      002AFE 00                    2576 	.db #0x00	; 0
      002AFF 00                    2577 	.db #0x00	; 0
      002B00 00                    2578 	.db #0x00	; 0
      002B01 00                    2579 	.db #0x00	; 0
      002B02 00                    2580 	.db #0x00	; 0
      002B03 00                    2581 	.db #0x00	; 0
      002B04 00                    2582 	.db #0x00	; 0
      002B05 00                    2583 	.db #0x00	; 0
      002B06 00                    2584 	.db #0x00	; 0
      002B07 00                    2585 	.db #0x00	; 0
      002B08 00                    2586 	.db #0x00	; 0
      002B09 00                    2587 	.db #0x00	; 0
      002B0A 00                    2588 	.db #0x00	; 0
      002B0B 00                    2589 	.db #0x00	; 0
      002B0C 00                    2590 	.db #0x00	; 0
      002B0D 00                    2591 	.db #0x00	; 0
      002B0E 00                    2592 	.db #0x00	; 0
      002B0F 00                    2593 	.db #0x00	; 0
      002B10 00                    2594 	.db #0x00	; 0
      002B11 00                    2595 	.db #0x00	; 0
      002B12 00                    2596 	.db #0x00	; 0
      002B13 00                    2597 	.db #0x00	; 0
      002B14 00                    2598 	.db #0x00	; 0
      002B15 00                    2599 	.db #0x00	; 0
      002B16 00                    2600 	.db #0x00	; 0
      002B17 00                    2601 	.db #0x00	; 0
      002B18 00                    2602 	.db #0x00	; 0
      002B19 00                    2603 	.db #0x00	; 0
      002B1A 00                    2604 	.db #0x00	; 0
      002B1B 00                    2605 	.db #0x00	; 0
      002B1C 00                    2606 	.db #0x00	; 0
      002B1D 00                    2607 	.db #0x00	; 0
      002B1E 00                    2608 	.db #0x00	; 0
      002B1F 00                    2609 	.db #0x00	; 0
      002B20 00                    2610 	.db #0x00	; 0
      002B21 00                    2611 	.db #0x00	; 0
      002B22 00                    2612 	.db #0x00	; 0
      002B23 00                    2613 	.db #0x00	; 0
      002B24 00                    2614 	.db #0x00	; 0
      002B25 00                    2615 	.db #0x00	; 0
      002B26 00                    2616 	.db #0x00	; 0
      002B27 00                    2617 	.db #0x00	; 0
      002B28 00                    2618 	.db #0x00	; 0
      002B29 00                    2619 	.db #0x00	; 0
      002B2A 00                    2620 	.db #0x00	; 0
      002B2B 00                    2621 	.db #0x00	; 0
      002B2C 00                    2622 	.db #0x00	; 0
      002B2D 00                    2623 	.db #0x00	; 0
      002B2E 00                    2624 	.db #0x00	; 0
      002B2F 00                    2625 	.db #0x00	; 0
      002B30 00                    2626 	.db #0x00	; 0
      002B31 00                    2627 	.db #0x00	; 0
      002B32 00                    2628 	.db #0x00	; 0
      002B33 00                    2629 	.db #0x00	; 0
      002B34 00                    2630 	.db #0x00	; 0
      002B35 00                    2631 	.db #0x00	; 0
      002B36 00                    2632 	.db #0x00	; 0
      002B37 00                    2633 	.db #0x00	; 0
      002B38 00                    2634 	.db #0x00	; 0
      002B39 00                    2635 	.db #0x00	; 0
      002B3A 00                    2636 	.db #0x00	; 0
      002B3B 00                    2637 	.db #0x00	; 0
      002B3C 00                    2638 	.db #0x00	; 0
      002B3D 00                    2639 	.db #0x00	; 0
      002B3E 00                    2640 	.db #0x00	; 0
      002B3F 00                    2641 	.db #0x00	; 0
      002B40 00                    2642 	.db #0x00	; 0
      002B41 00                    2643 	.db #0x00	; 0
      002B42 00                    2644 	.db #0x00	; 0
      002B43 00                    2645 	.db #0x00	; 0
      002B44 00                    2646 	.db #0x00	; 0
      002B45 00                    2647 	.db #0x00	; 0
      002B46 00                    2648 	.db #0x00	; 0
      002B47 00                    2649 	.db #0x00	; 0
      002B48 00                    2650 	.db #0x00	; 0
      002B49 00                    2651 	.db #0x00	; 0
      002B4A 00                    2652 	.db #0x00	; 0
      002B4B 00                    2653 	.db #0x00	; 0
      002B4C 00                    2654 	.db #0x00	; 0
      002B4D 00                    2655 	.db #0x00	; 0
      002B4E 00                    2656 	.db #0x00	; 0
      002B4F 00                    2657 	.db #0x00	; 0
      002B50 00                    2658 	.db #0x00	; 0
      002B51 00                    2659 	.db #0x00	; 0
      002B52 00                    2660 	.db #0x00	; 0
      002B53 00                    2661 	.db #0x00	; 0
      002B54 00                    2662 	.db #0x00	; 0
      002B55 00                    2663 	.db #0x00	; 0
      002B56 00                    2664 	.db #0x00	; 0
      002B57 00                    2665 	.db #0x00	; 0
      002B58 00                    2666 	.db #0x00	; 0
      002B59 00                    2667 	.db #0x00	; 0
      002B5A 00                    2668 	.db #0x00	; 0
      002B5B 00                    2669 	.db #0x00	; 0
      002B5C 00                    2670 	.db #0x00	; 0
      002B5D 00                    2671 	.db #0x00	; 0
      002B5E 00                    2672 	.db #0x00	; 0
      002B5F 00                    2673 	.db #0x00	; 0
      002B60 00                    2674 	.db #0x00	; 0
      002B61 00                    2675 	.db #0x00	; 0
      002B62 00                    2676 	.db #0x00	; 0
      002B63 00                    2677 	.db #0x00	; 0
      002B64 00                    2678 	.db #0x00	; 0
      002B65 00                    2679 	.db #0x00	; 0
      002B66 00                    2680 	.db #0x00	; 0
      002B67 00                    2681 	.db #0x00	; 0
      002B68 00                    2682 	.db #0x00	; 0
      002B69 00                    2683 	.db #0x00	; 0
      002B6A 00                    2684 	.db #0x00	; 0
      002B6B 00                    2685 	.db #0x00	; 0
      002B6C 00                    2686 	.db #0x00	; 0
      002B6D 00                    2687 	.db #0x00	; 0
      002B6E 00                    2688 	.db #0x00	; 0
      002B6F 00                    2689 	.db #0x00	; 0
      002B70 00                    2690 	.db #0x00	; 0
      002B71 00                    2691 	.db #0x00	; 0
      002B72 00                    2692 	.db #0x00	; 0
      002B73 00                    2693 	.db #0x00	; 0
      002B74 00                    2694 	.db #0x00	; 0
      002B75 00                    2695 	.db #0x00	; 0
      002B76 00                    2696 	.db #0x00	; 0
      002B77 00                    2697 	.db #0x00	; 0
      002B78 00                    2698 	.db #0x00	; 0
      002B79 00                    2699 	.db #0x00	; 0
      002B7A 00                    2700 	.db #0x00	; 0
      002B7B 00                    2701 	.db #0x00	; 0
      002B7C 00                    2702 	.db #0x00	; 0
      002B7D 00                    2703 	.db #0x00	; 0
      002B7E 00                    2704 	.db #0x00	; 0
      002B7F 00                    2705 	.db #0x00	; 0
      002B80 00                    2706 	.db #0x00	; 0
      002B81 00                    2707 	.db #0x00	; 0
      002B82 00                    2708 	.db #0x00	; 0
      002B83 00                    2709 	.db #0x00	; 0
      002B84 00                    2710 	.db #0x00	; 0
      002B85 00                    2711 	.db #0x00	; 0
      002B86 00                    2712 	.db #0x00	; 0
      002B87 00                    2713 	.db #0x00	; 0
      002B88 00                    2714 	.db #0x00	; 0
      002B89 00                    2715 	.db #0x00	; 0
      002B8A 00                    2716 	.db #0x00	; 0
      002B8B 00                    2717 	.db #0x00	; 0
      002B8C 00                    2718 	.db #0x00	; 0
      002B8D 00                    2719 	.db #0x00	; 0
      002B8E 00                    2720 	.db #0x00	; 0
      002B8F 00                    2721 	.db #0x00	; 0
      002B90 00                    2722 	.db #0x00	; 0
      002B91 00                    2723 	.db #0x00	; 0
      002B92 00                    2724 	.db #0x00	; 0
      002B93 00                    2725 	.db #0x00	; 0
      002B94 00                    2726 	.db #0x00	; 0
      002B95 00                    2727 	.db #0x00	; 0
      002B96 00                    2728 	.db #0x00	; 0
      002B97 00                    2729 	.db #0x00	; 0
      002B98 00                    2730 	.db #0x00	; 0
      002B99 00                    2731 	.db #0x00	; 0
      002B9A 00                    2732 	.db #0x00	; 0
      002B9B 00                    2733 	.db #0x00	; 0
      002B9C 00                    2734 	.db #0x00	; 0
      002B9D 00                    2735 	.db #0x00	; 0
      002B9E 00                    2736 	.db #0x00	; 0
      002B9F 00                    2737 	.db #0x00	; 0
      002BA0 00                    2738 	.db #0x00	; 0
      002BA1 00                    2739 	.db #0x00	; 0
      002BA2 00                    2740 	.db #0x00	; 0
      002BA3 00                    2741 	.db #0x00	; 0
      002BA4 00                    2742 	.db #0x00	; 0
      002BA5 00                    2743 	.db #0x00	; 0
      002BA6 00                    2744 	.db #0x00	; 0
      002BA7 00                    2745 	.db #0x00	; 0
      002BA8 00                    2746 	.db #0x00	; 0
      002BA9 00                    2747 	.db #0x00	; 0
      002BAA 00                    2748 	.db #0x00	; 0
      002BAB 00                    2749 	.db #0x00	; 0
      002BAC 00                    2750 	.db #0x00	; 0
      002BAD 00                    2751 	.db #0x00	; 0
      002BAE 00                    2752 	.db #0x00	; 0
      002BAF 00                    2753 	.db #0x00	; 0
      002BB0 00                    2754 	.db #0x00	; 0
      002BB1 00                    2755 	.db #0x00	; 0
      002BB2 00                    2756 	.db #0x00	; 0
      002BB3 00                    2757 	.db #0x00	; 0
      002BB4 00                    2758 	.db #0x00	; 0
      002BB5 00                    2759 	.db #0x00	; 0
      002BB6 00                    2760 	.db #0x00	; 0
      002BB7 00                    2761 	.db #0x00	; 0
      002BB8 00                    2762 	.db #0x00	; 0
      002BB9 00                    2763 	.db #0x00	; 0
      002BBA 00                    2764 	.db #0x00	; 0
      002BBB 00                    2765 	.db #0x00	; 0
      002BBC 00                    2766 	.db #0x00	; 0
      002BBD 00                    2767 	.db #0x00	; 0
      002BBE 00                    2768 	.db #0x00	; 0
      002BBF 00                    2769 	.db #0x00	; 0
      002BC0 00                    2770 	.db #0x00	; 0
      002BC1 00                    2771 	.db #0x00	; 0
      002BC2 00                    2772 	.db #0x00	; 0
      002BC3 00                    2773 	.db #0x00	; 0
      002BC4 00                    2774 	.db #0x00	; 0
      002BC5 00                    2775 	.db #0x00	; 0
      002BC6 00                    2776 	.db #0x00	; 0
      002BC7 00                    2777 	.db #0x00	; 0
      002BC8 00                    2778 	.db #0x00	; 0
      002BC9 00                    2779 	.db #0x00	; 0
      002BCA 00                    2780 	.db #0x00	; 0
      002BCB 00                    2781 	.db #0x00	; 0
      002BCC 00                    2782 	.db #0x00	; 0
      002BCD 00                    2783 	.db #0x00	; 0
      002BCE 00                    2784 	.db #0x00	; 0
      002BCF 00                    2785 	.db #0x00	; 0
      002BD0 00                    2786 	.db #0x00	; 0
      002BD1 00                    2787 	.db #0x00	; 0
      002BD2 00                    2788 	.db #0x00	; 0
      002BD3 00                    2789 	.db #0x00	; 0
      002BD4 00                    2790 	.db #0x00	; 0
      002BD5 00                    2791 	.db #0x00	; 0
      002BD6 18                    2792 	.db #0x18	; 24
      002BD7 18                    2793 	.db #0x18	; 24
      002BD8 00                    2794 	.db #0x00	; 0
      002BD9 18                    2795 	.db #0x18	; 24
      002BDA 18                    2796 	.db #0x18	; 24
      002BDB 18                    2797 	.db #0x18	; 24
      002BDC 18                    2798 	.db #0x18	; 24
      002BDD 00                    2799 	.db #0x00	; 0
      002BDE 18                    2800 	.db #0x18	; 24
      002BDF 18                    2801 	.db #0x18	; 24
      002BE0 7E                    2802 	.db #0x7e	; 126
      002BE1 03                    2803 	.db #0x03	; 3
      002BE2 03                    2804 	.db #0x03	; 3
      002BE3 7E                    2805 	.db #0x7e	; 126
      002BE4 18                    2806 	.db #0x18	; 24
      002BE5 18                    2807 	.db #0x18	; 24
      002BE6 1C                    2808 	.db #0x1c	; 28
      002BE7 36                    2809 	.db #0x36	; 54	'6'
      002BE8 26                    2810 	.db #0x26	; 38
      002BE9 0F                    2811 	.db #0x0f	; 15
      002BEA 06                    2812 	.db #0x06	; 6
      002BEB 67                    2813 	.db #0x67	; 103	'g'
      002BEC 3F                    2814 	.db #0x3f	; 63
      002BED 00                    2815 	.db #0x00	; 0
      002BEE 00                    2816 	.db #0x00	; 0
      002BEF 00                    2817 	.db #0x00	; 0
      002BF0 63                    2818 	.db #0x63	; 99	'c'
      002BF1 3E                    2819 	.db #0x3e	; 62
      002BF2 36                    2820 	.db #0x36	; 54	'6'
      002BF3 3E                    2821 	.db #0x3e	; 62
      002BF4 63                    2822 	.db #0x63	; 99	'c'
      002BF5 00                    2823 	.db #0x00	; 0
      002BF6 33                    2824 	.db #0x33	; 51	'3'
      002BF7 33                    2825 	.db #0x33	; 51	'3'
      002BF8 1E                    2826 	.db #0x1e	; 30
      002BF9 3F                    2827 	.db #0x3f	; 63
      002BFA 0C                    2828 	.db #0x0c	; 12
      002BFB 3F                    2829 	.db #0x3f	; 63
      002BFC 0C                    2830 	.db #0x0c	; 12
      002BFD 0C                    2831 	.db #0x0c	; 12
      002BFE 18                    2832 	.db #0x18	; 24
      002BFF 18                    2833 	.db #0x18	; 24
      002C00 18                    2834 	.db #0x18	; 24
      002C01 00                    2835 	.db #0x00	; 0
      002C02 18                    2836 	.db #0x18	; 24
      002C03 18                    2837 	.db #0x18	; 24
      002C04 18                    2838 	.db #0x18	; 24
      002C05 00                    2839 	.db #0x00	; 0
      002C06 7C                    2840 	.db #0x7c	; 124
      002C07 C6                    2841 	.db #0xc6	; 198
      002C08 1C                    2842 	.db #0x1c	; 28
      002C09 36                    2843 	.db #0x36	; 54	'6'
      002C0A 36                    2844 	.db #0x36	; 54	'6'
      002C0B 1C                    2845 	.db #0x1c	; 28
      002C0C 33                    2846 	.db #0x33	; 51	'3'
      002C0D 1E                    2847 	.db #0x1e	; 30
      002C0E 33                    2848 	.db #0x33	; 51	'3'
      002C0F 00                    2849 	.db #0x00	; 0
      002C10 00                    2850 	.db #0x00	; 0
      002C11 00                    2851 	.db #0x00	; 0
      002C12 00                    2852 	.db #0x00	; 0
      002C13 00                    2853 	.db #0x00	; 0
      002C14 00                    2854 	.db #0x00	; 0
      002C15 00                    2855 	.db #0x00	; 0
      002C16 3C                    2856 	.db #0x3c	; 60
      002C17 42                    2857 	.db #0x42	; 66	'B'
      002C18 99                    2858 	.db #0x99	; 153
      002C19 85                    2859 	.db #0x85	; 133
      002C1A 85                    2860 	.db #0x85	; 133
      002C1B 99                    2861 	.db #0x99	; 153
      002C1C 42                    2862 	.db #0x42	; 66	'B'
      002C1D 3C                    2863 	.db #0x3c	; 60
      002C1E 3C                    2864 	.db #0x3c	; 60
      002C1F 36                    2865 	.db #0x36	; 54	'6'
      002C20 36                    2866 	.db #0x36	; 54	'6'
      002C21 7C                    2867 	.db #0x7c	; 124
      002C22 00                    2868 	.db #0x00	; 0
      002C23 00                    2869 	.db #0x00	; 0
      002C24 00                    2870 	.db #0x00	; 0
      002C25 00                    2871 	.db #0x00	; 0
      002C26 00                    2872 	.db #0x00	; 0
      002C27 CC                    2873 	.db #0xcc	; 204
      002C28 66                    2874 	.db #0x66	; 102	'f'
      002C29 33                    2875 	.db #0x33	; 51	'3'
      002C2A 66                    2876 	.db #0x66	; 102	'f'
      002C2B CC                    2877 	.db #0xcc	; 204
      002C2C 00                    2878 	.db #0x00	; 0
      002C2D 00                    2879 	.db #0x00	; 0
      002C2E 00                    2880 	.db #0x00	; 0
      002C2F 00                    2881 	.db #0x00	; 0
      002C30 00                    2882 	.db #0x00	; 0
      002C31 3F                    2883 	.db #0x3f	; 63
      002C32 30                    2884 	.db #0x30	; 48	'0'
      002C33 30                    2885 	.db #0x30	; 48	'0'
      002C34 00                    2886 	.db #0x00	; 0
      002C35 00                    2887 	.db #0x00	; 0
      002C36 00                    2888 	.db #0x00	; 0
      002C37 00                    2889 	.db #0x00	; 0
      002C38 00                    2890 	.db #0x00	; 0
      002C39 00                    2891 	.db #0x00	; 0
      002C3A 00                    2892 	.db #0x00	; 0
      002C3B 00                    2893 	.db #0x00	; 0
      002C3C 00                    2894 	.db #0x00	; 0
      002C3D 00                    2895 	.db #0x00	; 0
      002C3E 3C                    2896 	.db #0x3c	; 60
      002C3F 42                    2897 	.db #0x42	; 66	'B'
      002C40 9D                    2898 	.db #0x9d	; 157
      002C41 A5                    2899 	.db #0xa5	; 165
      002C42 9D                    2900 	.db #0x9d	; 157
      002C43 A5                    2901 	.db #0xa5	; 165
      002C44 42                    2902 	.db #0x42	; 66	'B'
      002C45 3C                    2903 	.db #0x3c	; 60
      002C46 7E                    2904 	.db #0x7e	; 126
      002C47 00                    2905 	.db #0x00	; 0
      002C48 00                    2906 	.db #0x00	; 0
      002C49 00                    2907 	.db #0x00	; 0
      002C4A 00                    2908 	.db #0x00	; 0
      002C4B 00                    2909 	.db #0x00	; 0
      002C4C 00                    2910 	.db #0x00	; 0
      002C4D 00                    2911 	.db #0x00	; 0
      002C4E 1C                    2912 	.db #0x1c	; 28
      002C4F 36                    2913 	.db #0x36	; 54	'6'
      002C50 36                    2914 	.db #0x36	; 54	'6'
      002C51 1C                    2915 	.db #0x1c	; 28
      002C52 00                    2916 	.db #0x00	; 0
      002C53 00                    2917 	.db #0x00	; 0
      002C54 00                    2918 	.db #0x00	; 0
      002C55 00                    2919 	.db #0x00	; 0
      002C56 18                    2920 	.db #0x18	; 24
      002C57 18                    2921 	.db #0x18	; 24
      002C58 7E                    2922 	.db #0x7e	; 126
      002C59 18                    2923 	.db #0x18	; 24
      002C5A 18                    2924 	.db #0x18	; 24
      002C5B 00                    2925 	.db #0x00	; 0
      002C5C 7E                    2926 	.db #0x7e	; 126
      002C5D 00                    2927 	.db #0x00	; 0
      002C5E 1C                    2928 	.db #0x1c	; 28
      002C5F 30                    2929 	.db #0x30	; 48	'0'
      002C60 18                    2930 	.db #0x18	; 24
      002C61 0C                    2931 	.db #0x0c	; 12
      002C62 3C                    2932 	.db #0x3c	; 60
      002C63 00                    2933 	.db #0x00	; 0
      002C64 00                    2934 	.db #0x00	; 0
      002C65 00                    2935 	.db #0x00	; 0
      002C66 1C                    2936 	.db #0x1c	; 28
      002C67 30                    2937 	.db #0x30	; 48	'0'
      002C68 18                    2938 	.db #0x18	; 24
      002C69 30                    2939 	.db #0x30	; 48	'0'
      002C6A 1C                    2940 	.db #0x1c	; 28
      002C6B 00                    2941 	.db #0x00	; 0
      002C6C 00                    2942 	.db #0x00	; 0
      002C6D 00                    2943 	.db #0x00	; 0
      002C6E 18                    2944 	.db #0x18	; 24
      002C6F 0C                    2945 	.db #0x0c	; 12
      002C70 00                    2946 	.db #0x00	; 0
      002C71 00                    2947 	.db #0x00	; 0
      002C72 00                    2948 	.db #0x00	; 0
      002C73 00                    2949 	.db #0x00	; 0
      002C74 00                    2950 	.db #0x00	; 0
      002C75 00                    2951 	.db #0x00	; 0
      002C76 00                    2952 	.db #0x00	; 0
      002C77 00                    2953 	.db #0x00	; 0
      002C78 66                    2954 	.db #0x66	; 102	'f'
      002C79 66                    2955 	.db #0x66	; 102	'f'
      002C7A 66                    2956 	.db #0x66	; 102	'f'
      002C7B 3E                    2957 	.db #0x3e	; 62
      002C7C 06                    2958 	.db #0x06	; 6
      002C7D 03                    2959 	.db #0x03	; 3
      002C7E FE                    2960 	.db #0xfe	; 254
      002C7F DB                    2961 	.db #0xdb	; 219
      002C80 DB                    2962 	.db #0xdb	; 219
      002C81 DE                    2963 	.db #0xde	; 222
      002C82 D8                    2964 	.db #0xd8	; 216
      002C83 D8                    2965 	.db #0xd8	; 216
      002C84 D8                    2966 	.db #0xd8	; 216
      002C85 00                    2967 	.db #0x00	; 0
      002C86 00                    2968 	.db #0x00	; 0
      002C87 00                    2969 	.db #0x00	; 0
      002C88 00                    2970 	.db #0x00	; 0
      002C89 18                    2971 	.db #0x18	; 24
      002C8A 18                    2972 	.db #0x18	; 24
      002C8B 00                    2973 	.db #0x00	; 0
      002C8C 00                    2974 	.db #0x00	; 0
      002C8D 00                    2975 	.db #0x00	; 0
      002C8E 00                    2976 	.db #0x00	; 0
      002C8F 00                    2977 	.db #0x00	; 0
      002C90 00                    2978 	.db #0x00	; 0
      002C91 00                    2979 	.db #0x00	; 0
      002C92 00                    2980 	.db #0x00	; 0
      002C93 18                    2981 	.db #0x18	; 24
      002C94 30                    2982 	.db #0x30	; 48	'0'
      002C95 1E                    2983 	.db #0x1e	; 30
      002C96 08                    2984 	.db #0x08	; 8
      002C97 0C                    2985 	.db #0x0c	; 12
      002C98 08                    2986 	.db #0x08	; 8
      002C99 1C                    2987 	.db #0x1c	; 28
      002C9A 00                    2988 	.db #0x00	; 0
      002C9B 00                    2989 	.db #0x00	; 0
      002C9C 00                    2990 	.db #0x00	; 0
      002C9D 00                    2991 	.db #0x00	; 0
      002C9E 1C                    2992 	.db #0x1c	; 28
      002C9F 36                    2993 	.db #0x36	; 54	'6'
      002CA0 36                    2994 	.db #0x36	; 54	'6'
      002CA1 1C                    2995 	.db #0x1c	; 28
      002CA2 00                    2996 	.db #0x00	; 0
      002CA3 00                    2997 	.db #0x00	; 0
      002CA4 00                    2998 	.db #0x00	; 0
      002CA5 00                    2999 	.db #0x00	; 0
      002CA6 00                    3000 	.db #0x00	; 0
      002CA7 33                    3001 	.db #0x33	; 51	'3'
      002CA8 66                    3002 	.db #0x66	; 102	'f'
      002CA9 CC                    3003 	.db #0xcc	; 204
      002CAA 66                    3004 	.db #0x66	; 102	'f'
      002CAB 33                    3005 	.db #0x33	; 51	'3'
      002CAC 00                    3006 	.db #0x00	; 0
      002CAD 00                    3007 	.db #0x00	; 0
      002CAE C3                    3008 	.db #0xc3	; 195
      002CAF 63                    3009 	.db #0x63	; 99	'c'
      002CB0 33                    3010 	.db #0x33	; 51	'3'
      002CB1 BD                    3011 	.db #0xbd	; 189
      002CB2 EC                    3012 	.db #0xec	; 236
      002CB3 F6                    3013 	.db #0xf6	; 246
      002CB4 F3                    3014 	.db #0xf3	; 243
      002CB5 03                    3015 	.db #0x03	; 3
      002CB6 C3                    3016 	.db #0xc3	; 195
      002CB7 63                    3017 	.db #0x63	; 99	'c'
      002CB8 33                    3018 	.db #0x33	; 51	'3'
      002CB9 7B                    3019 	.db #0x7b	; 123
      002CBA CC                    3020 	.db #0xcc	; 204
      002CBB 66                    3021 	.db #0x66	; 102	'f'
      002CBC 33                    3022 	.db #0x33	; 51	'3'
      002CBD F0                    3023 	.db #0xf0	; 240
      002CBE 03                    3024 	.db #0x03	; 3
      002CBF C4                    3025 	.db #0xc4	; 196
      002CC0 63                    3026 	.db #0x63	; 99	'c'
      002CC1 B4                    3027 	.db #0xb4	; 180
      002CC2 DB                    3028 	.db #0xdb	; 219
      002CC3 AC                    3029 	.db #0xac	; 172
      002CC4 E6                    3030 	.db #0xe6	; 230
      002CC5 80                    3031 	.db #0x80	; 128
      002CC6 0C                    3032 	.db #0x0c	; 12
      002CC7 00                    3033 	.db #0x00	; 0
      002CC8 0C                    3034 	.db #0x0c	; 12
      002CC9 06                    3035 	.db #0x06	; 6
      002CCA 03                    3036 	.db #0x03	; 3
      002CCB 33                    3037 	.db #0x33	; 51	'3'
      002CCC 1E                    3038 	.db #0x1e	; 30
      002CCD 00                    3039 	.db #0x00	; 0
      002CCE 07                    3040 	.db #0x07	; 7
      002CCF 00                    3041 	.db #0x00	; 0
      002CD0 1C                    3042 	.db #0x1c	; 28
      002CD1 36                    3043 	.db #0x36	; 54	'6'
      002CD2 63                    3044 	.db #0x63	; 99	'c'
      002CD3 7F                    3045 	.db #0x7f	; 127
      002CD4 63                    3046 	.db #0x63	; 99	'c'
      002CD5 00                    3047 	.db #0x00	; 0
      002CD6 70                    3048 	.db #0x70	; 112	'p'
      002CD7 00                    3049 	.db #0x00	; 0
      002CD8 1C                    3050 	.db #0x1c	; 28
      002CD9 36                    3051 	.db #0x36	; 54	'6'
      002CDA 63                    3052 	.db #0x63	; 99	'c'
      002CDB 7F                    3053 	.db #0x7f	; 127
      002CDC 63                    3054 	.db #0x63	; 99	'c'
      002CDD 00                    3055 	.db #0x00	; 0
      002CDE 1C                    3056 	.db #0x1c	; 28
      002CDF 36                    3057 	.db #0x36	; 54	'6'
      002CE0 00                    3058 	.db #0x00	; 0
      002CE1 3E                    3059 	.db #0x3e	; 62
      002CE2 63                    3060 	.db #0x63	; 99	'c'
      002CE3 7F                    3061 	.db #0x7f	; 127
      002CE4 63                    3062 	.db #0x63	; 99	'c'
      002CE5 00                    3063 	.db #0x00	; 0
      002CE6 6E                    3064 	.db #0x6e	; 110	'n'
      002CE7 3B                    3065 	.db #0x3b	; 59
      002CE8 00                    3066 	.db #0x00	; 0
      002CE9 3E                    3067 	.db #0x3e	; 62
      002CEA 63                    3068 	.db #0x63	; 99	'c'
      002CEB 7F                    3069 	.db #0x7f	; 127
      002CEC 63                    3070 	.db #0x63	; 99	'c'
      002CED 00                    3071 	.db #0x00	; 0
      002CEE 63                    3072 	.db #0x63	; 99	'c'
      002CEF 1C                    3073 	.db #0x1c	; 28
      002CF0 36                    3074 	.db #0x36	; 54	'6'
      002CF1 63                    3075 	.db #0x63	; 99	'c'
      002CF2 7F                    3076 	.db #0x7f	; 127
      002CF3 63                    3077 	.db #0x63	; 99	'c'
      002CF4 63                    3078 	.db #0x63	; 99	'c'
      002CF5 00                    3079 	.db #0x00	; 0
      002CF6 0C                    3080 	.db #0x0c	; 12
      002CF7 0C                    3081 	.db #0x0c	; 12
      002CF8 00                    3082 	.db #0x00	; 0
      002CF9 1E                    3083 	.db #0x1e	; 30
      002CFA 33                    3084 	.db #0x33	; 51	'3'
      002CFB 3F                    3085 	.db #0x3f	; 63
      002CFC 33                    3086 	.db #0x33	; 51	'3'
      002CFD 00                    3087 	.db #0x00	; 0
      002CFE 7C                    3088 	.db #0x7c	; 124
      002CFF 36                    3089 	.db #0x36	; 54	'6'
      002D00 33                    3090 	.db #0x33	; 51	'3'
      002D01 7F                    3091 	.db #0x7f	; 127
      002D02 33                    3092 	.db #0x33	; 51	'3'
      002D03 33                    3093 	.db #0x33	; 51	'3'
      002D04 73                    3094 	.db #0x73	; 115	's'
      002D05 00                    3095 	.db #0x00	; 0
      002D06 1E                    3096 	.db #0x1e	; 30
      002D07 33                    3097 	.db #0x33	; 51	'3'
      002D08 03                    3098 	.db #0x03	; 3
      002D09 33                    3099 	.db #0x33	; 51	'3'
      002D0A 1E                    3100 	.db #0x1e	; 30
      002D0B 18                    3101 	.db #0x18	; 24
      002D0C 30                    3102 	.db #0x30	; 48	'0'
      002D0D 1E                    3103 	.db #0x1e	; 30
      002D0E 07                    3104 	.db #0x07	; 7
      002D0F 00                    3105 	.db #0x00	; 0
      002D10 3F                    3106 	.db #0x3f	; 63
      002D11 06                    3107 	.db #0x06	; 6
      002D12 1E                    3108 	.db #0x1e	; 30
      002D13 06                    3109 	.db #0x06	; 6
      002D14 3F                    3110 	.db #0x3f	; 63
      002D15 00                    3111 	.db #0x00	; 0
      002D16 38                    3112 	.db #0x38	; 56	'8'
      002D17 00                    3113 	.db #0x00	; 0
      002D18 3F                    3114 	.db #0x3f	; 63
      002D19 06                    3115 	.db #0x06	; 6
      002D1A 1E                    3116 	.db #0x1e	; 30
      002D1B 06                    3117 	.db #0x06	; 6
      002D1C 3F                    3118 	.db #0x3f	; 63
      002D1D 00                    3119 	.db #0x00	; 0
      002D1E 0C                    3120 	.db #0x0c	; 12
      002D1F 12                    3121 	.db #0x12	; 18
      002D20 3F                    3122 	.db #0x3f	; 63
      002D21 06                    3123 	.db #0x06	; 6
      002D22 1E                    3124 	.db #0x1e	; 30
      002D23 06                    3125 	.db #0x06	; 6
      002D24 3F                    3126 	.db #0x3f	; 63
      002D25 00                    3127 	.db #0x00	; 0
      002D26 36                    3128 	.db #0x36	; 54	'6'
      002D27 00                    3129 	.db #0x00	; 0
      002D28 3F                    3130 	.db #0x3f	; 63
      002D29 06                    3131 	.db #0x06	; 6
      002D2A 1E                    3132 	.db #0x1e	; 30
      002D2B 06                    3133 	.db #0x06	; 6
      002D2C 3F                    3134 	.db #0x3f	; 63
      002D2D 00                    3135 	.db #0x00	; 0
      002D2E 07                    3136 	.db #0x07	; 7
      002D2F 00                    3137 	.db #0x00	; 0
      002D30 1E                    3138 	.db #0x1e	; 30
      002D31 0C                    3139 	.db #0x0c	; 12
      002D32 0C                    3140 	.db #0x0c	; 12
      002D33 0C                    3141 	.db #0x0c	; 12
      002D34 1E                    3142 	.db #0x1e	; 30
      002D35 00                    3143 	.db #0x00	; 0
      002D36 38                    3144 	.db #0x38	; 56	'8'
      002D37 00                    3145 	.db #0x00	; 0
      002D38 1E                    3146 	.db #0x1e	; 30
      002D39 0C                    3147 	.db #0x0c	; 12
      002D3A 0C                    3148 	.db #0x0c	; 12
      002D3B 0C                    3149 	.db #0x0c	; 12
      002D3C 1E                    3150 	.db #0x1e	; 30
      002D3D 00                    3151 	.db #0x00	; 0
      002D3E 0C                    3152 	.db #0x0c	; 12
      002D3F 12                    3153 	.db #0x12	; 18
      002D40 00                    3154 	.db #0x00	; 0
      002D41 1E                    3155 	.db #0x1e	; 30
      002D42 0C                    3156 	.db #0x0c	; 12
      002D43 0C                    3157 	.db #0x0c	; 12
      002D44 1E                    3158 	.db #0x1e	; 30
      002D45 00                    3159 	.db #0x00	; 0
      002D46 33                    3160 	.db #0x33	; 51	'3'
      002D47 00                    3161 	.db #0x00	; 0
      002D48 1E                    3162 	.db #0x1e	; 30
      002D49 0C                    3163 	.db #0x0c	; 12
      002D4A 0C                    3164 	.db #0x0c	; 12
      002D4B 0C                    3165 	.db #0x0c	; 12
      002D4C 1E                    3166 	.db #0x1e	; 30
      002D4D 00                    3167 	.db #0x00	; 0
      002D4E 3F                    3168 	.db #0x3f	; 63
      002D4F 66                    3169 	.db #0x66	; 102	'f'
      002D50 6F                    3170 	.db #0x6f	; 111	'o'
      002D51 6F                    3171 	.db #0x6f	; 111	'o'
      002D52 66                    3172 	.db #0x66	; 102	'f'
      002D53 66                    3173 	.db #0x66	; 102	'f'
      002D54 3F                    3174 	.db #0x3f	; 63
      002D55 00                    3175 	.db #0x00	; 0
      002D56 3F                    3176 	.db #0x3f	; 63
      002D57 00                    3177 	.db #0x00	; 0
      002D58 33                    3178 	.db #0x33	; 51	'3'
      002D59 37                    3179 	.db #0x37	; 55	'7'
      002D5A 3F                    3180 	.db #0x3f	; 63
      002D5B 3B                    3181 	.db #0x3b	; 59
      002D5C 33                    3182 	.db #0x33	; 51	'3'
      002D5D 00                    3183 	.db #0x00	; 0
      002D5E 0E                    3184 	.db #0x0e	; 14
      002D5F 00                    3185 	.db #0x00	; 0
      002D60 18                    3186 	.db #0x18	; 24
      002D61 3C                    3187 	.db #0x3c	; 60
      002D62 66                    3188 	.db #0x66	; 102	'f'
      002D63 3C                    3189 	.db #0x3c	; 60
      002D64 18                    3190 	.db #0x18	; 24
      002D65 00                    3191 	.db #0x00	; 0
      002D66 70                    3192 	.db #0x70	; 112	'p'
      002D67 00                    3193 	.db #0x00	; 0
      002D68 18                    3194 	.db #0x18	; 24
      002D69 3C                    3195 	.db #0x3c	; 60
      002D6A 66                    3196 	.db #0x66	; 102	'f'
      002D6B 3C                    3197 	.db #0x3c	; 60
      002D6C 18                    3198 	.db #0x18	; 24
      002D6D 00                    3199 	.db #0x00	; 0
      002D6E 3C                    3200 	.db #0x3c	; 60
      002D6F 66                    3201 	.db #0x66	; 102	'f'
      002D70 18                    3202 	.db #0x18	; 24
      002D71 3C                    3203 	.db #0x3c	; 60
      002D72 66                    3204 	.db #0x66	; 102	'f'
      002D73 3C                    3205 	.db #0x3c	; 60
      002D74 18                    3206 	.db #0x18	; 24
      002D75 00                    3207 	.db #0x00	; 0
      002D76 6E                    3208 	.db #0x6e	; 110	'n'
      002D77 3B                    3209 	.db #0x3b	; 59
      002D78 00                    3210 	.db #0x00	; 0
      002D79 3E                    3211 	.db #0x3e	; 62
      002D7A 63                    3212 	.db #0x63	; 99	'c'
      002D7B 63                    3213 	.db #0x63	; 99	'c'
      002D7C 3E                    3214 	.db #0x3e	; 62
      002D7D 00                    3215 	.db #0x00	; 0
      002D7E C3                    3216 	.db #0xc3	; 195
      002D7F 18                    3217 	.db #0x18	; 24
      002D80 3C                    3218 	.db #0x3c	; 60
      002D81 66                    3219 	.db #0x66	; 102	'f'
      002D82 66                    3220 	.db #0x66	; 102	'f'
      002D83 3C                    3221 	.db #0x3c	; 60
      002D84 18                    3222 	.db #0x18	; 24
      002D85 00                    3223 	.db #0x00	; 0
      002D86 00                    3224 	.db #0x00	; 0
      002D87 36                    3225 	.db #0x36	; 54	'6'
      002D88 1C                    3226 	.db #0x1c	; 28
      002D89 08                    3227 	.db #0x08	; 8
      002D8A 1C                    3228 	.db #0x1c	; 28
      002D8B 36                    3229 	.db #0x36	; 54	'6'
      002D8C 00                    3230 	.db #0x00	; 0
      002D8D 00                    3231 	.db #0x00	; 0
      002D8E 5C                    3232 	.db #0x5c	; 92
      002D8F 36                    3233 	.db #0x36	; 54	'6'
      002D90 73                    3234 	.db #0x73	; 115	's'
      002D91 7B                    3235 	.db #0x7b	; 123
      002D92 6F                    3236 	.db #0x6f	; 111	'o'
      002D93 36                    3237 	.db #0x36	; 54	'6'
      002D94 1D                    3238 	.db #0x1d	; 29
      002D95 00                    3239 	.db #0x00	; 0
      002D96 0E                    3240 	.db #0x0e	; 14
      002D97 00                    3241 	.db #0x00	; 0
      002D98 66                    3242 	.db #0x66	; 102	'f'
      002D99 66                    3243 	.db #0x66	; 102	'f'
      002D9A 66                    3244 	.db #0x66	; 102	'f'
      002D9B 66                    3245 	.db #0x66	; 102	'f'
      002D9C 3C                    3246 	.db #0x3c	; 60
      002D9D 00                    3247 	.db #0x00	; 0
      002D9E 70                    3248 	.db #0x70	; 112	'p'
      002D9F 00                    3249 	.db #0x00	; 0
      002DA0 66                    3250 	.db #0x66	; 102	'f'
      002DA1 66                    3251 	.db #0x66	; 102	'f'
      002DA2 66                    3252 	.db #0x66	; 102	'f'
      002DA3 66                    3253 	.db #0x66	; 102	'f'
      002DA4 3C                    3254 	.db #0x3c	; 60
      002DA5 00                    3255 	.db #0x00	; 0
      002DA6 3C                    3256 	.db #0x3c	; 60
      002DA7 66                    3257 	.db #0x66	; 102	'f'
      002DA8 00                    3258 	.db #0x00	; 0
      002DA9 66                    3259 	.db #0x66	; 102	'f'
      002DAA 66                    3260 	.db #0x66	; 102	'f'
      002DAB 66                    3261 	.db #0x66	; 102	'f'
      002DAC 3C                    3262 	.db #0x3c	; 60
      002DAD 00                    3263 	.db #0x00	; 0
      002DAE 33                    3264 	.db #0x33	; 51	'3'
      002DAF 00                    3265 	.db #0x00	; 0
      002DB0 33                    3266 	.db #0x33	; 51	'3'
      002DB1 33                    3267 	.db #0x33	; 51	'3'
      002DB2 33                    3268 	.db #0x33	; 51	'3'
      002DB3 33                    3269 	.db #0x33	; 51	'3'
      002DB4 1E                    3270 	.db #0x1e	; 30
      002DB5 00                    3271 	.db #0x00	; 0
      002DB6 70                    3272 	.db #0x70	; 112	'p'
      002DB7 00                    3273 	.db #0x00	; 0
      002DB8 66                    3274 	.db #0x66	; 102	'f'
      002DB9 66                    3275 	.db #0x66	; 102	'f'
      002DBA 3C                    3276 	.db #0x3c	; 60
      002DBB 18                    3277 	.db #0x18	; 24
      002DBC 18                    3278 	.db #0x18	; 24
      002DBD 00                    3279 	.db #0x00	; 0
      002DBE 0F                    3280 	.db #0x0f	; 15
      002DBF 06                    3281 	.db #0x06	; 6
      002DC0 3E                    3282 	.db #0x3e	; 62
      002DC1 66                    3283 	.db #0x66	; 102	'f'
      002DC2 66                    3284 	.db #0x66	; 102	'f'
      002DC3 3E                    3285 	.db #0x3e	; 62
      002DC4 06                    3286 	.db #0x06	; 6
      002DC5 0F                    3287 	.db #0x0f	; 15
      002DC6 00                    3288 	.db #0x00	; 0
      002DC7 1E                    3289 	.db #0x1e	; 30
      002DC8 33                    3290 	.db #0x33	; 51	'3'
      002DC9 1F                    3291 	.db #0x1f	; 31
      002DCA 33                    3292 	.db #0x33	; 51	'3'
      002DCB 1F                    3293 	.db #0x1f	; 31
      002DCC 03                    3294 	.db #0x03	; 3
      002DCD 03                    3295 	.db #0x03	; 3
      002DCE 07                    3296 	.db #0x07	; 7
      002DCF 00                    3297 	.db #0x00	; 0
      002DD0 1E                    3298 	.db #0x1e	; 30
      002DD1 30                    3299 	.db #0x30	; 48	'0'
      002DD2 3E                    3300 	.db #0x3e	; 62
      002DD3 33                    3301 	.db #0x33	; 51	'3'
      002DD4 7E                    3302 	.db #0x7e	; 126
      002DD5 00                    3303 	.db #0x00	; 0
      002DD6 38                    3304 	.db #0x38	; 56	'8'
      002DD7 00                    3305 	.db #0x00	; 0
      002DD8 1E                    3306 	.db #0x1e	; 30
      002DD9 30                    3307 	.db #0x30	; 48	'0'
      002DDA 3E                    3308 	.db #0x3e	; 62
      002DDB 33                    3309 	.db #0x33	; 51	'3'
      002DDC 7E                    3310 	.db #0x7e	; 126
      002DDD 00                    3311 	.db #0x00	; 0
      002DDE 7E                    3312 	.db #0x7e	; 126
      002DDF C3                    3313 	.db #0xc3	; 195
      002DE0 3C                    3314 	.db #0x3c	; 60
      002DE1 60                    3315 	.db #0x60	; 96
      002DE2 7C                    3316 	.db #0x7c	; 124
      002DE3 66                    3317 	.db #0x66	; 102	'f'
      002DE4 FC                    3318 	.db #0xfc	; 252
      002DE5 00                    3319 	.db #0x00	; 0
      002DE6 6E                    3320 	.db #0x6e	; 110	'n'
      002DE7 3B                    3321 	.db #0x3b	; 59
      002DE8 1E                    3322 	.db #0x1e	; 30
      002DE9 30                    3323 	.db #0x30	; 48	'0'
      002DEA 3E                    3324 	.db #0x3e	; 62
      002DEB 33                    3325 	.db #0x33	; 51	'3'
      002DEC 7E                    3326 	.db #0x7e	; 126
      002DED 00                    3327 	.db #0x00	; 0
      002DEE 33                    3328 	.db #0x33	; 51	'3'
      002DEF 00                    3329 	.db #0x00	; 0
      002DF0 1E                    3330 	.db #0x1e	; 30
      002DF1 30                    3331 	.db #0x30	; 48	'0'
      002DF2 3E                    3332 	.db #0x3e	; 62
      002DF3 33                    3333 	.db #0x33	; 51	'3'
      002DF4 7E                    3334 	.db #0x7e	; 126
      002DF5 00                    3335 	.db #0x00	; 0
      002DF6 0C                    3336 	.db #0x0c	; 12
      002DF7 0C                    3337 	.db #0x0c	; 12
      002DF8 1E                    3338 	.db #0x1e	; 30
      002DF9 30                    3339 	.db #0x30	; 48	'0'
      002DFA 3E                    3340 	.db #0x3e	; 62
      002DFB 33                    3341 	.db #0x33	; 51	'3'
      002DFC 7E                    3342 	.db #0x7e	; 126
      002DFD 00                    3343 	.db #0x00	; 0
      002DFE 00                    3344 	.db #0x00	; 0
      002DFF 00                    3345 	.db #0x00	; 0
      002E00 FE                    3346 	.db #0xfe	; 254
      002E01 30                    3347 	.db #0x30	; 48	'0'
      002E02 FE                    3348 	.db #0xfe	; 254
      002E03 33                    3349 	.db #0x33	; 51	'3'
      002E04 FE                    3350 	.db #0xfe	; 254
      002E05 00                    3351 	.db #0x00	; 0
      002E06 00                    3352 	.db #0x00	; 0
      002E07 00                    3353 	.db #0x00	; 0
      002E08 1E                    3354 	.db #0x1e	; 30
      002E09 03                    3355 	.db #0x03	; 3
      002E0A 03                    3356 	.db #0x03	; 3
      002E0B 1E                    3357 	.db #0x1e	; 30
      002E0C 30                    3358 	.db #0x30	; 48	'0'
      002E0D 1C                    3359 	.db #0x1c	; 28
      002E0E 07                    3360 	.db #0x07	; 7
      002E0F 00                    3361 	.db #0x00	; 0
      002E10 1E                    3362 	.db #0x1e	; 30
      002E11 33                    3363 	.db #0x33	; 51	'3'
      002E12 3F                    3364 	.db #0x3f	; 63
      002E13 03                    3365 	.db #0x03	; 3
      002E14 1E                    3366 	.db #0x1e	; 30
      002E15 00                    3367 	.db #0x00	; 0
      002E16 38                    3368 	.db #0x38	; 56	'8'
      002E17 00                    3369 	.db #0x00	; 0
      002E18 1E                    3370 	.db #0x1e	; 30
      002E19 33                    3371 	.db #0x33	; 51	'3'
      002E1A 3F                    3372 	.db #0x3f	; 63
      002E1B 03                    3373 	.db #0x03	; 3
      002E1C 1E                    3374 	.db #0x1e	; 30
      002E1D 00                    3375 	.db #0x00	; 0
      002E1E 7E                    3376 	.db #0x7e	; 126
      002E1F C3                    3377 	.db #0xc3	; 195
      002E20 3C                    3378 	.db #0x3c	; 60
      002E21 66                    3379 	.db #0x66	; 102	'f'
      002E22 7E                    3380 	.db #0x7e	; 126
      002E23 06                    3381 	.db #0x06	; 6
      002E24 3C                    3382 	.db #0x3c	; 60
      002E25 00                    3383 	.db #0x00	; 0
      002E26 33                    3384 	.db #0x33	; 51	'3'
      002E27 00                    3385 	.db #0x00	; 0
      002E28 1E                    3386 	.db #0x1e	; 30
      002E29 33                    3387 	.db #0x33	; 51	'3'
      002E2A 3F                    3388 	.db #0x3f	; 63
      002E2B 03                    3389 	.db #0x03	; 3
      002E2C 1E                    3390 	.db #0x1e	; 30
      002E2D 00                    3391 	.db #0x00	; 0
      002E2E 07                    3392 	.db #0x07	; 7
      002E2F 00                    3393 	.db #0x00	; 0
      002E30 0E                    3394 	.db #0x0e	; 14
      002E31 0C                    3395 	.db #0x0c	; 12
      002E32 0C                    3396 	.db #0x0c	; 12
      002E33 0C                    3397 	.db #0x0c	; 12
      002E34 1E                    3398 	.db #0x1e	; 30
      002E35 00                    3399 	.db #0x00	; 0
      002E36 1C                    3400 	.db #0x1c	; 28
      002E37 00                    3401 	.db #0x00	; 0
      002E38 0E                    3402 	.db #0x0e	; 14
      002E39 0C                    3403 	.db #0x0c	; 12
      002E3A 0C                    3404 	.db #0x0c	; 12
      002E3B 0C                    3405 	.db #0x0c	; 12
      002E3C 1E                    3406 	.db #0x1e	; 30
      002E3D 00                    3407 	.db #0x00	; 0
      002E3E 3E                    3408 	.db #0x3e	; 62
      002E3F 63                    3409 	.db #0x63	; 99	'c'
      002E40 1C                    3410 	.db #0x1c	; 28
      002E41 18                    3411 	.db #0x18	; 24
      002E42 18                    3412 	.db #0x18	; 24
      002E43 18                    3413 	.db #0x18	; 24
      002E44 3C                    3414 	.db #0x3c	; 60
      002E45 00                    3415 	.db #0x00	; 0
      002E46 33                    3416 	.db #0x33	; 51	'3'
      002E47 00                    3417 	.db #0x00	; 0
      002E48 0E                    3418 	.db #0x0e	; 14
      002E49 0C                    3419 	.db #0x0c	; 12
      002E4A 0C                    3420 	.db #0x0c	; 12
      002E4B 0C                    3421 	.db #0x0c	; 12
      002E4C 1E                    3422 	.db #0x1e	; 30
      002E4D 00                    3423 	.db #0x00	; 0
      002E4E 1B                    3424 	.db #0x1b	; 27
      002E4F 0E                    3425 	.db #0x0e	; 14
      002E50 1B                    3426 	.db #0x1b	; 27
      002E51 30                    3427 	.db #0x30	; 48	'0'
      002E52 3E                    3428 	.db #0x3e	; 62
      002E53 33                    3429 	.db #0x33	; 51	'3'
      002E54 1E                    3430 	.db #0x1e	; 30
      002E55 00                    3431 	.db #0x00	; 0
      002E56 00                    3432 	.db #0x00	; 0
      002E57 1F                    3433 	.db #0x1f	; 31
      002E58 00                    3434 	.db #0x00	; 0
      002E59 1F                    3435 	.db #0x1f	; 31
      002E5A 33                    3436 	.db #0x33	; 51	'3'
      002E5B 33                    3437 	.db #0x33	; 51	'3'
      002E5C 33                    3438 	.db #0x33	; 51	'3'
      002E5D 00                    3439 	.db #0x00	; 0
      002E5E 00                    3440 	.db #0x00	; 0
      002E5F 07                    3441 	.db #0x07	; 7
      002E60 00                    3442 	.db #0x00	; 0
      002E61 1E                    3443 	.db #0x1e	; 30
      002E62 33                    3444 	.db #0x33	; 51	'3'
      002E63 33                    3445 	.db #0x33	; 51	'3'
      002E64 1E                    3446 	.db #0x1e	; 30
      002E65 00                    3447 	.db #0x00	; 0
      002E66 00                    3448 	.db #0x00	; 0
      002E67 38                    3449 	.db #0x38	; 56	'8'
      002E68 00                    3450 	.db #0x00	; 0
      002E69 1E                    3451 	.db #0x1e	; 30
      002E6A 33                    3452 	.db #0x33	; 51	'3'
      002E6B 33                    3453 	.db #0x33	; 51	'3'
      002E6C 1E                    3454 	.db #0x1e	; 30
      002E6D 00                    3455 	.db #0x00	; 0
      002E6E 1E                    3456 	.db #0x1e	; 30
      002E6F 33                    3457 	.db #0x33	; 51	'3'
      002E70 00                    3458 	.db #0x00	; 0
      002E71 1E                    3459 	.db #0x1e	; 30
      002E72 33                    3460 	.db #0x33	; 51	'3'
      002E73 33                    3461 	.db #0x33	; 51	'3'
      002E74 1E                    3462 	.db #0x1e	; 30
      002E75 00                    3463 	.db #0x00	; 0
      002E76 6E                    3464 	.db #0x6e	; 110	'n'
      002E77 3B                    3465 	.db #0x3b	; 59
      002E78 00                    3466 	.db #0x00	; 0
      002E79 1E                    3467 	.db #0x1e	; 30
      002E7A 33                    3468 	.db #0x33	; 51	'3'
      002E7B 33                    3469 	.db #0x33	; 51	'3'
      002E7C 1E                    3470 	.db #0x1e	; 30
      002E7D 00                    3471 	.db #0x00	; 0
      002E7E 00                    3472 	.db #0x00	; 0
      002E7F 33                    3473 	.db #0x33	; 51	'3'
      002E80 00                    3474 	.db #0x00	; 0
      002E81 1E                    3475 	.db #0x1e	; 30
      002E82 33                    3476 	.db #0x33	; 51	'3'
      002E83 33                    3477 	.db #0x33	; 51	'3'
      002E84 1E                    3478 	.db #0x1e	; 30
      002E85 00                    3479 	.db #0x00	; 0
      002E86 18                    3480 	.db #0x18	; 24
      002E87 18                    3481 	.db #0x18	; 24
      002E88 00                    3482 	.db #0x00	; 0
      002E89 7E                    3483 	.db #0x7e	; 126
      002E8A 00                    3484 	.db #0x00	; 0
      002E8B 18                    3485 	.db #0x18	; 24
      002E8C 18                    3486 	.db #0x18	; 24
      002E8D 00                    3487 	.db #0x00	; 0
      002E8E 00                    3488 	.db #0x00	; 0
      002E8F 60                    3489 	.db #0x60	; 96
      002E90 3C                    3490 	.db #0x3c	; 60
      002E91 76                    3491 	.db #0x76	; 118	'v'
      002E92 7E                    3492 	.db #0x7e	; 126
      002E93 6E                    3493 	.db #0x6e	; 110	'n'
      002E94 3C                    3494 	.db #0x3c	; 60
      002E95 06                    3495 	.db #0x06	; 6
      002E96 00                    3496 	.db #0x00	; 0
      002E97 07                    3497 	.db #0x07	; 7
      002E98 00                    3498 	.db #0x00	; 0
      002E99 33                    3499 	.db #0x33	; 51	'3'
      002E9A 33                    3500 	.db #0x33	; 51	'3'
      002E9B 33                    3501 	.db #0x33	; 51	'3'
      002E9C 7E                    3502 	.db #0x7e	; 126
      002E9D 00                    3503 	.db #0x00	; 0
      002E9E 00                    3504 	.db #0x00	; 0
      002E9F 38                    3505 	.db #0x38	; 56	'8'
      002EA0 00                    3506 	.db #0x00	; 0
      002EA1 33                    3507 	.db #0x33	; 51	'3'
      002EA2 33                    3508 	.db #0x33	; 51	'3'
      002EA3 33                    3509 	.db #0x33	; 51	'3'
      002EA4 7E                    3510 	.db #0x7e	; 126
      002EA5 00                    3511 	.db #0x00	; 0
      002EA6 1E                    3512 	.db #0x1e	; 30
      002EA7 33                    3513 	.db #0x33	; 51	'3'
      002EA8 00                    3514 	.db #0x00	; 0
      002EA9 33                    3515 	.db #0x33	; 51	'3'
      002EAA 33                    3516 	.db #0x33	; 51	'3'
      002EAB 33                    3517 	.db #0x33	; 51	'3'
      002EAC 7E                    3518 	.db #0x7e	; 126
      002EAD 00                    3519 	.db #0x00	; 0
      002EAE 00                    3520 	.db #0x00	; 0
      002EAF 33                    3521 	.db #0x33	; 51	'3'
      002EB0 00                    3522 	.db #0x00	; 0
      002EB1 33                    3523 	.db #0x33	; 51	'3'
      002EB2 33                    3524 	.db #0x33	; 51	'3'
      002EB3 33                    3525 	.db #0x33	; 51	'3'
      002EB4 7E                    3526 	.db #0x7e	; 126
      002EB5 00                    3527 	.db #0x00	; 0
      002EB6 00                    3528 	.db #0x00	; 0
      002EB7 38                    3529 	.db #0x38	; 56	'8'
      002EB8 00                    3530 	.db #0x00	; 0
      002EB9 33                    3531 	.db #0x33	; 51	'3'
      002EBA 33                    3532 	.db #0x33	; 51	'3'
      002EBB 3E                    3533 	.db #0x3e	; 62
      002EBC 30                    3534 	.db #0x30	; 48	'0'
      002EBD 1F                    3535 	.db #0x1f	; 31
      002EBE 00                    3536 	.db #0x00	; 0
      002EBF 00                    3537 	.db #0x00	; 0
      002EC0 06                    3538 	.db #0x06	; 6
      002EC1 3E                    3539 	.db #0x3e	; 62
      002EC2 66                    3540 	.db #0x66	; 102	'f'
      002EC3 3E                    3541 	.db #0x3e	; 62
      002EC4 06                    3542 	.db #0x06	; 6
      002EC5 00                    3543 	.db #0x00	; 0
      002EC6 00                    3544 	.db #0x00	; 0
      002EC7 33                    3545 	.db #0x33	; 51	'3'
      002EC8 00                    3546 	.db #0x00	; 0
      002EC9 33                    3547 	.db #0x33	; 51	'3'
      002ECA 33                    3548 	.db #0x33	; 51	'3'
      002ECB 3E                    3549 	.db #0x3e	; 62
      002ECC 30                    3550 	.db #0x30	; 48	'0'
      002ECD 1F                    3551 	.db #0x1f	; 31
      002ECE                       3552 __xinit__initial:
      002ECE A5 26 80              3553 	.byte ___str_8, (___str_8 >> 8),#0x80
                                   3554 	.area CABS    (ABS,CODE)
