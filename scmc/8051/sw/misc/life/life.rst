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
                                     12 	.globl _show
                                     13 	.globl _int1
                                     14 	.globl _int0
                                     15 	.globl _getchar
                                     16 	.globl _putchar
                                     17 	.globl ___memcpy
                                     18 	.globl _memset
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
                                    142 	.globl _generation
                                    143 	.globl _cycle2
                                    144 	.globl _fixed
                                    145 	.globl _n
                                    146 	.globl _bstep
                                    147 	.globl _c
                                    148 	.globl _j
                                    149 	.globl _y1
                                    150 	.globl _x1
                                    151 	.globl _y
                                    152 	.globl _x
                                    153 	.globl _nu
                                    154 	.globl _u
                                    155 	.globl _pu
                                    156 	.globl _i1
                                    157 	.globl _i0
                                    158 ;--------------------------------------------------------
                                    159 ; special function registers
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           000080   163 _P0	=	0x0080
                           000081   164 _SP	=	0x0081
                           000082   165 _DPL	=	0x0082
                           000083   166 _DPH	=	0x0083
                           000087   167 _PCON	=	0x0087
                           000088   168 _TCON	=	0x0088
                           000089   169 _TMOD	=	0x0089
                           00008A   170 _TL0	=	0x008a
                           00008B   171 _TL1	=	0x008b
                           00008C   172 _TH0	=	0x008c
                           00008D   173 _TH1	=	0x008d
                           000090   174 _P1	=	0x0090
                           000098   175 _SCON	=	0x0098
                           000099   176 _SBUF	=	0x0099
                           0000A0   177 _P2	=	0x00a0
                           0000A8   178 _IE	=	0x00a8
                           0000B0   179 _P3	=	0x00b0
                           0000B8   180 _IP	=	0x00b8
                           0000C8   181 _T2CON	=	0x00c8
                           0000C9   182 _T2MOD	=	0x00c9
                           0000CA   183 _RCAP2L	=	0x00ca
                           0000CB   184 _RCAP2H	=	0x00cb
                           0000CC   185 _TL2	=	0x00cc
                           0000CD   186 _TH2	=	0x00cd
                           0000D0   187 _PSW	=	0x00d0
                           0000E0   188 _ACC	=	0x00e0
                           0000E0   189 _A	=	0x00e0
                           0000F0   190 _B	=	0x00f0
                                    191 ;--------------------------------------------------------
                                    192 ; special function bits
                                    193 ;--------------------------------------------------------
                                    194 	.area RSEG    (ABS,DATA)
      000000                        195 	.org 0x0000
                           000080   196 _P0_0	=	0x0080
                           000081   197 _P0_1	=	0x0081
                           000082   198 _P0_2	=	0x0082
                           000083   199 _P0_3	=	0x0083
                           000084   200 _P0_4	=	0x0084
                           000085   201 _P0_5	=	0x0085
                           000086   202 _P0_6	=	0x0086
                           000087   203 _P0_7	=	0x0087
                           000088   204 _IT0	=	0x0088
                           000089   205 _IE0	=	0x0089
                           00008A   206 _IT1	=	0x008a
                           00008B   207 _IE1	=	0x008b
                           00008C   208 _TR0	=	0x008c
                           00008D   209 _TF0	=	0x008d
                           00008E   210 _TR1	=	0x008e
                           00008F   211 _TF1	=	0x008f
                           000090   212 _P1_0	=	0x0090
                           000091   213 _P1_1	=	0x0091
                           000092   214 _P1_2	=	0x0092
                           000093   215 _P1_3	=	0x0093
                           000094   216 _P1_4	=	0x0094
                           000095   217 _P1_5	=	0x0095
                           000096   218 _P1_6	=	0x0096
                           000097   219 _P1_7	=	0x0097
                           000090   220 _T2	=	0x0090
                           000091   221 _T2EX	=	0x0091
                           000098   222 _RI	=	0x0098
                           000099   223 _TI	=	0x0099
                           00009A   224 _RB8	=	0x009a
                           00009B   225 _TB8	=	0x009b
                           00009C   226 _REN	=	0x009c
                           00009D   227 _SM2	=	0x009d
                           00009E   228 _SM1	=	0x009e
                           00009F   229 _SM0	=	0x009f
                           0000A0   230 _P2_0	=	0x00a0
                           0000A1   231 _P2_1	=	0x00a1
                           0000A2   232 _P2_2	=	0x00a2
                           0000A3   233 _P2_3	=	0x00a3
                           0000A4   234 _P2_4	=	0x00a4
                           0000A5   235 _P2_5	=	0x00a5
                           0000A6   236 _P2_6	=	0x00a6
                           0000A7   237 _P2_7	=	0x00a7
                           0000A8   238 _EX0	=	0x00a8
                           0000A9   239 _ET0	=	0x00a9
                           0000AA   240 _EX1	=	0x00aa
                           0000AB   241 _ET1	=	0x00ab
                           0000AC   242 _ES	=	0x00ac
                           0000AD   243 _ET2	=	0x00ad
                           0000AF   244 _EA	=	0x00af
                           0000B0   245 _P3_0	=	0x00b0
                           0000B1   246 _P3_1	=	0x00b1
                           0000B2   247 _P3_2	=	0x00b2
                           0000B3   248 _P3_3	=	0x00b3
                           0000B4   249 _P3_4	=	0x00b4
                           0000B5   250 _P3_5	=	0x00b5
                           0000B6   251 _P3_6	=	0x00b6
                           0000B7   252 _P3_7	=	0x00b7
                           0000B0   253 _RXD	=	0x00b0
                           0000B1   254 _TXD	=	0x00b1
                           0000B2   255 _INT0	=	0x00b2
                           0000B3   256 _INT1	=	0x00b3
                           0000B4   257 _T0	=	0x00b4
                           0000B5   258 _T1	=	0x00b5
                           0000B6   259 _WR	=	0x00b6
                           0000B7   260 _RD	=	0x00b7
                           0000B8   261 _PX0	=	0x00b8
                           0000B9   262 _PT0	=	0x00b9
                           0000BA   263 _PX1	=	0x00ba
                           0000BB   264 _PT1	=	0x00bb
                           0000BC   265 _PS	=	0x00bc
                           0000BD   266 _PT2	=	0x00bd
                           0000C8   267 _T2CON_0	=	0x00c8
                           0000C9   268 _T2CON_1	=	0x00c9
                           0000CA   269 _T2CON_2	=	0x00ca
                           0000CB   270 _T2CON_3	=	0x00cb
                           0000CC   271 _T2CON_4	=	0x00cc
                           0000CD   272 _T2CON_5	=	0x00cd
                           0000CE   273 _T2CON_6	=	0x00ce
                           0000CF   274 _T2CON_7	=	0x00cf
                           0000C8   275 _CP_RL2	=	0x00c8
                           0000C9   276 _C_T2	=	0x00c9
                           0000CA   277 _TR2	=	0x00ca
                           0000CB   278 _EXEN2	=	0x00cb
                           0000CC   279 _TCLK	=	0x00cc
                           0000CD   280 _RCLK	=	0x00cd
                           0000CE   281 _EXF2	=	0x00ce
                           0000CF   282 _TF2	=	0x00cf
                           0000D0   283 _P	=	0x00d0
                           0000D1   284 _FL	=	0x00d1
                           0000D2   285 _OV	=	0x00d2
                           0000D3   286 _RS0	=	0x00d3
                           0000D4   287 _RS1	=	0x00d4
                           0000D5   288 _F0	=	0x00d5
                           0000D6   289 _AC	=	0x00d6
                           0000D7   290 _CY	=	0x00d7
                                    291 ;--------------------------------------------------------
                                    292 ; overlayable register banks
                                    293 ;--------------------------------------------------------
                                    294 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        295 	.ds 8
                                    296 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        297 	.ds 8
                                    298 ;--------------------------------------------------------
                                    299 ; overlayable bit register bank
                                    300 ;--------------------------------------------------------
                                    301 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        302 bits:
      000020                        303 	.ds 1
                           008000   304 	b0 = bits[0]
                           008100   305 	b1 = bits[1]
                           008200   306 	b2 = bits[2]
                           008300   307 	b3 = bits[3]
                           008400   308 	b4 = bits[4]
                           008500   309 	b5 = bits[5]
                           008600   310 	b6 = bits[6]
                           008700   311 	b7 = bits[7]
                                    312 ;--------------------------------------------------------
                                    313 ; internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area DSEG    (DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; overlayable items in internal ram 
                                    318 ;--------------------------------------------------------
                                    319 ;--------------------------------------------------------
                                    320 ; Stack segment in internal ram 
                                    321 ;--------------------------------------------------------
                                    322 	.area	SSEG
      000021                        323 __start__stack:
      000021                        324 	.ds	1
                                    325 
                                    326 ;--------------------------------------------------------
                                    327 ; indirectly addressable internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area ISEG    (DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; absolute internal ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area IABS    (ABS,DATA)
                                    334 	.area IABS    (ABS,DATA)
                                    335 ;--------------------------------------------------------
                                    336 ; bit data
                                    337 ;--------------------------------------------------------
                                    338 	.area BSEG    (BIT)
                                    339 ;--------------------------------------------------------
                                    340 ; paged external ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area PSEG    (PAG,XDATA)
                                    343 ;--------------------------------------------------------
                                    344 ; external ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XSEG    (XDATA)
      008000                        347 _i0::
      008000                        348 	.ds 1
      008001                        349 _i1::
      008001                        350 	.ds 1
      008002                        351 _pu::
      008002                        352 	.ds 2048
      008802                        353 _u::
      008802                        354 	.ds 2048
      009002                        355 _nu::
      009002                        356 	.ds 2048
      009802                        357 _x::
      009802                        358 	.ds 2
      009804                        359 _y::
      009804                        360 	.ds 2
      009806                        361 _x1::
      009806                        362 	.ds 2
      009808                        363 _y1::
      009808                        364 	.ds 2
      00980A                        365 _j::
      00980A                        366 	.ds 2
      00980C                        367 _c::
      00980C                        368 	.ds 2
      00980E                        369 _bstep::
      00980E                        370 	.ds 1
      00980F                        371 _n::
      00980F                        372 	.ds 1
      009810                        373 _fixed::
      009810                        374 	.ds 1
      009811                        375 _cycle2::
      009811                        376 	.ds 1
      009812                        377 _generation::
      009812                        378 	.ds 4
                                    379 ;--------------------------------------------------------
                                    380 ; absolute external ram data
                                    381 ;--------------------------------------------------------
                                    382 	.area XABS    (ABS,XDATA)
                                    383 ;--------------------------------------------------------
                                    384 ; external initialized ram data
                                    385 ;--------------------------------------------------------
                                    386 	.area XISEG   (XDATA)
                                    387 	.area HOME    (CODE)
                                    388 	.area GSINIT0 (CODE)
                                    389 	.area GSINIT1 (CODE)
                                    390 	.area GSINIT2 (CODE)
                                    391 	.area GSINIT3 (CODE)
                                    392 	.area GSINIT4 (CODE)
                                    393 	.area GSINIT5 (CODE)
                                    394 	.area GSINIT  (CODE)
                                    395 	.area GSFINAL (CODE)
                                    396 	.area CSEG    (CODE)
                                    397 ;--------------------------------------------------------
                                    398 ; interrupt vector 
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
      002000                        401 __interrupt_vect:
      002000 02 20 19         [24]  402 	ljmp	__sdcc_gsinit_startup
      002003 02 20 83         [24]  403 	ljmp	_int0
      002006                        404 	.ds	5
      00200B 32               [24]  405 	reti
      00200C                        406 	.ds	7
      002013 02 20 96         [24]  407 	ljmp	_int1
                                    408 ;--------------------------------------------------------
                                    409 ; global & static initialisations
                                    410 ;--------------------------------------------------------
                                    411 	.area HOME    (CODE)
                                    412 	.area GSINIT  (CODE)
                                    413 	.area GSFINAL (CODE)
                                    414 	.area GSINIT  (CODE)
                                    415 	.globl __sdcc_gsinit_startup
                                    416 	.globl __sdcc_program_startup
                                    417 	.globl __start__stack
                                    418 	.globl __mcs51_genXINIT
                                    419 	.globl __mcs51_genXRAMCLEAR
                                    420 	.globl __mcs51_genRAMCLEAR
                                    421 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  422 	ljmp	__sdcc_program_startup
                                    423 ;--------------------------------------------------------
                                    424 ; Home
                                    425 ;--------------------------------------------------------
                                    426 	.area HOME    (CODE)
                                    427 	.area HOME    (CODE)
      002016                        428 __sdcc_program_startup:
      002016 02 23 0E         [24]  429 	ljmp	_main
                                    430 ;	return from main will return to caller
                                    431 ;--------------------------------------------------------
                                    432 ; code
                                    433 ;--------------------------------------------------------
                                    434 	.area CSEG    (CODE)
                                    435 ;------------------------------------------------------------
                                    436 ;Allocation info for local variables in function 'putchar'
                                    437 ;------------------------------------------------------------
                                    438 ;c                         Allocated to registers 
                                    439 ;------------------------------------------------------------
                                    440 ;	life.c:7: int putchar(int c) __naked {
                                    441 ;	-----------------------------------------
                                    442 ;	 function putchar
                                    443 ;	-----------------------------------------
      002075                        444 _putchar:
                                    445 ;	naked function: no prologue.
                                    446 ;	life.c:12: __endasm;
      002075 E5 82            [12]  447 	mov	a, dpl
      002077 02 00 30         [24]  448 	ljmp	0x0030
                                    449 ;	life.c:13: }
                                    450 ;	naked function: no epilogue.
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function 'getchar'
                                    453 ;------------------------------------------------------------
                                    454 ;	life.c:15: int getchar(void) __naked {
                                    455 ;	-----------------------------------------
                                    456 ;	 function getchar
                                    457 ;	-----------------------------------------
      00207A                        458 _getchar:
                                    459 ;	naked function: no prologue.
                                    460 ;	life.c:21: __endasm;
      00207A 12 00 32         [24]  461 	lcall	0x0032
      00207D F5 82            [12]  462 	mov	dpl, a
      00207F 75 83 00         [24]  463 	mov	dph, #0
      002082 22               [24]  464 	ret
                                    465 ;	life.c:22: }
                                    466 ;	naked function: no epilogue.
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'int0'
                                    469 ;------------------------------------------------------------
                                    470 ;	life.c:65: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    471 ;	-----------------------------------------
                                    472 ;	 function int0
                                    473 ;	-----------------------------------------
      002083                        474 _int0:
                           00000F   475 	ar7 = 0x0f
                           00000E   476 	ar6 = 0x0e
                           00000D   477 	ar5 = 0x0d
                           00000C   478 	ar4 = 0x0c
                           00000B   479 	ar3 = 0x0b
                           00000A   480 	ar2 = 0x0a
                           000009   481 	ar1 = 0x09
                           000008   482 	ar0 = 0x08
      002083 C0 E0            [24]  483 	push	acc
      002085 C0 82            [24]  484 	push	dpl
      002087 C0 83            [24]  485 	push	dph
                                    486 ;	life.c:66: i0 = 1;
      002089 90 80 00         [24]  487 	mov	dptr,#_i0
      00208C 74 01            [12]  488 	mov	a,#0x01
      00208E F0               [24]  489 	movx	@dptr,a
                                    490 ;	life.c:67: }
      00208F D0 83            [24]  491 	pop	dph
      002091 D0 82            [24]  492 	pop	dpl
      002093 D0 E0            [24]  493 	pop	acc
      002095 32               [24]  494 	reti
                                    495 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    496 ;	eliminated unneeded push/pop psw
                                    497 ;	eliminated unneeded push/pop b
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'int1'
                                    500 ;------------------------------------------------------------
                                    501 ;	life.c:69: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    502 ;	-----------------------------------------
                                    503 ;	 function int1
                                    504 ;	-----------------------------------------
      002096                        505 _int1:
      002096 C0 E0            [24]  506 	push	acc
      002098 C0 82            [24]  507 	push	dpl
      00209A C0 83            [24]  508 	push	dph
                                    509 ;	life.c:70: i1 = 1;
      00209C 90 80 01         [24]  510 	mov	dptr,#_i1
      00209F 74 01            [12]  511 	mov	a,#0x01
      0020A1 F0               [24]  512 	movx	@dptr,a
                                    513 ;	life.c:71: }
      0020A2 D0 83            [24]  514 	pop	dph
      0020A4 D0 82            [24]  515 	pop	dpl
      0020A6 D0 E0            [24]  516 	pop	acc
      0020A8 32               [24]  517 	reti
                                    518 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    519 ;	eliminated unneeded push/pop psw
                                    520 ;	eliminated unneeded push/pop b
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'show'
                                    523 ;------------------------------------------------------------
                                    524 ;hdr                       Allocated to registers r7 
                                    525 ;__1966080005              Allocated to registers 
                                    526 ;s                         Allocated to registers r5 r6 r7 
                                    527 ;__1310720001              Allocated to registers r6 r7 
                                    528 ;a                         Allocated to registers 
                                    529 ;__1310720003              Allocated to registers r6 r7 
                                    530 ;a                         Allocated to registers 
                                    531 ;__1966080008              Allocated to registers 
                                    532 ;s                         Allocated to registers r5 r6 r7 
                                    533 ;__2621440011              Allocated to registers 
                                    534 ;s                         Allocated to registers r5 r6 r7 
                                    535 ;------------------------------------------------------------
                                    536 ;	life.c:94: void show(char hdr) {
                                    537 ;	-----------------------------------------
                                    538 ;	 function show
                                    539 ;	-----------------------------------------
      0020A9                        540 _show:
                           000007   541 	ar7 = 0x07
                           000006   542 	ar6 = 0x06
                           000005   543 	ar5 = 0x05
                           000004   544 	ar4 = 0x04
                           000003   545 	ar3 = 0x03
                           000002   546 	ar2 = 0x02
                           000001   547 	ar1 = 0x01
                           000000   548 	ar0 = 0x00
                                    549 ;	life.c:95: if (hdr) {
      0020A9 E5 82            [12]  550 	mov	a,dpl
      0020AB FF               [12]  551 	mov	r7,a
      0020AC 70 03            [24]  552 	jnz	00190$
      0020AE 02 22 4F         [24]  553 	ljmp	00102$
      0020B1                        554 00190$:
                                    555 ;	life.c:96: printstr("\033[2J\033[m");
      0020B1 7D 7D            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2D            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2C 45         [24]  565 	lcall	__gptrget
      0020C0 FC               [12]  566 	mov	r4,a
      0020C1 60 10            [24]  567 	jz	00109$
      0020C3 7B 00            [12]  568 	mov	r3,#0x00
      0020C5 8C 82            [24]  569 	mov	dpl,r4
      0020C7 8B 83            [24]  570 	mov	dph,r3
      0020C9 12 20 75         [24]  571 	lcall	_putchar
      0020CC 0D               [12]  572 	inc	r5
                                    573 ;	life.c:96: printstr("\033[2J\033[m");
      0020CD BD 00 E7         [24]  574 	cjne	r5,#0x00,00121$
      0020D0 0E               [12]  575 	inc	r6
      0020D1 80 E4            [24]  576 	sjmp	00121$
      0020D3                        577 00109$:
                                    578 ;	life.c:88: print16x(generation[1]);
      0020D3 90 98 14         [24]  579 	mov	dptr,#(_generation + 0x0002)
      0020D6 E0               [24]  580 	movx	a,@dptr
      0020D7 FE               [12]  581 	mov	r6,a
      0020D8 A3               [24]  582 	inc	dptr
      0020D9 E0               [24]  583 	movx	a,@dptr
                                    584 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0020DA FF               [12]  585 	mov	r7,a
      0020DB C4               [12]  586 	swap	a
      0020DC 54 0F            [12]  587 	anl	a,#0x0f
      0020DE 30 E3 02         [24]  588 	jnb	acc.3,00193$
      0020E1 44 F0            [12]  589 	orl	a,#0xf0
      0020E3                        590 00193$:
      0020E3 FC               [12]  591 	mov	r4,a
      0020E4 33               [12]  592 	rlc	a
      0020E5 95 E0            [12]  593 	subb	a,acc
      0020E7 53 04 0F         [24]  594 	anl	ar4,#0x0f
      0020EA 7D 00            [12]  595 	mov	r5,#0x00
      0020EC EC               [12]  596 	mov	a,r4
      0020ED 24 6D            [12]  597 	add	a,#_digits
      0020EF F5 82            [12]  598 	mov	dpl,a
      0020F1 ED               [12]  599 	mov	a,r5
      0020F2 34 2D            [12]  600 	addc	a,#(_digits >> 8)
      0020F4 F5 83            [12]  601 	mov	dph,a
      0020F6 E4               [12]  602 	clr	a
      0020F7 93               [24]  603 	movc	a,@a+dptr
      0020F8 FD               [12]  604 	mov	r5,a
      0020F9 7C 00            [12]  605 	mov	r4,#0x00
      0020FB 8D 82            [24]  606 	mov	dpl,r5
      0020FD 8C 83            [24]  607 	mov	dph,r4
      0020FF 12 20 75         [24]  608 	lcall	_putchar
                                    609 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      002102 8F 05            [24]  610 	mov	ar5,r7
      002104 53 05 0F         [24]  611 	anl	ar5,#0x0f
      002107 7C 00            [12]  612 	mov	r4,#0x00
      002109 ED               [12]  613 	mov	a,r5
      00210A 24 6D            [12]  614 	add	a,#_digits
      00210C F5 82            [12]  615 	mov	dpl,a
      00210E EC               [12]  616 	mov	a,r4
      00210F 34 2D            [12]  617 	addc	a,#(_digits >> 8)
      002111 F5 83            [12]  618 	mov	dph,a
      002113 E4               [12]  619 	clr	a
      002114 93               [24]  620 	movc	a,@a+dptr
      002115 FD               [12]  621 	mov	r5,a
      002116 7C 00            [12]  622 	mov	r4,#0x00
      002118 8D 82            [24]  623 	mov	dpl,r5
      00211A 8C 83            [24]  624 	mov	dph,r4
      00211C 12 20 75         [24]  625 	lcall	_putchar
                                    626 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      00211F 8E 04            [24]  627 	mov	ar4,r6
      002121 EF               [12]  628 	mov	a,r7
      002122 C4               [12]  629 	swap	a
      002123 CC               [12]  630 	xch	a,r4
      002124 C4               [12]  631 	swap	a
      002125 54 0F            [12]  632 	anl	a,#0x0f
      002127 6C               [12]  633 	xrl	a,r4
      002128 CC               [12]  634 	xch	a,r4
      002129 54 0F            [12]  635 	anl	a,#0x0f
      00212B CC               [12]  636 	xch	a,r4
      00212C 6C               [12]  637 	xrl	a,r4
      00212D CC               [12]  638 	xch	a,r4
      00212E 30 E3 02         [24]  639 	jnb	acc.3,00194$
      002131 44 F0            [12]  640 	orl	a,#0xf0
      002133                        641 00194$:
      002133 53 04 0F         [24]  642 	anl	ar4,#0x0f
      002136 7D 00            [12]  643 	mov	r5,#0x00
      002138 EC               [12]  644 	mov	a,r4
      002139 24 6D            [12]  645 	add	a,#_digits
      00213B F5 82            [12]  646 	mov	dpl,a
      00213D ED               [12]  647 	mov	a,r5
      00213E 34 2D            [12]  648 	addc	a,#(_digits >> 8)
      002140 F5 83            [12]  649 	mov	dph,a
      002142 E4               [12]  650 	clr	a
      002143 93               [24]  651 	movc	a,@a+dptr
      002144 FD               [12]  652 	mov	r5,a
      002145 7C 00            [12]  653 	mov	r4,#0x00
      002147 8D 82            [24]  654 	mov	dpl,r5
      002149 8C 83            [24]  655 	mov	dph,r4
      00214B 12 20 75         [24]  656 	lcall	_putchar
                                    657 ;	life.c:40: putchar(digits[a & 0xf]);
      00214E 53 06 0F         [24]  658 	anl	ar6,#0x0f
      002151 7F 00            [12]  659 	mov	r7,#0x00
      002153 EE               [12]  660 	mov	a,r6
      002154 24 6D            [12]  661 	add	a,#_digits
      002156 F5 82            [12]  662 	mov	dpl,a
      002158 EF               [12]  663 	mov	a,r7
      002159 34 2D            [12]  664 	addc	a,#(_digits >> 8)
      00215B F5 83            [12]  665 	mov	dph,a
      00215D E4               [12]  666 	clr	a
      00215E 93               [24]  667 	movc	a,@a+dptr
      00215F FF               [12]  668 	mov	r7,a
      002160 7E 00            [12]  669 	mov	r6,#0x00
      002162 8F 82            [24]  670 	mov	dpl,r7
      002164 8E 83            [24]  671 	mov	dph,r6
      002166 12 20 75         [24]  672 	lcall	_putchar
                                    673 ;	life.c:89: print16x(generation[0]);
      002169 90 98 12         [24]  674 	mov	dptr,#_generation
      00216C E0               [24]  675 	movx	a,@dptr
      00216D FE               [12]  676 	mov	r6,a
      00216E A3               [24]  677 	inc	dptr
      00216F E0               [24]  678 	movx	a,@dptr
                                    679 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      002170 FF               [12]  680 	mov	r7,a
      002171 C4               [12]  681 	swap	a
      002172 54 0F            [12]  682 	anl	a,#0x0f
      002174 30 E3 02         [24]  683 	jnb	acc.3,00195$
      002177 44 F0            [12]  684 	orl	a,#0xf0
      002179                        685 00195$:
      002179 FC               [12]  686 	mov	r4,a
      00217A 33               [12]  687 	rlc	a
      00217B 95 E0            [12]  688 	subb	a,acc
      00217D 53 04 0F         [24]  689 	anl	ar4,#0x0f
      002180 7D 00            [12]  690 	mov	r5,#0x00
      002182 EC               [12]  691 	mov	a,r4
      002183 24 6D            [12]  692 	add	a,#_digits
      002185 F5 82            [12]  693 	mov	dpl,a
      002187 ED               [12]  694 	mov	a,r5
      002188 34 2D            [12]  695 	addc	a,#(_digits >> 8)
      00218A F5 83            [12]  696 	mov	dph,a
      00218C E4               [12]  697 	clr	a
      00218D 93               [24]  698 	movc	a,@a+dptr
      00218E FD               [12]  699 	mov	r5,a
      00218F 7C 00            [12]  700 	mov	r4,#0x00
      002191 8D 82            [24]  701 	mov	dpl,r5
      002193 8C 83            [24]  702 	mov	dph,r4
      002195 12 20 75         [24]  703 	lcall	_putchar
                                    704 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      002198 8F 05            [24]  705 	mov	ar5,r7
      00219A 53 05 0F         [24]  706 	anl	ar5,#0x0f
      00219D 7C 00            [12]  707 	mov	r4,#0x00
      00219F ED               [12]  708 	mov	a,r5
      0021A0 24 6D            [12]  709 	add	a,#_digits
      0021A2 F5 82            [12]  710 	mov	dpl,a
      0021A4 EC               [12]  711 	mov	a,r4
      0021A5 34 2D            [12]  712 	addc	a,#(_digits >> 8)
      0021A7 F5 83            [12]  713 	mov	dph,a
      0021A9 E4               [12]  714 	clr	a
      0021AA 93               [24]  715 	movc	a,@a+dptr
      0021AB FD               [12]  716 	mov	r5,a
      0021AC 7C 00            [12]  717 	mov	r4,#0x00
      0021AE 8D 82            [24]  718 	mov	dpl,r5
      0021B0 8C 83            [24]  719 	mov	dph,r4
      0021B2 12 20 75         [24]  720 	lcall	_putchar
                                    721 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      0021B5 8E 04            [24]  722 	mov	ar4,r6
      0021B7 EF               [12]  723 	mov	a,r7
      0021B8 C4               [12]  724 	swap	a
      0021B9 CC               [12]  725 	xch	a,r4
      0021BA C4               [12]  726 	swap	a
      0021BB 54 0F            [12]  727 	anl	a,#0x0f
      0021BD 6C               [12]  728 	xrl	a,r4
      0021BE CC               [12]  729 	xch	a,r4
      0021BF 54 0F            [12]  730 	anl	a,#0x0f
      0021C1 CC               [12]  731 	xch	a,r4
      0021C2 6C               [12]  732 	xrl	a,r4
      0021C3 CC               [12]  733 	xch	a,r4
      0021C4 30 E3 02         [24]  734 	jnb	acc.3,00196$
      0021C7 44 F0            [12]  735 	orl	a,#0xf0
      0021C9                        736 00196$:
      0021C9 53 04 0F         [24]  737 	anl	ar4,#0x0f
      0021CC 7D 00            [12]  738 	mov	r5,#0x00
      0021CE EC               [12]  739 	mov	a,r4
      0021CF 24 6D            [12]  740 	add	a,#_digits
      0021D1 F5 82            [12]  741 	mov	dpl,a
      0021D3 ED               [12]  742 	mov	a,r5
      0021D4 34 2D            [12]  743 	addc	a,#(_digits >> 8)
      0021D6 F5 83            [12]  744 	mov	dph,a
      0021D8 E4               [12]  745 	clr	a
      0021D9 93               [24]  746 	movc	a,@a+dptr
      0021DA FD               [12]  747 	mov	r5,a
      0021DB 7C 00            [12]  748 	mov	r4,#0x00
      0021DD 8D 82            [24]  749 	mov	dpl,r5
      0021DF 8C 83            [24]  750 	mov	dph,r4
      0021E1 12 20 75         [24]  751 	lcall	_putchar
                                    752 ;	life.c:40: putchar(digits[a & 0xf]);
      0021E4 53 06 0F         [24]  753 	anl	ar6,#0x0f
      0021E7 7F 00            [12]  754 	mov	r7,#0x00
      0021E9 EE               [12]  755 	mov	a,r6
      0021EA 24 6D            [12]  756 	add	a,#_digits
      0021EC F5 82            [12]  757 	mov	dpl,a
      0021EE EF               [12]  758 	mov	a,r7
      0021EF 34 2D            [12]  759 	addc	a,#(_digits >> 8)
      0021F1 F5 83            [12]  760 	mov	dph,a
      0021F3 E4               [12]  761 	clr	a
      0021F4 93               [24]  762 	movc	a,@a+dptr
      0021F5 FF               [12]  763 	mov	r7,a
      0021F6 7E 00            [12]  764 	mov	r6,#0x00
      0021F8 8F 82            [24]  765 	mov	dpl,r7
      0021FA 8E 83            [24]  766 	mov	dph,r6
      0021FC 12 20 75         [24]  767 	lcall	_putchar
                                    768 ;	life.c:98: printstr("\r\n");
      0021FF 7D 85            [12]  769 	mov	r5,#___str_1
      002201 7E 2D            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2C 45         [24]  778 	lcall	__gptrget
      00220E FC               [12]  779 	mov	r4,a
      00220F 60 10            [24]  780 	jz	00114$
      002211 7B 00            [12]  781 	mov	r3,#0x00
      002213 8C 82            [24]  782 	mov	dpl,r4
      002215 8B 83            [24]  783 	mov	dph,r3
      002217 12 20 75         [24]  784 	lcall	_putchar
      00221A 0D               [12]  785 	inc	r5
                                    786 ;	life.c:98: printstr("\r\n");
      00221B BD 00 E7         [24]  787 	cjne	r5,#0x00,00124$
      00221E 0E               [12]  788 	inc	r6
      00221F 80 E4            [24]  789 	sjmp	00124$
      002221                        790 00114$:
                                    791 ;	life.c:81: generation[0]++;
      002221 90 98 12         [24]  792 	mov	dptr,#_generation
      002224 E0               [24]  793 	movx	a,@dptr
      002225 FE               [12]  794 	mov	r6,a
      002226 A3               [24]  795 	inc	dptr
      002227 E0               [24]  796 	movx	a,@dptr
      002228 FF               [12]  797 	mov	r7,a
      002229 0E               [12]  798 	inc	r6
      00222A BE 00 01         [24]  799 	cjne	r6,#0x00,00199$
      00222D 0F               [12]  800 	inc	r7
      00222E                        801 00199$:
      00222E 90 98 12         [24]  802 	mov	dptr,#_generation
      002231 EE               [12]  803 	mov	a,r6
      002232 F0               [24]  804 	movx	@dptr,a
      002233 EF               [12]  805 	mov	a,r7
      002234 A3               [24]  806 	inc	dptr
      002235 F0               [24]  807 	movx	@dptr,a
                                    808 ;	life.c:82: if (!generation[0]) generation[1]++;
      002236 EE               [12]  809 	mov	a,r6
      002237 4F               [12]  810 	orl	a,r7
      002238 70 15            [24]  811 	jnz	00102$
      00223A 90 98 14         [24]  812 	mov	dptr,#(_generation + 0x0002)
      00223D E0               [24]  813 	movx	a,@dptr
      00223E FE               [12]  814 	mov	r6,a
      00223F A3               [24]  815 	inc	dptr
      002240 E0               [24]  816 	movx	a,@dptr
      002241 FF               [12]  817 	mov	r7,a
      002242 0E               [12]  818 	inc	r6
      002243 BE 00 01         [24]  819 	cjne	r6,#0x00,00201$
      002246 0F               [12]  820 	inc	r7
      002247                        821 00201$:
      002247 90 98 14         [24]  822 	mov	dptr,#(_generation + 0x0002)
      00224A EE               [12]  823 	mov	a,r6
      00224B F0               [24]  824 	movx	@dptr,a
      00224C EF               [12]  825 	mov	a,r7
      00224D A3               [24]  826 	inc	dptr
      00224E F0               [24]  827 	movx	@dptr,a
                                    828 ;	life.c:99: updategen();
      00224F                        829 00102$:
                                    830 ;	life.c:102: for (x = 0; x < W; x++) {
      00224F 90 98 02         [24]  831 	mov	dptr,#_x
      002252 E4               [12]  832 	clr	a
      002253 F0               [24]  833 	movx	@dptr,a
      002254 A3               [24]  834 	inc	dptr
      002255 F0               [24]  835 	movx	@dptr,a
      002256                        836 00131$:
                                    837 ;	life.c:103: for (y = 0; y < H; y++)
      002256 90 98 04         [24]  838 	mov	dptr,#_y
      002259 E4               [12]  839 	clr	a
      00225A F0               [24]  840 	movx	@dptr,a
      00225B A3               [24]  841 	inc	dptr
      00225C F0               [24]  842 	movx	@dptr,a
      00225D                        843 00126$:
                                    844 ;	life.c:104: if (u[A2D(W, y, x)]) {
      00225D 90 98 04         [24]  845 	mov	dptr,#_y
      002260 E0               [24]  846 	movx	a,@dptr
      002261 FE               [12]  847 	mov	r6,a
      002262 A3               [24]  848 	inc	dptr
      002263 E0               [24]  849 	movx	a,@dptr
      002264 C4               [12]  850 	swap	a
      002265 23               [12]  851 	rl	a
      002266 54 E0            [12]  852 	anl	a,#0xe0
      002268 CE               [12]  853 	xch	a,r6
      002269 C4               [12]  854 	swap	a
      00226A 23               [12]  855 	rl	a
      00226B CE               [12]  856 	xch	a,r6
      00226C 6E               [12]  857 	xrl	a,r6
      00226D CE               [12]  858 	xch	a,r6
      00226E 54 E0            [12]  859 	anl	a,#0xe0
      002270 CE               [12]  860 	xch	a,r6
      002271 6E               [12]  861 	xrl	a,r6
      002272 FF               [12]  862 	mov	r7,a
      002273 90 98 02         [24]  863 	mov	dptr,#_x
      002276 E0               [24]  864 	movx	a,@dptr
      002277 FC               [12]  865 	mov	r4,a
      002278 A3               [24]  866 	inc	dptr
      002279 E0               [24]  867 	movx	a,@dptr
      00227A FD               [12]  868 	mov	r5,a
      00227B EC               [12]  869 	mov	a,r4
      00227C 2E               [12]  870 	add	a,r6
      00227D FE               [12]  871 	mov	r6,a
      00227E ED               [12]  872 	mov	a,r5
      00227F 3F               [12]  873 	addc	a,r7
      002280 FF               [12]  874 	mov	r7,a
      002281 EE               [12]  875 	mov	a,r6
      002282 24 02            [12]  876 	add	a,#_u
      002284 FE               [12]  877 	mov	r6,a
      002285 EF               [12]  878 	mov	a,r7
      002286 34 88            [12]  879 	addc	a,#(_u >> 8)
      002288 FF               [12]  880 	mov	r7,a
      002289 8E 82            [24]  881 	mov	dpl,r6
      00228B 8F 83            [24]  882 	mov	dph,r7
      00228D E0               [24]  883 	movx	a,@dptr
      00228E 60 0E            [24]  884 	jz	00104$
                                    885 ;	life.c:105: putchar('['); putchar(']');
      002290 90 00 5B         [24]  886 	mov	dptr,#0x005b
      002293 12 20 75         [24]  887 	lcall	_putchar
      002296 90 00 5D         [24]  888 	mov	dptr,#0x005d
      002299 12 20 75         [24]  889 	lcall	_putchar
      00229C 80 0C            [24]  890 	sjmp	00127$
      00229E                        891 00104$:
                                    892 ;	life.c:107: putchar('#'); putchar('#');
      00229E 90 00 23         [24]  893 	mov	dptr,#0x0023
      0022A1 12 20 75         [24]  894 	lcall	_putchar
      0022A4 90 00 23         [24]  895 	mov	dptr,#0x0023
      0022A7 12 20 75         [24]  896 	lcall	_putchar
      0022AA                        897 00127$:
                                    898 ;	life.c:103: for (y = 0; y < H; y++)
      0022AA 90 98 04         [24]  899 	mov	dptr,#_y
      0022AD E0               [24]  900 	movx	a,@dptr
      0022AE 24 01            [12]  901 	add	a,#0x01
      0022B0 F0               [24]  902 	movx	@dptr,a
      0022B1 A3               [24]  903 	inc	dptr
      0022B2 E0               [24]  904 	movx	a,@dptr
      0022B3 34 00            [12]  905 	addc	a,#0x00
      0022B5 F0               [24]  906 	movx	@dptr,a
      0022B6 90 98 04         [24]  907 	mov	dptr,#_y
      0022B9 E0               [24]  908 	movx	a,@dptr
      0022BA FE               [12]  909 	mov	r6,a
      0022BB A3               [24]  910 	inc	dptr
      0022BC E0               [24]  911 	movx	a,@dptr
      0022BD FF               [12]  912 	mov	r7,a
      0022BE C3               [12]  913 	clr	c
      0022BF EE               [12]  914 	mov	a,r6
      0022C0 94 40            [12]  915 	subb	a,#0x40
      0022C2 EF               [12]  916 	mov	a,r7
      0022C3 64 80            [12]  917 	xrl	a,#0x80
      0022C5 94 80            [12]  918 	subb	a,#0x80
      0022C7 40 94            [24]  919 	jc	00126$
                                    920 ;	life.c:109: printstr("\r\n");
      0022C9 7D 85            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2D            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2C 45         [24]  930 	lcall	__gptrget
      0022D8 FC               [12]  931 	mov	r4,a
      0022D9 60 10            [24]  932 	jz	00119$
      0022DB 7B 00            [12]  933 	mov	r3,#0x00
      0022DD 8C 82            [24]  934 	mov	dpl,r4
      0022DF 8B 83            [24]  935 	mov	dph,r3
      0022E1 12 20 75         [24]  936 	lcall	_putchar
      0022E4 0D               [12]  937 	inc	r5
                                    938 ;	life.c:109: printstr("\r\n");
      0022E5 BD 00 E7         [24]  939 	cjne	r5,#0x00,00129$
      0022E8 0E               [12]  940 	inc	r6
      0022E9 80 E4            [24]  941 	sjmp	00129$
      0022EB                        942 00119$:
                                    943 ;	life.c:102: for (x = 0; x < W; x++) {
      0022EB 90 98 02         [24]  944 	mov	dptr,#_x
      0022EE E0               [24]  945 	movx	a,@dptr
      0022EF 24 01            [12]  946 	add	a,#0x01
      0022F1 F0               [24]  947 	movx	@dptr,a
      0022F2 A3               [24]  948 	inc	dptr
      0022F3 E0               [24]  949 	movx	a,@dptr
      0022F4 34 00            [12]  950 	addc	a,#0x00
      0022F6 F0               [24]  951 	movx	@dptr,a
      0022F7 90 98 02         [24]  952 	mov	dptr,#_x
      0022FA E0               [24]  953 	movx	a,@dptr
      0022FB FE               [12]  954 	mov	r6,a
      0022FC A3               [24]  955 	inc	dptr
      0022FD E0               [24]  956 	movx	a,@dptr
      0022FE FF               [12]  957 	mov	r7,a
      0022FF C3               [12]  958 	clr	c
      002300 EE               [12]  959 	mov	a,r6
      002301 94 20            [12]  960 	subb	a,#0x20
      002303 EF               [12]  961 	mov	a,r7
      002304 64 80            [12]  962 	xrl	a,#0x80
      002306 94 80            [12]  963 	subb	a,#0x80
      002308 50 03            [24]  964 	jnc	00206$
      00230A 02 22 56         [24]  965 	ljmp	00131$
      00230D                        966 00206$:
                                    967 ;	life.c:112: return;
                                    968 ;	life.c:113: }
      00230D 22               [24]  969 	ret
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'main'
                                    972 ;------------------------------------------------------------
                                    973 ;__2621440019              Allocated to registers 
                                    974 ;s                         Allocated to registers r5 r6 r7 
                                    975 ;__1310720013              Allocated to registers 
                                    976 ;s                         Allocated to registers r5 r6 r7 
                                    977 ;__1310720015              Allocated to registers r6 r7 
                                    978 ;a                         Allocated to registers r4 r5 
                                    979 ;__1310720017              Allocated to registers 
                                    980 ;s                         Allocated to registers r5 r6 r7 
                                    981 ;__2621440023              Allocated to registers 
                                    982 ;s                         Allocated to registers r5 r6 r7 
                                    983 ;__4587520027              Allocated to registers 
                                    984 ;s                         Allocated to registers r5 r6 r7 
                                    985 ;__3276800029              Allocated to registers 
                                    986 ;s                         Allocated to registers r5 r6 r7 
                                    987 ;__1310720031              Allocated to registers 
                                    988 ;s                         Allocated to registers r5 r6 r7 
                                    989 ;sloc0                     Allocated to stack - _bp +1
                                    990 ;sloc1                     Allocated to stack - _bp +3
                                    991 ;sloc2                     Allocated to stack - _bp +5
                                    992 ;sloc3                     Allocated to stack - _bp +6
                                    993 ;sloc4                     Allocated to stack - _bp +8
                                    994 ;sloc5                     Allocated to stack - _bp +10
                                    995 ;sloc6                     Allocated to stack - _bp +12
                                    996 ;sloc7                     Allocated to stack - _bp +14
                                    997 ;------------------------------------------------------------
                                    998 ;	life.c:196: void main(void) {
                                    999 ;	-----------------------------------------
                                   1000 ;	 function main
                                   1001 ;	-----------------------------------------
      00230E                       1002 _main:
      00230E C0 10            [24] 1003 	push	_bp
      002310 E5 81            [12] 1004 	mov	a,sp
      002312 F5 10            [12] 1005 	mov	_bp,a
      002314 24 0F            [12] 1006 	add	a,#0x0f
      002316 F5 81            [12] 1007 	mov	sp,a
                                   1008 ;	life.c:197: IT0 = 1;
                                   1009 ;	assignBit
      002318 D2 88            [12] 1010 	setb	_IT0
                                   1011 ;	life.c:198: IT1 = 1;
                                   1012 ;	assignBit
      00231A D2 8A            [12] 1013 	setb	_IT1
                                   1014 ;	life.c:199: EX0 = 1;
                                   1015 ;	assignBit
      00231C D2 A8            [12] 1016 	setb	_EX0
                                   1017 ;	life.c:200: EX1 = 1;
                                   1018 ;	assignBit
      00231E D2 AA            [12] 1019 	setb	_EX1
                                   1020 ;	life.c:201: EA = 1;
                                   1021 ;	assignBit
      002320 D2 AF            [12] 1022 	setb	_EA
                                   1023 ;	life.c:203: for (i0 = 0; !i0; ) {		
      002322 90 80 00         [24] 1024 	mov	dptr,#_i0
      002325 E4               [12] 1025 	clr	a
      002326 F0               [24] 1026 	movx	@dptr,a
      002327                       1027 00201$:
                                   1028 ;	life.c:204: printstr("\033[2J\033[mINIT\r\n");
      002327 7D 93            [12] 1029 	mov	r5,#___str_4
      002329 7E 2D            [12] 1030 	mov	r6,#(___str_4 >> 8)
      00232B 7F 80            [12] 1031 	mov	r7,#0x80
                                   1032 ;	life.c:48: return;
      00232D                       1033 00172$:
                                   1034 ;	life.c:46: for (; *s; s++) putchar(*s);
      00232D 8D 82            [24] 1035 	mov	dpl,r5
      00232F 8E 83            [24] 1036 	mov	dph,r6
      002331 8F F0            [24] 1037 	mov	b,r7
      002333 12 2C 45         [24] 1038 	lcall	__gptrget
      002336 FC               [12] 1039 	mov	r4,a
      002337 60 10            [24] 1040 	jz	00107$
      002339 7B 00            [12] 1041 	mov	r3,#0x00
      00233B 8C 82            [24] 1042 	mov	dpl,r4
      00233D 8B 83            [24] 1043 	mov	dph,r3
      00233F 12 20 75         [24] 1044 	lcall	_putchar
      002342 0D               [12] 1045 	inc	r5
                                   1046 ;	life.c:205: while (1) {
      002343 BD 00 E7         [24] 1047 	cjne	r5,#0x00,00172$
      002346 0E               [12] 1048 	inc	r6
      002347 80 E4            [24] 1049 	sjmp	00172$
      002349                       1050 00107$:
                                   1051 ;	life.c:206: c = getchar();
      002349 12 20 7A         [24] 1052 	lcall	_getchar
      00234C AE 82            [24] 1053 	mov	r6,dpl
      00234E AF 83            [24] 1054 	mov	r7,dph
      002350 90 98 0C         [24] 1055 	mov	dptr,#_c
      002353 EE               [12] 1056 	mov	a,r6
      002354 F0               [24] 1057 	movx	@dptr,a
      002355 EF               [12] 1058 	mov	a,r7
      002356 A3               [24] 1059 	inc	dptr
      002357 F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	life.c:207: if (i0 || (c == (int)'T')) goto terminate;
      002358 90 80 00         [24] 1062 	mov	dptr,#_i0
      00235B E0               [24] 1063 	movx	a,@dptr
      00235C 60 03            [24] 1064 	jz	00398$
      00235E 02 2B 14         [24] 1065 	ljmp	00127$
      002361                       1066 00398$:
      002361 BE 54 06         [24] 1067 	cjne	r6,#0x54,00399$
      002364 BF 00 03         [24] 1068 	cjne	r7,#0x00,00399$
      002367 02 2B 14         [24] 1069 	ljmp	00127$
      00236A                       1070 00399$:
                                   1071 ;	life.c:208: if (c == (int)'L') break;
      00236A BE 4C DC         [24] 1072 	cjne	r6,#0x4c,00107$
      00236D BF 00 D9         [24] 1073 	cjne	r7,#0x00,00107$
                                   1074 ;	life.c:211: reload:
      002370                       1075 00109$:
                                   1076 ;	life.c:116: memset(u, 0, sizeof (u));
      002370 E4               [12] 1077 	clr	a
      002371 C0 E0            [24] 1078 	push	acc
      002373 74 08            [12] 1079 	mov	a,#0x08
      002375 C0 E0            [24] 1080 	push	acc
      002377 E4               [12] 1081 	clr	a
      002378 C0 E0            [24] 1082 	push	acc
      00237A 90 88 02         [24] 1083 	mov	dptr,#_u
      00237D 75 F0 00         [24] 1084 	mov	b,#0x00
      002380 12 2B DB         [24] 1085 	lcall	_memset
      002383 15 81            [12] 1086 	dec	sp
      002385 15 81            [12] 1087 	dec	sp
      002387 15 81            [12] 1088 	dec	sp
                                   1089 ;	life.c:117: memset(pu, 0, sizeof (pu));
      002389 E4               [12] 1090 	clr	a
      00238A C0 E0            [24] 1091 	push	acc
      00238C 74 08            [12] 1092 	mov	a,#0x08
      00238E C0 E0            [24] 1093 	push	acc
      002390 E4               [12] 1094 	clr	a
      002391 C0 E0            [24] 1095 	push	acc
      002393 90 80 02         [24] 1096 	mov	dptr,#_pu
      002396 75 F0 00         [24] 1097 	mov	b,#0x00
      002399 12 2B DB         [24] 1098 	lcall	_memset
      00239C 15 81            [12] 1099 	dec	sp
      00239E 15 81            [12] 1100 	dec	sp
      0023A0 15 81            [12] 1101 	dec	sp
                                   1102 ;	life.c:123: j = 0;
      0023A2 90 98 0A         [24] 1103 	mov	dptr,#_j
      0023A5 E4               [12] 1104 	clr	a
      0023A6 F0               [24] 1105 	movx	@dptr,a
      0023A7 A3               [24] 1106 	inc	dptr
      0023A8 F0               [24] 1107 	movx	@dptr,a
                                   1108 ;	life.c:125: printstr("LOAD <");
      0023A9 7D 88            [12] 1109 	mov	r5,#___str_2
      0023AB 7E 2D            [12] 1110 	mov	r6,#(___str_2 >> 8)
      0023AD 7F 80            [12] 1111 	mov	r7,#0x80
                                   1112 ;	life.c:48: return;
      0023AF                       1113 00175$:
                                   1114 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023AF 8D 82            [24] 1115 	mov	dpl,r5
      0023B1 8E 83            [24] 1116 	mov	dph,r6
      0023B3 8F F0            [24] 1117 	mov	b,r7
      0023B5 12 2C 45         [24] 1118 	lcall	__gptrget
      0023B8 FC               [12] 1119 	mov	r4,a
      0023B9 60 10            [24] 1120 	jz	00132$
      0023BB 7B 00            [12] 1121 	mov	r3,#0x00
      0023BD 8C 82            [24] 1122 	mov	dpl,r4
      0023BF 8B 83            [24] 1123 	mov	dph,r3
      0023C1 12 20 75         [24] 1124 	lcall	_putchar
      0023C4 0D               [12] 1125 	inc	r5
                                   1126 ;	life.c:125: printstr("LOAD <");
      0023C5 BD 00 E7         [24] 1127 	cjne	r5,#0x00,00175$
      0023C8 0E               [12] 1128 	inc	r6
      0023C9 80 E4            [24] 1129 	sjmp	00175$
      0023CB                       1130 00132$:
                                   1131 ;	life.c:127: for (y = 0; y < H; y++)
      0023CB 90 98 04         [24] 1132 	mov	dptr,#_y
      0023CE E4               [12] 1133 	clr	a
      0023CF F0               [24] 1134 	movx	@dptr,a
      0023D0 A3               [24] 1135 	inc	dptr
      0023D1 F0               [24] 1136 	movx	@dptr,a
      0023D2                       1137 00179$:
                                   1138 ;	life.c:128: for (x = 0; x < W; x++) {
      0023D2 90 98 02         [24] 1139 	mov	dptr,#_x
      0023D5 E4               [12] 1140 	clr	a
      0023D6 F0               [24] 1141 	movx	@dptr,a
      0023D7 A3               [24] 1142 	inc	dptr
      0023D8 F0               [24] 1143 	movx	@dptr,a
      0023D9                       1144 00177$:
                                   1145 ;	life.c:129: c = getchar();
      0023D9 12 20 7A         [24] 1146 	lcall	_getchar
      0023DC AE 82            [24] 1147 	mov	r6,dpl
      0023DE AF 83            [24] 1148 	mov	r7,dph
      0023E0 90 98 0C         [24] 1149 	mov	dptr,#_c
      0023E3 EE               [12] 1150 	mov	a,r6
      0023E4 F0               [24] 1151 	movx	@dptr,a
      0023E5 EF               [12] 1152 	mov	a,r7
      0023E6 A3               [24] 1153 	inc	dptr
      0023E7 F0               [24] 1154 	movx	@dptr,a
                                   1155 ;	life.c:130: if (c == (int)'0') {
      0023E8 BE 30 41         [24] 1156 	cjne	r6,#0x30,00139$
      0023EB BF 00 3E         [24] 1157 	cjne	r7,#0x00,00139$
                                   1158 ;	life.c:131: u[A2D(W, y, x)] = 0;
      0023EE 90 98 04         [24] 1159 	mov	dptr,#_y
      0023F1 E0               [24] 1160 	movx	a,@dptr
      0023F2 FC               [12] 1161 	mov	r4,a
      0023F3 A3               [24] 1162 	inc	dptr
      0023F4 E0               [24] 1163 	movx	a,@dptr
      0023F5 C4               [12] 1164 	swap	a
      0023F6 23               [12] 1165 	rl	a
      0023F7 54 E0            [12] 1166 	anl	a,#0xe0
      0023F9 CC               [12] 1167 	xch	a,r4
      0023FA C4               [12] 1168 	swap	a
      0023FB 23               [12] 1169 	rl	a
      0023FC CC               [12] 1170 	xch	a,r4
      0023FD 6C               [12] 1171 	xrl	a,r4
      0023FE CC               [12] 1172 	xch	a,r4
      0023FF 54 E0            [12] 1173 	anl	a,#0xe0
      002401 CC               [12] 1174 	xch	a,r4
      002402 6C               [12] 1175 	xrl	a,r4
      002403 FD               [12] 1176 	mov	r5,a
      002404 90 98 02         [24] 1177 	mov	dptr,#_x
      002407 E0               [24] 1178 	movx	a,@dptr
      002408 FA               [12] 1179 	mov	r2,a
      002409 A3               [24] 1180 	inc	dptr
      00240A E0               [24] 1181 	movx	a,@dptr
      00240B FB               [12] 1182 	mov	r3,a
      00240C EA               [12] 1183 	mov	a,r2
      00240D 2C               [12] 1184 	add	a,r4
      00240E FC               [12] 1185 	mov	r4,a
      00240F EB               [12] 1186 	mov	a,r3
      002410 3D               [12] 1187 	addc	a,r5
      002411 FD               [12] 1188 	mov	r5,a
      002412 EC               [12] 1189 	mov	a,r4
      002413 24 02            [12] 1190 	add	a,#_u
      002415 F5 82            [12] 1191 	mov	dpl,a
      002417 ED               [12] 1192 	mov	a,r5
      002418 34 88            [12] 1193 	addc	a,#(_u >> 8)
      00241A F5 83            [12] 1194 	mov	dph,a
      00241C E4               [12] 1195 	clr	a
      00241D F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	life.c:132: j++;
      00241E 90 98 0A         [24] 1198 	mov	dptr,#_j
      002421 E0               [24] 1199 	movx	a,@dptr
      002422 24 01            [12] 1200 	add	a,#0x01
      002424 F0               [24] 1201 	movx	@dptr,a
      002425 A3               [24] 1202 	inc	dptr
      002426 E0               [24] 1203 	movx	a,@dptr
      002427 34 00            [12] 1204 	addc	a,#0x00
      002429 F0               [24] 1205 	movx	@dptr,a
      00242A 80 4D            [24] 1206 	sjmp	00178$
      00242C                       1207 00139$:
                                   1208 ;	life.c:133: } else if (c == (int)'1') {
      00242C BE 31 42         [24] 1209 	cjne	r6,#0x31,00137$
      00242F BF 00 3F         [24] 1210 	cjne	r7,#0x00,00137$
                                   1211 ;	life.c:134: u[A2D(W, y, x)] = 1;
      002432 90 98 04         [24] 1212 	mov	dptr,#_y
      002435 E0               [24] 1213 	movx	a,@dptr
      002436 FC               [12] 1214 	mov	r4,a
      002437 A3               [24] 1215 	inc	dptr
      002438 E0               [24] 1216 	movx	a,@dptr
      002439 C4               [12] 1217 	swap	a
      00243A 23               [12] 1218 	rl	a
      00243B 54 E0            [12] 1219 	anl	a,#0xe0
      00243D CC               [12] 1220 	xch	a,r4
      00243E C4               [12] 1221 	swap	a
      00243F 23               [12] 1222 	rl	a
      002440 CC               [12] 1223 	xch	a,r4
      002441 6C               [12] 1224 	xrl	a,r4
      002442 CC               [12] 1225 	xch	a,r4
      002443 54 E0            [12] 1226 	anl	a,#0xe0
      002445 CC               [12] 1227 	xch	a,r4
      002446 6C               [12] 1228 	xrl	a,r4
      002447 FD               [12] 1229 	mov	r5,a
      002448 90 98 02         [24] 1230 	mov	dptr,#_x
      00244B E0               [24] 1231 	movx	a,@dptr
      00244C FA               [12] 1232 	mov	r2,a
      00244D A3               [24] 1233 	inc	dptr
      00244E E0               [24] 1234 	movx	a,@dptr
      00244F FB               [12] 1235 	mov	r3,a
      002450 EA               [12] 1236 	mov	a,r2
      002451 2C               [12] 1237 	add	a,r4
      002452 FC               [12] 1238 	mov	r4,a
      002453 EB               [12] 1239 	mov	a,r3
      002454 3D               [12] 1240 	addc	a,r5
      002455 FD               [12] 1241 	mov	r5,a
      002456 EC               [12] 1242 	mov	a,r4
      002457 24 02            [12] 1243 	add	a,#_u
      002459 F5 82            [12] 1244 	mov	dpl,a
      00245B ED               [12] 1245 	mov	a,r5
      00245C 34 88            [12] 1246 	addc	a,#(_u >> 8)
      00245E F5 83            [12] 1247 	mov	dph,a
      002460 74 01            [12] 1248 	mov	a,#0x01
      002462 F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	life.c:135: j++;
      002463 90 98 0A         [24] 1251 	mov	dptr,#_j
      002466 E0               [24] 1252 	movx	a,@dptr
      002467 24 01            [12] 1253 	add	a,#0x01
      002469 F0               [24] 1254 	movx	@dptr,a
      00246A A3               [24] 1255 	inc	dptr
      00246B E0               [24] 1256 	movx	a,@dptr
      00246C 34 00            [12] 1257 	addc	a,#0x00
      00246E F0               [24] 1258 	movx	@dptr,a
      00246F 80 08            [24] 1259 	sjmp	00178$
      002471                       1260 00137$:
                                   1261 ;	life.c:136: } else if (c == (int)'#') goto out;
      002471 BE 23 05         [24] 1262 	cjne	r6,#0x23,00408$
      002474 BF 00 02         [24] 1263 	cjne	r7,#0x00,00408$
      002477 80 44            [24] 1264 	sjmp	00150$
      002479                       1265 00408$:
      002479                       1266 00178$:
                                   1267 ;	life.c:128: for (x = 0; x < W; x++) {
      002479 90 98 02         [24] 1268 	mov	dptr,#_x
      00247C E0               [24] 1269 	movx	a,@dptr
      00247D 24 01            [12] 1270 	add	a,#0x01
      00247F F0               [24] 1271 	movx	@dptr,a
      002480 A3               [24] 1272 	inc	dptr
      002481 E0               [24] 1273 	movx	a,@dptr
      002482 34 00            [12] 1274 	addc	a,#0x00
      002484 F0               [24] 1275 	movx	@dptr,a
      002485 90 98 02         [24] 1276 	mov	dptr,#_x
      002488 E0               [24] 1277 	movx	a,@dptr
      002489 FE               [12] 1278 	mov	r6,a
      00248A A3               [24] 1279 	inc	dptr
      00248B E0               [24] 1280 	movx	a,@dptr
      00248C FF               [12] 1281 	mov	r7,a
      00248D C3               [12] 1282 	clr	c
      00248E EE               [12] 1283 	mov	a,r6
      00248F 94 20            [12] 1284 	subb	a,#0x20
      002491 EF               [12] 1285 	mov	a,r7
      002492 64 80            [12] 1286 	xrl	a,#0x80
      002494 94 80            [12] 1287 	subb	a,#0x80
      002496 50 03            [24] 1288 	jnc	00409$
      002498 02 23 D9         [24] 1289 	ljmp	00177$
      00249B                       1290 00409$:
                                   1291 ;	life.c:127: for (y = 0; y < H; y++)
      00249B 90 98 04         [24] 1292 	mov	dptr,#_y
      00249E E0               [24] 1293 	movx	a,@dptr
      00249F 24 01            [12] 1294 	add	a,#0x01
      0024A1 F0               [24] 1295 	movx	@dptr,a
      0024A2 A3               [24] 1296 	inc	dptr
      0024A3 E0               [24] 1297 	movx	a,@dptr
      0024A4 34 00            [12] 1298 	addc	a,#0x00
      0024A6 F0               [24] 1299 	movx	@dptr,a
      0024A7 90 98 04         [24] 1300 	mov	dptr,#_y
      0024AA E0               [24] 1301 	movx	a,@dptr
      0024AB FE               [12] 1302 	mov	r6,a
      0024AC A3               [24] 1303 	inc	dptr
      0024AD E0               [24] 1304 	movx	a,@dptr
      0024AE FF               [12] 1305 	mov	r7,a
      0024AF C3               [12] 1306 	clr	c
      0024B0 EE               [12] 1307 	mov	a,r6
      0024B1 94 40            [12] 1308 	subb	a,#0x40
      0024B3 EF               [12] 1309 	mov	a,r7
      0024B4 64 80            [12] 1310 	xrl	a,#0x80
      0024B6 94 80            [12] 1311 	subb	a,#0x80
      0024B8 50 03            [24] 1312 	jnc	00410$
      0024BA 02 23 D2         [24] 1313 	ljmp	00179$
      0024BD                       1314 00410$:
                                   1315 ;	life.c:139: out:
      0024BD                       1316 00150$:
                                   1317 ;	life.c:140: if (c != (int)'#')
      0024BD 90 98 0C         [24] 1318 	mov	dptr,#_c
      0024C0 E0               [24] 1319 	movx	a,@dptr
      0024C1 FE               [12] 1320 	mov	r6,a
      0024C2 A3               [24] 1321 	inc	dptr
      0024C3 E0               [24] 1322 	movx	a,@dptr
      0024C4 FF               [12] 1323 	mov	r7,a
      0024C5 BE 23 05         [24] 1324 	cjne	r6,#0x23,00411$
      0024C8 BF 00 02         [24] 1325 	cjne	r7,#0x00,00411$
      0024CB 80 15            [24] 1326 	sjmp	00149$
      0024CD                       1327 00411$:
                                   1328 ;	life.c:141: while (1) {
      0024CD                       1329 00146$:
                                   1330 ;	life.c:142: c = getchar();
      0024CD 12 20 7A         [24] 1331 	lcall	_getchar
      0024D0 AE 82            [24] 1332 	mov	r6,dpl
      0024D2 AF 83            [24] 1333 	mov	r7,dph
      0024D4 90 98 0C         [24] 1334 	mov	dptr,#_c
      0024D7 EE               [12] 1335 	mov	a,r6
      0024D8 F0               [24] 1336 	movx	@dptr,a
      0024D9 EF               [12] 1337 	mov	a,r7
      0024DA A3               [24] 1338 	inc	dptr
      0024DB F0               [24] 1339 	movx	@dptr,a
                                   1340 ;	life.c:143: if (c == (int)'#') break;
      0024DC BE 23 EE         [24] 1341 	cjne	r6,#0x23,00146$
      0024DF BF 00 EB         [24] 1342 	cjne	r7,#0x00,00146$
      0024E2                       1343 00149$:
                                   1344 ;	life.c:145: print16x(j);
      0024E2 90 98 0A         [24] 1345 	mov	dptr,#_j
      0024E5 E0               [24] 1346 	movx	a,@dptr
      0024E6 FE               [12] 1347 	mov	r6,a
      0024E7 A3               [24] 1348 	inc	dptr
      0024E8 E0               [24] 1349 	movx	a,@dptr
                                   1350 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0024E9 8E 04            [24] 1351 	mov	ar4,r6
      0024EB FD               [12] 1352 	mov	r5,a
      0024EC C4               [12] 1353 	swap	a
      0024ED 54 0F            [12] 1354 	anl	a,#0x0f
      0024EF 30 E3 02         [24] 1355 	jnb	acc.3,00414$
      0024F2 44 F0            [12] 1356 	orl	a,#0xf0
      0024F4                       1357 00414$:
      0024F4 FE               [12] 1358 	mov	r6,a
      0024F5 33               [12] 1359 	rlc	a
      0024F6 95 E0            [12] 1360 	subb	a,acc
      0024F8 53 06 0F         [24] 1361 	anl	ar6,#0x0f
      0024FB 7F 00            [12] 1362 	mov	r7,#0x00
      0024FD EE               [12] 1363 	mov	a,r6
      0024FE 24 6D            [12] 1364 	add	a,#_digits
      002500 F5 82            [12] 1365 	mov	dpl,a
      002502 EF               [12] 1366 	mov	a,r7
      002503 34 2D            [12] 1367 	addc	a,#(_digits >> 8)
      002505 F5 83            [12] 1368 	mov	dph,a
      002507 E4               [12] 1369 	clr	a
      002508 93               [24] 1370 	movc	a,@a+dptr
      002509 FF               [12] 1371 	mov	r7,a
      00250A 7E 00            [12] 1372 	mov	r6,#0x00
      00250C 8F 82            [24] 1373 	mov	dpl,r7
      00250E 8E 83            [24] 1374 	mov	dph,r6
      002510 12 20 75         [24] 1375 	lcall	_putchar
                                   1376 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      002513 8D 07            [24] 1377 	mov	ar7,r5
      002515 53 07 0F         [24] 1378 	anl	ar7,#0x0f
      002518 7E 00            [12] 1379 	mov	r6,#0x00
      00251A EF               [12] 1380 	mov	a,r7
      00251B 24 6D            [12] 1381 	add	a,#_digits
      00251D F5 82            [12] 1382 	mov	dpl,a
      00251F EE               [12] 1383 	mov	a,r6
      002520 34 2D            [12] 1384 	addc	a,#(_digits >> 8)
      002522 F5 83            [12] 1385 	mov	dph,a
      002524 E4               [12] 1386 	clr	a
      002525 93               [24] 1387 	movc	a,@a+dptr
      002526 FF               [12] 1388 	mov	r7,a
      002527 7E 00            [12] 1389 	mov	r6,#0x00
      002529 8F 82            [24] 1390 	mov	dpl,r7
      00252B 8E 83            [24] 1391 	mov	dph,r6
      00252D 12 20 75         [24] 1392 	lcall	_putchar
                                   1393 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      002530 8C 06            [24] 1394 	mov	ar6,r4
      002532 ED               [12] 1395 	mov	a,r5
      002533 C4               [12] 1396 	swap	a
      002534 CE               [12] 1397 	xch	a,r6
      002535 C4               [12] 1398 	swap	a
      002536 54 0F            [12] 1399 	anl	a,#0x0f
      002538 6E               [12] 1400 	xrl	a,r6
      002539 CE               [12] 1401 	xch	a,r6
      00253A 54 0F            [12] 1402 	anl	a,#0x0f
      00253C CE               [12] 1403 	xch	a,r6
      00253D 6E               [12] 1404 	xrl	a,r6
      00253E CE               [12] 1405 	xch	a,r6
      00253F 30 E3 02         [24] 1406 	jnb	acc.3,00415$
      002542 44 F0            [12] 1407 	orl	a,#0xf0
      002544                       1408 00415$:
      002544 53 06 0F         [24] 1409 	anl	ar6,#0x0f
      002547 7F 00            [12] 1410 	mov	r7,#0x00
      002549 EE               [12] 1411 	mov	a,r6
      00254A 24 6D            [12] 1412 	add	a,#_digits
      00254C F5 82            [12] 1413 	mov	dpl,a
      00254E EF               [12] 1414 	mov	a,r7
      00254F 34 2D            [12] 1415 	addc	a,#(_digits >> 8)
      002551 F5 83            [12] 1416 	mov	dph,a
      002553 E4               [12] 1417 	clr	a
      002554 93               [24] 1418 	movc	a,@a+dptr
      002555 FF               [12] 1419 	mov	r7,a
      002556 7E 00            [12] 1420 	mov	r6,#0x00
      002558 8F 82            [24] 1421 	mov	dpl,r7
      00255A 8E 83            [24] 1422 	mov	dph,r6
      00255C 12 20 75         [24] 1423 	lcall	_putchar
                                   1424 ;	life.c:40: putchar(digits[a & 0xf]);
      00255F 53 04 0F         [24] 1425 	anl	ar4,#0x0f
      002562 7D 00            [12] 1426 	mov	r5,#0x00
      002564 EC               [12] 1427 	mov	a,r4
      002565 24 6D            [12] 1428 	add	a,#_digits
      002567 F5 82            [12] 1429 	mov	dpl,a
      002569 ED               [12] 1430 	mov	a,r5
      00256A 34 2D            [12] 1431 	addc	a,#(_digits >> 8)
      00256C F5 83            [12] 1432 	mov	dph,a
      00256E E4               [12] 1433 	clr	a
      00256F 93               [24] 1434 	movc	a,@a+dptr
      002570 FF               [12] 1435 	mov	r7,a
      002571 7E 00            [12] 1436 	mov	r6,#0x00
      002573 8F 82            [24] 1437 	mov	dpl,r7
      002575 8E 83            [24] 1438 	mov	dph,r6
      002577 12 20 75         [24] 1439 	lcall	_putchar
                                   1440 ;	life.c:146: printstr(">\r\n");
      00257A 7D 8F            [12] 1441 	mov	r5,#___str_3
      00257C 7E 2D            [12] 1442 	mov	r6,#(___str_3 >> 8)
      00257E 7F 80            [12] 1443 	mov	r7,#0x80
                                   1444 ;	life.c:48: return;
      002580                       1445 00182$:
                                   1446 ;	life.c:46: for (; *s; s++) putchar(*s);
      002580 8D 82            [24] 1447 	mov	dpl,r5
      002582 8E 83            [24] 1448 	mov	dph,r6
      002584 8F F0            [24] 1449 	mov	b,r7
      002586 12 2C 45         [24] 1450 	lcall	__gptrget
      002589 FC               [12] 1451 	mov	r4,a
      00258A 60 10            [24] 1452 	jz	00153$
      00258C 7B 00            [12] 1453 	mov	r3,#0x00
      00258E 8C 82            [24] 1454 	mov	dpl,r4
      002590 8B 83            [24] 1455 	mov	dph,r3
      002592 12 20 75         [24] 1456 	lcall	_putchar
      002595 0D               [12] 1457 	inc	r5
                                   1458 ;	life.c:146: printstr(">\r\n");
      002596 BD 00 E7         [24] 1459 	cjne	r5,#0x00,00182$
      002599 0E               [12] 1460 	inc	r6
      00259A 80 E4            [24] 1461 	sjmp	00182$
      00259C                       1462 00153$:
                                   1463 ;	life.c:214: show(0);
      00259C 75 82 00         [24] 1464 	mov	dpl,#0x00
      00259F 12 20 A9         [24] 1465 	lcall	_show
                                   1466 ;	life.c:216: printstr("READY\r\n");
      0025A2 7D A1            [12] 1467 	mov	r5,#___str_5
      0025A4 7E 2D            [12] 1468 	mov	r6,#(___str_5 >> 8)
      0025A6 7F 80            [12] 1469 	mov	r7,#0x80
                                   1470 ;	life.c:48: return;
      0025A8                       1471 00185$:
                                   1472 ;	life.c:46: for (; *s; s++) putchar(*s);
      0025A8 8D 82            [24] 1473 	mov	dpl,r5
      0025AA 8E 83            [24] 1474 	mov	dph,r6
      0025AC 8F F0            [24] 1475 	mov	b,r7
      0025AE 12 2C 45         [24] 1476 	lcall	__gptrget
      0025B1 FC               [12] 1477 	mov	r4,a
      0025B2 60 10            [24] 1478 	jz	00118$
      0025B4 7B 00            [12] 1479 	mov	r3,#0x00
      0025B6 8C 82            [24] 1480 	mov	dpl,r4
      0025B8 8B 83            [24] 1481 	mov	dph,r3
      0025BA 12 20 75         [24] 1482 	lcall	_putchar
      0025BD 0D               [12] 1483 	inc	r5
                                   1484 ;	life.c:217: while (1) {
      0025BE BD 00 E7         [24] 1485 	cjne	r5,#0x00,00185$
      0025C1 0E               [12] 1486 	inc	r6
      0025C2 80 E4            [24] 1487 	sjmp	00185$
      0025C4                       1488 00118$:
                                   1489 ;	life.c:218: c = getchar();
      0025C4 12 20 7A         [24] 1490 	lcall	_getchar
      0025C7 AE 82            [24] 1491 	mov	r6,dpl
      0025C9 AF 83            [24] 1492 	mov	r7,dph
      0025CB 90 98 0C         [24] 1493 	mov	dptr,#_c
      0025CE EE               [12] 1494 	mov	a,r6
      0025CF F0               [24] 1495 	movx	@dptr,a
      0025D0 EF               [12] 1496 	mov	a,r7
      0025D1 A3               [24] 1497 	inc	dptr
      0025D2 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	life.c:219: if (i0 || (c == (int)'T')) goto terminate;
      0025D3 90 80 00         [24] 1500 	mov	dptr,#_i0
      0025D6 E0               [24] 1501 	movx	a,@dptr
      0025D7 60 03            [24] 1502 	jz	00420$
      0025D9 02 2B 14         [24] 1503 	ljmp	00127$
      0025DC                       1504 00420$:
      0025DC BE 54 06         [24] 1505 	cjne	r6,#0x54,00421$
      0025DF BF 00 03         [24] 1506 	cjne	r7,#0x00,00421$
      0025E2 02 2B 14         [24] 1507 	ljmp	00127$
      0025E5                       1508 00421$:
                                   1509 ;	life.c:220: if (c == (int)'L') goto reload;
      0025E5 BE 4C 06         [24] 1510 	cjne	r6,#0x4c,00422$
      0025E8 BF 00 03         [24] 1511 	cjne	r7,#0x00,00422$
      0025EB 02 23 70         [24] 1512 	ljmp	00109$
      0025EE                       1513 00422$:
                                   1514 ;	life.c:221: if (c == (int)'S') break;
      0025EE BE 53 D3         [24] 1515 	cjne	r6,#0x53,00118$
      0025F1 BF 00 D0         [24] 1516 	cjne	r7,#0x00,00118$
                                   1517 ;	life.c:74: generation[0] = 0;
      0025F4 90 98 12         [24] 1518 	mov	dptr,#_generation
      0025F7 E4               [12] 1519 	clr	a
      0025F8 F0               [24] 1520 	movx	@dptr,a
      0025F9 A3               [24] 1521 	inc	dptr
      0025FA F0               [24] 1522 	movx	@dptr,a
                                   1523 ;	life.c:75: generation[1] = 0;
      0025FB 90 98 14         [24] 1524 	mov	dptr,#(_generation + 0x0002)
      0025FE F0               [24] 1525 	movx	@dptr,a
      0025FF A3               [24] 1526 	inc	dptr
      002600 F0               [24] 1527 	movx	@dptr,a
                                   1528 ;	life.c:226: for (i1 = 0; !i0 && !i1; ) {
      002601 90 80 01         [24] 1529 	mov	dptr,#_i1
      002604 F0               [24] 1530 	movx	@dptr,a
      002605                       1531 00196$:
      002605 90 80 00         [24] 1532 	mov	dptr,#_i0
      002608 E0               [24] 1533 	movx	a,@dptr
      002609 60 03            [24] 1534 	jz	00425$
      00260B 02 2A E0         [24] 1535 	ljmp	00123$
      00260E                       1536 00425$:
      00260E 90 80 01         [24] 1537 	mov	dptr,#_i1
      002611 E0               [24] 1538 	movx	a,@dptr
      002612 60 03            [24] 1539 	jz	00426$
      002614 02 2A E0         [24] 1540 	ljmp	00123$
      002617                       1541 00426$:
                                   1542 ;	life.c:227: show(1);
      002617 75 82 01         [24] 1543 	mov	dpl,#0x01
      00261A 12 20 A9         [24] 1544 	lcall	_show
                                   1545 ;	life.c:154: fixed = 1;
      00261D 90 98 10         [24] 1546 	mov	dptr,#_fixed
      002620 74 01            [12] 1547 	mov	a,#0x01
      002622 F0               [24] 1548 	movx	@dptr,a
                                   1549 ;	life.c:155: cycle2 = 1;
      002623 90 98 11         [24] 1550 	mov	dptr,#_cycle2
      002626 F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	life.c:156: bstep = 0;
      002627 90 98 0E         [24] 1553 	mov	dptr,#_bstep
      00262A E4               [12] 1554 	clr	a
      00262B F0               [24] 1555 	movx	@dptr,a
                                   1556 ;	life.c:158: for (y = 0; y < H; y++) {
      00262C 90 98 04         [24] 1557 	mov	dptr,#_y
      00262F F0               [24] 1558 	movx	@dptr,a
      002630 A3               [24] 1559 	inc	dptr
      002631 F0               [24] 1560 	movx	@dptr,a
      002632                       1561 00189$:
                                   1562 ;	life.c:159: putchar(busy[bstep]); putchar('\r');
      002632 90 98 0E         [24] 1563 	mov	dptr,#_bstep
      002635 E0               [24] 1564 	movx	a,@dptr
      002636 90 2B 44         [24] 1565 	mov	dptr,#_busy
      002639 93               [24] 1566 	movc	a,@a+dptr
      00263A FF               [12] 1567 	mov	r7,a
      00263B 7E 00            [12] 1568 	mov	r6,#0x00
      00263D 8F 82            [24] 1569 	mov	dpl,r7
      00263F 8E 83            [24] 1570 	mov	dph,r6
      002641 12 20 75         [24] 1571 	lcall	_putchar
      002644 90 00 0D         [24] 1572 	mov	dptr,#0x000d
      002647 12 20 75         [24] 1573 	lcall	_putchar
                                   1574 ;	life.c:160: bstep = (bstep + 1) & 3;
      00264A 90 98 0E         [24] 1575 	mov	dptr,#_bstep
      00264D E0               [24] 1576 	movx	a,@dptr
      00264E FF               [12] 1577 	mov	r7,a
      00264F 0F               [12] 1578 	inc	r7
      002650 74 03            [12] 1579 	mov	a,#0x03
      002652 5F               [12] 1580 	anl	a,r7
      002653 F0               [24] 1581 	movx	@dptr,a
                                   1582 ;	life.c:161: for (x = 0; x < W; x++) {
      002654 90 98 02         [24] 1583 	mov	dptr,#_x
      002657 E4               [12] 1584 	clr	a
      002658 F0               [24] 1585 	movx	@dptr,a
      002659 A3               [24] 1586 	inc	dptr
      00265A F0               [24] 1587 	movx	@dptr,a
      00265B                       1588 00187$:
                                   1589 ;	life.c:162: n = -u[A2D(W, y, x)];
      00265B 90 98 04         [24] 1590 	mov	dptr,#_y
      00265E E0               [24] 1591 	movx	a,@dptr
      00265F FE               [12] 1592 	mov	r6,a
      002660 A3               [24] 1593 	inc	dptr
      002661 E0               [24] 1594 	movx	a,@dptr
      002662 FF               [12] 1595 	mov	r7,a
      002663 A8 10            [24] 1596 	mov	r0,_bp
      002665 08               [12] 1597 	inc	r0
      002666 A6 06            [24] 1598 	mov	@r0,ar6
      002668 EF               [12] 1599 	mov	a,r7
      002669 C4               [12] 1600 	swap	a
      00266A 23               [12] 1601 	rl	a
      00266B 54 E0            [12] 1602 	anl	a,#0xe0
      00266D C6               [12] 1603 	xch	a,@r0
      00266E C4               [12] 1604 	swap	a
      00266F 23               [12] 1605 	rl	a
      002670 C6               [12] 1606 	xch	a,@r0
      002671 66               [12] 1607 	xrl	a,@r0
      002672 C6               [12] 1608 	xch	a,@r0
      002673 54 E0            [12] 1609 	anl	a,#0xe0
      002675 C6               [12] 1610 	xch	a,@r0
      002676 66               [12] 1611 	xrl	a,@r0
      002677 08               [12] 1612 	inc	r0
      002678 F6               [12] 1613 	mov	@r0,a
      002679 90 98 02         [24] 1614 	mov	dptr,#_x
      00267C E0               [24] 1615 	movx	a,@dptr
      00267D FA               [12] 1616 	mov	r2,a
      00267E A3               [24] 1617 	inc	dptr
      00267F E0               [24] 1618 	movx	a,@dptr
      002680 FB               [12] 1619 	mov	r3,a
      002681 A8 10            [24] 1620 	mov	r0,_bp
      002683 08               [12] 1621 	inc	r0
      002684 E5 10            [12] 1622 	mov	a,_bp
      002686 24 03            [12] 1623 	add	a,#0x03
      002688 F9               [12] 1624 	mov	r1,a
      002689 EA               [12] 1625 	mov	a,r2
      00268A 26               [12] 1626 	add	a,@r0
      00268B F7               [12] 1627 	mov	@r1,a
      00268C EB               [12] 1628 	mov	a,r3
      00268D 08               [12] 1629 	inc	r0
      00268E 36               [12] 1630 	addc	a,@r0
      00268F 09               [12] 1631 	inc	r1
      002690 F7               [12] 1632 	mov	@r1,a
      002691 E5 10            [12] 1633 	mov	a,_bp
      002693 24 03            [12] 1634 	add	a,#0x03
      002695 F8               [12] 1635 	mov	r0,a
      002696 E6               [12] 1636 	mov	a,@r0
      002697 24 02            [12] 1637 	add	a,#_u
      002699 F5 82            [12] 1638 	mov	dpl,a
      00269B 08               [12] 1639 	inc	r0
      00269C E6               [12] 1640 	mov	a,@r0
      00269D 34 88            [12] 1641 	addc	a,#(_u >> 8)
      00269F F5 83            [12] 1642 	mov	dph,a
      0026A1 E0               [24] 1643 	movx	a,@dptr
      0026A2 FD               [12] 1644 	mov	r5,a
      0026A3 E5 10            [12] 1645 	mov	a,_bp
      0026A5 24 05            [12] 1646 	add	a,#0x05
      0026A7 F8               [12] 1647 	mov	r0,a
      0026A8 C3               [12] 1648 	clr	c
      0026A9 E4               [12] 1649 	clr	a
      0026AA 9D               [12] 1650 	subb	a,r5
      0026AB F6               [12] 1651 	mov	@r0,a
                                   1652 ;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026AC 74 3F            [12] 1653 	mov	a,#0x3f
      0026AE 2E               [12] 1654 	add	a,r6
      0026AF FC               [12] 1655 	mov	r4,a
      0026B0 E4               [12] 1656 	clr	a
      0026B1 3F               [12] 1657 	addc	a,r7
      0026B2 FD               [12] 1658 	mov	r5,a
      0026B3 C0 07            [24] 1659 	push	ar7
      0026B5 C0 06            [24] 1660 	push	ar6
      0026B7 C0 03            [24] 1661 	push	ar3
      0026B9 C0 02            [24] 1662 	push	ar2
      0026BB 74 40            [12] 1663 	mov	a,#0x40
      0026BD C0 E0            [24] 1664 	push	acc
      0026BF E4               [12] 1665 	clr	a
      0026C0 C0 E0            [24] 1666 	push	acc
      0026C2 8C 82            [24] 1667 	mov	dpl,r4
      0026C4 8D 83            [24] 1668 	mov	dph,r5
      0026C6 12 2C 61         [24] 1669 	lcall	__modsint
      0026C9 AC 82            [24] 1670 	mov	r4,dpl
      0026CB AD 83            [24] 1671 	mov	r5,dph
      0026CD 15 81            [12] 1672 	dec	sp
      0026CF 15 81            [12] 1673 	dec	sp
      0026D1 D0 02            [24] 1674 	pop	ar2
      0026D3 D0 03            [24] 1675 	pop	ar3
      0026D5 E5 10            [12] 1676 	mov	a,_bp
      0026D7 24 06            [12] 1677 	add	a,#0x06
      0026D9 F8               [12] 1678 	mov	r0,a
      0026DA A6 04            [24] 1679 	mov	@r0,ar4
      0026DC ED               [12] 1680 	mov	a,r5
      0026DD C4               [12] 1681 	swap	a
      0026DE 23               [12] 1682 	rl	a
      0026DF 54 E0            [12] 1683 	anl	a,#0xe0
      0026E1 C6               [12] 1684 	xch	a,@r0
      0026E2 C4               [12] 1685 	swap	a
      0026E3 23               [12] 1686 	rl	a
      0026E4 C6               [12] 1687 	xch	a,@r0
      0026E5 66               [12] 1688 	xrl	a,@r0
      0026E6 C6               [12] 1689 	xch	a,@r0
      0026E7 54 E0            [12] 1690 	anl	a,#0xe0
      0026E9 C6               [12] 1691 	xch	a,@r0
      0026EA 66               [12] 1692 	xrl	a,@r0
      0026EB 08               [12] 1693 	inc	r0
      0026EC F6               [12] 1694 	mov	@r0,a
      0026ED 74 1F            [12] 1695 	mov	a,#0x1f
      0026EF 2A               [12] 1696 	add	a,r2
      0026F0 FC               [12] 1697 	mov	r4,a
      0026F1 E4               [12] 1698 	clr	a
      0026F2 3B               [12] 1699 	addc	a,r3
      0026F3 FD               [12] 1700 	mov	r5,a
      0026F4 C0 03            [24] 1701 	push	ar3
      0026F6 C0 02            [24] 1702 	push	ar2
      0026F8 74 20            [12] 1703 	mov	a,#0x20
      0026FA C0 E0            [24] 1704 	push	acc
      0026FC E4               [12] 1705 	clr	a
      0026FD C0 E0            [24] 1706 	push	acc
      0026FF 8C 82            [24] 1707 	mov	dpl,r4
      002701 8D 83            [24] 1708 	mov	dph,r5
      002703 12 2C 61         [24] 1709 	lcall	__modsint
      002706 C8               [12] 1710 	xch	a,r0
      002707 E5 10            [12] 1711 	mov	a,_bp
      002709 24 08            [12] 1712 	add	a,#0x08
      00270B C8               [12] 1713 	xch	a,r0
      00270C A6 82            [24] 1714 	mov	@r0,dpl
      00270E 08               [12] 1715 	inc	r0
      00270F A6 83            [24] 1716 	mov	@r0,dph
      002711 15 81            [12] 1717 	dec	sp
      002713 15 81            [12] 1718 	dec	sp
      002715 D0 02            [24] 1719 	pop	ar2
      002717 D0 03            [24] 1720 	pop	ar3
      002719 E5 10            [12] 1721 	mov	a,_bp
      00271B 24 06            [12] 1722 	add	a,#0x06
      00271D F8               [12] 1723 	mov	r0,a
      00271E E5 10            [12] 1724 	mov	a,_bp
      002720 24 08            [12] 1725 	add	a,#0x08
      002722 F9               [12] 1726 	mov	r1,a
      002723 E7               [12] 1727 	mov	a,@r1
      002724 26               [12] 1728 	add	a,@r0
      002725 FC               [12] 1729 	mov	r4,a
      002726 09               [12] 1730 	inc	r1
      002727 E7               [12] 1731 	mov	a,@r1
      002728 08               [12] 1732 	inc	r0
      002729 36               [12] 1733 	addc	a,@r0
      00272A FD               [12] 1734 	mov	r5,a
      00272B EC               [12] 1735 	mov	a,r4
      00272C 24 02            [12] 1736 	add	a,#_u
      00272E F5 82            [12] 1737 	mov	dpl,a
      002730 ED               [12] 1738 	mov	a,r5
      002731 34 88            [12] 1739 	addc	a,#(_u >> 8)
      002733 F5 83            [12] 1740 	mov	dph,a
      002735 E0               [24] 1741 	movx	a,@dptr
      002736 FD               [12] 1742 	mov	r5,a
      002737 E5 10            [12] 1743 	mov	a,_bp
      002739 24 05            [12] 1744 	add	a,#0x05
      00273B F8               [12] 1745 	mov	r0,a
      00273C ED               [12] 1746 	mov	a,r5
      00273D 26               [12] 1747 	add	a,@r0
      00273E F6               [12] 1748 	mov	@r0,a
                                   1749 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00273F 74 20            [12] 1750 	mov	a,#0x20
      002741 2A               [12] 1751 	add	a,r2
      002742 FC               [12] 1752 	mov	r4,a
      002743 E4               [12] 1753 	clr	a
      002744 3B               [12] 1754 	addc	a,r3
      002745 FD               [12] 1755 	mov	r5,a
      002746 C0 03            [24] 1756 	push	ar3
      002748 C0 02            [24] 1757 	push	ar2
      00274A 74 20            [12] 1758 	mov	a,#0x20
      00274C C0 E0            [24] 1759 	push	acc
      00274E E4               [12] 1760 	clr	a
      00274F C0 E0            [24] 1761 	push	acc
      002751 8C 82            [24] 1762 	mov	dpl,r4
      002753 8D 83            [24] 1763 	mov	dph,r5
      002755 12 2C 61         [24] 1764 	lcall	__modsint
      002758 C8               [12] 1765 	xch	a,r0
      002759 E5 10            [12] 1766 	mov	a,_bp
      00275B 24 0A            [12] 1767 	add	a,#0x0a
      00275D C8               [12] 1768 	xch	a,r0
      00275E A6 82            [24] 1769 	mov	@r0,dpl
      002760 08               [12] 1770 	inc	r0
      002761 A6 83            [24] 1771 	mov	@r0,dph
      002763 15 81            [12] 1772 	dec	sp
      002765 15 81            [12] 1773 	dec	sp
      002767 D0 02            [24] 1774 	pop	ar2
      002769 D0 03            [24] 1775 	pop	ar3
      00276B E5 10            [12] 1776 	mov	a,_bp
      00276D 24 06            [12] 1777 	add	a,#0x06
      00276F F8               [12] 1778 	mov	r0,a
      002770 E5 10            [12] 1779 	mov	a,_bp
      002772 24 0A            [12] 1780 	add	a,#0x0a
      002774 F9               [12] 1781 	mov	r1,a
      002775 E7               [12] 1782 	mov	a,@r1
      002776 26               [12] 1783 	add	a,@r0
      002777 FC               [12] 1784 	mov	r4,a
      002778 09               [12] 1785 	inc	r1
      002779 E7               [12] 1786 	mov	a,@r1
      00277A 08               [12] 1787 	inc	r0
      00277B 36               [12] 1788 	addc	a,@r0
      00277C FD               [12] 1789 	mov	r5,a
      00277D EC               [12] 1790 	mov	a,r4
      00277E 24 02            [12] 1791 	add	a,#_u
      002780 F5 82            [12] 1792 	mov	dpl,a
      002782 ED               [12] 1793 	mov	a,r5
      002783 34 88            [12] 1794 	addc	a,#(_u >> 8)
      002785 F5 83            [12] 1795 	mov	dph,a
      002787 E0               [24] 1796 	movx	a,@dptr
      002788 FD               [12] 1797 	mov	r5,a
      002789 E5 10            [12] 1798 	mov	a,_bp
      00278B 24 05            [12] 1799 	add	a,#0x05
      00278D F8               [12] 1800 	mov	r0,a
      00278E ED               [12] 1801 	mov	a,r5
      00278F 26               [12] 1802 	add	a,@r0
      002790 F6               [12] 1803 	mov	@r0,a
                                   1804 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002791 74 21            [12] 1805 	mov	a,#0x21
      002793 2A               [12] 1806 	add	a,r2
      002794 FC               [12] 1807 	mov	r4,a
      002795 E4               [12] 1808 	clr	a
      002796 3B               [12] 1809 	addc	a,r3
      002797 FD               [12] 1810 	mov	r5,a
      002798 C0 03            [24] 1811 	push	ar3
      00279A C0 02            [24] 1812 	push	ar2
      00279C 74 20            [12] 1813 	mov	a,#0x20
      00279E C0 E0            [24] 1814 	push	acc
      0027A0 E4               [12] 1815 	clr	a
      0027A1 C0 E0            [24] 1816 	push	acc
      0027A3 8C 82            [24] 1817 	mov	dpl,r4
      0027A5 8D 83            [24] 1818 	mov	dph,r5
      0027A7 12 2C 61         [24] 1819 	lcall	__modsint
      0027AA C8               [12] 1820 	xch	a,r0
      0027AB E5 10            [12] 1821 	mov	a,_bp
      0027AD 24 0C            [12] 1822 	add	a,#0x0c
      0027AF C8               [12] 1823 	xch	a,r0
      0027B0 A6 82            [24] 1824 	mov	@r0,dpl
      0027B2 08               [12] 1825 	inc	r0
      0027B3 A6 83            [24] 1826 	mov	@r0,dph
      0027B5 15 81            [12] 1827 	dec	sp
      0027B7 15 81            [12] 1828 	dec	sp
      0027B9 D0 02            [24] 1829 	pop	ar2
      0027BB D0 03            [24] 1830 	pop	ar3
      0027BD D0 06            [24] 1831 	pop	ar6
      0027BF D0 07            [24] 1832 	pop	ar7
      0027C1 E5 10            [12] 1833 	mov	a,_bp
      0027C3 24 06            [12] 1834 	add	a,#0x06
      0027C5 F8               [12] 1835 	mov	r0,a
      0027C6 E5 10            [12] 1836 	mov	a,_bp
      0027C8 24 0C            [12] 1837 	add	a,#0x0c
      0027CA F9               [12] 1838 	mov	r1,a
      0027CB E7               [12] 1839 	mov	a,@r1
      0027CC 26               [12] 1840 	add	a,@r0
      0027CD FC               [12] 1841 	mov	r4,a
      0027CE 09               [12] 1842 	inc	r1
      0027CF E7               [12] 1843 	mov	a,@r1
      0027D0 08               [12] 1844 	inc	r0
      0027D1 36               [12] 1845 	addc	a,@r0
      0027D2 FD               [12] 1846 	mov	r5,a
      0027D3 EC               [12] 1847 	mov	a,r4
      0027D4 24 02            [12] 1848 	add	a,#_u
      0027D6 F5 82            [12] 1849 	mov	dpl,a
      0027D8 ED               [12] 1850 	mov	a,r5
      0027D9 34 88            [12] 1851 	addc	a,#(_u >> 8)
      0027DB F5 83            [12] 1852 	mov	dph,a
      0027DD E0               [24] 1853 	movx	a,@dptr
      0027DE FD               [12] 1854 	mov	r5,a
      0027DF E5 10            [12] 1855 	mov	a,_bp
      0027E1 24 05            [12] 1856 	add	a,#0x05
      0027E3 F8               [12] 1857 	mov	r0,a
      0027E4 E5 10            [12] 1858 	mov	a,_bp
      0027E6 24 06            [12] 1859 	add	a,#0x06
      0027E8 F9               [12] 1860 	mov	r1,a
      0027E9 ED               [12] 1861 	mov	a,r5
      0027EA 26               [12] 1862 	add	a,@r0
      0027EB F7               [12] 1863 	mov	@r1,a
                                   1864 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027EC 74 40            [12] 1865 	mov	a,#0x40
      0027EE 2E               [12] 1866 	add	a,r6
      0027EF FC               [12] 1867 	mov	r4,a
      0027F0 E4               [12] 1868 	clr	a
      0027F1 3F               [12] 1869 	addc	a,r7
      0027F2 FD               [12] 1870 	mov	r5,a
      0027F3 C0 07            [24] 1871 	push	ar7
      0027F5 C0 06            [24] 1872 	push	ar6
      0027F7 C0 03            [24] 1873 	push	ar3
      0027F9 C0 02            [24] 1874 	push	ar2
      0027FB 74 40            [12] 1875 	mov	a,#0x40
      0027FD C0 E0            [24] 1876 	push	acc
      0027FF E4               [12] 1877 	clr	a
      002800 C0 E0            [24] 1878 	push	acc
      002802 8C 82            [24] 1879 	mov	dpl,r4
      002804 8D 83            [24] 1880 	mov	dph,r5
      002806 12 2C 61         [24] 1881 	lcall	__modsint
      002809 AC 82            [24] 1882 	mov	r4,dpl
      00280B AD 83            [24] 1883 	mov	r5,dph
      00280D 15 81            [12] 1884 	dec	sp
      00280F 15 81            [12] 1885 	dec	sp
      002811 D0 02            [24] 1886 	pop	ar2
      002813 D0 03            [24] 1887 	pop	ar3
      002815 D0 06            [24] 1888 	pop	ar6
      002817 D0 07            [24] 1889 	pop	ar7
      002819 E5 10            [12] 1890 	mov	a,_bp
      00281B 24 0E            [12] 1891 	add	a,#0x0e
      00281D F8               [12] 1892 	mov	r0,a
      00281E A6 04            [24] 1893 	mov	@r0,ar4
      002820 ED               [12] 1894 	mov	a,r5
      002821 C4               [12] 1895 	swap	a
      002822 23               [12] 1896 	rl	a
      002823 54 E0            [12] 1897 	anl	a,#0xe0
      002825 C6               [12] 1898 	xch	a,@r0
      002826 C4               [12] 1899 	swap	a
      002827 23               [12] 1900 	rl	a
      002828 C6               [12] 1901 	xch	a,@r0
      002829 66               [12] 1902 	xrl	a,@r0
      00282A C6               [12] 1903 	xch	a,@r0
      00282B 54 E0            [12] 1904 	anl	a,#0xe0
      00282D C6               [12] 1905 	xch	a,@r0
      00282E 66               [12] 1906 	xrl	a,@r0
      00282F 08               [12] 1907 	inc	r0
      002830 F6               [12] 1908 	mov	@r0,a
      002831 E5 10            [12] 1909 	mov	a,_bp
      002833 24 0E            [12] 1910 	add	a,#0x0e
      002835 F8               [12] 1911 	mov	r0,a
      002836 E5 10            [12] 1912 	mov	a,_bp
      002838 24 08            [12] 1913 	add	a,#0x08
      00283A F9               [12] 1914 	mov	r1,a
      00283B E7               [12] 1915 	mov	a,@r1
      00283C 26               [12] 1916 	add	a,@r0
      00283D FC               [12] 1917 	mov	r4,a
      00283E 09               [12] 1918 	inc	r1
      00283F E7               [12] 1919 	mov	a,@r1
      002840 08               [12] 1920 	inc	r0
      002841 36               [12] 1921 	addc	a,@r0
      002842 FD               [12] 1922 	mov	r5,a
      002843 EC               [12] 1923 	mov	a,r4
      002844 24 02            [12] 1924 	add	a,#_u
      002846 F5 82            [12] 1925 	mov	dpl,a
      002848 ED               [12] 1926 	mov	a,r5
      002849 34 88            [12] 1927 	addc	a,#(_u >> 8)
      00284B F5 83            [12] 1928 	mov	dph,a
      00284D E0               [24] 1929 	movx	a,@dptr
      00284E FD               [12] 1930 	mov	r5,a
      00284F E5 10            [12] 1931 	mov	a,_bp
      002851 24 06            [12] 1932 	add	a,#0x06
      002853 F8               [12] 1933 	mov	r0,a
      002854 E5 10            [12] 1934 	mov	a,_bp
      002856 24 06            [12] 1935 	add	a,#0x06
      002858 F9               [12] 1936 	mov	r1,a
      002859 ED               [12] 1937 	mov	a,r5
      00285A 26               [12] 1938 	add	a,@r0
      00285B F7               [12] 1939 	mov	@r1,a
                                   1940 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00285C E5 10            [12] 1941 	mov	a,_bp
      00285E 24 0E            [12] 1942 	add	a,#0x0e
      002860 F8               [12] 1943 	mov	r0,a
      002861 E5 10            [12] 1944 	mov	a,_bp
      002863 24 0A            [12] 1945 	add	a,#0x0a
      002865 F9               [12] 1946 	mov	r1,a
      002866 E7               [12] 1947 	mov	a,@r1
      002867 26               [12] 1948 	add	a,@r0
      002868 FC               [12] 1949 	mov	r4,a
      002869 09               [12] 1950 	inc	r1
      00286A E7               [12] 1951 	mov	a,@r1
      00286B 08               [12] 1952 	inc	r0
      00286C 36               [12] 1953 	addc	a,@r0
      00286D FD               [12] 1954 	mov	r5,a
      00286E EC               [12] 1955 	mov	a,r4
      00286F 24 02            [12] 1956 	add	a,#_u
      002871 F5 82            [12] 1957 	mov	dpl,a
      002873 ED               [12] 1958 	mov	a,r5
      002874 34 88            [12] 1959 	addc	a,#(_u >> 8)
      002876 F5 83            [12] 1960 	mov	dph,a
      002878 E0               [24] 1961 	movx	a,@dptr
      002879 FD               [12] 1962 	mov	r5,a
      00287A E5 10            [12] 1963 	mov	a,_bp
      00287C 24 06            [12] 1964 	add	a,#0x06
      00287E F8               [12] 1965 	mov	r0,a
      00287F E5 10            [12] 1966 	mov	a,_bp
      002881 24 06            [12] 1967 	add	a,#0x06
      002883 F9               [12] 1968 	mov	r1,a
      002884 ED               [12] 1969 	mov	a,r5
      002885 26               [12] 1970 	add	a,@r0
      002886 F7               [12] 1971 	mov	@r1,a
                                   1972 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002887 E5 10            [12] 1973 	mov	a,_bp
      002889 24 0E            [12] 1974 	add	a,#0x0e
      00288B F8               [12] 1975 	mov	r0,a
      00288C E5 10            [12] 1976 	mov	a,_bp
      00288E 24 0C            [12] 1977 	add	a,#0x0c
      002890 F9               [12] 1978 	mov	r1,a
      002891 E7               [12] 1979 	mov	a,@r1
      002892 26               [12] 1980 	add	a,@r0
      002893 FC               [12] 1981 	mov	r4,a
      002894 09               [12] 1982 	inc	r1
      002895 E7               [12] 1983 	mov	a,@r1
      002896 08               [12] 1984 	inc	r0
      002897 36               [12] 1985 	addc	a,@r0
      002898 FD               [12] 1986 	mov	r5,a
      002899 EC               [12] 1987 	mov	a,r4
      00289A 24 02            [12] 1988 	add	a,#_u
      00289C F5 82            [12] 1989 	mov	dpl,a
      00289E ED               [12] 1990 	mov	a,r5
      00289F 34 88            [12] 1991 	addc	a,#(_u >> 8)
      0028A1 F5 83            [12] 1992 	mov	dph,a
      0028A3 E0               [24] 1993 	movx	a,@dptr
      0028A4 FD               [12] 1994 	mov	r5,a
      0028A5 E5 10            [12] 1995 	mov	a,_bp
      0028A7 24 06            [12] 1996 	add	a,#0x06
      0028A9 F8               [12] 1997 	mov	r0,a
      0028AA E5 10            [12] 1998 	mov	a,_bp
      0028AC 24 0E            [12] 1999 	add	a,#0x0e
      0028AE F9               [12] 2000 	mov	r1,a
      0028AF ED               [12] 2001 	mov	a,r5
      0028B0 26               [12] 2002 	add	a,@r0
      0028B1 F7               [12] 2003 	mov	@r1,a
                                   2004 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028B2 74 41            [12] 2005 	mov	a,#0x41
      0028B4 2E               [12] 2006 	add	a,r6
      0028B5 FE               [12] 2007 	mov	r6,a
      0028B6 E4               [12] 2008 	clr	a
      0028B7 3F               [12] 2009 	addc	a,r7
      0028B8 FF               [12] 2010 	mov	r7,a
      0028B9 C0 03            [24] 2011 	push	ar3
      0028BB C0 02            [24] 2012 	push	ar2
      0028BD 74 40            [12] 2013 	mov	a,#0x40
      0028BF C0 E0            [24] 2014 	push	acc
      0028C1 E4               [12] 2015 	clr	a
      0028C2 C0 E0            [24] 2016 	push	acc
      0028C4 8E 82            [24] 2017 	mov	dpl,r6
      0028C6 8F 83            [24] 2018 	mov	dph,r7
      0028C8 12 2C 61         [24] 2019 	lcall	__modsint
      0028CB AE 82            [24] 2020 	mov	r6,dpl
      0028CD AF 83            [24] 2021 	mov	r7,dph
      0028CF 15 81            [12] 2022 	dec	sp
      0028D1 15 81            [12] 2023 	dec	sp
      0028D3 D0 02            [24] 2024 	pop	ar2
      0028D5 D0 03            [24] 2025 	pop	ar3
      0028D7 EF               [12] 2026 	mov	a,r7
      0028D8 C4               [12] 2027 	swap	a
      0028D9 23               [12] 2028 	rl	a
      0028DA 54 E0            [12] 2029 	anl	a,#0xe0
      0028DC CE               [12] 2030 	xch	a,r6
      0028DD C4               [12] 2031 	swap	a
      0028DE 23               [12] 2032 	rl	a
      0028DF CE               [12] 2033 	xch	a,r6
      0028E0 6E               [12] 2034 	xrl	a,r6
      0028E1 CE               [12] 2035 	xch	a,r6
      0028E2 54 E0            [12] 2036 	anl	a,#0xe0
      0028E4 CE               [12] 2037 	xch	a,r6
      0028E5 6E               [12] 2038 	xrl	a,r6
      0028E6 FF               [12] 2039 	mov	r7,a
      0028E7 E5 10            [12] 2040 	mov	a,_bp
      0028E9 24 08            [12] 2041 	add	a,#0x08
      0028EB F8               [12] 2042 	mov	r0,a
      0028EC E6               [12] 2043 	mov	a,@r0
      0028ED 2E               [12] 2044 	add	a,r6
      0028EE FC               [12] 2045 	mov	r4,a
      0028EF 08               [12] 2046 	inc	r0
      0028F0 E6               [12] 2047 	mov	a,@r0
      0028F1 3F               [12] 2048 	addc	a,r7
      0028F2 FD               [12] 2049 	mov	r5,a
      0028F3 EC               [12] 2050 	mov	a,r4
      0028F4 24 02            [12] 2051 	add	a,#_u
      0028F6 F5 82            [12] 2052 	mov	dpl,a
      0028F8 ED               [12] 2053 	mov	a,r5
      0028F9 34 88            [12] 2054 	addc	a,#(_u >> 8)
      0028FB F5 83            [12] 2055 	mov	dph,a
      0028FD E0               [24] 2056 	movx	a,@dptr
      0028FE FD               [12] 2057 	mov	r5,a
      0028FF E5 10            [12] 2058 	mov	a,_bp
      002901 24 0E            [12] 2059 	add	a,#0x0e
      002903 F8               [12] 2060 	mov	r0,a
      002904 E5 10            [12] 2061 	mov	a,_bp
      002906 24 0E            [12] 2062 	add	a,#0x0e
      002908 F9               [12] 2063 	mov	r1,a
      002909 ED               [12] 2064 	mov	a,r5
      00290A 26               [12] 2065 	add	a,@r0
      00290B F7               [12] 2066 	mov	@r1,a
                                   2067 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00290C E5 10            [12] 2068 	mov	a,_bp
      00290E 24 0A            [12] 2069 	add	a,#0x0a
      002910 F8               [12] 2070 	mov	r0,a
      002911 E6               [12] 2071 	mov	a,@r0
      002912 2E               [12] 2072 	add	a,r6
      002913 FC               [12] 2073 	mov	r4,a
      002914 08               [12] 2074 	inc	r0
      002915 E6               [12] 2075 	mov	a,@r0
      002916 3F               [12] 2076 	addc	a,r7
      002917 FD               [12] 2077 	mov	r5,a
      002918 EC               [12] 2078 	mov	a,r4
      002919 24 02            [12] 2079 	add	a,#_u
      00291B F5 82            [12] 2080 	mov	dpl,a
      00291D ED               [12] 2081 	mov	a,r5
      00291E 34 88            [12] 2082 	addc	a,#(_u >> 8)
      002920 F5 83            [12] 2083 	mov	dph,a
      002922 E0               [24] 2084 	movx	a,@dptr
      002923 FD               [12] 2085 	mov	r5,a
      002924 E5 10            [12] 2086 	mov	a,_bp
      002926 24 0E            [12] 2087 	add	a,#0x0e
      002928 F8               [12] 2088 	mov	r0,a
      002929 ED               [12] 2089 	mov	a,r5
      00292A 26               [12] 2090 	add	a,@r0
      00292B FD               [12] 2091 	mov	r5,a
                                   2092 ;	life.c:180: y1 = 1; x1 = 1;
      00292C 90 98 08         [24] 2093 	mov	dptr,#_y1
      00292F 74 01            [12] 2094 	mov	a,#0x01
      002931 F0               [24] 2095 	movx	@dptr,a
      002932 E4               [12] 2096 	clr	a
      002933 A3               [24] 2097 	inc	dptr
      002934 F0               [24] 2098 	movx	@dptr,a
      002935 90 98 06         [24] 2099 	mov	dptr,#_x1
      002938 04               [12] 2100 	inc	a
      002939 F0               [24] 2101 	movx	@dptr,a
      00293A E4               [12] 2102 	clr	a
      00293B A3               [24] 2103 	inc	dptr
      00293C F0               [24] 2104 	movx	@dptr,a
                                   2105 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00293D E5 10            [12] 2106 	mov	a,_bp
      00293F 24 0C            [12] 2107 	add	a,#0x0c
      002941 F8               [12] 2108 	mov	r0,a
      002942 E6               [12] 2109 	mov	a,@r0
      002943 2E               [12] 2110 	add	a,r6
      002944 FE               [12] 2111 	mov	r6,a
      002945 08               [12] 2112 	inc	r0
      002946 E6               [12] 2113 	mov	a,@r0
      002947 3F               [12] 2114 	addc	a,r7
      002948 FF               [12] 2115 	mov	r7,a
      002949 EE               [12] 2116 	mov	a,r6
      00294A 24 02            [12] 2117 	add	a,#_u
      00294C F5 82            [12] 2118 	mov	dpl,a
      00294E EF               [12] 2119 	mov	a,r7
      00294F 34 88            [12] 2120 	addc	a,#(_u >> 8)
      002951 F5 83            [12] 2121 	mov	dph,a
      002953 E0               [24] 2122 	movx	a,@dptr
      002954 2D               [12] 2123 	add	a,r5
      002955 FF               [12] 2124 	mov	r7,a
      002956 90 98 0F         [24] 2125 	mov	dptr,#_n
      002959 F0               [24] 2126 	movx	@dptr,a
                                   2127 ;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00295A E5 10            [12] 2128 	mov	a,_bp
      00295C 24 03            [12] 2129 	add	a,#0x03
      00295E F8               [12] 2130 	mov	r0,a
      00295F E6               [12] 2131 	mov	a,@r0
      002960 24 02            [12] 2132 	add	a,#_nu
      002962 FD               [12] 2133 	mov	r5,a
      002963 08               [12] 2134 	inc	r0
      002964 E6               [12] 2135 	mov	a,@r0
      002965 34 90            [12] 2136 	addc	a,#(_nu >> 8)
      002967 FE               [12] 2137 	mov	r6,a
      002968 BF 03 02         [24] 2138 	cjne	r7,#0x03,00427$
      00296B 80 20            [24] 2139 	sjmp	00209$
      00296D                       2140 00427$:
      00296D BF 02 19         [24] 2141 	cjne	r7,#0x02,00208$
      002970 A8 10            [24] 2142 	mov	r0,_bp
      002972 08               [12] 2143 	inc	r0
      002973 EA               [12] 2144 	mov	a,r2
      002974 26               [12] 2145 	add	a,@r0
      002975 FA               [12] 2146 	mov	r2,a
      002976 EB               [12] 2147 	mov	a,r3
      002977 08               [12] 2148 	inc	r0
      002978 36               [12] 2149 	addc	a,@r0
      002979 FB               [12] 2150 	mov	r3,a
      00297A EA               [12] 2151 	mov	a,r2
      00297B 24 02            [12] 2152 	add	a,#_u
      00297D FA               [12] 2153 	mov	r2,a
      00297E EB               [12] 2154 	mov	a,r3
      00297F 34 88            [12] 2155 	addc	a,#(_u >> 8)
      002981 FB               [12] 2156 	mov	r3,a
      002982 8A 82            [24] 2157 	mov	dpl,r2
      002984 8B 83            [24] 2158 	mov	dph,r3
      002986 E0               [24] 2159 	movx	a,@dptr
      002987 70 04            [24] 2160 	jnz	00209$
      002989                       2161 00208$:
                                   2162 ;	assignBit
      002989 C2 00            [12] 2163 	clr	b0
      00298B 80 02            [24] 2164 	sjmp	00210$
      00298D                       2165 00209$:
                                   2166 ;	assignBit
      00298D D2 00            [12] 2167 	setb	b0
      00298F                       2168 00210$:
      00298F A2 00            [12] 2169 	mov	c,b0
      002991 E4               [12] 2170 	clr	a
      002992 33               [12] 2171 	rlc	a
      002993 8D 82            [24] 2172 	mov	dpl,r5
      002995 8E 83            [24] 2173 	mov	dph,r6
      002997 F0               [24] 2174 	movx	@dptr,a
                                   2175 ;	life.c:185: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      002998 90 98 04         [24] 2176 	mov	dptr,#_y
      00299B E0               [24] 2177 	movx	a,@dptr
      00299C FE               [12] 2178 	mov	r6,a
      00299D A3               [24] 2179 	inc	dptr
      00299E E0               [24] 2180 	movx	a,@dptr
      00299F C4               [12] 2181 	swap	a
      0029A0 23               [12] 2182 	rl	a
      0029A1 54 E0            [12] 2183 	anl	a,#0xe0
      0029A3 CE               [12] 2184 	xch	a,r6
      0029A4 C4               [12] 2185 	swap	a
      0029A5 23               [12] 2186 	rl	a
      0029A6 CE               [12] 2187 	xch	a,r6
      0029A7 6E               [12] 2188 	xrl	a,r6
      0029A8 CE               [12] 2189 	xch	a,r6
      0029A9 54 E0            [12] 2190 	anl	a,#0xe0
      0029AB CE               [12] 2191 	xch	a,r6
      0029AC 6E               [12] 2192 	xrl	a,r6
      0029AD FF               [12] 2193 	mov	r7,a
      0029AE 90 98 02         [24] 2194 	mov	dptr,#_x
      0029B1 E0               [24] 2195 	movx	a,@dptr
      0029B2 FC               [12] 2196 	mov	r4,a
      0029B3 A3               [24] 2197 	inc	dptr
      0029B4 E0               [24] 2198 	movx	a,@dptr
      0029B5 FD               [12] 2199 	mov	r5,a
      0029B6 EC               [12] 2200 	mov	a,r4
      0029B7 2E               [12] 2201 	add	a,r6
      0029B8 FE               [12] 2202 	mov	r6,a
      0029B9 ED               [12] 2203 	mov	a,r5
      0029BA 3F               [12] 2204 	addc	a,r7
      0029BB FF               [12] 2205 	mov	r7,a
      0029BC EE               [12] 2206 	mov	a,r6
      0029BD 24 02            [12] 2207 	add	a,#_pu
      0029BF F5 82            [12] 2208 	mov	dpl,a
      0029C1 EF               [12] 2209 	mov	a,r7
      0029C2 34 80            [12] 2210 	addc	a,#(_pu >> 8)
      0029C4 F5 83            [12] 2211 	mov	dph,a
      0029C6 E0               [24] 2212 	movx	a,@dptr
      0029C7 FD               [12] 2213 	mov	r5,a
      0029C8 EE               [12] 2214 	mov	a,r6
      0029C9 24 02            [12] 2215 	add	a,#_nu
      0029CB F5 82            [12] 2216 	mov	dpl,a
      0029CD EF               [12] 2217 	mov	a,r7
      0029CE 34 90            [12] 2218 	addc	a,#(_nu >> 8)
      0029D0 F5 83            [12] 2219 	mov	dph,a
      0029D2 E0               [24] 2220 	movx	a,@dptr
      0029D3 FF               [12] 2221 	mov	r7,a
      0029D4 ED               [12] 2222 	mov	a,r5
      0029D5 B5 07 02         [24] 2223 	cjne	a,ar7,00431$
      0029D8 80 05            [24] 2224 	sjmp	00159$
      0029DA                       2225 00431$:
      0029DA 90 98 11         [24] 2226 	mov	dptr,#_cycle2
      0029DD E4               [12] 2227 	clr	a
      0029DE F0               [24] 2228 	movx	@dptr,a
      0029DF                       2229 00159$:
                                   2230 ;	life.c:186: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      0029DF 90 98 04         [24] 2231 	mov	dptr,#_y
      0029E2 E0               [24] 2232 	movx	a,@dptr
      0029E3 FE               [12] 2233 	mov	r6,a
      0029E4 A3               [24] 2234 	inc	dptr
      0029E5 E0               [24] 2235 	movx	a,@dptr
      0029E6 C4               [12] 2236 	swap	a
      0029E7 23               [12] 2237 	rl	a
      0029E8 54 E0            [12] 2238 	anl	a,#0xe0
      0029EA CE               [12] 2239 	xch	a,r6
      0029EB C4               [12] 2240 	swap	a
      0029EC 23               [12] 2241 	rl	a
      0029ED CE               [12] 2242 	xch	a,r6
      0029EE 6E               [12] 2243 	xrl	a,r6
      0029EF CE               [12] 2244 	xch	a,r6
      0029F0 54 E0            [12] 2245 	anl	a,#0xe0
      0029F2 CE               [12] 2246 	xch	a,r6
      0029F3 6E               [12] 2247 	xrl	a,r6
      0029F4 FF               [12] 2248 	mov	r7,a
      0029F5 90 98 02         [24] 2249 	mov	dptr,#_x
      0029F8 E0               [24] 2250 	movx	a,@dptr
      0029F9 FC               [12] 2251 	mov	r4,a
      0029FA A3               [24] 2252 	inc	dptr
      0029FB E0               [24] 2253 	movx	a,@dptr
      0029FC FD               [12] 2254 	mov	r5,a
      0029FD EC               [12] 2255 	mov	a,r4
      0029FE 2E               [12] 2256 	add	a,r6
      0029FF FE               [12] 2257 	mov	r6,a
      002A00 ED               [12] 2258 	mov	a,r5
      002A01 3F               [12] 2259 	addc	a,r7
      002A02 FF               [12] 2260 	mov	r7,a
      002A03 EE               [12] 2261 	mov	a,r6
      002A04 24 02            [12] 2262 	add	a,#_u
      002A06 F5 82            [12] 2263 	mov	dpl,a
      002A08 EF               [12] 2264 	mov	a,r7
      002A09 34 88            [12] 2265 	addc	a,#(_u >> 8)
      002A0B F5 83            [12] 2266 	mov	dph,a
      002A0D E0               [24] 2267 	movx	a,@dptr
      002A0E FD               [12] 2268 	mov	r5,a
      002A0F EE               [12] 2269 	mov	a,r6
      002A10 24 02            [12] 2270 	add	a,#_nu
      002A12 F5 82            [12] 2271 	mov	dpl,a
      002A14 EF               [12] 2272 	mov	a,r7
      002A15 34 90            [12] 2273 	addc	a,#(_nu >> 8)
      002A17 F5 83            [12] 2274 	mov	dph,a
      002A19 E0               [24] 2275 	movx	a,@dptr
      002A1A FF               [12] 2276 	mov	r7,a
      002A1B ED               [12] 2277 	mov	a,r5
      002A1C B5 07 02         [24] 2278 	cjne	a,ar7,00432$
      002A1F 80 05            [24] 2279 	sjmp	00188$
      002A21                       2280 00432$:
      002A21 90 98 10         [24] 2281 	mov	dptr,#_fixed
      002A24 E4               [12] 2282 	clr	a
      002A25 F0               [24] 2283 	movx	@dptr,a
      002A26                       2284 00188$:
                                   2285 ;	life.c:161: for (x = 0; x < W; x++) {
      002A26 90 98 02         [24] 2286 	mov	dptr,#_x
      002A29 E0               [24] 2287 	movx	a,@dptr
      002A2A 24 01            [12] 2288 	add	a,#0x01
      002A2C F0               [24] 2289 	movx	@dptr,a
      002A2D A3               [24] 2290 	inc	dptr
      002A2E E0               [24] 2291 	movx	a,@dptr
      002A2F 34 00            [12] 2292 	addc	a,#0x00
      002A31 F0               [24] 2293 	movx	@dptr,a
      002A32 90 98 02         [24] 2294 	mov	dptr,#_x
      002A35 E0               [24] 2295 	movx	a,@dptr
      002A36 FE               [12] 2296 	mov	r6,a
      002A37 A3               [24] 2297 	inc	dptr
      002A38 E0               [24] 2298 	movx	a,@dptr
      002A39 FF               [12] 2299 	mov	r7,a
      002A3A C3               [12] 2300 	clr	c
      002A3B EE               [12] 2301 	mov	a,r6
      002A3C 94 20            [12] 2302 	subb	a,#0x20
      002A3E EF               [12] 2303 	mov	a,r7
      002A3F 64 80            [12] 2304 	xrl	a,#0x80
      002A41 94 80            [12] 2305 	subb	a,#0x80
      002A43 50 03            [24] 2306 	jnc	00433$
      002A45 02 26 5B         [24] 2307 	ljmp	00187$
      002A48                       2308 00433$:
                                   2309 ;	life.c:158: for (y = 0; y < H; y++) {
      002A48 90 98 04         [24] 2310 	mov	dptr,#_y
      002A4B E0               [24] 2311 	movx	a,@dptr
      002A4C 24 01            [12] 2312 	add	a,#0x01
      002A4E F0               [24] 2313 	movx	@dptr,a
      002A4F A3               [24] 2314 	inc	dptr
      002A50 E0               [24] 2315 	movx	a,@dptr
      002A51 34 00            [12] 2316 	addc	a,#0x00
      002A53 F0               [24] 2317 	movx	@dptr,a
      002A54 90 98 04         [24] 2318 	mov	dptr,#_y
      002A57 E0               [24] 2319 	movx	a,@dptr
      002A58 FE               [12] 2320 	mov	r6,a
      002A59 A3               [24] 2321 	inc	dptr
      002A5A E0               [24] 2322 	movx	a,@dptr
      002A5B FF               [12] 2323 	mov	r7,a
      002A5C C3               [12] 2324 	clr	c
      002A5D EE               [12] 2325 	mov	a,r6
      002A5E 94 40            [12] 2326 	subb	a,#0x40
      002A60 EF               [12] 2327 	mov	a,r7
      002A61 64 80            [12] 2328 	xrl	a,#0x80
      002A63 94 80            [12] 2329 	subb	a,#0x80
      002A65 50 03            [24] 2330 	jnc	00434$
      002A67 02 26 32         [24] 2331 	ljmp	00189$
      002A6A                       2332 00434$:
                                   2333 ;	life.c:190: memcpy(pu, u, sizeof (u));
      002A6A E4               [12] 2334 	clr	a
      002A6B C0 E0            [24] 2335 	push	acc
      002A6D 74 08            [12] 2336 	mov	a,#0x08
      002A6F C0 E0            [24] 2337 	push	acc
      002A71 74 02            [12] 2338 	mov	a,#_u
      002A73 C0 E0            [24] 2339 	push	acc
      002A75 74 88            [12] 2340 	mov	a,#(_u >> 8)
      002A77 C0 E0            [24] 2341 	push	acc
      002A79 E4               [12] 2342 	clr	a
      002A7A C0 E0            [24] 2343 	push	acc
      002A7C 90 80 02         [24] 2344 	mov	dptr,#_pu
      002A7F 75 F0 00         [24] 2345 	mov	b,#0x00
      002A82 12 2B 48         [24] 2346 	lcall	___memcpy
      002A85 E5 81            [12] 2347 	mov	a,sp
      002A87 24 FB            [12] 2348 	add	a,#0xfb
      002A89 F5 81            [12] 2349 	mov	sp,a
                                   2350 ;	life.c:191: memcpy(u, nu, sizeof (nu));
      002A8B E4               [12] 2351 	clr	a
      002A8C C0 E0            [24] 2352 	push	acc
      002A8E 74 08            [12] 2353 	mov	a,#0x08
      002A90 C0 E0            [24] 2354 	push	acc
      002A92 74 02            [12] 2355 	mov	a,#_nu
      002A94 C0 E0            [24] 2356 	push	acc
      002A96 74 90            [12] 2357 	mov	a,#(_nu >> 8)
      002A98 C0 E0            [24] 2358 	push	acc
      002A9A E4               [12] 2359 	clr	a
      002A9B C0 E0            [24] 2360 	push	acc
      002A9D 90 88 02         [24] 2361 	mov	dptr,#_u
      002AA0 75 F0 00         [24] 2362 	mov	b,#0x00
      002AA3 12 2B 48         [24] 2363 	lcall	___memcpy
      002AA6 E5 81            [12] 2364 	mov	a,sp
      002AA8 24 FB            [12] 2365 	add	a,#0xfb
      002AAA F5 81            [12] 2366 	mov	sp,a
                                   2367 ;	life.c:229: if (fixed || cycle2) {
      002AAC 90 98 10         [24] 2368 	mov	dptr,#_fixed
      002AAF E0               [24] 2369 	movx	a,@dptr
      002AB0 70 09            [24] 2370 	jnz	00120$
      002AB2 90 98 11         [24] 2371 	mov	dptr,#_cycle2
      002AB5 E0               [24] 2372 	movx	a,@dptr
      002AB6 70 03            [24] 2373 	jnz	00436$
      002AB8 02 26 05         [24] 2374 	ljmp	00196$
      002ABB                       2375 00436$:
      002ABB                       2376 00120$:
                                   2377 ;	life.c:230: printstr("DONE\r\n");
      002ABB 7D A9            [12] 2378 	mov	r5,#___str_6
      002ABD 7E 2D            [12] 2379 	mov	r6,#(___str_6 >> 8)
      002ABF 7F 80            [12] 2380 	mov	r7,#0x80
                                   2381 ;	life.c:48: return;
      002AC1                       2382 00192$:
                                   2383 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AC1 8D 82            [24] 2384 	mov	dpl,r5
      002AC3 8E 83            [24] 2385 	mov	dph,r6
      002AC5 8F F0            [24] 2386 	mov	b,r7
      002AC7 12 2C 45         [24] 2387 	lcall	__gptrget
      002ACA FC               [12] 2388 	mov	r4,a
      002ACB 60 10            [24] 2389 	jz	00166$
      002ACD 7B 00            [12] 2390 	mov	r3,#0x00
      002ACF 8C 82            [24] 2391 	mov	dpl,r4
      002AD1 8B 83            [24] 2392 	mov	dph,r3
      002AD3 12 20 75         [24] 2393 	lcall	_putchar
      002AD6 0D               [12] 2394 	inc	r5
                                   2395 ;	life.c:230: printstr("DONE\r\n");
      002AD7 BD 00 E7         [24] 2396 	cjne	r5,#0x00,00192$
      002ADA 0E               [12] 2397 	inc	r6
      002ADB 80 E4            [24] 2398 	sjmp	00192$
      002ADD                       2399 00166$:
                                   2400 ;	life.c:231: (void)getchar();
      002ADD 12 20 7A         [24] 2401 	lcall	_getchar
                                   2402 ;	life.c:232: break;
      002AE0                       2403 00123$:
                                   2404 ;	life.c:236: if (i1) {
      002AE0 90 80 01         [24] 2405 	mov	dptr,#_i1
      002AE3 E0               [24] 2406 	movx	a,@dptr
      002AE4 60 25            [24] 2407 	jz	00202$
                                   2408 ;	life.c:237: printstr("BREAK\r\n");
      002AE6 7D B0            [12] 2409 	mov	r5,#___str_7
      002AE8 7E 2D            [12] 2410 	mov	r6,#(___str_7 >> 8)
      002AEA 7F 80            [12] 2411 	mov	r7,#0x80
                                   2412 ;	life.c:48: return;
      002AEC                       2413 00199$:
                                   2414 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AEC 8D 82            [24] 2415 	mov	dpl,r5
      002AEE 8E 83            [24] 2416 	mov	dph,r6
      002AF0 8F F0            [24] 2417 	mov	b,r7
      002AF2 12 2C 45         [24] 2418 	lcall	__gptrget
      002AF5 FC               [12] 2419 	mov	r4,a
      002AF6 60 10            [24] 2420 	jz	00168$
      002AF8 7B 00            [12] 2421 	mov	r3,#0x00
      002AFA 8C 82            [24] 2422 	mov	dpl,r4
      002AFC 8B 83            [24] 2423 	mov	dph,r3
      002AFE 12 20 75         [24] 2424 	lcall	_putchar
      002B01 0D               [12] 2425 	inc	r5
                                   2426 ;	life.c:237: printstr("BREAK\r\n");
      002B02 BD 00 E7         [24] 2427 	cjne	r5,#0x00,00199$
      002B05 0E               [12] 2428 	inc	r6
      002B06 80 E4            [24] 2429 	sjmp	00199$
      002B08                       2430 00168$:
                                   2431 ;	life.c:238: (void)getchar();
      002B08 12 20 7A         [24] 2432 	lcall	_getchar
      002B0B                       2433 00202$:
                                   2434 ;	life.c:203: for (i0 = 0; !i0; ) {		
      002B0B 90 80 00         [24] 2435 	mov	dptr,#_i0
      002B0E E0               [24] 2436 	movx	a,@dptr
      002B0F 70 03            [24] 2437 	jnz	00442$
      002B11 02 23 27         [24] 2438 	ljmp	00201$
      002B14                       2439 00442$:
                                   2440 ;	life.c:242: terminate:
      002B14                       2441 00127$:
                                   2442 ;	life.c:243: EA = 0;
                                   2443 ;	assignBit
      002B14 C2 AF            [12] 2444 	clr	_EA
                                   2445 ;	life.c:244: printstr("TERM\r\n");
      002B16 7D B8            [12] 2446 	mov	r5,#___str_8
      002B18 7E 2D            [12] 2447 	mov	r6,#(___str_8 >> 8)
      002B1A 7F 80            [12] 2448 	mov	r7,#0x80
                                   2449 ;	life.c:48: return;
      002B1C                       2450 00204$:
                                   2451 ;	life.c:46: for (; *s; s++) putchar(*s);
      002B1C 8D 82            [24] 2452 	mov	dpl,r5
      002B1E 8E 83            [24] 2453 	mov	dph,r6
      002B20 8F F0            [24] 2454 	mov	b,r7
      002B22 12 2C 45         [24] 2455 	lcall	__gptrget
      002B25 FC               [12] 2456 	mov	r4,a
      002B26 60 10            [24] 2457 	jz	00170$
      002B28 7B 00            [12] 2458 	mov	r3,#0x00
      002B2A 8C 82            [24] 2459 	mov	dpl,r4
      002B2C 8B 83            [24] 2460 	mov	dph,r3
      002B2E 12 20 75         [24] 2461 	lcall	_putchar
      002B31 0D               [12] 2462 	inc	r5
                                   2463 ;	life.c:244: printstr("TERM\r\n");
      002B32 BD 00 E7         [24] 2464 	cjne	r5,#0x00,00204$
      002B35 0E               [12] 2465 	inc	r6
      002B36 80 E4            [24] 2466 	sjmp	00204$
      002B38                       2467 00170$:
                                   2468 ;	life.c:245: (void)getchar();
      002B38 12 20 7A         [24] 2469 	lcall	_getchar
                                   2470 ;	life.c:249: __endasm;
      002B3B 02 00 00         [24] 2471 	ljmp	0
                                   2472 ;	life.c:250: }
      002B3E 85 10 81         [24] 2473 	mov	sp,_bp
      002B41 D0 10            [24] 2474 	pop	_bp
      002B43 22               [24] 2475 	ret
                                   2476 	.area CSEG    (CODE)
                                   2477 	.area CONST   (CODE)
      002D6D                       2478 _digits:
      002D6D 30                    2479 	.db #0x30	; 48	'0'
      002D6E 31                    2480 	.db #0x31	; 49	'1'
      002D6F 32                    2481 	.db #0x32	; 50	'2'
      002D70 33                    2482 	.db #0x33	; 51	'3'
      002D71 34                    2483 	.db #0x34	; 52	'4'
      002D72 35                    2484 	.db #0x35	; 53	'5'
      002D73 36                    2485 	.db #0x36	; 54	'6'
      002D74 37                    2486 	.db #0x37	; 55	'7'
      002D75 38                    2487 	.db #0x38	; 56	'8'
      002D76 39                    2488 	.db #0x39	; 57	'9'
      002D77 61                    2489 	.db #0x61	; 97	'a'
      002D78 62                    2490 	.db #0x62	; 98	'b'
      002D79 63                    2491 	.db #0x63	; 99	'c'
      002D7A 64                    2492 	.db #0x64	; 100	'd'
      002D7B 65                    2493 	.db #0x65	; 101	'e'
      002D7C 66                    2494 	.db #0x66	; 102	'f'
                                   2495 	.area CONST   (CODE)
      002D7D                       2496 ___str_0:
      002D7D 1B                    2497 	.db 0x1b
      002D7E 5B 32 4A              2498 	.ascii "[2J"
      002D81 1B                    2499 	.db 0x1b
      002D82 5B 6D                 2500 	.ascii "[m"
      002D84 00                    2501 	.db 0x00
                                   2502 	.area CSEG    (CODE)
                                   2503 	.area CONST   (CODE)
      002D85                       2504 ___str_1:
      002D85 0D                    2505 	.db 0x0d
      002D86 0A                    2506 	.db 0x0a
      002D87 00                    2507 	.db 0x00
                                   2508 	.area CSEG    (CODE)
                                   2509 	.area CONST   (CODE)
      002D88                       2510 ___str_2:
      002D88 4C 4F 41 44 20 3C     2511 	.ascii "LOAD <"
      002D8E 00                    2512 	.db 0x00
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      002D8F                       2515 ___str_3:
      002D8F 3E                    2516 	.ascii ">"
      002D90 0D                    2517 	.db 0x0d
      002D91 0A                    2518 	.db 0x0a
      002D92 00                    2519 	.db 0x00
                                   2520 	.area CSEG    (CODE)
      002B44                       2521 _busy:
      002B44 5C                    2522 	.db #0x5c	; 92
      002B45 7C                    2523 	.db #0x7c	; 124
      002B46 2F                    2524 	.db #0x2f	; 47
      002B47 2D                    2525 	.db #0x2d	; 45
                                   2526 	.area CONST   (CODE)
      002D93                       2527 ___str_4:
      002D93 1B                    2528 	.db 0x1b
      002D94 5B 32 4A              2529 	.ascii "[2J"
      002D97 1B                    2530 	.db 0x1b
      002D98 5B 6D 49 4E 49 54     2531 	.ascii "[mINIT"
      002D9E 0D                    2532 	.db 0x0d
      002D9F 0A                    2533 	.db 0x0a
      002DA0 00                    2534 	.db 0x00
                                   2535 	.area CSEG    (CODE)
                                   2536 	.area CONST   (CODE)
      002DA1                       2537 ___str_5:
      002DA1 52 45 41 44 59        2538 	.ascii "READY"
      002DA6 0D                    2539 	.db 0x0d
      002DA7 0A                    2540 	.db 0x0a
      002DA8 00                    2541 	.db 0x00
                                   2542 	.area CSEG    (CODE)
                                   2543 	.area CONST   (CODE)
      002DA9                       2544 ___str_6:
      002DA9 44 4F 4E 45           2545 	.ascii "DONE"
      002DAD 0D                    2546 	.db 0x0d
      002DAE 0A                    2547 	.db 0x0a
      002DAF 00                    2548 	.db 0x00
                                   2549 	.area CSEG    (CODE)
                                   2550 	.area CONST   (CODE)
      002DB0                       2551 ___str_7:
      002DB0 42 52 45 41 4B        2552 	.ascii "BREAK"
      002DB5 0D                    2553 	.db 0x0d
      002DB6 0A                    2554 	.db 0x0a
      002DB7 00                    2555 	.db 0x00
                                   2556 	.area CSEG    (CODE)
                                   2557 	.area CONST   (CODE)
      002DB8                       2558 ___str_8:
      002DB8 54 45 52 4D           2559 	.ascii "TERM"
      002DBC 0D                    2560 	.db 0x0d
      002DBD 0A                    2561 	.db 0x0a
      002DBE 00                    2562 	.db 0x00
                                   2563 	.area CSEG    (CODE)
                                   2564 	.area XINIT   (CODE)
                                   2565 	.area CABS    (ABS,CODE)
