                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module life
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _evolve
                                     13 	.globl _show
                                     14 	.globl _int1
                                     15 	.globl _int0
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
                                    140 	.globl _c
                                    141 	.globl _i1
                                    142 	.globl _i0
                                    143 	.globl _fixed
                                    144 	.globl _population
                                    145 	.globl _n
                                    146 	.globl _y1
                                    147 	.globl _x1
                                    148 	.globl _y
                                    149 	.globl _x
                                    150 	.globl _nu
                                    151 	.globl _u
                                    152 	.globl _putchar
                                    153 	.globl _getchar
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           000080   159 _P0	=	0x0080
                           000081   160 _SP	=	0x0081
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000087   163 _PCON	=	0x0087
                           000088   164 _TCON	=	0x0088
                           000089   165 _TMOD	=	0x0089
                           00008A   166 _TL0	=	0x008a
                           00008B   167 _TL1	=	0x008b
                           00008C   168 _TH0	=	0x008c
                           00008D   169 _TH1	=	0x008d
                           000090   170 _P1	=	0x0090
                           000098   171 _SCON	=	0x0098
                           000099   172 _SBUF	=	0x0099
                           0000A0   173 _P2	=	0x00a0
                           0000A8   174 _IE	=	0x00a8
                           0000B0   175 _P3	=	0x00b0
                           0000B8   176 _IP	=	0x00b8
                           0000C8   177 _T2CON	=	0x00c8
                           0000C9   178 _T2MOD	=	0x00c9
                           0000CA   179 _RCAP2L	=	0x00ca
                           0000CB   180 _RCAP2H	=	0x00cb
                           0000CC   181 _TL2	=	0x00cc
                           0000CD   182 _TH2	=	0x00cd
                           0000D0   183 _PSW	=	0x00d0
                           0000E0   184 _ACC	=	0x00e0
                           0000E0   185 _A	=	0x00e0
                           0000F0   186 _B	=	0x00f0
                                    187 ;--------------------------------------------------------
                                    188 ; special function bits
                                    189 ;--------------------------------------------------------
                                    190 	.area RSEG    (ABS,DATA)
      000000                        191 	.org 0x0000
                           000080   192 _P0_0	=	0x0080
                           000081   193 _P0_1	=	0x0081
                           000082   194 _P0_2	=	0x0082
                           000083   195 _P0_3	=	0x0083
                           000084   196 _P0_4	=	0x0084
                           000085   197 _P0_5	=	0x0085
                           000086   198 _P0_6	=	0x0086
                           000087   199 _P0_7	=	0x0087
                           000088   200 _IT0	=	0x0088
                           000089   201 _IE0	=	0x0089
                           00008A   202 _IT1	=	0x008a
                           00008B   203 _IE1	=	0x008b
                           00008C   204 _TR0	=	0x008c
                           00008D   205 _TF0	=	0x008d
                           00008E   206 _TR1	=	0x008e
                           00008F   207 _TF1	=	0x008f
                           000090   208 _P1_0	=	0x0090
                           000091   209 _P1_1	=	0x0091
                           000092   210 _P1_2	=	0x0092
                           000093   211 _P1_3	=	0x0093
                           000094   212 _P1_4	=	0x0094
                           000095   213 _P1_5	=	0x0095
                           000096   214 _P1_6	=	0x0096
                           000097   215 _P1_7	=	0x0097
                           000090   216 _T2	=	0x0090
                           000091   217 _T2EX	=	0x0091
                           000098   218 _RI	=	0x0098
                           000099   219 _TI	=	0x0099
                           00009A   220 _RB8	=	0x009a
                           00009B   221 _TB8	=	0x009b
                           00009C   222 _REN	=	0x009c
                           00009D   223 _SM2	=	0x009d
                           00009E   224 _SM1	=	0x009e
                           00009F   225 _SM0	=	0x009f
                           0000A0   226 _P2_0	=	0x00a0
                           0000A1   227 _P2_1	=	0x00a1
                           0000A2   228 _P2_2	=	0x00a2
                           0000A3   229 _P2_3	=	0x00a3
                           0000A4   230 _P2_4	=	0x00a4
                           0000A5   231 _P2_5	=	0x00a5
                           0000A6   232 _P2_6	=	0x00a6
                           0000A7   233 _P2_7	=	0x00a7
                           0000A8   234 _EX0	=	0x00a8
                           0000A9   235 _ET0	=	0x00a9
                           0000AA   236 _EX1	=	0x00aa
                           0000AB   237 _ET1	=	0x00ab
                           0000AC   238 _ES	=	0x00ac
                           0000AD   239 _ET2	=	0x00ad
                           0000AF   240 _EA	=	0x00af
                           0000B0   241 _P3_0	=	0x00b0
                           0000B1   242 _P3_1	=	0x00b1
                           0000B2   243 _P3_2	=	0x00b2
                           0000B3   244 _P3_3	=	0x00b3
                           0000B4   245 _P3_4	=	0x00b4
                           0000B5   246 _P3_5	=	0x00b5
                           0000B6   247 _P3_6	=	0x00b6
                           0000B7   248 _P3_7	=	0x00b7
                           0000B0   249 _RXD	=	0x00b0
                           0000B1   250 _TXD	=	0x00b1
                           0000B2   251 _INT0	=	0x00b2
                           0000B3   252 _INT1	=	0x00b3
                           0000B4   253 _T0	=	0x00b4
                           0000B5   254 _T1	=	0x00b5
                           0000B6   255 _WR	=	0x00b6
                           0000B7   256 _RD	=	0x00b7
                           0000B8   257 _PX0	=	0x00b8
                           0000B9   258 _PT0	=	0x00b9
                           0000BA   259 _PX1	=	0x00ba
                           0000BB   260 _PT1	=	0x00bb
                           0000BC   261 _PS	=	0x00bc
                           0000BD   262 _PT2	=	0x00bd
                           0000C8   263 _T2CON_0	=	0x00c8
                           0000C9   264 _T2CON_1	=	0x00c9
                           0000CA   265 _T2CON_2	=	0x00ca
                           0000CB   266 _T2CON_3	=	0x00cb
                           0000CC   267 _T2CON_4	=	0x00cc
                           0000CD   268 _T2CON_5	=	0x00cd
                           0000CE   269 _T2CON_6	=	0x00ce
                           0000CF   270 _T2CON_7	=	0x00cf
                           0000C8   271 _CP_RL2	=	0x00c8
                           0000C9   272 _C_T2	=	0x00c9
                           0000CA   273 _TR2	=	0x00ca
                           0000CB   274 _EXEN2	=	0x00cb
                           0000CC   275 _TCLK	=	0x00cc
                           0000CD   276 _RCLK	=	0x00cd
                           0000CE   277 _EXF2	=	0x00ce
                           0000CF   278 _TF2	=	0x00cf
                           0000D0   279 _P	=	0x00d0
                           0000D1   280 _FL	=	0x00d1
                           0000D2   281 _OV	=	0x00d2
                           0000D3   282 _RS0	=	0x00d3
                           0000D4   283 _RS1	=	0x00d4
                           0000D5   284 _F0	=	0x00d5
                           0000D6   285 _AC	=	0x00d6
                           0000D7   286 _CY	=	0x00d7
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable register banks
                                    289 ;--------------------------------------------------------
                                    290 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        291 	.ds 8
                                    292 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        293 	.ds 8
                                    294 ;--------------------------------------------------------
                                    295 ; overlayable bit register bank
                                    296 ;--------------------------------------------------------
                                    297 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        298 bits:
      000020                        299 	.ds 1
                           008000   300 	b0 = bits[0]
                           008100   301 	b1 = bits[1]
                           008200   302 	b2 = bits[2]
                           008300   303 	b3 = bits[3]
                           008400   304 	b4 = bits[4]
                           008500   305 	b5 = bits[5]
                           008600   306 	b6 = bits[6]
                           008700   307 	b7 = bits[7]
                                    308 ;--------------------------------------------------------
                                    309 ; internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area DSEG    (DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; overlayable items in internal ram 
                                    314 ;--------------------------------------------------------
                                    315 ;--------------------------------------------------------
                                    316 ; Stack segment in internal ram 
                                    317 ;--------------------------------------------------------
                                    318 	.area	SSEG
      000021                        319 __start__stack:
      000021                        320 	.ds	1
                                    321 
                                    322 ;--------------------------------------------------------
                                    323 ; indirectly addressable internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area ISEG    (DATA)
                                    326 ;--------------------------------------------------------
                                    327 ; absolute internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area IABS    (ABS,DATA)
                                    330 	.area IABS    (ABS,DATA)
                                    331 ;--------------------------------------------------------
                                    332 ; bit data
                                    333 ;--------------------------------------------------------
                                    334 	.area BSEG    (BIT)
                                    335 ;--------------------------------------------------------
                                    336 ; paged external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area PSEG    (PAG,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XSEG    (XDATA)
      008000                        343 _u::
      008000                        344 	.ds 1024
      008400                        345 _nu::
      008400                        346 	.ds 1024
      008800                        347 _x::
      008800                        348 	.ds 2
      008802                        349 _y::
      008802                        350 	.ds 2
      008804                        351 _x1::
      008804                        352 	.ds 2
      008806                        353 _y1::
      008806                        354 	.ds 2
      008808                        355 _n::
      008808                        356 	.ds 2
      00880A                        357 _population::
      00880A                        358 	.ds 2
      00880C                        359 _fixed::
      00880C                        360 	.ds 2
      00880E                        361 _i0::
      00880E                        362 	.ds 2
      008810                        363 _i1::
      008810                        364 	.ds 2
      008812                        365 _c::
      008812                        366 	.ds 2
                                    367 ;--------------------------------------------------------
                                    368 ; absolute external ram data
                                    369 ;--------------------------------------------------------
                                    370 	.area XABS    (ABS,XDATA)
                                    371 ;--------------------------------------------------------
                                    372 ; external initialized ram data
                                    373 ;--------------------------------------------------------
                                    374 	.area XISEG   (XDATA)
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT0 (CODE)
                                    377 	.area GSINIT1 (CODE)
                                    378 	.area GSINIT2 (CODE)
                                    379 	.area GSINIT3 (CODE)
                                    380 	.area GSINIT4 (CODE)
                                    381 	.area GSINIT5 (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 	.area GSFINAL (CODE)
                                    384 	.area CSEG    (CODE)
                                    385 ;--------------------------------------------------------
                                    386 ; interrupt vector 
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
      002000                        389 __interrupt_vect:
      002000 02 20 11         [24]  390 	ljmp	__sdcc_gsinit_startup
      002003 02 20 79         [24]  391 	ljmp	_int0
      002006                        392 	.ds	5
      00200B 02 20 8F         [24]  393 	ljmp	_int1
                                    394 ;--------------------------------------------------------
                                    395 ; global & static initialisations
                                    396 ;--------------------------------------------------------
                                    397 	.area HOME    (CODE)
                                    398 	.area GSINIT  (CODE)
                                    399 	.area GSFINAL (CODE)
                                    400 	.area GSINIT  (CODE)
                                    401 	.globl __sdcc_gsinit_startup
                                    402 	.globl __sdcc_program_startup
                                    403 	.globl __start__stack
                                    404 	.globl __mcs51_genXINIT
                                    405 	.globl __mcs51_genXRAMCLEAR
                                    406 	.globl __mcs51_genRAMCLEAR
                                    407 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  408 	ljmp	__sdcc_program_startup
                                    409 ;--------------------------------------------------------
                                    410 ; Home
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area HOME    (CODE)
      00200E                        414 __sdcc_program_startup:
      00200E 02 24 83         [24]  415 	ljmp	_main
                                    416 ;	return from main will return to caller
                                    417 ;--------------------------------------------------------
                                    418 ; code
                                    419 ;--------------------------------------------------------
                                    420 	.area CSEG    (CODE)
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'putchar'
                                    423 ;------------------------------------------------------------
                                    424 ;c                         Allocated to registers 
                                    425 ;------------------------------------------------------------
                                    426 ;	life.c:7: int putchar(int c) __naked {
                                    427 ;	-----------------------------------------
                                    428 ;	 function putchar
                                    429 ;	-----------------------------------------
      00206D                        430 _putchar:
                                    431 ;	naked function: no prologue.
                                    432 ;	life.c:12: __endasm;
      00206D E5 82            [12]  433 	mov	a, dpl
      00206F 02 00 30         [24]  434 	ljmp	0x0030
                                    435 ;	life.c:13: }
                                    436 ;	naked function: no epilogue.
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'getchar'
                                    439 ;------------------------------------------------------------
                                    440 ;	life.c:15: int getchar(void) __naked {
                                    441 ;	-----------------------------------------
                                    442 ;	 function getchar
                                    443 ;	-----------------------------------------
      002072                        444 _getchar:
                                    445 ;	naked function: no prologue.
                                    446 ;	life.c:20: __endasm;
      002072 12 00 32         [24]  447 	lcall	0x0032
      002075 C2 83            [12]  448 	clr	dph
      002077 F5 82            [12]  449 	mov	dpl, a
                                    450 ;	life.c:21: }
                                    451 ;	naked function: no epilogue.
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'int0'
                                    454 ;------------------------------------------------------------
                                    455 ;	life.c:32: void int0(void) __interrupt 0 __using 1 {
                                    456 ;	-----------------------------------------
                                    457 ;	 function int0
                                    458 ;	-----------------------------------------
      002079                        459 _int0:
                           00000F   460 	ar7 = 0x0f
                           00000E   461 	ar6 = 0x0e
                           00000D   462 	ar5 = 0x0d
                           00000C   463 	ar4 = 0x0c
                           00000B   464 	ar3 = 0x0b
                           00000A   465 	ar2 = 0x0a
                           000009   466 	ar1 = 0x09
                           000008   467 	ar0 = 0x08
      002079 C0 E0            [24]  468 	push	acc
      00207B C0 82            [24]  469 	push	dpl
      00207D C0 83            [24]  470 	push	dph
                                    471 ;	life.c:33: i0 = 1;
      00207F 90 88 0E         [24]  472 	mov	dptr,#_i0
      002082 74 01            [12]  473 	mov	a,#0x01
      002084 F0               [24]  474 	movx	@dptr,a
      002085 E4               [12]  475 	clr	a
      002086 A3               [24]  476 	inc	dptr
      002087 F0               [24]  477 	movx	@dptr,a
                                    478 ;	life.c:34: }
      002088 D0 83            [24]  479 	pop	dph
      00208A D0 82            [24]  480 	pop	dpl
      00208C D0 E0            [24]  481 	pop	acc
      00208E 32               [24]  482 	reti
                                    483 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    484 ;	eliminated unneeded push/pop psw
                                    485 ;	eliminated unneeded push/pop b
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'int1'
                                    488 ;------------------------------------------------------------
                                    489 ;	life.c:36: void int1(void) __interrupt 1 __using 1 {
                                    490 ;	-----------------------------------------
                                    491 ;	 function int1
                                    492 ;	-----------------------------------------
      00208F                        493 _int1:
      00208F C0 E0            [24]  494 	push	acc
      002091 C0 82            [24]  495 	push	dpl
      002093 C0 83            [24]  496 	push	dph
                                    497 ;	life.c:37: i1 = 1;
      002095 90 88 10         [24]  498 	mov	dptr,#_i1
      002098 74 01            [12]  499 	mov	a,#0x01
      00209A F0               [24]  500 	movx	@dptr,a
      00209B E4               [12]  501 	clr	a
      00209C A3               [24]  502 	inc	dptr
      00209D F0               [24]  503 	movx	@dptr,a
                                    504 ;	life.c:38: }
      00209E D0 83            [24]  505 	pop	dph
      0020A0 D0 82            [24]  506 	pop	dpl
      0020A2 D0 E0            [24]  507 	pop	acc
      0020A4 32               [24]  508 	reti
                                    509 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    510 ;	eliminated unneeded push/pop psw
                                    511 ;	eliminated unneeded push/pop b
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'show'
                                    514 ;------------------------------------------------------------
                                    515 ;	life.c:40: void show(void) {
                                    516 ;	-----------------------------------------
                                    517 ;	 function show
                                    518 ;	-----------------------------------------
      0020A5                        519 _show:
                           000007   520 	ar7 = 0x07
                           000006   521 	ar6 = 0x06
                           000005   522 	ar5 = 0x05
                           000004   523 	ar4 = 0x04
                           000003   524 	ar3 = 0x03
                           000002   525 	ar2 = 0x02
                           000001   526 	ar1 = 0x01
                           000000   527 	ar0 = 0x00
                                    528 ;	life.c:41: printf("\033[2J\033[m%04x\r\n", population);
      0020A5 90 88 0A         [24]  529 	mov	dptr,#_population
      0020A8 E0               [24]  530 	movx	a,@dptr
      0020A9 C0 E0            [24]  531 	push	acc
      0020AB A3               [24]  532 	inc	dptr
      0020AC E0               [24]  533 	movx	a,@dptr
      0020AD C0 E0            [24]  534 	push	acc
      0020AF 74 C7            [12]  535 	mov	a,#___str_0
      0020B1 C0 E0            [24]  536 	push	acc
      0020B3 74 39            [12]  537 	mov	a,#(___str_0 >> 8)
      0020B5 C0 E0            [24]  538 	push	acc
      0020B7 74 80            [12]  539 	mov	a,#0x80
      0020B9 C0 E0            [24]  540 	push	acc
      0020BB 12 25 F6         [24]  541 	lcall	_printf
      0020BE E5 81            [12]  542 	mov	a,sp
      0020C0 24 FB            [12]  543 	add	a,#0xfb
      0020C2 F5 81            [12]  544 	mov	sp,a
                                    545 ;	life.c:42: population++;
      0020C4 90 88 0A         [24]  546 	mov	dptr,#_population
      0020C7 E0               [24]  547 	movx	a,@dptr
      0020C8 24 01            [12]  548 	add	a,#0x01
      0020CA F0               [24]  549 	movx	@dptr,a
      0020CB A3               [24]  550 	inc	dptr
      0020CC E0               [24]  551 	movx	a,@dptr
      0020CD 34 00            [12]  552 	addc	a,#0x00
      0020CF F0               [24]  553 	movx	@dptr,a
                                    554 ;	life.c:44: for (y = 0; y < H; y++) {
      0020D0 90 88 02         [24]  555 	mov	dptr,#_y
      0020D3 E4               [12]  556 	clr	a
      0020D4 F0               [24]  557 	movx	@dptr,a
      0020D5 A3               [24]  558 	inc	dptr
      0020D6 F0               [24]  559 	movx	@dptr,a
      0020D7                        560 00108$:
                                    561 ;	life.c:45: for (x = 0; x < W; x++)
      0020D7 90 88 00         [24]  562 	mov	dptr,#_x
      0020DA E4               [12]  563 	clr	a
      0020DB F0               [24]  564 	movx	@dptr,a
      0020DC A3               [24]  565 	inc	dptr
      0020DD F0               [24]  566 	movx	@dptr,a
      0020DE                        567 00106$:
                                    568 ;	life.c:46: if (u[y][x]) printf("\033[01m[]\033[m");
      0020DE 90 88 02         [24]  569 	mov	dptr,#_y
      0020E1 E0               [24]  570 	movx	a,@dptr
      0020E2 FE               [12]  571 	mov	r6,a
      0020E3 A3               [24]  572 	inc	dptr
      0020E4 E0               [24]  573 	movx	a,@dptr
      0020E5 C4               [12]  574 	swap	a
      0020E6 23               [12]  575 	rl	a
      0020E7 54 E0            [12]  576 	anl	a,#0xe0
      0020E9 CE               [12]  577 	xch	a,r6
      0020EA C4               [12]  578 	swap	a
      0020EB 23               [12]  579 	rl	a
      0020EC CE               [12]  580 	xch	a,r6
      0020ED 6E               [12]  581 	xrl	a,r6
      0020EE CE               [12]  582 	xch	a,r6
      0020EF 54 E0            [12]  583 	anl	a,#0xe0
      0020F1 CE               [12]  584 	xch	a,r6
      0020F2 6E               [12]  585 	xrl	a,r6
      0020F3 FF               [12]  586 	mov	r7,a
      0020F4 EE               [12]  587 	mov	a,r6
      0020F5 24 00            [12]  588 	add	a,#_u
      0020F7 FE               [12]  589 	mov	r6,a
      0020F8 EF               [12]  590 	mov	a,r7
      0020F9 34 80            [12]  591 	addc	a,#(_u >> 8)
      0020FB FF               [12]  592 	mov	r7,a
      0020FC 90 88 00         [24]  593 	mov	dptr,#_x
      0020FF E0               [24]  594 	movx	a,@dptr
      002100 FC               [12]  595 	mov	r4,a
      002101 A3               [24]  596 	inc	dptr
      002102 E0               [24]  597 	movx	a,@dptr
      002103 FD               [12]  598 	mov	r5,a
      002104 EC               [12]  599 	mov	a,r4
      002105 2E               [12]  600 	add	a,r6
      002106 FE               [12]  601 	mov	r6,a
      002107 ED               [12]  602 	mov	a,r5
      002108 3F               [12]  603 	addc	a,r7
      002109 FF               [12]  604 	mov	r7,a
      00210A 8E 82            [24]  605 	mov	dpl,r6
      00210C 8F 83            [24]  606 	mov	dph,r7
      00210E E0               [24]  607 	movx	a,@dptr
      00210F 60 17            [24]  608 	jz	00102$
      002111 74 D5            [12]  609 	mov	a,#___str_1
      002113 C0 E0            [24]  610 	push	acc
      002115 74 39            [12]  611 	mov	a,#(___str_1 >> 8)
      002117 C0 E0            [24]  612 	push	acc
      002119 74 80            [12]  613 	mov	a,#0x80
      00211B C0 E0            [24]  614 	push	acc
      00211D 12 25 F6         [24]  615 	lcall	_printf
      002120 15 81            [12]  616 	dec	sp
      002122 15 81            [12]  617 	dec	sp
      002124 15 81            [12]  618 	dec	sp
      002126 80 15            [24]  619 	sjmp	00107$
      002128                        620 00102$:
                                    621 ;	life.c:47: else printf("  ");
      002128 74 E0            [12]  622 	mov	a,#___str_2
      00212A C0 E0            [24]  623 	push	acc
      00212C 74 39            [12]  624 	mov	a,#(___str_2 >> 8)
      00212E C0 E0            [24]  625 	push	acc
      002130 74 80            [12]  626 	mov	a,#0x80
      002132 C0 E0            [24]  627 	push	acc
      002134 12 25 F6         [24]  628 	lcall	_printf
      002137 15 81            [12]  629 	dec	sp
      002139 15 81            [12]  630 	dec	sp
      00213B 15 81            [12]  631 	dec	sp
      00213D                        632 00107$:
                                    633 ;	life.c:45: for (x = 0; x < W; x++)
      00213D 90 88 00         [24]  634 	mov	dptr,#_x
      002140 E0               [24]  635 	movx	a,@dptr
      002141 24 01            [12]  636 	add	a,#0x01
      002143 F0               [24]  637 	movx	@dptr,a
      002144 A3               [24]  638 	inc	dptr
      002145 E0               [24]  639 	movx	a,@dptr
      002146 34 00            [12]  640 	addc	a,#0x00
      002148 F0               [24]  641 	movx	@dptr,a
      002149 90 88 00         [24]  642 	mov	dptr,#_x
      00214C E0               [24]  643 	movx	a,@dptr
      00214D FE               [12]  644 	mov	r6,a
      00214E A3               [24]  645 	inc	dptr
      00214F E0               [24]  646 	movx	a,@dptr
      002150 FF               [12]  647 	mov	r7,a
      002151 C3               [12]  648 	clr	c
      002152 EE               [12]  649 	mov	a,r6
      002153 94 20            [12]  650 	subb	a,#0x20
      002155 EF               [12]  651 	mov	a,r7
      002156 64 80            [12]  652 	xrl	a,#0x80
      002158 94 80            [12]  653 	subb	a,#0x80
      00215A 50 03            [24]  654 	jnc	00133$
      00215C 02 20 DE         [24]  655 	ljmp	00106$
      00215F                        656 00133$:
                                    657 ;	life.c:48: printf("\r\n");
      00215F 74 E3            [12]  658 	mov	a,#___str_3
      002161 C0 E0            [24]  659 	push	acc
      002163 74 39            [12]  660 	mov	a,#(___str_3 >> 8)
      002165 C0 E0            [24]  661 	push	acc
      002167 74 80            [12]  662 	mov	a,#0x80
      002169 C0 E0            [24]  663 	push	acc
      00216B 12 25 F6         [24]  664 	lcall	_printf
      00216E 15 81            [12]  665 	dec	sp
      002170 15 81            [12]  666 	dec	sp
      002172 15 81            [12]  667 	dec	sp
                                    668 ;	life.c:44: for (y = 0; y < H; y++) {
      002174 90 88 02         [24]  669 	mov	dptr,#_y
      002177 E0               [24]  670 	movx	a,@dptr
      002178 24 01            [12]  671 	add	a,#0x01
      00217A F0               [24]  672 	movx	@dptr,a
      00217B A3               [24]  673 	inc	dptr
      00217C E0               [24]  674 	movx	a,@dptr
      00217D 34 00            [12]  675 	addc	a,#0x00
      00217F F0               [24]  676 	movx	@dptr,a
      002180 90 88 02         [24]  677 	mov	dptr,#_y
      002183 E0               [24]  678 	movx	a,@dptr
      002184 FE               [12]  679 	mov	r6,a
      002185 A3               [24]  680 	inc	dptr
      002186 E0               [24]  681 	movx	a,@dptr
      002187 FF               [12]  682 	mov	r7,a
      002188 C3               [12]  683 	clr	c
      002189 EE               [12]  684 	mov	a,r6
      00218A 94 20            [12]  685 	subb	a,#0x20
      00218C EF               [12]  686 	mov	a,r7
      00218D 64 80            [12]  687 	xrl	a,#0x80
      00218F 94 80            [12]  688 	subb	a,#0x80
      002191 50 03            [24]  689 	jnc	00134$
      002193 02 20 D7         [24]  690 	ljmp	00108$
      002196                        691 00134$:
                                    692 ;	life.c:51: return;
                                    693 ;	life.c:52: }
      002196 22               [24]  694 	ret
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'evolve'
                                    697 ;------------------------------------------------------------
                                    698 ;	life.c:54: void evolve(void) {
                                    699 ;	-----------------------------------------
                                    700 ;	 function evolve
                                    701 ;	-----------------------------------------
      002197                        702 _evolve:
                                    703 ;	life.c:55: fixed = 1;
      002197 90 88 0C         [24]  704 	mov	dptr,#_fixed
      00219A 74 01            [12]  705 	mov	a,#0x01
      00219C F0               [24]  706 	movx	@dptr,a
      00219D E4               [12]  707 	clr	a
      00219E A3               [24]  708 	inc	dptr
      00219F F0               [24]  709 	movx	@dptr,a
                                    710 ;	life.c:57: for (y = 0; y < H; y++) {
      0021A0 90 88 02         [24]  711 	mov	dptr,#_y
      0021A3 F0               [24]  712 	movx	@dptr,a
      0021A4 A3               [24]  713 	inc	dptr
      0021A5 F0               [24]  714 	movx	@dptr,a
      0021A6                        715 00121$:
                                    716 ;	life.c:58: for (x = 0; x < W; x++) {
      0021A6 90 88 00         [24]  717 	mov	dptr,#_x
      0021A9 E4               [12]  718 	clr	a
      0021AA F0               [24]  719 	movx	@dptr,a
      0021AB A3               [24]  720 	inc	dptr
      0021AC F0               [24]  721 	movx	@dptr,a
      0021AD                        722 00119$:
                                    723 ;	life.c:59: n = 0;
      0021AD 90 88 08         [24]  724 	mov	dptr,#_n
      0021B0 E4               [12]  725 	clr	a
      0021B1 F0               [24]  726 	movx	@dptr,a
      0021B2 A3               [24]  727 	inc	dptr
      0021B3 F0               [24]  728 	movx	@dptr,a
                                    729 ;	life.c:60: for (y1 = y - 1; y1 <= y + 1; y1++)
      0021B4 90 88 02         [24]  730 	mov	dptr,#_y
      0021B7 E0               [24]  731 	movx	a,@dptr
      0021B8 FE               [12]  732 	mov	r6,a
      0021B9 A3               [24]  733 	inc	dptr
      0021BA E0               [24]  734 	movx	a,@dptr
      0021BB FF               [12]  735 	mov	r7,a
      0021BC 1E               [12]  736 	dec	r6
      0021BD BE FF 01         [24]  737 	cjne	r6,#0xff,00203$
      0021C0 1F               [12]  738 	dec	r7
      0021C1                        739 00203$:
      0021C1 90 88 06         [24]  740 	mov	dptr,#_y1
      0021C4 EE               [12]  741 	mov	a,r6
      0021C5 F0               [24]  742 	movx	@dptr,a
      0021C6 EF               [12]  743 	mov	a,r7
      0021C7 A3               [24]  744 	inc	dptr
      0021C8 F0               [24]  745 	movx	@dptr,a
      0021C9                        746 00117$:
      0021C9 90 88 02         [24]  747 	mov	dptr,#_y
      0021CC E0               [24]  748 	movx	a,@dptr
      0021CD FE               [12]  749 	mov	r6,a
      0021CE A3               [24]  750 	inc	dptr
      0021CF E0               [24]  751 	movx	a,@dptr
      0021D0 FF               [12]  752 	mov	r7,a
      0021D1 74 01            [12]  753 	mov	a,#0x01
      0021D3 2E               [12]  754 	add	a,r6
      0021D4 FC               [12]  755 	mov	r4,a
      0021D5 E4               [12]  756 	clr	a
      0021D6 3F               [12]  757 	addc	a,r7
      0021D7 FD               [12]  758 	mov	r5,a
      0021D8 90 88 06         [24]  759 	mov	dptr,#_y1
      0021DB E0               [24]  760 	movx	a,@dptr
      0021DC FA               [12]  761 	mov	r2,a
      0021DD A3               [24]  762 	inc	dptr
      0021DE E0               [24]  763 	movx	a,@dptr
      0021DF FB               [12]  764 	mov	r3,a
      0021E0 C3               [12]  765 	clr	c
      0021E1 EC               [12]  766 	mov	a,r4
      0021E2 9A               [12]  767 	subb	a,r2
      0021E3 ED               [12]  768 	mov	a,r5
      0021E4 64 80            [12]  769 	xrl	a,#0x80
      0021E6 8B F0            [24]  770 	mov	b,r3
      0021E8 63 F0 80         [24]  771 	xrl	b,#0x80
      0021EB 95 F0            [12]  772 	subb	a,b
      0021ED 50 03            [24]  773 	jnc	00204$
      0021EF 02 22 CF         [24]  774 	ljmp	00104$
      0021F2                        775 00204$:
                                    776 ;	life.c:61: for (x1 = x - 1; x1 <= x + 1; x1++)
      0021F2 90 88 00         [24]  777 	mov	dptr,#_x
      0021F5 E0               [24]  778 	movx	a,@dptr
      0021F6 FC               [12]  779 	mov	r4,a
      0021F7 A3               [24]  780 	inc	dptr
      0021F8 E0               [24]  781 	movx	a,@dptr
      0021F9 FD               [12]  782 	mov	r5,a
      0021FA 1C               [12]  783 	dec	r4
      0021FB BC FF 01         [24]  784 	cjne	r4,#0xff,00205$
      0021FE 1D               [12]  785 	dec	r5
      0021FF                        786 00205$:
      0021FF 90 88 04         [24]  787 	mov	dptr,#_x1
      002202 EC               [12]  788 	mov	a,r4
      002203 F0               [24]  789 	movx	@dptr,a
      002204 ED               [12]  790 	mov	a,r5
      002205 A3               [24]  791 	inc	dptr
      002206 F0               [24]  792 	movx	@dptr,a
      002207                        793 00114$:
      002207 90 88 00         [24]  794 	mov	dptr,#_x
      00220A E0               [24]  795 	movx	a,@dptr
      00220B FC               [12]  796 	mov	r4,a
      00220C A3               [24]  797 	inc	dptr
      00220D E0               [24]  798 	movx	a,@dptr
      00220E FD               [12]  799 	mov	r5,a
      00220F 0C               [12]  800 	inc	r4
      002210 BC 00 01         [24]  801 	cjne	r4,#0x00,00206$
      002213 0D               [12]  802 	inc	r5
      002214                        803 00206$:
      002214 90 88 04         [24]  804 	mov	dptr,#_x1
      002217 E0               [24]  805 	movx	a,@dptr
      002218 FA               [12]  806 	mov	r2,a
      002219 A3               [24]  807 	inc	dptr
      00221A E0               [24]  808 	movx	a,@dptr
      00221B FB               [12]  809 	mov	r3,a
      00221C C3               [12]  810 	clr	c
      00221D EC               [12]  811 	mov	a,r4
      00221E 9A               [12]  812 	subb	a,r2
      00221F ED               [12]  813 	mov	a,r5
      002220 64 80            [12]  814 	xrl	a,#0x80
      002222 8B F0            [24]  815 	mov	b,r3
      002224 63 F0 80         [24]  816 	xrl	b,#0x80
      002227 95 F0            [12]  817 	subb	a,b
      002229 50 03            [24]  818 	jnc	00207$
      00222B 02 22 C0         [24]  819 	ljmp	00118$
      00222E                        820 00207$:
                                    821 ;	life.c:62: if (u[(y1 + H) % H][(x1 + W) % W])
      00222E 90 88 06         [24]  822 	mov	dptr,#_y1
      002231 E0               [24]  823 	movx	a,@dptr
      002232 FC               [12]  824 	mov	r4,a
      002233 A3               [24]  825 	inc	dptr
      002234 E0               [24]  826 	movx	a,@dptr
      002235 FD               [12]  827 	mov	r5,a
      002236 74 20            [12]  828 	mov	a,#0x20
      002238 2C               [12]  829 	add	a,r4
      002239 FC               [12]  830 	mov	r4,a
      00223A E4               [12]  831 	clr	a
      00223B 3D               [12]  832 	addc	a,r5
      00223C FD               [12]  833 	mov	r5,a
      00223D C0 03            [24]  834 	push	ar3
      00223F C0 02            [24]  835 	push	ar2
      002241 74 20            [12]  836 	mov	a,#0x20
      002243 C0 E0            [24]  837 	push	acc
      002245 E4               [12]  838 	clr	a
      002246 C0 E0            [24]  839 	push	acc
      002248 8C 82            [24]  840 	mov	dpl,r4
      00224A 8D 83            [24]  841 	mov	dph,r5
      00224C 12 26 2F         [24]  842 	lcall	__modsint
      00224F AC 82            [24]  843 	mov	r4,dpl
      002251 AD 83            [24]  844 	mov	r5,dph
      002253 15 81            [12]  845 	dec	sp
      002255 15 81            [12]  846 	dec	sp
      002257 D0 02            [24]  847 	pop	ar2
      002259 D0 03            [24]  848 	pop	ar3
      00225B ED               [12]  849 	mov	a,r5
      00225C C4               [12]  850 	swap	a
      00225D 23               [12]  851 	rl	a
      00225E 54 E0            [12]  852 	anl	a,#0xe0
      002260 CC               [12]  853 	xch	a,r4
      002261 C4               [12]  854 	swap	a
      002262 23               [12]  855 	rl	a
      002263 CC               [12]  856 	xch	a,r4
      002264 6C               [12]  857 	xrl	a,r4
      002265 CC               [12]  858 	xch	a,r4
      002266 54 E0            [12]  859 	anl	a,#0xe0
      002268 CC               [12]  860 	xch	a,r4
      002269 6C               [12]  861 	xrl	a,r4
      00226A FD               [12]  862 	mov	r5,a
      00226B EC               [12]  863 	mov	a,r4
      00226C 24 00            [12]  864 	add	a,#_u
      00226E FC               [12]  865 	mov	r4,a
      00226F ED               [12]  866 	mov	a,r5
      002270 34 80            [12]  867 	addc	a,#(_u >> 8)
      002272 FD               [12]  868 	mov	r5,a
      002273 74 20            [12]  869 	mov	a,#0x20
      002275 2A               [12]  870 	add	a,r2
      002276 FA               [12]  871 	mov	r2,a
      002277 E4               [12]  872 	clr	a
      002278 3B               [12]  873 	addc	a,r3
      002279 FB               [12]  874 	mov	r3,a
      00227A C0 05            [24]  875 	push	ar5
      00227C C0 04            [24]  876 	push	ar4
      00227E 74 20            [12]  877 	mov	a,#0x20
      002280 C0 E0            [24]  878 	push	acc
      002282 E4               [12]  879 	clr	a
      002283 C0 E0            [24]  880 	push	acc
      002285 8A 82            [24]  881 	mov	dpl,r2
      002287 8B 83            [24]  882 	mov	dph,r3
      002289 12 26 2F         [24]  883 	lcall	__modsint
      00228C AA 82            [24]  884 	mov	r2,dpl
      00228E AB 83            [24]  885 	mov	r3,dph
      002290 15 81            [12]  886 	dec	sp
      002292 15 81            [12]  887 	dec	sp
      002294 D0 04            [24]  888 	pop	ar4
      002296 D0 05            [24]  889 	pop	ar5
      002298 EA               [12]  890 	mov	a,r2
      002299 2C               [12]  891 	add	a,r4
      00229A FC               [12]  892 	mov	r4,a
      00229B EB               [12]  893 	mov	a,r3
      00229C 3D               [12]  894 	addc	a,r5
      00229D FD               [12]  895 	mov	r5,a
      00229E 8C 82            [24]  896 	mov	dpl,r4
      0022A0 8D 83            [24]  897 	mov	dph,r5
      0022A2 E0               [24]  898 	movx	a,@dptr
      0022A3 60 0C            [24]  899 	jz	00115$
                                    900 ;	life.c:63: n++;
      0022A5 90 88 08         [24]  901 	mov	dptr,#_n
      0022A8 E0               [24]  902 	movx	a,@dptr
      0022A9 24 01            [12]  903 	add	a,#0x01
      0022AB F0               [24]  904 	movx	@dptr,a
      0022AC A3               [24]  905 	inc	dptr
      0022AD E0               [24]  906 	movx	a,@dptr
      0022AE 34 00            [12]  907 	addc	a,#0x00
      0022B0 F0               [24]  908 	movx	@dptr,a
      0022B1                        909 00115$:
                                    910 ;	life.c:61: for (x1 = x - 1; x1 <= x + 1; x1++)
      0022B1 90 88 04         [24]  911 	mov	dptr,#_x1
      0022B4 E0               [24]  912 	movx	a,@dptr
      0022B5 24 01            [12]  913 	add	a,#0x01
      0022B7 F0               [24]  914 	movx	@dptr,a
      0022B8 A3               [24]  915 	inc	dptr
      0022B9 E0               [24]  916 	movx	a,@dptr
      0022BA 34 00            [12]  917 	addc	a,#0x00
      0022BC F0               [24]  918 	movx	@dptr,a
      0022BD 02 22 07         [24]  919 	ljmp	00114$
      0022C0                        920 00118$:
                                    921 ;	life.c:60: for (y1 = y - 1; y1 <= y + 1; y1++)
      0022C0 90 88 06         [24]  922 	mov	dptr,#_y1
      0022C3 E0               [24]  923 	movx	a,@dptr
      0022C4 24 01            [12]  924 	add	a,#0x01
      0022C6 F0               [24]  925 	movx	@dptr,a
      0022C7 A3               [24]  926 	inc	dptr
      0022C8 E0               [24]  927 	movx	a,@dptr
      0022C9 34 00            [12]  928 	addc	a,#0x00
      0022CB F0               [24]  929 	movx	@dptr,a
      0022CC 02 21 C9         [24]  930 	ljmp	00117$
      0022CF                        931 00104$:
                                    932 ;	life.c:65: if (u[y][x]) n--;
      0022CF EF               [12]  933 	mov	a,r7
      0022D0 C4               [12]  934 	swap	a
      0022D1 23               [12]  935 	rl	a
      0022D2 54 E0            [12]  936 	anl	a,#0xe0
      0022D4 CE               [12]  937 	xch	a,r6
      0022D5 C4               [12]  938 	swap	a
      0022D6 23               [12]  939 	rl	a
      0022D7 CE               [12]  940 	xch	a,r6
      0022D8 6E               [12]  941 	xrl	a,r6
      0022D9 CE               [12]  942 	xch	a,r6
      0022DA 54 E0            [12]  943 	anl	a,#0xe0
      0022DC CE               [12]  944 	xch	a,r6
      0022DD 6E               [12]  945 	xrl	a,r6
      0022DE FF               [12]  946 	mov	r7,a
      0022DF EE               [12]  947 	mov	a,r6
      0022E0 24 00            [12]  948 	add	a,#_u
      0022E2 FE               [12]  949 	mov	r6,a
      0022E3 EF               [12]  950 	mov	a,r7
      0022E4 34 80            [12]  951 	addc	a,#(_u >> 8)
      0022E6 FF               [12]  952 	mov	r7,a
      0022E7 90 88 00         [24]  953 	mov	dptr,#_x
      0022EA E0               [24]  954 	movx	a,@dptr
      0022EB FC               [12]  955 	mov	r4,a
      0022EC A3               [24]  956 	inc	dptr
      0022ED E0               [24]  957 	movx	a,@dptr
      0022EE FD               [12]  958 	mov	r5,a
      0022EF EC               [12]  959 	mov	a,r4
      0022F0 2E               [12]  960 	add	a,r6
      0022F1 FE               [12]  961 	mov	r6,a
      0022F2 ED               [12]  962 	mov	a,r5
      0022F3 3F               [12]  963 	addc	a,r7
      0022F4 FF               [12]  964 	mov	r7,a
      0022F5 8E 82            [24]  965 	mov	dpl,r6
      0022F7 8F 83            [24]  966 	mov	dph,r7
      0022F9 E0               [24]  967 	movx	a,@dptr
      0022FA 60 14            [24]  968 	jz	00106$
      0022FC 90 88 08         [24]  969 	mov	dptr,#_n
      0022FF E0               [24]  970 	movx	a,@dptr
      002300 24 FF            [12]  971 	add	a,#0xff
      002302 FE               [12]  972 	mov	r6,a
      002303 A3               [24]  973 	inc	dptr
      002304 E0               [24]  974 	movx	a,@dptr
      002305 34 FF            [12]  975 	addc	a,#0xff
      002307 FF               [12]  976 	mov	r7,a
      002308 90 88 08         [24]  977 	mov	dptr,#_n
      00230B EE               [12]  978 	mov	a,r6
      00230C F0               [24]  979 	movx	@dptr,a
      00230D EF               [12]  980 	mov	a,r7
      00230E A3               [24]  981 	inc	dptr
      00230F F0               [24]  982 	movx	@dptr,a
      002310                        983 00106$:
                                    984 ;	life.c:66: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      002310 90 88 02         [24]  985 	mov	dptr,#_y
      002313 E0               [24]  986 	movx	a,@dptr
      002314 FE               [12]  987 	mov	r6,a
      002315 A3               [24]  988 	inc	dptr
      002316 E0               [24]  989 	movx	a,@dptr
      002317 C4               [12]  990 	swap	a
      002318 23               [12]  991 	rl	a
      002319 54 E0            [12]  992 	anl	a,#0xe0
      00231B CE               [12]  993 	xch	a,r6
      00231C C4               [12]  994 	swap	a
      00231D 23               [12]  995 	rl	a
      00231E CE               [12]  996 	xch	a,r6
      00231F 6E               [12]  997 	xrl	a,r6
      002320 CE               [12]  998 	xch	a,r6
      002321 54 E0            [12]  999 	anl	a,#0xe0
      002323 CE               [12] 1000 	xch	a,r6
      002324 6E               [12] 1001 	xrl	a,r6
      002325 FF               [12] 1002 	mov	r7,a
      002326 EE               [12] 1003 	mov	a,r6
      002327 24 00            [12] 1004 	add	a,#_nu
      002329 FC               [12] 1005 	mov	r4,a
      00232A EF               [12] 1006 	mov	a,r7
      00232B 34 84            [12] 1007 	addc	a,#(_nu >> 8)
      00232D FD               [12] 1008 	mov	r5,a
      00232E 90 88 00         [24] 1009 	mov	dptr,#_x
      002331 E0               [24] 1010 	movx	a,@dptr
      002332 FA               [12] 1011 	mov	r2,a
      002333 A3               [24] 1012 	inc	dptr
      002334 E0               [24] 1013 	movx	a,@dptr
      002335 FB               [12] 1014 	mov	r3,a
      002336 EA               [12] 1015 	mov	a,r2
      002337 2C               [12] 1016 	add	a,r4
      002338 FC               [12] 1017 	mov	r4,a
      002339 EB               [12] 1018 	mov	a,r3
      00233A 3D               [12] 1019 	addc	a,r5
      00233B FD               [12] 1020 	mov	r5,a
      00233C 90 88 08         [24] 1021 	mov	dptr,#_n
      00233F E0               [24] 1022 	movx	a,@dptr
      002340 F8               [12] 1023 	mov	r0,a
      002341 A3               [24] 1024 	inc	dptr
      002342 E0               [24] 1025 	movx	a,@dptr
      002343 F9               [12] 1026 	mov	r1,a
      002344 B8 03 05         [24] 1027 	cjne	r0,#0x03,00210$
      002347 B9 00 02         [24] 1028 	cjne	r1,#0x00,00210$
      00234A 80 1F            [24] 1029 	sjmp	00130$
      00234C                       1030 00210$:
      00234C B8 02 18         [24] 1031 	cjne	r0,#0x02,00129$
      00234F B9 00 15         [24] 1032 	cjne	r1,#0x00,00129$
      002352 EE               [12] 1033 	mov	a,r6
      002353 24 00            [12] 1034 	add	a,#_u
      002355 FE               [12] 1035 	mov	r6,a
      002356 EF               [12] 1036 	mov	a,r7
      002357 34 80            [12] 1037 	addc	a,#(_u >> 8)
      002359 FF               [12] 1038 	mov	r7,a
      00235A EA               [12] 1039 	mov	a,r2
      00235B 2E               [12] 1040 	add	a,r6
      00235C FA               [12] 1041 	mov	r2,a
      00235D EB               [12] 1042 	mov	a,r3
      00235E 3F               [12] 1043 	addc	a,r7
      00235F FB               [12] 1044 	mov	r3,a
      002360 8A 82            [24] 1045 	mov	dpl,r2
      002362 8B 83            [24] 1046 	mov	dph,r3
      002364 E0               [24] 1047 	movx	a,@dptr
      002365 70 04            [24] 1048 	jnz	00130$
      002367                       1049 00129$:
                                   1050 ;	assignBit
      002367 C2 00            [12] 1051 	clr	b0
      002369 80 02            [24] 1052 	sjmp	00131$
      00236B                       1053 00130$:
                                   1054 ;	assignBit
      00236B D2 00            [12] 1055 	setb	b0
      00236D                       1056 00131$:
      00236D A2 00            [12] 1057 	mov	c,b0
      00236F E4               [12] 1058 	clr	a
      002370 33               [12] 1059 	rlc	a
      002371 8C 82            [24] 1060 	mov	dpl,r4
      002373 8D 83            [24] 1061 	mov	dph,r5
      002375 F0               [24] 1062 	movx	@dptr,a
                                   1063 ;	life.c:58: for (x = 0; x < W; x++) {
      002376 90 88 00         [24] 1064 	mov	dptr,#_x
      002379 E0               [24] 1065 	movx	a,@dptr
      00237A 24 01            [12] 1066 	add	a,#0x01
      00237C F0               [24] 1067 	movx	@dptr,a
      00237D A3               [24] 1068 	inc	dptr
      00237E E0               [24] 1069 	movx	a,@dptr
      00237F 34 00            [12] 1070 	addc	a,#0x00
      002381 F0               [24] 1071 	movx	@dptr,a
      002382 90 88 00         [24] 1072 	mov	dptr,#_x
      002385 E0               [24] 1073 	movx	a,@dptr
      002386 FE               [12] 1074 	mov	r6,a
      002387 A3               [24] 1075 	inc	dptr
      002388 E0               [24] 1076 	movx	a,@dptr
      002389 FF               [12] 1077 	mov	r7,a
      00238A C3               [12] 1078 	clr	c
      00238B EE               [12] 1079 	mov	a,r6
      00238C 94 20            [12] 1080 	subb	a,#0x20
      00238E EF               [12] 1081 	mov	a,r7
      00238F 64 80            [12] 1082 	xrl	a,#0x80
      002391 94 80            [12] 1083 	subb	a,#0x80
      002393 50 03            [24] 1084 	jnc	00214$
      002395 02 21 AD         [24] 1085 	ljmp	00119$
      002398                       1086 00214$:
                                   1087 ;	life.c:57: for (y = 0; y < H; y++) {
      002398 90 88 02         [24] 1088 	mov	dptr,#_y
      00239B E0               [24] 1089 	movx	a,@dptr
      00239C 24 01            [12] 1090 	add	a,#0x01
      00239E F0               [24] 1091 	movx	@dptr,a
      00239F A3               [24] 1092 	inc	dptr
      0023A0 E0               [24] 1093 	movx	a,@dptr
      0023A1 34 00            [12] 1094 	addc	a,#0x00
      0023A3 F0               [24] 1095 	movx	@dptr,a
      0023A4 90 88 02         [24] 1096 	mov	dptr,#_y
      0023A7 E0               [24] 1097 	movx	a,@dptr
      0023A8 FE               [12] 1098 	mov	r6,a
      0023A9 A3               [24] 1099 	inc	dptr
      0023AA E0               [24] 1100 	movx	a,@dptr
      0023AB FF               [12] 1101 	mov	r7,a
      0023AC C3               [12] 1102 	clr	c
      0023AD EE               [12] 1103 	mov	a,r6
      0023AE 94 20            [12] 1104 	subb	a,#0x20
      0023B0 EF               [12] 1105 	mov	a,r7
      0023B1 64 80            [12] 1106 	xrl	a,#0x80
      0023B3 94 80            [12] 1107 	subb	a,#0x80
      0023B5 50 03            [24] 1108 	jnc	00215$
      0023B7 02 21 A6         [24] 1109 	ljmp	00121$
      0023BA                       1110 00215$:
                                   1111 ;	life.c:70: for (y = 0; y < H; y++)
      0023BA 90 88 02         [24] 1112 	mov	dptr,#_y
      0023BD E4               [12] 1113 	clr	a
      0023BE F0               [24] 1114 	movx	@dptr,a
      0023BF A3               [24] 1115 	inc	dptr
      0023C0 F0               [24] 1116 	movx	@dptr,a
      0023C1                       1117 00125$:
                                   1118 ;	life.c:71: for (x = 0; x < W; x++)
      0023C1 90 88 00         [24] 1119 	mov	dptr,#_x
      0023C4 E4               [12] 1120 	clr	a
      0023C5 F0               [24] 1121 	movx	@dptr,a
      0023C6 A3               [24] 1122 	inc	dptr
      0023C7 F0               [24] 1123 	movx	@dptr,a
      0023C8                       1124 00123$:
                                   1125 ;	life.c:72: if (u[y][x] != nu[y][x]) {
      0023C8 90 88 02         [24] 1126 	mov	dptr,#_y
      0023CB E0               [24] 1127 	movx	a,@dptr
      0023CC FE               [12] 1128 	mov	r6,a
      0023CD A3               [24] 1129 	inc	dptr
      0023CE E0               [24] 1130 	movx	a,@dptr
      0023CF C4               [12] 1131 	swap	a
      0023D0 23               [12] 1132 	rl	a
      0023D1 54 E0            [12] 1133 	anl	a,#0xe0
      0023D3 CE               [12] 1134 	xch	a,r6
      0023D4 C4               [12] 1135 	swap	a
      0023D5 23               [12] 1136 	rl	a
      0023D6 CE               [12] 1137 	xch	a,r6
      0023D7 6E               [12] 1138 	xrl	a,r6
      0023D8 CE               [12] 1139 	xch	a,r6
      0023D9 54 E0            [12] 1140 	anl	a,#0xe0
      0023DB CE               [12] 1141 	xch	a,r6
      0023DC 6E               [12] 1142 	xrl	a,r6
      0023DD FF               [12] 1143 	mov	r7,a
      0023DE EE               [12] 1144 	mov	a,r6
      0023DF 24 00            [12] 1145 	add	a,#_u
      0023E1 FC               [12] 1146 	mov	r4,a
      0023E2 EF               [12] 1147 	mov	a,r7
      0023E3 34 80            [12] 1148 	addc	a,#(_u >> 8)
      0023E5 FD               [12] 1149 	mov	r5,a
      0023E6 90 88 00         [24] 1150 	mov	dptr,#_x
      0023E9 E0               [24] 1151 	movx	a,@dptr
      0023EA FA               [12] 1152 	mov	r2,a
      0023EB A3               [24] 1153 	inc	dptr
      0023EC E0               [24] 1154 	movx	a,@dptr
      0023ED FB               [12] 1155 	mov	r3,a
      0023EE EA               [12] 1156 	mov	a,r2
      0023EF 2C               [12] 1157 	add	a,r4
      0023F0 F5 82            [12] 1158 	mov	dpl,a
      0023F2 EB               [12] 1159 	mov	a,r3
      0023F3 3D               [12] 1160 	addc	a,r5
      0023F4 F5 83            [12] 1161 	mov	dph,a
      0023F6 EE               [12] 1162 	mov	a,r6
      0023F7 24 00            [12] 1163 	add	a,#_nu
      0023F9 FC               [12] 1164 	mov	r4,a
      0023FA EF               [12] 1165 	mov	a,r7
      0023FB 34 84            [12] 1166 	addc	a,#(_nu >> 8)
      0023FD FD               [12] 1167 	mov	r5,a
      0023FE EA               [12] 1168 	mov	a,r2
      0023FF 2C               [12] 1169 	add	a,r4
      002400 FC               [12] 1170 	mov	r4,a
      002401 EB               [12] 1171 	mov	a,r3
      002402 3D               [12] 1172 	addc	a,r5
      002403 FD               [12] 1173 	mov	r5,a
      002404 E0               [24] 1174 	movx	a,@dptr
      002405 F9               [12] 1175 	mov	r1,a
      002406 8C 82            [24] 1176 	mov	dpl,r4
      002408 8D 83            [24] 1177 	mov	dph,r5
      00240A E0               [24] 1178 	movx	a,@dptr
      00240B FC               [12] 1179 	mov	r4,a
      00240C E9               [12] 1180 	mov	a,r1
      00240D B5 04 02         [24] 1181 	cjne	a,ar4,00216$
      002410 80 2C            [24] 1182 	sjmp	00124$
      002412                       1183 00216$:
                                   1184 ;	life.c:73: u[y][x] = nu[y][x];
      002412 EE               [12] 1185 	mov	a,r6
      002413 24 00            [12] 1186 	add	a,#_u
      002415 FC               [12] 1187 	mov	r4,a
      002416 EF               [12] 1188 	mov	a,r7
      002417 34 80            [12] 1189 	addc	a,#(_u >> 8)
      002419 FD               [12] 1190 	mov	r5,a
      00241A EA               [12] 1191 	mov	a,r2
      00241B 2C               [12] 1192 	add	a,r4
      00241C FC               [12] 1193 	mov	r4,a
      00241D EB               [12] 1194 	mov	a,r3
      00241E 3D               [12] 1195 	addc	a,r5
      00241F FD               [12] 1196 	mov	r5,a
      002420 EE               [12] 1197 	mov	a,r6
      002421 24 00            [12] 1198 	add	a,#_nu
      002423 FE               [12] 1199 	mov	r6,a
      002424 EF               [12] 1200 	mov	a,r7
      002425 34 84            [12] 1201 	addc	a,#(_nu >> 8)
      002427 FF               [12] 1202 	mov	r7,a
      002428 EA               [12] 1203 	mov	a,r2
      002429 2E               [12] 1204 	add	a,r6
      00242A F5 82            [12] 1205 	mov	dpl,a
      00242C EB               [12] 1206 	mov	a,r3
      00242D 3F               [12] 1207 	addc	a,r7
      00242E F5 83            [12] 1208 	mov	dph,a
      002430 E0               [24] 1209 	movx	a,@dptr
      002431 FF               [12] 1210 	mov	r7,a
      002432 8C 82            [24] 1211 	mov	dpl,r4
      002434 8D 83            [24] 1212 	mov	dph,r5
      002436 F0               [24] 1213 	movx	@dptr,a
                                   1214 ;	life.c:74: fixed = 0;
      002437 90 88 0C         [24] 1215 	mov	dptr,#_fixed
      00243A E4               [12] 1216 	clr	a
      00243B F0               [24] 1217 	movx	@dptr,a
      00243C A3               [24] 1218 	inc	dptr
      00243D F0               [24] 1219 	movx	@dptr,a
      00243E                       1220 00124$:
                                   1221 ;	life.c:71: for (x = 0; x < W; x++)
      00243E 90 88 00         [24] 1222 	mov	dptr,#_x
      002441 E0               [24] 1223 	movx	a,@dptr
      002442 24 01            [12] 1224 	add	a,#0x01
      002444 F0               [24] 1225 	movx	@dptr,a
      002445 A3               [24] 1226 	inc	dptr
      002446 E0               [24] 1227 	movx	a,@dptr
      002447 34 00            [12] 1228 	addc	a,#0x00
      002449 F0               [24] 1229 	movx	@dptr,a
      00244A 90 88 00         [24] 1230 	mov	dptr,#_x
      00244D E0               [24] 1231 	movx	a,@dptr
      00244E FE               [12] 1232 	mov	r6,a
      00244F A3               [24] 1233 	inc	dptr
      002450 E0               [24] 1234 	movx	a,@dptr
      002451 FF               [12] 1235 	mov	r7,a
      002452 C3               [12] 1236 	clr	c
      002453 EE               [12] 1237 	mov	a,r6
      002454 94 20            [12] 1238 	subb	a,#0x20
      002456 EF               [12] 1239 	mov	a,r7
      002457 64 80            [12] 1240 	xrl	a,#0x80
      002459 94 80            [12] 1241 	subb	a,#0x80
      00245B 50 03            [24] 1242 	jnc	00217$
      00245D 02 23 C8         [24] 1243 	ljmp	00123$
      002460                       1244 00217$:
                                   1245 ;	life.c:70: for (y = 0; y < H; y++)
      002460 90 88 02         [24] 1246 	mov	dptr,#_y
      002463 E0               [24] 1247 	movx	a,@dptr
      002464 24 01            [12] 1248 	add	a,#0x01
      002466 F0               [24] 1249 	movx	@dptr,a
      002467 A3               [24] 1250 	inc	dptr
      002468 E0               [24] 1251 	movx	a,@dptr
      002469 34 00            [12] 1252 	addc	a,#0x00
      00246B F0               [24] 1253 	movx	@dptr,a
      00246C 90 88 02         [24] 1254 	mov	dptr,#_y
      00246F E0               [24] 1255 	movx	a,@dptr
      002470 FE               [12] 1256 	mov	r6,a
      002471 A3               [24] 1257 	inc	dptr
      002472 E0               [24] 1258 	movx	a,@dptr
      002473 FF               [12] 1259 	mov	r7,a
      002474 C3               [12] 1260 	clr	c
      002475 EE               [12] 1261 	mov	a,r6
      002476 94 20            [12] 1262 	subb	a,#0x20
      002478 EF               [12] 1263 	mov	a,r7
      002479 64 80            [12] 1264 	xrl	a,#0x80
      00247B 94 80            [12] 1265 	subb	a,#0x80
      00247D 50 03            [24] 1266 	jnc	00218$
      00247F 02 23 C1         [24] 1267 	ljmp	00125$
      002482                       1268 00218$:
                                   1269 ;	life.c:77: return;
                                   1270 ;	life.c:78: }
      002482 22               [24] 1271 	ret
                                   1272 ;------------------------------------------------------------
                                   1273 ;Allocation info for local variables in function 'main'
                                   1274 ;------------------------------------------------------------
                                   1275 ;	life.c:80: void main(void) {
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function main
                                   1278 ;	-----------------------------------------
      002483                       1279 _main:
                                   1280 ;	life.c:81: i0 = i1 = 0;
      002483 90 88 10         [24] 1281 	mov	dptr,#_i1
      002486 E4               [12] 1282 	clr	a
      002487 F0               [24] 1283 	movx	@dptr,a
      002488 A3               [24] 1284 	inc	dptr
      002489 F0               [24] 1285 	movx	@dptr,a
      00248A 90 88 0E         [24] 1286 	mov	dptr,#_i0
      00248D F0               [24] 1287 	movx	@dptr,a
      00248E A3               [24] 1288 	inc	dptr
      00248F F0               [24] 1289 	movx	@dptr,a
                                   1290 ;	life.c:83: IT0 = 1;
                                   1291 ;	assignBit
      002490 D2 88            [12] 1292 	setb	_IT0
                                   1293 ;	life.c:84: EX0 = 1;
                                   1294 ;	assignBit
      002492 D2 A8            [12] 1295 	setb	_EX0
                                   1296 ;	life.c:86: IT1 = 1;
                                   1297 ;	assignBit
      002494 D2 8A            [12] 1298 	setb	_IT1
                                   1299 ;	life.c:87: EX1 = 1;
                                   1300 ;	assignBit
      002496 D2 AA            [12] 1301 	setb	_EX1
                                   1302 ;	life.c:89: EA = 1;
                                   1303 ;	assignBit
      002498 D2 AF            [12] 1304 	setb	_EA
                                   1305 ;	life.c:91: while (!i0) {
      00249A                       1306 00108$:
      00249A 90 88 0E         [24] 1307 	mov	dptr,#_i0
      00249D E0               [24] 1308 	movx	a,@dptr
      00249E F5 F0            [12] 1309 	mov	b,a
      0024A0 A3               [24] 1310 	inc	dptr
      0024A1 E0               [24] 1311 	movx	a,@dptr
      0024A2 45 F0            [12] 1312 	orl	a,b
      0024A4 60 03            [24] 1313 	jz	00153$
      0024A6 02 25 AA         [24] 1314 	ljmp	00110$
      0024A9                       1315 00153$:
                                   1316 ;	life.c:92: printf("\033[2J\033[mINIT\n\r");
      0024A9 74 E6            [12] 1317 	mov	a,#___str_4
      0024AB C0 E0            [24] 1318 	push	acc
      0024AD 74 39            [12] 1319 	mov	a,#(___str_4 >> 8)
      0024AF C0 E0            [24] 1320 	push	acc
      0024B1 74 80            [12] 1321 	mov	a,#0x80
      0024B3 C0 E0            [24] 1322 	push	acc
      0024B5 12 25 F6         [24] 1323 	lcall	_printf
      0024B8 15 81            [12] 1324 	dec	sp
      0024BA 15 81            [12] 1325 	dec	sp
      0024BC 15 81            [12] 1326 	dec	sp
                                   1327 ;	life.c:93: for (y = 0; y < H; y++)
      0024BE 90 88 02         [24] 1328 	mov	dptr,#_y
      0024C1 E4               [12] 1329 	clr	a
      0024C2 F0               [24] 1330 	movx	@dptr,a
      0024C3 A3               [24] 1331 	inc	dptr
      0024C4 F0               [24] 1332 	movx	@dptr,a
      0024C5                       1333 00113$:
                                   1334 ;	life.c:94: for (x = 0; x < W; x++) {
      0024C5 90 88 00         [24] 1335 	mov	dptr,#_x
      0024C8 E4               [12] 1336 	clr	a
      0024C9 F0               [24] 1337 	movx	@dptr,a
      0024CA A3               [24] 1338 	inc	dptr
      0024CB F0               [24] 1339 	movx	@dptr,a
      0024CC                       1340 00111$:
                                   1341 ;	life.c:95: c = getchar();
      0024CC 12 20 72         [24] 1342 	lcall	_getchar
      0024CF AE 82            [24] 1343 	mov	r6,dpl
      0024D1 AF 83            [24] 1344 	mov	r7,dph
      0024D3 90 88 12         [24] 1345 	mov	dptr,#_c
      0024D6 EE               [12] 1346 	mov	a,r6
      0024D7 F0               [24] 1347 	movx	@dptr,a
      0024D8 EF               [12] 1348 	mov	a,r7
      0024D9 A3               [24] 1349 	inc	dptr
      0024DA F0               [24] 1350 	movx	@dptr,a
                                   1351 ;	life.c:96: u[y][x] = c & 1;
      0024DB 90 88 02         [24] 1352 	mov	dptr,#_y
      0024DE E0               [24] 1353 	movx	a,@dptr
      0024DF FC               [12] 1354 	mov	r4,a
      0024E0 A3               [24] 1355 	inc	dptr
      0024E1 E0               [24] 1356 	movx	a,@dptr
      0024E2 C4               [12] 1357 	swap	a
      0024E3 23               [12] 1358 	rl	a
      0024E4 54 E0            [12] 1359 	anl	a,#0xe0
      0024E6 CC               [12] 1360 	xch	a,r4
      0024E7 C4               [12] 1361 	swap	a
      0024E8 23               [12] 1362 	rl	a
      0024E9 CC               [12] 1363 	xch	a,r4
      0024EA 6C               [12] 1364 	xrl	a,r4
      0024EB CC               [12] 1365 	xch	a,r4
      0024EC 54 E0            [12] 1366 	anl	a,#0xe0
      0024EE CC               [12] 1367 	xch	a,r4
      0024EF 6C               [12] 1368 	xrl	a,r4
      0024F0 FD               [12] 1369 	mov	r5,a
      0024F1 EC               [12] 1370 	mov	a,r4
      0024F2 24 00            [12] 1371 	add	a,#_u
      0024F4 FC               [12] 1372 	mov	r4,a
      0024F5 ED               [12] 1373 	mov	a,r5
      0024F6 34 80            [12] 1374 	addc	a,#(_u >> 8)
      0024F8 FD               [12] 1375 	mov	r5,a
      0024F9 90 88 00         [24] 1376 	mov	dptr,#_x
      0024FC E0               [24] 1377 	movx	a,@dptr
      0024FD FA               [12] 1378 	mov	r2,a
      0024FE A3               [24] 1379 	inc	dptr
      0024FF E0               [24] 1380 	movx	a,@dptr
      002500 FB               [12] 1381 	mov	r3,a
      002501 EA               [12] 1382 	mov	a,r2
      002502 2C               [12] 1383 	add	a,r4
      002503 F5 82            [12] 1384 	mov	dpl,a
      002505 EB               [12] 1385 	mov	a,r3
      002506 3D               [12] 1386 	addc	a,r5
      002507 F5 83            [12] 1387 	mov	dph,a
      002509 53 06 01         [24] 1388 	anl	ar6,#0x01
      00250C EE               [12] 1389 	mov	a,r6
      00250D F0               [24] 1390 	movx	@dptr,a
                                   1391 ;	life.c:94: for (x = 0; x < W; x++) {
      00250E 90 88 00         [24] 1392 	mov	dptr,#_x
      002511 E0               [24] 1393 	movx	a,@dptr
      002512 24 01            [12] 1394 	add	a,#0x01
      002514 F0               [24] 1395 	movx	@dptr,a
      002515 A3               [24] 1396 	inc	dptr
      002516 E0               [24] 1397 	movx	a,@dptr
      002517 34 00            [12] 1398 	addc	a,#0x00
      002519 F0               [24] 1399 	movx	@dptr,a
      00251A 90 88 00         [24] 1400 	mov	dptr,#_x
      00251D E0               [24] 1401 	movx	a,@dptr
      00251E FE               [12] 1402 	mov	r6,a
      00251F A3               [24] 1403 	inc	dptr
      002520 E0               [24] 1404 	movx	a,@dptr
      002521 FF               [12] 1405 	mov	r7,a
      002522 C3               [12] 1406 	clr	c
      002523 EE               [12] 1407 	mov	a,r6
      002524 94 20            [12] 1408 	subb	a,#0x20
      002526 EF               [12] 1409 	mov	a,r7
      002527 64 80            [12] 1410 	xrl	a,#0x80
      002529 94 80            [12] 1411 	subb	a,#0x80
      00252B 40 9F            [24] 1412 	jc	00111$
                                   1413 ;	life.c:93: for (y = 0; y < H; y++)
      00252D 90 88 02         [24] 1414 	mov	dptr,#_y
      002530 E0               [24] 1415 	movx	a,@dptr
      002531 24 01            [12] 1416 	add	a,#0x01
      002533 F0               [24] 1417 	movx	@dptr,a
      002534 A3               [24] 1418 	inc	dptr
      002535 E0               [24] 1419 	movx	a,@dptr
      002536 34 00            [12] 1420 	addc	a,#0x00
      002538 F0               [24] 1421 	movx	@dptr,a
      002539 90 88 02         [24] 1422 	mov	dptr,#_y
      00253C E0               [24] 1423 	movx	a,@dptr
      00253D FE               [12] 1424 	mov	r6,a
      00253E A3               [24] 1425 	inc	dptr
      00253F E0               [24] 1426 	movx	a,@dptr
      002540 FF               [12] 1427 	mov	r7,a
      002541 C3               [12] 1428 	clr	c
      002542 EE               [12] 1429 	mov	a,r6
      002543 94 20            [12] 1430 	subb	a,#0x20
      002545 EF               [12] 1431 	mov	a,r7
      002546 64 80            [12] 1432 	xrl	a,#0x80
      002548 94 80            [12] 1433 	subb	a,#0x80
      00254A 50 03            [24] 1434 	jnc	00155$
      00254C 02 24 C5         [24] 1435 	ljmp	00113$
      00254F                       1436 00155$:
                                   1437 ;	life.c:98: printf("RDY\n\r");
      00254F 74 F4            [12] 1438 	mov	a,#___str_5
      002551 C0 E0            [24] 1439 	push	acc
      002553 74 39            [12] 1440 	mov	a,#(___str_5 >> 8)
      002555 C0 E0            [24] 1441 	push	acc
      002557 74 80            [12] 1442 	mov	a,#0x80
      002559 C0 E0            [24] 1443 	push	acc
      00255B 12 25 F6         [24] 1444 	lcall	_printf
      00255E 15 81            [12] 1445 	dec	sp
      002560 15 81            [12] 1446 	dec	sp
      002562 15 81            [12] 1447 	dec	sp
                                   1448 ;	life.c:99: (void)getchar();
      002564 12 20 72         [24] 1449 	lcall	_getchar
                                   1450 ;	life.c:101: population = 0;
      002567 90 88 0A         [24] 1451 	mov	dptr,#_population
      00256A E4               [12] 1452 	clr	a
      00256B F0               [24] 1453 	movx	@dptr,a
      00256C A3               [24] 1454 	inc	dptr
      00256D F0               [24] 1455 	movx	@dptr,a
                                   1456 ;	life.c:103: while (!i1) {
      00256E                       1457 00105$:
      00256E 90 88 10         [24] 1458 	mov	dptr,#_i1
      002571 E0               [24] 1459 	movx	a,@dptr
      002572 F5 F0            [12] 1460 	mov	b,a
      002574 A3               [24] 1461 	inc	dptr
      002575 E0               [24] 1462 	movx	a,@dptr
      002576 45 F0            [12] 1463 	orl	a,b
      002578 60 03            [24] 1464 	jz	00156$
      00257A 02 24 9A         [24] 1465 	ljmp	00108$
      00257D                       1466 00156$:
                                   1467 ;	life.c:104: show();
      00257D 12 20 A5         [24] 1468 	lcall	_show
                                   1469 ;	life.c:105: evolve();
      002580 12 21 97         [24] 1470 	lcall	_evolve
                                   1471 ;	life.c:106: if (fixed) {
      002583 90 88 0C         [24] 1472 	mov	dptr,#_fixed
      002586 E0               [24] 1473 	movx	a,@dptr
      002587 F5 F0            [12] 1474 	mov	b,a
      002589 A3               [24] 1475 	inc	dptr
      00258A E0               [24] 1476 	movx	a,@dptr
      00258B 45 F0            [12] 1477 	orl	a,b
      00258D 60 DF            [24] 1478 	jz	00105$
                                   1479 ;	life.c:107: printf("DONE\n\r");
      00258F 74 FA            [12] 1480 	mov	a,#___str_6
      002591 C0 E0            [24] 1481 	push	acc
      002593 74 39            [12] 1482 	mov	a,#(___str_6 >> 8)
      002595 C0 E0            [24] 1483 	push	acc
      002597 74 80            [12] 1484 	mov	a,#0x80
      002599 C0 E0            [24] 1485 	push	acc
      00259B 12 25 F6         [24] 1486 	lcall	_printf
      00259E 15 81            [12] 1487 	dec	sp
      0025A0 15 81            [12] 1488 	dec	sp
      0025A2 15 81            [12] 1489 	dec	sp
                                   1490 ;	life.c:108: (void)getchar();
      0025A4 12 20 72         [24] 1491 	lcall	_getchar
                                   1492 ;	life.c:109: break;
      0025A7 02 24 9A         [24] 1493 	ljmp	00108$
      0025AA                       1494 00110$:
                                   1495 ;	life.c:114: EA = 0;
                                   1496 ;	assignBit
      0025AA C2 AF            [12] 1497 	clr	_EA
                                   1498 ;	life.c:118: __endasm;
      0025AC 02 00 00         [24] 1499 	ljmp	0
                                   1500 ;	life.c:119: }
      0025AF 22               [24] 1501 	ret
                                   1502 	.area CSEG    (CODE)
                                   1503 	.area CONST   (CODE)
                                   1504 	.area CONST   (CODE)
      0039C7                       1505 ___str_0:
      0039C7 1B                    1506 	.db 0x1b
      0039C8 5B 32 4A              1507 	.ascii "[2J"
      0039CB 1B                    1508 	.db 0x1b
      0039CC 5B 6D 25 30 34 78     1509 	.ascii "[m%04x"
      0039D2 0D                    1510 	.db 0x0d
      0039D3 0A                    1511 	.db 0x0a
      0039D4 00                    1512 	.db 0x00
                                   1513 	.area CSEG    (CODE)
                                   1514 	.area CONST   (CODE)
      0039D5                       1515 ___str_1:
      0039D5 1B                    1516 	.db 0x1b
      0039D6 5B 30 31 6D 5B 5D     1517 	.ascii "[01m[]"
      0039DC 1B                    1518 	.db 0x1b
      0039DD 5B 6D                 1519 	.ascii "[m"
      0039DF 00                    1520 	.db 0x00
                                   1521 	.area CSEG    (CODE)
                                   1522 	.area CONST   (CODE)
      0039E0                       1523 ___str_2:
      0039E0 20 20                 1524 	.ascii "  "
      0039E2 00                    1525 	.db 0x00
                                   1526 	.area CSEG    (CODE)
                                   1527 	.area CONST   (CODE)
      0039E3                       1528 ___str_3:
      0039E3 0D                    1529 	.db 0x0d
      0039E4 0A                    1530 	.db 0x0a
      0039E5 00                    1531 	.db 0x00
                                   1532 	.area CSEG    (CODE)
                                   1533 	.area CONST   (CODE)
      0039E6                       1534 ___str_4:
      0039E6 1B                    1535 	.db 0x1b
      0039E7 5B 32 4A              1536 	.ascii "[2J"
      0039EA 1B                    1537 	.db 0x1b
      0039EB 5B 6D 49 4E 49 54     1538 	.ascii "[mINIT"
      0039F1 0A                    1539 	.db 0x0a
      0039F2 0D                    1540 	.db 0x0d
      0039F3 00                    1541 	.db 0x00
                                   1542 	.area CSEG    (CODE)
                                   1543 	.area CONST   (CODE)
      0039F4                       1544 ___str_5:
      0039F4 52 44 59              1545 	.ascii "RDY"
      0039F7 0A                    1546 	.db 0x0a
      0039F8 0D                    1547 	.db 0x0d
      0039F9 00                    1548 	.db 0x00
                                   1549 	.area CSEG    (CODE)
                                   1550 	.area CONST   (CODE)
      0039FA                       1551 ___str_6:
      0039FA 44 4F 4E 45           1552 	.ascii "DONE"
      0039FE 0A                    1553 	.db 0x0a
      0039FF 0D                    1554 	.db 0x0d
      003A00 00                    1555 	.db 0x00
                                   1556 	.area CSEG    (CODE)
                                   1557 	.area XINIT   (CODE)
                                   1558 	.area CABS    (ABS,CODE)
