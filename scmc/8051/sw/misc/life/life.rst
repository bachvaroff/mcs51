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
                                     12 	.globl _int1
                                     13 	.globl _int0
                                     14 	.globl _printf
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _FL
                                     22 	.globl _P
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _C_T2
                                     30 	.globl _CP_RL2
                                     31 	.globl _T2CON_7
                                     32 	.globl _T2CON_6
                                     33 	.globl _T2CON_5
                                     34 	.globl _T2CON_4
                                     35 	.globl _T2CON_3
                                     36 	.globl _T2CON_2
                                     37 	.globl _T2CON_1
                                     38 	.globl _T2CON_0
                                     39 	.globl _PT2
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ET2
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _T2EX
                                     85 	.globl _T2
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _B
                                    111 	.globl _A
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2MOD
                                    119 	.globl _T2CON
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _c
                                    139 	.globl _cycle2
                                    140 	.globl _fixed
                                    141 	.globl _j
                                    142 	.globl _generation
                                    143 	.globl _n
                                    144 	.globl _y1
                                    145 	.globl _x1
                                    146 	.globl _y
                                    147 	.globl _x
                                    148 	.globl _nu
                                    149 	.globl _u
                                    150 	.globl _pu
                                    151 	.globl _i1
                                    152 	.globl _i0
                                    153 	.globl _putchar
                                    154 	.globl _getchar
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0	=	0x0080
                           000081   161 _SP	=	0x0081
                           000082   162 _DPL	=	0x0082
                           000083   163 _DPH	=	0x0083
                           000087   164 _PCON	=	0x0087
                           000088   165 _TCON	=	0x0088
                           000089   166 _TMOD	=	0x0089
                           00008A   167 _TL0	=	0x008a
                           00008B   168 _TL1	=	0x008b
                           00008C   169 _TH0	=	0x008c
                           00008D   170 _TH1	=	0x008d
                           000090   171 _P1	=	0x0090
                           000098   172 _SCON	=	0x0098
                           000099   173 _SBUF	=	0x0099
                           0000A0   174 _P2	=	0x00a0
                           0000A8   175 _IE	=	0x00a8
                           0000B0   176 _P3	=	0x00b0
                           0000B8   177 _IP	=	0x00b8
                           0000C8   178 _T2CON	=	0x00c8
                           0000C9   179 _T2MOD	=	0x00c9
                           0000CA   180 _RCAP2L	=	0x00ca
                           0000CB   181 _RCAP2H	=	0x00cb
                           0000CC   182 _TL2	=	0x00cc
                           0000CD   183 _TH2	=	0x00cd
                           0000D0   184 _PSW	=	0x00d0
                           0000E0   185 _ACC	=	0x00e0
                           0000E0   186 _A	=	0x00e0
                           0000F0   187 _B	=	0x00f0
                                    188 ;--------------------------------------------------------
                                    189 ; special function bits
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0_0	=	0x0080
                           000081   194 _P0_1	=	0x0081
                           000082   195 _P0_2	=	0x0082
                           000083   196 _P0_3	=	0x0083
                           000084   197 _P0_4	=	0x0084
                           000085   198 _P0_5	=	0x0085
                           000086   199 _P0_6	=	0x0086
                           000087   200 _P0_7	=	0x0087
                           000088   201 _IT0	=	0x0088
                           000089   202 _IE0	=	0x0089
                           00008A   203 _IT1	=	0x008a
                           00008B   204 _IE1	=	0x008b
                           00008C   205 _TR0	=	0x008c
                           00008D   206 _TF0	=	0x008d
                           00008E   207 _TR1	=	0x008e
                           00008F   208 _TF1	=	0x008f
                           000090   209 _P1_0	=	0x0090
                           000091   210 _P1_1	=	0x0091
                           000092   211 _P1_2	=	0x0092
                           000093   212 _P1_3	=	0x0093
                           000094   213 _P1_4	=	0x0094
                           000095   214 _P1_5	=	0x0095
                           000096   215 _P1_6	=	0x0096
                           000097   216 _P1_7	=	0x0097
                           000090   217 _T2	=	0x0090
                           000091   218 _T2EX	=	0x0091
                           000098   219 _RI	=	0x0098
                           000099   220 _TI	=	0x0099
                           00009A   221 _RB8	=	0x009a
                           00009B   222 _TB8	=	0x009b
                           00009C   223 _REN	=	0x009c
                           00009D   224 _SM2	=	0x009d
                           00009E   225 _SM1	=	0x009e
                           00009F   226 _SM0	=	0x009f
                           0000A0   227 _P2_0	=	0x00a0
                           0000A1   228 _P2_1	=	0x00a1
                           0000A2   229 _P2_2	=	0x00a2
                           0000A3   230 _P2_3	=	0x00a3
                           0000A4   231 _P2_4	=	0x00a4
                           0000A5   232 _P2_5	=	0x00a5
                           0000A6   233 _P2_6	=	0x00a6
                           0000A7   234 _P2_7	=	0x00a7
                           0000A8   235 _EX0	=	0x00a8
                           0000A9   236 _ET0	=	0x00a9
                           0000AA   237 _EX1	=	0x00aa
                           0000AB   238 _ET1	=	0x00ab
                           0000AC   239 _ES	=	0x00ac
                           0000AD   240 _ET2	=	0x00ad
                           0000AF   241 _EA	=	0x00af
                           0000B0   242 _P3_0	=	0x00b0
                           0000B1   243 _P3_1	=	0x00b1
                           0000B2   244 _P3_2	=	0x00b2
                           0000B3   245 _P3_3	=	0x00b3
                           0000B4   246 _P3_4	=	0x00b4
                           0000B5   247 _P3_5	=	0x00b5
                           0000B6   248 _P3_6	=	0x00b6
                           0000B7   249 _P3_7	=	0x00b7
                           0000B0   250 _RXD	=	0x00b0
                           0000B1   251 _TXD	=	0x00b1
                           0000B2   252 _INT0	=	0x00b2
                           0000B3   253 _INT1	=	0x00b3
                           0000B4   254 _T0	=	0x00b4
                           0000B5   255 _T1	=	0x00b5
                           0000B6   256 _WR	=	0x00b6
                           0000B7   257 _RD	=	0x00b7
                           0000B8   258 _PX0	=	0x00b8
                           0000B9   259 _PT0	=	0x00b9
                           0000BA   260 _PX1	=	0x00ba
                           0000BB   261 _PT1	=	0x00bb
                           0000BC   262 _PS	=	0x00bc
                           0000BD   263 _PT2	=	0x00bd
                           0000C8   264 _T2CON_0	=	0x00c8
                           0000C9   265 _T2CON_1	=	0x00c9
                           0000CA   266 _T2CON_2	=	0x00ca
                           0000CB   267 _T2CON_3	=	0x00cb
                           0000CC   268 _T2CON_4	=	0x00cc
                           0000CD   269 _T2CON_5	=	0x00cd
                           0000CE   270 _T2CON_6	=	0x00ce
                           0000CF   271 _T2CON_7	=	0x00cf
                           0000C8   272 _CP_RL2	=	0x00c8
                           0000C9   273 _C_T2	=	0x00c9
                           0000CA   274 _TR2	=	0x00ca
                           0000CB   275 _EXEN2	=	0x00cb
                           0000CC   276 _TCLK	=	0x00cc
                           0000CD   277 _RCLK	=	0x00cd
                           0000CE   278 _EXF2	=	0x00ce
                           0000CF   279 _TF2	=	0x00cf
                           0000D0   280 _P	=	0x00d0
                           0000D1   281 _FL	=	0x00d1
                           0000D2   282 _OV	=	0x00d2
                           0000D3   283 _RS0	=	0x00d3
                           0000D4   284 _RS1	=	0x00d4
                           0000D5   285 _F0	=	0x00d5
                           0000D6   286 _AC	=	0x00d6
                           0000D7   287 _CY	=	0x00d7
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable register banks
                                    290 ;--------------------------------------------------------
                                    291 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        292 	.ds 8
                                    293 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        294 	.ds 8
                                    295 ;--------------------------------------------------------
                                    296 ; overlayable bit register bank
                                    297 ;--------------------------------------------------------
                                    298 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        299 bits:
      000020                        300 	.ds 1
                           008000   301 	b0 = bits[0]
                           008100   302 	b1 = bits[1]
                           008200   303 	b2 = bits[2]
                           008300   304 	b3 = bits[3]
                           008400   305 	b4 = bits[4]
                           008500   306 	b5 = bits[5]
                           008600   307 	b6 = bits[6]
                           008700   308 	b7 = bits[7]
                                    309 ;--------------------------------------------------------
                                    310 ; internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area DSEG    (DATA)
                                    313 ;--------------------------------------------------------
                                    314 ; overlayable items in internal ram 
                                    315 ;--------------------------------------------------------
                                    316 ;--------------------------------------------------------
                                    317 ; Stack segment in internal ram 
                                    318 ;--------------------------------------------------------
                                    319 	.area	SSEG
      000021                        320 __start__stack:
      000021                        321 	.ds	1
                                    322 
                                    323 ;--------------------------------------------------------
                                    324 ; indirectly addressable internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area ISEG    (DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; absolute internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area IABS    (ABS,DATA)
                                    331 	.area IABS    (ABS,DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; bit data
                                    334 ;--------------------------------------------------------
                                    335 	.area BSEG    (BIT)
                                    336 ;--------------------------------------------------------
                                    337 ; paged external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area PSEG    (PAG,XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XSEG    (XDATA)
      008000                        344 _i0::
      008000                        345 	.ds 2
      008002                        346 _i1::
      008002                        347 	.ds 2
      008004                        348 _pu::
      008004                        349 	.ds 1024
      008404                        350 _u::
      008404                        351 	.ds 1024
      008804                        352 _nu::
      008804                        353 	.ds 1024
      008C04                        354 _x::
      008C04                        355 	.ds 2
      008C06                        356 _y::
      008C06                        357 	.ds 2
      008C08                        358 _x1::
      008C08                        359 	.ds 2
      008C0A                        360 _y1::
      008C0A                        361 	.ds 2
      008C0C                        362 _n::
      008C0C                        363 	.ds 2
      008C0E                        364 _generation::
      008C0E                        365 	.ds 8
      008C16                        366 _j::
      008C16                        367 	.ds 2
      008C18                        368 _fixed::
      008C18                        369 	.ds 2
      008C1A                        370 _cycle2::
      008C1A                        371 	.ds 2
      008C1C                        372 _c::
      008C1C                        373 	.ds 2
                                    374 ;--------------------------------------------------------
                                    375 ; absolute external ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XABS    (ABS,XDATA)
                                    378 ;--------------------------------------------------------
                                    379 ; external initialized ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area XISEG   (XDATA)
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT0 (CODE)
                                    384 	.area GSINIT1 (CODE)
                                    385 	.area GSINIT2 (CODE)
                                    386 	.area GSINIT3 (CODE)
                                    387 	.area GSINIT4 (CODE)
                                    388 	.area GSINIT5 (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area CSEG    (CODE)
                                    392 ;--------------------------------------------------------
                                    393 ; interrupt vector 
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
      002000                        396 __interrupt_vect:
      002000 02 20 19         [24]  397 	ljmp	__sdcc_gsinit_startup
      002003 02 20 83         [24]  398 	ljmp	_int0
      002006                        399 	.ds	5
      00200B 32               [24]  400 	reti
      00200C                        401 	.ds	7
      002013 02 20 99         [24]  402 	ljmp	_int1
                                    403 ;--------------------------------------------------------
                                    404 ; global & static initialisations
                                    405 ;--------------------------------------------------------
                                    406 	.area HOME    (CODE)
                                    407 	.area GSINIT  (CODE)
                                    408 	.area GSFINAL (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.globl __sdcc_gsinit_startup
                                    411 	.globl __sdcc_program_startup
                                    412 	.globl __start__stack
                                    413 	.globl __mcs51_genXINIT
                                    414 	.globl __mcs51_genXRAMCLEAR
                                    415 	.globl __mcs51_genRAMCLEAR
                                    416 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  417 	ljmp	__sdcc_program_startup
                                    418 ;--------------------------------------------------------
                                    419 ; Home
                                    420 ;--------------------------------------------------------
                                    421 	.area HOME    (CODE)
                                    422 	.area HOME    (CODE)
      002016                        423 __sdcc_program_startup:
      002016 02 20 AF         [24]  424 	ljmp	_main
                                    425 ;	return from main will return to caller
                                    426 ;--------------------------------------------------------
                                    427 ; code
                                    428 ;--------------------------------------------------------
                                    429 	.area CSEG    (CODE)
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'putchar'
                                    432 ;------------------------------------------------------------
                                    433 ;c                         Allocated to registers 
                                    434 ;------------------------------------------------------------
                                    435 ;	life.c:7: int putchar(int c) __naked {
                                    436 ;	-----------------------------------------
                                    437 ;	 function putchar
                                    438 ;	-----------------------------------------
      002075                        439 _putchar:
                                    440 ;	naked function: no prologue.
                                    441 ;	life.c:12: __endasm;
      002075 E5 82            [12]  442 	mov	a, dpl
      002077 02 00 30         [24]  443 	ljmp	0x0030
                                    444 ;	life.c:13: }
                                    445 ;	naked function: no epilogue.
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'getchar'
                                    448 ;------------------------------------------------------------
                                    449 ;	life.c:15: int getchar(void) __naked {
                                    450 ;	-----------------------------------------
                                    451 ;	 function getchar
                                    452 ;	-----------------------------------------
      00207A                        453 _getchar:
                                    454 ;	naked function: no prologue.
                                    455 ;	life.c:21: __endasm;
      00207A 12 00 32         [24]  456 	lcall	0x0032
      00207D F5 82            [12]  457 	mov	dpl, a
      00207F 75 83 00         [24]  458 	mov	dph, #0
      002082 22               [24]  459 	ret
                                    460 ;	life.c:22: }
                                    461 ;	naked function: no epilogue.
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'int0'
                                    464 ;------------------------------------------------------------
                                    465 ;	life.c:33: void int0(void) __interrupt 0 __using 1 {
                                    466 ;	-----------------------------------------
                                    467 ;	 function int0
                                    468 ;	-----------------------------------------
      002083                        469 _int0:
                           00000F   470 	ar7 = 0x0f
                           00000E   471 	ar6 = 0x0e
                           00000D   472 	ar5 = 0x0d
                           00000C   473 	ar4 = 0x0c
                           00000B   474 	ar3 = 0x0b
                           00000A   475 	ar2 = 0x0a
                           000009   476 	ar1 = 0x09
                           000008   477 	ar0 = 0x08
      002083 C0 E0            [24]  478 	push	acc
      002085 C0 82            [24]  479 	push	dpl
      002087 C0 83            [24]  480 	push	dph
                                    481 ;	life.c:34: i0 = 1;
      002089 90 80 00         [24]  482 	mov	dptr,#_i0
      00208C 74 01            [12]  483 	mov	a,#0x01
      00208E F0               [24]  484 	movx	@dptr,a
      00208F E4               [12]  485 	clr	a
      002090 A3               [24]  486 	inc	dptr
      002091 F0               [24]  487 	movx	@dptr,a
                                    488 ;	life.c:35: }
      002092 D0 83            [24]  489 	pop	dph
      002094 D0 82            [24]  490 	pop	dpl
      002096 D0 E0            [24]  491 	pop	acc
      002098 32               [24]  492 	reti
                                    493 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    494 ;	eliminated unneeded push/pop psw
                                    495 ;	eliminated unneeded push/pop b
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'int1'
                                    498 ;------------------------------------------------------------
                                    499 ;	life.c:38: void int1(void) __interrupt 2 __using 1 {
                                    500 ;	-----------------------------------------
                                    501 ;	 function int1
                                    502 ;	-----------------------------------------
      002099                        503 _int1:
      002099 C0 E0            [24]  504 	push	acc
      00209B C0 82            [24]  505 	push	dpl
      00209D C0 83            [24]  506 	push	dph
                                    507 ;	life.c:39: i1 = 1;
      00209F 90 80 02         [24]  508 	mov	dptr,#_i1
      0020A2 74 01            [12]  509 	mov	a,#0x01
      0020A4 F0               [24]  510 	movx	@dptr,a
      0020A5 E4               [12]  511 	clr	a
      0020A6 A3               [24]  512 	inc	dptr
      0020A7 F0               [24]  513 	movx	@dptr,a
                                    514 ;	life.c:40: }
      0020A8 D0 83            [24]  515 	pop	dph
      0020AA D0 82            [24]  516 	pop	dpl
      0020AC D0 E0            [24]  517 	pop	acc
      0020AE 32               [24]  518 	reti
                                    519 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    520 ;	eliminated unneeded push/pop psw
                                    521 ;	eliminated unneeded push/pop b
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'main'
                                    524 ;------------------------------------------------------------
                                    525 ;	life.c:149: void main(void) {
                                    526 ;	-----------------------------------------
                                    527 ;	 function main
                                    528 ;	-----------------------------------------
      0020AF                        529 _main:
                           000007   530 	ar7 = 0x07
                           000006   531 	ar6 = 0x06
                           000005   532 	ar5 = 0x05
                           000004   533 	ar4 = 0x04
                           000003   534 	ar3 = 0x03
                           000002   535 	ar2 = 0x02
                           000001   536 	ar1 = 0x01
                           000000   537 	ar0 = 0x00
                                    538 ;	life.c:150: IT0 = 1;
                                    539 ;	assignBit
      0020AF D2 88            [12]  540 	setb	_IT0
                                    541 ;	life.c:151: IT1 = 1;
                                    542 ;	assignBit
      0020B1 D2 8A            [12]  543 	setb	_IT1
                                    544 ;	life.c:152: EX0 = 1;
                                    545 ;	assignBit
      0020B3 D2 A8            [12]  546 	setb	_EX0
                                    547 ;	life.c:153: EX1 = 1;
                                    548 ;	assignBit
      0020B5 D2 AA            [12]  549 	setb	_EX1
                                    550 ;	life.c:154: EA = 1;
                                    551 ;	assignBit
      0020B7 D2 AF            [12]  552 	setb	_EA
                                    553 ;	life.c:156: for (i0 = 0; !i0; ) {
      0020B9 90 80 00         [24]  554 	mov	dptr,#_i0
      0020BC E4               [12]  555 	clr	a
      0020BD F0               [24]  556 	movx	@dptr,a
      0020BE A3               [24]  557 	inc	dptr
      0020BF F0               [24]  558 	movx	@dptr,a
      0020C0 90 80 02         [24]  559 	mov	dptr,#_i1
      0020C3 F0               [24]  560 	movx	@dptr,a
      0020C4 A3               [24]  561 	inc	dptr
      0020C5 F0               [24]  562 	movx	@dptr,a
      0020C6                        563 00197$:
                                    564 ;	life.c:84: for (y = 0; y < H; y++)
      0020C6 90 8C 06         [24]  565 	mov	dptr,#_y
      0020C9 E4               [12]  566 	clr	a
      0020CA F0               [24]  567 	movx	@dptr,a
      0020CB A3               [24]  568 	inc	dptr
      0020CC F0               [24]  569 	movx	@dptr,a
      0020CD                        570 00163$:
                                    571 ;	life.c:85: for (x = 0; x < W; x++) {
      0020CD 90 8C 04         [24]  572 	mov	dptr,#_x
      0020D0 E4               [12]  573 	clr	a
      0020D1 F0               [24]  574 	movx	@dptr,a
      0020D2 A3               [24]  575 	inc	dptr
      0020D3 F0               [24]  576 	movx	@dptr,a
      0020D4                        577 00161$:
                                    578 ;	life.c:86: u[y][x] = 0;
      0020D4 90 8C 06         [24]  579 	mov	dptr,#_y
      0020D7 E0               [24]  580 	movx	a,@dptr
      0020D8 FE               [12]  581 	mov	r6,a
      0020D9 A3               [24]  582 	inc	dptr
      0020DA E0               [24]  583 	movx	a,@dptr
      0020DB C4               [12]  584 	swap	a
      0020DC 23               [12]  585 	rl	a
      0020DD 54 E0            [12]  586 	anl	a,#0xe0
      0020DF CE               [12]  587 	xch	a,r6
      0020E0 C4               [12]  588 	swap	a
      0020E1 23               [12]  589 	rl	a
      0020E2 CE               [12]  590 	xch	a,r6
      0020E3 6E               [12]  591 	xrl	a,r6
      0020E4 CE               [12]  592 	xch	a,r6
      0020E5 54 E0            [12]  593 	anl	a,#0xe0
      0020E7 CE               [12]  594 	xch	a,r6
      0020E8 6E               [12]  595 	xrl	a,r6
      0020E9 FF               [12]  596 	mov	r7,a
      0020EA EE               [12]  597 	mov	a,r6
      0020EB 24 04            [12]  598 	add	a,#_u
      0020ED FE               [12]  599 	mov	r6,a
      0020EE EF               [12]  600 	mov	a,r7
      0020EF 34 84            [12]  601 	addc	a,#(_u >> 8)
      0020F1 FF               [12]  602 	mov	r7,a
      0020F2 90 8C 04         [24]  603 	mov	dptr,#_x
      0020F5 E0               [24]  604 	movx	a,@dptr
      0020F6 FC               [12]  605 	mov	r4,a
      0020F7 A3               [24]  606 	inc	dptr
      0020F8 E0               [24]  607 	movx	a,@dptr
      0020F9 FD               [12]  608 	mov	r5,a
      0020FA EC               [12]  609 	mov	a,r4
      0020FB 2E               [12]  610 	add	a,r6
      0020FC F5 82            [12]  611 	mov	dpl,a
      0020FE ED               [12]  612 	mov	a,r5
      0020FF 3F               [12]  613 	addc	a,r7
      002100 F5 83            [12]  614 	mov	dph,a
      002102 E4               [12]  615 	clr	a
      002103 F0               [24]  616 	movx	@dptr,a
                                    617 ;	life.c:87: pu[y][x] = 0;
      002104 90 8C 06         [24]  618 	mov	dptr,#_y
      002107 E0               [24]  619 	movx	a,@dptr
      002108 FE               [12]  620 	mov	r6,a
      002109 A3               [24]  621 	inc	dptr
      00210A E0               [24]  622 	movx	a,@dptr
      00210B C4               [12]  623 	swap	a
      00210C 23               [12]  624 	rl	a
      00210D 54 E0            [12]  625 	anl	a,#0xe0
      00210F CE               [12]  626 	xch	a,r6
      002110 C4               [12]  627 	swap	a
      002111 23               [12]  628 	rl	a
      002112 CE               [12]  629 	xch	a,r6
      002113 6E               [12]  630 	xrl	a,r6
      002114 CE               [12]  631 	xch	a,r6
      002115 54 E0            [12]  632 	anl	a,#0xe0
      002117 CE               [12]  633 	xch	a,r6
      002118 6E               [12]  634 	xrl	a,r6
      002119 FF               [12]  635 	mov	r7,a
      00211A EE               [12]  636 	mov	a,r6
      00211B 24 04            [12]  637 	add	a,#_pu
      00211D FE               [12]  638 	mov	r6,a
      00211E EF               [12]  639 	mov	a,r7
      00211F 34 80            [12]  640 	addc	a,#(_pu >> 8)
      002121 FF               [12]  641 	mov	r7,a
      002122 90 8C 04         [24]  642 	mov	dptr,#_x
      002125 E0               [24]  643 	movx	a,@dptr
      002126 FC               [12]  644 	mov	r4,a
      002127 A3               [24]  645 	inc	dptr
      002128 E0               [24]  646 	movx	a,@dptr
      002129 FD               [12]  647 	mov	r5,a
      00212A EC               [12]  648 	mov	a,r4
      00212B 2E               [12]  649 	add	a,r6
      00212C F5 82            [12]  650 	mov	dpl,a
      00212E ED               [12]  651 	mov	a,r5
      00212F 3F               [12]  652 	addc	a,r7
      002130 F5 83            [12]  653 	mov	dph,a
      002132 E4               [12]  654 	clr	a
      002133 F0               [24]  655 	movx	@dptr,a
                                    656 ;	life.c:85: for (x = 0; x < W; x++) {
      002134 90 8C 04         [24]  657 	mov	dptr,#_x
      002137 E0               [24]  658 	movx	a,@dptr
      002138 24 01            [12]  659 	add	a,#0x01
      00213A F0               [24]  660 	movx	@dptr,a
      00213B A3               [24]  661 	inc	dptr
      00213C E0               [24]  662 	movx	a,@dptr
      00213D 34 00            [12]  663 	addc	a,#0x00
      00213F F0               [24]  664 	movx	@dptr,a
      002140 90 8C 04         [24]  665 	mov	dptr,#_x
      002143 E0               [24]  666 	movx	a,@dptr
      002144 FE               [12]  667 	mov	r6,a
      002145 A3               [24]  668 	inc	dptr
      002146 E0               [24]  669 	movx	a,@dptr
      002147 FF               [12]  670 	mov	r7,a
      002148 C3               [12]  671 	clr	c
      002149 EE               [12]  672 	mov	a,r6
      00214A 94 20            [12]  673 	subb	a,#0x20
      00214C EF               [12]  674 	mov	a,r7
      00214D 64 80            [12]  675 	xrl	a,#0x80
      00214F 94 80            [12]  676 	subb	a,#0x80
      002151 50 03            [24]  677 	jnc	00389$
      002153 02 20 D4         [24]  678 	ljmp	00161$
      002156                        679 00389$:
                                    680 ;	life.c:84: for (y = 0; y < H; y++)
      002156 90 8C 06         [24]  681 	mov	dptr,#_y
      002159 E0               [24]  682 	movx	a,@dptr
      00215A 24 01            [12]  683 	add	a,#0x01
      00215C F0               [24]  684 	movx	@dptr,a
      00215D A3               [24]  685 	inc	dptr
      00215E E0               [24]  686 	movx	a,@dptr
      00215F 34 00            [12]  687 	addc	a,#0x00
      002161 F0               [24]  688 	movx	@dptr,a
      002162 90 8C 06         [24]  689 	mov	dptr,#_y
      002165 E0               [24]  690 	movx	a,@dptr
      002166 FE               [12]  691 	mov	r6,a
      002167 A3               [24]  692 	inc	dptr
      002168 E0               [24]  693 	movx	a,@dptr
      002169 FF               [12]  694 	mov	r7,a
      00216A C3               [12]  695 	clr	c
      00216B EE               [12]  696 	mov	a,r6
      00216C 94 20            [12]  697 	subb	a,#0x20
      00216E EF               [12]  698 	mov	a,r7
      00216F 64 80            [12]  699 	xrl	a,#0x80
      002171 94 80            [12]  700 	subb	a,#0x80
      002173 50 03            [24]  701 	jnc	00390$
      002175 02 20 CD         [24]  702 	ljmp	00163$
      002178                        703 00390$:
                                    704 ;	life.c:158: printf("\033[2J\033[mINIT\r\n");
      002178 74 A9            [12]  705 	mov	a,#___str_6
      00217A C0 E0            [24]  706 	push	acc
      00217C 74 3D            [12]  707 	mov	a,#(___str_6 >> 8)
      00217E C0 E0            [24]  708 	push	acc
      002180 74 80            [12]  709 	mov	a,#0x80
      002182 C0 E0            [24]  710 	push	acc
      002184 12 29 B4         [24]  711 	lcall	_printf
      002187 15 81            [12]  712 	dec	sp
      002189 15 81            [12]  713 	dec	sp
      00218B 15 81            [12]  714 	dec	sp
                                    715 ;	life.c:159: (void)getchar();
      00218D 12 20 7A         [24]  716 	lcall	_getchar
                                    717 ;	life.c:161: printf("LOAD\r\n");
      002190 74 B7            [12]  718 	mov	a,#___str_7
      002192 C0 E0            [24]  719 	push	acc
      002194 74 3D            [12]  720 	mov	a,#(___str_7 >> 8)
      002196 C0 E0            [24]  721 	push	acc
      002198 74 80            [12]  722 	mov	a,#0x80
      00219A C0 E0            [24]  723 	push	acc
      00219C 12 29 B4         [24]  724 	lcall	_printf
      00219F 15 81            [12]  725 	dec	sp
      0021A1 15 81            [12]  726 	dec	sp
      0021A3 15 81            [12]  727 	dec	sp
                                    728 ;	life.c:162: (void)getchar();
      0021A5 12 20 7A         [24]  729 	lcall	_getchar
                                    730 ;	life.c:94: j = 0;
      0021A8 90 8C 16         [24]  731 	mov	dptr,#_j
      0021AB E4               [12]  732 	clr	a
      0021AC F0               [24]  733 	movx	@dptr,a
      0021AD A3               [24]  734 	inc	dptr
      0021AE F0               [24]  735 	movx	@dptr,a
                                    736 ;	life.c:96: putchar('<');
      0021AF 90 00 3C         [24]  737 	mov	dptr,#0x003c
      0021B2 12 20 75         [24]  738 	lcall	_putchar
                                    739 ;	life.c:98: for (y = 0; y < H; y++)
      0021B5 90 8C 06         [24]  740 	mov	dptr,#_y
      0021B8 E4               [12]  741 	clr	a
      0021B9 F0               [24]  742 	movx	@dptr,a
      0021BA A3               [24]  743 	inc	dptr
      0021BB F0               [24]  744 	movx	@dptr,a
      0021BC                        745 00167$:
                                    746 ;	life.c:99: for (x = 0; x < W; x++) {
      0021BC 90 8C 04         [24]  747 	mov	dptr,#_x
      0021BF E4               [12]  748 	clr	a
      0021C0 F0               [24]  749 	movx	@dptr,a
      0021C1 A3               [24]  750 	inc	dptr
      0021C2 F0               [24]  751 	movx	@dptr,a
      0021C3                        752 00165$:
                                    753 ;	life.c:100: c = getchar();
      0021C3 12 20 7A         [24]  754 	lcall	_getchar
      0021C6 AE 82            [24]  755 	mov	r6,dpl
      0021C8 AF 83            [24]  756 	mov	r7,dph
      0021CA 90 8C 1C         [24]  757 	mov	dptr,#_c
      0021CD EE               [12]  758 	mov	a,r6
      0021CE F0               [24]  759 	movx	@dptr,a
      0021CF EF               [12]  760 	mov	a,r7
      0021D0 A3               [24]  761 	inc	dptr
      0021D1 F0               [24]  762 	movx	@dptr,a
                                    763 ;	life.c:101: if (c == (int)'0') {
      0021D2 BE 30 41         [24]  764 	cjne	r6,#0x30,00117$
      0021D5 BF 00 3E         [24]  765 	cjne	r7,#0x00,00117$
                                    766 ;	life.c:102: u[y][x] = 0;
      0021D8 90 8C 06         [24]  767 	mov	dptr,#_y
      0021DB E0               [24]  768 	movx	a,@dptr
      0021DC FC               [12]  769 	mov	r4,a
      0021DD A3               [24]  770 	inc	dptr
      0021DE E0               [24]  771 	movx	a,@dptr
      0021DF C4               [12]  772 	swap	a
      0021E0 23               [12]  773 	rl	a
      0021E1 54 E0            [12]  774 	anl	a,#0xe0
      0021E3 CC               [12]  775 	xch	a,r4
      0021E4 C4               [12]  776 	swap	a
      0021E5 23               [12]  777 	rl	a
      0021E6 CC               [12]  778 	xch	a,r4
      0021E7 6C               [12]  779 	xrl	a,r4
      0021E8 CC               [12]  780 	xch	a,r4
      0021E9 54 E0            [12]  781 	anl	a,#0xe0
      0021EB CC               [12]  782 	xch	a,r4
      0021EC 6C               [12]  783 	xrl	a,r4
      0021ED FD               [12]  784 	mov	r5,a
      0021EE EC               [12]  785 	mov	a,r4
      0021EF 24 04            [12]  786 	add	a,#_u
      0021F1 FC               [12]  787 	mov	r4,a
      0021F2 ED               [12]  788 	mov	a,r5
      0021F3 34 84            [12]  789 	addc	a,#(_u >> 8)
      0021F5 FD               [12]  790 	mov	r5,a
      0021F6 90 8C 04         [24]  791 	mov	dptr,#_x
      0021F9 E0               [24]  792 	movx	a,@dptr
      0021FA FA               [12]  793 	mov	r2,a
      0021FB A3               [24]  794 	inc	dptr
      0021FC E0               [24]  795 	movx	a,@dptr
      0021FD FB               [12]  796 	mov	r3,a
      0021FE EA               [12]  797 	mov	a,r2
      0021FF 2C               [12]  798 	add	a,r4
      002200 F5 82            [12]  799 	mov	dpl,a
      002202 EB               [12]  800 	mov	a,r3
      002203 3D               [12]  801 	addc	a,r5
      002204 F5 83            [12]  802 	mov	dph,a
      002206 E4               [12]  803 	clr	a
      002207 F0               [24]  804 	movx	@dptr,a
                                    805 ;	life.c:103: j++;
      002208 90 8C 16         [24]  806 	mov	dptr,#_j
      00220B E0               [24]  807 	movx	a,@dptr
      00220C 24 01            [12]  808 	add	a,#0x01
      00220E F0               [24]  809 	movx	@dptr,a
      00220F A3               [24]  810 	inc	dptr
      002210 E0               [24]  811 	movx	a,@dptr
      002211 34 00            [12]  812 	addc	a,#0x00
      002213 F0               [24]  813 	movx	@dptr,a
      002214 80 4D            [24]  814 	sjmp	00166$
      002216                        815 00117$:
                                    816 ;	life.c:104: } else if (c == (int)'1') {
      002216 BE 31 42         [24]  817 	cjne	r6,#0x31,00115$
      002219 BF 00 3F         [24]  818 	cjne	r7,#0x00,00115$
                                    819 ;	life.c:105: u[y][x] = 1;
      00221C 90 8C 06         [24]  820 	mov	dptr,#_y
      00221F E0               [24]  821 	movx	a,@dptr
      002220 FC               [12]  822 	mov	r4,a
      002221 A3               [24]  823 	inc	dptr
      002222 E0               [24]  824 	movx	a,@dptr
      002223 C4               [12]  825 	swap	a
      002224 23               [12]  826 	rl	a
      002225 54 E0            [12]  827 	anl	a,#0xe0
      002227 CC               [12]  828 	xch	a,r4
      002228 C4               [12]  829 	swap	a
      002229 23               [12]  830 	rl	a
      00222A CC               [12]  831 	xch	a,r4
      00222B 6C               [12]  832 	xrl	a,r4
      00222C CC               [12]  833 	xch	a,r4
      00222D 54 E0            [12]  834 	anl	a,#0xe0
      00222F CC               [12]  835 	xch	a,r4
      002230 6C               [12]  836 	xrl	a,r4
      002231 FD               [12]  837 	mov	r5,a
      002232 EC               [12]  838 	mov	a,r4
      002233 24 04            [12]  839 	add	a,#_u
      002235 FC               [12]  840 	mov	r4,a
      002236 ED               [12]  841 	mov	a,r5
      002237 34 84            [12]  842 	addc	a,#(_u >> 8)
      002239 FD               [12]  843 	mov	r5,a
      00223A 90 8C 04         [24]  844 	mov	dptr,#_x
      00223D E0               [24]  845 	movx	a,@dptr
      00223E FA               [12]  846 	mov	r2,a
      00223F A3               [24]  847 	inc	dptr
      002240 E0               [24]  848 	movx	a,@dptr
      002241 FB               [12]  849 	mov	r3,a
      002242 EA               [12]  850 	mov	a,r2
      002243 2C               [12]  851 	add	a,r4
      002244 F5 82            [12]  852 	mov	dpl,a
      002246 EB               [12]  853 	mov	a,r3
      002247 3D               [12]  854 	addc	a,r5
      002248 F5 83            [12]  855 	mov	dph,a
      00224A 74 01            [12]  856 	mov	a,#0x01
      00224C F0               [24]  857 	movx	@dptr,a
                                    858 ;	life.c:106: j++;
      00224D 90 8C 16         [24]  859 	mov	dptr,#_j
      002250 E0               [24]  860 	movx	a,@dptr
      002251 24 01            [12]  861 	add	a,#0x01
      002253 F0               [24]  862 	movx	@dptr,a
      002254 A3               [24]  863 	inc	dptr
      002255 E0               [24]  864 	movx	a,@dptr
      002256 34 00            [12]  865 	addc	a,#0x00
      002258 F0               [24]  866 	movx	@dptr,a
      002259 80 08            [24]  867 	sjmp	00166$
      00225B                        868 00115$:
                                    869 ;	life.c:107: } else if (c == (int)'#') goto out;
      00225B BE 23 05         [24]  870 	cjne	r6,#0x23,00395$
      00225E BF 00 02         [24]  871 	cjne	r7,#0x00,00395$
      002261 80 44            [24]  872 	sjmp	00128$
      002263                        873 00395$:
      002263                        874 00166$:
                                    875 ;	life.c:99: for (x = 0; x < W; x++) {
      002263 90 8C 04         [24]  876 	mov	dptr,#_x
      002266 E0               [24]  877 	movx	a,@dptr
      002267 24 01            [12]  878 	add	a,#0x01
      002269 F0               [24]  879 	movx	@dptr,a
      00226A A3               [24]  880 	inc	dptr
      00226B E0               [24]  881 	movx	a,@dptr
      00226C 34 00            [12]  882 	addc	a,#0x00
      00226E F0               [24]  883 	movx	@dptr,a
      00226F 90 8C 04         [24]  884 	mov	dptr,#_x
      002272 E0               [24]  885 	movx	a,@dptr
      002273 FE               [12]  886 	mov	r6,a
      002274 A3               [24]  887 	inc	dptr
      002275 E0               [24]  888 	movx	a,@dptr
      002276 FF               [12]  889 	mov	r7,a
      002277 C3               [12]  890 	clr	c
      002278 EE               [12]  891 	mov	a,r6
      002279 94 20            [12]  892 	subb	a,#0x20
      00227B EF               [12]  893 	mov	a,r7
      00227C 64 80            [12]  894 	xrl	a,#0x80
      00227E 94 80            [12]  895 	subb	a,#0x80
      002280 50 03            [24]  896 	jnc	00396$
      002282 02 21 C3         [24]  897 	ljmp	00165$
      002285                        898 00396$:
                                    899 ;	life.c:98: for (y = 0; y < H; y++)
      002285 90 8C 06         [24]  900 	mov	dptr,#_y
      002288 E0               [24]  901 	movx	a,@dptr
      002289 24 01            [12]  902 	add	a,#0x01
      00228B F0               [24]  903 	movx	@dptr,a
      00228C A3               [24]  904 	inc	dptr
      00228D E0               [24]  905 	movx	a,@dptr
      00228E 34 00            [12]  906 	addc	a,#0x00
      002290 F0               [24]  907 	movx	@dptr,a
      002291 90 8C 06         [24]  908 	mov	dptr,#_y
      002294 E0               [24]  909 	movx	a,@dptr
      002295 FE               [12]  910 	mov	r6,a
      002296 A3               [24]  911 	inc	dptr
      002297 E0               [24]  912 	movx	a,@dptr
      002298 FF               [12]  913 	mov	r7,a
      002299 C3               [12]  914 	clr	c
      00229A EE               [12]  915 	mov	a,r6
      00229B 94 20            [12]  916 	subb	a,#0x20
      00229D EF               [12]  917 	mov	a,r7
      00229E 64 80            [12]  918 	xrl	a,#0x80
      0022A0 94 80            [12]  919 	subb	a,#0x80
      0022A2 50 03            [24]  920 	jnc	00397$
      0022A4 02 21 BC         [24]  921 	ljmp	00167$
      0022A7                        922 00397$:
                                    923 ;	life.c:110: out:
      0022A7                        924 00128$:
                                    925 ;	life.c:111: if (c != (int)'#')
      0022A7 90 8C 1C         [24]  926 	mov	dptr,#_c
      0022AA E0               [24]  927 	movx	a,@dptr
      0022AB FE               [12]  928 	mov	r6,a
      0022AC A3               [24]  929 	inc	dptr
      0022AD E0               [24]  930 	movx	a,@dptr
      0022AE FF               [12]  931 	mov	r7,a
      0022AF BE 23 05         [24]  932 	cjne	r6,#0x23,00398$
      0022B2 BF 00 02         [24]  933 	cjne	r7,#0x00,00398$
      0022B5 80 15            [24]  934 	sjmp	00127$
      0022B7                        935 00398$:
                                    936 ;	life.c:112: while (1) {
      0022B7                        937 00124$:
                                    938 ;	life.c:113: c = getchar();
      0022B7 12 20 7A         [24]  939 	lcall	_getchar
      0022BA AE 82            [24]  940 	mov	r6,dpl
      0022BC AF 83            [24]  941 	mov	r7,dph
      0022BE 90 8C 1C         [24]  942 	mov	dptr,#_c
      0022C1 EE               [12]  943 	mov	a,r6
      0022C2 F0               [24]  944 	movx	@dptr,a
      0022C3 EF               [12]  945 	mov	a,r7
      0022C4 A3               [24]  946 	inc	dptr
      0022C5 F0               [24]  947 	movx	@dptr,a
                                    948 ;	life.c:114: if (c == (int)'#') break;
      0022C6 BE 23 EE         [24]  949 	cjne	r6,#0x23,00124$
      0022C9 BF 00 EB         [24]  950 	cjne	r7,#0x00,00124$
      0022CC                        951 00127$:
                                    952 ;	life.c:116: printf("%d>\r\n", j);
      0022CC 90 8C 16         [24]  953 	mov	dptr,#_j
      0022CF E0               [24]  954 	movx	a,@dptr
      0022D0 C0 E0            [24]  955 	push	acc
      0022D2 A3               [24]  956 	inc	dptr
      0022D3 E0               [24]  957 	movx	a,@dptr
      0022D4 C0 E0            [24]  958 	push	acc
      0022D6 74 A3            [12]  959 	mov	a,#___str_5
      0022D8 C0 E0            [24]  960 	push	acc
      0022DA 74 3D            [12]  961 	mov	a,#(___str_5 >> 8)
      0022DC C0 E0            [24]  962 	push	acc
      0022DE 74 80            [12]  963 	mov	a,#0x80
      0022E0 C0 E0            [24]  964 	push	acc
      0022E2 12 29 B4         [24]  965 	lcall	_printf
      0022E5 E5 81            [12]  966 	mov	a,sp
      0022E7 24 FB            [12]  967 	add	a,#0xfb
      0022E9 F5 81            [12]  968 	mov	sp,a
                                    969 ;	life.c:166: printf("RDY\r\n");
      0022EB 74 BE            [12]  970 	mov	a,#___str_8
      0022ED C0 E0            [24]  971 	push	acc
      0022EF 74 3D            [12]  972 	mov	a,#(___str_8 >> 8)
      0022F1 C0 E0            [24]  973 	push	acc
      0022F3 74 80            [12]  974 	mov	a,#0x80
      0022F5 C0 E0            [24]  975 	push	acc
      0022F7 12 29 B4         [24]  976 	lcall	_printf
      0022FA 15 81            [12]  977 	dec	sp
      0022FC 15 81            [12]  978 	dec	sp
      0022FE 15 81            [12]  979 	dec	sp
                                    980 ;	life.c:167: (void)getchar();
      002300 12 20 7A         [24]  981 	lcall	_getchar
                                    982 ;	life.c:43: for (j = 0; j < 4; j++)
      002303 90 8C 16         [24]  983 	mov	dptr,#_j
      002306 E4               [12]  984 	clr	a
      002307 F0               [24]  985 	movx	@dptr,a
      002308 A3               [24]  986 	inc	dptr
      002309 F0               [24]  987 	movx	@dptr,a
      00230A                        988 00169$:
                                    989 ;	life.c:44: generation[j] = 0;
      00230A 90 8C 16         [24]  990 	mov	dptr,#_j
      00230D E0               [24]  991 	movx	a,@dptr
      00230E FE               [12]  992 	mov	r6,a
      00230F A3               [24]  993 	inc	dptr
      002310 E0               [24]  994 	movx	a,@dptr
      002311 FF               [12]  995 	mov	r7,a
      002312 EE               [12]  996 	mov	a,r6
      002313 2E               [12]  997 	add	a,r6
      002314 FE               [12]  998 	mov	r6,a
      002315 EF               [12]  999 	mov	a,r7
      002316 33               [12] 1000 	rlc	a
      002317 FF               [12] 1001 	mov	r7,a
      002318 EE               [12] 1002 	mov	a,r6
      002319 24 0E            [12] 1003 	add	a,#_generation
      00231B F5 82            [12] 1004 	mov	dpl,a
      00231D EF               [12] 1005 	mov	a,r7
      00231E 34 8C            [12] 1006 	addc	a,#(_generation >> 8)
      002320 F5 83            [12] 1007 	mov	dph,a
      002322 E4               [12] 1008 	clr	a
      002323 F0               [24] 1009 	movx	@dptr,a
      002324 A3               [24] 1010 	inc	dptr
      002325 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	life.c:43: for (j = 0; j < 4; j++)
      002326 90 8C 16         [24] 1013 	mov	dptr,#_j
      002329 E0               [24] 1014 	movx	a,@dptr
      00232A 24 01            [12] 1015 	add	a,#0x01
      00232C F0               [24] 1016 	movx	@dptr,a
      00232D A3               [24] 1017 	inc	dptr
      00232E E0               [24] 1018 	movx	a,@dptr
      00232F 34 00            [12] 1019 	addc	a,#0x00
      002331 F0               [24] 1020 	movx	@dptr,a
      002332 90 8C 16         [24] 1021 	mov	dptr,#_j
      002335 E0               [24] 1022 	movx	a,@dptr
      002336 FE               [12] 1023 	mov	r6,a
      002337 A3               [24] 1024 	inc	dptr
      002338 E0               [24] 1025 	movx	a,@dptr
      002339 FF               [12] 1026 	mov	r7,a
      00233A C3               [12] 1027 	clr	c
      00233B EE               [12] 1028 	mov	a,r6
      00233C 94 04            [12] 1029 	subb	a,#0x04
      00233E EF               [12] 1030 	mov	a,r7
      00233F 64 80            [12] 1031 	xrl	a,#0x80
      002341 94 80            [12] 1032 	subb	a,#0x80
      002343 40 C5            [24] 1033 	jc	00169$
                                   1034 ;	life.c:171: for (i1 = 0; !i0 && !i1; ) {
      002345                       1035 00195$:
      002345 90 80 00         [24] 1036 	mov	dptr,#_i0
      002348 E0               [24] 1037 	movx	a,@dptr
      002349 F5 F0            [12] 1038 	mov	b,a
      00234B A3               [24] 1039 	inc	dptr
      00234C E0               [24] 1040 	movx	a,@dptr
      00234D 45 F0            [12] 1041 	orl	a,b
      00234F 60 03            [24] 1042 	jz	00402$
      002351 02 29 1D         [24] 1043 	ljmp	00104$
      002354                       1044 00402$:
                                   1045 ;	life.c:68: printf("\033[2J\033[m");
      002354 74 8A            [12] 1046 	mov	a,#___str_1
      002356 C0 E0            [24] 1047 	push	acc
      002358 74 3D            [12] 1048 	mov	a,#(___str_1 >> 8)
      00235A C0 E0            [24] 1049 	push	acc
      00235C 74 80            [12] 1050 	mov	a,#0x80
      00235E C0 E0            [24] 1051 	push	acc
      002360 12 29 B4         [24] 1052 	lcall	_printf
      002363 15 81            [12] 1053 	dec	sp
      002365 15 81            [12] 1054 	dec	sp
      002367 15 81            [12] 1055 	dec	sp
                                   1056 ;	life.c:59: for (j = 0; j < 4; j++) {
      002369 90 8C 16         [24] 1057 	mov	dptr,#_j
      00236C E4               [12] 1058 	clr	a
      00236D F0               [24] 1059 	movx	@dptr,a
      00236E A3               [24] 1060 	inc	dptr
      00236F F0               [24] 1061 	movx	@dptr,a
      002370                       1062 00171$:
                                   1063 ;	life.c:60: printf("%04x", generation[3 - j]);
      002370 90 8C 16         [24] 1064 	mov	dptr,#_j
      002373 E0               [24] 1065 	movx	a,@dptr
      002374 FE               [12] 1066 	mov	r6,a
      002375 A3               [24] 1067 	inc	dptr
      002376 E0               [24] 1068 	movx	a,@dptr
      002377 74 03            [12] 1069 	mov	a,#0x03
      002379 C3               [12] 1070 	clr	c
      00237A 9E               [12] 1071 	subb	a,r6
      00237B FE               [12] 1072 	mov	r6,a
      00237C C2 D5            [12] 1073 	clr	F0
      00237E 75 F0 02         [24] 1074 	mov	b,#0x02
      002381 EE               [12] 1075 	mov	a,r6
      002382 30 E7 04         [24] 1076 	jnb	acc.7,00403$
      002385 B2 D5            [12] 1077 	cpl	F0
      002387 F4               [12] 1078 	cpl	a
      002388 04               [12] 1079 	inc	a
      002389                       1080 00403$:
      002389 A4               [48] 1081 	mul	ab
      00238A 30 D5 0A         [24] 1082 	jnb	F0,00404$
      00238D F4               [12] 1083 	cpl	a
      00238E 24 01            [12] 1084 	add	a,#0x01
      002390 C5 F0            [12] 1085 	xch	a,b
      002392 F4               [12] 1086 	cpl	a
      002393 34 00            [12] 1087 	addc	a,#0x00
      002395 C5 F0            [12] 1088 	xch	a,b
      002397                       1089 00404$:
      002397 24 0E            [12] 1090 	add	a,#_generation
      002399 F5 82            [12] 1091 	mov	dpl,a
      00239B 74 8C            [12] 1092 	mov	a,#(_generation >> 8)
      00239D 35 F0            [12] 1093 	addc	a,b
      00239F F5 83            [12] 1094 	mov	dph,a
      0023A1 E0               [24] 1095 	movx	a,@dptr
      0023A2 FE               [12] 1096 	mov	r6,a
      0023A3 A3               [24] 1097 	inc	dptr
      0023A4 E0               [24] 1098 	movx	a,@dptr
      0023A5 FF               [12] 1099 	mov	r7,a
      0023A6 C0 06            [24] 1100 	push	ar6
      0023A8 C0 07            [24] 1101 	push	ar7
      0023AA 74 85            [12] 1102 	mov	a,#___str_0
      0023AC C0 E0            [24] 1103 	push	acc
      0023AE 74 3D            [12] 1104 	mov	a,#(___str_0 >> 8)
      0023B0 C0 E0            [24] 1105 	push	acc
      0023B2 74 80            [12] 1106 	mov	a,#0x80
      0023B4 C0 E0            [24] 1107 	push	acc
      0023B6 12 29 B4         [24] 1108 	lcall	_printf
      0023B9 E5 81            [12] 1109 	mov	a,sp
      0023BB 24 FB            [12] 1110 	add	a,#0xfb
      0023BD F5 81            [12] 1111 	mov	sp,a
                                   1112 ;	life.c:61: if (j < 3) putchar(' ');
      0023BF 90 8C 16         [24] 1113 	mov	dptr,#_j
      0023C2 E0               [24] 1114 	movx	a,@dptr
      0023C3 FE               [12] 1115 	mov	r6,a
      0023C4 A3               [24] 1116 	inc	dptr
      0023C5 E0               [24] 1117 	movx	a,@dptr
      0023C6 FF               [12] 1118 	mov	r7,a
      0023C7 C3               [12] 1119 	clr	c
      0023C8 EE               [12] 1120 	mov	a,r6
      0023C9 94 03            [12] 1121 	subb	a,#0x03
      0023CB EF               [12] 1122 	mov	a,r7
      0023CC 64 80            [12] 1123 	xrl	a,#0x80
      0023CE 94 80            [12] 1124 	subb	a,#0x80
      0023D0 50 06            [24] 1125 	jnc	00172$
      0023D2 90 00 20         [24] 1126 	mov	dptr,#0x0020
      0023D5 12 20 75         [24] 1127 	lcall	_putchar
      0023D8                       1128 00172$:
                                   1129 ;	life.c:59: for (j = 0; j < 4; j++) {
      0023D8 90 8C 16         [24] 1130 	mov	dptr,#_j
      0023DB E0               [24] 1131 	movx	a,@dptr
      0023DC 24 01            [12] 1132 	add	a,#0x01
      0023DE F0               [24] 1133 	movx	@dptr,a
      0023DF A3               [24] 1134 	inc	dptr
      0023E0 E0               [24] 1135 	movx	a,@dptr
      0023E1 34 00            [12] 1136 	addc	a,#0x00
      0023E3 F0               [24] 1137 	movx	@dptr,a
      0023E4 90 8C 16         [24] 1138 	mov	dptr,#_j
      0023E7 E0               [24] 1139 	movx	a,@dptr
      0023E8 FE               [12] 1140 	mov	r6,a
      0023E9 A3               [24] 1141 	inc	dptr
      0023EA E0               [24] 1142 	movx	a,@dptr
      0023EB FF               [12] 1143 	mov	r7,a
      0023EC C3               [12] 1144 	clr	c
      0023ED EE               [12] 1145 	mov	a,r6
      0023EE 94 04            [12] 1146 	subb	a,#0x04
      0023F0 EF               [12] 1147 	mov	a,r7
      0023F1 64 80            [12] 1148 	xrl	a,#0x80
      0023F3 94 80            [12] 1149 	subb	a,#0x80
      0023F5 50 03            [24] 1150 	jnc	00406$
      0023F7 02 23 70         [24] 1151 	ljmp	00171$
      0023FA                       1152 00406$:
                                   1153 ;	life.c:70: printf("\r\n");
      0023FA 74 92            [12] 1154 	mov	a,#___str_2
      0023FC C0 E0            [24] 1155 	push	acc
      0023FE 74 3D            [12] 1156 	mov	a,#(___str_2 >> 8)
      002400 C0 E0            [24] 1157 	push	acc
      002402 74 80            [12] 1158 	mov	a,#0x80
      002404 C0 E0            [24] 1159 	push	acc
      002406 12 29 B4         [24] 1160 	lcall	_printf
      002409 15 81            [12] 1161 	dec	sp
      00240B 15 81            [12] 1162 	dec	sp
      00240D 15 81            [12] 1163 	dec	sp
                                   1164 ;	life.c:50: for (j = 0; j < 4; j++) {
      00240F 90 8C 16         [24] 1165 	mov	dptr,#_j
      002412 E4               [12] 1166 	clr	a
      002413 F0               [24] 1167 	movx	@dptr,a
      002414 A3               [24] 1168 	inc	dptr
      002415 F0               [24] 1169 	movx	@dptr,a
      002416                       1170 00173$:
                                   1171 ;	life.c:51: generation[j]++;
      002416 90 8C 16         [24] 1172 	mov	dptr,#_j
      002419 E0               [24] 1173 	movx	a,@dptr
      00241A FE               [12] 1174 	mov	r6,a
      00241B A3               [24] 1175 	inc	dptr
      00241C E0               [24] 1176 	movx	a,@dptr
      00241D FF               [12] 1177 	mov	r7,a
      00241E EE               [12] 1178 	mov	a,r6
      00241F 2E               [12] 1179 	add	a,r6
      002420 FE               [12] 1180 	mov	r6,a
      002421 EF               [12] 1181 	mov	a,r7
      002422 33               [12] 1182 	rlc	a
      002423 FF               [12] 1183 	mov	r7,a
      002424 EE               [12] 1184 	mov	a,r6
      002425 24 0E            [12] 1185 	add	a,#_generation
      002427 FE               [12] 1186 	mov	r6,a
      002428 EF               [12] 1187 	mov	a,r7
      002429 34 8C            [12] 1188 	addc	a,#(_generation >> 8)
      00242B FF               [12] 1189 	mov	r7,a
      00242C 8E 82            [24] 1190 	mov	dpl,r6
      00242E 8F 83            [24] 1191 	mov	dph,r7
      002430 E0               [24] 1192 	movx	a,@dptr
      002431 FC               [12] 1193 	mov	r4,a
      002432 A3               [24] 1194 	inc	dptr
      002433 E0               [24] 1195 	movx	a,@dptr
      002434 FD               [12] 1196 	mov	r5,a
      002435 0C               [12] 1197 	inc	r4
      002436 BC 00 01         [24] 1198 	cjne	r4,#0x00,00407$
      002439 0D               [12] 1199 	inc	r5
      00243A                       1200 00407$:
      00243A 8E 82            [24] 1201 	mov	dpl,r6
      00243C 8F 83            [24] 1202 	mov	dph,r7
      00243E EC               [12] 1203 	mov	a,r4
      00243F F0               [24] 1204 	movx	@dptr,a
      002440 ED               [12] 1205 	mov	a,r5
      002441 A3               [24] 1206 	inc	dptr
      002442 F0               [24] 1207 	movx	@dptr,a
                                   1208 ;	life.c:52: if (generation[j]) break;
      002443 90 8C 16         [24] 1209 	mov	dptr,#_j
      002446 E0               [24] 1210 	movx	a,@dptr
      002447 FE               [12] 1211 	mov	r6,a
      002448 A3               [24] 1212 	inc	dptr
      002449 E0               [24] 1213 	movx	a,@dptr
      00244A FF               [12] 1214 	mov	r7,a
      00244B EE               [12] 1215 	mov	a,r6
      00244C 2E               [12] 1216 	add	a,r6
      00244D FC               [12] 1217 	mov	r4,a
      00244E EF               [12] 1218 	mov	a,r7
      00244F 33               [12] 1219 	rlc	a
      002450 FD               [12] 1220 	mov	r5,a
      002451 EC               [12] 1221 	mov	a,r4
      002452 24 0E            [12] 1222 	add	a,#_generation
      002454 F5 82            [12] 1223 	mov	dpl,a
      002456 ED               [12] 1224 	mov	a,r5
      002457 34 8C            [12] 1225 	addc	a,#(_generation >> 8)
      002459 F5 83            [12] 1226 	mov	dph,a
      00245B E0               [24] 1227 	movx	a,@dptr
      00245C FC               [12] 1228 	mov	r4,a
      00245D A3               [24] 1229 	inc	dptr
      00245E E0               [24] 1230 	movx	a,@dptr
      00245F FD               [12] 1231 	mov	r5,a
      002460 4C               [12] 1232 	orl	a,r4
      002461 70 1E            [24] 1233 	jnz	00139$
                                   1234 ;	life.c:50: for (j = 0; j < 4; j++) {
      002463 90 8C 16         [24] 1235 	mov	dptr,#_j
      002466 74 01            [12] 1236 	mov	a,#0x01
      002468 2E               [12] 1237 	add	a,r6
      002469 F0               [24] 1238 	movx	@dptr,a
      00246A E4               [12] 1239 	clr	a
      00246B 3F               [12] 1240 	addc	a,r7
      00246C A3               [24] 1241 	inc	dptr
      00246D F0               [24] 1242 	movx	@dptr,a
      00246E 90 8C 16         [24] 1243 	mov	dptr,#_j
      002471 E0               [24] 1244 	movx	a,@dptr
      002472 FE               [12] 1245 	mov	r6,a
      002473 A3               [24] 1246 	inc	dptr
      002474 E0               [24] 1247 	movx	a,@dptr
      002475 FF               [12] 1248 	mov	r7,a
      002476 C3               [12] 1249 	clr	c
      002477 EE               [12] 1250 	mov	a,r6
      002478 94 04            [12] 1251 	subb	a,#0x04
      00247A EF               [12] 1252 	mov	a,r7
      00247B 64 80            [12] 1253 	xrl	a,#0x80
      00247D 94 80            [12] 1254 	subb	a,#0x80
      00247F 40 95            [24] 1255 	jc	00173$
                                   1256 ;	life.c:71: updategen();
      002481                       1257 00139$:
                                   1258 ;	life.c:73: for (x = 0; x < W; x++) {
      002481 90 8C 04         [24] 1259 	mov	dptr,#_x
      002484 E4               [12] 1260 	clr	a
      002485 F0               [24] 1261 	movx	@dptr,a
      002486 A3               [24] 1262 	inc	dptr
      002487 F0               [24] 1263 	movx	@dptr,a
      002488                       1264 00177$:
                                   1265 ;	life.c:74: for (y = 0; y < H; y++)
      002488 90 8C 06         [24] 1266 	mov	dptr,#_y
      00248B E4               [12] 1267 	clr	a
      00248C F0               [24] 1268 	movx	@dptr,a
      00248D A3               [24] 1269 	inc	dptr
      00248E F0               [24] 1270 	movx	@dptr,a
      00248F                       1271 00175$:
                                   1272 ;	life.c:75: if (u[y][x]) printf("\033[01m[]\033[m");
      00248F 90 8C 06         [24] 1273 	mov	dptr,#_y
      002492 E0               [24] 1274 	movx	a,@dptr
      002493 FE               [12] 1275 	mov	r6,a
      002494 A3               [24] 1276 	inc	dptr
      002495 E0               [24] 1277 	movx	a,@dptr
      002496 C4               [12] 1278 	swap	a
      002497 23               [12] 1279 	rl	a
      002498 54 E0            [12] 1280 	anl	a,#0xe0
      00249A CE               [12] 1281 	xch	a,r6
      00249B C4               [12] 1282 	swap	a
      00249C 23               [12] 1283 	rl	a
      00249D CE               [12] 1284 	xch	a,r6
      00249E 6E               [12] 1285 	xrl	a,r6
      00249F CE               [12] 1286 	xch	a,r6
      0024A0 54 E0            [12] 1287 	anl	a,#0xe0
      0024A2 CE               [12] 1288 	xch	a,r6
      0024A3 6E               [12] 1289 	xrl	a,r6
      0024A4 FF               [12] 1290 	mov	r7,a
      0024A5 EE               [12] 1291 	mov	a,r6
      0024A6 24 04            [12] 1292 	add	a,#_u
      0024A8 FE               [12] 1293 	mov	r6,a
      0024A9 EF               [12] 1294 	mov	a,r7
      0024AA 34 84            [12] 1295 	addc	a,#(_u >> 8)
      0024AC FF               [12] 1296 	mov	r7,a
      0024AD 90 8C 04         [24] 1297 	mov	dptr,#_x
      0024B0 E0               [24] 1298 	movx	a,@dptr
      0024B1 FC               [12] 1299 	mov	r4,a
      0024B2 A3               [24] 1300 	inc	dptr
      0024B3 E0               [24] 1301 	movx	a,@dptr
      0024B4 FD               [12] 1302 	mov	r5,a
      0024B5 EC               [12] 1303 	mov	a,r4
      0024B6 2E               [12] 1304 	add	a,r6
      0024B7 FE               [12] 1305 	mov	r6,a
      0024B8 ED               [12] 1306 	mov	a,r5
      0024B9 3F               [12] 1307 	addc	a,r7
      0024BA FF               [12] 1308 	mov	r7,a
      0024BB 8E 82            [24] 1309 	mov	dpl,r6
      0024BD 8F 83            [24] 1310 	mov	dph,r7
      0024BF E0               [24] 1311 	movx	a,@dptr
      0024C0 60 17            [24] 1312 	jz	00141$
      0024C2 74 95            [12] 1313 	mov	a,#___str_3
      0024C4 C0 E0            [24] 1314 	push	acc
      0024C6 74 3D            [12] 1315 	mov	a,#(___str_3 >> 8)
      0024C8 C0 E0            [24] 1316 	push	acc
      0024CA 74 80            [12] 1317 	mov	a,#0x80
      0024CC C0 E0            [24] 1318 	push	acc
      0024CE 12 29 B4         [24] 1319 	lcall	_printf
      0024D1 15 81            [12] 1320 	dec	sp
      0024D3 15 81            [12] 1321 	dec	sp
      0024D5 15 81            [12] 1322 	dec	sp
      0024D7 80 15            [24] 1323 	sjmp	00176$
      0024D9                       1324 00141$:
                                   1325 ;	life.c:76: else printf("--");
      0024D9 74 A0            [12] 1326 	mov	a,#___str_4
      0024DB C0 E0            [24] 1327 	push	acc
      0024DD 74 3D            [12] 1328 	mov	a,#(___str_4 >> 8)
      0024DF C0 E0            [24] 1329 	push	acc
      0024E1 74 80            [12] 1330 	mov	a,#0x80
      0024E3 C0 E0            [24] 1331 	push	acc
      0024E5 12 29 B4         [24] 1332 	lcall	_printf
      0024E8 15 81            [12] 1333 	dec	sp
      0024EA 15 81            [12] 1334 	dec	sp
      0024EC 15 81            [12] 1335 	dec	sp
      0024EE                       1336 00176$:
                                   1337 ;	life.c:74: for (y = 0; y < H; y++)
      0024EE 90 8C 06         [24] 1338 	mov	dptr,#_y
      0024F1 E0               [24] 1339 	movx	a,@dptr
      0024F2 24 01            [12] 1340 	add	a,#0x01
      0024F4 F0               [24] 1341 	movx	@dptr,a
      0024F5 A3               [24] 1342 	inc	dptr
      0024F6 E0               [24] 1343 	movx	a,@dptr
      0024F7 34 00            [12] 1344 	addc	a,#0x00
      0024F9 F0               [24] 1345 	movx	@dptr,a
      0024FA 90 8C 06         [24] 1346 	mov	dptr,#_y
      0024FD E0               [24] 1347 	movx	a,@dptr
      0024FE FE               [12] 1348 	mov	r6,a
      0024FF A3               [24] 1349 	inc	dptr
      002500 E0               [24] 1350 	movx	a,@dptr
      002501 FF               [12] 1351 	mov	r7,a
      002502 C3               [12] 1352 	clr	c
      002503 EE               [12] 1353 	mov	a,r6
      002504 94 20            [12] 1354 	subb	a,#0x20
      002506 EF               [12] 1355 	mov	a,r7
      002507 64 80            [12] 1356 	xrl	a,#0x80
      002509 94 80            [12] 1357 	subb	a,#0x80
      00250B 50 03            [24] 1358 	jnc	00411$
      00250D 02 24 8F         [24] 1359 	ljmp	00175$
      002510                       1360 00411$:
                                   1361 ;	life.c:77: printf("\r\n");
      002510 74 92            [12] 1362 	mov	a,#___str_2
      002512 C0 E0            [24] 1363 	push	acc
      002514 74 3D            [12] 1364 	mov	a,#(___str_2 >> 8)
      002516 C0 E0            [24] 1365 	push	acc
      002518 74 80            [12] 1366 	mov	a,#0x80
      00251A C0 E0            [24] 1367 	push	acc
      00251C 12 29 B4         [24] 1368 	lcall	_printf
      00251F 15 81            [12] 1369 	dec	sp
      002521 15 81            [12] 1370 	dec	sp
      002523 15 81            [12] 1371 	dec	sp
                                   1372 ;	life.c:73: for (x = 0; x < W; x++) {
      002525 90 8C 04         [24] 1373 	mov	dptr,#_x
      002528 E0               [24] 1374 	movx	a,@dptr
      002529 24 01            [12] 1375 	add	a,#0x01
      00252B F0               [24] 1376 	movx	@dptr,a
      00252C A3               [24] 1377 	inc	dptr
      00252D E0               [24] 1378 	movx	a,@dptr
      00252E 34 00            [12] 1379 	addc	a,#0x00
      002530 F0               [24] 1380 	movx	@dptr,a
      002531 90 8C 04         [24] 1381 	mov	dptr,#_x
      002534 E0               [24] 1382 	movx	a,@dptr
      002535 FE               [12] 1383 	mov	r6,a
      002536 A3               [24] 1384 	inc	dptr
      002537 E0               [24] 1385 	movx	a,@dptr
      002538 FF               [12] 1386 	mov	r7,a
      002539 C3               [12] 1387 	clr	c
      00253A EE               [12] 1388 	mov	a,r6
      00253B 94 20            [12] 1389 	subb	a,#0x20
      00253D EF               [12] 1390 	mov	a,r7
      00253E 64 80            [12] 1391 	xrl	a,#0x80
      002540 94 80            [12] 1392 	subb	a,#0x80
      002542 50 03            [24] 1393 	jnc	00412$
      002544 02 24 88         [24] 1394 	ljmp	00177$
      002547                       1395 00412$:
                                   1396 ;	life.c:122: fixed = 1;
      002547 90 8C 18         [24] 1397 	mov	dptr,#_fixed
      00254A 74 01            [12] 1398 	mov	a,#0x01
      00254C F0               [24] 1399 	movx	@dptr,a
      00254D E4               [12] 1400 	clr	a
      00254E A3               [24] 1401 	inc	dptr
      00254F F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	life.c:123: cycle2 = 1;
      002550 90 8C 1A         [24] 1404 	mov	dptr,#_cycle2
      002553 04               [12] 1405 	inc	a
      002554 F0               [24] 1406 	movx	@dptr,a
      002555 E4               [12] 1407 	clr	a
      002556 A3               [24] 1408 	inc	dptr
      002557 F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	life.c:125: for (y = 0; y < H; y++) {
      002558 90 8C 06         [24] 1411 	mov	dptr,#_y
      00255B F0               [24] 1412 	movx	@dptr,a
      00255C A3               [24] 1413 	inc	dptr
      00255D F0               [24] 1414 	movx	@dptr,a
      00255E                       1415 00187$:
                                   1416 ;	life.c:126: for (x = 0; x < W; x++) {
      00255E 90 8C 04         [24] 1417 	mov	dptr,#_x
      002561 E4               [12] 1418 	clr	a
      002562 F0               [24] 1419 	movx	@dptr,a
      002563 A3               [24] 1420 	inc	dptr
      002564 F0               [24] 1421 	movx	@dptr,a
      002565                       1422 00185$:
                                   1423 ;	life.c:127: n = 0;
      002565 90 8C 0C         [24] 1424 	mov	dptr,#_n
      002568 E4               [12] 1425 	clr	a
      002569 F0               [24] 1426 	movx	@dptr,a
      00256A A3               [24] 1427 	inc	dptr
      00256B F0               [24] 1428 	movx	@dptr,a
                                   1429 ;	life.c:128: for (y1 = y - 1; y1 <= y + 1; y1++)
      00256C 90 8C 06         [24] 1430 	mov	dptr,#_y
      00256F E0               [24] 1431 	movx	a,@dptr
      002570 FE               [12] 1432 	mov	r6,a
      002571 A3               [24] 1433 	inc	dptr
      002572 E0               [24] 1434 	movx	a,@dptr
      002573 FF               [12] 1435 	mov	r7,a
      002574 1E               [12] 1436 	dec	r6
      002575 BE FF 01         [24] 1437 	cjne	r6,#0xff,00413$
      002578 1F               [12] 1438 	dec	r7
      002579                       1439 00413$:
      002579 90 8C 0A         [24] 1440 	mov	dptr,#_y1
      00257C EE               [12] 1441 	mov	a,r6
      00257D F0               [24] 1442 	movx	@dptr,a
      00257E EF               [12] 1443 	mov	a,r7
      00257F A3               [24] 1444 	inc	dptr
      002580 F0               [24] 1445 	movx	@dptr,a
      002581                       1446 00183$:
      002581 90 8C 06         [24] 1447 	mov	dptr,#_y
      002584 E0               [24] 1448 	movx	a,@dptr
      002585 FE               [12] 1449 	mov	r6,a
      002586 A3               [24] 1450 	inc	dptr
      002587 E0               [24] 1451 	movx	a,@dptr
      002588 FF               [12] 1452 	mov	r7,a
      002589 74 01            [12] 1453 	mov	a,#0x01
      00258B 2E               [12] 1454 	add	a,r6
      00258C FC               [12] 1455 	mov	r4,a
      00258D E4               [12] 1456 	clr	a
      00258E 3F               [12] 1457 	addc	a,r7
      00258F FD               [12] 1458 	mov	r5,a
      002590 90 8C 0A         [24] 1459 	mov	dptr,#_y1
      002593 E0               [24] 1460 	movx	a,@dptr
      002594 FA               [12] 1461 	mov	r2,a
      002595 A3               [24] 1462 	inc	dptr
      002596 E0               [24] 1463 	movx	a,@dptr
      002597 FB               [12] 1464 	mov	r3,a
      002598 C3               [12] 1465 	clr	c
      002599 EC               [12] 1466 	mov	a,r4
      00259A 9A               [12] 1467 	subb	a,r2
      00259B ED               [12] 1468 	mov	a,r5
      00259C 64 80            [12] 1469 	xrl	a,#0x80
      00259E 8B F0            [24] 1470 	mov	b,r3
      0025A0 63 F0 80         [24] 1471 	xrl	b,#0x80
      0025A3 95 F0            [12] 1472 	subb	a,b
      0025A5 50 03            [24] 1473 	jnc	00414$
      0025A7 02 26 87         [24] 1474 	ljmp	00149$
      0025AA                       1475 00414$:
                                   1476 ;	life.c:129: for (x1 = x - 1; x1 <= x + 1; x1++)
      0025AA 90 8C 04         [24] 1477 	mov	dptr,#_x
      0025AD E0               [24] 1478 	movx	a,@dptr
      0025AE FC               [12] 1479 	mov	r4,a
      0025AF A3               [24] 1480 	inc	dptr
      0025B0 E0               [24] 1481 	movx	a,@dptr
      0025B1 FD               [12] 1482 	mov	r5,a
      0025B2 1C               [12] 1483 	dec	r4
      0025B3 BC FF 01         [24] 1484 	cjne	r4,#0xff,00415$
      0025B6 1D               [12] 1485 	dec	r5
      0025B7                       1486 00415$:
      0025B7 90 8C 08         [24] 1487 	mov	dptr,#_x1
      0025BA EC               [12] 1488 	mov	a,r4
      0025BB F0               [24] 1489 	movx	@dptr,a
      0025BC ED               [12] 1490 	mov	a,r5
      0025BD A3               [24] 1491 	inc	dptr
      0025BE F0               [24] 1492 	movx	@dptr,a
      0025BF                       1493 00180$:
      0025BF 90 8C 04         [24] 1494 	mov	dptr,#_x
      0025C2 E0               [24] 1495 	movx	a,@dptr
      0025C3 FC               [12] 1496 	mov	r4,a
      0025C4 A3               [24] 1497 	inc	dptr
      0025C5 E0               [24] 1498 	movx	a,@dptr
      0025C6 FD               [12] 1499 	mov	r5,a
      0025C7 0C               [12] 1500 	inc	r4
      0025C8 BC 00 01         [24] 1501 	cjne	r4,#0x00,00416$
      0025CB 0D               [12] 1502 	inc	r5
      0025CC                       1503 00416$:
      0025CC 90 8C 08         [24] 1504 	mov	dptr,#_x1
      0025CF E0               [24] 1505 	movx	a,@dptr
      0025D0 FA               [12] 1506 	mov	r2,a
      0025D1 A3               [24] 1507 	inc	dptr
      0025D2 E0               [24] 1508 	movx	a,@dptr
      0025D3 FB               [12] 1509 	mov	r3,a
      0025D4 C3               [12] 1510 	clr	c
      0025D5 EC               [12] 1511 	mov	a,r4
      0025D6 9A               [12] 1512 	subb	a,r2
      0025D7 ED               [12] 1513 	mov	a,r5
      0025D8 64 80            [12] 1514 	xrl	a,#0x80
      0025DA 8B F0            [24] 1515 	mov	b,r3
      0025DC 63 F0 80         [24] 1516 	xrl	b,#0x80
      0025DF 95 F0            [12] 1517 	subb	a,b
      0025E1 50 03            [24] 1518 	jnc	00417$
      0025E3 02 26 78         [24] 1519 	ljmp	00184$
      0025E6                       1520 00417$:
                                   1521 ;	life.c:130: if (u[(y1 + H) % H][(x1 + W) % W])
      0025E6 90 8C 0A         [24] 1522 	mov	dptr,#_y1
      0025E9 E0               [24] 1523 	movx	a,@dptr
      0025EA FC               [12] 1524 	mov	r4,a
      0025EB A3               [24] 1525 	inc	dptr
      0025EC E0               [24] 1526 	movx	a,@dptr
      0025ED FD               [12] 1527 	mov	r5,a
      0025EE 74 20            [12] 1528 	mov	a,#0x20
      0025F0 2C               [12] 1529 	add	a,r4
      0025F1 FC               [12] 1530 	mov	r4,a
      0025F2 E4               [12] 1531 	clr	a
      0025F3 3D               [12] 1532 	addc	a,r5
      0025F4 FD               [12] 1533 	mov	r5,a
      0025F5 C0 03            [24] 1534 	push	ar3
      0025F7 C0 02            [24] 1535 	push	ar2
      0025F9 74 20            [12] 1536 	mov	a,#0x20
      0025FB C0 E0            [24] 1537 	push	acc
      0025FD E4               [12] 1538 	clr	a
      0025FE C0 E0            [24] 1539 	push	acc
      002600 8C 82            [24] 1540 	mov	dpl,r4
      002602 8D 83            [24] 1541 	mov	dph,r5
      002604 12 29 ED         [24] 1542 	lcall	__modsint
      002607 AC 82            [24] 1543 	mov	r4,dpl
      002609 AD 83            [24] 1544 	mov	r5,dph
      00260B 15 81            [12] 1545 	dec	sp
      00260D 15 81            [12] 1546 	dec	sp
      00260F D0 02            [24] 1547 	pop	ar2
      002611 D0 03            [24] 1548 	pop	ar3
      002613 ED               [12] 1549 	mov	a,r5
      002614 C4               [12] 1550 	swap	a
      002615 23               [12] 1551 	rl	a
      002616 54 E0            [12] 1552 	anl	a,#0xe0
      002618 CC               [12] 1553 	xch	a,r4
      002619 C4               [12] 1554 	swap	a
      00261A 23               [12] 1555 	rl	a
      00261B CC               [12] 1556 	xch	a,r4
      00261C 6C               [12] 1557 	xrl	a,r4
      00261D CC               [12] 1558 	xch	a,r4
      00261E 54 E0            [12] 1559 	anl	a,#0xe0
      002620 CC               [12] 1560 	xch	a,r4
      002621 6C               [12] 1561 	xrl	a,r4
      002622 FD               [12] 1562 	mov	r5,a
      002623 EC               [12] 1563 	mov	a,r4
      002624 24 04            [12] 1564 	add	a,#_u
      002626 FC               [12] 1565 	mov	r4,a
      002627 ED               [12] 1566 	mov	a,r5
      002628 34 84            [12] 1567 	addc	a,#(_u >> 8)
      00262A FD               [12] 1568 	mov	r5,a
      00262B 74 20            [12] 1569 	mov	a,#0x20
      00262D 2A               [12] 1570 	add	a,r2
      00262E FA               [12] 1571 	mov	r2,a
      00262F E4               [12] 1572 	clr	a
      002630 3B               [12] 1573 	addc	a,r3
      002631 FB               [12] 1574 	mov	r3,a
      002632 C0 05            [24] 1575 	push	ar5
      002634 C0 04            [24] 1576 	push	ar4
      002636 74 20            [12] 1577 	mov	a,#0x20
      002638 C0 E0            [24] 1578 	push	acc
      00263A E4               [12] 1579 	clr	a
      00263B C0 E0            [24] 1580 	push	acc
      00263D 8A 82            [24] 1581 	mov	dpl,r2
      00263F 8B 83            [24] 1582 	mov	dph,r3
      002641 12 29 ED         [24] 1583 	lcall	__modsint
      002644 AA 82            [24] 1584 	mov	r2,dpl
      002646 AB 83            [24] 1585 	mov	r3,dph
      002648 15 81            [12] 1586 	dec	sp
      00264A 15 81            [12] 1587 	dec	sp
      00264C D0 04            [24] 1588 	pop	ar4
      00264E D0 05            [24] 1589 	pop	ar5
      002650 EA               [12] 1590 	mov	a,r2
      002651 2C               [12] 1591 	add	a,r4
      002652 FC               [12] 1592 	mov	r4,a
      002653 EB               [12] 1593 	mov	a,r3
      002654 3D               [12] 1594 	addc	a,r5
      002655 FD               [12] 1595 	mov	r5,a
      002656 8C 82            [24] 1596 	mov	dpl,r4
      002658 8D 83            [24] 1597 	mov	dph,r5
      00265A E0               [24] 1598 	movx	a,@dptr
      00265B 60 0C            [24] 1599 	jz	00181$
                                   1600 ;	life.c:131: n++;
      00265D 90 8C 0C         [24] 1601 	mov	dptr,#_n
      002660 E0               [24] 1602 	movx	a,@dptr
      002661 24 01            [12] 1603 	add	a,#0x01
      002663 F0               [24] 1604 	movx	@dptr,a
      002664 A3               [24] 1605 	inc	dptr
      002665 E0               [24] 1606 	movx	a,@dptr
      002666 34 00            [12] 1607 	addc	a,#0x00
      002668 F0               [24] 1608 	movx	@dptr,a
      002669                       1609 00181$:
                                   1610 ;	life.c:129: for (x1 = x - 1; x1 <= x + 1; x1++)
      002669 90 8C 08         [24] 1611 	mov	dptr,#_x1
      00266C E0               [24] 1612 	movx	a,@dptr
      00266D 24 01            [12] 1613 	add	a,#0x01
      00266F F0               [24] 1614 	movx	@dptr,a
      002670 A3               [24] 1615 	inc	dptr
      002671 E0               [24] 1616 	movx	a,@dptr
      002672 34 00            [12] 1617 	addc	a,#0x00
      002674 F0               [24] 1618 	movx	@dptr,a
      002675 02 25 BF         [24] 1619 	ljmp	00180$
      002678                       1620 00184$:
                                   1621 ;	life.c:128: for (y1 = y - 1; y1 <= y + 1; y1++)
      002678 90 8C 0A         [24] 1622 	mov	dptr,#_y1
      00267B E0               [24] 1623 	movx	a,@dptr
      00267C 24 01            [12] 1624 	add	a,#0x01
      00267E F0               [24] 1625 	movx	@dptr,a
      00267F A3               [24] 1626 	inc	dptr
      002680 E0               [24] 1627 	movx	a,@dptr
      002681 34 00            [12] 1628 	addc	a,#0x00
      002683 F0               [24] 1629 	movx	@dptr,a
      002684 02 25 81         [24] 1630 	ljmp	00183$
      002687                       1631 00149$:
                                   1632 ;	life.c:133: if (u[y][x]) n--;
      002687 EF               [12] 1633 	mov	a,r7
      002688 C4               [12] 1634 	swap	a
      002689 23               [12] 1635 	rl	a
      00268A 54 E0            [12] 1636 	anl	a,#0xe0
      00268C CE               [12] 1637 	xch	a,r6
      00268D C4               [12] 1638 	swap	a
      00268E 23               [12] 1639 	rl	a
      00268F CE               [12] 1640 	xch	a,r6
      002690 6E               [12] 1641 	xrl	a,r6
      002691 CE               [12] 1642 	xch	a,r6
      002692 54 E0            [12] 1643 	anl	a,#0xe0
      002694 CE               [12] 1644 	xch	a,r6
      002695 6E               [12] 1645 	xrl	a,r6
      002696 FF               [12] 1646 	mov	r7,a
      002697 EE               [12] 1647 	mov	a,r6
      002698 24 04            [12] 1648 	add	a,#_u
      00269A FE               [12] 1649 	mov	r6,a
      00269B EF               [12] 1650 	mov	a,r7
      00269C 34 84            [12] 1651 	addc	a,#(_u >> 8)
      00269E FF               [12] 1652 	mov	r7,a
      00269F 90 8C 04         [24] 1653 	mov	dptr,#_x
      0026A2 E0               [24] 1654 	movx	a,@dptr
      0026A3 FC               [12] 1655 	mov	r4,a
      0026A4 A3               [24] 1656 	inc	dptr
      0026A5 E0               [24] 1657 	movx	a,@dptr
      0026A6 FD               [12] 1658 	mov	r5,a
      0026A7 EC               [12] 1659 	mov	a,r4
      0026A8 2E               [12] 1660 	add	a,r6
      0026A9 FE               [12] 1661 	mov	r6,a
      0026AA ED               [12] 1662 	mov	a,r5
      0026AB 3F               [12] 1663 	addc	a,r7
      0026AC FF               [12] 1664 	mov	r7,a
      0026AD 8E 82            [24] 1665 	mov	dpl,r6
      0026AF 8F 83            [24] 1666 	mov	dph,r7
      0026B1 E0               [24] 1667 	movx	a,@dptr
      0026B2 60 14            [24] 1668 	jz	00151$
      0026B4 90 8C 0C         [24] 1669 	mov	dptr,#_n
      0026B7 E0               [24] 1670 	movx	a,@dptr
      0026B8 24 FF            [12] 1671 	add	a,#0xff
      0026BA FE               [12] 1672 	mov	r6,a
      0026BB A3               [24] 1673 	inc	dptr
      0026BC E0               [24] 1674 	movx	a,@dptr
      0026BD 34 FF            [12] 1675 	addc	a,#0xff
      0026BF FF               [12] 1676 	mov	r7,a
      0026C0 90 8C 0C         [24] 1677 	mov	dptr,#_n
      0026C3 EE               [12] 1678 	mov	a,r6
      0026C4 F0               [24] 1679 	movx	@dptr,a
      0026C5 EF               [12] 1680 	mov	a,r7
      0026C6 A3               [24] 1681 	inc	dptr
      0026C7 F0               [24] 1682 	movx	@dptr,a
      0026C8                       1683 00151$:
                                   1684 ;	life.c:134: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      0026C8 90 8C 06         [24] 1685 	mov	dptr,#_y
      0026CB E0               [24] 1686 	movx	a,@dptr
      0026CC FE               [12] 1687 	mov	r6,a
      0026CD A3               [24] 1688 	inc	dptr
      0026CE E0               [24] 1689 	movx	a,@dptr
      0026CF C4               [12] 1690 	swap	a
      0026D0 23               [12] 1691 	rl	a
      0026D1 54 E0            [12] 1692 	anl	a,#0xe0
      0026D3 CE               [12] 1693 	xch	a,r6
      0026D4 C4               [12] 1694 	swap	a
      0026D5 23               [12] 1695 	rl	a
      0026D6 CE               [12] 1696 	xch	a,r6
      0026D7 6E               [12] 1697 	xrl	a,r6
      0026D8 CE               [12] 1698 	xch	a,r6
      0026D9 54 E0            [12] 1699 	anl	a,#0xe0
      0026DB CE               [12] 1700 	xch	a,r6
      0026DC 6E               [12] 1701 	xrl	a,r6
      0026DD FF               [12] 1702 	mov	r7,a
      0026DE EE               [12] 1703 	mov	a,r6
      0026DF 24 04            [12] 1704 	add	a,#_nu
      0026E1 FC               [12] 1705 	mov	r4,a
      0026E2 EF               [12] 1706 	mov	a,r7
      0026E3 34 88            [12] 1707 	addc	a,#(_nu >> 8)
      0026E5 FD               [12] 1708 	mov	r5,a
      0026E6 90 8C 04         [24] 1709 	mov	dptr,#_x
      0026E9 E0               [24] 1710 	movx	a,@dptr
      0026EA FA               [12] 1711 	mov	r2,a
      0026EB A3               [24] 1712 	inc	dptr
      0026EC E0               [24] 1713 	movx	a,@dptr
      0026ED FB               [12] 1714 	mov	r3,a
      0026EE EA               [12] 1715 	mov	a,r2
      0026EF 2C               [12] 1716 	add	a,r4
      0026F0 FC               [12] 1717 	mov	r4,a
      0026F1 EB               [12] 1718 	mov	a,r3
      0026F2 3D               [12] 1719 	addc	a,r5
      0026F3 FD               [12] 1720 	mov	r5,a
      0026F4 90 8C 0C         [24] 1721 	mov	dptr,#_n
      0026F7 E0               [24] 1722 	movx	a,@dptr
      0026F8 F8               [12] 1723 	mov	r0,a
      0026F9 A3               [24] 1724 	inc	dptr
      0026FA E0               [24] 1725 	movx	a,@dptr
      0026FB F9               [12] 1726 	mov	r1,a
      0026FC B8 03 05         [24] 1727 	cjne	r0,#0x03,00420$
      0026FF B9 00 02         [24] 1728 	cjne	r1,#0x00,00420$
      002702 80 1F            [24] 1729 	sjmp	00202$
      002704                       1730 00420$:
      002704 B8 02 18         [24] 1731 	cjne	r0,#0x02,00201$
      002707 B9 00 15         [24] 1732 	cjne	r1,#0x00,00201$
      00270A EE               [12] 1733 	mov	a,r6
      00270B 24 04            [12] 1734 	add	a,#_u
      00270D FE               [12] 1735 	mov	r6,a
      00270E EF               [12] 1736 	mov	a,r7
      00270F 34 84            [12] 1737 	addc	a,#(_u >> 8)
      002711 FF               [12] 1738 	mov	r7,a
      002712 EA               [12] 1739 	mov	a,r2
      002713 2E               [12] 1740 	add	a,r6
      002714 FA               [12] 1741 	mov	r2,a
      002715 EB               [12] 1742 	mov	a,r3
      002716 3F               [12] 1743 	addc	a,r7
      002717 FB               [12] 1744 	mov	r3,a
      002718 8A 82            [24] 1745 	mov	dpl,r2
      00271A 8B 83            [24] 1746 	mov	dph,r3
      00271C E0               [24] 1747 	movx	a,@dptr
      00271D 70 04            [24] 1748 	jnz	00202$
      00271F                       1749 00201$:
                                   1750 ;	assignBit
      00271F C2 00            [12] 1751 	clr	b0
      002721 80 02            [24] 1752 	sjmp	00203$
      002723                       1753 00202$:
                                   1754 ;	assignBit
      002723 D2 00            [12] 1755 	setb	b0
      002725                       1756 00203$:
      002725 A2 00            [12] 1757 	mov	c,b0
      002727 E4               [12] 1758 	clr	a
      002728 33               [12] 1759 	rlc	a
      002729 8C 82            [24] 1760 	mov	dpl,r4
      00272B 8D 83            [24] 1761 	mov	dph,r5
      00272D F0               [24] 1762 	movx	@dptr,a
                                   1763 ;	life.c:126: for (x = 0; x < W; x++) {
      00272E 90 8C 04         [24] 1764 	mov	dptr,#_x
      002731 E0               [24] 1765 	movx	a,@dptr
      002732 24 01            [12] 1766 	add	a,#0x01
      002734 F0               [24] 1767 	movx	@dptr,a
      002735 A3               [24] 1768 	inc	dptr
      002736 E0               [24] 1769 	movx	a,@dptr
      002737 34 00            [12] 1770 	addc	a,#0x00
      002739 F0               [24] 1771 	movx	@dptr,a
      00273A 90 8C 04         [24] 1772 	mov	dptr,#_x
      00273D E0               [24] 1773 	movx	a,@dptr
      00273E FE               [12] 1774 	mov	r6,a
      00273F A3               [24] 1775 	inc	dptr
      002740 E0               [24] 1776 	movx	a,@dptr
      002741 FF               [12] 1777 	mov	r7,a
      002742 C3               [12] 1778 	clr	c
      002743 EE               [12] 1779 	mov	a,r6
      002744 94 20            [12] 1780 	subb	a,#0x20
      002746 EF               [12] 1781 	mov	a,r7
      002747 64 80            [12] 1782 	xrl	a,#0x80
      002749 94 80            [12] 1783 	subb	a,#0x80
      00274B 50 03            [24] 1784 	jnc	00424$
      00274D 02 25 65         [24] 1785 	ljmp	00185$
      002750                       1786 00424$:
                                   1787 ;	life.c:125: for (y = 0; y < H; y++) {
      002750 90 8C 06         [24] 1788 	mov	dptr,#_y
      002753 E0               [24] 1789 	movx	a,@dptr
      002754 24 01            [12] 1790 	add	a,#0x01
      002756 F0               [24] 1791 	movx	@dptr,a
      002757 A3               [24] 1792 	inc	dptr
      002758 E0               [24] 1793 	movx	a,@dptr
      002759 34 00            [12] 1794 	addc	a,#0x00
      00275B F0               [24] 1795 	movx	@dptr,a
      00275C 90 8C 06         [24] 1796 	mov	dptr,#_y
      00275F E0               [24] 1797 	movx	a,@dptr
      002760 FE               [12] 1798 	mov	r6,a
      002761 A3               [24] 1799 	inc	dptr
      002762 E0               [24] 1800 	movx	a,@dptr
      002763 FF               [12] 1801 	mov	r7,a
      002764 C3               [12] 1802 	clr	c
      002765 EE               [12] 1803 	mov	a,r6
      002766 94 20            [12] 1804 	subb	a,#0x20
      002768 EF               [12] 1805 	mov	a,r7
      002769 64 80            [12] 1806 	xrl	a,#0x80
      00276B 94 80            [12] 1807 	subb	a,#0x80
      00276D 50 03            [24] 1808 	jnc	00425$
      00276F 02 25 5E         [24] 1809 	ljmp	00187$
      002772                       1810 00425$:
                                   1811 ;	life.c:138: for (y = 0; y < H; y++)
      002772 90 8C 06         [24] 1812 	mov	dptr,#_y
      002775 E4               [12] 1813 	clr	a
      002776 F0               [24] 1814 	movx	@dptr,a
      002777 A3               [24] 1815 	inc	dptr
      002778 F0               [24] 1816 	movx	@dptr,a
      002779                       1817 00191$:
                                   1818 ;	life.c:139: for (x = 0; x < W; x++) {
      002779 90 8C 04         [24] 1819 	mov	dptr,#_x
      00277C E4               [12] 1820 	clr	a
      00277D F0               [24] 1821 	movx	@dptr,a
      00277E A3               [24] 1822 	inc	dptr
      00277F F0               [24] 1823 	movx	@dptr,a
      002780                       1824 00189$:
                                   1825 ;	life.c:140: if (pu[y][x] != nu[y][x]) cycle2 = 0;
      002780 90 8C 06         [24] 1826 	mov	dptr,#_y
      002783 E0               [24] 1827 	movx	a,@dptr
      002784 FE               [12] 1828 	mov	r6,a
      002785 A3               [24] 1829 	inc	dptr
      002786 E0               [24] 1830 	movx	a,@dptr
      002787 C4               [12] 1831 	swap	a
      002788 23               [12] 1832 	rl	a
      002789 54 E0            [12] 1833 	anl	a,#0xe0
      00278B CE               [12] 1834 	xch	a,r6
      00278C C4               [12] 1835 	swap	a
      00278D 23               [12] 1836 	rl	a
      00278E CE               [12] 1837 	xch	a,r6
      00278F 6E               [12] 1838 	xrl	a,r6
      002790 CE               [12] 1839 	xch	a,r6
      002791 54 E0            [12] 1840 	anl	a,#0xe0
      002793 CE               [12] 1841 	xch	a,r6
      002794 6E               [12] 1842 	xrl	a,r6
      002795 FF               [12] 1843 	mov	r7,a
      002796 EE               [12] 1844 	mov	a,r6
      002797 24 04            [12] 1845 	add	a,#_pu
      002799 FC               [12] 1846 	mov	r4,a
      00279A EF               [12] 1847 	mov	a,r7
      00279B 34 80            [12] 1848 	addc	a,#(_pu >> 8)
      00279D FD               [12] 1849 	mov	r5,a
      00279E 90 8C 04         [24] 1850 	mov	dptr,#_x
      0027A1 E0               [24] 1851 	movx	a,@dptr
      0027A2 FA               [12] 1852 	mov	r2,a
      0027A3 A3               [24] 1853 	inc	dptr
      0027A4 E0               [24] 1854 	movx	a,@dptr
      0027A5 FB               [12] 1855 	mov	r3,a
      0027A6 EA               [12] 1856 	mov	a,r2
      0027A7 2C               [12] 1857 	add	a,r4
      0027A8 F5 82            [12] 1858 	mov	dpl,a
      0027AA EB               [12] 1859 	mov	a,r3
      0027AB 3D               [12] 1860 	addc	a,r5
      0027AC F5 83            [12] 1861 	mov	dph,a
      0027AE EE               [12] 1862 	mov	a,r6
      0027AF 24 04            [12] 1863 	add	a,#_nu
      0027B1 FE               [12] 1864 	mov	r6,a
      0027B2 EF               [12] 1865 	mov	a,r7
      0027B3 34 88            [12] 1866 	addc	a,#(_nu >> 8)
      0027B5 FF               [12] 1867 	mov	r7,a
      0027B6 EA               [12] 1868 	mov	a,r2
      0027B7 2E               [12] 1869 	add	a,r6
      0027B8 FA               [12] 1870 	mov	r2,a
      0027B9 EB               [12] 1871 	mov	a,r3
      0027BA 3F               [12] 1872 	addc	a,r7
      0027BB FB               [12] 1873 	mov	r3,a
      0027BC E0               [24] 1874 	movx	a,@dptr
      0027BD FF               [12] 1875 	mov	r7,a
      0027BE 8A 82            [24] 1876 	mov	dpl,r2
      0027C0 8B 83            [24] 1877 	mov	dph,r3
      0027C2 E0               [24] 1878 	movx	a,@dptr
      0027C3 FA               [12] 1879 	mov	r2,a
      0027C4 EF               [12] 1880 	mov	a,r7
      0027C5 B5 02 02         [24] 1881 	cjne	a,ar2,00426$
      0027C8 80 07            [24] 1882 	sjmp	00155$
      0027CA                       1883 00426$:
      0027CA 90 8C 1A         [24] 1884 	mov	dptr,#_cycle2
      0027CD E4               [12] 1885 	clr	a
      0027CE F0               [24] 1886 	movx	@dptr,a
      0027CF A3               [24] 1887 	inc	dptr
      0027D0 F0               [24] 1888 	movx	@dptr,a
      0027D1                       1889 00155$:
                                   1890 ;	life.c:141: if (u[y][x] != nu[y][x]) fixed = 0;
      0027D1 90 8C 06         [24] 1891 	mov	dptr,#_y
      0027D4 E0               [24] 1892 	movx	a,@dptr
      0027D5 FE               [12] 1893 	mov	r6,a
      0027D6 A3               [24] 1894 	inc	dptr
      0027D7 E0               [24] 1895 	movx	a,@dptr
      0027D8 C4               [12] 1896 	swap	a
      0027D9 23               [12] 1897 	rl	a
      0027DA 54 E0            [12] 1898 	anl	a,#0xe0
      0027DC CE               [12] 1899 	xch	a,r6
      0027DD C4               [12] 1900 	swap	a
      0027DE 23               [12] 1901 	rl	a
      0027DF CE               [12] 1902 	xch	a,r6
      0027E0 6E               [12] 1903 	xrl	a,r6
      0027E1 CE               [12] 1904 	xch	a,r6
      0027E2 54 E0            [12] 1905 	anl	a,#0xe0
      0027E4 CE               [12] 1906 	xch	a,r6
      0027E5 6E               [12] 1907 	xrl	a,r6
      0027E6 FF               [12] 1908 	mov	r7,a
      0027E7 EE               [12] 1909 	mov	a,r6
      0027E8 24 04            [12] 1910 	add	a,#_u
      0027EA FC               [12] 1911 	mov	r4,a
      0027EB EF               [12] 1912 	mov	a,r7
      0027EC 34 84            [12] 1913 	addc	a,#(_u >> 8)
      0027EE FD               [12] 1914 	mov	r5,a
      0027EF 90 8C 04         [24] 1915 	mov	dptr,#_x
      0027F2 E0               [24] 1916 	movx	a,@dptr
      0027F3 FA               [12] 1917 	mov	r2,a
      0027F4 A3               [24] 1918 	inc	dptr
      0027F5 E0               [24] 1919 	movx	a,@dptr
      0027F6 FB               [12] 1920 	mov	r3,a
      0027F7 EA               [12] 1921 	mov	a,r2
      0027F8 2C               [12] 1922 	add	a,r4
      0027F9 F5 82            [12] 1923 	mov	dpl,a
      0027FB EB               [12] 1924 	mov	a,r3
      0027FC 3D               [12] 1925 	addc	a,r5
      0027FD F5 83            [12] 1926 	mov	dph,a
      0027FF EE               [12] 1927 	mov	a,r6
      002800 24 04            [12] 1928 	add	a,#_nu
      002802 FE               [12] 1929 	mov	r6,a
      002803 EF               [12] 1930 	mov	a,r7
      002804 34 88            [12] 1931 	addc	a,#(_nu >> 8)
      002806 FF               [12] 1932 	mov	r7,a
      002807 EA               [12] 1933 	mov	a,r2
      002808 2E               [12] 1934 	add	a,r6
      002809 FA               [12] 1935 	mov	r2,a
      00280A EB               [12] 1936 	mov	a,r3
      00280B 3F               [12] 1937 	addc	a,r7
      00280C FB               [12] 1938 	mov	r3,a
      00280D E0               [24] 1939 	movx	a,@dptr
      00280E FF               [12] 1940 	mov	r7,a
      00280F 8A 82            [24] 1941 	mov	dpl,r2
      002811 8B 83            [24] 1942 	mov	dph,r3
      002813 E0               [24] 1943 	movx	a,@dptr
      002814 FA               [12] 1944 	mov	r2,a
      002815 EF               [12] 1945 	mov	a,r7
      002816 B5 02 02         [24] 1946 	cjne	a,ar2,00427$
      002819 80 07            [24] 1947 	sjmp	00157$
      00281B                       1948 00427$:
      00281B 90 8C 18         [24] 1949 	mov	dptr,#_fixed
      00281E E4               [12] 1950 	clr	a
      00281F F0               [24] 1951 	movx	@dptr,a
      002820 A3               [24] 1952 	inc	dptr
      002821 F0               [24] 1953 	movx	@dptr,a
      002822                       1954 00157$:
                                   1955 ;	life.c:142: pu[y][x] = u[y][x];
      002822 90 8C 06         [24] 1956 	mov	dptr,#_y
      002825 E0               [24] 1957 	movx	a,@dptr
      002826 FE               [12] 1958 	mov	r6,a
      002827 A3               [24] 1959 	inc	dptr
      002828 E0               [24] 1960 	movx	a,@dptr
      002829 C4               [12] 1961 	swap	a
      00282A 23               [12] 1962 	rl	a
      00282B 54 E0            [12] 1963 	anl	a,#0xe0
      00282D CE               [12] 1964 	xch	a,r6
      00282E C4               [12] 1965 	swap	a
      00282F 23               [12] 1966 	rl	a
      002830 CE               [12] 1967 	xch	a,r6
      002831 6E               [12] 1968 	xrl	a,r6
      002832 CE               [12] 1969 	xch	a,r6
      002833 54 E0            [12] 1970 	anl	a,#0xe0
      002835 CE               [12] 1971 	xch	a,r6
      002836 6E               [12] 1972 	xrl	a,r6
      002837 FF               [12] 1973 	mov	r7,a
      002838 EE               [12] 1974 	mov	a,r6
      002839 24 04            [12] 1975 	add	a,#_pu
      00283B FC               [12] 1976 	mov	r4,a
      00283C EF               [12] 1977 	mov	a,r7
      00283D 34 80            [12] 1978 	addc	a,#(_pu >> 8)
      00283F FD               [12] 1979 	mov	r5,a
      002840 90 8C 04         [24] 1980 	mov	dptr,#_x
      002843 E0               [24] 1981 	movx	a,@dptr
      002844 FA               [12] 1982 	mov	r2,a
      002845 A3               [24] 1983 	inc	dptr
      002846 E0               [24] 1984 	movx	a,@dptr
      002847 FB               [12] 1985 	mov	r3,a
      002848 EA               [12] 1986 	mov	a,r2
      002849 2C               [12] 1987 	add	a,r4
      00284A FC               [12] 1988 	mov	r4,a
      00284B EB               [12] 1989 	mov	a,r3
      00284C 3D               [12] 1990 	addc	a,r5
      00284D FD               [12] 1991 	mov	r5,a
      00284E EE               [12] 1992 	mov	a,r6
      00284F 24 04            [12] 1993 	add	a,#_u
      002851 FE               [12] 1994 	mov	r6,a
      002852 EF               [12] 1995 	mov	a,r7
      002853 34 84            [12] 1996 	addc	a,#(_u >> 8)
      002855 FF               [12] 1997 	mov	r7,a
      002856 EA               [12] 1998 	mov	a,r2
      002857 2E               [12] 1999 	add	a,r6
      002858 F5 82            [12] 2000 	mov	dpl,a
      00285A EB               [12] 2001 	mov	a,r3
      00285B 3F               [12] 2002 	addc	a,r7
      00285C F5 83            [12] 2003 	mov	dph,a
      00285E E0               [24] 2004 	movx	a,@dptr
      00285F 8C 82            [24] 2005 	mov	dpl,r4
      002861 8D 83            [24] 2006 	mov	dph,r5
      002863 F0               [24] 2007 	movx	@dptr,a
                                   2008 ;	life.c:143: u[y][x] = nu[y][x];
      002864 90 8C 06         [24] 2009 	mov	dptr,#_y
      002867 E0               [24] 2010 	movx	a,@dptr
      002868 FE               [12] 2011 	mov	r6,a
      002869 A3               [24] 2012 	inc	dptr
      00286A E0               [24] 2013 	movx	a,@dptr
      00286B C4               [12] 2014 	swap	a
      00286C 23               [12] 2015 	rl	a
      00286D 54 E0            [12] 2016 	anl	a,#0xe0
      00286F CE               [12] 2017 	xch	a,r6
      002870 C4               [12] 2018 	swap	a
      002871 23               [12] 2019 	rl	a
      002872 CE               [12] 2020 	xch	a,r6
      002873 6E               [12] 2021 	xrl	a,r6
      002874 CE               [12] 2022 	xch	a,r6
      002875 54 E0            [12] 2023 	anl	a,#0xe0
      002877 CE               [12] 2024 	xch	a,r6
      002878 6E               [12] 2025 	xrl	a,r6
      002879 FF               [12] 2026 	mov	r7,a
      00287A EE               [12] 2027 	mov	a,r6
      00287B 24 04            [12] 2028 	add	a,#_u
      00287D FC               [12] 2029 	mov	r4,a
      00287E EF               [12] 2030 	mov	a,r7
      00287F 34 84            [12] 2031 	addc	a,#(_u >> 8)
      002881 FD               [12] 2032 	mov	r5,a
      002882 90 8C 04         [24] 2033 	mov	dptr,#_x
      002885 E0               [24] 2034 	movx	a,@dptr
      002886 FA               [12] 2035 	mov	r2,a
      002887 A3               [24] 2036 	inc	dptr
      002888 E0               [24] 2037 	movx	a,@dptr
      002889 FB               [12] 2038 	mov	r3,a
      00288A EA               [12] 2039 	mov	a,r2
      00288B 2C               [12] 2040 	add	a,r4
      00288C FC               [12] 2041 	mov	r4,a
      00288D EB               [12] 2042 	mov	a,r3
      00288E 3D               [12] 2043 	addc	a,r5
      00288F FD               [12] 2044 	mov	r5,a
      002890 EE               [12] 2045 	mov	a,r6
      002891 24 04            [12] 2046 	add	a,#_nu
      002893 FE               [12] 2047 	mov	r6,a
      002894 EF               [12] 2048 	mov	a,r7
      002895 34 88            [12] 2049 	addc	a,#(_nu >> 8)
      002897 FF               [12] 2050 	mov	r7,a
      002898 EA               [12] 2051 	mov	a,r2
      002899 2E               [12] 2052 	add	a,r6
      00289A F5 82            [12] 2053 	mov	dpl,a
      00289C EB               [12] 2054 	mov	a,r3
      00289D 3F               [12] 2055 	addc	a,r7
      00289E F5 83            [12] 2056 	mov	dph,a
      0028A0 E0               [24] 2057 	movx	a,@dptr
      0028A1 8C 82            [24] 2058 	mov	dpl,r4
      0028A3 8D 83            [24] 2059 	mov	dph,r5
      0028A5 F0               [24] 2060 	movx	@dptr,a
                                   2061 ;	life.c:139: for (x = 0; x < W; x++) {
      0028A6 90 8C 04         [24] 2062 	mov	dptr,#_x
      0028A9 E0               [24] 2063 	movx	a,@dptr
      0028AA 24 01            [12] 2064 	add	a,#0x01
      0028AC F0               [24] 2065 	movx	@dptr,a
      0028AD A3               [24] 2066 	inc	dptr
      0028AE E0               [24] 2067 	movx	a,@dptr
      0028AF 34 00            [12] 2068 	addc	a,#0x00
      0028B1 F0               [24] 2069 	movx	@dptr,a
      0028B2 90 8C 04         [24] 2070 	mov	dptr,#_x
      0028B5 E0               [24] 2071 	movx	a,@dptr
      0028B6 FE               [12] 2072 	mov	r6,a
      0028B7 A3               [24] 2073 	inc	dptr
      0028B8 E0               [24] 2074 	movx	a,@dptr
      0028B9 FF               [12] 2075 	mov	r7,a
      0028BA C3               [12] 2076 	clr	c
      0028BB EE               [12] 2077 	mov	a,r6
      0028BC 94 20            [12] 2078 	subb	a,#0x20
      0028BE EF               [12] 2079 	mov	a,r7
      0028BF 64 80            [12] 2080 	xrl	a,#0x80
      0028C1 94 80            [12] 2081 	subb	a,#0x80
      0028C3 50 03            [24] 2082 	jnc	00428$
      0028C5 02 27 80         [24] 2083 	ljmp	00189$
      0028C8                       2084 00428$:
                                   2085 ;	life.c:138: for (y = 0; y < H; y++)
      0028C8 90 8C 06         [24] 2086 	mov	dptr,#_y
      0028CB E0               [24] 2087 	movx	a,@dptr
      0028CC 24 01            [12] 2088 	add	a,#0x01
      0028CE F0               [24] 2089 	movx	@dptr,a
      0028CF A3               [24] 2090 	inc	dptr
      0028D0 E0               [24] 2091 	movx	a,@dptr
      0028D1 34 00            [12] 2092 	addc	a,#0x00
      0028D3 F0               [24] 2093 	movx	@dptr,a
      0028D4 90 8C 06         [24] 2094 	mov	dptr,#_y
      0028D7 E0               [24] 2095 	movx	a,@dptr
      0028D8 FE               [12] 2096 	mov	r6,a
      0028D9 A3               [24] 2097 	inc	dptr
      0028DA E0               [24] 2098 	movx	a,@dptr
      0028DB FF               [12] 2099 	mov	r7,a
      0028DC C3               [12] 2100 	clr	c
      0028DD EE               [12] 2101 	mov	a,r6
      0028DE 94 20            [12] 2102 	subb	a,#0x20
      0028E0 EF               [12] 2103 	mov	a,r7
      0028E1 64 80            [12] 2104 	xrl	a,#0x80
      0028E3 94 80            [12] 2105 	subb	a,#0x80
      0028E5 50 03            [24] 2106 	jnc	00429$
      0028E7 02 27 79         [24] 2107 	ljmp	00191$
      0028EA                       2108 00429$:
                                   2109 ;	life.c:174: if (fixed || cycle2) {
      0028EA 90 8C 18         [24] 2110 	mov	dptr,#_fixed
      0028ED E0               [24] 2111 	movx	a,@dptr
      0028EE F5 F0            [12] 2112 	mov	b,a
      0028F0 A3               [24] 2113 	inc	dptr
      0028F1 E0               [24] 2114 	movx	a,@dptr
      0028F2 45 F0            [12] 2115 	orl	a,b
      0028F4 70 0F            [24] 2116 	jnz	00101$
      0028F6 90 8C 1A         [24] 2117 	mov	dptr,#_cycle2
      0028F9 E0               [24] 2118 	movx	a,@dptr
      0028FA F5 F0            [12] 2119 	mov	b,a
      0028FC A3               [24] 2120 	inc	dptr
      0028FD E0               [24] 2121 	movx	a,@dptr
      0028FE 45 F0            [12] 2122 	orl	a,b
      002900 70 03            [24] 2123 	jnz	00431$
      002902 02 23 45         [24] 2124 	ljmp	00195$
      002905                       2125 00431$:
      002905                       2126 00101$:
                                   2127 ;	life.c:175: printf("DONE\r\n");
      002905 74 C4            [12] 2128 	mov	a,#___str_9
      002907 C0 E0            [24] 2129 	push	acc
      002909 74 3D            [12] 2130 	mov	a,#(___str_9 >> 8)
      00290B C0 E0            [24] 2131 	push	acc
      00290D 74 80            [12] 2132 	mov	a,#0x80
      00290F C0 E0            [24] 2133 	push	acc
      002911 12 29 B4         [24] 2134 	lcall	_printf
      002914 15 81            [12] 2135 	dec	sp
      002916 15 81            [12] 2136 	dec	sp
      002918 15 81            [12] 2137 	dec	sp
                                   2138 ;	life.c:176: (void)getchar();
      00291A 12 20 7A         [24] 2139 	lcall	_getchar
                                   2140 ;	life.c:177: break;
      00291D                       2141 00104$:
                                   2142 ;	life.c:181: if (i1) {
      00291D 90 80 02         [24] 2143 	mov	dptr,#_i1
      002920 E0               [24] 2144 	movx	a,@dptr
      002921 F5 F0            [12] 2145 	mov	b,a
      002923 A3               [24] 2146 	inc	dptr
      002924 E0               [24] 2147 	movx	a,@dptr
      002925 45 F0            [12] 2148 	orl	a,b
      002927 60 18            [24] 2149 	jz	00198$
                                   2150 ;	life.c:182: printf("BREAK\r\n");
      002929 74 CB            [12] 2151 	mov	a,#___str_10
      00292B C0 E0            [24] 2152 	push	acc
      00292D 74 3D            [12] 2153 	mov	a,#(___str_10 >> 8)
      00292F C0 E0            [24] 2154 	push	acc
      002931 74 80            [12] 2155 	mov	a,#0x80
      002933 C0 E0            [24] 2156 	push	acc
      002935 12 29 B4         [24] 2157 	lcall	_printf
      002938 15 81            [12] 2158 	dec	sp
      00293A 15 81            [12] 2159 	dec	sp
      00293C 15 81            [12] 2160 	dec	sp
                                   2161 ;	life.c:183: (void)getchar();
      00293E 12 20 7A         [24] 2162 	lcall	_getchar
      002941                       2163 00198$:
                                   2164 ;	life.c:156: for (i0 = 0; !i0; ) {
      002941 90 80 00         [24] 2165 	mov	dptr,#_i0
      002944 E0               [24] 2166 	movx	a,@dptr
      002945 F5 F0            [12] 2167 	mov	b,a
      002947 A3               [24] 2168 	inc	dptr
      002948 E0               [24] 2169 	movx	a,@dptr
      002949 45 F0            [12] 2170 	orl	a,b
      00294B 70 03            [24] 2171 	jnz	00433$
      00294D 02 20 C6         [24] 2172 	ljmp	00197$
      002950                       2173 00433$:
                                   2174 ;	life.c:187: EA = 0;
                                   2175 ;	assignBit
      002950 C2 AF            [12] 2176 	clr	_EA
                                   2177 ;	life.c:189: printf("TERM\r\n");
      002952 74 D3            [12] 2178 	mov	a,#___str_11
      002954 C0 E0            [24] 2179 	push	acc
      002956 74 3D            [12] 2180 	mov	a,#(___str_11 >> 8)
      002958 C0 E0            [24] 2181 	push	acc
      00295A 74 80            [12] 2182 	mov	a,#0x80
      00295C C0 E0            [24] 2183 	push	acc
      00295E 12 29 B4         [24] 2184 	lcall	_printf
      002961 15 81            [12] 2185 	dec	sp
      002963 15 81            [12] 2186 	dec	sp
      002965 15 81            [12] 2187 	dec	sp
                                   2188 ;	life.c:190: (void)getchar();
      002967 12 20 7A         [24] 2189 	lcall	_getchar
                                   2190 ;	life.c:194: __endasm;
      00296A 02 00 00         [24] 2191 	ljmp	0
                                   2192 ;	life.c:195: }
      00296D 22               [24] 2193 	ret
                                   2194 	.area CSEG    (CODE)
                                   2195 	.area CONST   (CODE)
                                   2196 	.area CONST   (CODE)
      003D85                       2197 ___str_0:
      003D85 25 30 34 78           2198 	.ascii "%04x"
      003D89 00                    2199 	.db 0x00
                                   2200 	.area CSEG    (CODE)
                                   2201 	.area CONST   (CODE)
      003D8A                       2202 ___str_1:
      003D8A 1B                    2203 	.db 0x1b
      003D8B 5B 32 4A              2204 	.ascii "[2J"
      003D8E 1B                    2205 	.db 0x1b
      003D8F 5B 6D                 2206 	.ascii "[m"
      003D91 00                    2207 	.db 0x00
                                   2208 	.area CSEG    (CODE)
                                   2209 	.area CONST   (CODE)
      003D92                       2210 ___str_2:
      003D92 0D                    2211 	.db 0x0d
      003D93 0A                    2212 	.db 0x0a
      003D94 00                    2213 	.db 0x00
                                   2214 	.area CSEG    (CODE)
                                   2215 	.area CONST   (CODE)
      003D95                       2216 ___str_3:
      003D95 1B                    2217 	.db 0x1b
      003D96 5B 30 31 6D 5B 5D     2218 	.ascii "[01m[]"
      003D9C 1B                    2219 	.db 0x1b
      003D9D 5B 6D                 2220 	.ascii "[m"
      003D9F 00                    2221 	.db 0x00
                                   2222 	.area CSEG    (CODE)
                                   2223 	.area CONST   (CODE)
      003DA0                       2224 ___str_4:
      003DA0 2D 2D                 2225 	.ascii "--"
      003DA2 00                    2226 	.db 0x00
                                   2227 	.area CSEG    (CODE)
                                   2228 	.area CONST   (CODE)
      003DA3                       2229 ___str_5:
      003DA3 25 64 3E              2230 	.ascii "%d>"
      003DA6 0D                    2231 	.db 0x0d
      003DA7 0A                    2232 	.db 0x0a
      003DA8 00                    2233 	.db 0x00
                                   2234 	.area CSEG    (CODE)
                                   2235 	.area CONST   (CODE)
      003DA9                       2236 ___str_6:
      003DA9 1B                    2237 	.db 0x1b
      003DAA 5B 32 4A              2238 	.ascii "[2J"
      003DAD 1B                    2239 	.db 0x1b
      003DAE 5B 6D 49 4E 49 54     2240 	.ascii "[mINIT"
      003DB4 0D                    2241 	.db 0x0d
      003DB5 0A                    2242 	.db 0x0a
      003DB6 00                    2243 	.db 0x00
                                   2244 	.area CSEG    (CODE)
                                   2245 	.area CONST   (CODE)
      003DB7                       2246 ___str_7:
      003DB7 4C 4F 41 44           2247 	.ascii "LOAD"
      003DBB 0D                    2248 	.db 0x0d
      003DBC 0A                    2249 	.db 0x0a
      003DBD 00                    2250 	.db 0x00
                                   2251 	.area CSEG    (CODE)
                                   2252 	.area CONST   (CODE)
      003DBE                       2253 ___str_8:
      003DBE 52 44 59              2254 	.ascii "RDY"
      003DC1 0D                    2255 	.db 0x0d
      003DC2 0A                    2256 	.db 0x0a
      003DC3 00                    2257 	.db 0x00
                                   2258 	.area CSEG    (CODE)
                                   2259 	.area CONST   (CODE)
      003DC4                       2260 ___str_9:
      003DC4 44 4F 4E 45           2261 	.ascii "DONE"
      003DC8 0D                    2262 	.db 0x0d
      003DC9 0A                    2263 	.db 0x0a
      003DCA 00                    2264 	.db 0x00
                                   2265 	.area CSEG    (CODE)
                                   2266 	.area CONST   (CODE)
      003DCB                       2267 ___str_10:
      003DCB 42 52 45 41 4B        2268 	.ascii "BREAK"
      003DD0 0D                    2269 	.db 0x0d
      003DD1 0A                    2270 	.db 0x0a
      003DD2 00                    2271 	.db 0x00
                                   2272 	.area CSEG    (CODE)
                                   2273 	.area CONST   (CODE)
      003DD3                       2274 ___str_11:
      003DD3 54 45 52 4D           2275 	.ascii "TERM"
      003DD7 0D                    2276 	.db 0x0d
      003DD8 0A                    2277 	.db 0x0a
      003DD9 00                    2278 	.db 0x00
                                   2279 	.area CSEG    (CODE)
                                   2280 	.area XINIT   (CODE)
                                   2281 	.area CABS    (ABS,CODE)
