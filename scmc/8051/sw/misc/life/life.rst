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
      0020B1 7D 91            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2D            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2C 59         [24]  565 	lcall	__gptrget
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
      0020ED 24 81            [12]  597 	add	a,#_digits
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
      00210A 24 81            [12]  614 	add	a,#_digits
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
      002139 24 81            [12]  645 	add	a,#_digits
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
      002154 24 81            [12]  661 	add	a,#_digits
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
      002183 24 81            [12]  692 	add	a,#_digits
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
      0021A0 24 81            [12]  709 	add	a,#_digits
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
      0021CF 24 81            [12]  740 	add	a,#_digits
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
      0021EA 24 81            [12]  756 	add	a,#_digits
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
      0021FF 7D 99            [12]  769 	mov	r5,#___str_1
      002201 7E 2D            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2C 59         [24]  778 	lcall	__gptrget
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
      0022C9 7D 99            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2D            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2C 59         [24]  930 	lcall	__gptrget
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
                                    998 ;	life.c:198: void main(void) {
                                    999 ;	-----------------------------------------
                                   1000 ;	 function main
                                   1001 ;	-----------------------------------------
      00230E                       1002 _main:
      00230E C0 10            [24] 1003 	push	_bp
      002310 E5 81            [12] 1004 	mov	a,sp
      002312 F5 10            [12] 1005 	mov	_bp,a
      002314 24 0F            [12] 1006 	add	a,#0x0f
      002316 F5 81            [12] 1007 	mov	sp,a
                                   1008 ;	life.c:199: IT0 = 1;
                                   1009 ;	assignBit
      002318 D2 88            [12] 1010 	setb	_IT0
                                   1011 ;	life.c:200: IT1 = 1;
                                   1012 ;	assignBit
      00231A D2 8A            [12] 1013 	setb	_IT1
                                   1014 ;	life.c:201: EX0 = 1;
                                   1015 ;	assignBit
      00231C D2 A8            [12] 1016 	setb	_EX0
                                   1017 ;	life.c:202: EX1 = 1;
                                   1018 ;	assignBit
      00231E D2 AA            [12] 1019 	setb	_EX1
                                   1020 ;	life.c:203: EA = 1;
                                   1021 ;	assignBit
      002320 D2 AF            [12] 1022 	setb	_EA
                                   1023 ;	life.c:205: for (i0 = 0; !i0; ) {		
      002322 90 80 00         [24] 1024 	mov	dptr,#_i0
      002325 E4               [12] 1025 	clr	a
      002326 F0               [24] 1026 	movx	@dptr,a
      002327                       1027 00197$:
                                   1028 ;	life.c:206: printstr("\033[2J\033[mINIT\r\n");
      002327 7D A7            [12] 1029 	mov	r5,#___str_4
      002329 7E 2D            [12] 1030 	mov	r6,#(___str_4 >> 8)
      00232B 7F 80            [12] 1031 	mov	r7,#0x80
                                   1032 ;	life.c:48: return;
      00232D                       1033 00168$:
                                   1034 ;	life.c:46: for (; *s; s++) putchar(*s);
      00232D 8D 82            [24] 1035 	mov	dpl,r5
      00232F 8E 83            [24] 1036 	mov	dph,r6
      002331 8F F0            [24] 1037 	mov	b,r7
      002333 12 2C 59         [24] 1038 	lcall	__gptrget
      002336 FC               [12] 1039 	mov	r4,a
      002337 60 10            [24] 1040 	jz	00107$
      002339 7B 00            [12] 1041 	mov	r3,#0x00
      00233B 8C 82            [24] 1042 	mov	dpl,r4
      00233D 8B 83            [24] 1043 	mov	dph,r3
      00233F 12 20 75         [24] 1044 	lcall	_putchar
      002342 0D               [12] 1045 	inc	r5
                                   1046 ;	life.c:207: while (1) {
      002343 BD 00 E7         [24] 1047 	cjne	r5,#0x00,00168$
      002346 0E               [12] 1048 	inc	r6
      002347 80 E4            [24] 1049 	sjmp	00168$
      002349                       1050 00107$:
                                   1051 ;	life.c:208: c = getchar();
      002349 12 20 7A         [24] 1052 	lcall	_getchar
      00234C AE 82            [24] 1053 	mov	r6,dpl
      00234E AF 83            [24] 1054 	mov	r7,dph
      002350 90 98 0C         [24] 1055 	mov	dptr,#_c
      002353 EE               [12] 1056 	mov	a,r6
      002354 F0               [24] 1057 	movx	@dptr,a
      002355 EF               [12] 1058 	mov	a,r7
      002356 A3               [24] 1059 	inc	dptr
      002357 F0               [24] 1060 	movx	@dptr,a
                                   1061 ;	life.c:209: if (i0 || (c == (int)'T')) goto terminate;
      002358 90 80 00         [24] 1062 	mov	dptr,#_i0
      00235B E0               [24] 1063 	movx	a,@dptr
      00235C 60 03            [24] 1064 	jz	00386$
      00235E 02 2B 28         [24] 1065 	ljmp	00127$
      002361                       1066 00386$:
      002361 BE 54 06         [24] 1067 	cjne	r6,#0x54,00387$
      002364 BF 00 03         [24] 1068 	cjne	r7,#0x00,00387$
      002367 02 2B 28         [24] 1069 	ljmp	00127$
      00236A                       1070 00387$:
                                   1071 ;	life.c:210: if (c == (int)'L') break;
      00236A BE 4C DC         [24] 1072 	cjne	r6,#0x4c,00107$
      00236D BF 00 D9         [24] 1073 	cjne	r7,#0x00,00107$
                                   1074 ;	life.c:213: reload:
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
      002380 12 2B EF         [24] 1085 	lcall	_memset
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
      002399 12 2B EF         [24] 1098 	lcall	_memset
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
      0023A9 7D 9C            [12] 1109 	mov	r5,#___str_2
      0023AB 7E 2D            [12] 1110 	mov	r6,#(___str_2 >> 8)
      0023AD 7F 80            [12] 1111 	mov	r7,#0x80
                                   1112 ;	life.c:48: return;
      0023AF                       1113 00171$:
                                   1114 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023AF 8D 82            [24] 1115 	mov	dpl,r5
      0023B1 8E 83            [24] 1116 	mov	dph,r6
      0023B3 8F F0            [24] 1117 	mov	b,r7
      0023B5 12 2C 59         [24] 1118 	lcall	__gptrget
      0023B8 FC               [12] 1119 	mov	r4,a
      0023B9 60 10            [24] 1120 	jz	00132$
      0023BB 7B 00            [12] 1121 	mov	r3,#0x00
      0023BD 8C 82            [24] 1122 	mov	dpl,r4
      0023BF 8B 83            [24] 1123 	mov	dph,r3
      0023C1 12 20 75         [24] 1124 	lcall	_putchar
      0023C4 0D               [12] 1125 	inc	r5
                                   1126 ;	life.c:125: printstr("LOAD <");
      0023C5 BD 00 E7         [24] 1127 	cjne	r5,#0x00,00171$
      0023C8 0E               [12] 1128 	inc	r6
      0023C9 80 E4            [24] 1129 	sjmp	00171$
      0023CB                       1130 00132$:
                                   1131 ;	life.c:127: for (y = 0; y < H; y++)
      0023CB 90 98 04         [24] 1132 	mov	dptr,#_y
      0023CE E4               [12] 1133 	clr	a
      0023CF F0               [24] 1134 	movx	@dptr,a
      0023D0 A3               [24] 1135 	inc	dptr
      0023D1 F0               [24] 1136 	movx	@dptr,a
      0023D2                       1137 00175$:
                                   1138 ;	life.c:128: for (x = 0; x < W; x++) {
      0023D2 90 98 02         [24] 1139 	mov	dptr,#_x
      0023D5 E4               [12] 1140 	clr	a
      0023D6 F0               [24] 1141 	movx	@dptr,a
      0023D7 A3               [24] 1142 	inc	dptr
      0023D8 F0               [24] 1143 	movx	@dptr,a
      0023D9                       1144 00173$:
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
      00242A 80 4D            [24] 1206 	sjmp	00174$
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
      00246F 80 08            [24] 1259 	sjmp	00174$
      002471                       1260 00137$:
                                   1261 ;	life.c:136: } else if (c == (int)'#') goto out;
      002471 BE 23 05         [24] 1262 	cjne	r6,#0x23,00396$
      002474 BF 00 02         [24] 1263 	cjne	r7,#0x00,00396$
      002477 80 44            [24] 1264 	sjmp	00150$
      002479                       1265 00396$:
      002479                       1266 00174$:
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
      002496 50 03            [24] 1288 	jnc	00397$
      002498 02 23 D9         [24] 1289 	ljmp	00173$
      00249B                       1290 00397$:
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
      0024B8 50 03            [24] 1312 	jnc	00398$
      0024BA 02 23 D2         [24] 1313 	ljmp	00175$
      0024BD                       1314 00398$:
                                   1315 ;	life.c:139: out:
      0024BD                       1316 00150$:
                                   1317 ;	life.c:140: if (c != (int)'#')
      0024BD 90 98 0C         [24] 1318 	mov	dptr,#_c
      0024C0 E0               [24] 1319 	movx	a,@dptr
      0024C1 FE               [12] 1320 	mov	r6,a
      0024C2 A3               [24] 1321 	inc	dptr
      0024C3 E0               [24] 1322 	movx	a,@dptr
      0024C4 FF               [12] 1323 	mov	r7,a
      0024C5 BE 23 05         [24] 1324 	cjne	r6,#0x23,00399$
      0024C8 BF 00 02         [24] 1325 	cjne	r7,#0x00,00399$
      0024CB 80 15            [24] 1326 	sjmp	00149$
      0024CD                       1327 00399$:
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
      0024EF 30 E3 02         [24] 1355 	jnb	acc.3,00402$
      0024F2 44 F0            [12] 1356 	orl	a,#0xf0
      0024F4                       1357 00402$:
      0024F4 FE               [12] 1358 	mov	r6,a
      0024F5 33               [12] 1359 	rlc	a
      0024F6 95 E0            [12] 1360 	subb	a,acc
      0024F8 53 06 0F         [24] 1361 	anl	ar6,#0x0f
      0024FB 7F 00            [12] 1362 	mov	r7,#0x00
      0024FD EE               [12] 1363 	mov	a,r6
      0024FE 24 81            [12] 1364 	add	a,#_digits
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
      00251B 24 81            [12] 1381 	add	a,#_digits
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
      00253F 30 E3 02         [24] 1406 	jnb	acc.3,00403$
      002542 44 F0            [12] 1407 	orl	a,#0xf0
      002544                       1408 00403$:
      002544 53 06 0F         [24] 1409 	anl	ar6,#0x0f
      002547 7F 00            [12] 1410 	mov	r7,#0x00
      002549 EE               [12] 1411 	mov	a,r6
      00254A 24 81            [12] 1412 	add	a,#_digits
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
      002565 24 81            [12] 1428 	add	a,#_digits
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
      00257A 7D A3            [12] 1441 	mov	r5,#___str_3
      00257C 7E 2D            [12] 1442 	mov	r6,#(___str_3 >> 8)
      00257E 7F 80            [12] 1443 	mov	r7,#0x80
                                   1444 ;	life.c:48: return;
      002580                       1445 00178$:
                                   1446 ;	life.c:46: for (; *s; s++) putchar(*s);
      002580 8D 82            [24] 1447 	mov	dpl,r5
      002582 8E 83            [24] 1448 	mov	dph,r6
      002584 8F F0            [24] 1449 	mov	b,r7
      002586 12 2C 59         [24] 1450 	lcall	__gptrget
      002589 FC               [12] 1451 	mov	r4,a
      00258A 60 10            [24] 1452 	jz	00153$
      00258C 7B 00            [12] 1453 	mov	r3,#0x00
      00258E 8C 82            [24] 1454 	mov	dpl,r4
      002590 8B 83            [24] 1455 	mov	dph,r3
      002592 12 20 75         [24] 1456 	lcall	_putchar
      002595 0D               [12] 1457 	inc	r5
                                   1458 ;	life.c:146: printstr(">\r\n");
      002596 BD 00 E7         [24] 1459 	cjne	r5,#0x00,00178$
      002599 0E               [12] 1460 	inc	r6
      00259A 80 E4            [24] 1461 	sjmp	00178$
      00259C                       1462 00153$:
                                   1463 ;	life.c:216: show(0);
      00259C 75 82 00         [24] 1464 	mov	dpl,#0x00
      00259F 12 20 A9         [24] 1465 	lcall	_show
                                   1466 ;	life.c:218: printstr("READY\r\n");
      0025A2 7D B5            [12] 1467 	mov	r5,#___str_5
      0025A4 7E 2D            [12] 1468 	mov	r6,#(___str_5 >> 8)
      0025A6 7F 80            [12] 1469 	mov	r7,#0x80
                                   1470 ;	life.c:48: return;
      0025A8                       1471 00181$:
                                   1472 ;	life.c:46: for (; *s; s++) putchar(*s);
      0025A8 8D 82            [24] 1473 	mov	dpl,r5
      0025AA 8E 83            [24] 1474 	mov	dph,r6
      0025AC 8F F0            [24] 1475 	mov	b,r7
      0025AE 12 2C 59         [24] 1476 	lcall	__gptrget
      0025B1 FC               [12] 1477 	mov	r4,a
      0025B2 60 10            [24] 1478 	jz	00118$
      0025B4 7B 00            [12] 1479 	mov	r3,#0x00
      0025B6 8C 82            [24] 1480 	mov	dpl,r4
      0025B8 8B 83            [24] 1481 	mov	dph,r3
      0025BA 12 20 75         [24] 1482 	lcall	_putchar
      0025BD 0D               [12] 1483 	inc	r5
                                   1484 ;	life.c:219: while (1) {
      0025BE BD 00 E7         [24] 1485 	cjne	r5,#0x00,00181$
      0025C1 0E               [12] 1486 	inc	r6
      0025C2 80 E4            [24] 1487 	sjmp	00181$
      0025C4                       1488 00118$:
                                   1489 ;	life.c:220: c = getchar();
      0025C4 12 20 7A         [24] 1490 	lcall	_getchar
      0025C7 AE 82            [24] 1491 	mov	r6,dpl
      0025C9 AF 83            [24] 1492 	mov	r7,dph
      0025CB 90 98 0C         [24] 1493 	mov	dptr,#_c
      0025CE EE               [12] 1494 	mov	a,r6
      0025CF F0               [24] 1495 	movx	@dptr,a
      0025D0 EF               [12] 1496 	mov	a,r7
      0025D1 A3               [24] 1497 	inc	dptr
      0025D2 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	life.c:221: if (i0 || (c == (int)'T')) goto terminate;
      0025D3 90 80 00         [24] 1500 	mov	dptr,#_i0
      0025D6 E0               [24] 1501 	movx	a,@dptr
      0025D7 60 03            [24] 1502 	jz	00408$
      0025D9 02 2B 28         [24] 1503 	ljmp	00127$
      0025DC                       1504 00408$:
      0025DC BE 54 06         [24] 1505 	cjne	r6,#0x54,00409$
      0025DF BF 00 03         [24] 1506 	cjne	r7,#0x00,00409$
      0025E2 02 2B 28         [24] 1507 	ljmp	00127$
      0025E5                       1508 00409$:
                                   1509 ;	life.c:222: if (c == (int)'L') goto reload;
      0025E5 BE 4C 06         [24] 1510 	cjne	r6,#0x4c,00410$
      0025E8 BF 00 03         [24] 1511 	cjne	r7,#0x00,00410$
      0025EB 02 23 70         [24] 1512 	ljmp	00109$
      0025EE                       1513 00410$:
                                   1514 ;	life.c:223: if (c == (int)'S') break;
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
                                   1528 ;	life.c:228: for (i1 = 0; !i0 && !i1; ) {
      002601 90 80 01         [24] 1529 	mov	dptr,#_i1
      002604 F0               [24] 1530 	movx	@dptr,a
      002605                       1531 00192$:
      002605 90 80 00         [24] 1532 	mov	dptr,#_i0
      002608 E0               [24] 1533 	movx	a,@dptr
      002609 60 03            [24] 1534 	jz	00413$
      00260B 02 2A F4         [24] 1535 	ljmp	00123$
      00260E                       1536 00413$:
      00260E 90 80 01         [24] 1537 	mov	dptr,#_i1
      002611 E0               [24] 1538 	movx	a,@dptr
      002612 60 03            [24] 1539 	jz	00414$
      002614 02 2A F4         [24] 1540 	ljmp	00123$
      002617                       1541 00414$:
                                   1542 ;	life.c:229: show(1);
      002617 75 82 01         [24] 1543 	mov	dpl,#0x01
      00261A 12 20 A9         [24] 1544 	lcall	_show
                                   1545 ;	life.c:154: fixed = 0;
      00261D 90 98 10         [24] 1546 	mov	dptr,#_fixed
      002620 E4               [12] 1547 	clr	a
      002621 F0               [24] 1548 	movx	@dptr,a
                                   1549 ;	life.c:155: cycle2 = 0;
      002622 90 98 11         [24] 1550 	mov	dptr,#_cycle2
      002625 F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	life.c:156: bstep = 0;
      002626 90 98 0E         [24] 1553 	mov	dptr,#_bstep
      002629 F0               [24] 1554 	movx	@dptr,a
                                   1555 ;	life.c:158: for (y = 0; y < H; y++) {
      00262A 90 98 04         [24] 1556 	mov	dptr,#_y
      00262D F0               [24] 1557 	movx	@dptr,a
      00262E A3               [24] 1558 	inc	dptr
      00262F F0               [24] 1559 	movx	@dptr,a
      002630                       1560 00185$:
                                   1561 ;	life.c:159: putchar(busy[bstep]); putchar('\r');
      002630 90 98 0E         [24] 1562 	mov	dptr,#_bstep
      002633 E0               [24] 1563 	movx	a,@dptr
      002634 90 2B 58         [24] 1564 	mov	dptr,#_busy
      002637 93               [24] 1565 	movc	a,@a+dptr
      002638 FF               [12] 1566 	mov	r7,a
      002639 7E 00            [12] 1567 	mov	r6,#0x00
      00263B 8F 82            [24] 1568 	mov	dpl,r7
      00263D 8E 83            [24] 1569 	mov	dph,r6
      00263F 12 20 75         [24] 1570 	lcall	_putchar
      002642 90 00 0D         [24] 1571 	mov	dptr,#0x000d
      002645 12 20 75         [24] 1572 	lcall	_putchar
                                   1573 ;	life.c:160: bstep = (bstep + 1) & 3;
      002648 90 98 0E         [24] 1574 	mov	dptr,#_bstep
      00264B E0               [24] 1575 	movx	a,@dptr
      00264C FF               [12] 1576 	mov	r7,a
      00264D 0F               [12] 1577 	inc	r7
      00264E 74 03            [12] 1578 	mov	a,#0x03
      002650 5F               [12] 1579 	anl	a,r7
      002651 F0               [24] 1580 	movx	@dptr,a
                                   1581 ;	life.c:161: for (x = 0; x < W; x++) {
      002652 90 98 02         [24] 1582 	mov	dptr,#_x
      002655 E4               [12] 1583 	clr	a
      002656 F0               [24] 1584 	movx	@dptr,a
      002657 A3               [24] 1585 	inc	dptr
      002658 F0               [24] 1586 	movx	@dptr,a
      002659                       1587 00183$:
                                   1588 ;	life.c:162: n = -u[A2D(W, y, x)];
      002659 90 98 04         [24] 1589 	mov	dptr,#_y
      00265C E0               [24] 1590 	movx	a,@dptr
      00265D FE               [12] 1591 	mov	r6,a
      00265E A3               [24] 1592 	inc	dptr
      00265F E0               [24] 1593 	movx	a,@dptr
      002660 FF               [12] 1594 	mov	r7,a
      002661 A8 10            [24] 1595 	mov	r0,_bp
      002663 08               [12] 1596 	inc	r0
      002664 A6 06            [24] 1597 	mov	@r0,ar6
      002666 EF               [12] 1598 	mov	a,r7
      002667 C4               [12] 1599 	swap	a
      002668 23               [12] 1600 	rl	a
      002669 54 E0            [12] 1601 	anl	a,#0xe0
      00266B C6               [12] 1602 	xch	a,@r0
      00266C C4               [12] 1603 	swap	a
      00266D 23               [12] 1604 	rl	a
      00266E C6               [12] 1605 	xch	a,@r0
      00266F 66               [12] 1606 	xrl	a,@r0
      002670 C6               [12] 1607 	xch	a,@r0
      002671 54 E0            [12] 1608 	anl	a,#0xe0
      002673 C6               [12] 1609 	xch	a,@r0
      002674 66               [12] 1610 	xrl	a,@r0
      002675 08               [12] 1611 	inc	r0
      002676 F6               [12] 1612 	mov	@r0,a
      002677 90 98 02         [24] 1613 	mov	dptr,#_x
      00267A E0               [24] 1614 	movx	a,@dptr
      00267B FA               [12] 1615 	mov	r2,a
      00267C A3               [24] 1616 	inc	dptr
      00267D E0               [24] 1617 	movx	a,@dptr
      00267E FB               [12] 1618 	mov	r3,a
      00267F A8 10            [24] 1619 	mov	r0,_bp
      002681 08               [12] 1620 	inc	r0
      002682 E5 10            [12] 1621 	mov	a,_bp
      002684 24 03            [12] 1622 	add	a,#0x03
      002686 F9               [12] 1623 	mov	r1,a
      002687 EA               [12] 1624 	mov	a,r2
      002688 26               [12] 1625 	add	a,@r0
      002689 F7               [12] 1626 	mov	@r1,a
      00268A EB               [12] 1627 	mov	a,r3
      00268B 08               [12] 1628 	inc	r0
      00268C 36               [12] 1629 	addc	a,@r0
      00268D 09               [12] 1630 	inc	r1
      00268E F7               [12] 1631 	mov	@r1,a
      00268F E5 10            [12] 1632 	mov	a,_bp
      002691 24 03            [12] 1633 	add	a,#0x03
      002693 F8               [12] 1634 	mov	r0,a
      002694 E6               [12] 1635 	mov	a,@r0
      002695 24 02            [12] 1636 	add	a,#_u
      002697 F5 82            [12] 1637 	mov	dpl,a
      002699 08               [12] 1638 	inc	r0
      00269A E6               [12] 1639 	mov	a,@r0
      00269B 34 88            [12] 1640 	addc	a,#(_u >> 8)
      00269D F5 83            [12] 1641 	mov	dph,a
      00269F E0               [24] 1642 	movx	a,@dptr
      0026A0 FD               [12] 1643 	mov	r5,a
      0026A1 E5 10            [12] 1644 	mov	a,_bp
      0026A3 24 05            [12] 1645 	add	a,#0x05
      0026A5 F8               [12] 1646 	mov	r0,a
      0026A6 C3               [12] 1647 	clr	c
      0026A7 E4               [12] 1648 	clr	a
      0026A8 9D               [12] 1649 	subb	a,r5
      0026A9 F6               [12] 1650 	mov	@r0,a
                                   1651 ;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026AA 74 3F            [12] 1652 	mov	a,#0x3f
      0026AC 2E               [12] 1653 	add	a,r6
      0026AD FC               [12] 1654 	mov	r4,a
      0026AE E4               [12] 1655 	clr	a
      0026AF 3F               [12] 1656 	addc	a,r7
      0026B0 FD               [12] 1657 	mov	r5,a
      0026B1 C0 07            [24] 1658 	push	ar7
      0026B3 C0 06            [24] 1659 	push	ar6
      0026B5 C0 03            [24] 1660 	push	ar3
      0026B7 C0 02            [24] 1661 	push	ar2
      0026B9 74 40            [12] 1662 	mov	a,#0x40
      0026BB C0 E0            [24] 1663 	push	acc
      0026BD E4               [12] 1664 	clr	a
      0026BE C0 E0            [24] 1665 	push	acc
      0026C0 8C 82            [24] 1666 	mov	dpl,r4
      0026C2 8D 83            [24] 1667 	mov	dph,r5
      0026C4 12 2C 75         [24] 1668 	lcall	__modsint
      0026C7 AC 82            [24] 1669 	mov	r4,dpl
      0026C9 AD 83            [24] 1670 	mov	r5,dph
      0026CB 15 81            [12] 1671 	dec	sp
      0026CD 15 81            [12] 1672 	dec	sp
      0026CF D0 02            [24] 1673 	pop	ar2
      0026D1 D0 03            [24] 1674 	pop	ar3
      0026D3 E5 10            [12] 1675 	mov	a,_bp
      0026D5 24 06            [12] 1676 	add	a,#0x06
      0026D7 F8               [12] 1677 	mov	r0,a
      0026D8 A6 04            [24] 1678 	mov	@r0,ar4
      0026DA ED               [12] 1679 	mov	a,r5
      0026DB C4               [12] 1680 	swap	a
      0026DC 23               [12] 1681 	rl	a
      0026DD 54 E0            [12] 1682 	anl	a,#0xe0
      0026DF C6               [12] 1683 	xch	a,@r0
      0026E0 C4               [12] 1684 	swap	a
      0026E1 23               [12] 1685 	rl	a
      0026E2 C6               [12] 1686 	xch	a,@r0
      0026E3 66               [12] 1687 	xrl	a,@r0
      0026E4 C6               [12] 1688 	xch	a,@r0
      0026E5 54 E0            [12] 1689 	anl	a,#0xe0
      0026E7 C6               [12] 1690 	xch	a,@r0
      0026E8 66               [12] 1691 	xrl	a,@r0
      0026E9 08               [12] 1692 	inc	r0
      0026EA F6               [12] 1693 	mov	@r0,a
      0026EB 74 1F            [12] 1694 	mov	a,#0x1f
      0026ED 2A               [12] 1695 	add	a,r2
      0026EE FC               [12] 1696 	mov	r4,a
      0026EF E4               [12] 1697 	clr	a
      0026F0 3B               [12] 1698 	addc	a,r3
      0026F1 FD               [12] 1699 	mov	r5,a
      0026F2 C0 03            [24] 1700 	push	ar3
      0026F4 C0 02            [24] 1701 	push	ar2
      0026F6 74 20            [12] 1702 	mov	a,#0x20
      0026F8 C0 E0            [24] 1703 	push	acc
      0026FA E4               [12] 1704 	clr	a
      0026FB C0 E0            [24] 1705 	push	acc
      0026FD 8C 82            [24] 1706 	mov	dpl,r4
      0026FF 8D 83            [24] 1707 	mov	dph,r5
      002701 12 2C 75         [24] 1708 	lcall	__modsint
      002704 C8               [12] 1709 	xch	a,r0
      002705 E5 10            [12] 1710 	mov	a,_bp
      002707 24 08            [12] 1711 	add	a,#0x08
      002709 C8               [12] 1712 	xch	a,r0
      00270A A6 82            [24] 1713 	mov	@r0,dpl
      00270C 08               [12] 1714 	inc	r0
      00270D A6 83            [24] 1715 	mov	@r0,dph
      00270F 15 81            [12] 1716 	dec	sp
      002711 15 81            [12] 1717 	dec	sp
      002713 D0 02            [24] 1718 	pop	ar2
      002715 D0 03            [24] 1719 	pop	ar3
      002717 E5 10            [12] 1720 	mov	a,_bp
      002719 24 06            [12] 1721 	add	a,#0x06
      00271B F8               [12] 1722 	mov	r0,a
      00271C E5 10            [12] 1723 	mov	a,_bp
      00271E 24 08            [12] 1724 	add	a,#0x08
      002720 F9               [12] 1725 	mov	r1,a
      002721 E7               [12] 1726 	mov	a,@r1
      002722 26               [12] 1727 	add	a,@r0
      002723 FC               [12] 1728 	mov	r4,a
      002724 09               [12] 1729 	inc	r1
      002725 E7               [12] 1730 	mov	a,@r1
      002726 08               [12] 1731 	inc	r0
      002727 36               [12] 1732 	addc	a,@r0
      002728 FD               [12] 1733 	mov	r5,a
      002729 EC               [12] 1734 	mov	a,r4
      00272A 24 02            [12] 1735 	add	a,#_u
      00272C F5 82            [12] 1736 	mov	dpl,a
      00272E ED               [12] 1737 	mov	a,r5
      00272F 34 88            [12] 1738 	addc	a,#(_u >> 8)
      002731 F5 83            [12] 1739 	mov	dph,a
      002733 E0               [24] 1740 	movx	a,@dptr
      002734 FD               [12] 1741 	mov	r5,a
      002735 E5 10            [12] 1742 	mov	a,_bp
      002737 24 05            [12] 1743 	add	a,#0x05
      002739 F8               [12] 1744 	mov	r0,a
      00273A ED               [12] 1745 	mov	a,r5
      00273B 26               [12] 1746 	add	a,@r0
      00273C F6               [12] 1747 	mov	@r0,a
                                   1748 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00273D 74 20            [12] 1749 	mov	a,#0x20
      00273F 2A               [12] 1750 	add	a,r2
      002740 FC               [12] 1751 	mov	r4,a
      002741 E4               [12] 1752 	clr	a
      002742 3B               [12] 1753 	addc	a,r3
      002743 FD               [12] 1754 	mov	r5,a
      002744 C0 03            [24] 1755 	push	ar3
      002746 C0 02            [24] 1756 	push	ar2
      002748 74 20            [12] 1757 	mov	a,#0x20
      00274A C0 E0            [24] 1758 	push	acc
      00274C E4               [12] 1759 	clr	a
      00274D C0 E0            [24] 1760 	push	acc
      00274F 8C 82            [24] 1761 	mov	dpl,r4
      002751 8D 83            [24] 1762 	mov	dph,r5
      002753 12 2C 75         [24] 1763 	lcall	__modsint
      002756 C8               [12] 1764 	xch	a,r0
      002757 E5 10            [12] 1765 	mov	a,_bp
      002759 24 0A            [12] 1766 	add	a,#0x0a
      00275B C8               [12] 1767 	xch	a,r0
      00275C A6 82            [24] 1768 	mov	@r0,dpl
      00275E 08               [12] 1769 	inc	r0
      00275F A6 83            [24] 1770 	mov	@r0,dph
      002761 15 81            [12] 1771 	dec	sp
      002763 15 81            [12] 1772 	dec	sp
      002765 D0 02            [24] 1773 	pop	ar2
      002767 D0 03            [24] 1774 	pop	ar3
      002769 E5 10            [12] 1775 	mov	a,_bp
      00276B 24 06            [12] 1776 	add	a,#0x06
      00276D F8               [12] 1777 	mov	r0,a
      00276E E5 10            [12] 1778 	mov	a,_bp
      002770 24 0A            [12] 1779 	add	a,#0x0a
      002772 F9               [12] 1780 	mov	r1,a
      002773 E7               [12] 1781 	mov	a,@r1
      002774 26               [12] 1782 	add	a,@r0
      002775 FC               [12] 1783 	mov	r4,a
      002776 09               [12] 1784 	inc	r1
      002777 E7               [12] 1785 	mov	a,@r1
      002778 08               [12] 1786 	inc	r0
      002779 36               [12] 1787 	addc	a,@r0
      00277A FD               [12] 1788 	mov	r5,a
      00277B EC               [12] 1789 	mov	a,r4
      00277C 24 02            [12] 1790 	add	a,#_u
      00277E F5 82            [12] 1791 	mov	dpl,a
      002780 ED               [12] 1792 	mov	a,r5
      002781 34 88            [12] 1793 	addc	a,#(_u >> 8)
      002783 F5 83            [12] 1794 	mov	dph,a
      002785 E0               [24] 1795 	movx	a,@dptr
      002786 FD               [12] 1796 	mov	r5,a
      002787 E5 10            [12] 1797 	mov	a,_bp
      002789 24 05            [12] 1798 	add	a,#0x05
      00278B F8               [12] 1799 	mov	r0,a
      00278C ED               [12] 1800 	mov	a,r5
      00278D 26               [12] 1801 	add	a,@r0
      00278E F6               [12] 1802 	mov	@r0,a
                                   1803 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00278F 74 21            [12] 1804 	mov	a,#0x21
      002791 2A               [12] 1805 	add	a,r2
      002792 FC               [12] 1806 	mov	r4,a
      002793 E4               [12] 1807 	clr	a
      002794 3B               [12] 1808 	addc	a,r3
      002795 FD               [12] 1809 	mov	r5,a
      002796 C0 03            [24] 1810 	push	ar3
      002798 C0 02            [24] 1811 	push	ar2
      00279A 74 20            [12] 1812 	mov	a,#0x20
      00279C C0 E0            [24] 1813 	push	acc
      00279E E4               [12] 1814 	clr	a
      00279F C0 E0            [24] 1815 	push	acc
      0027A1 8C 82            [24] 1816 	mov	dpl,r4
      0027A3 8D 83            [24] 1817 	mov	dph,r5
      0027A5 12 2C 75         [24] 1818 	lcall	__modsint
      0027A8 C8               [12] 1819 	xch	a,r0
      0027A9 E5 10            [12] 1820 	mov	a,_bp
      0027AB 24 0C            [12] 1821 	add	a,#0x0c
      0027AD C8               [12] 1822 	xch	a,r0
      0027AE A6 82            [24] 1823 	mov	@r0,dpl
      0027B0 08               [12] 1824 	inc	r0
      0027B1 A6 83            [24] 1825 	mov	@r0,dph
      0027B3 15 81            [12] 1826 	dec	sp
      0027B5 15 81            [12] 1827 	dec	sp
      0027B7 D0 02            [24] 1828 	pop	ar2
      0027B9 D0 03            [24] 1829 	pop	ar3
      0027BB D0 06            [24] 1830 	pop	ar6
      0027BD D0 07            [24] 1831 	pop	ar7
      0027BF E5 10            [12] 1832 	mov	a,_bp
      0027C1 24 06            [12] 1833 	add	a,#0x06
      0027C3 F8               [12] 1834 	mov	r0,a
      0027C4 E5 10            [12] 1835 	mov	a,_bp
      0027C6 24 0C            [12] 1836 	add	a,#0x0c
      0027C8 F9               [12] 1837 	mov	r1,a
      0027C9 E7               [12] 1838 	mov	a,@r1
      0027CA 26               [12] 1839 	add	a,@r0
      0027CB FC               [12] 1840 	mov	r4,a
      0027CC 09               [12] 1841 	inc	r1
      0027CD E7               [12] 1842 	mov	a,@r1
      0027CE 08               [12] 1843 	inc	r0
      0027CF 36               [12] 1844 	addc	a,@r0
      0027D0 FD               [12] 1845 	mov	r5,a
      0027D1 EC               [12] 1846 	mov	a,r4
      0027D2 24 02            [12] 1847 	add	a,#_u
      0027D4 F5 82            [12] 1848 	mov	dpl,a
      0027D6 ED               [12] 1849 	mov	a,r5
      0027D7 34 88            [12] 1850 	addc	a,#(_u >> 8)
      0027D9 F5 83            [12] 1851 	mov	dph,a
      0027DB E0               [24] 1852 	movx	a,@dptr
      0027DC FD               [12] 1853 	mov	r5,a
      0027DD E5 10            [12] 1854 	mov	a,_bp
      0027DF 24 05            [12] 1855 	add	a,#0x05
      0027E1 F8               [12] 1856 	mov	r0,a
      0027E2 E5 10            [12] 1857 	mov	a,_bp
      0027E4 24 06            [12] 1858 	add	a,#0x06
      0027E6 F9               [12] 1859 	mov	r1,a
      0027E7 ED               [12] 1860 	mov	a,r5
      0027E8 26               [12] 1861 	add	a,@r0
      0027E9 F7               [12] 1862 	mov	@r1,a
                                   1863 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027EA 74 40            [12] 1864 	mov	a,#0x40
      0027EC 2E               [12] 1865 	add	a,r6
      0027ED FC               [12] 1866 	mov	r4,a
      0027EE E4               [12] 1867 	clr	a
      0027EF 3F               [12] 1868 	addc	a,r7
      0027F0 FD               [12] 1869 	mov	r5,a
      0027F1 C0 07            [24] 1870 	push	ar7
      0027F3 C0 06            [24] 1871 	push	ar6
      0027F5 C0 03            [24] 1872 	push	ar3
      0027F7 C0 02            [24] 1873 	push	ar2
      0027F9 74 40            [12] 1874 	mov	a,#0x40
      0027FB C0 E0            [24] 1875 	push	acc
      0027FD E4               [12] 1876 	clr	a
      0027FE C0 E0            [24] 1877 	push	acc
      002800 8C 82            [24] 1878 	mov	dpl,r4
      002802 8D 83            [24] 1879 	mov	dph,r5
      002804 12 2C 75         [24] 1880 	lcall	__modsint
      002807 AC 82            [24] 1881 	mov	r4,dpl
      002809 AD 83            [24] 1882 	mov	r5,dph
      00280B 15 81            [12] 1883 	dec	sp
      00280D 15 81            [12] 1884 	dec	sp
      00280F D0 02            [24] 1885 	pop	ar2
      002811 D0 03            [24] 1886 	pop	ar3
      002813 D0 06            [24] 1887 	pop	ar6
      002815 D0 07            [24] 1888 	pop	ar7
      002817 E5 10            [12] 1889 	mov	a,_bp
      002819 24 0E            [12] 1890 	add	a,#0x0e
      00281B F8               [12] 1891 	mov	r0,a
      00281C A6 04            [24] 1892 	mov	@r0,ar4
      00281E ED               [12] 1893 	mov	a,r5
      00281F C4               [12] 1894 	swap	a
      002820 23               [12] 1895 	rl	a
      002821 54 E0            [12] 1896 	anl	a,#0xe0
      002823 C6               [12] 1897 	xch	a,@r0
      002824 C4               [12] 1898 	swap	a
      002825 23               [12] 1899 	rl	a
      002826 C6               [12] 1900 	xch	a,@r0
      002827 66               [12] 1901 	xrl	a,@r0
      002828 C6               [12] 1902 	xch	a,@r0
      002829 54 E0            [12] 1903 	anl	a,#0xe0
      00282B C6               [12] 1904 	xch	a,@r0
      00282C 66               [12] 1905 	xrl	a,@r0
      00282D 08               [12] 1906 	inc	r0
      00282E F6               [12] 1907 	mov	@r0,a
      00282F E5 10            [12] 1908 	mov	a,_bp
      002831 24 0E            [12] 1909 	add	a,#0x0e
      002833 F8               [12] 1910 	mov	r0,a
      002834 E5 10            [12] 1911 	mov	a,_bp
      002836 24 08            [12] 1912 	add	a,#0x08
      002838 F9               [12] 1913 	mov	r1,a
      002839 E7               [12] 1914 	mov	a,@r1
      00283A 26               [12] 1915 	add	a,@r0
      00283B FC               [12] 1916 	mov	r4,a
      00283C 09               [12] 1917 	inc	r1
      00283D E7               [12] 1918 	mov	a,@r1
      00283E 08               [12] 1919 	inc	r0
      00283F 36               [12] 1920 	addc	a,@r0
      002840 FD               [12] 1921 	mov	r5,a
      002841 EC               [12] 1922 	mov	a,r4
      002842 24 02            [12] 1923 	add	a,#_u
      002844 F5 82            [12] 1924 	mov	dpl,a
      002846 ED               [12] 1925 	mov	a,r5
      002847 34 88            [12] 1926 	addc	a,#(_u >> 8)
      002849 F5 83            [12] 1927 	mov	dph,a
      00284B E0               [24] 1928 	movx	a,@dptr
      00284C FD               [12] 1929 	mov	r5,a
      00284D E5 10            [12] 1930 	mov	a,_bp
      00284F 24 06            [12] 1931 	add	a,#0x06
      002851 F8               [12] 1932 	mov	r0,a
      002852 E5 10            [12] 1933 	mov	a,_bp
      002854 24 06            [12] 1934 	add	a,#0x06
      002856 F9               [12] 1935 	mov	r1,a
      002857 ED               [12] 1936 	mov	a,r5
      002858 26               [12] 1937 	add	a,@r0
      002859 F7               [12] 1938 	mov	@r1,a
                                   1939 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00285A E5 10            [12] 1940 	mov	a,_bp
      00285C 24 0E            [12] 1941 	add	a,#0x0e
      00285E F8               [12] 1942 	mov	r0,a
      00285F E5 10            [12] 1943 	mov	a,_bp
      002861 24 0A            [12] 1944 	add	a,#0x0a
      002863 F9               [12] 1945 	mov	r1,a
      002864 E7               [12] 1946 	mov	a,@r1
      002865 26               [12] 1947 	add	a,@r0
      002866 FC               [12] 1948 	mov	r4,a
      002867 09               [12] 1949 	inc	r1
      002868 E7               [12] 1950 	mov	a,@r1
      002869 08               [12] 1951 	inc	r0
      00286A 36               [12] 1952 	addc	a,@r0
      00286B FD               [12] 1953 	mov	r5,a
      00286C EC               [12] 1954 	mov	a,r4
      00286D 24 02            [12] 1955 	add	a,#_u
      00286F F5 82            [12] 1956 	mov	dpl,a
      002871 ED               [12] 1957 	mov	a,r5
      002872 34 88            [12] 1958 	addc	a,#(_u >> 8)
      002874 F5 83            [12] 1959 	mov	dph,a
      002876 E0               [24] 1960 	movx	a,@dptr
      002877 FD               [12] 1961 	mov	r5,a
      002878 E5 10            [12] 1962 	mov	a,_bp
      00287A 24 06            [12] 1963 	add	a,#0x06
      00287C F8               [12] 1964 	mov	r0,a
      00287D E5 10            [12] 1965 	mov	a,_bp
      00287F 24 06            [12] 1966 	add	a,#0x06
      002881 F9               [12] 1967 	mov	r1,a
      002882 ED               [12] 1968 	mov	a,r5
      002883 26               [12] 1969 	add	a,@r0
      002884 F7               [12] 1970 	mov	@r1,a
                                   1971 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002885 E5 10            [12] 1972 	mov	a,_bp
      002887 24 0E            [12] 1973 	add	a,#0x0e
      002889 F8               [12] 1974 	mov	r0,a
      00288A E5 10            [12] 1975 	mov	a,_bp
      00288C 24 0C            [12] 1976 	add	a,#0x0c
      00288E F9               [12] 1977 	mov	r1,a
      00288F E7               [12] 1978 	mov	a,@r1
      002890 26               [12] 1979 	add	a,@r0
      002891 FC               [12] 1980 	mov	r4,a
      002892 09               [12] 1981 	inc	r1
      002893 E7               [12] 1982 	mov	a,@r1
      002894 08               [12] 1983 	inc	r0
      002895 36               [12] 1984 	addc	a,@r0
      002896 FD               [12] 1985 	mov	r5,a
      002897 EC               [12] 1986 	mov	a,r4
      002898 24 02            [12] 1987 	add	a,#_u
      00289A F5 82            [12] 1988 	mov	dpl,a
      00289C ED               [12] 1989 	mov	a,r5
      00289D 34 88            [12] 1990 	addc	a,#(_u >> 8)
      00289F F5 83            [12] 1991 	mov	dph,a
      0028A1 E0               [24] 1992 	movx	a,@dptr
      0028A2 FD               [12] 1993 	mov	r5,a
      0028A3 E5 10            [12] 1994 	mov	a,_bp
      0028A5 24 06            [12] 1995 	add	a,#0x06
      0028A7 F8               [12] 1996 	mov	r0,a
      0028A8 E5 10            [12] 1997 	mov	a,_bp
      0028AA 24 0E            [12] 1998 	add	a,#0x0e
      0028AC F9               [12] 1999 	mov	r1,a
      0028AD ED               [12] 2000 	mov	a,r5
      0028AE 26               [12] 2001 	add	a,@r0
      0028AF F7               [12] 2002 	mov	@r1,a
                                   2003 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028B0 74 41            [12] 2004 	mov	a,#0x41
      0028B2 2E               [12] 2005 	add	a,r6
      0028B3 FE               [12] 2006 	mov	r6,a
      0028B4 E4               [12] 2007 	clr	a
      0028B5 3F               [12] 2008 	addc	a,r7
      0028B6 FF               [12] 2009 	mov	r7,a
      0028B7 C0 03            [24] 2010 	push	ar3
      0028B9 C0 02            [24] 2011 	push	ar2
      0028BB 74 40            [12] 2012 	mov	a,#0x40
      0028BD C0 E0            [24] 2013 	push	acc
      0028BF E4               [12] 2014 	clr	a
      0028C0 C0 E0            [24] 2015 	push	acc
      0028C2 8E 82            [24] 2016 	mov	dpl,r6
      0028C4 8F 83            [24] 2017 	mov	dph,r7
      0028C6 12 2C 75         [24] 2018 	lcall	__modsint
      0028C9 AE 82            [24] 2019 	mov	r6,dpl
      0028CB AF 83            [24] 2020 	mov	r7,dph
      0028CD 15 81            [12] 2021 	dec	sp
      0028CF 15 81            [12] 2022 	dec	sp
      0028D1 D0 02            [24] 2023 	pop	ar2
      0028D3 D0 03            [24] 2024 	pop	ar3
      0028D5 EF               [12] 2025 	mov	a,r7
      0028D6 C4               [12] 2026 	swap	a
      0028D7 23               [12] 2027 	rl	a
      0028D8 54 E0            [12] 2028 	anl	a,#0xe0
      0028DA CE               [12] 2029 	xch	a,r6
      0028DB C4               [12] 2030 	swap	a
      0028DC 23               [12] 2031 	rl	a
      0028DD CE               [12] 2032 	xch	a,r6
      0028DE 6E               [12] 2033 	xrl	a,r6
      0028DF CE               [12] 2034 	xch	a,r6
      0028E0 54 E0            [12] 2035 	anl	a,#0xe0
      0028E2 CE               [12] 2036 	xch	a,r6
      0028E3 6E               [12] 2037 	xrl	a,r6
      0028E4 FF               [12] 2038 	mov	r7,a
      0028E5 E5 10            [12] 2039 	mov	a,_bp
      0028E7 24 08            [12] 2040 	add	a,#0x08
      0028E9 F8               [12] 2041 	mov	r0,a
      0028EA E6               [12] 2042 	mov	a,@r0
      0028EB 2E               [12] 2043 	add	a,r6
      0028EC FC               [12] 2044 	mov	r4,a
      0028ED 08               [12] 2045 	inc	r0
      0028EE E6               [12] 2046 	mov	a,@r0
      0028EF 3F               [12] 2047 	addc	a,r7
      0028F0 FD               [12] 2048 	mov	r5,a
      0028F1 EC               [12] 2049 	mov	a,r4
      0028F2 24 02            [12] 2050 	add	a,#_u
      0028F4 F5 82            [12] 2051 	mov	dpl,a
      0028F6 ED               [12] 2052 	mov	a,r5
      0028F7 34 88            [12] 2053 	addc	a,#(_u >> 8)
      0028F9 F5 83            [12] 2054 	mov	dph,a
      0028FB E0               [24] 2055 	movx	a,@dptr
      0028FC FD               [12] 2056 	mov	r5,a
      0028FD E5 10            [12] 2057 	mov	a,_bp
      0028FF 24 0E            [12] 2058 	add	a,#0x0e
      002901 F8               [12] 2059 	mov	r0,a
      002902 E5 10            [12] 2060 	mov	a,_bp
      002904 24 0E            [12] 2061 	add	a,#0x0e
      002906 F9               [12] 2062 	mov	r1,a
      002907 ED               [12] 2063 	mov	a,r5
      002908 26               [12] 2064 	add	a,@r0
      002909 F7               [12] 2065 	mov	@r1,a
                                   2066 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00290A E5 10            [12] 2067 	mov	a,_bp
      00290C 24 0A            [12] 2068 	add	a,#0x0a
      00290E F8               [12] 2069 	mov	r0,a
      00290F E6               [12] 2070 	mov	a,@r0
      002910 2E               [12] 2071 	add	a,r6
      002911 FC               [12] 2072 	mov	r4,a
      002912 08               [12] 2073 	inc	r0
      002913 E6               [12] 2074 	mov	a,@r0
      002914 3F               [12] 2075 	addc	a,r7
      002915 FD               [12] 2076 	mov	r5,a
      002916 EC               [12] 2077 	mov	a,r4
      002917 24 02            [12] 2078 	add	a,#_u
      002919 F5 82            [12] 2079 	mov	dpl,a
      00291B ED               [12] 2080 	mov	a,r5
      00291C 34 88            [12] 2081 	addc	a,#(_u >> 8)
      00291E F5 83            [12] 2082 	mov	dph,a
      002920 E0               [24] 2083 	movx	a,@dptr
      002921 FD               [12] 2084 	mov	r5,a
      002922 E5 10            [12] 2085 	mov	a,_bp
      002924 24 0E            [12] 2086 	add	a,#0x0e
      002926 F8               [12] 2087 	mov	r0,a
      002927 ED               [12] 2088 	mov	a,r5
      002928 26               [12] 2089 	add	a,@r0
      002929 FD               [12] 2090 	mov	r5,a
                                   2091 ;	life.c:180: y1 = 1; x1 = 1;
      00292A 90 98 08         [24] 2092 	mov	dptr,#_y1
      00292D 74 01            [12] 2093 	mov	a,#0x01
      00292F F0               [24] 2094 	movx	@dptr,a
      002930 E4               [12] 2095 	clr	a
      002931 A3               [24] 2096 	inc	dptr
      002932 F0               [24] 2097 	movx	@dptr,a
      002933 90 98 06         [24] 2098 	mov	dptr,#_x1
      002936 04               [12] 2099 	inc	a
      002937 F0               [24] 2100 	movx	@dptr,a
      002938 E4               [12] 2101 	clr	a
      002939 A3               [24] 2102 	inc	dptr
      00293A F0               [24] 2103 	movx	@dptr,a
                                   2104 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00293B E5 10            [12] 2105 	mov	a,_bp
      00293D 24 0C            [12] 2106 	add	a,#0x0c
      00293F F8               [12] 2107 	mov	r0,a
      002940 E6               [12] 2108 	mov	a,@r0
      002941 2E               [12] 2109 	add	a,r6
      002942 FE               [12] 2110 	mov	r6,a
      002943 08               [12] 2111 	inc	r0
      002944 E6               [12] 2112 	mov	a,@r0
      002945 3F               [12] 2113 	addc	a,r7
      002946 FF               [12] 2114 	mov	r7,a
      002947 EE               [12] 2115 	mov	a,r6
      002948 24 02            [12] 2116 	add	a,#_u
      00294A F5 82            [12] 2117 	mov	dpl,a
      00294C EF               [12] 2118 	mov	a,r7
      00294D 34 88            [12] 2119 	addc	a,#(_u >> 8)
      00294F F5 83            [12] 2120 	mov	dph,a
      002951 E0               [24] 2121 	movx	a,@dptr
      002952 2D               [12] 2122 	add	a,r5
      002953 FF               [12] 2123 	mov	r7,a
      002954 90 98 0F         [24] 2124 	mov	dptr,#_n
      002957 F0               [24] 2125 	movx	@dptr,a
                                   2126 ;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002958 E5 10            [12] 2127 	mov	a,_bp
      00295A 24 03            [12] 2128 	add	a,#0x03
      00295C F8               [12] 2129 	mov	r0,a
      00295D E6               [12] 2130 	mov	a,@r0
      00295E 24 02            [12] 2131 	add	a,#_nu
      002960 FD               [12] 2132 	mov	r5,a
      002961 08               [12] 2133 	inc	r0
      002962 E6               [12] 2134 	mov	a,@r0
      002963 34 90            [12] 2135 	addc	a,#(_nu >> 8)
      002965 FE               [12] 2136 	mov	r6,a
      002966 BF 03 02         [24] 2137 	cjne	r7,#0x03,00415$
      002969 80 20            [24] 2138 	sjmp	00205$
      00296B                       2139 00415$:
      00296B BF 02 19         [24] 2140 	cjne	r7,#0x02,00204$
      00296E A8 10            [24] 2141 	mov	r0,_bp
      002970 08               [12] 2142 	inc	r0
      002971 EA               [12] 2143 	mov	a,r2
      002972 26               [12] 2144 	add	a,@r0
      002973 FA               [12] 2145 	mov	r2,a
      002974 EB               [12] 2146 	mov	a,r3
      002975 08               [12] 2147 	inc	r0
      002976 36               [12] 2148 	addc	a,@r0
      002977 FB               [12] 2149 	mov	r3,a
      002978 EA               [12] 2150 	mov	a,r2
      002979 24 02            [12] 2151 	add	a,#_u
      00297B FA               [12] 2152 	mov	r2,a
      00297C EB               [12] 2153 	mov	a,r3
      00297D 34 88            [12] 2154 	addc	a,#(_u >> 8)
      00297F FB               [12] 2155 	mov	r3,a
      002980 8A 82            [24] 2156 	mov	dpl,r2
      002982 8B 83            [24] 2157 	mov	dph,r3
      002984 E0               [24] 2158 	movx	a,@dptr
      002985 70 04            [24] 2159 	jnz	00205$
      002987                       2160 00204$:
                                   2161 ;	assignBit
      002987 C2 00            [12] 2162 	clr	b0
      002989 80 02            [24] 2163 	sjmp	00206$
      00298B                       2164 00205$:
                                   2165 ;	assignBit
      00298B D2 00            [12] 2166 	setb	b0
      00298D                       2167 00206$:
      00298D A2 00            [12] 2168 	mov	c,b0
      00298F E4               [12] 2169 	clr	a
      002990 33               [12] 2170 	rlc	a
      002991 8D 82            [24] 2171 	mov	dpl,r5
      002993 8E 83            [24] 2172 	mov	dph,r6
      002995 F0               [24] 2173 	movx	@dptr,a
                                   2174 ;	life.c:184: cycle2 |= pu[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      002996 90 98 04         [24] 2175 	mov	dptr,#_y
      002999 E5 10            [12] 2176 	mov	a,_bp
      00299B 24 0E            [12] 2177 	add	a,#0x0e
      00299D F8               [12] 2178 	mov	r0,a
      00299E E0               [24] 2179 	movx	a,@dptr
      00299F F6               [12] 2180 	mov	@r0,a
      0029A0 A3               [24] 2181 	inc	dptr
      0029A1 E0               [24] 2182 	movx	a,@dptr
      0029A2 08               [12] 2183 	inc	r0
      0029A3 F6               [12] 2184 	mov	@r0,a
      0029A4 E5 10            [12] 2185 	mov	a,_bp
      0029A6 24 0E            [12] 2186 	add	a,#0x0e
      0029A8 F8               [12] 2187 	mov	r0,a
      0029A9 86 04            [24] 2188 	mov	ar4,@r0
      0029AB 08               [12] 2189 	inc	r0
      0029AC E6               [12] 2190 	mov	a,@r0
      0029AD C4               [12] 2191 	swap	a
      0029AE 23               [12] 2192 	rl	a
      0029AF 54 E0            [12] 2193 	anl	a,#0xe0
      0029B1 CC               [12] 2194 	xch	a,r4
      0029B2 C4               [12] 2195 	swap	a
      0029B3 23               [12] 2196 	rl	a
      0029B4 CC               [12] 2197 	xch	a,r4
      0029B5 6C               [12] 2198 	xrl	a,r4
      0029B6 CC               [12] 2199 	xch	a,r4
      0029B7 54 E0            [12] 2200 	anl	a,#0xe0
      0029B9 CC               [12] 2201 	xch	a,r4
      0029BA 6C               [12] 2202 	xrl	a,r4
      0029BB FD               [12] 2203 	mov	r5,a
      0029BC 90 98 02         [24] 2204 	mov	dptr,#_x
      0029BF E0               [24] 2205 	movx	a,@dptr
      0029C0 FA               [12] 2206 	mov	r2,a
      0029C1 A3               [24] 2207 	inc	dptr
      0029C2 E0               [24] 2208 	movx	a,@dptr
      0029C3 FB               [12] 2209 	mov	r3,a
      0029C4 EA               [12] 2210 	mov	a,r2
      0029C5 2C               [12] 2211 	add	a,r4
      0029C6 FC               [12] 2212 	mov	r4,a
      0029C7 EB               [12] 2213 	mov	a,r3
      0029C8 3D               [12] 2214 	addc	a,r5
      0029C9 FD               [12] 2215 	mov	r5,a
      0029CA EC               [12] 2216 	mov	a,r4
      0029CB 24 02            [12] 2217 	add	a,#_pu
      0029CD F5 82            [12] 2218 	mov	dpl,a
      0029CF ED               [12] 2219 	mov	a,r5
      0029D0 34 80            [12] 2220 	addc	a,#(_pu >> 8)
      0029D2 F5 83            [12] 2221 	mov	dph,a
      0029D4 E0               [24] 2222 	movx	a,@dptr
      0029D5 FE               [12] 2223 	mov	r6,a
      0029D6 E5 10            [12] 2224 	mov	a,_bp
      0029D8 24 0A            [12] 2225 	add	a,#0x0a
      0029DA F8               [12] 2226 	mov	r0,a
      0029DB EC               [12] 2227 	mov	a,r4
      0029DC 24 02            [12] 2228 	add	a,#_nu
      0029DE F6               [12] 2229 	mov	@r0,a
      0029DF ED               [12] 2230 	mov	a,r5
      0029E0 34 90            [12] 2231 	addc	a,#(_nu >> 8)
      0029E2 08               [12] 2232 	inc	r0
      0029E3 F6               [12] 2233 	mov	@r0,a
      0029E4 E5 10            [12] 2234 	mov	a,_bp
      0029E6 24 0A            [12] 2235 	add	a,#0x0a
      0029E8 F8               [12] 2236 	mov	r0,a
      0029E9 86 82            [24] 2237 	mov	dpl,@r0
      0029EB 08               [12] 2238 	inc	r0
      0029EC 86 83            [24] 2239 	mov	dph,@r0
      0029EE E0               [24] 2240 	movx	a,@dptr
      0029EF FF               [12] 2241 	mov	r7,a
      0029F0 EE               [12] 2242 	mov	a,r6
      0029F1 62 07            [12] 2243 	xrl	ar7,a
      0029F3 90 98 11         [24] 2244 	mov	dptr,#_cycle2
      0029F6 E0               [24] 2245 	movx	a,@dptr
      0029F7 4F               [12] 2246 	orl	a,r7
      0029F8 F0               [24] 2247 	movx	@dptr,a
                                   2248 ;	life.c:185: fixed |= u[A2D(W, y, x)] ^ nu[A2D(W, y, x)];
      0029F9 EC               [12] 2249 	mov	a,r4
      0029FA 24 02            [12] 2250 	add	a,#_u
      0029FC F5 82            [12] 2251 	mov	dpl,a
      0029FE ED               [12] 2252 	mov	a,r5
      0029FF 34 88            [12] 2253 	addc	a,#(_u >> 8)
      002A01 F5 83            [12] 2254 	mov	dph,a
      002A03 E0               [24] 2255 	movx	a,@dptr
      002A04 FF               [12] 2256 	mov	r7,a
      002A05 E5 10            [12] 2257 	mov	a,_bp
      002A07 24 0A            [12] 2258 	add	a,#0x0a
      002A09 F8               [12] 2259 	mov	r0,a
      002A0A 86 82            [24] 2260 	mov	dpl,@r0
      002A0C 08               [12] 2261 	inc	r0
      002A0D 86 83            [24] 2262 	mov	dph,@r0
      002A0F E0               [24] 2263 	movx	a,@dptr
      002A10 62 07            [12] 2264 	xrl	ar7,a
      002A12 90 98 10         [24] 2265 	mov	dptr,#_fixed
      002A15 E0               [24] 2266 	movx	a,@dptr
      002A16 4F               [12] 2267 	orl	a,r7
      002A17 F0               [24] 2268 	movx	@dptr,a
                                   2269 ;	life.c:161: for (x = 0; x < W; x++) {
      002A18 90 98 02         [24] 2270 	mov	dptr,#_x
      002A1B 74 01            [12] 2271 	mov	a,#0x01
      002A1D 2A               [12] 2272 	add	a,r2
      002A1E F0               [24] 2273 	movx	@dptr,a
      002A1F E4               [12] 2274 	clr	a
      002A20 3B               [12] 2275 	addc	a,r3
      002A21 A3               [24] 2276 	inc	dptr
      002A22 F0               [24] 2277 	movx	@dptr,a
      002A23 90 98 02         [24] 2278 	mov	dptr,#_x
      002A26 E0               [24] 2279 	movx	a,@dptr
      002A27 FE               [12] 2280 	mov	r6,a
      002A28 A3               [24] 2281 	inc	dptr
      002A29 E0               [24] 2282 	movx	a,@dptr
      002A2A FF               [12] 2283 	mov	r7,a
      002A2B C3               [12] 2284 	clr	c
      002A2C EE               [12] 2285 	mov	a,r6
      002A2D 94 20            [12] 2286 	subb	a,#0x20
      002A2F EF               [12] 2287 	mov	a,r7
      002A30 64 80            [12] 2288 	xrl	a,#0x80
      002A32 94 80            [12] 2289 	subb	a,#0x80
      002A34 50 03            [24] 2290 	jnc	00419$
      002A36 02 26 59         [24] 2291 	ljmp	00183$
      002A39                       2292 00419$:
                                   2293 ;	life.c:158: for (y = 0; y < H; y++) {
      002A39 E5 10            [12] 2294 	mov	a,_bp
      002A3B 24 0E            [12] 2295 	add	a,#0x0e
      002A3D F8               [12] 2296 	mov	r0,a
      002A3E 90 98 04         [24] 2297 	mov	dptr,#_y
      002A41 74 01            [12] 2298 	mov	a,#0x01
      002A43 26               [12] 2299 	add	a,@r0
      002A44 F0               [24] 2300 	movx	@dptr,a
      002A45 E4               [12] 2301 	clr	a
      002A46 08               [12] 2302 	inc	r0
      002A47 36               [12] 2303 	addc	a,@r0
      002A48 A3               [24] 2304 	inc	dptr
      002A49 F0               [24] 2305 	movx	@dptr,a
      002A4A 90 98 04         [24] 2306 	mov	dptr,#_y
      002A4D E0               [24] 2307 	movx	a,@dptr
      002A4E FE               [12] 2308 	mov	r6,a
      002A4F A3               [24] 2309 	inc	dptr
      002A50 E0               [24] 2310 	movx	a,@dptr
      002A51 FF               [12] 2311 	mov	r7,a
      002A52 C3               [12] 2312 	clr	c
      002A53 EE               [12] 2313 	mov	a,r6
      002A54 94 40            [12] 2314 	subb	a,#0x40
      002A56 EF               [12] 2315 	mov	a,r7
      002A57 64 80            [12] 2316 	xrl	a,#0x80
      002A59 94 80            [12] 2317 	subb	a,#0x80
      002A5B 50 03            [24] 2318 	jnc	00420$
      002A5D 02 26 30         [24] 2319 	ljmp	00185$
      002A60                       2320 00420$:
                                   2321 ;	life.c:189: cycle2 = !cycle2;
      002A60 90 98 11         [24] 2322 	mov	dptr,#_cycle2
      002A63 E0               [24] 2323 	movx	a,@dptr
      002A64 B4 01 00         [24] 2324 	cjne	a,#0x01,00421$
      002A67                       2325 00421$:
      002A67 92 00            [24] 2326 	mov	b0,c
      002A69 90 98 11         [24] 2327 	mov	dptr,#_cycle2
      002A6C E4               [12] 2328 	clr	a
      002A6D 33               [12] 2329 	rlc	a
      002A6E F0               [24] 2330 	movx	@dptr,a
                                   2331 ;	life.c:190: fixed = !fixed;
      002A6F 90 98 10         [24] 2332 	mov	dptr,#_fixed
      002A72 E0               [24] 2333 	movx	a,@dptr
      002A73 B4 01 00         [24] 2334 	cjne	a,#0x01,00422$
      002A76                       2335 00422$:
      002A76 92 00            [24] 2336 	mov	b0,c
      002A78 90 98 10         [24] 2337 	mov	dptr,#_fixed
      002A7B E4               [12] 2338 	clr	a
      002A7C 33               [12] 2339 	rlc	a
      002A7D F0               [24] 2340 	movx	@dptr,a
                                   2341 ;	life.c:192: memcpy(pu, u, sizeof (u));
      002A7E E4               [12] 2342 	clr	a
      002A7F C0 E0            [24] 2343 	push	acc
      002A81 74 08            [12] 2344 	mov	a,#0x08
      002A83 C0 E0            [24] 2345 	push	acc
      002A85 74 02            [12] 2346 	mov	a,#_u
      002A87 C0 E0            [24] 2347 	push	acc
      002A89 74 88            [12] 2348 	mov	a,#(_u >> 8)
      002A8B C0 E0            [24] 2349 	push	acc
      002A8D E4               [12] 2350 	clr	a
      002A8E C0 E0            [24] 2351 	push	acc
      002A90 90 80 02         [24] 2352 	mov	dptr,#_pu
      002A93 75 F0 00         [24] 2353 	mov	b,#0x00
      002A96 12 2B 5C         [24] 2354 	lcall	___memcpy
      002A99 E5 81            [12] 2355 	mov	a,sp
      002A9B 24 FB            [12] 2356 	add	a,#0xfb
      002A9D F5 81            [12] 2357 	mov	sp,a
                                   2358 ;	life.c:193: memcpy(u, nu, sizeof (nu));
      002A9F E4               [12] 2359 	clr	a
      002AA0 C0 E0            [24] 2360 	push	acc
      002AA2 74 08            [12] 2361 	mov	a,#0x08
      002AA4 C0 E0            [24] 2362 	push	acc
      002AA6 74 02            [12] 2363 	mov	a,#_nu
      002AA8 C0 E0            [24] 2364 	push	acc
      002AAA 74 90            [12] 2365 	mov	a,#(_nu >> 8)
      002AAC C0 E0            [24] 2366 	push	acc
      002AAE E4               [12] 2367 	clr	a
      002AAF C0 E0            [24] 2368 	push	acc
      002AB1 90 88 02         [24] 2369 	mov	dptr,#_u
      002AB4 75 F0 00         [24] 2370 	mov	b,#0x00
      002AB7 12 2B 5C         [24] 2371 	lcall	___memcpy
      002ABA E5 81            [12] 2372 	mov	a,sp
      002ABC 24 FB            [12] 2373 	add	a,#0xfb
      002ABE F5 81            [12] 2374 	mov	sp,a
                                   2375 ;	life.c:231: if (fixed || cycle2) {
      002AC0 90 98 10         [24] 2376 	mov	dptr,#_fixed
      002AC3 E0               [24] 2377 	movx	a,@dptr
      002AC4 70 09            [24] 2378 	jnz	00120$
      002AC6 90 98 11         [24] 2379 	mov	dptr,#_cycle2
      002AC9 E0               [24] 2380 	movx	a,@dptr
      002ACA 70 03            [24] 2381 	jnz	00424$
      002ACC 02 26 05         [24] 2382 	ljmp	00192$
      002ACF                       2383 00424$:
      002ACF                       2384 00120$:
                                   2385 ;	life.c:232: printstr("DONE\r\n");
      002ACF 7D BD            [12] 2386 	mov	r5,#___str_6
      002AD1 7E 2D            [12] 2387 	mov	r6,#(___str_6 >> 8)
      002AD3 7F 80            [12] 2388 	mov	r7,#0x80
                                   2389 ;	life.c:48: return;
      002AD5                       2390 00188$:
                                   2391 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AD5 8D 82            [24] 2392 	mov	dpl,r5
      002AD7 8E 83            [24] 2393 	mov	dph,r6
      002AD9 8F F0            [24] 2394 	mov	b,r7
      002ADB 12 2C 59         [24] 2395 	lcall	__gptrget
      002ADE FC               [12] 2396 	mov	r4,a
      002ADF 60 10            [24] 2397 	jz	00162$
      002AE1 7B 00            [12] 2398 	mov	r3,#0x00
      002AE3 8C 82            [24] 2399 	mov	dpl,r4
      002AE5 8B 83            [24] 2400 	mov	dph,r3
      002AE7 12 20 75         [24] 2401 	lcall	_putchar
      002AEA 0D               [12] 2402 	inc	r5
                                   2403 ;	life.c:232: printstr("DONE\r\n");
      002AEB BD 00 E7         [24] 2404 	cjne	r5,#0x00,00188$
      002AEE 0E               [12] 2405 	inc	r6
      002AEF 80 E4            [24] 2406 	sjmp	00188$
      002AF1                       2407 00162$:
                                   2408 ;	life.c:233: (void)getchar();
      002AF1 12 20 7A         [24] 2409 	lcall	_getchar
                                   2410 ;	life.c:234: break;
      002AF4                       2411 00123$:
                                   2412 ;	life.c:238: if (i1) {
      002AF4 90 80 01         [24] 2413 	mov	dptr,#_i1
      002AF7 E0               [24] 2414 	movx	a,@dptr
      002AF8 60 25            [24] 2415 	jz	00198$
                                   2416 ;	life.c:239: printstr("BREAK\r\n");
      002AFA 7D C4            [12] 2417 	mov	r5,#___str_7
      002AFC 7E 2D            [12] 2418 	mov	r6,#(___str_7 >> 8)
      002AFE 7F 80            [12] 2419 	mov	r7,#0x80
                                   2420 ;	life.c:48: return;
      002B00                       2421 00195$:
                                   2422 ;	life.c:46: for (; *s; s++) putchar(*s);
      002B00 8D 82            [24] 2423 	mov	dpl,r5
      002B02 8E 83            [24] 2424 	mov	dph,r6
      002B04 8F F0            [24] 2425 	mov	b,r7
      002B06 12 2C 59         [24] 2426 	lcall	__gptrget
      002B09 FC               [12] 2427 	mov	r4,a
      002B0A 60 10            [24] 2428 	jz	00164$
      002B0C 7B 00            [12] 2429 	mov	r3,#0x00
      002B0E 8C 82            [24] 2430 	mov	dpl,r4
      002B10 8B 83            [24] 2431 	mov	dph,r3
      002B12 12 20 75         [24] 2432 	lcall	_putchar
      002B15 0D               [12] 2433 	inc	r5
                                   2434 ;	life.c:239: printstr("BREAK\r\n");
      002B16 BD 00 E7         [24] 2435 	cjne	r5,#0x00,00195$
      002B19 0E               [12] 2436 	inc	r6
      002B1A 80 E4            [24] 2437 	sjmp	00195$
      002B1C                       2438 00164$:
                                   2439 ;	life.c:240: (void)getchar();
      002B1C 12 20 7A         [24] 2440 	lcall	_getchar
      002B1F                       2441 00198$:
                                   2442 ;	life.c:205: for (i0 = 0; !i0; ) {		
      002B1F 90 80 00         [24] 2443 	mov	dptr,#_i0
      002B22 E0               [24] 2444 	movx	a,@dptr
      002B23 70 03            [24] 2445 	jnz	00430$
      002B25 02 23 27         [24] 2446 	ljmp	00197$
      002B28                       2447 00430$:
                                   2448 ;	life.c:244: terminate:
      002B28                       2449 00127$:
                                   2450 ;	life.c:245: EA = 0;
                                   2451 ;	assignBit
      002B28 C2 AF            [12] 2452 	clr	_EA
                                   2453 ;	life.c:246: printstr("TERM\r\n");
      002B2A 7D CC            [12] 2454 	mov	r5,#___str_8
      002B2C 7E 2D            [12] 2455 	mov	r6,#(___str_8 >> 8)
      002B2E 7F 80            [12] 2456 	mov	r7,#0x80
                                   2457 ;	life.c:48: return;
      002B30                       2458 00200$:
                                   2459 ;	life.c:46: for (; *s; s++) putchar(*s);
      002B30 8D 82            [24] 2460 	mov	dpl,r5
      002B32 8E 83            [24] 2461 	mov	dph,r6
      002B34 8F F0            [24] 2462 	mov	b,r7
      002B36 12 2C 59         [24] 2463 	lcall	__gptrget
      002B39 FC               [12] 2464 	mov	r4,a
      002B3A 60 10            [24] 2465 	jz	00166$
      002B3C 7B 00            [12] 2466 	mov	r3,#0x00
      002B3E 8C 82            [24] 2467 	mov	dpl,r4
      002B40 8B 83            [24] 2468 	mov	dph,r3
      002B42 12 20 75         [24] 2469 	lcall	_putchar
      002B45 0D               [12] 2470 	inc	r5
                                   2471 ;	life.c:246: printstr("TERM\r\n");
      002B46 BD 00 E7         [24] 2472 	cjne	r5,#0x00,00200$
      002B49 0E               [12] 2473 	inc	r6
      002B4A 80 E4            [24] 2474 	sjmp	00200$
      002B4C                       2475 00166$:
                                   2476 ;	life.c:247: (void)getchar();
      002B4C 12 20 7A         [24] 2477 	lcall	_getchar
                                   2478 ;	life.c:251: __endasm;
      002B4F 02 00 00         [24] 2479 	ljmp	0
                                   2480 ;	life.c:252: }
      002B52 85 10 81         [24] 2481 	mov	sp,_bp
      002B55 D0 10            [24] 2482 	pop	_bp
      002B57 22               [24] 2483 	ret
                                   2484 	.area CSEG    (CODE)
                                   2485 	.area CONST   (CODE)
      002D81                       2486 _digits:
      002D81 30                    2487 	.db #0x30	; 48	'0'
      002D82 31                    2488 	.db #0x31	; 49	'1'
      002D83 32                    2489 	.db #0x32	; 50	'2'
      002D84 33                    2490 	.db #0x33	; 51	'3'
      002D85 34                    2491 	.db #0x34	; 52	'4'
      002D86 35                    2492 	.db #0x35	; 53	'5'
      002D87 36                    2493 	.db #0x36	; 54	'6'
      002D88 37                    2494 	.db #0x37	; 55	'7'
      002D89 38                    2495 	.db #0x38	; 56	'8'
      002D8A 39                    2496 	.db #0x39	; 57	'9'
      002D8B 61                    2497 	.db #0x61	; 97	'a'
      002D8C 62                    2498 	.db #0x62	; 98	'b'
      002D8D 63                    2499 	.db #0x63	; 99	'c'
      002D8E 64                    2500 	.db #0x64	; 100	'd'
      002D8F 65                    2501 	.db #0x65	; 101	'e'
      002D90 66                    2502 	.db #0x66	; 102	'f'
                                   2503 	.area CONST   (CODE)
      002D91                       2504 ___str_0:
      002D91 1B                    2505 	.db 0x1b
      002D92 5B 32 4A              2506 	.ascii "[2J"
      002D95 1B                    2507 	.db 0x1b
      002D96 5B 6D                 2508 	.ascii "[m"
      002D98 00                    2509 	.db 0x00
                                   2510 	.area CSEG    (CODE)
                                   2511 	.area CONST   (CODE)
      002D99                       2512 ___str_1:
      002D99 0D                    2513 	.db 0x0d
      002D9A 0A                    2514 	.db 0x0a
      002D9B 00                    2515 	.db 0x00
                                   2516 	.area CSEG    (CODE)
                                   2517 	.area CONST   (CODE)
      002D9C                       2518 ___str_2:
      002D9C 4C 4F 41 44 20 3C     2519 	.ascii "LOAD <"
      002DA2 00                    2520 	.db 0x00
                                   2521 	.area CSEG    (CODE)
                                   2522 	.area CONST   (CODE)
      002DA3                       2523 ___str_3:
      002DA3 3E                    2524 	.ascii ">"
      002DA4 0D                    2525 	.db 0x0d
      002DA5 0A                    2526 	.db 0x0a
      002DA6 00                    2527 	.db 0x00
                                   2528 	.area CSEG    (CODE)
      002B58                       2529 _busy:
      002B58 5C                    2530 	.db #0x5c	; 92
      002B59 7C                    2531 	.db #0x7c	; 124
      002B5A 2F                    2532 	.db #0x2f	; 47
      002B5B 2D                    2533 	.db #0x2d	; 45
                                   2534 	.area CONST   (CODE)
      002DA7                       2535 ___str_4:
      002DA7 1B                    2536 	.db 0x1b
      002DA8 5B 32 4A              2537 	.ascii "[2J"
      002DAB 1B                    2538 	.db 0x1b
      002DAC 5B 6D 49 4E 49 54     2539 	.ascii "[mINIT"
      002DB2 0D                    2540 	.db 0x0d
      002DB3 0A                    2541 	.db 0x0a
      002DB4 00                    2542 	.db 0x00
                                   2543 	.area CSEG    (CODE)
                                   2544 	.area CONST   (CODE)
      002DB5                       2545 ___str_5:
      002DB5 52 45 41 44 59        2546 	.ascii "READY"
      002DBA 0D                    2547 	.db 0x0d
      002DBB 0A                    2548 	.db 0x0a
      002DBC 00                    2549 	.db 0x00
                                   2550 	.area CSEG    (CODE)
                                   2551 	.area CONST   (CODE)
      002DBD                       2552 ___str_6:
      002DBD 44 4F 4E 45           2553 	.ascii "DONE"
      002DC1 0D                    2554 	.db 0x0d
      002DC2 0A                    2555 	.db 0x0a
      002DC3 00                    2556 	.db 0x00
                                   2557 	.area CSEG    (CODE)
                                   2558 	.area CONST   (CODE)
      002DC4                       2559 ___str_7:
      002DC4 42 52 45 41 4B        2560 	.ascii "BREAK"
      002DC9 0D                    2561 	.db 0x0d
      002DCA 0A                    2562 	.db 0x0a
      002DCB 00                    2563 	.db 0x00
                                   2564 	.area CSEG    (CODE)
                                   2565 	.area CONST   (CODE)
      002DCC                       2566 ___str_8:
      002DCC 54 45 52 4D           2567 	.ascii "TERM"
      002DD0 0D                    2568 	.db 0x0d
      002DD1 0A                    2569 	.db 0x0a
      002DD2 00                    2570 	.db 0x00
                                   2571 	.area CSEG    (CODE)
                                   2572 	.area XINIT   (CODE)
                                   2573 	.area CABS    (ABS,CODE)
