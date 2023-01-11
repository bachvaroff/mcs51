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
                                    141 	.globl _fixed
                                    142 	.globl _population
                                    143 	.globl _n
                                    144 	.globl _y1
                                    145 	.globl _x1
                                    146 	.globl _y
                                    147 	.globl _x
                                    148 	.globl _nu
                                    149 	.globl _u
                                    150 	.globl _i1
                                    151 	.globl _i0
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
      008000                        343 _i0::
      008000                        344 	.ds 2
      008002                        345 _i1::
      008002                        346 	.ds 2
      008004                        347 _u::
      008004                        348 	.ds 1024
      008404                        349 _nu::
      008404                        350 	.ds 1024
      008804                        351 _x::
      008804                        352 	.ds 2
      008806                        353 _y::
      008806                        354 	.ds 2
      008808                        355 _x1::
      008808                        356 	.ds 2
      00880A                        357 _y1::
      00880A                        358 	.ds 2
      00880C                        359 _n::
      00880C                        360 	.ds 2
      00880E                        361 _population::
      00880E                        362 	.ds 2
      008810                        363 _fixed::
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
      002000 02 20 19         [24]  390 	ljmp	__sdcc_gsinit_startup
      002003 02 20 82         [24]  391 	ljmp	_int0
      002006                        392 	.ds	5
      00200B 32               [24]  393 	reti
      00200C                        394 	.ds	7
      002013 02 20 98         [24]  395 	ljmp	_int1
                                    396 ;--------------------------------------------------------
                                    397 ; global & static initialisations
                                    398 ;--------------------------------------------------------
                                    399 	.area HOME    (CODE)
                                    400 	.area GSINIT  (CODE)
                                    401 	.area GSFINAL (CODE)
                                    402 	.area GSINIT  (CODE)
                                    403 	.globl __sdcc_gsinit_startup
                                    404 	.globl __sdcc_program_startup
                                    405 	.globl __start__stack
                                    406 	.globl __mcs51_genXINIT
                                    407 	.globl __mcs51_genXRAMCLEAR
                                    408 	.globl __mcs51_genRAMCLEAR
                                    409 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  410 	ljmp	__sdcc_program_startup
                                    411 ;--------------------------------------------------------
                                    412 ; Home
                                    413 ;--------------------------------------------------------
                                    414 	.area HOME    (CODE)
                                    415 	.area HOME    (CODE)
      002016                        416 __sdcc_program_startup:
      002016 02 24 8C         [24]  417 	ljmp	_main
                                    418 ;	return from main will return to caller
                                    419 ;--------------------------------------------------------
                                    420 ; code
                                    421 ;--------------------------------------------------------
                                    422 	.area CSEG    (CODE)
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'putchar'
                                    425 ;------------------------------------------------------------
                                    426 ;c                         Allocated to registers 
                                    427 ;------------------------------------------------------------
                                    428 ;	life.c:7: int putchar(int c) __naked {
                                    429 ;	-----------------------------------------
                                    430 ;	 function putchar
                                    431 ;	-----------------------------------------
      002075                        432 _putchar:
                                    433 ;	naked function: no prologue.
                                    434 ;	life.c:12: __endasm;
      002075 E5 82            [12]  435 	mov	a, dpl
      002077 02 00 30         [24]  436 	ljmp	0x0030
                                    437 ;	life.c:13: }
                                    438 ;	naked function: no epilogue.
                                    439 ;------------------------------------------------------------
                                    440 ;Allocation info for local variables in function 'getchar'
                                    441 ;------------------------------------------------------------
                                    442 ;	life.c:15: int getchar(void) {
                                    443 ;	-----------------------------------------
                                    444 ;	 function getchar
                                    445 ;	-----------------------------------------
      00207A                        446 _getchar:
                           000007   447 	ar7 = 0x07
                           000006   448 	ar6 = 0x06
                           000005   449 	ar5 = 0x05
                           000004   450 	ar4 = 0x04
                           000003   451 	ar3 = 0x03
                           000002   452 	ar2 = 0x02
                           000001   453 	ar1 = 0x01
                           000000   454 	ar0 = 0x00
                                    455 ;	life.c:20: __endasm;
      00207A 12 00 32         [24]  456 	lcall	0x0032
      00207D C2 83            [12]  457 	clr	dph
      00207F F5 82            [12]  458 	mov	dpl, a
                                    459 ;	life.c:21: }
      002081 22               [24]  460 	ret
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'int0'
                                    463 ;------------------------------------------------------------
                                    464 ;	life.c:32: void int0(void) __interrupt 0 __using 1 {
                                    465 ;	-----------------------------------------
                                    466 ;	 function int0
                                    467 ;	-----------------------------------------
      002082                        468 _int0:
                           00000F   469 	ar7 = 0x0f
                           00000E   470 	ar6 = 0x0e
                           00000D   471 	ar5 = 0x0d
                           00000C   472 	ar4 = 0x0c
                           00000B   473 	ar3 = 0x0b
                           00000A   474 	ar2 = 0x0a
                           000009   475 	ar1 = 0x09
                           000008   476 	ar0 = 0x08
      002082 C0 E0            [24]  477 	push	acc
      002084 C0 82            [24]  478 	push	dpl
      002086 C0 83            [24]  479 	push	dph
                                    480 ;	life.c:33: i0 = 1;
      002088 90 80 00         [24]  481 	mov	dptr,#_i0
      00208B 74 01            [12]  482 	mov	a,#0x01
      00208D F0               [24]  483 	movx	@dptr,a
      00208E E4               [12]  484 	clr	a
      00208F A3               [24]  485 	inc	dptr
      002090 F0               [24]  486 	movx	@dptr,a
                                    487 ;	life.c:34: }
      002091 D0 83            [24]  488 	pop	dph
      002093 D0 82            [24]  489 	pop	dpl
      002095 D0 E0            [24]  490 	pop	acc
      002097 32               [24]  491 	reti
                                    492 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    493 ;	eliminated unneeded push/pop psw
                                    494 ;	eliminated unneeded push/pop b
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'int1'
                                    497 ;------------------------------------------------------------
                                    498 ;	life.c:37: void int1(void) __interrupt 2 __using 1 {
                                    499 ;	-----------------------------------------
                                    500 ;	 function int1
                                    501 ;	-----------------------------------------
      002098                        502 _int1:
      002098 C0 E0            [24]  503 	push	acc
      00209A C0 82            [24]  504 	push	dpl
      00209C C0 83            [24]  505 	push	dph
                                    506 ;	life.c:38: i1 = 1;
      00209E 90 80 02         [24]  507 	mov	dptr,#_i1
      0020A1 74 01            [12]  508 	mov	a,#0x01
      0020A3 F0               [24]  509 	movx	@dptr,a
      0020A4 E4               [12]  510 	clr	a
      0020A5 A3               [24]  511 	inc	dptr
      0020A6 F0               [24]  512 	movx	@dptr,a
                                    513 ;	life.c:39: }
      0020A7 D0 83            [24]  514 	pop	dph
      0020A9 D0 82            [24]  515 	pop	dpl
      0020AB D0 E0            [24]  516 	pop	acc
      0020AD 32               [24]  517 	reti
                                    518 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    519 ;	eliminated unneeded push/pop psw
                                    520 ;	eliminated unneeded push/pop b
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'show'
                                    523 ;------------------------------------------------------------
                                    524 ;	life.c:41: void show(void) {
                                    525 ;	-----------------------------------------
                                    526 ;	 function show
                                    527 ;	-----------------------------------------
      0020AE                        528 _show:
                           000007   529 	ar7 = 0x07
                           000006   530 	ar6 = 0x06
                           000005   531 	ar5 = 0x05
                           000004   532 	ar4 = 0x04
                           000003   533 	ar3 = 0x03
                           000002   534 	ar2 = 0x02
                           000001   535 	ar1 = 0x01
                           000000   536 	ar0 = 0x00
                                    537 ;	life.c:42: printf("\033[2J\033[m%04x\r\n", population);
      0020AE 90 88 0E         [24]  538 	mov	dptr,#_population
      0020B1 E0               [24]  539 	movx	a,@dptr
      0020B2 C0 E0            [24]  540 	push	acc
      0020B4 A3               [24]  541 	inc	dptr
      0020B5 E0               [24]  542 	movx	a,@dptr
      0020B6 C0 E0            [24]  543 	push	acc
      0020B8 74 FD            [12]  544 	mov	a,#___str_0
      0020BA C0 E0            [24]  545 	push	acc
      0020BC 74 39            [12]  546 	mov	a,#(___str_0 >> 8)
      0020BE C0 E0            [24]  547 	push	acc
      0020C0 74 80            [12]  548 	mov	a,#0x80
      0020C2 C0 E0            [24]  549 	push	acc
      0020C4 12 26 2C         [24]  550 	lcall	_printf
      0020C7 E5 81            [12]  551 	mov	a,sp
      0020C9 24 FB            [12]  552 	add	a,#0xfb
      0020CB F5 81            [12]  553 	mov	sp,a
                                    554 ;	life.c:43: population++;
      0020CD 90 88 0E         [24]  555 	mov	dptr,#_population
      0020D0 E0               [24]  556 	movx	a,@dptr
      0020D1 24 01            [12]  557 	add	a,#0x01
      0020D3 F0               [24]  558 	movx	@dptr,a
      0020D4 A3               [24]  559 	inc	dptr
      0020D5 E0               [24]  560 	movx	a,@dptr
      0020D6 34 00            [12]  561 	addc	a,#0x00
      0020D8 F0               [24]  562 	movx	@dptr,a
                                    563 ;	life.c:45: for (y = 0; y < H; y++) {
      0020D9 90 88 06         [24]  564 	mov	dptr,#_y
      0020DC E4               [12]  565 	clr	a
      0020DD F0               [24]  566 	movx	@dptr,a
      0020DE A3               [24]  567 	inc	dptr
      0020DF F0               [24]  568 	movx	@dptr,a
      0020E0                        569 00108$:
                                    570 ;	life.c:46: for (x = 0; x < W; x++)
      0020E0 90 88 04         [24]  571 	mov	dptr,#_x
      0020E3 E4               [12]  572 	clr	a
      0020E4 F0               [24]  573 	movx	@dptr,a
      0020E5 A3               [24]  574 	inc	dptr
      0020E6 F0               [24]  575 	movx	@dptr,a
      0020E7                        576 00106$:
                                    577 ;	life.c:47: if (u[y][x]) printf("\033[01m[]\033[m");
      0020E7 90 88 06         [24]  578 	mov	dptr,#_y
      0020EA E0               [24]  579 	movx	a,@dptr
      0020EB FE               [12]  580 	mov	r6,a
      0020EC A3               [24]  581 	inc	dptr
      0020ED E0               [24]  582 	movx	a,@dptr
      0020EE C4               [12]  583 	swap	a
      0020EF 23               [12]  584 	rl	a
      0020F0 54 E0            [12]  585 	anl	a,#0xe0
      0020F2 CE               [12]  586 	xch	a,r6
      0020F3 C4               [12]  587 	swap	a
      0020F4 23               [12]  588 	rl	a
      0020F5 CE               [12]  589 	xch	a,r6
      0020F6 6E               [12]  590 	xrl	a,r6
      0020F7 CE               [12]  591 	xch	a,r6
      0020F8 54 E0            [12]  592 	anl	a,#0xe0
      0020FA CE               [12]  593 	xch	a,r6
      0020FB 6E               [12]  594 	xrl	a,r6
      0020FC FF               [12]  595 	mov	r7,a
      0020FD EE               [12]  596 	mov	a,r6
      0020FE 24 04            [12]  597 	add	a,#_u
      002100 FE               [12]  598 	mov	r6,a
      002101 EF               [12]  599 	mov	a,r7
      002102 34 80            [12]  600 	addc	a,#(_u >> 8)
      002104 FF               [12]  601 	mov	r7,a
      002105 90 88 04         [24]  602 	mov	dptr,#_x
      002108 E0               [24]  603 	movx	a,@dptr
      002109 FC               [12]  604 	mov	r4,a
      00210A A3               [24]  605 	inc	dptr
      00210B E0               [24]  606 	movx	a,@dptr
      00210C FD               [12]  607 	mov	r5,a
      00210D EC               [12]  608 	mov	a,r4
      00210E 2E               [12]  609 	add	a,r6
      00210F FE               [12]  610 	mov	r6,a
      002110 ED               [12]  611 	mov	a,r5
      002111 3F               [12]  612 	addc	a,r7
      002112 FF               [12]  613 	mov	r7,a
      002113 8E 82            [24]  614 	mov	dpl,r6
      002115 8F 83            [24]  615 	mov	dph,r7
      002117 E0               [24]  616 	movx	a,@dptr
      002118 60 17            [24]  617 	jz	00102$
      00211A 74 0B            [12]  618 	mov	a,#___str_1
      00211C C0 E0            [24]  619 	push	acc
      00211E 74 3A            [12]  620 	mov	a,#(___str_1 >> 8)
      002120 C0 E0            [24]  621 	push	acc
      002122 74 80            [12]  622 	mov	a,#0x80
      002124 C0 E0            [24]  623 	push	acc
      002126 12 26 2C         [24]  624 	lcall	_printf
      002129 15 81            [12]  625 	dec	sp
      00212B 15 81            [12]  626 	dec	sp
      00212D 15 81            [12]  627 	dec	sp
      00212F 80 15            [24]  628 	sjmp	00107$
      002131                        629 00102$:
                                    630 ;	life.c:48: else printf("  ");
      002131 74 16            [12]  631 	mov	a,#___str_2
      002133 C0 E0            [24]  632 	push	acc
      002135 74 3A            [12]  633 	mov	a,#(___str_2 >> 8)
      002137 C0 E0            [24]  634 	push	acc
      002139 74 80            [12]  635 	mov	a,#0x80
      00213B C0 E0            [24]  636 	push	acc
      00213D 12 26 2C         [24]  637 	lcall	_printf
      002140 15 81            [12]  638 	dec	sp
      002142 15 81            [12]  639 	dec	sp
      002144 15 81            [12]  640 	dec	sp
      002146                        641 00107$:
                                    642 ;	life.c:46: for (x = 0; x < W; x++)
      002146 90 88 04         [24]  643 	mov	dptr,#_x
      002149 E0               [24]  644 	movx	a,@dptr
      00214A 24 01            [12]  645 	add	a,#0x01
      00214C F0               [24]  646 	movx	@dptr,a
      00214D A3               [24]  647 	inc	dptr
      00214E E0               [24]  648 	movx	a,@dptr
      00214F 34 00            [12]  649 	addc	a,#0x00
      002151 F0               [24]  650 	movx	@dptr,a
      002152 90 88 04         [24]  651 	mov	dptr,#_x
      002155 E0               [24]  652 	movx	a,@dptr
      002156 FE               [12]  653 	mov	r6,a
      002157 A3               [24]  654 	inc	dptr
      002158 E0               [24]  655 	movx	a,@dptr
      002159 FF               [12]  656 	mov	r7,a
      00215A C3               [12]  657 	clr	c
      00215B EE               [12]  658 	mov	a,r6
      00215C 94 20            [12]  659 	subb	a,#0x20
      00215E EF               [12]  660 	mov	a,r7
      00215F 64 80            [12]  661 	xrl	a,#0x80
      002161 94 80            [12]  662 	subb	a,#0x80
      002163 50 03            [24]  663 	jnc	00133$
      002165 02 20 E7         [24]  664 	ljmp	00106$
      002168                        665 00133$:
                                    666 ;	life.c:49: printf("\r\n");
      002168 74 19            [12]  667 	mov	a,#___str_3
      00216A C0 E0            [24]  668 	push	acc
      00216C 74 3A            [12]  669 	mov	a,#(___str_3 >> 8)
      00216E C0 E0            [24]  670 	push	acc
      002170 74 80            [12]  671 	mov	a,#0x80
      002172 C0 E0            [24]  672 	push	acc
      002174 12 26 2C         [24]  673 	lcall	_printf
      002177 15 81            [12]  674 	dec	sp
      002179 15 81            [12]  675 	dec	sp
      00217B 15 81            [12]  676 	dec	sp
                                    677 ;	life.c:45: for (y = 0; y < H; y++) {
      00217D 90 88 06         [24]  678 	mov	dptr,#_y
      002180 E0               [24]  679 	movx	a,@dptr
      002181 24 01            [12]  680 	add	a,#0x01
      002183 F0               [24]  681 	movx	@dptr,a
      002184 A3               [24]  682 	inc	dptr
      002185 E0               [24]  683 	movx	a,@dptr
      002186 34 00            [12]  684 	addc	a,#0x00
      002188 F0               [24]  685 	movx	@dptr,a
      002189 90 88 06         [24]  686 	mov	dptr,#_y
      00218C E0               [24]  687 	movx	a,@dptr
      00218D FE               [12]  688 	mov	r6,a
      00218E A3               [24]  689 	inc	dptr
      00218F E0               [24]  690 	movx	a,@dptr
      002190 FF               [12]  691 	mov	r7,a
      002191 C3               [12]  692 	clr	c
      002192 EE               [12]  693 	mov	a,r6
      002193 94 20            [12]  694 	subb	a,#0x20
      002195 EF               [12]  695 	mov	a,r7
      002196 64 80            [12]  696 	xrl	a,#0x80
      002198 94 80            [12]  697 	subb	a,#0x80
      00219A 50 03            [24]  698 	jnc	00134$
      00219C 02 20 E0         [24]  699 	ljmp	00108$
      00219F                        700 00134$:
                                    701 ;	life.c:52: return;
                                    702 ;	life.c:53: }
      00219F 22               [24]  703 	ret
                                    704 ;------------------------------------------------------------
                                    705 ;Allocation info for local variables in function 'evolve'
                                    706 ;------------------------------------------------------------
                                    707 ;	life.c:55: void evolve(void) {
                                    708 ;	-----------------------------------------
                                    709 ;	 function evolve
                                    710 ;	-----------------------------------------
      0021A0                        711 _evolve:
                                    712 ;	life.c:56: fixed = 1;
      0021A0 90 88 10         [24]  713 	mov	dptr,#_fixed
      0021A3 74 01            [12]  714 	mov	a,#0x01
      0021A5 F0               [24]  715 	movx	@dptr,a
      0021A6 E4               [12]  716 	clr	a
      0021A7 A3               [24]  717 	inc	dptr
      0021A8 F0               [24]  718 	movx	@dptr,a
                                    719 ;	life.c:58: for (y = 0; y < H; y++) {
      0021A9 90 88 06         [24]  720 	mov	dptr,#_y
      0021AC F0               [24]  721 	movx	@dptr,a
      0021AD A3               [24]  722 	inc	dptr
      0021AE F0               [24]  723 	movx	@dptr,a
      0021AF                        724 00121$:
                                    725 ;	life.c:59: for (x = 0; x < W; x++) {
      0021AF 90 88 04         [24]  726 	mov	dptr,#_x
      0021B2 E4               [12]  727 	clr	a
      0021B3 F0               [24]  728 	movx	@dptr,a
      0021B4 A3               [24]  729 	inc	dptr
      0021B5 F0               [24]  730 	movx	@dptr,a
      0021B6                        731 00119$:
                                    732 ;	life.c:60: n = 0;
      0021B6 90 88 0C         [24]  733 	mov	dptr,#_n
      0021B9 E4               [12]  734 	clr	a
      0021BA F0               [24]  735 	movx	@dptr,a
      0021BB A3               [24]  736 	inc	dptr
      0021BC F0               [24]  737 	movx	@dptr,a
                                    738 ;	life.c:61: for (y1 = y - 1; y1 <= y + 1; y1++)
      0021BD 90 88 06         [24]  739 	mov	dptr,#_y
      0021C0 E0               [24]  740 	movx	a,@dptr
      0021C1 FE               [12]  741 	mov	r6,a
      0021C2 A3               [24]  742 	inc	dptr
      0021C3 E0               [24]  743 	movx	a,@dptr
      0021C4 FF               [12]  744 	mov	r7,a
      0021C5 1E               [12]  745 	dec	r6
      0021C6 BE FF 01         [24]  746 	cjne	r6,#0xff,00203$
      0021C9 1F               [12]  747 	dec	r7
      0021CA                        748 00203$:
      0021CA 90 88 0A         [24]  749 	mov	dptr,#_y1
      0021CD EE               [12]  750 	mov	a,r6
      0021CE F0               [24]  751 	movx	@dptr,a
      0021CF EF               [12]  752 	mov	a,r7
      0021D0 A3               [24]  753 	inc	dptr
      0021D1 F0               [24]  754 	movx	@dptr,a
      0021D2                        755 00117$:
      0021D2 90 88 06         [24]  756 	mov	dptr,#_y
      0021D5 E0               [24]  757 	movx	a,@dptr
      0021D6 FE               [12]  758 	mov	r6,a
      0021D7 A3               [24]  759 	inc	dptr
      0021D8 E0               [24]  760 	movx	a,@dptr
      0021D9 FF               [12]  761 	mov	r7,a
      0021DA 74 01            [12]  762 	mov	a,#0x01
      0021DC 2E               [12]  763 	add	a,r6
      0021DD FC               [12]  764 	mov	r4,a
      0021DE E4               [12]  765 	clr	a
      0021DF 3F               [12]  766 	addc	a,r7
      0021E0 FD               [12]  767 	mov	r5,a
      0021E1 90 88 0A         [24]  768 	mov	dptr,#_y1
      0021E4 E0               [24]  769 	movx	a,@dptr
      0021E5 FA               [12]  770 	mov	r2,a
      0021E6 A3               [24]  771 	inc	dptr
      0021E7 E0               [24]  772 	movx	a,@dptr
      0021E8 FB               [12]  773 	mov	r3,a
      0021E9 C3               [12]  774 	clr	c
      0021EA EC               [12]  775 	mov	a,r4
      0021EB 9A               [12]  776 	subb	a,r2
      0021EC ED               [12]  777 	mov	a,r5
      0021ED 64 80            [12]  778 	xrl	a,#0x80
      0021EF 8B F0            [24]  779 	mov	b,r3
      0021F1 63 F0 80         [24]  780 	xrl	b,#0x80
      0021F4 95 F0            [12]  781 	subb	a,b
      0021F6 50 03            [24]  782 	jnc	00204$
      0021F8 02 22 D8         [24]  783 	ljmp	00104$
      0021FB                        784 00204$:
                                    785 ;	life.c:62: for (x1 = x - 1; x1 <= x + 1; x1++)
      0021FB 90 88 04         [24]  786 	mov	dptr,#_x
      0021FE E0               [24]  787 	movx	a,@dptr
      0021FF FC               [12]  788 	mov	r4,a
      002200 A3               [24]  789 	inc	dptr
      002201 E0               [24]  790 	movx	a,@dptr
      002202 FD               [12]  791 	mov	r5,a
      002203 1C               [12]  792 	dec	r4
      002204 BC FF 01         [24]  793 	cjne	r4,#0xff,00205$
      002207 1D               [12]  794 	dec	r5
      002208                        795 00205$:
      002208 90 88 08         [24]  796 	mov	dptr,#_x1
      00220B EC               [12]  797 	mov	a,r4
      00220C F0               [24]  798 	movx	@dptr,a
      00220D ED               [12]  799 	mov	a,r5
      00220E A3               [24]  800 	inc	dptr
      00220F F0               [24]  801 	movx	@dptr,a
      002210                        802 00114$:
      002210 90 88 04         [24]  803 	mov	dptr,#_x
      002213 E0               [24]  804 	movx	a,@dptr
      002214 FC               [12]  805 	mov	r4,a
      002215 A3               [24]  806 	inc	dptr
      002216 E0               [24]  807 	movx	a,@dptr
      002217 FD               [12]  808 	mov	r5,a
      002218 0C               [12]  809 	inc	r4
      002219 BC 00 01         [24]  810 	cjne	r4,#0x00,00206$
      00221C 0D               [12]  811 	inc	r5
      00221D                        812 00206$:
      00221D 90 88 08         [24]  813 	mov	dptr,#_x1
      002220 E0               [24]  814 	movx	a,@dptr
      002221 FA               [12]  815 	mov	r2,a
      002222 A3               [24]  816 	inc	dptr
      002223 E0               [24]  817 	movx	a,@dptr
      002224 FB               [12]  818 	mov	r3,a
      002225 C3               [12]  819 	clr	c
      002226 EC               [12]  820 	mov	a,r4
      002227 9A               [12]  821 	subb	a,r2
      002228 ED               [12]  822 	mov	a,r5
      002229 64 80            [12]  823 	xrl	a,#0x80
      00222B 8B F0            [24]  824 	mov	b,r3
      00222D 63 F0 80         [24]  825 	xrl	b,#0x80
      002230 95 F0            [12]  826 	subb	a,b
      002232 50 03            [24]  827 	jnc	00207$
      002234 02 22 C9         [24]  828 	ljmp	00118$
      002237                        829 00207$:
                                    830 ;	life.c:63: if (u[(y1 + H) % H][(x1 + W) % W])
      002237 90 88 0A         [24]  831 	mov	dptr,#_y1
      00223A E0               [24]  832 	movx	a,@dptr
      00223B FC               [12]  833 	mov	r4,a
      00223C A3               [24]  834 	inc	dptr
      00223D E0               [24]  835 	movx	a,@dptr
      00223E FD               [12]  836 	mov	r5,a
      00223F 74 20            [12]  837 	mov	a,#0x20
      002241 2C               [12]  838 	add	a,r4
      002242 FC               [12]  839 	mov	r4,a
      002243 E4               [12]  840 	clr	a
      002244 3D               [12]  841 	addc	a,r5
      002245 FD               [12]  842 	mov	r5,a
      002246 C0 03            [24]  843 	push	ar3
      002248 C0 02            [24]  844 	push	ar2
      00224A 74 20            [12]  845 	mov	a,#0x20
      00224C C0 E0            [24]  846 	push	acc
      00224E E4               [12]  847 	clr	a
      00224F C0 E0            [24]  848 	push	acc
      002251 8C 82            [24]  849 	mov	dpl,r4
      002253 8D 83            [24]  850 	mov	dph,r5
      002255 12 26 65         [24]  851 	lcall	__modsint
      002258 AC 82            [24]  852 	mov	r4,dpl
      00225A AD 83            [24]  853 	mov	r5,dph
      00225C 15 81            [12]  854 	dec	sp
      00225E 15 81            [12]  855 	dec	sp
      002260 D0 02            [24]  856 	pop	ar2
      002262 D0 03            [24]  857 	pop	ar3
      002264 ED               [12]  858 	mov	a,r5
      002265 C4               [12]  859 	swap	a
      002266 23               [12]  860 	rl	a
      002267 54 E0            [12]  861 	anl	a,#0xe0
      002269 CC               [12]  862 	xch	a,r4
      00226A C4               [12]  863 	swap	a
      00226B 23               [12]  864 	rl	a
      00226C CC               [12]  865 	xch	a,r4
      00226D 6C               [12]  866 	xrl	a,r4
      00226E CC               [12]  867 	xch	a,r4
      00226F 54 E0            [12]  868 	anl	a,#0xe0
      002271 CC               [12]  869 	xch	a,r4
      002272 6C               [12]  870 	xrl	a,r4
      002273 FD               [12]  871 	mov	r5,a
      002274 EC               [12]  872 	mov	a,r4
      002275 24 04            [12]  873 	add	a,#_u
      002277 FC               [12]  874 	mov	r4,a
      002278 ED               [12]  875 	mov	a,r5
      002279 34 80            [12]  876 	addc	a,#(_u >> 8)
      00227B FD               [12]  877 	mov	r5,a
      00227C 74 20            [12]  878 	mov	a,#0x20
      00227E 2A               [12]  879 	add	a,r2
      00227F FA               [12]  880 	mov	r2,a
      002280 E4               [12]  881 	clr	a
      002281 3B               [12]  882 	addc	a,r3
      002282 FB               [12]  883 	mov	r3,a
      002283 C0 05            [24]  884 	push	ar5
      002285 C0 04            [24]  885 	push	ar4
      002287 74 20            [12]  886 	mov	a,#0x20
      002289 C0 E0            [24]  887 	push	acc
      00228B E4               [12]  888 	clr	a
      00228C C0 E0            [24]  889 	push	acc
      00228E 8A 82            [24]  890 	mov	dpl,r2
      002290 8B 83            [24]  891 	mov	dph,r3
      002292 12 26 65         [24]  892 	lcall	__modsint
      002295 AA 82            [24]  893 	mov	r2,dpl
      002297 AB 83            [24]  894 	mov	r3,dph
      002299 15 81            [12]  895 	dec	sp
      00229B 15 81            [12]  896 	dec	sp
      00229D D0 04            [24]  897 	pop	ar4
      00229F D0 05            [24]  898 	pop	ar5
      0022A1 EA               [12]  899 	mov	a,r2
      0022A2 2C               [12]  900 	add	a,r4
      0022A3 FC               [12]  901 	mov	r4,a
      0022A4 EB               [12]  902 	mov	a,r3
      0022A5 3D               [12]  903 	addc	a,r5
      0022A6 FD               [12]  904 	mov	r5,a
      0022A7 8C 82            [24]  905 	mov	dpl,r4
      0022A9 8D 83            [24]  906 	mov	dph,r5
      0022AB E0               [24]  907 	movx	a,@dptr
      0022AC 60 0C            [24]  908 	jz	00115$
                                    909 ;	life.c:64: n++;
      0022AE 90 88 0C         [24]  910 	mov	dptr,#_n
      0022B1 E0               [24]  911 	movx	a,@dptr
      0022B2 24 01            [12]  912 	add	a,#0x01
      0022B4 F0               [24]  913 	movx	@dptr,a
      0022B5 A3               [24]  914 	inc	dptr
      0022B6 E0               [24]  915 	movx	a,@dptr
      0022B7 34 00            [12]  916 	addc	a,#0x00
      0022B9 F0               [24]  917 	movx	@dptr,a
      0022BA                        918 00115$:
                                    919 ;	life.c:62: for (x1 = x - 1; x1 <= x + 1; x1++)
      0022BA 90 88 08         [24]  920 	mov	dptr,#_x1
      0022BD E0               [24]  921 	movx	a,@dptr
      0022BE 24 01            [12]  922 	add	a,#0x01
      0022C0 F0               [24]  923 	movx	@dptr,a
      0022C1 A3               [24]  924 	inc	dptr
      0022C2 E0               [24]  925 	movx	a,@dptr
      0022C3 34 00            [12]  926 	addc	a,#0x00
      0022C5 F0               [24]  927 	movx	@dptr,a
      0022C6 02 22 10         [24]  928 	ljmp	00114$
      0022C9                        929 00118$:
                                    930 ;	life.c:61: for (y1 = y - 1; y1 <= y + 1; y1++)
      0022C9 90 88 0A         [24]  931 	mov	dptr,#_y1
      0022CC E0               [24]  932 	movx	a,@dptr
      0022CD 24 01            [12]  933 	add	a,#0x01
      0022CF F0               [24]  934 	movx	@dptr,a
      0022D0 A3               [24]  935 	inc	dptr
      0022D1 E0               [24]  936 	movx	a,@dptr
      0022D2 34 00            [12]  937 	addc	a,#0x00
      0022D4 F0               [24]  938 	movx	@dptr,a
      0022D5 02 21 D2         [24]  939 	ljmp	00117$
      0022D8                        940 00104$:
                                    941 ;	life.c:66: if (u[y][x]) n--;
      0022D8 EF               [12]  942 	mov	a,r7
      0022D9 C4               [12]  943 	swap	a
      0022DA 23               [12]  944 	rl	a
      0022DB 54 E0            [12]  945 	anl	a,#0xe0
      0022DD CE               [12]  946 	xch	a,r6
      0022DE C4               [12]  947 	swap	a
      0022DF 23               [12]  948 	rl	a
      0022E0 CE               [12]  949 	xch	a,r6
      0022E1 6E               [12]  950 	xrl	a,r6
      0022E2 CE               [12]  951 	xch	a,r6
      0022E3 54 E0            [12]  952 	anl	a,#0xe0
      0022E5 CE               [12]  953 	xch	a,r6
      0022E6 6E               [12]  954 	xrl	a,r6
      0022E7 FF               [12]  955 	mov	r7,a
      0022E8 EE               [12]  956 	mov	a,r6
      0022E9 24 04            [12]  957 	add	a,#_u
      0022EB FE               [12]  958 	mov	r6,a
      0022EC EF               [12]  959 	mov	a,r7
      0022ED 34 80            [12]  960 	addc	a,#(_u >> 8)
      0022EF FF               [12]  961 	mov	r7,a
      0022F0 90 88 04         [24]  962 	mov	dptr,#_x
      0022F3 E0               [24]  963 	movx	a,@dptr
      0022F4 FC               [12]  964 	mov	r4,a
      0022F5 A3               [24]  965 	inc	dptr
      0022F6 E0               [24]  966 	movx	a,@dptr
      0022F7 FD               [12]  967 	mov	r5,a
      0022F8 EC               [12]  968 	mov	a,r4
      0022F9 2E               [12]  969 	add	a,r6
      0022FA FE               [12]  970 	mov	r6,a
      0022FB ED               [12]  971 	mov	a,r5
      0022FC 3F               [12]  972 	addc	a,r7
      0022FD FF               [12]  973 	mov	r7,a
      0022FE 8E 82            [24]  974 	mov	dpl,r6
      002300 8F 83            [24]  975 	mov	dph,r7
      002302 E0               [24]  976 	movx	a,@dptr
      002303 60 14            [24]  977 	jz	00106$
      002305 90 88 0C         [24]  978 	mov	dptr,#_n
      002308 E0               [24]  979 	movx	a,@dptr
      002309 24 FF            [12]  980 	add	a,#0xff
      00230B FE               [12]  981 	mov	r6,a
      00230C A3               [24]  982 	inc	dptr
      00230D E0               [24]  983 	movx	a,@dptr
      00230E 34 FF            [12]  984 	addc	a,#0xff
      002310 FF               [12]  985 	mov	r7,a
      002311 90 88 0C         [24]  986 	mov	dptr,#_n
      002314 EE               [12]  987 	mov	a,r6
      002315 F0               [24]  988 	movx	@dptr,a
      002316 EF               [12]  989 	mov	a,r7
      002317 A3               [24]  990 	inc	dptr
      002318 F0               [24]  991 	movx	@dptr,a
      002319                        992 00106$:
                                    993 ;	life.c:67: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      002319 90 88 06         [24]  994 	mov	dptr,#_y
      00231C E0               [24]  995 	movx	a,@dptr
      00231D FE               [12]  996 	mov	r6,a
      00231E A3               [24]  997 	inc	dptr
      00231F E0               [24]  998 	movx	a,@dptr
      002320 C4               [12]  999 	swap	a
      002321 23               [12] 1000 	rl	a
      002322 54 E0            [12] 1001 	anl	a,#0xe0
      002324 CE               [12] 1002 	xch	a,r6
      002325 C4               [12] 1003 	swap	a
      002326 23               [12] 1004 	rl	a
      002327 CE               [12] 1005 	xch	a,r6
      002328 6E               [12] 1006 	xrl	a,r6
      002329 CE               [12] 1007 	xch	a,r6
      00232A 54 E0            [12] 1008 	anl	a,#0xe0
      00232C CE               [12] 1009 	xch	a,r6
      00232D 6E               [12] 1010 	xrl	a,r6
      00232E FF               [12] 1011 	mov	r7,a
      00232F EE               [12] 1012 	mov	a,r6
      002330 24 04            [12] 1013 	add	a,#_nu
      002332 FC               [12] 1014 	mov	r4,a
      002333 EF               [12] 1015 	mov	a,r7
      002334 34 84            [12] 1016 	addc	a,#(_nu >> 8)
      002336 FD               [12] 1017 	mov	r5,a
      002337 90 88 04         [24] 1018 	mov	dptr,#_x
      00233A E0               [24] 1019 	movx	a,@dptr
      00233B FA               [12] 1020 	mov	r2,a
      00233C A3               [24] 1021 	inc	dptr
      00233D E0               [24] 1022 	movx	a,@dptr
      00233E FB               [12] 1023 	mov	r3,a
      00233F EA               [12] 1024 	mov	a,r2
      002340 2C               [12] 1025 	add	a,r4
      002341 FC               [12] 1026 	mov	r4,a
      002342 EB               [12] 1027 	mov	a,r3
      002343 3D               [12] 1028 	addc	a,r5
      002344 FD               [12] 1029 	mov	r5,a
      002345 90 88 0C         [24] 1030 	mov	dptr,#_n
      002348 E0               [24] 1031 	movx	a,@dptr
      002349 F8               [12] 1032 	mov	r0,a
      00234A A3               [24] 1033 	inc	dptr
      00234B E0               [24] 1034 	movx	a,@dptr
      00234C F9               [12] 1035 	mov	r1,a
      00234D B8 03 05         [24] 1036 	cjne	r0,#0x03,00210$
      002350 B9 00 02         [24] 1037 	cjne	r1,#0x00,00210$
      002353 80 1F            [24] 1038 	sjmp	00130$
      002355                       1039 00210$:
      002355 B8 02 18         [24] 1040 	cjne	r0,#0x02,00129$
      002358 B9 00 15         [24] 1041 	cjne	r1,#0x00,00129$
      00235B EE               [12] 1042 	mov	a,r6
      00235C 24 04            [12] 1043 	add	a,#_u
      00235E FE               [12] 1044 	mov	r6,a
      00235F EF               [12] 1045 	mov	a,r7
      002360 34 80            [12] 1046 	addc	a,#(_u >> 8)
      002362 FF               [12] 1047 	mov	r7,a
      002363 EA               [12] 1048 	mov	a,r2
      002364 2E               [12] 1049 	add	a,r6
      002365 FA               [12] 1050 	mov	r2,a
      002366 EB               [12] 1051 	mov	a,r3
      002367 3F               [12] 1052 	addc	a,r7
      002368 FB               [12] 1053 	mov	r3,a
      002369 8A 82            [24] 1054 	mov	dpl,r2
      00236B 8B 83            [24] 1055 	mov	dph,r3
      00236D E0               [24] 1056 	movx	a,@dptr
      00236E 70 04            [24] 1057 	jnz	00130$
      002370                       1058 00129$:
                                   1059 ;	assignBit
      002370 C2 00            [12] 1060 	clr	b0
      002372 80 02            [24] 1061 	sjmp	00131$
      002374                       1062 00130$:
                                   1063 ;	assignBit
      002374 D2 00            [12] 1064 	setb	b0
      002376                       1065 00131$:
      002376 A2 00            [12] 1066 	mov	c,b0
      002378 E4               [12] 1067 	clr	a
      002379 33               [12] 1068 	rlc	a
      00237A 8C 82            [24] 1069 	mov	dpl,r4
      00237C 8D 83            [24] 1070 	mov	dph,r5
      00237E F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	life.c:59: for (x = 0; x < W; x++) {
      00237F 90 88 04         [24] 1073 	mov	dptr,#_x
      002382 E0               [24] 1074 	movx	a,@dptr
      002383 24 01            [12] 1075 	add	a,#0x01
      002385 F0               [24] 1076 	movx	@dptr,a
      002386 A3               [24] 1077 	inc	dptr
      002387 E0               [24] 1078 	movx	a,@dptr
      002388 34 00            [12] 1079 	addc	a,#0x00
      00238A F0               [24] 1080 	movx	@dptr,a
      00238B 90 88 04         [24] 1081 	mov	dptr,#_x
      00238E E0               [24] 1082 	movx	a,@dptr
      00238F FE               [12] 1083 	mov	r6,a
      002390 A3               [24] 1084 	inc	dptr
      002391 E0               [24] 1085 	movx	a,@dptr
      002392 FF               [12] 1086 	mov	r7,a
      002393 C3               [12] 1087 	clr	c
      002394 EE               [12] 1088 	mov	a,r6
      002395 94 20            [12] 1089 	subb	a,#0x20
      002397 EF               [12] 1090 	mov	a,r7
      002398 64 80            [12] 1091 	xrl	a,#0x80
      00239A 94 80            [12] 1092 	subb	a,#0x80
      00239C 50 03            [24] 1093 	jnc	00214$
      00239E 02 21 B6         [24] 1094 	ljmp	00119$
      0023A1                       1095 00214$:
                                   1096 ;	life.c:58: for (y = 0; y < H; y++) {
      0023A1 90 88 06         [24] 1097 	mov	dptr,#_y
      0023A4 E0               [24] 1098 	movx	a,@dptr
      0023A5 24 01            [12] 1099 	add	a,#0x01
      0023A7 F0               [24] 1100 	movx	@dptr,a
      0023A8 A3               [24] 1101 	inc	dptr
      0023A9 E0               [24] 1102 	movx	a,@dptr
      0023AA 34 00            [12] 1103 	addc	a,#0x00
      0023AC F0               [24] 1104 	movx	@dptr,a
      0023AD 90 88 06         [24] 1105 	mov	dptr,#_y
      0023B0 E0               [24] 1106 	movx	a,@dptr
      0023B1 FE               [12] 1107 	mov	r6,a
      0023B2 A3               [24] 1108 	inc	dptr
      0023B3 E0               [24] 1109 	movx	a,@dptr
      0023B4 FF               [12] 1110 	mov	r7,a
      0023B5 C3               [12] 1111 	clr	c
      0023B6 EE               [12] 1112 	mov	a,r6
      0023B7 94 20            [12] 1113 	subb	a,#0x20
      0023B9 EF               [12] 1114 	mov	a,r7
      0023BA 64 80            [12] 1115 	xrl	a,#0x80
      0023BC 94 80            [12] 1116 	subb	a,#0x80
      0023BE 50 03            [24] 1117 	jnc	00215$
      0023C0 02 21 AF         [24] 1118 	ljmp	00121$
      0023C3                       1119 00215$:
                                   1120 ;	life.c:71: for (y = 0; y < H; y++)
      0023C3 90 88 06         [24] 1121 	mov	dptr,#_y
      0023C6 E4               [12] 1122 	clr	a
      0023C7 F0               [24] 1123 	movx	@dptr,a
      0023C8 A3               [24] 1124 	inc	dptr
      0023C9 F0               [24] 1125 	movx	@dptr,a
      0023CA                       1126 00125$:
                                   1127 ;	life.c:72: for (x = 0; x < W; x++)
      0023CA 90 88 04         [24] 1128 	mov	dptr,#_x
      0023CD E4               [12] 1129 	clr	a
      0023CE F0               [24] 1130 	movx	@dptr,a
      0023CF A3               [24] 1131 	inc	dptr
      0023D0 F0               [24] 1132 	movx	@dptr,a
      0023D1                       1133 00123$:
                                   1134 ;	life.c:73: if (u[y][x] != nu[y][x]) {
      0023D1 90 88 06         [24] 1135 	mov	dptr,#_y
      0023D4 E0               [24] 1136 	movx	a,@dptr
      0023D5 FE               [12] 1137 	mov	r6,a
      0023D6 A3               [24] 1138 	inc	dptr
      0023D7 E0               [24] 1139 	movx	a,@dptr
      0023D8 C4               [12] 1140 	swap	a
      0023D9 23               [12] 1141 	rl	a
      0023DA 54 E0            [12] 1142 	anl	a,#0xe0
      0023DC CE               [12] 1143 	xch	a,r6
      0023DD C4               [12] 1144 	swap	a
      0023DE 23               [12] 1145 	rl	a
      0023DF CE               [12] 1146 	xch	a,r6
      0023E0 6E               [12] 1147 	xrl	a,r6
      0023E1 CE               [12] 1148 	xch	a,r6
      0023E2 54 E0            [12] 1149 	anl	a,#0xe0
      0023E4 CE               [12] 1150 	xch	a,r6
      0023E5 6E               [12] 1151 	xrl	a,r6
      0023E6 FF               [12] 1152 	mov	r7,a
      0023E7 EE               [12] 1153 	mov	a,r6
      0023E8 24 04            [12] 1154 	add	a,#_u
      0023EA FC               [12] 1155 	mov	r4,a
      0023EB EF               [12] 1156 	mov	a,r7
      0023EC 34 80            [12] 1157 	addc	a,#(_u >> 8)
      0023EE FD               [12] 1158 	mov	r5,a
      0023EF 90 88 04         [24] 1159 	mov	dptr,#_x
      0023F2 E0               [24] 1160 	movx	a,@dptr
      0023F3 FA               [12] 1161 	mov	r2,a
      0023F4 A3               [24] 1162 	inc	dptr
      0023F5 E0               [24] 1163 	movx	a,@dptr
      0023F6 FB               [12] 1164 	mov	r3,a
      0023F7 EA               [12] 1165 	mov	a,r2
      0023F8 2C               [12] 1166 	add	a,r4
      0023F9 F5 82            [12] 1167 	mov	dpl,a
      0023FB EB               [12] 1168 	mov	a,r3
      0023FC 3D               [12] 1169 	addc	a,r5
      0023FD F5 83            [12] 1170 	mov	dph,a
      0023FF EE               [12] 1171 	mov	a,r6
      002400 24 04            [12] 1172 	add	a,#_nu
      002402 FC               [12] 1173 	mov	r4,a
      002403 EF               [12] 1174 	mov	a,r7
      002404 34 84            [12] 1175 	addc	a,#(_nu >> 8)
      002406 FD               [12] 1176 	mov	r5,a
      002407 EA               [12] 1177 	mov	a,r2
      002408 2C               [12] 1178 	add	a,r4
      002409 FC               [12] 1179 	mov	r4,a
      00240A EB               [12] 1180 	mov	a,r3
      00240B 3D               [12] 1181 	addc	a,r5
      00240C FD               [12] 1182 	mov	r5,a
      00240D E0               [24] 1183 	movx	a,@dptr
      00240E F9               [12] 1184 	mov	r1,a
      00240F 8C 82            [24] 1185 	mov	dpl,r4
      002411 8D 83            [24] 1186 	mov	dph,r5
      002413 E0               [24] 1187 	movx	a,@dptr
      002414 FC               [12] 1188 	mov	r4,a
      002415 E9               [12] 1189 	mov	a,r1
      002416 B5 04 02         [24] 1190 	cjne	a,ar4,00216$
      002419 80 2C            [24] 1191 	sjmp	00124$
      00241B                       1192 00216$:
                                   1193 ;	life.c:74: u[y][x] = nu[y][x];
      00241B EE               [12] 1194 	mov	a,r6
      00241C 24 04            [12] 1195 	add	a,#_u
      00241E FC               [12] 1196 	mov	r4,a
      00241F EF               [12] 1197 	mov	a,r7
      002420 34 80            [12] 1198 	addc	a,#(_u >> 8)
      002422 FD               [12] 1199 	mov	r5,a
      002423 EA               [12] 1200 	mov	a,r2
      002424 2C               [12] 1201 	add	a,r4
      002425 FC               [12] 1202 	mov	r4,a
      002426 EB               [12] 1203 	mov	a,r3
      002427 3D               [12] 1204 	addc	a,r5
      002428 FD               [12] 1205 	mov	r5,a
      002429 EE               [12] 1206 	mov	a,r6
      00242A 24 04            [12] 1207 	add	a,#_nu
      00242C FE               [12] 1208 	mov	r6,a
      00242D EF               [12] 1209 	mov	a,r7
      00242E 34 84            [12] 1210 	addc	a,#(_nu >> 8)
      002430 FF               [12] 1211 	mov	r7,a
      002431 EA               [12] 1212 	mov	a,r2
      002432 2E               [12] 1213 	add	a,r6
      002433 F5 82            [12] 1214 	mov	dpl,a
      002435 EB               [12] 1215 	mov	a,r3
      002436 3F               [12] 1216 	addc	a,r7
      002437 F5 83            [12] 1217 	mov	dph,a
      002439 E0               [24] 1218 	movx	a,@dptr
      00243A FF               [12] 1219 	mov	r7,a
      00243B 8C 82            [24] 1220 	mov	dpl,r4
      00243D 8D 83            [24] 1221 	mov	dph,r5
      00243F F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	life.c:75: fixed = 0;
      002440 90 88 10         [24] 1224 	mov	dptr,#_fixed
      002443 E4               [12] 1225 	clr	a
      002444 F0               [24] 1226 	movx	@dptr,a
      002445 A3               [24] 1227 	inc	dptr
      002446 F0               [24] 1228 	movx	@dptr,a
      002447                       1229 00124$:
                                   1230 ;	life.c:72: for (x = 0; x < W; x++)
      002447 90 88 04         [24] 1231 	mov	dptr,#_x
      00244A E0               [24] 1232 	movx	a,@dptr
      00244B 24 01            [12] 1233 	add	a,#0x01
      00244D F0               [24] 1234 	movx	@dptr,a
      00244E A3               [24] 1235 	inc	dptr
      00244F E0               [24] 1236 	movx	a,@dptr
      002450 34 00            [12] 1237 	addc	a,#0x00
      002452 F0               [24] 1238 	movx	@dptr,a
      002453 90 88 04         [24] 1239 	mov	dptr,#_x
      002456 E0               [24] 1240 	movx	a,@dptr
      002457 FE               [12] 1241 	mov	r6,a
      002458 A3               [24] 1242 	inc	dptr
      002459 E0               [24] 1243 	movx	a,@dptr
      00245A FF               [12] 1244 	mov	r7,a
      00245B C3               [12] 1245 	clr	c
      00245C EE               [12] 1246 	mov	a,r6
      00245D 94 20            [12] 1247 	subb	a,#0x20
      00245F EF               [12] 1248 	mov	a,r7
      002460 64 80            [12] 1249 	xrl	a,#0x80
      002462 94 80            [12] 1250 	subb	a,#0x80
      002464 50 03            [24] 1251 	jnc	00217$
      002466 02 23 D1         [24] 1252 	ljmp	00123$
      002469                       1253 00217$:
                                   1254 ;	life.c:71: for (y = 0; y < H; y++)
      002469 90 88 06         [24] 1255 	mov	dptr,#_y
      00246C E0               [24] 1256 	movx	a,@dptr
      00246D 24 01            [12] 1257 	add	a,#0x01
      00246F F0               [24] 1258 	movx	@dptr,a
      002470 A3               [24] 1259 	inc	dptr
      002471 E0               [24] 1260 	movx	a,@dptr
      002472 34 00            [12] 1261 	addc	a,#0x00
      002474 F0               [24] 1262 	movx	@dptr,a
      002475 90 88 06         [24] 1263 	mov	dptr,#_y
      002478 E0               [24] 1264 	movx	a,@dptr
      002479 FE               [12] 1265 	mov	r6,a
      00247A A3               [24] 1266 	inc	dptr
      00247B E0               [24] 1267 	movx	a,@dptr
      00247C FF               [12] 1268 	mov	r7,a
      00247D C3               [12] 1269 	clr	c
      00247E EE               [12] 1270 	mov	a,r6
      00247F 94 20            [12] 1271 	subb	a,#0x20
      002481 EF               [12] 1272 	mov	a,r7
      002482 64 80            [12] 1273 	xrl	a,#0x80
      002484 94 80            [12] 1274 	subb	a,#0x80
      002486 50 03            [24] 1275 	jnc	00218$
      002488 02 23 CA         [24] 1276 	ljmp	00125$
      00248B                       1277 00218$:
                                   1278 ;	life.c:78: return;
                                   1279 ;	life.c:79: }
      00248B 22               [24] 1280 	ret
                                   1281 ;------------------------------------------------------------
                                   1282 ;Allocation info for local variables in function 'main'
                                   1283 ;------------------------------------------------------------
                                   1284 ;	life.c:81: void main(void) {
                                   1285 ;	-----------------------------------------
                                   1286 ;	 function main
                                   1287 ;	-----------------------------------------
      00248C                       1288 _main:
                                   1289 ;	life.c:82: i0 = i1 = 0;
      00248C 90 80 02         [24] 1290 	mov	dptr,#_i1
      00248F E4               [12] 1291 	clr	a
      002490 F0               [24] 1292 	movx	@dptr,a
      002491 A3               [24] 1293 	inc	dptr
      002492 F0               [24] 1294 	movx	@dptr,a
      002493 90 80 00         [24] 1295 	mov	dptr,#_i0
      002496 F0               [24] 1296 	movx	@dptr,a
      002497 A3               [24] 1297 	inc	dptr
      002498 F0               [24] 1298 	movx	@dptr,a
                                   1299 ;	life.c:84: IT0 = 1;
                                   1300 ;	assignBit
      002499 D2 88            [12] 1301 	setb	_IT0
                                   1302 ;	life.c:85: IT1 = 1;
                                   1303 ;	assignBit
      00249B D2 8A            [12] 1304 	setb	_IT1
                                   1305 ;	life.c:86: EX0 = 1;
                                   1306 ;	assignBit
      00249D D2 A8            [12] 1307 	setb	_EX0
                                   1308 ;	life.c:87: EX1 = 1;
                                   1309 ;	assignBit
      00249F D2 AA            [12] 1310 	setb	_EX1
                                   1311 ;	life.c:88: EA = 1;
                                   1312 ;	assignBit
      0024A1 D2 AF            [12] 1313 	setb	_EA
                                   1314 ;	life.c:90: while (!i0) {
      0024A3                       1315 00109$:
      0024A3 90 80 00         [24] 1316 	mov	dptr,#_i0
      0024A6 E0               [24] 1317 	movx	a,@dptr
      0024A7 F5 F0            [12] 1318 	mov	b,a
      0024A9 A3               [24] 1319 	inc	dptr
      0024AA E0               [24] 1320 	movx	a,@dptr
      0024AB 45 F0            [12] 1321 	orl	a,b
      0024AD 60 03            [24] 1322 	jz	00158$
      0024AF 02 25 C8         [24] 1323 	ljmp	00111$
      0024B2                       1324 00158$:
                                   1325 ;	life.c:91: printf("\033[2J\033[mINIT\n\r");
      0024B2 74 1C            [12] 1326 	mov	a,#___str_4
      0024B4 C0 E0            [24] 1327 	push	acc
      0024B6 74 3A            [12] 1328 	mov	a,#(___str_4 >> 8)
      0024B8 C0 E0            [24] 1329 	push	acc
      0024BA 74 80            [12] 1330 	mov	a,#0x80
      0024BC C0 E0            [24] 1331 	push	acc
      0024BE 12 26 2C         [24] 1332 	lcall	_printf
      0024C1 15 81            [12] 1333 	dec	sp
      0024C3 15 81            [12] 1334 	dec	sp
      0024C5 15 81            [12] 1335 	dec	sp
                                   1336 ;	life.c:92: for (y = 0; y < H; y++)
      0024C7 90 88 06         [24] 1337 	mov	dptr,#_y
      0024CA E4               [12] 1338 	clr	a
      0024CB F0               [24] 1339 	movx	@dptr,a
      0024CC A3               [24] 1340 	inc	dptr
      0024CD F0               [24] 1341 	movx	@dptr,a
      0024CE                       1342 00114$:
                                   1343 ;	life.c:93: for (x = 0; x < W; x++) {
      0024CE 90 88 04         [24] 1344 	mov	dptr,#_x
      0024D1 E4               [12] 1345 	clr	a
      0024D2 F0               [24] 1346 	movx	@dptr,a
      0024D3 A3               [24] 1347 	inc	dptr
      0024D4 F0               [24] 1348 	movx	@dptr,a
      0024D5                       1349 00112$:
                                   1350 ;	life.c:94: c = getchar();
      0024D5 12 20 7A         [24] 1351 	lcall	_getchar
      0024D8 AE 82            [24] 1352 	mov	r6,dpl
      0024DA AF 83            [24] 1353 	mov	r7,dph
      0024DC 90 88 12         [24] 1354 	mov	dptr,#_c
      0024DF EE               [12] 1355 	mov	a,r6
      0024E0 F0               [24] 1356 	movx	@dptr,a
      0024E1 EF               [12] 1357 	mov	a,r7
      0024E2 A3               [24] 1358 	inc	dptr
      0024E3 F0               [24] 1359 	movx	@dptr,a
                                   1360 ;	life.c:95: u[y][x] = c & 1;
      0024E4 90 88 06         [24] 1361 	mov	dptr,#_y
      0024E7 E0               [24] 1362 	movx	a,@dptr
      0024E8 FC               [12] 1363 	mov	r4,a
      0024E9 A3               [24] 1364 	inc	dptr
      0024EA E0               [24] 1365 	movx	a,@dptr
      0024EB C4               [12] 1366 	swap	a
      0024EC 23               [12] 1367 	rl	a
      0024ED 54 E0            [12] 1368 	anl	a,#0xe0
      0024EF CC               [12] 1369 	xch	a,r4
      0024F0 C4               [12] 1370 	swap	a
      0024F1 23               [12] 1371 	rl	a
      0024F2 CC               [12] 1372 	xch	a,r4
      0024F3 6C               [12] 1373 	xrl	a,r4
      0024F4 CC               [12] 1374 	xch	a,r4
      0024F5 54 E0            [12] 1375 	anl	a,#0xe0
      0024F7 CC               [12] 1376 	xch	a,r4
      0024F8 6C               [12] 1377 	xrl	a,r4
      0024F9 FD               [12] 1378 	mov	r5,a
      0024FA EC               [12] 1379 	mov	a,r4
      0024FB 24 04            [12] 1380 	add	a,#_u
      0024FD FC               [12] 1381 	mov	r4,a
      0024FE ED               [12] 1382 	mov	a,r5
      0024FF 34 80            [12] 1383 	addc	a,#(_u >> 8)
      002501 FD               [12] 1384 	mov	r5,a
      002502 90 88 04         [24] 1385 	mov	dptr,#_x
      002505 E0               [24] 1386 	movx	a,@dptr
      002506 FA               [12] 1387 	mov	r2,a
      002507 A3               [24] 1388 	inc	dptr
      002508 E0               [24] 1389 	movx	a,@dptr
      002509 FB               [12] 1390 	mov	r3,a
      00250A EA               [12] 1391 	mov	a,r2
      00250B 2C               [12] 1392 	add	a,r4
      00250C F5 82            [12] 1393 	mov	dpl,a
      00250E EB               [12] 1394 	mov	a,r3
      00250F 3D               [12] 1395 	addc	a,r5
      002510 F5 83            [12] 1396 	mov	dph,a
      002512 53 06 01         [24] 1397 	anl	ar6,#0x01
      002515 EE               [12] 1398 	mov	a,r6
      002516 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	life.c:93: for (x = 0; x < W; x++) {
      002517 90 88 04         [24] 1401 	mov	dptr,#_x
      00251A E0               [24] 1402 	movx	a,@dptr
      00251B 24 01            [12] 1403 	add	a,#0x01
      00251D F0               [24] 1404 	movx	@dptr,a
      00251E A3               [24] 1405 	inc	dptr
      00251F E0               [24] 1406 	movx	a,@dptr
      002520 34 00            [12] 1407 	addc	a,#0x00
      002522 F0               [24] 1408 	movx	@dptr,a
      002523 90 88 04         [24] 1409 	mov	dptr,#_x
      002526 E0               [24] 1410 	movx	a,@dptr
      002527 FE               [12] 1411 	mov	r6,a
      002528 A3               [24] 1412 	inc	dptr
      002529 E0               [24] 1413 	movx	a,@dptr
      00252A FF               [12] 1414 	mov	r7,a
      00252B C3               [12] 1415 	clr	c
      00252C EE               [12] 1416 	mov	a,r6
      00252D 94 20            [12] 1417 	subb	a,#0x20
      00252F EF               [12] 1418 	mov	a,r7
      002530 64 80            [12] 1419 	xrl	a,#0x80
      002532 94 80            [12] 1420 	subb	a,#0x80
      002534 40 9F            [24] 1421 	jc	00112$
                                   1422 ;	life.c:92: for (y = 0; y < H; y++)
      002536 90 88 06         [24] 1423 	mov	dptr,#_y
      002539 E0               [24] 1424 	movx	a,@dptr
      00253A 24 01            [12] 1425 	add	a,#0x01
      00253C F0               [24] 1426 	movx	@dptr,a
      00253D A3               [24] 1427 	inc	dptr
      00253E E0               [24] 1428 	movx	a,@dptr
      00253F 34 00            [12] 1429 	addc	a,#0x00
      002541 F0               [24] 1430 	movx	@dptr,a
      002542 90 88 06         [24] 1431 	mov	dptr,#_y
      002545 E0               [24] 1432 	movx	a,@dptr
      002546 FE               [12] 1433 	mov	r6,a
      002547 A3               [24] 1434 	inc	dptr
      002548 E0               [24] 1435 	movx	a,@dptr
      002549 FF               [12] 1436 	mov	r7,a
      00254A C3               [12] 1437 	clr	c
      00254B EE               [12] 1438 	mov	a,r6
      00254C 94 20            [12] 1439 	subb	a,#0x20
      00254E EF               [12] 1440 	mov	a,r7
      00254F 64 80            [12] 1441 	xrl	a,#0x80
      002551 94 80            [12] 1442 	subb	a,#0x80
      002553 50 03            [24] 1443 	jnc	00160$
      002555 02 24 CE         [24] 1444 	ljmp	00114$
      002558                       1445 00160$:
                                   1446 ;	life.c:97: printf("RDY\n\r");
      002558 74 2A            [12] 1447 	mov	a,#___str_5
      00255A C0 E0            [24] 1448 	push	acc
      00255C 74 3A            [12] 1449 	mov	a,#(___str_5 >> 8)
      00255E C0 E0            [24] 1450 	push	acc
      002560 74 80            [12] 1451 	mov	a,#0x80
      002562 C0 E0            [24] 1452 	push	acc
      002564 12 26 2C         [24] 1453 	lcall	_printf
      002567 15 81            [12] 1454 	dec	sp
      002569 15 81            [12] 1455 	dec	sp
      00256B 15 81            [12] 1456 	dec	sp
                                   1457 ;	life.c:98: (void)getchar();
      00256D 12 20 7A         [24] 1458 	lcall	_getchar
                                   1459 ;	life.c:100: population = 0;
      002570 90 88 0E         [24] 1460 	mov	dptr,#_population
      002573 E4               [12] 1461 	clr	a
      002574 F0               [24] 1462 	movx	@dptr,a
      002575 A3               [24] 1463 	inc	dptr
      002576 F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	life.c:102: i1 = 0;
      002577 90 80 02         [24] 1466 	mov	dptr,#_i1
      00257A F0               [24] 1467 	movx	@dptr,a
      00257B A3               [24] 1468 	inc	dptr
      00257C F0               [24] 1469 	movx	@dptr,a
                                   1470 ;	life.c:103: while (!i0 && !i1) {
      00257D                       1471 00106$:
      00257D 90 80 00         [24] 1472 	mov	dptr,#_i0
      002580 E0               [24] 1473 	movx	a,@dptr
      002581 F5 F0            [12] 1474 	mov	b,a
      002583 A3               [24] 1475 	inc	dptr
      002584 E0               [24] 1476 	movx	a,@dptr
      002585 45 F0            [12] 1477 	orl	a,b
      002587 60 03            [24] 1478 	jz	00161$
      002589 02 24 A3         [24] 1479 	ljmp	00109$
      00258C                       1480 00161$:
      00258C 90 80 02         [24] 1481 	mov	dptr,#_i1
      00258F E0               [24] 1482 	movx	a,@dptr
      002590 F5 F0            [12] 1483 	mov	b,a
      002592 A3               [24] 1484 	inc	dptr
      002593 E0               [24] 1485 	movx	a,@dptr
      002594 45 F0            [12] 1486 	orl	a,b
      002596 60 03            [24] 1487 	jz	00162$
      002598 02 24 A3         [24] 1488 	ljmp	00109$
      00259B                       1489 00162$:
                                   1490 ;	life.c:104: show();
      00259B 12 20 AE         [24] 1491 	lcall	_show
                                   1492 ;	life.c:105: evolve();
      00259E 12 21 A0         [24] 1493 	lcall	_evolve
                                   1494 ;	life.c:106: if (fixed) {
      0025A1 90 88 10         [24] 1495 	mov	dptr,#_fixed
      0025A4 E0               [24] 1496 	movx	a,@dptr
      0025A5 F5 F0            [12] 1497 	mov	b,a
      0025A7 A3               [24] 1498 	inc	dptr
      0025A8 E0               [24] 1499 	movx	a,@dptr
      0025A9 45 F0            [12] 1500 	orl	a,b
      0025AB 60 D0            [24] 1501 	jz	00106$
                                   1502 ;	life.c:107: printf("DONE\n\r");
      0025AD 74 30            [12] 1503 	mov	a,#___str_6
      0025AF C0 E0            [24] 1504 	push	acc
      0025B1 74 3A            [12] 1505 	mov	a,#(___str_6 >> 8)
      0025B3 C0 E0            [24] 1506 	push	acc
      0025B5 74 80            [12] 1507 	mov	a,#0x80
      0025B7 C0 E0            [24] 1508 	push	acc
      0025B9 12 26 2C         [24] 1509 	lcall	_printf
      0025BC 15 81            [12] 1510 	dec	sp
      0025BE 15 81            [12] 1511 	dec	sp
      0025C0 15 81            [12] 1512 	dec	sp
                                   1513 ;	life.c:108: (void)getchar();
      0025C2 12 20 7A         [24] 1514 	lcall	_getchar
                                   1515 ;	life.c:109: break;
      0025C5 02 24 A3         [24] 1516 	ljmp	00109$
      0025C8                       1517 00111$:
                                   1518 ;	life.c:114: EA = 0;
                                   1519 ;	assignBit
      0025C8 C2 AF            [12] 1520 	clr	_EA
                                   1521 ;	life.c:116: printf("TERM\n\r");
      0025CA 74 37            [12] 1522 	mov	a,#___str_7
      0025CC C0 E0            [24] 1523 	push	acc
      0025CE 74 3A            [12] 1524 	mov	a,#(___str_7 >> 8)
      0025D0 C0 E0            [24] 1525 	push	acc
      0025D2 74 80            [12] 1526 	mov	a,#0x80
      0025D4 C0 E0            [24] 1527 	push	acc
      0025D6 12 26 2C         [24] 1528 	lcall	_printf
      0025D9 15 81            [12] 1529 	dec	sp
      0025DB 15 81            [12] 1530 	dec	sp
      0025DD 15 81            [12] 1531 	dec	sp
                                   1532 ;	life.c:117: (void)getchar();
      0025DF 12 20 7A         [24] 1533 	lcall	_getchar
                                   1534 ;	life.c:121: __endasm;
      0025E2 02 00 00         [24] 1535 	ljmp	0
                                   1536 ;	life.c:122: }
      0025E5 22               [24] 1537 	ret
                                   1538 	.area CSEG    (CODE)
                                   1539 	.area CONST   (CODE)
                                   1540 	.area CONST   (CODE)
      0039FD                       1541 ___str_0:
      0039FD 1B                    1542 	.db 0x1b
      0039FE 5B 32 4A              1543 	.ascii "[2J"
      003A01 1B                    1544 	.db 0x1b
      003A02 5B 6D 25 30 34 78     1545 	.ascii "[m%04x"
      003A08 0D                    1546 	.db 0x0d
      003A09 0A                    1547 	.db 0x0a
      003A0A 00                    1548 	.db 0x00
                                   1549 	.area CSEG    (CODE)
                                   1550 	.area CONST   (CODE)
      003A0B                       1551 ___str_1:
      003A0B 1B                    1552 	.db 0x1b
      003A0C 5B 30 31 6D 5B 5D     1553 	.ascii "[01m[]"
      003A12 1B                    1554 	.db 0x1b
      003A13 5B 6D                 1555 	.ascii "[m"
      003A15 00                    1556 	.db 0x00
                                   1557 	.area CSEG    (CODE)
                                   1558 	.area CONST   (CODE)
      003A16                       1559 ___str_2:
      003A16 20 20                 1560 	.ascii "  "
      003A18 00                    1561 	.db 0x00
                                   1562 	.area CSEG    (CODE)
                                   1563 	.area CONST   (CODE)
      003A19                       1564 ___str_3:
      003A19 0D                    1565 	.db 0x0d
      003A1A 0A                    1566 	.db 0x0a
      003A1B 00                    1567 	.db 0x00
                                   1568 	.area CSEG    (CODE)
                                   1569 	.area CONST   (CODE)
      003A1C                       1570 ___str_4:
      003A1C 1B                    1571 	.db 0x1b
      003A1D 5B 32 4A              1572 	.ascii "[2J"
      003A20 1B                    1573 	.db 0x1b
      003A21 5B 6D 49 4E 49 54     1574 	.ascii "[mINIT"
      003A27 0A                    1575 	.db 0x0a
      003A28 0D                    1576 	.db 0x0d
      003A29 00                    1577 	.db 0x00
                                   1578 	.area CSEG    (CODE)
                                   1579 	.area CONST   (CODE)
      003A2A                       1580 ___str_5:
      003A2A 52 44 59              1581 	.ascii "RDY"
      003A2D 0A                    1582 	.db 0x0a
      003A2E 0D                    1583 	.db 0x0d
      003A2F 00                    1584 	.db 0x00
                                   1585 	.area CSEG    (CODE)
                                   1586 	.area CONST   (CODE)
      003A30                       1587 ___str_6:
      003A30 44 4F 4E 45           1588 	.ascii "DONE"
      003A34 0A                    1589 	.db 0x0a
      003A35 0D                    1590 	.db 0x0d
      003A36 00                    1591 	.db 0x00
                                   1592 	.area CSEG    (CODE)
                                   1593 	.area CONST   (CODE)
      003A37                       1594 ___str_7:
      003A37 54 45 52 4D           1595 	.ascii "TERM"
      003A3B 0A                    1596 	.db 0x0a
      003A3C 0D                    1597 	.db 0x0d
      003A3D 00                    1598 	.db 0x00
                                   1599 	.area CSEG    (CODE)
                                   1600 	.area XINIT   (CODE)
                                   1601 	.area CABS    (ABS,CODE)
