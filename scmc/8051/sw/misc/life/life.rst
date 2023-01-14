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
                                     14 	.globl _getchar
                                     15 	.globl _putchar
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _FL
                                     23 	.globl _P
                                     24 	.globl _TF2
                                     25 	.globl _EXF2
                                     26 	.globl _RCLK
                                     27 	.globl _TCLK
                                     28 	.globl _EXEN2
                                     29 	.globl _TR2
                                     30 	.globl _C_T2
                                     31 	.globl _CP_RL2
                                     32 	.globl _T2CON_7
                                     33 	.globl _T2CON_6
                                     34 	.globl _T2CON_5
                                     35 	.globl _T2CON_4
                                     36 	.globl _T2CON_3
                                     37 	.globl _T2CON_2
                                     38 	.globl _T2CON_1
                                     39 	.globl _T2CON_0
                                     40 	.globl _PT2
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ET2
                                     64 	.globl _ES
                                     65 	.globl _ET1
                                     66 	.globl _EX1
                                     67 	.globl _ET0
                                     68 	.globl _EX0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _T2EX
                                     86 	.globl _T2
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _B
                                    112 	.globl _A
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _TH2
                                    116 	.globl _TL2
                                    117 	.globl _RCAP2H
                                    118 	.globl _RCAP2L
                                    119 	.globl _T2MOD
                                    120 	.globl _T2CON
                                    121 	.globl _IP
                                    122 	.globl _P3
                                    123 	.globl _IE
                                    124 	.globl _P2
                                    125 	.globl _SBUF
                                    126 	.globl _SCON
                                    127 	.globl _P1
                                    128 	.globl _TH1
                                    129 	.globl _TH0
                                    130 	.globl _TL1
                                    131 	.globl _TL0
                                    132 	.globl _TMOD
                                    133 	.globl _TCON
                                    134 	.globl _PCON
                                    135 	.globl _DPH
                                    136 	.globl _DPL
                                    137 	.globl _SP
                                    138 	.globl _P0
                                    139 	.globl _c
                                    140 	.globl _j
                                    141 	.globl _cycle2
                                    142 	.globl _fixed
                                    143 	.globl _generation
                                    144 	.globl _n
                                    145 	.globl _y1
                                    146 	.globl _x1
                                    147 	.globl _y
                                    148 	.globl _x
                                    149 	.globl _nu
                                    150 	.globl _u
                                    151 	.globl _pu
                                    152 	.globl _i1
                                    153 	.globl _i0
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
      008000                        344 	.ds 1
      008001                        345 _i1::
      008001                        346 	.ds 1
      008002                        347 _pu::
      008002                        348 	.ds 1024
      008402                        349 _u::
      008402                        350 	.ds 1024
      008802                        351 _nu::
      008802                        352 	.ds 1024
      008C02                        353 _x::
      008C02                        354 	.ds 2
      008C04                        355 _y::
      008C04                        356 	.ds 2
      008C06                        357 _x1::
      008C06                        358 	.ds 2
      008C08                        359 _y1::
      008C08                        360 	.ds 2
      008C0A                        361 _n::
      008C0A                        362 	.ds 1
      008C0B                        363 _generation::
      008C0B                        364 	.ds 8
      008C13                        365 _fixed::
      008C13                        366 	.ds 1
      008C14                        367 _cycle2::
      008C14                        368 	.ds 1
      008C15                        369 _j::
      008C15                        370 	.ds 2
      008C17                        371 _c::
      008C17                        372 	.ds 2
                                    373 ;--------------------------------------------------------
                                    374 ; absolute external ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XABS    (ABS,XDATA)
                                    377 ;--------------------------------------------------------
                                    378 ; external initialized ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area XISEG   (XDATA)
                                    381 	.area HOME    (CODE)
                                    382 	.area GSINIT0 (CODE)
                                    383 	.area GSINIT1 (CODE)
                                    384 	.area GSINIT2 (CODE)
                                    385 	.area GSINIT3 (CODE)
                                    386 	.area GSINIT4 (CODE)
                                    387 	.area GSINIT5 (CODE)
                                    388 	.area GSINIT  (CODE)
                                    389 	.area GSFINAL (CODE)
                                    390 	.area CSEG    (CODE)
                                    391 ;--------------------------------------------------------
                                    392 ; interrupt vector 
                                    393 ;--------------------------------------------------------
                                    394 	.area HOME    (CODE)
      002000                        395 __interrupt_vect:
      002000 02 20 19         [24]  396 	ljmp	__sdcc_gsinit_startup
      002003 02 20 83         [24]  397 	ljmp	_int0
      002006                        398 	.ds	5
      00200B 32               [24]  399 	reti
      00200C                        400 	.ds	7
      002013 02 20 96         [24]  401 	ljmp	_int1
                                    402 ;--------------------------------------------------------
                                    403 ; global & static initialisations
                                    404 ;--------------------------------------------------------
                                    405 	.area HOME    (CODE)
                                    406 	.area GSINIT  (CODE)
                                    407 	.area GSFINAL (CODE)
                                    408 	.area GSINIT  (CODE)
                                    409 	.globl __sdcc_gsinit_startup
                                    410 	.globl __sdcc_program_startup
                                    411 	.globl __start__stack
                                    412 	.globl __mcs51_genXINIT
                                    413 	.globl __mcs51_genXRAMCLEAR
                                    414 	.globl __mcs51_genRAMCLEAR
                                    415 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  416 	ljmp	__sdcc_program_startup
                                    417 ;--------------------------------------------------------
                                    418 ; Home
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area HOME    (CODE)
      002016                        422 __sdcc_program_startup:
      002016 02 20 A9         [24]  423 	ljmp	_main
                                    424 ;	return from main will return to caller
                                    425 ;--------------------------------------------------------
                                    426 ; code
                                    427 ;--------------------------------------------------------
                                    428 	.area CSEG    (CODE)
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'putchar'
                                    431 ;------------------------------------------------------------
                                    432 ;c                         Allocated to registers 
                                    433 ;------------------------------------------------------------
                                    434 ;	life.c:6: int putchar(int c) __naked {
                                    435 ;	-----------------------------------------
                                    436 ;	 function putchar
                                    437 ;	-----------------------------------------
      002075                        438 _putchar:
                                    439 ;	naked function: no prologue.
                                    440 ;	life.c:11: __endasm;
      002075 E5 82            [12]  441 	mov	a, dpl
      002077 02 00 30         [24]  442 	ljmp	0x0030
                                    443 ;	life.c:12: }
                                    444 ;	naked function: no epilogue.
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'getchar'
                                    447 ;------------------------------------------------------------
                                    448 ;	life.c:14: int getchar(void) __naked {
                                    449 ;	-----------------------------------------
                                    450 ;	 function getchar
                                    451 ;	-----------------------------------------
      00207A                        452 _getchar:
                                    453 ;	naked function: no prologue.
                                    454 ;	life.c:20: __endasm;
      00207A 12 00 32         [24]  455 	lcall	0x0032
      00207D F5 82            [12]  456 	mov	dpl, a
      00207F 75 83 00         [24]  457 	mov	dph, #0
      002082 22               [24]  458 	ret
                                    459 ;	life.c:21: }
                                    460 ;	naked function: no epilogue.
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'int0'
                                    463 ;------------------------------------------------------------
                                    464 ;	life.c:63: void int0(void) __interrupt 0 __using 1 {
                                    465 ;	-----------------------------------------
                                    466 ;	 function int0
                                    467 ;	-----------------------------------------
      002083                        468 _int0:
                           00000F   469 	ar7 = 0x0f
                           00000E   470 	ar6 = 0x0e
                           00000D   471 	ar5 = 0x0d
                           00000C   472 	ar4 = 0x0c
                           00000B   473 	ar3 = 0x0b
                           00000A   474 	ar2 = 0x0a
                           000009   475 	ar1 = 0x09
                           000008   476 	ar0 = 0x08
      002083 C0 E0            [24]  477 	push	acc
      002085 C0 82            [24]  478 	push	dpl
      002087 C0 83            [24]  479 	push	dph
                                    480 ;	life.c:64: i0 = 1;
      002089 90 80 00         [24]  481 	mov	dptr,#_i0
      00208C 74 01            [12]  482 	mov	a,#0x01
      00208E F0               [24]  483 	movx	@dptr,a
                                    484 ;	life.c:65: }
      00208F D0 83            [24]  485 	pop	dph
      002091 D0 82            [24]  486 	pop	dpl
      002093 D0 E0            [24]  487 	pop	acc
      002095 32               [24]  488 	reti
                                    489 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    490 ;	eliminated unneeded push/pop psw
                                    491 ;	eliminated unneeded push/pop b
                                    492 ;------------------------------------------------------------
                                    493 ;Allocation info for local variables in function 'int1'
                                    494 ;------------------------------------------------------------
                                    495 ;	life.c:68: void int1(void) __interrupt 2 __using 1 {
                                    496 ;	-----------------------------------------
                                    497 ;	 function int1
                                    498 ;	-----------------------------------------
      002096                        499 _int1:
      002096 C0 E0            [24]  500 	push	acc
      002098 C0 82            [24]  501 	push	dpl
      00209A C0 83            [24]  502 	push	dph
                                    503 ;	life.c:69: i1 = 1;
      00209C 90 80 01         [24]  504 	mov	dptr,#_i1
      00209F 74 01            [12]  505 	mov	a,#0x01
      0020A1 F0               [24]  506 	movx	@dptr,a
                                    507 ;	life.c:70: }
      0020A2 D0 83            [24]  508 	pop	dph
      0020A4 D0 82            [24]  509 	pop	dpl
      0020A6 D0 E0            [24]  510 	pop	acc
      0020A8 32               [24]  511 	reti
                                    512 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    513 ;	eliminated unneeded push/pop psw
                                    514 ;	eliminated unneeded push/pop b
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'main'
                                    517 ;------------------------------------------------------------
                                    518 ;__2621440020              Allocated to registers 
                                    519 ;s                         Allocated to registers r5 r6 r7 
                                    520 ;__2621440022              Allocated to registers 
                                    521 ;s                         Allocated to registers r5 r6 r7 
                                    522 ;__1310720015              Allocated to registers r6 r7 
                                    523 ;a                         Allocated to registers r4 r5 
                                    524 ;__1310720017              Allocated to registers 
                                    525 ;s                         Allocated to registers r5 r6 r7 
                                    526 ;__2621440025              Allocated to registers 
                                    527 ;s                         Allocated to registers r5 r6 r7 
                                    528 ;__1310720003              Allocated to registers 
                                    529 ;s                         Allocated to registers r5 r6 r7 
                                    530 ;__2621440001              Allocated to registers r6 r7 
                                    531 ;a                         Allocated to registers r4 r5 
                                    532 ;__1310720006              Allocated to registers 
                                    533 ;s                         Allocated to registers r5 r6 r7 
                                    534 ;__3276800009              Allocated to registers 
                                    535 ;s                         Allocated to registers r5 r6 r7 
                                    536 ;__3276800011              Allocated to registers 
                                    537 ;s                         Allocated to registers r5 r6 r7 
                                    538 ;__2621440013              Allocated to registers 
                                    539 ;s                         Allocated to registers r5 r6 r7 
                                    540 ;__4587520030              Allocated to registers 
                                    541 ;s                         Allocated to registers r5 r6 r7 
                                    542 ;__3276800032              Allocated to registers 
                                    543 ;s                         Allocated to registers r5 r6 r7 
                                    544 ;__1310720034              Allocated to registers 
                                    545 ;s                         Allocated to registers r5 r6 r7 
                                    546 ;sloc0                     Allocated to stack - _bp +1
                                    547 ;------------------------------------------------------------
                                    548 ;	life.c:180: void main(void) {
                                    549 ;	-----------------------------------------
                                    550 ;	 function main
                                    551 ;	-----------------------------------------
      0020A9                        552 _main:
                           000007   553 	ar7 = 0x07
                           000006   554 	ar6 = 0x06
                           000005   555 	ar5 = 0x05
                           000004   556 	ar4 = 0x04
                           000003   557 	ar3 = 0x03
                           000002   558 	ar2 = 0x02
                           000001   559 	ar1 = 0x01
                           000000   560 	ar0 = 0x00
      0020A9 C0 10            [24]  561 	push	_bp
      0020AB 85 81 10         [24]  562 	mov	_bp,sp
      0020AE 05 81            [12]  563 	inc	sp
                                    564 ;	life.c:181: IT0 = 1;
                                    565 ;	assignBit
      0020B0 D2 88            [12]  566 	setb	_IT0
                                    567 ;	life.c:182: IT1 = 1;
                                    568 ;	assignBit
      0020B2 D2 8A            [12]  569 	setb	_IT1
                                    570 ;	life.c:183: EX0 = 1;
                                    571 ;	assignBit
      0020B4 D2 A8            [12]  572 	setb	_EX0
                                    573 ;	life.c:184: EX1 = 1;
                                    574 ;	assignBit
      0020B6 D2 AA            [12]  575 	setb	_EX1
                                    576 ;	life.c:185: EA = 1;
                                    577 ;	assignBit
      0020B8 D2 AF            [12]  578 	setb	_EA
                                    579 ;	life.c:187: for (i0 = 0; !i0; ) {
      0020BA 90 80 00         [24]  580 	mov	dptr,#_i0
      0020BD E4               [12]  581 	clr	a
      0020BE F0               [24]  582 	movx	@dptr,a
      0020BF 90 80 01         [24]  583 	mov	dptr,#_i1
      0020C2 F0               [24]  584 	movx	@dptr,a
      0020C3                        585 00256$:
                                    586 ;	life.c:114: for (y = 0; y < H; y++)
      0020C3 90 8C 04         [24]  587 	mov	dptr,#_y
      0020C6 E4               [12]  588 	clr	a
      0020C7 F0               [24]  589 	movx	@dptr,a
      0020C8 A3               [24]  590 	inc	dptr
      0020C9 F0               [24]  591 	movx	@dptr,a
      0020CA                        592 00189$:
                                    593 ;	life.c:115: for (x = 0; x < W; x++) {
      0020CA 90 8C 02         [24]  594 	mov	dptr,#_x
      0020CD E4               [12]  595 	clr	a
      0020CE F0               [24]  596 	movx	@dptr,a
      0020CF A3               [24]  597 	inc	dptr
      0020D0 F0               [24]  598 	movx	@dptr,a
      0020D1                        599 00187$:
                                    600 ;	life.c:116: u[y][x] = 0;
      0020D1 90 8C 04         [24]  601 	mov	dptr,#_y
      0020D4 E0               [24]  602 	movx	a,@dptr
      0020D5 FE               [12]  603 	mov	r6,a
      0020D6 A3               [24]  604 	inc	dptr
      0020D7 E0               [24]  605 	movx	a,@dptr
      0020D8 C4               [12]  606 	swap	a
      0020D9 23               [12]  607 	rl	a
      0020DA 54 E0            [12]  608 	anl	a,#0xe0
      0020DC CE               [12]  609 	xch	a,r6
      0020DD C4               [12]  610 	swap	a
      0020DE 23               [12]  611 	rl	a
      0020DF CE               [12]  612 	xch	a,r6
      0020E0 6E               [12]  613 	xrl	a,r6
      0020E1 CE               [12]  614 	xch	a,r6
      0020E2 54 E0            [12]  615 	anl	a,#0xe0
      0020E4 CE               [12]  616 	xch	a,r6
      0020E5 6E               [12]  617 	xrl	a,r6
      0020E6 FF               [12]  618 	mov	r7,a
      0020E7 EE               [12]  619 	mov	a,r6
      0020E8 24 02            [12]  620 	add	a,#_u
      0020EA FE               [12]  621 	mov	r6,a
      0020EB EF               [12]  622 	mov	a,r7
      0020EC 34 84            [12]  623 	addc	a,#(_u >> 8)
      0020EE FF               [12]  624 	mov	r7,a
      0020EF 90 8C 02         [24]  625 	mov	dptr,#_x
      0020F2 E0               [24]  626 	movx	a,@dptr
      0020F3 FC               [12]  627 	mov	r4,a
      0020F4 A3               [24]  628 	inc	dptr
      0020F5 E0               [24]  629 	movx	a,@dptr
      0020F6 FD               [12]  630 	mov	r5,a
      0020F7 EC               [12]  631 	mov	a,r4
      0020F8 2E               [12]  632 	add	a,r6
      0020F9 F5 82            [12]  633 	mov	dpl,a
      0020FB ED               [12]  634 	mov	a,r5
      0020FC 3F               [12]  635 	addc	a,r7
      0020FD F5 83            [12]  636 	mov	dph,a
      0020FF E4               [12]  637 	clr	a
      002100 F0               [24]  638 	movx	@dptr,a
                                    639 ;	life.c:117: pu[y][x] = 0;
      002101 90 8C 04         [24]  640 	mov	dptr,#_y
      002104 E0               [24]  641 	movx	a,@dptr
      002105 FE               [12]  642 	mov	r6,a
      002106 A3               [24]  643 	inc	dptr
      002107 E0               [24]  644 	movx	a,@dptr
      002108 C4               [12]  645 	swap	a
      002109 23               [12]  646 	rl	a
      00210A 54 E0            [12]  647 	anl	a,#0xe0
      00210C CE               [12]  648 	xch	a,r6
      00210D C4               [12]  649 	swap	a
      00210E 23               [12]  650 	rl	a
      00210F CE               [12]  651 	xch	a,r6
      002110 6E               [12]  652 	xrl	a,r6
      002111 CE               [12]  653 	xch	a,r6
      002112 54 E0            [12]  654 	anl	a,#0xe0
      002114 CE               [12]  655 	xch	a,r6
      002115 6E               [12]  656 	xrl	a,r6
      002116 FF               [12]  657 	mov	r7,a
      002117 EE               [12]  658 	mov	a,r6
      002118 24 02            [12]  659 	add	a,#_pu
      00211A FE               [12]  660 	mov	r6,a
      00211B EF               [12]  661 	mov	a,r7
      00211C 34 80            [12]  662 	addc	a,#(_pu >> 8)
      00211E FF               [12]  663 	mov	r7,a
      00211F 90 8C 02         [24]  664 	mov	dptr,#_x
      002122 E0               [24]  665 	movx	a,@dptr
      002123 FC               [12]  666 	mov	r4,a
      002124 A3               [24]  667 	inc	dptr
      002125 E0               [24]  668 	movx	a,@dptr
      002126 FD               [12]  669 	mov	r5,a
      002127 EC               [12]  670 	mov	a,r4
      002128 2E               [12]  671 	add	a,r6
      002129 F5 82            [12]  672 	mov	dpl,a
      00212B ED               [12]  673 	mov	a,r5
      00212C 3F               [12]  674 	addc	a,r7
      00212D F5 83            [12]  675 	mov	dph,a
      00212F E4               [12]  676 	clr	a
      002130 F0               [24]  677 	movx	@dptr,a
                                    678 ;	life.c:115: for (x = 0; x < W; x++) {
      002131 90 8C 02         [24]  679 	mov	dptr,#_x
      002134 E0               [24]  680 	movx	a,@dptr
      002135 24 01            [12]  681 	add	a,#0x01
      002137 F0               [24]  682 	movx	@dptr,a
      002138 A3               [24]  683 	inc	dptr
      002139 E0               [24]  684 	movx	a,@dptr
      00213A 34 00            [12]  685 	addc	a,#0x00
      00213C F0               [24]  686 	movx	@dptr,a
      00213D 90 8C 02         [24]  687 	mov	dptr,#_x
      002140 E0               [24]  688 	movx	a,@dptr
      002141 FE               [12]  689 	mov	r6,a
      002142 A3               [24]  690 	inc	dptr
      002143 E0               [24]  691 	movx	a,@dptr
      002144 FF               [12]  692 	mov	r7,a
      002145 C3               [12]  693 	clr	c
      002146 EE               [12]  694 	mov	a,r6
      002147 94 20            [12]  695 	subb	a,#0x20
      002149 EF               [12]  696 	mov	a,r7
      00214A 64 80            [12]  697 	xrl	a,#0x80
      00214C 94 80            [12]  698 	subb	a,#0x80
      00214E 50 03            [24]  699 	jnc	00559$
      002150 02 20 D1         [24]  700 	ljmp	00187$
      002153                        701 00559$:
                                    702 ;	life.c:114: for (y = 0; y < H; y++)
      002153 90 8C 04         [24]  703 	mov	dptr,#_y
      002156 E0               [24]  704 	movx	a,@dptr
      002157 24 01            [12]  705 	add	a,#0x01
      002159 F0               [24]  706 	movx	@dptr,a
      00215A A3               [24]  707 	inc	dptr
      00215B E0               [24]  708 	movx	a,@dptr
      00215C 34 00            [12]  709 	addc	a,#0x00
      00215E F0               [24]  710 	movx	@dptr,a
      00215F 90 8C 04         [24]  711 	mov	dptr,#_y
      002162 E0               [24]  712 	movx	a,@dptr
      002163 FE               [12]  713 	mov	r6,a
      002164 A3               [24]  714 	inc	dptr
      002165 E0               [24]  715 	movx	a,@dptr
      002166 FF               [12]  716 	mov	r7,a
      002167 C3               [12]  717 	clr	c
      002168 EE               [12]  718 	mov	a,r6
      002169 94 20            [12]  719 	subb	a,#0x20
      00216B EF               [12]  720 	mov	a,r7
      00216C 64 80            [12]  721 	xrl	a,#0x80
      00216E 94 80            [12]  722 	subb	a,#0x80
      002170 50 03            [24]  723 	jnc	00560$
      002172 02 20 CA         [24]  724 	ljmp	00189$
      002175                        725 00560$:
                                    726 ;	life.c:189: printstr("\033[2J\033[mINIT\r\n");
      002175 7D 07            [12]  727 	mov	r5,#___str_5
      002177 7E 2C            [12]  728 	mov	r6,#(___str_5 >> 8)
      002179 7F 80            [12]  729 	mov	r7,#0x80
                                    730 ;	life.c:47: return;
      00217B                        731 00192$:
                                    732 ;	life.c:45: for (; *s; s++) putchar(*s);
      00217B 8D 82            [24]  733 	mov	dpl,r5
      00217D 8E 83            [24]  734 	mov	dph,r6
      00217F 8F F0            [24]  735 	mov	b,r7
      002181 12 2A D5         [24]  736 	lcall	__gptrget
      002184 FC               [12]  737 	mov	r4,a
      002185 60 10            [24]  738 	jz	00112$
      002187 7B 00            [12]  739 	mov	r3,#0x00
      002189 8C 82            [24]  740 	mov	dpl,r4
      00218B 8B 83            [24]  741 	mov	dph,r3
      00218D 12 20 75         [24]  742 	lcall	_putchar
      002190 0D               [12]  743 	inc	r5
                                    744 ;	life.c:189: printstr("\033[2J\033[mINIT\r\n");
      002191 BD 00 E7         [24]  745 	cjne	r5,#0x00,00192$
      002194 0E               [12]  746 	inc	r6
      002195 80 E4            [24]  747 	sjmp	00192$
      002197                        748 00112$:
                                    749 ;	life.c:190: (void)getchar();
      002197 12 20 7A         [24]  750 	lcall	_getchar
                                    751 ;	life.c:192: printstr("LOAD\r\n");
      00219A 7D 15            [12]  752 	mov	r5,#___str_6
      00219C 7E 2C            [12]  753 	mov	r6,#(___str_6 >> 8)
      00219E 7F 80            [12]  754 	mov	r7,#0x80
                                    755 ;	life.c:47: return;
      0021A0                        756 00195$:
                                    757 ;	life.c:45: for (; *s; s++) putchar(*s);
      0021A0 8D 82            [24]  758 	mov	dpl,r5
      0021A2 8E 83            [24]  759 	mov	dph,r6
      0021A4 8F F0            [24]  760 	mov	b,r7
      0021A6 12 2A D5         [24]  761 	lcall	__gptrget
      0021A9 FC               [12]  762 	mov	r4,a
      0021AA 60 10            [24]  763 	jz	00114$
      0021AC 7B 00            [12]  764 	mov	r3,#0x00
      0021AE 8C 82            [24]  765 	mov	dpl,r4
      0021B0 8B 83            [24]  766 	mov	dph,r3
      0021B2 12 20 75         [24]  767 	lcall	_putchar
      0021B5 0D               [12]  768 	inc	r5
                                    769 ;	life.c:192: printstr("LOAD\r\n");
      0021B6 BD 00 E7         [24]  770 	cjne	r5,#0x00,00195$
      0021B9 0E               [12]  771 	inc	r6
      0021BA 80 E4            [24]  772 	sjmp	00195$
      0021BC                        773 00114$:
                                    774 ;	life.c:193: (void)getchar();
      0021BC 12 20 7A         [24]  775 	lcall	_getchar
                                    776 ;	life.c:124: j = 0;
      0021BF 90 8C 15         [24]  777 	mov	dptr,#_j
      0021C2 E4               [12]  778 	clr	a
      0021C3 F0               [24]  779 	movx	@dptr,a
      0021C4 A3               [24]  780 	inc	dptr
      0021C5 F0               [24]  781 	movx	@dptr,a
                                    782 ;	life.c:126: putchar('<');
      0021C6 90 00 3C         [24]  783 	mov	dptr,#0x003c
      0021C9 12 20 75         [24]  784 	lcall	_putchar
                                    785 ;	life.c:128: for (y = 0; y < H; y++)
      0021CC 90 8C 04         [24]  786 	mov	dptr,#_y
      0021CF E4               [12]  787 	clr	a
      0021D0 F0               [24]  788 	movx	@dptr,a
      0021D1 A3               [24]  789 	inc	dptr
      0021D2 F0               [24]  790 	movx	@dptr,a
      0021D3                        791 00199$:
                                    792 ;	life.c:129: for (x = 0; x < W; x++) {
      0021D3 90 8C 02         [24]  793 	mov	dptr,#_x
      0021D6 E4               [12]  794 	clr	a
      0021D7 F0               [24]  795 	movx	@dptr,a
      0021D8 A3               [24]  796 	inc	dptr
      0021D9 F0               [24]  797 	movx	@dptr,a
      0021DA                        798 00197$:
                                    799 ;	life.c:130: c = getchar();
      0021DA 12 20 7A         [24]  800 	lcall	_getchar
      0021DD AE 82            [24]  801 	mov	r6,dpl
      0021DF AF 83            [24]  802 	mov	r7,dph
      0021E1 90 8C 17         [24]  803 	mov	dptr,#_c
      0021E4 EE               [12]  804 	mov	a,r6
      0021E5 F0               [24]  805 	movx	@dptr,a
      0021E6 EF               [12]  806 	mov	a,r7
      0021E7 A3               [24]  807 	inc	dptr
      0021E8 F0               [24]  808 	movx	@dptr,a
                                    809 ;	life.c:131: if (c == (int)'0') {
      0021E9 BE 30 41         [24]  810 	cjne	r6,#0x30,00121$
      0021EC BF 00 3E         [24]  811 	cjne	r7,#0x00,00121$
                                    812 ;	life.c:132: u[y][x] = 0;
      0021EF 90 8C 04         [24]  813 	mov	dptr,#_y
      0021F2 E0               [24]  814 	movx	a,@dptr
      0021F3 FC               [12]  815 	mov	r4,a
      0021F4 A3               [24]  816 	inc	dptr
      0021F5 E0               [24]  817 	movx	a,@dptr
      0021F6 C4               [12]  818 	swap	a
      0021F7 23               [12]  819 	rl	a
      0021F8 54 E0            [12]  820 	anl	a,#0xe0
      0021FA CC               [12]  821 	xch	a,r4
      0021FB C4               [12]  822 	swap	a
      0021FC 23               [12]  823 	rl	a
      0021FD CC               [12]  824 	xch	a,r4
      0021FE 6C               [12]  825 	xrl	a,r4
      0021FF CC               [12]  826 	xch	a,r4
      002200 54 E0            [12]  827 	anl	a,#0xe0
      002202 CC               [12]  828 	xch	a,r4
      002203 6C               [12]  829 	xrl	a,r4
      002204 FD               [12]  830 	mov	r5,a
      002205 EC               [12]  831 	mov	a,r4
      002206 24 02            [12]  832 	add	a,#_u
      002208 FC               [12]  833 	mov	r4,a
      002209 ED               [12]  834 	mov	a,r5
      00220A 34 84            [12]  835 	addc	a,#(_u >> 8)
      00220C FD               [12]  836 	mov	r5,a
      00220D 90 8C 02         [24]  837 	mov	dptr,#_x
      002210 E0               [24]  838 	movx	a,@dptr
      002211 FA               [12]  839 	mov	r2,a
      002212 A3               [24]  840 	inc	dptr
      002213 E0               [24]  841 	movx	a,@dptr
      002214 FB               [12]  842 	mov	r3,a
      002215 EA               [12]  843 	mov	a,r2
      002216 2C               [12]  844 	add	a,r4
      002217 F5 82            [12]  845 	mov	dpl,a
      002219 EB               [12]  846 	mov	a,r3
      00221A 3D               [12]  847 	addc	a,r5
      00221B F5 83            [12]  848 	mov	dph,a
      00221D E4               [12]  849 	clr	a
      00221E F0               [24]  850 	movx	@dptr,a
                                    851 ;	life.c:133: j++;
      00221F 90 8C 15         [24]  852 	mov	dptr,#_j
      002222 E0               [24]  853 	movx	a,@dptr
      002223 24 01            [12]  854 	add	a,#0x01
      002225 F0               [24]  855 	movx	@dptr,a
      002226 A3               [24]  856 	inc	dptr
      002227 E0               [24]  857 	movx	a,@dptr
      002228 34 00            [12]  858 	addc	a,#0x00
      00222A F0               [24]  859 	movx	@dptr,a
      00222B 80 4D            [24]  860 	sjmp	00198$
      00222D                        861 00121$:
                                    862 ;	life.c:134: } else if (c == (int)'1') {
      00222D BE 31 42         [24]  863 	cjne	r6,#0x31,00119$
      002230 BF 00 3F         [24]  864 	cjne	r7,#0x00,00119$
                                    865 ;	life.c:135: u[y][x] = 1;
      002233 90 8C 04         [24]  866 	mov	dptr,#_y
      002236 E0               [24]  867 	movx	a,@dptr
      002237 FC               [12]  868 	mov	r4,a
      002238 A3               [24]  869 	inc	dptr
      002239 E0               [24]  870 	movx	a,@dptr
      00223A C4               [12]  871 	swap	a
      00223B 23               [12]  872 	rl	a
      00223C 54 E0            [12]  873 	anl	a,#0xe0
      00223E CC               [12]  874 	xch	a,r4
      00223F C4               [12]  875 	swap	a
      002240 23               [12]  876 	rl	a
      002241 CC               [12]  877 	xch	a,r4
      002242 6C               [12]  878 	xrl	a,r4
      002243 CC               [12]  879 	xch	a,r4
      002244 54 E0            [12]  880 	anl	a,#0xe0
      002246 CC               [12]  881 	xch	a,r4
      002247 6C               [12]  882 	xrl	a,r4
      002248 FD               [12]  883 	mov	r5,a
      002249 EC               [12]  884 	mov	a,r4
      00224A 24 02            [12]  885 	add	a,#_u
      00224C FC               [12]  886 	mov	r4,a
      00224D ED               [12]  887 	mov	a,r5
      00224E 34 84            [12]  888 	addc	a,#(_u >> 8)
      002250 FD               [12]  889 	mov	r5,a
      002251 90 8C 02         [24]  890 	mov	dptr,#_x
      002254 E0               [24]  891 	movx	a,@dptr
      002255 FA               [12]  892 	mov	r2,a
      002256 A3               [24]  893 	inc	dptr
      002257 E0               [24]  894 	movx	a,@dptr
      002258 FB               [12]  895 	mov	r3,a
      002259 EA               [12]  896 	mov	a,r2
      00225A 2C               [12]  897 	add	a,r4
      00225B F5 82            [12]  898 	mov	dpl,a
      00225D EB               [12]  899 	mov	a,r3
      00225E 3D               [12]  900 	addc	a,r5
      00225F F5 83            [12]  901 	mov	dph,a
      002261 74 01            [12]  902 	mov	a,#0x01
      002263 F0               [24]  903 	movx	@dptr,a
                                    904 ;	life.c:136: j++;
      002264 90 8C 15         [24]  905 	mov	dptr,#_j
      002267 E0               [24]  906 	movx	a,@dptr
      002268 24 01            [12]  907 	add	a,#0x01
      00226A F0               [24]  908 	movx	@dptr,a
      00226B A3               [24]  909 	inc	dptr
      00226C E0               [24]  910 	movx	a,@dptr
      00226D 34 00            [12]  911 	addc	a,#0x00
      00226F F0               [24]  912 	movx	@dptr,a
      002270 80 08            [24]  913 	sjmp	00198$
      002272                        914 00119$:
                                    915 ;	life.c:137: } else if (c == (int)'#') goto out;
      002272 BE 23 05         [24]  916 	cjne	r6,#0x23,00569$
      002275 BF 00 02         [24]  917 	cjne	r7,#0x00,00569$
      002278 80 44            [24]  918 	sjmp	00132$
      00227A                        919 00569$:
      00227A                        920 00198$:
                                    921 ;	life.c:129: for (x = 0; x < W; x++) {
      00227A 90 8C 02         [24]  922 	mov	dptr,#_x
      00227D E0               [24]  923 	movx	a,@dptr
      00227E 24 01            [12]  924 	add	a,#0x01
      002280 F0               [24]  925 	movx	@dptr,a
      002281 A3               [24]  926 	inc	dptr
      002282 E0               [24]  927 	movx	a,@dptr
      002283 34 00            [12]  928 	addc	a,#0x00
      002285 F0               [24]  929 	movx	@dptr,a
      002286 90 8C 02         [24]  930 	mov	dptr,#_x
      002289 E0               [24]  931 	movx	a,@dptr
      00228A FE               [12]  932 	mov	r6,a
      00228B A3               [24]  933 	inc	dptr
      00228C E0               [24]  934 	movx	a,@dptr
      00228D FF               [12]  935 	mov	r7,a
      00228E C3               [12]  936 	clr	c
      00228F EE               [12]  937 	mov	a,r6
      002290 94 20            [12]  938 	subb	a,#0x20
      002292 EF               [12]  939 	mov	a,r7
      002293 64 80            [12]  940 	xrl	a,#0x80
      002295 94 80            [12]  941 	subb	a,#0x80
      002297 50 03            [24]  942 	jnc	00570$
      002299 02 21 DA         [24]  943 	ljmp	00197$
      00229C                        944 00570$:
                                    945 ;	life.c:128: for (y = 0; y < H; y++)
      00229C 90 8C 04         [24]  946 	mov	dptr,#_y
      00229F E0               [24]  947 	movx	a,@dptr
      0022A0 24 01            [12]  948 	add	a,#0x01
      0022A2 F0               [24]  949 	movx	@dptr,a
      0022A3 A3               [24]  950 	inc	dptr
      0022A4 E0               [24]  951 	movx	a,@dptr
      0022A5 34 00            [12]  952 	addc	a,#0x00
      0022A7 F0               [24]  953 	movx	@dptr,a
      0022A8 90 8C 04         [24]  954 	mov	dptr,#_y
      0022AB E0               [24]  955 	movx	a,@dptr
      0022AC FE               [12]  956 	mov	r6,a
      0022AD A3               [24]  957 	inc	dptr
      0022AE E0               [24]  958 	movx	a,@dptr
      0022AF FF               [12]  959 	mov	r7,a
      0022B0 C3               [12]  960 	clr	c
      0022B1 EE               [12]  961 	mov	a,r6
      0022B2 94 20            [12]  962 	subb	a,#0x20
      0022B4 EF               [12]  963 	mov	a,r7
      0022B5 64 80            [12]  964 	xrl	a,#0x80
      0022B7 94 80            [12]  965 	subb	a,#0x80
      0022B9 50 03            [24]  966 	jnc	00571$
      0022BB 02 21 D3         [24]  967 	ljmp	00199$
      0022BE                        968 00571$:
                                    969 ;	life.c:140: out:
      0022BE                        970 00132$:
                                    971 ;	life.c:141: if (c != (int)'#')
      0022BE 90 8C 17         [24]  972 	mov	dptr,#_c
      0022C1 E0               [24]  973 	movx	a,@dptr
      0022C2 FE               [12]  974 	mov	r6,a
      0022C3 A3               [24]  975 	inc	dptr
      0022C4 E0               [24]  976 	movx	a,@dptr
      0022C5 FF               [12]  977 	mov	r7,a
      0022C6 BE 23 05         [24]  978 	cjne	r6,#0x23,00572$
      0022C9 BF 00 02         [24]  979 	cjne	r7,#0x00,00572$
      0022CC 80 15            [24]  980 	sjmp	00131$
      0022CE                        981 00572$:
                                    982 ;	life.c:142: while (1) {
      0022CE                        983 00128$:
                                    984 ;	life.c:143: c = getchar();
      0022CE 12 20 7A         [24]  985 	lcall	_getchar
      0022D1 AE 82            [24]  986 	mov	r6,dpl
      0022D3 AF 83            [24]  987 	mov	r7,dph
      0022D5 90 8C 17         [24]  988 	mov	dptr,#_c
      0022D8 EE               [12]  989 	mov	a,r6
      0022D9 F0               [24]  990 	movx	@dptr,a
      0022DA EF               [12]  991 	mov	a,r7
      0022DB A3               [24]  992 	inc	dptr
      0022DC F0               [24]  993 	movx	@dptr,a
                                    994 ;	life.c:144: if (c == (int)'#') break;
      0022DD BE 23 EE         [24]  995 	cjne	r6,#0x23,00128$
      0022E0 BF 00 EB         [24]  996 	cjne	r7,#0x00,00128$
      0022E3                        997 00131$:
                                    998 ;	life.c:146: print16x(j);
      0022E3 90 8C 15         [24]  999 	mov	dptr,#_j
      0022E6 E0               [24] 1000 	movx	a,@dptr
      0022E7 FE               [12] 1001 	mov	r6,a
      0022E8 A3               [24] 1002 	inc	dptr
      0022E9 E0               [24] 1003 	movx	a,@dptr
      0022EA FF               [12] 1004 	mov	r7,a
      0022EB 8E 04            [24] 1005 	mov	ar4,r6
                                   1006 ;	life.c:36: putchar(digits[(a >> 12) & 0xf]);
      0022ED EF               [12] 1007 	mov	a,r7
      0022EE FD               [12] 1008 	mov	r5,a
      0022EF C4               [12] 1009 	swap	a
      0022F0 54 0F            [12] 1010 	anl	a,#0x0f
      0022F2 30 E3 02         [24] 1011 	jnb	acc.3,00575$
      0022F5 44 F0            [12] 1012 	orl	a,#0xf0
      0022F7                       1013 00575$:
      0022F7 FE               [12] 1014 	mov	r6,a
      0022F8 33               [12] 1015 	rlc	a
      0022F9 95 E0            [12] 1016 	subb	a,acc
      0022FB 53 06 0F         [24] 1017 	anl	ar6,#0x0f
      0022FE 7F 00            [12] 1018 	mov	r7,#0x00
      002300 EE               [12] 1019 	mov	a,r6
      002301 24 E2            [12] 1020 	add	a,#_digits
      002303 F5 82            [12] 1021 	mov	dpl,a
      002305 EF               [12] 1022 	mov	a,r7
      002306 34 2B            [12] 1023 	addc	a,#(_digits >> 8)
      002308 F5 83            [12] 1024 	mov	dph,a
      00230A E4               [12] 1025 	clr	a
      00230B 93               [24] 1026 	movc	a,@a+dptr
      00230C FF               [12] 1027 	mov	r7,a
      00230D 7E 00            [12] 1028 	mov	r6,#0x00
      00230F 8F 82            [24] 1029 	mov	dpl,r7
      002311 8E 83            [24] 1030 	mov	dph,r6
      002313 12 20 75         [24] 1031 	lcall	_putchar
                                   1032 ;	life.c:37: putchar(digits[(a >> 8) & 0xf]);
      002316 8D 07            [24] 1033 	mov	ar7,r5
      002318 53 07 0F         [24] 1034 	anl	ar7,#0x0f
      00231B 7E 00            [12] 1035 	mov	r6,#0x00
      00231D EF               [12] 1036 	mov	a,r7
      00231E 24 E2            [12] 1037 	add	a,#_digits
      002320 F5 82            [12] 1038 	mov	dpl,a
      002322 EE               [12] 1039 	mov	a,r6
      002323 34 2B            [12] 1040 	addc	a,#(_digits >> 8)
      002325 F5 83            [12] 1041 	mov	dph,a
      002327 E4               [12] 1042 	clr	a
      002328 93               [24] 1043 	movc	a,@a+dptr
      002329 FF               [12] 1044 	mov	r7,a
      00232A 7E 00            [12] 1045 	mov	r6,#0x00
      00232C 8F 82            [24] 1046 	mov	dpl,r7
      00232E 8E 83            [24] 1047 	mov	dph,r6
      002330 12 20 75         [24] 1048 	lcall	_putchar
                                   1049 ;	life.c:38: putchar(digits[(a >> 4) & 0xf]);
      002333 8C 06            [24] 1050 	mov	ar6,r4
      002335 ED               [12] 1051 	mov	a,r5
      002336 C4               [12] 1052 	swap	a
      002337 CE               [12] 1053 	xch	a,r6
      002338 C4               [12] 1054 	swap	a
      002339 54 0F            [12] 1055 	anl	a,#0x0f
      00233B 6E               [12] 1056 	xrl	a,r6
      00233C CE               [12] 1057 	xch	a,r6
      00233D 54 0F            [12] 1058 	anl	a,#0x0f
      00233F CE               [12] 1059 	xch	a,r6
      002340 6E               [12] 1060 	xrl	a,r6
      002341 CE               [12] 1061 	xch	a,r6
      002342 30 E3 02         [24] 1062 	jnb	acc.3,00576$
      002345 44 F0            [12] 1063 	orl	a,#0xf0
      002347                       1064 00576$:
      002347 53 06 0F         [24] 1065 	anl	ar6,#0x0f
      00234A 7F 00            [12] 1066 	mov	r7,#0x00
      00234C EE               [12] 1067 	mov	a,r6
      00234D 24 E2            [12] 1068 	add	a,#_digits
      00234F F5 82            [12] 1069 	mov	dpl,a
      002351 EF               [12] 1070 	mov	a,r7
      002352 34 2B            [12] 1071 	addc	a,#(_digits >> 8)
      002354 F5 83            [12] 1072 	mov	dph,a
      002356 E4               [12] 1073 	clr	a
      002357 93               [24] 1074 	movc	a,@a+dptr
      002358 FF               [12] 1075 	mov	r7,a
      002359 7E 00            [12] 1076 	mov	r6,#0x00
      00235B 8F 82            [24] 1077 	mov	dpl,r7
      00235D 8E 83            [24] 1078 	mov	dph,r6
      00235F 12 20 75         [24] 1079 	lcall	_putchar
                                   1080 ;	life.c:39: putchar(digits[a & 0xf]);
      002362 53 04 0F         [24] 1081 	anl	ar4,#0x0f
      002365 7D 00            [12] 1082 	mov	r5,#0x00
      002367 EC               [12] 1083 	mov	a,r4
      002368 24 E2            [12] 1084 	add	a,#_digits
      00236A F5 82            [12] 1085 	mov	dpl,a
      00236C ED               [12] 1086 	mov	a,r5
      00236D 34 2B            [12] 1087 	addc	a,#(_digits >> 8)
      00236F F5 83            [12] 1088 	mov	dph,a
      002371 E4               [12] 1089 	clr	a
      002372 93               [24] 1090 	movc	a,@a+dptr
      002373 FF               [12] 1091 	mov	r7,a
      002374 7E 00            [12] 1092 	mov	r6,#0x00
      002376 8F 82            [24] 1093 	mov	dpl,r7
      002378 8E 83            [24] 1094 	mov	dph,r6
      00237A 12 20 75         [24] 1095 	lcall	_putchar
                                   1096 ;	life.c:147: printstr(">\r\n");
      00237D 7D 03            [12] 1097 	mov	r5,#___str_4
      00237F 7E 2C            [12] 1098 	mov	r6,#(___str_4 >> 8)
      002381 7F 80            [12] 1099 	mov	r7,#0x80
                                   1100 ;	life.c:47: return;
      002383                       1101 00202$:
                                   1102 ;	life.c:45: for (; *s; s++) putchar(*s);
      002383 8D 82            [24] 1103 	mov	dpl,r5
      002385 8E 83            [24] 1104 	mov	dph,r6
      002387 8F F0            [24] 1105 	mov	b,r7
      002389 12 2A D5         [24] 1106 	lcall	__gptrget
      00238C FC               [12] 1107 	mov	r4,a
      00238D 60 10            [24] 1108 	jz	00135$
      00238F 7B 00            [12] 1109 	mov	r3,#0x00
      002391 8C 82            [24] 1110 	mov	dpl,r4
      002393 8B 83            [24] 1111 	mov	dph,r3
      002395 12 20 75         [24] 1112 	lcall	_putchar
      002398 0D               [12] 1113 	inc	r5
                                   1114 ;	life.c:147: printstr(">\r\n");
      002399 BD 00 E7         [24] 1115 	cjne	r5,#0x00,00202$
      00239C 0E               [12] 1116 	inc	r6
      00239D 80 E4            [24] 1117 	sjmp	00202$
      00239F                       1118 00135$:
                                   1119 ;	life.c:197: printstr("RDY\r\n");
      00239F 7D 1C            [12] 1120 	mov	r5,#___str_7
      0023A1 7E 2C            [12] 1121 	mov	r6,#(___str_7 >> 8)
      0023A3 7F 80            [12] 1122 	mov	r7,#0x80
                                   1123 ;	life.c:47: return;
      0023A5                       1124 00205$:
                                   1125 ;	life.c:45: for (; *s; s++) putchar(*s);
      0023A5 8D 82            [24] 1126 	mov	dpl,r5
      0023A7 8E 83            [24] 1127 	mov	dph,r6
      0023A9 8F F0            [24] 1128 	mov	b,r7
      0023AB 12 2A D5         [24] 1129 	lcall	__gptrget
      0023AE FC               [12] 1130 	mov	r4,a
      0023AF 60 10            [24] 1131 	jz	00138$
      0023B1 7B 00            [12] 1132 	mov	r3,#0x00
      0023B3 8C 82            [24] 1133 	mov	dpl,r4
      0023B5 8B 83            [24] 1134 	mov	dph,r3
      0023B7 12 20 75         [24] 1135 	lcall	_putchar
      0023BA 0D               [12] 1136 	inc	r5
                                   1137 ;	life.c:197: printstr("RDY\r\n");
      0023BB BD 00 E7         [24] 1138 	cjne	r5,#0x00,00205$
      0023BE 0E               [12] 1139 	inc	r6
      0023BF 80 E4            [24] 1140 	sjmp	00205$
      0023C1                       1141 00138$:
                                   1142 ;	life.c:198: (void)getchar();
      0023C1 12 20 7A         [24] 1143 	lcall	_getchar
                                   1144 ;	life.c:73: for (j = 0; j < 4; j++)
      0023C4 90 8C 15         [24] 1145 	mov	dptr,#_j
      0023C7 E4               [12] 1146 	clr	a
      0023C8 F0               [24] 1147 	movx	@dptr,a
      0023C9 A3               [24] 1148 	inc	dptr
      0023CA F0               [24] 1149 	movx	@dptr,a
      0023CB                       1150 00207$:
                                   1151 ;	life.c:74: generation[j] = 0;
      0023CB 90 8C 15         [24] 1152 	mov	dptr,#_j
      0023CE E0               [24] 1153 	movx	a,@dptr
      0023CF FE               [12] 1154 	mov	r6,a
      0023D0 A3               [24] 1155 	inc	dptr
      0023D1 E0               [24] 1156 	movx	a,@dptr
      0023D2 FF               [12] 1157 	mov	r7,a
      0023D3 EE               [12] 1158 	mov	a,r6
      0023D4 2E               [12] 1159 	add	a,r6
      0023D5 FE               [12] 1160 	mov	r6,a
      0023D6 EF               [12] 1161 	mov	a,r7
      0023D7 33               [12] 1162 	rlc	a
      0023D8 FF               [12] 1163 	mov	r7,a
      0023D9 EE               [12] 1164 	mov	a,r6
      0023DA 24 0B            [12] 1165 	add	a,#_generation
      0023DC F5 82            [12] 1166 	mov	dpl,a
      0023DE EF               [12] 1167 	mov	a,r7
      0023DF 34 8C            [12] 1168 	addc	a,#(_generation >> 8)
      0023E1 F5 83            [12] 1169 	mov	dph,a
      0023E3 E4               [12] 1170 	clr	a
      0023E4 F0               [24] 1171 	movx	@dptr,a
      0023E5 A3               [24] 1172 	inc	dptr
      0023E6 F0               [24] 1173 	movx	@dptr,a
                                   1174 ;	life.c:73: for (j = 0; j < 4; j++)
      0023E7 90 8C 15         [24] 1175 	mov	dptr,#_j
      0023EA E0               [24] 1176 	movx	a,@dptr
      0023EB 24 01            [12] 1177 	add	a,#0x01
      0023ED F0               [24] 1178 	movx	@dptr,a
      0023EE A3               [24] 1179 	inc	dptr
      0023EF E0               [24] 1180 	movx	a,@dptr
      0023F0 34 00            [12] 1181 	addc	a,#0x00
      0023F2 F0               [24] 1182 	movx	@dptr,a
      0023F3 90 8C 15         [24] 1183 	mov	dptr,#_j
      0023F6 E0               [24] 1184 	movx	a,@dptr
      0023F7 FE               [12] 1185 	mov	r6,a
      0023F8 A3               [24] 1186 	inc	dptr
      0023F9 E0               [24] 1187 	movx	a,@dptr
      0023FA FF               [12] 1188 	mov	r7,a
      0023FB C3               [12] 1189 	clr	c
      0023FC EE               [12] 1190 	mov	a,r6
      0023FD 94 04            [12] 1191 	subb	a,#0x04
      0023FF EF               [12] 1192 	mov	a,r7
      002400 64 80            [12] 1193 	xrl	a,#0x80
      002402 94 80            [12] 1194 	subb	a,#0x80
      002404 40 C5            [24] 1195 	jc	00207$
                                   1196 ;	life.c:202: for (i1 = 0; !i0 && !i1; ) {
      002406                       1197 00251$:
      002406 90 80 00         [24] 1198 	mov	dptr,#_i0
      002409 E0               [24] 1199 	movx	a,@dptr
      00240A 60 03            [24] 1200 	jz	00582$
      00240C 02 2A 72         [24] 1201 	ljmp	00104$
      00240F                       1202 00582$:
                                   1203 ;	life.c:98: printstr("\033[2J\033[m");
      00240F 7D F2            [12] 1204 	mov	r5,#___str_0
      002411 7E 2B            [12] 1205 	mov	r6,#(___str_0 >> 8)
      002413 7F 80            [12] 1206 	mov	r7,#0x80
                                   1207 ;	life.c:47: return;
      002415                       1208 00210$:
                                   1209 ;	life.c:45: for (; *s; s++) putchar(*s);
      002415 8D 82            [24] 1210 	mov	dpl,r5
      002417 8E 83            [24] 1211 	mov	dph,r6
      002419 8F F0            [24] 1212 	mov	b,r7
      00241B 12 2A D5         [24] 1213 	lcall	__gptrget
      00241E FC               [12] 1214 	mov	r4,a
      00241F 60 10            [24] 1215 	jz	00142$
      002421 7B 00            [12] 1216 	mov	r3,#0x00
      002423 8C 82            [24] 1217 	mov	dpl,r4
      002425 8B 83            [24] 1218 	mov	dph,r3
      002427 12 20 75         [24] 1219 	lcall	_putchar
      00242A 0D               [12] 1220 	inc	r5
                                   1221 ;	life.c:98: printstr("\033[2J\033[m");
      00242B BD 00 E7         [24] 1222 	cjne	r5,#0x00,00210$
      00242E 0E               [12] 1223 	inc	r6
      00242F 80 E4            [24] 1224 	sjmp	00210$
      002431                       1225 00142$:
                                   1226 ;	life.c:89: for (j = 0; j < 4; j++) {
      002431 90 8C 15         [24] 1227 	mov	dptr,#_j
      002434 E4               [12] 1228 	clr	a
      002435 F0               [24] 1229 	movx	@dptr,a
      002436 A3               [24] 1230 	inc	dptr
      002437 F0               [24] 1231 	movx	@dptr,a
      002438                       1232 00212$:
                                   1233 ;	life.c:90: print16x(generation[3 - j]);
      002438 90 8C 15         [24] 1234 	mov	dptr,#_j
      00243B E0               [24] 1235 	movx	a,@dptr
      00243C FE               [12] 1236 	mov	r6,a
      00243D A3               [24] 1237 	inc	dptr
      00243E E0               [24] 1238 	movx	a,@dptr
      00243F 74 03            [12] 1239 	mov	a,#0x03
      002441 C3               [12] 1240 	clr	c
      002442 9E               [12] 1241 	subb	a,r6
      002443 FE               [12] 1242 	mov	r6,a
      002444 C2 D5            [12] 1243 	clr	F0
      002446 75 F0 02         [24] 1244 	mov	b,#0x02
      002449 EE               [12] 1245 	mov	a,r6
      00244A 30 E7 04         [24] 1246 	jnb	acc.7,00585$
      00244D B2 D5            [12] 1247 	cpl	F0
      00244F F4               [12] 1248 	cpl	a
      002450 04               [12] 1249 	inc	a
      002451                       1250 00585$:
      002451 A4               [48] 1251 	mul	ab
      002452 30 D5 0A         [24] 1252 	jnb	F0,00586$
      002455 F4               [12] 1253 	cpl	a
      002456 24 01            [12] 1254 	add	a,#0x01
      002458 C5 F0            [12] 1255 	xch	a,b
      00245A F4               [12] 1256 	cpl	a
      00245B 34 00            [12] 1257 	addc	a,#0x00
      00245D C5 F0            [12] 1258 	xch	a,b
      00245F                       1259 00586$:
      00245F 24 0B            [12] 1260 	add	a,#_generation
      002461 F5 82            [12] 1261 	mov	dpl,a
      002463 74 8C            [12] 1262 	mov	a,#(_generation >> 8)
      002465 35 F0            [12] 1263 	addc	a,b
      002467 F5 83            [12] 1264 	mov	dph,a
      002469 E0               [24] 1265 	movx	a,@dptr
      00246A FE               [12] 1266 	mov	r6,a
      00246B A3               [24] 1267 	inc	dptr
      00246C E0               [24] 1268 	movx	a,@dptr
      00246D FF               [12] 1269 	mov	r7,a
      00246E 8E 04            [24] 1270 	mov	ar4,r6
                                   1271 ;	life.c:36: putchar(digits[(a >> 12) & 0xf]);
      002470 EF               [12] 1272 	mov	a,r7
      002471 FD               [12] 1273 	mov	r5,a
      002472 C4               [12] 1274 	swap	a
      002473 54 0F            [12] 1275 	anl	a,#0x0f
      002475 30 E3 02         [24] 1276 	jnb	acc.3,00587$
      002478 44 F0            [12] 1277 	orl	a,#0xf0
      00247A                       1278 00587$:
      00247A FE               [12] 1279 	mov	r6,a
      00247B 33               [12] 1280 	rlc	a
      00247C 95 E0            [12] 1281 	subb	a,acc
      00247E 53 06 0F         [24] 1282 	anl	ar6,#0x0f
      002481 7F 00            [12] 1283 	mov	r7,#0x00
      002483 EE               [12] 1284 	mov	a,r6
      002484 24 E2            [12] 1285 	add	a,#_digits
      002486 F5 82            [12] 1286 	mov	dpl,a
      002488 EF               [12] 1287 	mov	a,r7
      002489 34 2B            [12] 1288 	addc	a,#(_digits >> 8)
      00248B F5 83            [12] 1289 	mov	dph,a
      00248D E4               [12] 1290 	clr	a
      00248E 93               [24] 1291 	movc	a,@a+dptr
      00248F FF               [12] 1292 	mov	r7,a
      002490 7E 00            [12] 1293 	mov	r6,#0x00
      002492 8F 82            [24] 1294 	mov	dpl,r7
      002494 8E 83            [24] 1295 	mov	dph,r6
      002496 12 20 75         [24] 1296 	lcall	_putchar
                                   1297 ;	life.c:37: putchar(digits[(a >> 8) & 0xf]);
      002499 8D 07            [24] 1298 	mov	ar7,r5
      00249B 53 07 0F         [24] 1299 	anl	ar7,#0x0f
      00249E 7E 00            [12] 1300 	mov	r6,#0x00
      0024A0 EF               [12] 1301 	mov	a,r7
      0024A1 24 E2            [12] 1302 	add	a,#_digits
      0024A3 F5 82            [12] 1303 	mov	dpl,a
      0024A5 EE               [12] 1304 	mov	a,r6
      0024A6 34 2B            [12] 1305 	addc	a,#(_digits >> 8)
      0024A8 F5 83            [12] 1306 	mov	dph,a
      0024AA E4               [12] 1307 	clr	a
      0024AB 93               [24] 1308 	movc	a,@a+dptr
      0024AC FF               [12] 1309 	mov	r7,a
      0024AD 7E 00            [12] 1310 	mov	r6,#0x00
      0024AF 8F 82            [24] 1311 	mov	dpl,r7
      0024B1 8E 83            [24] 1312 	mov	dph,r6
      0024B3 12 20 75         [24] 1313 	lcall	_putchar
                                   1314 ;	life.c:38: putchar(digits[(a >> 4) & 0xf]);
      0024B6 8C 06            [24] 1315 	mov	ar6,r4
      0024B8 ED               [12] 1316 	mov	a,r5
      0024B9 C4               [12] 1317 	swap	a
      0024BA CE               [12] 1318 	xch	a,r6
      0024BB C4               [12] 1319 	swap	a
      0024BC 54 0F            [12] 1320 	anl	a,#0x0f
      0024BE 6E               [12] 1321 	xrl	a,r6
      0024BF CE               [12] 1322 	xch	a,r6
      0024C0 54 0F            [12] 1323 	anl	a,#0x0f
      0024C2 CE               [12] 1324 	xch	a,r6
      0024C3 6E               [12] 1325 	xrl	a,r6
      0024C4 CE               [12] 1326 	xch	a,r6
      0024C5 30 E3 02         [24] 1327 	jnb	acc.3,00588$
      0024C8 44 F0            [12] 1328 	orl	a,#0xf0
      0024CA                       1329 00588$:
      0024CA 53 06 0F         [24] 1330 	anl	ar6,#0x0f
      0024CD 7F 00            [12] 1331 	mov	r7,#0x00
      0024CF EE               [12] 1332 	mov	a,r6
      0024D0 24 E2            [12] 1333 	add	a,#_digits
      0024D2 F5 82            [12] 1334 	mov	dpl,a
      0024D4 EF               [12] 1335 	mov	a,r7
      0024D5 34 2B            [12] 1336 	addc	a,#(_digits >> 8)
      0024D7 F5 83            [12] 1337 	mov	dph,a
      0024D9 E4               [12] 1338 	clr	a
      0024DA 93               [24] 1339 	movc	a,@a+dptr
      0024DB FF               [12] 1340 	mov	r7,a
      0024DC 7E 00            [12] 1341 	mov	r6,#0x00
      0024DE 8F 82            [24] 1342 	mov	dpl,r7
      0024E0 8E 83            [24] 1343 	mov	dph,r6
      0024E2 12 20 75         [24] 1344 	lcall	_putchar
                                   1345 ;	life.c:39: putchar(digits[a & 0xf]);
      0024E5 53 04 0F         [24] 1346 	anl	ar4,#0x0f
      0024E8 7D 00            [12] 1347 	mov	r5,#0x00
      0024EA EC               [12] 1348 	mov	a,r4
      0024EB 24 E2            [12] 1349 	add	a,#_digits
      0024ED F5 82            [12] 1350 	mov	dpl,a
      0024EF ED               [12] 1351 	mov	a,r5
      0024F0 34 2B            [12] 1352 	addc	a,#(_digits >> 8)
      0024F2 F5 83            [12] 1353 	mov	dph,a
      0024F4 E4               [12] 1354 	clr	a
      0024F5 93               [24] 1355 	movc	a,@a+dptr
      0024F6 FF               [12] 1356 	mov	r7,a
      0024F7 7E 00            [12] 1357 	mov	r6,#0x00
      0024F9 8F 82            [24] 1358 	mov	dpl,r7
      0024FB 8E 83            [24] 1359 	mov	dph,r6
      0024FD 12 20 75         [24] 1360 	lcall	_putchar
                                   1361 ;	life.c:91: if (j < 3) putchar(' ');
      002500 90 8C 15         [24] 1362 	mov	dptr,#_j
      002503 E0               [24] 1363 	movx	a,@dptr
      002504 FE               [12] 1364 	mov	r6,a
      002505 A3               [24] 1365 	inc	dptr
      002506 E0               [24] 1366 	movx	a,@dptr
      002507 FF               [12] 1367 	mov	r7,a
      002508 C3               [12] 1368 	clr	c
      002509 EE               [12] 1369 	mov	a,r6
      00250A 94 03            [12] 1370 	subb	a,#0x03
      00250C EF               [12] 1371 	mov	a,r7
      00250D 64 80            [12] 1372 	xrl	a,#0x80
      00250F 94 80            [12] 1373 	subb	a,#0x80
      002511 50 06            [24] 1374 	jnc	00213$
      002513 90 00 20         [24] 1375 	mov	dptr,#0x0020
      002516 12 20 75         [24] 1376 	lcall	_putchar
      002519                       1377 00213$:
                                   1378 ;	life.c:89: for (j = 0; j < 4; j++) {
      002519 90 8C 15         [24] 1379 	mov	dptr,#_j
      00251C E0               [24] 1380 	movx	a,@dptr
      00251D 24 01            [12] 1381 	add	a,#0x01
      00251F F0               [24] 1382 	movx	@dptr,a
      002520 A3               [24] 1383 	inc	dptr
      002521 E0               [24] 1384 	movx	a,@dptr
      002522 34 00            [12] 1385 	addc	a,#0x00
      002524 F0               [24] 1386 	movx	@dptr,a
      002525 90 8C 15         [24] 1387 	mov	dptr,#_j
      002528 E0               [24] 1388 	movx	a,@dptr
      002529 FE               [12] 1389 	mov	r6,a
      00252A A3               [24] 1390 	inc	dptr
      00252B E0               [24] 1391 	movx	a,@dptr
      00252C FF               [12] 1392 	mov	r7,a
      00252D C3               [12] 1393 	clr	c
      00252E EE               [12] 1394 	mov	a,r6
      00252F 94 04            [12] 1395 	subb	a,#0x04
      002531 EF               [12] 1396 	mov	a,r7
      002532 64 80            [12] 1397 	xrl	a,#0x80
      002534 94 80            [12] 1398 	subb	a,#0x80
      002536 50 03            [24] 1399 	jnc	00590$
      002538 02 24 38         [24] 1400 	ljmp	00212$
      00253B                       1401 00590$:
                                   1402 ;	life.c:100: printstr("\r\n");
      00253B 7D FA            [12] 1403 	mov	r5,#___str_1
      00253D 7E 2B            [12] 1404 	mov	r6,#(___str_1 >> 8)
      00253F 7F 80            [12] 1405 	mov	r7,#0x80
                                   1406 ;	life.c:47: return;
      002541                       1407 00215$:
                                   1408 ;	life.c:45: for (; *s; s++) putchar(*s);
      002541 8D 82            [24] 1409 	mov	dpl,r5
      002543 8E 83            [24] 1410 	mov	dph,r6
      002545 8F F0            [24] 1411 	mov	b,r7
      002547 12 2A D5         [24] 1412 	lcall	__gptrget
      00254A FC               [12] 1413 	mov	r4,a
      00254B 60 10            [24] 1414 	jz	00149$
      00254D 7B 00            [12] 1415 	mov	r3,#0x00
      00254F 8C 82            [24] 1416 	mov	dpl,r4
      002551 8B 83            [24] 1417 	mov	dph,r3
      002553 12 20 75         [24] 1418 	lcall	_putchar
      002556 0D               [12] 1419 	inc	r5
                                   1420 ;	life.c:100: printstr("\r\n");
      002557 BD 00 E7         [24] 1421 	cjne	r5,#0x00,00215$
      00255A 0E               [12] 1422 	inc	r6
      00255B 80 E4            [24] 1423 	sjmp	00215$
      00255D                       1424 00149$:
                                   1425 ;	life.c:80: for (j = 0; j < 4; j++) {
      00255D 90 8C 15         [24] 1426 	mov	dptr,#_j
      002560 E4               [12] 1427 	clr	a
      002561 F0               [24] 1428 	movx	@dptr,a
      002562 A3               [24] 1429 	inc	dptr
      002563 F0               [24] 1430 	movx	@dptr,a
      002564                       1431 00217$:
                                   1432 ;	life.c:81: generation[j]++;
      002564 90 8C 15         [24] 1433 	mov	dptr,#_j
      002567 E0               [24] 1434 	movx	a,@dptr
      002568 FE               [12] 1435 	mov	r6,a
      002569 A3               [24] 1436 	inc	dptr
      00256A E0               [24] 1437 	movx	a,@dptr
      00256B FF               [12] 1438 	mov	r7,a
      00256C EE               [12] 1439 	mov	a,r6
      00256D 2E               [12] 1440 	add	a,r6
      00256E FE               [12] 1441 	mov	r6,a
      00256F EF               [12] 1442 	mov	a,r7
      002570 33               [12] 1443 	rlc	a
      002571 FF               [12] 1444 	mov	r7,a
      002572 EE               [12] 1445 	mov	a,r6
      002573 24 0B            [12] 1446 	add	a,#_generation
      002575 FE               [12] 1447 	mov	r6,a
      002576 EF               [12] 1448 	mov	a,r7
      002577 34 8C            [12] 1449 	addc	a,#(_generation >> 8)
      002579 FF               [12] 1450 	mov	r7,a
      00257A 8E 82            [24] 1451 	mov	dpl,r6
      00257C 8F 83            [24] 1452 	mov	dph,r7
      00257E E0               [24] 1453 	movx	a,@dptr
      00257F FC               [12] 1454 	mov	r4,a
      002580 A3               [24] 1455 	inc	dptr
      002581 E0               [24] 1456 	movx	a,@dptr
      002582 FD               [12] 1457 	mov	r5,a
      002583 0C               [12] 1458 	inc	r4
      002584 BC 00 01         [24] 1459 	cjne	r4,#0x00,00593$
      002587 0D               [12] 1460 	inc	r5
      002588                       1461 00593$:
      002588 8E 82            [24] 1462 	mov	dpl,r6
      00258A 8F 83            [24] 1463 	mov	dph,r7
      00258C EC               [12] 1464 	mov	a,r4
      00258D F0               [24] 1465 	movx	@dptr,a
      00258E ED               [12] 1466 	mov	a,r5
      00258F A3               [24] 1467 	inc	dptr
      002590 F0               [24] 1468 	movx	@dptr,a
                                   1469 ;	life.c:82: if (generation[j]) break;
      002591 90 8C 15         [24] 1470 	mov	dptr,#_j
      002594 E0               [24] 1471 	movx	a,@dptr
      002595 FE               [12] 1472 	mov	r6,a
      002596 A3               [24] 1473 	inc	dptr
      002597 E0               [24] 1474 	movx	a,@dptr
      002598 FF               [12] 1475 	mov	r7,a
      002599 EE               [12] 1476 	mov	a,r6
      00259A 2E               [12] 1477 	add	a,r6
      00259B FC               [12] 1478 	mov	r4,a
      00259C EF               [12] 1479 	mov	a,r7
      00259D 33               [12] 1480 	rlc	a
      00259E FD               [12] 1481 	mov	r5,a
      00259F EC               [12] 1482 	mov	a,r4
      0025A0 24 0B            [12] 1483 	add	a,#_generation
      0025A2 F5 82            [12] 1484 	mov	dpl,a
      0025A4 ED               [12] 1485 	mov	a,r5
      0025A5 34 8C            [12] 1486 	addc	a,#(_generation >> 8)
      0025A7 F5 83            [12] 1487 	mov	dph,a
      0025A9 E0               [24] 1488 	movx	a,@dptr
      0025AA FC               [12] 1489 	mov	r4,a
      0025AB A3               [24] 1490 	inc	dptr
      0025AC E0               [24] 1491 	movx	a,@dptr
      0025AD FD               [12] 1492 	mov	r5,a
      0025AE 4C               [12] 1493 	orl	a,r4
      0025AF 70 1E            [24] 1494 	jnz	00153$
                                   1495 ;	life.c:80: for (j = 0; j < 4; j++) {
      0025B1 90 8C 15         [24] 1496 	mov	dptr,#_j
      0025B4 74 01            [12] 1497 	mov	a,#0x01
      0025B6 2E               [12] 1498 	add	a,r6
      0025B7 F0               [24] 1499 	movx	@dptr,a
      0025B8 E4               [12] 1500 	clr	a
      0025B9 3F               [12] 1501 	addc	a,r7
      0025BA A3               [24] 1502 	inc	dptr
      0025BB F0               [24] 1503 	movx	@dptr,a
      0025BC 90 8C 15         [24] 1504 	mov	dptr,#_j
      0025BF E0               [24] 1505 	movx	a,@dptr
      0025C0 FE               [12] 1506 	mov	r6,a
      0025C1 A3               [24] 1507 	inc	dptr
      0025C2 E0               [24] 1508 	movx	a,@dptr
      0025C3 FF               [12] 1509 	mov	r7,a
      0025C4 C3               [12] 1510 	clr	c
      0025C5 EE               [12] 1511 	mov	a,r6
      0025C6 94 04            [12] 1512 	subb	a,#0x04
      0025C8 EF               [12] 1513 	mov	a,r7
      0025C9 64 80            [12] 1514 	xrl	a,#0x80
      0025CB 94 80            [12] 1515 	subb	a,#0x80
      0025CD 40 95            [24] 1516 	jc	00217$
                                   1517 ;	life.c:101: updategen();
      0025CF                       1518 00153$:
                                   1519 ;	life.c:103: for (x = 0; x < W; x++) {
      0025CF 90 8C 02         [24] 1520 	mov	dptr,#_x
      0025D2 E4               [12] 1521 	clr	a
      0025D3 F0               [24] 1522 	movx	@dptr,a
      0025D4 A3               [24] 1523 	inc	dptr
      0025D5 F0               [24] 1524 	movx	@dptr,a
      0025D6                       1525 00230$:
                                   1526 ;	life.c:104: for (y = 0; y < H; y++)
      0025D6 90 8C 04         [24] 1527 	mov	dptr,#_y
      0025D9 E4               [12] 1528 	clr	a
      0025DA F0               [24] 1529 	movx	@dptr,a
      0025DB A3               [24] 1530 	inc	dptr
      0025DC F0               [24] 1531 	movx	@dptr,a
      0025DD                       1532 00225$:
                                   1533 ;	life.c:105: if (u[y][x]) printstr("[]");
      0025DD 90 8C 04         [24] 1534 	mov	dptr,#_y
      0025E0 E0               [24] 1535 	movx	a,@dptr
      0025E1 FE               [12] 1536 	mov	r6,a
      0025E2 A3               [24] 1537 	inc	dptr
      0025E3 E0               [24] 1538 	movx	a,@dptr
      0025E4 C4               [12] 1539 	swap	a
      0025E5 23               [12] 1540 	rl	a
      0025E6 54 E0            [12] 1541 	anl	a,#0xe0
      0025E8 CE               [12] 1542 	xch	a,r6
      0025E9 C4               [12] 1543 	swap	a
      0025EA 23               [12] 1544 	rl	a
      0025EB CE               [12] 1545 	xch	a,r6
      0025EC 6E               [12] 1546 	xrl	a,r6
      0025ED CE               [12] 1547 	xch	a,r6
      0025EE 54 E0            [12] 1548 	anl	a,#0xe0
      0025F0 CE               [12] 1549 	xch	a,r6
      0025F1 6E               [12] 1550 	xrl	a,r6
      0025F2 FF               [12] 1551 	mov	r7,a
      0025F3 EE               [12] 1552 	mov	a,r6
      0025F4 24 02            [12] 1553 	add	a,#_u
      0025F6 FE               [12] 1554 	mov	r6,a
      0025F7 EF               [12] 1555 	mov	a,r7
      0025F8 34 84            [12] 1556 	addc	a,#(_u >> 8)
      0025FA FF               [12] 1557 	mov	r7,a
      0025FB 90 8C 02         [24] 1558 	mov	dptr,#_x
      0025FE E0               [24] 1559 	movx	a,@dptr
      0025FF FC               [12] 1560 	mov	r4,a
      002600 A3               [24] 1561 	inc	dptr
      002601 E0               [24] 1562 	movx	a,@dptr
      002602 FD               [12] 1563 	mov	r5,a
      002603 EC               [12] 1564 	mov	a,r4
      002604 2E               [12] 1565 	add	a,r6
      002605 FE               [12] 1566 	mov	r6,a
      002606 ED               [12] 1567 	mov	a,r5
      002607 3F               [12] 1568 	addc	a,r7
      002608 FF               [12] 1569 	mov	r7,a
      002609 8E 82            [24] 1570 	mov	dpl,r6
      00260B 8F 83            [24] 1571 	mov	dph,r7
      00260D E0               [24] 1572 	movx	a,@dptr
      00260E 60 22            [24] 1573 	jz	00159$
      002610 7D FD            [12] 1574 	mov	r5,#___str_2
      002612 7E 2B            [12] 1575 	mov	r6,#(___str_2 >> 8)
      002614 7F 80            [12] 1576 	mov	r7,#0x80
                                   1577 ;	life.c:47: return;
      002616                       1578 00220$:
                                   1579 ;	life.c:45: for (; *s; s++) putchar(*s);
      002616 8D 82            [24] 1580 	mov	dpl,r5
      002618 8E 83            [24] 1581 	mov	dph,r6
      00261A 8F F0            [24] 1582 	mov	b,r7
      00261C 12 2A D5         [24] 1583 	lcall	__gptrget
      00261F FC               [12] 1584 	mov	r4,a
      002620 60 32            [24] 1585 	jz	00226$
      002622 7B 00            [12] 1586 	mov	r3,#0x00
      002624 8C 82            [24] 1587 	mov	dpl,r4
      002626 8B 83            [24] 1588 	mov	dph,r3
      002628 12 20 75         [24] 1589 	lcall	_putchar
      00262B 0D               [12] 1590 	inc	r5
                                   1591 ;	life.c:105: if (u[y][x]) printstr("[]");
      00262C BD 00 E7         [24] 1592 	cjne	r5,#0x00,00220$
      00262F 0E               [12] 1593 	inc	r6
      002630 80 E4            [24] 1594 	sjmp	00220$
      002632                       1595 00159$:
                                   1596 ;	life.c:106: else printstr("##");
      002632 7D 00            [12] 1597 	mov	r5,#___str_3
      002634 7E 2C            [12] 1598 	mov	r6,#(___str_3 >> 8)
      002636 7F 80            [12] 1599 	mov	r7,#0x80
                                   1600 ;	life.c:47: return;
      002638                       1601 00223$:
                                   1602 ;	life.c:45: for (; *s; s++) putchar(*s);
      002638 8D 82            [24] 1603 	mov	dpl,r5
      00263A 8E 83            [24] 1604 	mov	dph,r6
      00263C 8F F0            [24] 1605 	mov	b,r7
      00263E 12 2A D5         [24] 1606 	lcall	__gptrget
      002641 FC               [12] 1607 	mov	r4,a
      002642 60 10            [24] 1608 	jz	00226$
      002644 7B 00            [12] 1609 	mov	r3,#0x00
      002646 8C 82            [24] 1610 	mov	dpl,r4
      002648 8B 83            [24] 1611 	mov	dph,r3
      00264A 12 20 75         [24] 1612 	lcall	_putchar
      00264D 0D               [12] 1613 	inc	r5
                                   1614 ;	life.c:106: else printstr("##");
      00264E BD 00 E7         [24] 1615 	cjne	r5,#0x00,00223$
      002651 0E               [12] 1616 	inc	r6
      002652 80 E4            [24] 1617 	sjmp	00223$
      002654                       1618 00226$:
                                   1619 ;	life.c:104: for (y = 0; y < H; y++)
      002654 90 8C 04         [24] 1620 	mov	dptr,#_y
      002657 E0               [24] 1621 	movx	a,@dptr
      002658 24 01            [12] 1622 	add	a,#0x01
      00265A F0               [24] 1623 	movx	@dptr,a
      00265B A3               [24] 1624 	inc	dptr
      00265C E0               [24] 1625 	movx	a,@dptr
      00265D 34 00            [12] 1626 	addc	a,#0x00
      00265F F0               [24] 1627 	movx	@dptr,a
      002660 90 8C 04         [24] 1628 	mov	dptr,#_y
      002663 E0               [24] 1629 	movx	a,@dptr
      002664 FE               [12] 1630 	mov	r6,a
      002665 A3               [24] 1631 	inc	dptr
      002666 E0               [24] 1632 	movx	a,@dptr
      002667 FF               [12] 1633 	mov	r7,a
      002668 C3               [12] 1634 	clr	c
      002669 EE               [12] 1635 	mov	a,r6
      00266A 94 20            [12] 1636 	subb	a,#0x20
      00266C EF               [12] 1637 	mov	a,r7
      00266D 64 80            [12] 1638 	xrl	a,#0x80
      00266F 94 80            [12] 1639 	subb	a,#0x80
      002671 50 03            [24] 1640 	jnc	00601$
      002673 02 25 DD         [24] 1641 	ljmp	00225$
      002676                       1642 00601$:
                                   1643 ;	life.c:107: printstr("\r\n");
      002676 7D FA            [12] 1644 	mov	r5,#___str_1
      002678 7E 2B            [12] 1645 	mov	r6,#(___str_1 >> 8)
      00267A 7F 80            [12] 1646 	mov	r7,#0x80
                                   1647 ;	life.c:47: return;
      00267C                       1648 00228$:
                                   1649 ;	life.c:45: for (; *s; s++) putchar(*s);
      00267C 8D 82            [24] 1650 	mov	dpl,r5
      00267E 8E 83            [24] 1651 	mov	dph,r6
      002680 8F F0            [24] 1652 	mov	b,r7
      002682 12 2A D5         [24] 1653 	lcall	__gptrget
      002685 FC               [12] 1654 	mov	r4,a
      002686 60 10            [24] 1655 	jz	00163$
      002688 7B 00            [12] 1656 	mov	r3,#0x00
      00268A 8C 82            [24] 1657 	mov	dpl,r4
      00268C 8B 83            [24] 1658 	mov	dph,r3
      00268E 12 20 75         [24] 1659 	lcall	_putchar
      002691 0D               [12] 1660 	inc	r5
                                   1661 ;	life.c:107: printstr("\r\n");
      002692 BD 00 E7         [24] 1662 	cjne	r5,#0x00,00228$
      002695 0E               [12] 1663 	inc	r6
      002696 80 E4            [24] 1664 	sjmp	00228$
      002698                       1665 00163$:
                                   1666 ;	life.c:103: for (x = 0; x < W; x++) {
      002698 90 8C 02         [24] 1667 	mov	dptr,#_x
      00269B E0               [24] 1668 	movx	a,@dptr
      00269C 24 01            [12] 1669 	add	a,#0x01
      00269E F0               [24] 1670 	movx	@dptr,a
      00269F A3               [24] 1671 	inc	dptr
      0026A0 E0               [24] 1672 	movx	a,@dptr
      0026A1 34 00            [12] 1673 	addc	a,#0x00
      0026A3 F0               [24] 1674 	movx	@dptr,a
      0026A4 90 8C 02         [24] 1675 	mov	dptr,#_x
      0026A7 E0               [24] 1676 	movx	a,@dptr
      0026A8 FE               [12] 1677 	mov	r6,a
      0026A9 A3               [24] 1678 	inc	dptr
      0026AA E0               [24] 1679 	movx	a,@dptr
      0026AB FF               [12] 1680 	mov	r7,a
      0026AC C3               [12] 1681 	clr	c
      0026AD EE               [12] 1682 	mov	a,r6
      0026AE 94 20            [12] 1683 	subb	a,#0x20
      0026B0 EF               [12] 1684 	mov	a,r7
      0026B1 64 80            [12] 1685 	xrl	a,#0x80
      0026B3 94 80            [12] 1686 	subb	a,#0x80
      0026B5 50 03            [24] 1687 	jnc	00604$
      0026B7 02 25 D6         [24] 1688 	ljmp	00230$
      0026BA                       1689 00604$:
                                   1690 ;	life.c:153: fixed = 1;
      0026BA 90 8C 13         [24] 1691 	mov	dptr,#_fixed
      0026BD 74 01            [12] 1692 	mov	a,#0x01
      0026BF F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	life.c:154: cycle2 = 1;
      0026C0 90 8C 14         [24] 1695 	mov	dptr,#_cycle2
      0026C3 F0               [24] 1696 	movx	@dptr,a
                                   1697 ;	life.c:156: for (y = 0; y < H; y++) {
      0026C4 90 8C 04         [24] 1698 	mov	dptr,#_y
      0026C7 E4               [12] 1699 	clr	a
      0026C8 F0               [24] 1700 	movx	@dptr,a
      0026C9 A3               [24] 1701 	inc	dptr
      0026CA F0               [24] 1702 	movx	@dptr,a
      0026CB                       1703 00240$:
                                   1704 ;	life.c:157: for (x = 0; x < W; x++) {
      0026CB 90 8C 02         [24] 1705 	mov	dptr,#_x
      0026CE E4               [12] 1706 	clr	a
      0026CF F0               [24] 1707 	movx	@dptr,a
      0026D0 A3               [24] 1708 	inc	dptr
      0026D1 F0               [24] 1709 	movx	@dptr,a
      0026D2                       1710 00238$:
                                   1711 ;	life.c:158: n = 0;
      0026D2 90 8C 0A         [24] 1712 	mov	dptr,#_n
      0026D5 E4               [12] 1713 	clr	a
      0026D6 F0               [24] 1714 	movx	@dptr,a
                                   1715 ;	life.c:159: for (y1 = y - 1; y1 <= y + 1; y1++)
      0026D7 90 8C 04         [24] 1716 	mov	dptr,#_y
      0026DA E0               [24] 1717 	movx	a,@dptr
      0026DB FE               [12] 1718 	mov	r6,a
      0026DC A3               [24] 1719 	inc	dptr
      0026DD E0               [24] 1720 	movx	a,@dptr
      0026DE FF               [12] 1721 	mov	r7,a
      0026DF 1E               [12] 1722 	dec	r6
      0026E0 BE FF 01         [24] 1723 	cjne	r6,#0xff,00605$
      0026E3 1F               [12] 1724 	dec	r7
      0026E4                       1725 00605$:
      0026E4 90 8C 08         [24] 1726 	mov	dptr,#_y1
      0026E7 EE               [12] 1727 	mov	a,r6
      0026E8 F0               [24] 1728 	movx	@dptr,a
      0026E9 EF               [12] 1729 	mov	a,r7
      0026EA A3               [24] 1730 	inc	dptr
      0026EB F0               [24] 1731 	movx	@dptr,a
      0026EC                       1732 00236$:
      0026EC 90 8C 04         [24] 1733 	mov	dptr,#_y
      0026EF E0               [24] 1734 	movx	a,@dptr
      0026F0 FE               [12] 1735 	mov	r6,a
      0026F1 A3               [24] 1736 	inc	dptr
      0026F2 E0               [24] 1737 	movx	a,@dptr
      0026F3 FF               [12] 1738 	mov	r7,a
      0026F4 74 01            [12] 1739 	mov	a,#0x01
      0026F6 2E               [12] 1740 	add	a,r6
      0026F7 FC               [12] 1741 	mov	r4,a
      0026F8 E4               [12] 1742 	clr	a
      0026F9 3F               [12] 1743 	addc	a,r7
      0026FA FD               [12] 1744 	mov	r5,a
      0026FB 90 8C 08         [24] 1745 	mov	dptr,#_y1
      0026FE E0               [24] 1746 	movx	a,@dptr
      0026FF FA               [12] 1747 	mov	r2,a
      002700 A3               [24] 1748 	inc	dptr
      002701 E0               [24] 1749 	movx	a,@dptr
      002702 FB               [12] 1750 	mov	r3,a
      002703 C3               [12] 1751 	clr	c
      002704 EC               [12] 1752 	mov	a,r4
      002705 9A               [12] 1753 	subb	a,r2
      002706 ED               [12] 1754 	mov	a,r5
      002707 64 80            [12] 1755 	xrl	a,#0x80
      002709 8B F0            [24] 1756 	mov	b,r3
      00270B 63 F0 80         [24] 1757 	xrl	b,#0x80
      00270E 95 F0            [12] 1758 	subb	a,b
      002710 50 03            [24] 1759 	jnc	00606$
      002712 02 27 ED         [24] 1760 	ljmp	00169$
      002715                       1761 00606$:
                                   1762 ;	life.c:160: for (x1 = x - 1; x1 <= x + 1; x1++)
      002715 90 8C 02         [24] 1763 	mov	dptr,#_x
      002718 E0               [24] 1764 	movx	a,@dptr
      002719 FC               [12] 1765 	mov	r4,a
      00271A A3               [24] 1766 	inc	dptr
      00271B E0               [24] 1767 	movx	a,@dptr
      00271C FD               [12] 1768 	mov	r5,a
      00271D 1C               [12] 1769 	dec	r4
      00271E BC FF 01         [24] 1770 	cjne	r4,#0xff,00607$
      002721 1D               [12] 1771 	dec	r5
      002722                       1772 00607$:
      002722 90 8C 06         [24] 1773 	mov	dptr,#_x1
      002725 EC               [12] 1774 	mov	a,r4
      002726 F0               [24] 1775 	movx	@dptr,a
      002727 ED               [12] 1776 	mov	a,r5
      002728 A3               [24] 1777 	inc	dptr
      002729 F0               [24] 1778 	movx	@dptr,a
      00272A                       1779 00233$:
      00272A 90 8C 02         [24] 1780 	mov	dptr,#_x
      00272D E0               [24] 1781 	movx	a,@dptr
      00272E FC               [12] 1782 	mov	r4,a
      00272F A3               [24] 1783 	inc	dptr
      002730 E0               [24] 1784 	movx	a,@dptr
      002731 FD               [12] 1785 	mov	r5,a
      002732 0C               [12] 1786 	inc	r4
      002733 BC 00 01         [24] 1787 	cjne	r4,#0x00,00608$
      002736 0D               [12] 1788 	inc	r5
      002737                       1789 00608$:
      002737 90 8C 06         [24] 1790 	mov	dptr,#_x1
      00273A E0               [24] 1791 	movx	a,@dptr
      00273B FA               [12] 1792 	mov	r2,a
      00273C A3               [24] 1793 	inc	dptr
      00273D E0               [24] 1794 	movx	a,@dptr
      00273E FB               [12] 1795 	mov	r3,a
      00273F C3               [12] 1796 	clr	c
      002740 EC               [12] 1797 	mov	a,r4
      002741 9A               [12] 1798 	subb	a,r2
      002742 ED               [12] 1799 	mov	a,r5
      002743 64 80            [12] 1800 	xrl	a,#0x80
      002745 8B F0            [24] 1801 	mov	b,r3
      002747 63 F0 80         [24] 1802 	xrl	b,#0x80
      00274A 95 F0            [12] 1803 	subb	a,b
      00274C 50 03            [24] 1804 	jnc	00609$
      00274E 02 27 DE         [24] 1805 	ljmp	00237$
      002751                       1806 00609$:
                                   1807 ;	life.c:161: if (u[(y1 + H) % H][(x1 + W) % W])
      002751 90 8C 08         [24] 1808 	mov	dptr,#_y1
      002754 E0               [24] 1809 	movx	a,@dptr
      002755 FC               [12] 1810 	mov	r4,a
      002756 A3               [24] 1811 	inc	dptr
      002757 E0               [24] 1812 	movx	a,@dptr
      002758 FD               [12] 1813 	mov	r5,a
      002759 74 20            [12] 1814 	mov	a,#0x20
      00275B 2C               [12] 1815 	add	a,r4
      00275C FC               [12] 1816 	mov	r4,a
      00275D E4               [12] 1817 	clr	a
      00275E 3D               [12] 1818 	addc	a,r5
      00275F FD               [12] 1819 	mov	r5,a
      002760 C0 03            [24] 1820 	push	ar3
      002762 C0 02            [24] 1821 	push	ar2
      002764 74 20            [12] 1822 	mov	a,#0x20
      002766 C0 E0            [24] 1823 	push	acc
      002768 E4               [12] 1824 	clr	a
      002769 C0 E0            [24] 1825 	push	acc
      00276B 8C 82            [24] 1826 	mov	dpl,r4
      00276D 8D 83            [24] 1827 	mov	dph,r5
      00276F 12 2A F1         [24] 1828 	lcall	__modsint
      002772 AC 82            [24] 1829 	mov	r4,dpl
      002774 AD 83            [24] 1830 	mov	r5,dph
      002776 15 81            [12] 1831 	dec	sp
      002778 15 81            [12] 1832 	dec	sp
      00277A D0 02            [24] 1833 	pop	ar2
      00277C D0 03            [24] 1834 	pop	ar3
      00277E ED               [12] 1835 	mov	a,r5
      00277F C4               [12] 1836 	swap	a
      002780 23               [12] 1837 	rl	a
      002781 54 E0            [12] 1838 	anl	a,#0xe0
      002783 CC               [12] 1839 	xch	a,r4
      002784 C4               [12] 1840 	swap	a
      002785 23               [12] 1841 	rl	a
      002786 CC               [12] 1842 	xch	a,r4
      002787 6C               [12] 1843 	xrl	a,r4
      002788 CC               [12] 1844 	xch	a,r4
      002789 54 E0            [12] 1845 	anl	a,#0xe0
      00278B CC               [12] 1846 	xch	a,r4
      00278C 6C               [12] 1847 	xrl	a,r4
      00278D FD               [12] 1848 	mov	r5,a
      00278E EC               [12] 1849 	mov	a,r4
      00278F 24 02            [12] 1850 	add	a,#_u
      002791 FC               [12] 1851 	mov	r4,a
      002792 ED               [12] 1852 	mov	a,r5
      002793 34 84            [12] 1853 	addc	a,#(_u >> 8)
      002795 FD               [12] 1854 	mov	r5,a
      002796 74 20            [12] 1855 	mov	a,#0x20
      002798 2A               [12] 1856 	add	a,r2
      002799 FA               [12] 1857 	mov	r2,a
      00279A E4               [12] 1858 	clr	a
      00279B 3B               [12] 1859 	addc	a,r3
      00279C FB               [12] 1860 	mov	r3,a
      00279D C0 05            [24] 1861 	push	ar5
      00279F C0 04            [24] 1862 	push	ar4
      0027A1 74 20            [12] 1863 	mov	a,#0x20
      0027A3 C0 E0            [24] 1864 	push	acc
      0027A5 E4               [12] 1865 	clr	a
      0027A6 C0 E0            [24] 1866 	push	acc
      0027A8 8A 82            [24] 1867 	mov	dpl,r2
      0027AA 8B 83            [24] 1868 	mov	dph,r3
      0027AC 12 2A F1         [24] 1869 	lcall	__modsint
      0027AF AA 82            [24] 1870 	mov	r2,dpl
      0027B1 AB 83            [24] 1871 	mov	r3,dph
      0027B3 15 81            [12] 1872 	dec	sp
      0027B5 15 81            [12] 1873 	dec	sp
      0027B7 D0 04            [24] 1874 	pop	ar4
      0027B9 D0 05            [24] 1875 	pop	ar5
      0027BB EA               [12] 1876 	mov	a,r2
      0027BC 2C               [12] 1877 	add	a,r4
      0027BD FC               [12] 1878 	mov	r4,a
      0027BE EB               [12] 1879 	mov	a,r3
      0027BF 3D               [12] 1880 	addc	a,r5
      0027C0 FD               [12] 1881 	mov	r5,a
      0027C1 8C 82            [24] 1882 	mov	dpl,r4
      0027C3 8D 83            [24] 1883 	mov	dph,r5
      0027C5 E0               [24] 1884 	movx	a,@dptr
      0027C6 60 07            [24] 1885 	jz	00234$
                                   1886 ;	life.c:162: n++;
      0027C8 90 8C 0A         [24] 1887 	mov	dptr,#_n
      0027CB E0               [24] 1888 	movx	a,@dptr
      0027CC 24 01            [12] 1889 	add	a,#0x01
      0027CE F0               [24] 1890 	movx	@dptr,a
      0027CF                       1891 00234$:
                                   1892 ;	life.c:160: for (x1 = x - 1; x1 <= x + 1; x1++)
      0027CF 90 8C 06         [24] 1893 	mov	dptr,#_x1
      0027D2 E0               [24] 1894 	movx	a,@dptr
      0027D3 24 01            [12] 1895 	add	a,#0x01
      0027D5 F0               [24] 1896 	movx	@dptr,a
      0027D6 A3               [24] 1897 	inc	dptr
      0027D7 E0               [24] 1898 	movx	a,@dptr
      0027D8 34 00            [12] 1899 	addc	a,#0x00
      0027DA F0               [24] 1900 	movx	@dptr,a
      0027DB 02 27 2A         [24] 1901 	ljmp	00233$
      0027DE                       1902 00237$:
                                   1903 ;	life.c:159: for (y1 = y - 1; y1 <= y + 1; y1++)
      0027DE 90 8C 08         [24] 1904 	mov	dptr,#_y1
      0027E1 E0               [24] 1905 	movx	a,@dptr
      0027E2 24 01            [12] 1906 	add	a,#0x01
      0027E4 F0               [24] 1907 	movx	@dptr,a
      0027E5 A3               [24] 1908 	inc	dptr
      0027E6 E0               [24] 1909 	movx	a,@dptr
      0027E7 34 00            [12] 1910 	addc	a,#0x00
      0027E9 F0               [24] 1911 	movx	@dptr,a
      0027EA 02 26 EC         [24] 1912 	ljmp	00236$
      0027ED                       1913 00169$:
                                   1914 ;	life.c:164: if (u[y][x]) n--;
      0027ED EF               [12] 1915 	mov	a,r7
      0027EE C4               [12] 1916 	swap	a
      0027EF 23               [12] 1917 	rl	a
      0027F0 54 E0            [12] 1918 	anl	a,#0xe0
      0027F2 CE               [12] 1919 	xch	a,r6
      0027F3 C4               [12] 1920 	swap	a
      0027F4 23               [12] 1921 	rl	a
      0027F5 CE               [12] 1922 	xch	a,r6
      0027F6 6E               [12] 1923 	xrl	a,r6
      0027F7 CE               [12] 1924 	xch	a,r6
      0027F8 54 E0            [12] 1925 	anl	a,#0xe0
      0027FA CE               [12] 1926 	xch	a,r6
      0027FB 6E               [12] 1927 	xrl	a,r6
      0027FC FF               [12] 1928 	mov	r7,a
      0027FD EE               [12] 1929 	mov	a,r6
      0027FE 24 02            [12] 1930 	add	a,#_u
      002800 FE               [12] 1931 	mov	r6,a
      002801 EF               [12] 1932 	mov	a,r7
      002802 34 84            [12] 1933 	addc	a,#(_u >> 8)
      002804 FF               [12] 1934 	mov	r7,a
      002805 90 8C 02         [24] 1935 	mov	dptr,#_x
      002808 E0               [24] 1936 	movx	a,@dptr
      002809 FC               [12] 1937 	mov	r4,a
      00280A A3               [24] 1938 	inc	dptr
      00280B E0               [24] 1939 	movx	a,@dptr
      00280C FD               [12] 1940 	mov	r5,a
      00280D EC               [12] 1941 	mov	a,r4
      00280E 2E               [12] 1942 	add	a,r6
      00280F FE               [12] 1943 	mov	r6,a
      002810 ED               [12] 1944 	mov	a,r5
      002811 3F               [12] 1945 	addc	a,r7
      002812 FF               [12] 1946 	mov	r7,a
      002813 8E 82            [24] 1947 	mov	dpl,r6
      002815 8F 83            [24] 1948 	mov	dph,r7
      002817 E0               [24] 1949 	movx	a,@dptr
      002818 60 06            [24] 1950 	jz	00171$
      00281A 90 8C 0A         [24] 1951 	mov	dptr,#_n
      00281D E0               [24] 1952 	movx	a,@dptr
      00281E 14               [12] 1953 	dec	a
      00281F F0               [24] 1954 	movx	@dptr,a
      002820                       1955 00171$:
                                   1956 ;	life.c:165: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      002820 90 8C 04         [24] 1957 	mov	dptr,#_y
      002823 E0               [24] 1958 	movx	a,@dptr
      002824 FE               [12] 1959 	mov	r6,a
      002825 A3               [24] 1960 	inc	dptr
      002826 E0               [24] 1961 	movx	a,@dptr
      002827 C4               [12] 1962 	swap	a
      002828 23               [12] 1963 	rl	a
      002829 54 E0            [12] 1964 	anl	a,#0xe0
      00282B CE               [12] 1965 	xch	a,r6
      00282C C4               [12] 1966 	swap	a
      00282D 23               [12] 1967 	rl	a
      00282E CE               [12] 1968 	xch	a,r6
      00282F 6E               [12] 1969 	xrl	a,r6
      002830 CE               [12] 1970 	xch	a,r6
      002831 54 E0            [12] 1971 	anl	a,#0xe0
      002833 CE               [12] 1972 	xch	a,r6
      002834 6E               [12] 1973 	xrl	a,r6
      002835 FF               [12] 1974 	mov	r7,a
      002836 EE               [12] 1975 	mov	a,r6
      002837 24 02            [12] 1976 	add	a,#_nu
      002839 FC               [12] 1977 	mov	r4,a
      00283A EF               [12] 1978 	mov	a,r7
      00283B 34 88            [12] 1979 	addc	a,#(_nu >> 8)
      00283D FD               [12] 1980 	mov	r5,a
      00283E 90 8C 02         [24] 1981 	mov	dptr,#_x
      002841 E0               [24] 1982 	movx	a,@dptr
      002842 FA               [12] 1983 	mov	r2,a
      002843 A3               [24] 1984 	inc	dptr
      002844 E0               [24] 1985 	movx	a,@dptr
      002845 FB               [12] 1986 	mov	r3,a
      002846 EA               [12] 1987 	mov	a,r2
      002847 2C               [12] 1988 	add	a,r4
      002848 FC               [12] 1989 	mov	r4,a
      002849 EB               [12] 1990 	mov	a,r3
      00284A 3D               [12] 1991 	addc	a,r5
      00284B FD               [12] 1992 	mov	r5,a
      00284C 90 8C 0A         [24] 1993 	mov	dptr,#_n
      00284F A8 10            [24] 1994 	mov	r0,_bp
      002851 08               [12] 1995 	inc	r0
      002852 E0               [24] 1996 	movx	a,@dptr
      002853 F6               [12] 1997 	mov	@r0,a
      002854 A8 10            [24] 1998 	mov	r0,_bp
      002856 08               [12] 1999 	inc	r0
      002857 B6 03 02         [24] 2000 	cjne	@r0,#0x03,00612$
      00285A 80 1F            [24] 2001 	sjmp	00264$
      00285C                       2002 00612$:
      00285C A8 10            [24] 2003 	mov	r0,_bp
      00285E 08               [12] 2004 	inc	r0
      00285F B6 02 15         [24] 2005 	cjne	@r0,#0x02,00263$
      002862 EE               [12] 2006 	mov	a,r6
      002863 24 02            [12] 2007 	add	a,#_u
      002865 FE               [12] 2008 	mov	r6,a
      002866 EF               [12] 2009 	mov	a,r7
      002867 34 84            [12] 2010 	addc	a,#(_u >> 8)
      002869 FF               [12] 2011 	mov	r7,a
      00286A EA               [12] 2012 	mov	a,r2
      00286B 2E               [12] 2013 	add	a,r6
      00286C FA               [12] 2014 	mov	r2,a
      00286D EB               [12] 2015 	mov	a,r3
      00286E 3F               [12] 2016 	addc	a,r7
      00286F FB               [12] 2017 	mov	r3,a
      002870 8A 82            [24] 2018 	mov	dpl,r2
      002872 8B 83            [24] 2019 	mov	dph,r3
      002874 E0               [24] 2020 	movx	a,@dptr
      002875 70 04            [24] 2021 	jnz	00264$
      002877                       2022 00263$:
                                   2023 ;	assignBit
      002877 C2 00            [12] 2024 	clr	b0
      002879 80 02            [24] 2025 	sjmp	00265$
      00287B                       2026 00264$:
                                   2027 ;	assignBit
      00287B D2 00            [12] 2028 	setb	b0
      00287D                       2029 00265$:
      00287D A2 00            [12] 2030 	mov	c,b0
      00287F E4               [12] 2031 	clr	a
      002880 33               [12] 2032 	rlc	a
      002881 8C 82            [24] 2033 	mov	dpl,r4
      002883 8D 83            [24] 2034 	mov	dph,r5
      002885 F0               [24] 2035 	movx	@dptr,a
                                   2036 ;	life.c:157: for (x = 0; x < W; x++) {
      002886 90 8C 02         [24] 2037 	mov	dptr,#_x
      002889 E0               [24] 2038 	movx	a,@dptr
      00288A 24 01            [12] 2039 	add	a,#0x01
      00288C F0               [24] 2040 	movx	@dptr,a
      00288D A3               [24] 2041 	inc	dptr
      00288E E0               [24] 2042 	movx	a,@dptr
      00288F 34 00            [12] 2043 	addc	a,#0x00
      002891 F0               [24] 2044 	movx	@dptr,a
      002892 90 8C 02         [24] 2045 	mov	dptr,#_x
      002895 E0               [24] 2046 	movx	a,@dptr
      002896 FE               [12] 2047 	mov	r6,a
      002897 A3               [24] 2048 	inc	dptr
      002898 E0               [24] 2049 	movx	a,@dptr
      002899 FF               [12] 2050 	mov	r7,a
      00289A C3               [12] 2051 	clr	c
      00289B EE               [12] 2052 	mov	a,r6
      00289C 94 20            [12] 2053 	subb	a,#0x20
      00289E EF               [12] 2054 	mov	a,r7
      00289F 64 80            [12] 2055 	xrl	a,#0x80
      0028A1 94 80            [12] 2056 	subb	a,#0x80
      0028A3 50 03            [24] 2057 	jnc	00616$
      0028A5 02 26 D2         [24] 2058 	ljmp	00238$
      0028A8                       2059 00616$:
                                   2060 ;	life.c:156: for (y = 0; y < H; y++) {
      0028A8 90 8C 04         [24] 2061 	mov	dptr,#_y
      0028AB E0               [24] 2062 	movx	a,@dptr
      0028AC 24 01            [12] 2063 	add	a,#0x01
      0028AE F0               [24] 2064 	movx	@dptr,a
      0028AF A3               [24] 2065 	inc	dptr
      0028B0 E0               [24] 2066 	movx	a,@dptr
      0028B1 34 00            [12] 2067 	addc	a,#0x00
      0028B3 F0               [24] 2068 	movx	@dptr,a
      0028B4 90 8C 04         [24] 2069 	mov	dptr,#_y
      0028B7 E0               [24] 2070 	movx	a,@dptr
      0028B8 FE               [12] 2071 	mov	r6,a
      0028B9 A3               [24] 2072 	inc	dptr
      0028BA E0               [24] 2073 	movx	a,@dptr
      0028BB FF               [12] 2074 	mov	r7,a
      0028BC C3               [12] 2075 	clr	c
      0028BD EE               [12] 2076 	mov	a,r6
      0028BE 94 20            [12] 2077 	subb	a,#0x20
      0028C0 EF               [12] 2078 	mov	a,r7
      0028C1 64 80            [12] 2079 	xrl	a,#0x80
      0028C3 94 80            [12] 2080 	subb	a,#0x80
      0028C5 50 03            [24] 2081 	jnc	00617$
      0028C7 02 26 CB         [24] 2082 	ljmp	00240$
      0028CA                       2083 00617$:
                                   2084 ;	life.c:169: for (y = 0; y < H; y++)
      0028CA 90 8C 04         [24] 2085 	mov	dptr,#_y
      0028CD E4               [12] 2086 	clr	a
      0028CE F0               [24] 2087 	movx	@dptr,a
      0028CF A3               [24] 2088 	inc	dptr
      0028D0 F0               [24] 2089 	movx	@dptr,a
      0028D1                       2090 00244$:
                                   2091 ;	life.c:170: for (x = 0; x < W; x++) {
      0028D1 90 8C 02         [24] 2092 	mov	dptr,#_x
      0028D4 E4               [12] 2093 	clr	a
      0028D5 F0               [24] 2094 	movx	@dptr,a
      0028D6 A3               [24] 2095 	inc	dptr
      0028D7 F0               [24] 2096 	movx	@dptr,a
      0028D8                       2097 00242$:
                                   2098 ;	life.c:171: if (pu[y][x] != nu[y][x]) cycle2 = 0;
      0028D8 90 8C 04         [24] 2099 	mov	dptr,#_y
      0028DB E0               [24] 2100 	movx	a,@dptr
      0028DC FE               [12] 2101 	mov	r6,a
      0028DD A3               [24] 2102 	inc	dptr
      0028DE E0               [24] 2103 	movx	a,@dptr
      0028DF C4               [12] 2104 	swap	a
      0028E0 23               [12] 2105 	rl	a
      0028E1 54 E0            [12] 2106 	anl	a,#0xe0
      0028E3 CE               [12] 2107 	xch	a,r6
      0028E4 C4               [12] 2108 	swap	a
      0028E5 23               [12] 2109 	rl	a
      0028E6 CE               [12] 2110 	xch	a,r6
      0028E7 6E               [12] 2111 	xrl	a,r6
      0028E8 CE               [12] 2112 	xch	a,r6
      0028E9 54 E0            [12] 2113 	anl	a,#0xe0
      0028EB CE               [12] 2114 	xch	a,r6
      0028EC 6E               [12] 2115 	xrl	a,r6
      0028ED FF               [12] 2116 	mov	r7,a
      0028EE EE               [12] 2117 	mov	a,r6
      0028EF 24 02            [12] 2118 	add	a,#_pu
      0028F1 FC               [12] 2119 	mov	r4,a
      0028F2 EF               [12] 2120 	mov	a,r7
      0028F3 34 80            [12] 2121 	addc	a,#(_pu >> 8)
      0028F5 FD               [12] 2122 	mov	r5,a
      0028F6 90 8C 02         [24] 2123 	mov	dptr,#_x
      0028F9 E0               [24] 2124 	movx	a,@dptr
      0028FA FA               [12] 2125 	mov	r2,a
      0028FB A3               [24] 2126 	inc	dptr
      0028FC E0               [24] 2127 	movx	a,@dptr
      0028FD FB               [12] 2128 	mov	r3,a
      0028FE EA               [12] 2129 	mov	a,r2
      0028FF 2C               [12] 2130 	add	a,r4
      002900 F5 82            [12] 2131 	mov	dpl,a
      002902 EB               [12] 2132 	mov	a,r3
      002903 3D               [12] 2133 	addc	a,r5
      002904 F5 83            [12] 2134 	mov	dph,a
      002906 EE               [12] 2135 	mov	a,r6
      002907 24 02            [12] 2136 	add	a,#_nu
      002909 FE               [12] 2137 	mov	r6,a
      00290A EF               [12] 2138 	mov	a,r7
      00290B 34 88            [12] 2139 	addc	a,#(_nu >> 8)
      00290D FF               [12] 2140 	mov	r7,a
      00290E EA               [12] 2141 	mov	a,r2
      00290F 2E               [12] 2142 	add	a,r6
      002910 FA               [12] 2143 	mov	r2,a
      002911 EB               [12] 2144 	mov	a,r3
      002912 3F               [12] 2145 	addc	a,r7
      002913 FB               [12] 2146 	mov	r3,a
      002914 E0               [24] 2147 	movx	a,@dptr
      002915 FF               [12] 2148 	mov	r7,a
      002916 8A 82            [24] 2149 	mov	dpl,r2
      002918 8B 83            [24] 2150 	mov	dph,r3
      00291A E0               [24] 2151 	movx	a,@dptr
      00291B FA               [12] 2152 	mov	r2,a
      00291C EF               [12] 2153 	mov	a,r7
      00291D B5 02 02         [24] 2154 	cjne	a,ar2,00618$
      002920 80 05            [24] 2155 	sjmp	00175$
      002922                       2156 00618$:
      002922 90 8C 14         [24] 2157 	mov	dptr,#_cycle2
      002925 E4               [12] 2158 	clr	a
      002926 F0               [24] 2159 	movx	@dptr,a
      002927                       2160 00175$:
                                   2161 ;	life.c:172: if (u[y][x] != nu[y][x]) fixed = 0;
      002927 90 8C 04         [24] 2162 	mov	dptr,#_y
      00292A E0               [24] 2163 	movx	a,@dptr
      00292B FE               [12] 2164 	mov	r6,a
      00292C A3               [24] 2165 	inc	dptr
      00292D E0               [24] 2166 	movx	a,@dptr
      00292E C4               [12] 2167 	swap	a
      00292F 23               [12] 2168 	rl	a
      002930 54 E0            [12] 2169 	anl	a,#0xe0
      002932 CE               [12] 2170 	xch	a,r6
      002933 C4               [12] 2171 	swap	a
      002934 23               [12] 2172 	rl	a
      002935 CE               [12] 2173 	xch	a,r6
      002936 6E               [12] 2174 	xrl	a,r6
      002937 CE               [12] 2175 	xch	a,r6
      002938 54 E0            [12] 2176 	anl	a,#0xe0
      00293A CE               [12] 2177 	xch	a,r6
      00293B 6E               [12] 2178 	xrl	a,r6
      00293C FF               [12] 2179 	mov	r7,a
      00293D EE               [12] 2180 	mov	a,r6
      00293E 24 02            [12] 2181 	add	a,#_u
      002940 FC               [12] 2182 	mov	r4,a
      002941 EF               [12] 2183 	mov	a,r7
      002942 34 84            [12] 2184 	addc	a,#(_u >> 8)
      002944 FD               [12] 2185 	mov	r5,a
      002945 90 8C 02         [24] 2186 	mov	dptr,#_x
      002948 E0               [24] 2187 	movx	a,@dptr
      002949 FA               [12] 2188 	mov	r2,a
      00294A A3               [24] 2189 	inc	dptr
      00294B E0               [24] 2190 	movx	a,@dptr
      00294C FB               [12] 2191 	mov	r3,a
      00294D EA               [12] 2192 	mov	a,r2
      00294E 2C               [12] 2193 	add	a,r4
      00294F F5 82            [12] 2194 	mov	dpl,a
      002951 EB               [12] 2195 	mov	a,r3
      002952 3D               [12] 2196 	addc	a,r5
      002953 F5 83            [12] 2197 	mov	dph,a
      002955 EE               [12] 2198 	mov	a,r6
      002956 24 02            [12] 2199 	add	a,#_nu
      002958 FE               [12] 2200 	mov	r6,a
      002959 EF               [12] 2201 	mov	a,r7
      00295A 34 88            [12] 2202 	addc	a,#(_nu >> 8)
      00295C FF               [12] 2203 	mov	r7,a
      00295D EA               [12] 2204 	mov	a,r2
      00295E 2E               [12] 2205 	add	a,r6
      00295F FA               [12] 2206 	mov	r2,a
      002960 EB               [12] 2207 	mov	a,r3
      002961 3F               [12] 2208 	addc	a,r7
      002962 FB               [12] 2209 	mov	r3,a
      002963 E0               [24] 2210 	movx	a,@dptr
      002964 FF               [12] 2211 	mov	r7,a
      002965 8A 82            [24] 2212 	mov	dpl,r2
      002967 8B 83            [24] 2213 	mov	dph,r3
      002969 E0               [24] 2214 	movx	a,@dptr
      00296A FA               [12] 2215 	mov	r2,a
      00296B EF               [12] 2216 	mov	a,r7
      00296C B5 02 02         [24] 2217 	cjne	a,ar2,00619$
      00296F 80 05            [24] 2218 	sjmp	00177$
      002971                       2219 00619$:
      002971 90 8C 13         [24] 2220 	mov	dptr,#_fixed
      002974 E4               [12] 2221 	clr	a
      002975 F0               [24] 2222 	movx	@dptr,a
      002976                       2223 00177$:
                                   2224 ;	life.c:173: pu[y][x] = u[y][x];
      002976 90 8C 04         [24] 2225 	mov	dptr,#_y
      002979 E0               [24] 2226 	movx	a,@dptr
      00297A FE               [12] 2227 	mov	r6,a
      00297B A3               [24] 2228 	inc	dptr
      00297C E0               [24] 2229 	movx	a,@dptr
      00297D C4               [12] 2230 	swap	a
      00297E 23               [12] 2231 	rl	a
      00297F 54 E0            [12] 2232 	anl	a,#0xe0
      002981 CE               [12] 2233 	xch	a,r6
      002982 C4               [12] 2234 	swap	a
      002983 23               [12] 2235 	rl	a
      002984 CE               [12] 2236 	xch	a,r6
      002985 6E               [12] 2237 	xrl	a,r6
      002986 CE               [12] 2238 	xch	a,r6
      002987 54 E0            [12] 2239 	anl	a,#0xe0
      002989 CE               [12] 2240 	xch	a,r6
      00298A 6E               [12] 2241 	xrl	a,r6
      00298B FF               [12] 2242 	mov	r7,a
      00298C EE               [12] 2243 	mov	a,r6
      00298D 24 02            [12] 2244 	add	a,#_pu
      00298F FC               [12] 2245 	mov	r4,a
      002990 EF               [12] 2246 	mov	a,r7
      002991 34 80            [12] 2247 	addc	a,#(_pu >> 8)
      002993 FD               [12] 2248 	mov	r5,a
      002994 90 8C 02         [24] 2249 	mov	dptr,#_x
      002997 E0               [24] 2250 	movx	a,@dptr
      002998 FA               [12] 2251 	mov	r2,a
      002999 A3               [24] 2252 	inc	dptr
      00299A E0               [24] 2253 	movx	a,@dptr
      00299B FB               [12] 2254 	mov	r3,a
      00299C EA               [12] 2255 	mov	a,r2
      00299D 2C               [12] 2256 	add	a,r4
      00299E FC               [12] 2257 	mov	r4,a
      00299F EB               [12] 2258 	mov	a,r3
      0029A0 3D               [12] 2259 	addc	a,r5
      0029A1 FD               [12] 2260 	mov	r5,a
      0029A2 EE               [12] 2261 	mov	a,r6
      0029A3 24 02            [12] 2262 	add	a,#_u
      0029A5 FE               [12] 2263 	mov	r6,a
      0029A6 EF               [12] 2264 	mov	a,r7
      0029A7 34 84            [12] 2265 	addc	a,#(_u >> 8)
      0029A9 FF               [12] 2266 	mov	r7,a
      0029AA EA               [12] 2267 	mov	a,r2
      0029AB 2E               [12] 2268 	add	a,r6
      0029AC F5 82            [12] 2269 	mov	dpl,a
      0029AE EB               [12] 2270 	mov	a,r3
      0029AF 3F               [12] 2271 	addc	a,r7
      0029B0 F5 83            [12] 2272 	mov	dph,a
      0029B2 E0               [24] 2273 	movx	a,@dptr
      0029B3 8C 82            [24] 2274 	mov	dpl,r4
      0029B5 8D 83            [24] 2275 	mov	dph,r5
      0029B7 F0               [24] 2276 	movx	@dptr,a
                                   2277 ;	life.c:174: u[y][x] = nu[y][x];
      0029B8 90 8C 04         [24] 2278 	mov	dptr,#_y
      0029BB E0               [24] 2279 	movx	a,@dptr
      0029BC FE               [12] 2280 	mov	r6,a
      0029BD A3               [24] 2281 	inc	dptr
      0029BE E0               [24] 2282 	movx	a,@dptr
      0029BF C4               [12] 2283 	swap	a
      0029C0 23               [12] 2284 	rl	a
      0029C1 54 E0            [12] 2285 	anl	a,#0xe0
      0029C3 CE               [12] 2286 	xch	a,r6
      0029C4 C4               [12] 2287 	swap	a
      0029C5 23               [12] 2288 	rl	a
      0029C6 CE               [12] 2289 	xch	a,r6
      0029C7 6E               [12] 2290 	xrl	a,r6
      0029C8 CE               [12] 2291 	xch	a,r6
      0029C9 54 E0            [12] 2292 	anl	a,#0xe0
      0029CB CE               [12] 2293 	xch	a,r6
      0029CC 6E               [12] 2294 	xrl	a,r6
      0029CD FF               [12] 2295 	mov	r7,a
      0029CE EE               [12] 2296 	mov	a,r6
      0029CF 24 02            [12] 2297 	add	a,#_u
      0029D1 FC               [12] 2298 	mov	r4,a
      0029D2 EF               [12] 2299 	mov	a,r7
      0029D3 34 84            [12] 2300 	addc	a,#(_u >> 8)
      0029D5 FD               [12] 2301 	mov	r5,a
      0029D6 90 8C 02         [24] 2302 	mov	dptr,#_x
      0029D9 E0               [24] 2303 	movx	a,@dptr
      0029DA FA               [12] 2304 	mov	r2,a
      0029DB A3               [24] 2305 	inc	dptr
      0029DC E0               [24] 2306 	movx	a,@dptr
      0029DD FB               [12] 2307 	mov	r3,a
      0029DE EA               [12] 2308 	mov	a,r2
      0029DF 2C               [12] 2309 	add	a,r4
      0029E0 FC               [12] 2310 	mov	r4,a
      0029E1 EB               [12] 2311 	mov	a,r3
      0029E2 3D               [12] 2312 	addc	a,r5
      0029E3 FD               [12] 2313 	mov	r5,a
      0029E4 EE               [12] 2314 	mov	a,r6
      0029E5 24 02            [12] 2315 	add	a,#_nu
      0029E7 FE               [12] 2316 	mov	r6,a
      0029E8 EF               [12] 2317 	mov	a,r7
      0029E9 34 88            [12] 2318 	addc	a,#(_nu >> 8)
      0029EB FF               [12] 2319 	mov	r7,a
      0029EC EA               [12] 2320 	mov	a,r2
      0029ED 2E               [12] 2321 	add	a,r6
      0029EE F5 82            [12] 2322 	mov	dpl,a
      0029F0 EB               [12] 2323 	mov	a,r3
      0029F1 3F               [12] 2324 	addc	a,r7
      0029F2 F5 83            [12] 2325 	mov	dph,a
      0029F4 E0               [24] 2326 	movx	a,@dptr
      0029F5 8C 82            [24] 2327 	mov	dpl,r4
      0029F7 8D 83            [24] 2328 	mov	dph,r5
      0029F9 F0               [24] 2329 	movx	@dptr,a
                                   2330 ;	life.c:170: for (x = 0; x < W; x++) {
      0029FA 90 8C 02         [24] 2331 	mov	dptr,#_x
      0029FD E0               [24] 2332 	movx	a,@dptr
      0029FE 24 01            [12] 2333 	add	a,#0x01
      002A00 F0               [24] 2334 	movx	@dptr,a
      002A01 A3               [24] 2335 	inc	dptr
      002A02 E0               [24] 2336 	movx	a,@dptr
      002A03 34 00            [12] 2337 	addc	a,#0x00
      002A05 F0               [24] 2338 	movx	@dptr,a
      002A06 90 8C 02         [24] 2339 	mov	dptr,#_x
      002A09 E0               [24] 2340 	movx	a,@dptr
      002A0A FE               [12] 2341 	mov	r6,a
      002A0B A3               [24] 2342 	inc	dptr
      002A0C E0               [24] 2343 	movx	a,@dptr
      002A0D FF               [12] 2344 	mov	r7,a
      002A0E C3               [12] 2345 	clr	c
      002A0F EE               [12] 2346 	mov	a,r6
      002A10 94 20            [12] 2347 	subb	a,#0x20
      002A12 EF               [12] 2348 	mov	a,r7
      002A13 64 80            [12] 2349 	xrl	a,#0x80
      002A15 94 80            [12] 2350 	subb	a,#0x80
      002A17 50 03            [24] 2351 	jnc	00620$
      002A19 02 28 D8         [24] 2352 	ljmp	00242$
      002A1C                       2353 00620$:
                                   2354 ;	life.c:169: for (y = 0; y < H; y++)
      002A1C 90 8C 04         [24] 2355 	mov	dptr,#_y
      002A1F E0               [24] 2356 	movx	a,@dptr
      002A20 24 01            [12] 2357 	add	a,#0x01
      002A22 F0               [24] 2358 	movx	@dptr,a
      002A23 A3               [24] 2359 	inc	dptr
      002A24 E0               [24] 2360 	movx	a,@dptr
      002A25 34 00            [12] 2361 	addc	a,#0x00
      002A27 F0               [24] 2362 	movx	@dptr,a
      002A28 90 8C 04         [24] 2363 	mov	dptr,#_y
      002A2B E0               [24] 2364 	movx	a,@dptr
      002A2C FE               [12] 2365 	mov	r6,a
      002A2D A3               [24] 2366 	inc	dptr
      002A2E E0               [24] 2367 	movx	a,@dptr
      002A2F FF               [12] 2368 	mov	r7,a
      002A30 C3               [12] 2369 	clr	c
      002A31 EE               [12] 2370 	mov	a,r6
      002A32 94 20            [12] 2371 	subb	a,#0x20
      002A34 EF               [12] 2372 	mov	a,r7
      002A35 64 80            [12] 2373 	xrl	a,#0x80
      002A37 94 80            [12] 2374 	subb	a,#0x80
      002A39 50 03            [24] 2375 	jnc	00621$
      002A3B 02 28 D1         [24] 2376 	ljmp	00244$
      002A3E                       2377 00621$:
                                   2378 ;	life.c:205: if (fixed || cycle2) {
      002A3E 90 8C 13         [24] 2379 	mov	dptr,#_fixed
      002A41 E0               [24] 2380 	movx	a,@dptr
      002A42 70 09            [24] 2381 	jnz	00101$
      002A44 90 8C 14         [24] 2382 	mov	dptr,#_cycle2
      002A47 E0               [24] 2383 	movx	a,@dptr
      002A48 70 03            [24] 2384 	jnz	00623$
      002A4A 02 24 06         [24] 2385 	ljmp	00251$
      002A4D                       2386 00623$:
      002A4D                       2387 00101$:
                                   2388 ;	life.c:206: printstr("DONE\r\n");
      002A4D 7D 22            [12] 2389 	mov	r5,#___str_8
      002A4F 7E 2C            [12] 2390 	mov	r6,#(___str_8 >> 8)
      002A51 7F 80            [12] 2391 	mov	r7,#0x80
                                   2392 ;	life.c:47: return;
      002A53                       2393 00247$:
                                   2394 ;	life.c:45: for (; *s; s++) putchar(*s);
      002A53 8D 82            [24] 2395 	mov	dpl,r5
      002A55 8E 83            [24] 2396 	mov	dph,r6
      002A57 8F F0            [24] 2397 	mov	b,r7
      002A59 12 2A D5         [24] 2398 	lcall	__gptrget
      002A5C FC               [12] 2399 	mov	r4,a
      002A5D 60 10            [24] 2400 	jz	00182$
      002A5F 7B 00            [12] 2401 	mov	r3,#0x00
      002A61 8C 82            [24] 2402 	mov	dpl,r4
      002A63 8B 83            [24] 2403 	mov	dph,r3
      002A65 12 20 75         [24] 2404 	lcall	_putchar
      002A68 0D               [12] 2405 	inc	r5
                                   2406 ;	life.c:206: printstr("DONE\r\n");
      002A69 BD 00 E7         [24] 2407 	cjne	r5,#0x00,00247$
      002A6C 0E               [12] 2408 	inc	r6
      002A6D 80 E4            [24] 2409 	sjmp	00247$
      002A6F                       2410 00182$:
                                   2411 ;	life.c:207: (void)getchar();
      002A6F 12 20 7A         [24] 2412 	lcall	_getchar
                                   2413 ;	life.c:208: break;
      002A72                       2414 00104$:
                                   2415 ;	life.c:212: if (i1) {
      002A72 90 80 01         [24] 2416 	mov	dptr,#_i1
      002A75 E0               [24] 2417 	movx	a,@dptr
      002A76 60 25            [24] 2418 	jz	00257$
                                   2419 ;	life.c:213: printstr("BREAK\r\n");
      002A78 7D 29            [12] 2420 	mov	r5,#___str_9
      002A7A 7E 2C            [12] 2421 	mov	r6,#(___str_9 >> 8)
      002A7C 7F 80            [12] 2422 	mov	r7,#0x80
                                   2423 ;	life.c:47: return;
      002A7E                       2424 00254$:
                                   2425 ;	life.c:45: for (; *s; s++) putchar(*s);
      002A7E 8D 82            [24] 2426 	mov	dpl,r5
      002A80 8E 83            [24] 2427 	mov	dph,r6
      002A82 8F F0            [24] 2428 	mov	b,r7
      002A84 12 2A D5         [24] 2429 	lcall	__gptrget
      002A87 FC               [12] 2430 	mov	r4,a
      002A88 60 10            [24] 2431 	jz	00184$
      002A8A 7B 00            [12] 2432 	mov	r3,#0x00
      002A8C 8C 82            [24] 2433 	mov	dpl,r4
      002A8E 8B 83            [24] 2434 	mov	dph,r3
      002A90 12 20 75         [24] 2435 	lcall	_putchar
      002A93 0D               [12] 2436 	inc	r5
                                   2437 ;	life.c:213: printstr("BREAK\r\n");
      002A94 BD 00 E7         [24] 2438 	cjne	r5,#0x00,00254$
      002A97 0E               [12] 2439 	inc	r6
      002A98 80 E4            [24] 2440 	sjmp	00254$
      002A9A                       2441 00184$:
                                   2442 ;	life.c:214: (void)getchar();
      002A9A 12 20 7A         [24] 2443 	lcall	_getchar
      002A9D                       2444 00257$:
                                   2445 ;	life.c:187: for (i0 = 0; !i0; ) {
      002A9D 90 80 00         [24] 2446 	mov	dptr,#_i0
      002AA0 E0               [24] 2447 	movx	a,@dptr
      002AA1 70 03            [24] 2448 	jnz	00629$
      002AA3 02 20 C3         [24] 2449 	ljmp	00256$
      002AA6                       2450 00629$:
                                   2451 ;	life.c:218: EA = 0;
                                   2452 ;	assignBit
      002AA6 C2 AF            [12] 2453 	clr	_EA
                                   2454 ;	life.c:220: printstr("TERM\r\n");
      002AA8 7D 31            [12] 2455 	mov	r5,#___str_10
      002AAA 7E 2C            [12] 2456 	mov	r6,#(___str_10 >> 8)
      002AAC 7F 80            [12] 2457 	mov	r7,#0x80
                                   2458 ;	life.c:47: return;
      002AAE                       2459 00259$:
                                   2460 ;	life.c:45: for (; *s; s++) putchar(*s);
      002AAE 8D 82            [24] 2461 	mov	dpl,r5
      002AB0 8E 83            [24] 2462 	mov	dph,r6
      002AB2 8F F0            [24] 2463 	mov	b,r7
      002AB4 12 2A D5         [24] 2464 	lcall	__gptrget
      002AB7 FC               [12] 2465 	mov	r4,a
      002AB8 60 10            [24] 2466 	jz	00186$
      002ABA 7B 00            [12] 2467 	mov	r3,#0x00
      002ABC 8C 82            [24] 2468 	mov	dpl,r4
      002ABE 8B 83            [24] 2469 	mov	dph,r3
      002AC0 12 20 75         [24] 2470 	lcall	_putchar
      002AC3 0D               [12] 2471 	inc	r5
                                   2472 ;	life.c:220: printstr("TERM\r\n");
      002AC4 BD 00 E7         [24] 2473 	cjne	r5,#0x00,00259$
      002AC7 0E               [12] 2474 	inc	r6
      002AC8 80 E4            [24] 2475 	sjmp	00259$
      002ACA                       2476 00186$:
                                   2477 ;	life.c:221: (void)getchar();
      002ACA 12 20 7A         [24] 2478 	lcall	_getchar
                                   2479 ;	life.c:225: __endasm;
      002ACD 02 00 00         [24] 2480 	ljmp	0
                                   2481 ;	life.c:226: }
      002AD0 15 81            [12] 2482 	dec	sp
      002AD2 D0 10            [24] 2483 	pop	_bp
      002AD4 22               [24] 2484 	ret
                                   2485 	.area CSEG    (CODE)
                                   2486 	.area CONST   (CODE)
      002BE2                       2487 _digits:
      002BE2 30                    2488 	.db #0x30	; 48	'0'
      002BE3 31                    2489 	.db #0x31	; 49	'1'
      002BE4 32                    2490 	.db #0x32	; 50	'2'
      002BE5 33                    2491 	.db #0x33	; 51	'3'
      002BE6 34                    2492 	.db #0x34	; 52	'4'
      002BE7 35                    2493 	.db #0x35	; 53	'5'
      002BE8 36                    2494 	.db #0x36	; 54	'6'
      002BE9 37                    2495 	.db #0x37	; 55	'7'
      002BEA 38                    2496 	.db #0x38	; 56	'8'
      002BEB 39                    2497 	.db #0x39	; 57	'9'
      002BEC 61                    2498 	.db #0x61	; 97	'a'
      002BED 62                    2499 	.db #0x62	; 98	'b'
      002BEE 63                    2500 	.db #0x63	; 99	'c'
      002BEF 64                    2501 	.db #0x64	; 100	'd'
      002BF0 65                    2502 	.db #0x65	; 101	'e'
      002BF1 66                    2503 	.db #0x66	; 102	'f'
                                   2504 	.area CONST   (CODE)
      002BF2                       2505 ___str_0:
      002BF2 1B                    2506 	.db 0x1b
      002BF3 5B 32 4A              2507 	.ascii "[2J"
      002BF6 1B                    2508 	.db 0x1b
      002BF7 5B 6D                 2509 	.ascii "[m"
      002BF9 00                    2510 	.db 0x00
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area CONST   (CODE)
      002BFA                       2513 ___str_1:
      002BFA 0D                    2514 	.db 0x0d
      002BFB 0A                    2515 	.db 0x0a
      002BFC 00                    2516 	.db 0x00
                                   2517 	.area CSEG    (CODE)
                                   2518 	.area CONST   (CODE)
      002BFD                       2519 ___str_2:
      002BFD 5B 5D                 2520 	.ascii "[]"
      002BFF 00                    2521 	.db 0x00
                                   2522 	.area CSEG    (CODE)
                                   2523 	.area CONST   (CODE)
      002C00                       2524 ___str_3:
      002C00 23 23                 2525 	.ascii "##"
      002C02 00                    2526 	.db 0x00
                                   2527 	.area CSEG    (CODE)
                                   2528 	.area CONST   (CODE)
      002C03                       2529 ___str_4:
      002C03 3E                    2530 	.ascii ">"
      002C04 0D                    2531 	.db 0x0d
      002C05 0A                    2532 	.db 0x0a
      002C06 00                    2533 	.db 0x00
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
      002C07                       2536 ___str_5:
      002C07 1B                    2537 	.db 0x1b
      002C08 5B 32 4A              2538 	.ascii "[2J"
      002C0B 1B                    2539 	.db 0x1b
      002C0C 5B 6D 49 4E 49 54     2540 	.ascii "[mINIT"
      002C12 0D                    2541 	.db 0x0d
      002C13 0A                    2542 	.db 0x0a
      002C14 00                    2543 	.db 0x00
                                   2544 	.area CSEG    (CODE)
                                   2545 	.area CONST   (CODE)
      002C15                       2546 ___str_6:
      002C15 4C 4F 41 44           2547 	.ascii "LOAD"
      002C19 0D                    2548 	.db 0x0d
      002C1A 0A                    2549 	.db 0x0a
      002C1B 00                    2550 	.db 0x00
                                   2551 	.area CSEG    (CODE)
                                   2552 	.area CONST   (CODE)
      002C1C                       2553 ___str_7:
      002C1C 52 44 59              2554 	.ascii "RDY"
      002C1F 0D                    2555 	.db 0x0d
      002C20 0A                    2556 	.db 0x0a
      002C21 00                    2557 	.db 0x00
                                   2558 	.area CSEG    (CODE)
                                   2559 	.area CONST   (CODE)
      002C22                       2560 ___str_8:
      002C22 44 4F 4E 45           2561 	.ascii "DONE"
      002C26 0D                    2562 	.db 0x0d
      002C27 0A                    2563 	.db 0x0a
      002C28 00                    2564 	.db 0x00
                                   2565 	.area CSEG    (CODE)
                                   2566 	.area CONST   (CODE)
      002C29                       2567 ___str_9:
      002C29 42 52 45 41 4B        2568 	.ascii "BREAK"
      002C2E 0D                    2569 	.db 0x0d
      002C2F 0A                    2570 	.db 0x0a
      002C30 00                    2571 	.db 0x00
                                   2572 	.area CSEG    (CODE)
                                   2573 	.area CONST   (CODE)
      002C31                       2574 ___str_10:
      002C31 54 45 52 4D           2575 	.ascii "TERM"
      002C35 0D                    2576 	.db 0x0d
      002C36 0A                    2577 	.db 0x0a
      002C37 00                    2578 	.db 0x00
                                   2579 	.area CSEG    (CODE)
                                   2580 	.area XINIT   (CODE)
                                   2581 	.area CABS    (ABS,CODE)
