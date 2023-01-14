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
                                    142 	.globl _c
                                    143 	.globl _j
                                    144 	.globl _cycle2
                                    145 	.globl _fixed
                                    146 	.globl _generation
                                    147 	.globl _n
                                    148 	.globl _y1
                                    149 	.globl _x1
                                    150 	.globl _y
                                    151 	.globl _x
                                    152 	.globl _nu
                                    153 	.globl _u
                                    154 	.globl _pu
                                    155 	.globl _i1
                                    156 	.globl _i0
                                    157 ;--------------------------------------------------------
                                    158 ; special function registers
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           000080   162 _P0	=	0x0080
                           000081   163 _SP	=	0x0081
                           000082   164 _DPL	=	0x0082
                           000083   165 _DPH	=	0x0083
                           000087   166 _PCON	=	0x0087
                           000088   167 _TCON	=	0x0088
                           000089   168 _TMOD	=	0x0089
                           00008A   169 _TL0	=	0x008a
                           00008B   170 _TL1	=	0x008b
                           00008C   171 _TH0	=	0x008c
                           00008D   172 _TH1	=	0x008d
                           000090   173 _P1	=	0x0090
                           000098   174 _SCON	=	0x0098
                           000099   175 _SBUF	=	0x0099
                           0000A0   176 _P2	=	0x00a0
                           0000A8   177 _IE	=	0x00a8
                           0000B0   178 _P3	=	0x00b0
                           0000B8   179 _IP	=	0x00b8
                           0000C8   180 _T2CON	=	0x00c8
                           0000C9   181 _T2MOD	=	0x00c9
                           0000CA   182 _RCAP2L	=	0x00ca
                           0000CB   183 _RCAP2H	=	0x00cb
                           0000CC   184 _TL2	=	0x00cc
                           0000CD   185 _TH2	=	0x00cd
                           0000D0   186 _PSW	=	0x00d0
                           0000E0   187 _ACC	=	0x00e0
                           0000E0   188 _A	=	0x00e0
                           0000F0   189 _B	=	0x00f0
                                    190 ;--------------------------------------------------------
                                    191 ; special function bits
                                    192 ;--------------------------------------------------------
                                    193 	.area RSEG    (ABS,DATA)
      000000                        194 	.org 0x0000
                           000080   195 _P0_0	=	0x0080
                           000081   196 _P0_1	=	0x0081
                           000082   197 _P0_2	=	0x0082
                           000083   198 _P0_3	=	0x0083
                           000084   199 _P0_4	=	0x0084
                           000085   200 _P0_5	=	0x0085
                           000086   201 _P0_6	=	0x0086
                           000087   202 _P0_7	=	0x0087
                           000088   203 _IT0	=	0x0088
                           000089   204 _IE0	=	0x0089
                           00008A   205 _IT1	=	0x008a
                           00008B   206 _IE1	=	0x008b
                           00008C   207 _TR0	=	0x008c
                           00008D   208 _TF0	=	0x008d
                           00008E   209 _TR1	=	0x008e
                           00008F   210 _TF1	=	0x008f
                           000090   211 _P1_0	=	0x0090
                           000091   212 _P1_1	=	0x0091
                           000092   213 _P1_2	=	0x0092
                           000093   214 _P1_3	=	0x0093
                           000094   215 _P1_4	=	0x0094
                           000095   216 _P1_5	=	0x0095
                           000096   217 _P1_6	=	0x0096
                           000097   218 _P1_7	=	0x0097
                           000090   219 _T2	=	0x0090
                           000091   220 _T2EX	=	0x0091
                           000098   221 _RI	=	0x0098
                           000099   222 _TI	=	0x0099
                           00009A   223 _RB8	=	0x009a
                           00009B   224 _TB8	=	0x009b
                           00009C   225 _REN	=	0x009c
                           00009D   226 _SM2	=	0x009d
                           00009E   227 _SM1	=	0x009e
                           00009F   228 _SM0	=	0x009f
                           0000A0   229 _P2_0	=	0x00a0
                           0000A1   230 _P2_1	=	0x00a1
                           0000A2   231 _P2_2	=	0x00a2
                           0000A3   232 _P2_3	=	0x00a3
                           0000A4   233 _P2_4	=	0x00a4
                           0000A5   234 _P2_5	=	0x00a5
                           0000A6   235 _P2_6	=	0x00a6
                           0000A7   236 _P2_7	=	0x00a7
                           0000A8   237 _EX0	=	0x00a8
                           0000A9   238 _ET0	=	0x00a9
                           0000AA   239 _EX1	=	0x00aa
                           0000AB   240 _ET1	=	0x00ab
                           0000AC   241 _ES	=	0x00ac
                           0000AD   242 _ET2	=	0x00ad
                           0000AF   243 _EA	=	0x00af
                           0000B0   244 _P3_0	=	0x00b0
                           0000B1   245 _P3_1	=	0x00b1
                           0000B2   246 _P3_2	=	0x00b2
                           0000B3   247 _P3_3	=	0x00b3
                           0000B4   248 _P3_4	=	0x00b4
                           0000B5   249 _P3_5	=	0x00b5
                           0000B6   250 _P3_6	=	0x00b6
                           0000B7   251 _P3_7	=	0x00b7
                           0000B0   252 _RXD	=	0x00b0
                           0000B1   253 _TXD	=	0x00b1
                           0000B2   254 _INT0	=	0x00b2
                           0000B3   255 _INT1	=	0x00b3
                           0000B4   256 _T0	=	0x00b4
                           0000B5   257 _T1	=	0x00b5
                           0000B6   258 _WR	=	0x00b6
                           0000B7   259 _RD	=	0x00b7
                           0000B8   260 _PX0	=	0x00b8
                           0000B9   261 _PT0	=	0x00b9
                           0000BA   262 _PX1	=	0x00ba
                           0000BB   263 _PT1	=	0x00bb
                           0000BC   264 _PS	=	0x00bc
                           0000BD   265 _PT2	=	0x00bd
                           0000C8   266 _T2CON_0	=	0x00c8
                           0000C9   267 _T2CON_1	=	0x00c9
                           0000CA   268 _T2CON_2	=	0x00ca
                           0000CB   269 _T2CON_3	=	0x00cb
                           0000CC   270 _T2CON_4	=	0x00cc
                           0000CD   271 _T2CON_5	=	0x00cd
                           0000CE   272 _T2CON_6	=	0x00ce
                           0000CF   273 _T2CON_7	=	0x00cf
                           0000C8   274 _CP_RL2	=	0x00c8
                           0000C9   275 _C_T2	=	0x00c9
                           0000CA   276 _TR2	=	0x00ca
                           0000CB   277 _EXEN2	=	0x00cb
                           0000CC   278 _TCLK	=	0x00cc
                           0000CD   279 _RCLK	=	0x00cd
                           0000CE   280 _EXF2	=	0x00ce
                           0000CF   281 _TF2	=	0x00cf
                           0000D0   282 _P	=	0x00d0
                           0000D1   283 _FL	=	0x00d1
                           0000D2   284 _OV	=	0x00d2
                           0000D3   285 _RS0	=	0x00d3
                           0000D4   286 _RS1	=	0x00d4
                           0000D5   287 _F0	=	0x00d5
                           0000D6   288 _AC	=	0x00d6
                           0000D7   289 _CY	=	0x00d7
                                    290 ;--------------------------------------------------------
                                    291 ; overlayable register banks
                                    292 ;--------------------------------------------------------
                                    293 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        294 	.ds 8
                                    295 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        296 	.ds 8
                                    297 ;--------------------------------------------------------
                                    298 ; overlayable bit register bank
                                    299 ;--------------------------------------------------------
                                    300 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        301 bits:
      000020                        302 	.ds 1
                           008000   303 	b0 = bits[0]
                           008100   304 	b1 = bits[1]
                           008200   305 	b2 = bits[2]
                           008300   306 	b3 = bits[3]
                           008400   307 	b4 = bits[4]
                           008500   308 	b5 = bits[5]
                           008600   309 	b6 = bits[6]
                           008700   310 	b7 = bits[7]
                                    311 ;--------------------------------------------------------
                                    312 ; internal ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area DSEG    (DATA)
                                    315 ;--------------------------------------------------------
                                    316 ; overlayable items in internal ram 
                                    317 ;--------------------------------------------------------
                                    318 ;--------------------------------------------------------
                                    319 ; Stack segment in internal ram 
                                    320 ;--------------------------------------------------------
                                    321 	.area	SSEG
      000021                        322 __start__stack:
      000021                        323 	.ds	1
                                    324 
                                    325 ;--------------------------------------------------------
                                    326 ; indirectly addressable internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area ISEG    (DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; absolute internal ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area IABS    (ABS,DATA)
                                    333 	.area IABS    (ABS,DATA)
                                    334 ;--------------------------------------------------------
                                    335 ; bit data
                                    336 ;--------------------------------------------------------
                                    337 	.area BSEG    (BIT)
                                    338 ;--------------------------------------------------------
                                    339 ; paged external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area PSEG    (PAG,XDATA)
                                    342 ;--------------------------------------------------------
                                    343 ; external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area XSEG    (XDATA)
      008000                        346 _i0::
      008000                        347 	.ds 1
      008001                        348 _i1::
      008001                        349 	.ds 1
      008002                        350 _pu::
      008002                        351 	.ds 1024
      008402                        352 _u::
      008402                        353 	.ds 1024
      008802                        354 _nu::
      008802                        355 	.ds 1024
      008C02                        356 _x::
      008C02                        357 	.ds 2
      008C04                        358 _y::
      008C04                        359 	.ds 2
      008C06                        360 _x1::
      008C06                        361 	.ds 2
      008C08                        362 _y1::
      008C08                        363 	.ds 2
      008C0A                        364 _n::
      008C0A                        365 	.ds 1
      008C0B                        366 _generation::
      008C0B                        367 	.ds 8
      008C13                        368 _fixed::
      008C13                        369 	.ds 1
      008C14                        370 _cycle2::
      008C14                        371 	.ds 1
      008C15                        372 _j::
      008C15                        373 	.ds 2
      008C17                        374 _c::
      008C17                        375 	.ds 2
                                    376 ;--------------------------------------------------------
                                    377 ; absolute external ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area XABS    (ABS,XDATA)
                                    380 ;--------------------------------------------------------
                                    381 ; external initialized ram data
                                    382 ;--------------------------------------------------------
                                    383 	.area XISEG   (XDATA)
                                    384 	.area HOME    (CODE)
                                    385 	.area GSINIT0 (CODE)
                                    386 	.area GSINIT1 (CODE)
                                    387 	.area GSINIT2 (CODE)
                                    388 	.area GSINIT3 (CODE)
                                    389 	.area GSINIT4 (CODE)
                                    390 	.area GSINIT5 (CODE)
                                    391 	.area GSINIT  (CODE)
                                    392 	.area GSFINAL (CODE)
                                    393 	.area CSEG    (CODE)
                                    394 ;--------------------------------------------------------
                                    395 ; interrupt vector 
                                    396 ;--------------------------------------------------------
                                    397 	.area HOME    (CODE)
      002000                        398 __interrupt_vect:
      002000 02 20 19         [24]  399 	ljmp	__sdcc_gsinit_startup
      002003 02 20 83         [24]  400 	ljmp	_int0
      002006                        401 	.ds	5
      00200B 32               [24]  402 	reti
      00200C                        403 	.ds	7
      002013 02 20 96         [24]  404 	ljmp	_int1
                                    405 ;--------------------------------------------------------
                                    406 ; global & static initialisations
                                    407 ;--------------------------------------------------------
                                    408 	.area HOME    (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.area GSFINAL (CODE)
                                    411 	.area GSINIT  (CODE)
                                    412 	.globl __sdcc_gsinit_startup
                                    413 	.globl __sdcc_program_startup
                                    414 	.globl __start__stack
                                    415 	.globl __mcs51_genXINIT
                                    416 	.globl __mcs51_genXRAMCLEAR
                                    417 	.globl __mcs51_genRAMCLEAR
                                    418 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  419 	ljmp	__sdcc_program_startup
                                    420 ;--------------------------------------------------------
                                    421 ; Home
                                    422 ;--------------------------------------------------------
                                    423 	.area HOME    (CODE)
                                    424 	.area HOME    (CODE)
      002016                        425 __sdcc_program_startup:
      002016 02 23 5D         [24]  426 	ljmp	_main
                                    427 ;	return from main will return to caller
                                    428 ;--------------------------------------------------------
                                    429 ; code
                                    430 ;--------------------------------------------------------
                                    431 	.area CSEG    (CODE)
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'putchar'
                                    434 ;------------------------------------------------------------
                                    435 ;c                         Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	life.c:7: int putchar(int c) __naked {
                                    438 ;	-----------------------------------------
                                    439 ;	 function putchar
                                    440 ;	-----------------------------------------
      002075                        441 _putchar:
                                    442 ;	naked function: no prologue.
                                    443 ;	life.c:12: __endasm;
      002075 E5 82            [12]  444 	mov	a, dpl
      002077 02 00 30         [24]  445 	ljmp	0x0030
                                    446 ;	life.c:13: }
                                    447 ;	naked function: no epilogue.
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'getchar'
                                    450 ;------------------------------------------------------------
                                    451 ;	life.c:15: int getchar(void) __naked {
                                    452 ;	-----------------------------------------
                                    453 ;	 function getchar
                                    454 ;	-----------------------------------------
      00207A                        455 _getchar:
                                    456 ;	naked function: no prologue.
                                    457 ;	life.c:21: __endasm;
      00207A 12 00 32         [24]  458 	lcall	0x0032
      00207D F5 82            [12]  459 	mov	dpl, a
      00207F 75 83 00         [24]  460 	mov	dph, #0
      002082 22               [24]  461 	ret
                                    462 ;	life.c:22: }
                                    463 ;	naked function: no epilogue.
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'int0'
                                    466 ;------------------------------------------------------------
                                    467 ;	life.c:65: void int0(void) __interrupt 0 __using 1 {
                                    468 ;	-----------------------------------------
                                    469 ;	 function int0
                                    470 ;	-----------------------------------------
      002083                        471 _int0:
                           00000F   472 	ar7 = 0x0f
                           00000E   473 	ar6 = 0x0e
                           00000D   474 	ar5 = 0x0d
                           00000C   475 	ar4 = 0x0c
                           00000B   476 	ar3 = 0x0b
                           00000A   477 	ar2 = 0x0a
                           000009   478 	ar1 = 0x09
                           000008   479 	ar0 = 0x08
      002083 C0 E0            [24]  480 	push	acc
      002085 C0 82            [24]  481 	push	dpl
      002087 C0 83            [24]  482 	push	dph
                                    483 ;	life.c:66: i0 = 1;
      002089 90 80 00         [24]  484 	mov	dptr,#_i0
      00208C 74 01            [12]  485 	mov	a,#0x01
      00208E F0               [24]  486 	movx	@dptr,a
                                    487 ;	life.c:67: }
      00208F D0 83            [24]  488 	pop	dph
      002091 D0 82            [24]  489 	pop	dpl
      002093 D0 E0            [24]  490 	pop	acc
      002095 32               [24]  491 	reti
                                    492 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    493 ;	eliminated unneeded push/pop psw
                                    494 ;	eliminated unneeded push/pop b
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'int1'
                                    497 ;------------------------------------------------------------
                                    498 ;	life.c:70: void int1(void) __interrupt 2 __using 1 {
                                    499 ;	-----------------------------------------
                                    500 ;	 function int1
                                    501 ;	-----------------------------------------
      002096                        502 _int1:
      002096 C0 E0            [24]  503 	push	acc
      002098 C0 82            [24]  504 	push	dpl
      00209A C0 83            [24]  505 	push	dph
                                    506 ;	life.c:71: i1 = 1;
      00209C 90 80 01         [24]  507 	mov	dptr,#_i1
      00209F 74 01            [12]  508 	mov	a,#0x01
      0020A1 F0               [24]  509 	movx	@dptr,a
                                    510 ;	life.c:72: }
      0020A2 D0 83            [24]  511 	pop	dph
      0020A4 D0 82            [24]  512 	pop	dpl
      0020A6 D0 E0            [24]  513 	pop	acc
      0020A8 32               [24]  514 	reti
                                    515 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    516 ;	eliminated unneeded push/pop psw
                                    517 ;	eliminated unneeded push/pop b
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'show'
                                    520 ;------------------------------------------------------------
                                    521 ;hdr                       Allocated to registers r7 
                                    522 ;__1966080003              Allocated to registers 
                                    523 ;s                         Allocated to registers r5 r6 r7 
                                    524 ;__2621440001              Allocated to registers r6 r7 
                                    525 ;a                         Allocated to registers r4 r5 
                                    526 ;__1966080006              Allocated to registers 
                                    527 ;s                         Allocated to registers r5 r6 r7 
                                    528 ;__3276800009              Allocated to registers 
                                    529 ;s                         Allocated to registers r5 r6 r7 
                                    530 ;__3276800011              Allocated to registers 
                                    531 ;s                         Allocated to registers r5 r6 r7 
                                    532 ;__2621440013              Allocated to registers 
                                    533 ;s                         Allocated to registers r5 r6 r7 
                                    534 ;------------------------------------------------------------
                                    535 ;	life.c:99: void show(char hdr) {
                                    536 ;	-----------------------------------------
                                    537 ;	 function show
                                    538 ;	-----------------------------------------
      0020A9                        539 _show:
                           000007   540 	ar7 = 0x07
                           000006   541 	ar6 = 0x06
                           000005   542 	ar5 = 0x05
                           000004   543 	ar4 = 0x04
                           000003   544 	ar3 = 0x03
                           000002   545 	ar2 = 0x02
                           000001   546 	ar1 = 0x01
                           000000   547 	ar0 = 0x00
                                    548 ;	life.c:100: if (hdr) {
      0020A9 E5 82            [12]  549 	mov	a,dpl
      0020AB FF               [12]  550 	mov	r7,a
      0020AC 70 03            [24]  551 	jnz	00241$
      0020AE 02 22 71         [24]  552 	ljmp	00102$
      0020B1                        553 00241$:
                                    554 ;	life.c:101: printstr("\033[2J\033[m");
      0020B1 7D EC            [12]  555 	mov	r5,#___str_0
      0020B3 7E 2B            [12]  556 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  557 	mov	r7,#0x80
                                    558 ;	life.c:48: return;
      0020B7                        559 00128$:
                                    560 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  561 	mov	dpl,r5
      0020B9 8E 83            [24]  562 	mov	dph,r6
      0020BB 8F F0            [24]  563 	mov	b,r7
      0020BD 12 2A B4         [24]  564 	lcall	__gptrget
      0020C0 FC               [12]  565 	mov	r4,a
      0020C1 60 10            [24]  566 	jz	00109$
      0020C3 7B 00            [12]  567 	mov	r3,#0x00
      0020C5 8C 82            [24]  568 	mov	dpl,r4
      0020C7 8B 83            [24]  569 	mov	dph,r3
      0020C9 12 20 75         [24]  570 	lcall	_putchar
      0020CC 0D               [12]  571 	inc	r5
                                    572 ;	life.c:101: printstr("\033[2J\033[m");
      0020CD BD 00 E7         [24]  573 	cjne	r5,#0x00,00128$
      0020D0 0E               [12]  574 	inc	r6
      0020D1 80 E4            [24]  575 	sjmp	00128$
      0020D3                        576 00109$:
                                    577 ;	life.c:91: for (j = 0; j < 4; j++) {
      0020D3 90 8C 15         [24]  578 	mov	dptr,#_j
      0020D6 E4               [12]  579 	clr	a
      0020D7 F0               [24]  580 	movx	@dptr,a
      0020D8 A3               [24]  581 	inc	dptr
      0020D9 F0               [24]  582 	movx	@dptr,a
      0020DA                        583 00130$:
                                    584 ;	life.c:92: print16x(generation[3 - j]);
      0020DA 90 8C 15         [24]  585 	mov	dptr,#_j
      0020DD E0               [24]  586 	movx	a,@dptr
      0020DE FE               [12]  587 	mov	r6,a
      0020DF A3               [24]  588 	inc	dptr
      0020E0 E0               [24]  589 	movx	a,@dptr
      0020E1 74 03            [12]  590 	mov	a,#0x03
      0020E3 C3               [12]  591 	clr	c
      0020E4 9E               [12]  592 	subb	a,r6
      0020E5 FE               [12]  593 	mov	r6,a
      0020E6 C2 D5            [12]  594 	clr	F0
      0020E8 75 F0 02         [24]  595 	mov	b,#0x02
      0020EB EE               [12]  596 	mov	a,r6
      0020EC 30 E7 04         [24]  597 	jnb	acc.7,00244$
      0020EF B2 D5            [12]  598 	cpl	F0
      0020F1 F4               [12]  599 	cpl	a
      0020F2 04               [12]  600 	inc	a
      0020F3                        601 00244$:
      0020F3 A4               [48]  602 	mul	ab
      0020F4 30 D5 0A         [24]  603 	jnb	F0,00245$
      0020F7 F4               [12]  604 	cpl	a
      0020F8 24 01            [12]  605 	add	a,#0x01
      0020FA C5 F0            [12]  606 	xch	a,b
      0020FC F4               [12]  607 	cpl	a
      0020FD 34 00            [12]  608 	addc	a,#0x00
      0020FF C5 F0            [12]  609 	xch	a,b
      002101                        610 00245$:
      002101 24 0B            [12]  611 	add	a,#_generation
      002103 F5 82            [12]  612 	mov	dpl,a
      002105 74 8C            [12]  613 	mov	a,#(_generation >> 8)
      002107 35 F0            [12]  614 	addc	a,b
      002109 F5 83            [12]  615 	mov	dph,a
      00210B E0               [24]  616 	movx	a,@dptr
      00210C FE               [12]  617 	mov	r6,a
      00210D A3               [24]  618 	inc	dptr
      00210E E0               [24]  619 	movx	a,@dptr
      00210F FF               [12]  620 	mov	r7,a
      002110 8E 04            [24]  621 	mov	ar4,r6
                                    622 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      002112 EF               [12]  623 	mov	a,r7
      002113 FD               [12]  624 	mov	r5,a
      002114 C4               [12]  625 	swap	a
      002115 54 0F            [12]  626 	anl	a,#0x0f
      002117 30 E3 02         [24]  627 	jnb	acc.3,00246$
      00211A 44 F0            [12]  628 	orl	a,#0xf0
      00211C                        629 00246$:
      00211C FE               [12]  630 	mov	r6,a
      00211D 33               [12]  631 	rlc	a
      00211E 95 E0            [12]  632 	subb	a,acc
      002120 53 06 0F         [24]  633 	anl	ar6,#0x0f
      002123 7F 00            [12]  634 	mov	r7,#0x00
      002125 EE               [12]  635 	mov	a,r6
      002126 24 DC            [12]  636 	add	a,#_digits
      002128 F5 82            [12]  637 	mov	dpl,a
      00212A EF               [12]  638 	mov	a,r7
      00212B 34 2B            [12]  639 	addc	a,#(_digits >> 8)
      00212D F5 83            [12]  640 	mov	dph,a
      00212F E4               [12]  641 	clr	a
      002130 93               [24]  642 	movc	a,@a+dptr
      002131 FF               [12]  643 	mov	r7,a
      002132 7E 00            [12]  644 	mov	r6,#0x00
      002134 8F 82            [24]  645 	mov	dpl,r7
      002136 8E 83            [24]  646 	mov	dph,r6
      002138 12 20 75         [24]  647 	lcall	_putchar
                                    648 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      00213B 8D 07            [24]  649 	mov	ar7,r5
      00213D 53 07 0F         [24]  650 	anl	ar7,#0x0f
      002140 7E 00            [12]  651 	mov	r6,#0x00
      002142 EF               [12]  652 	mov	a,r7
      002143 24 DC            [12]  653 	add	a,#_digits
      002145 F5 82            [12]  654 	mov	dpl,a
      002147 EE               [12]  655 	mov	a,r6
      002148 34 2B            [12]  656 	addc	a,#(_digits >> 8)
      00214A F5 83            [12]  657 	mov	dph,a
      00214C E4               [12]  658 	clr	a
      00214D 93               [24]  659 	movc	a,@a+dptr
      00214E FF               [12]  660 	mov	r7,a
      00214F 7E 00            [12]  661 	mov	r6,#0x00
      002151 8F 82            [24]  662 	mov	dpl,r7
      002153 8E 83            [24]  663 	mov	dph,r6
      002155 12 20 75         [24]  664 	lcall	_putchar
                                    665 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      002158 8C 06            [24]  666 	mov	ar6,r4
      00215A ED               [12]  667 	mov	a,r5
      00215B C4               [12]  668 	swap	a
      00215C CE               [12]  669 	xch	a,r6
      00215D C4               [12]  670 	swap	a
      00215E 54 0F            [12]  671 	anl	a,#0x0f
      002160 6E               [12]  672 	xrl	a,r6
      002161 CE               [12]  673 	xch	a,r6
      002162 54 0F            [12]  674 	anl	a,#0x0f
      002164 CE               [12]  675 	xch	a,r6
      002165 6E               [12]  676 	xrl	a,r6
      002166 CE               [12]  677 	xch	a,r6
      002167 30 E3 02         [24]  678 	jnb	acc.3,00247$
      00216A 44 F0            [12]  679 	orl	a,#0xf0
      00216C                        680 00247$:
      00216C 53 06 0F         [24]  681 	anl	ar6,#0x0f
      00216F 7F 00            [12]  682 	mov	r7,#0x00
      002171 EE               [12]  683 	mov	a,r6
      002172 24 DC            [12]  684 	add	a,#_digits
      002174 F5 82            [12]  685 	mov	dpl,a
      002176 EF               [12]  686 	mov	a,r7
      002177 34 2B            [12]  687 	addc	a,#(_digits >> 8)
      002179 F5 83            [12]  688 	mov	dph,a
      00217B E4               [12]  689 	clr	a
      00217C 93               [24]  690 	movc	a,@a+dptr
      00217D FF               [12]  691 	mov	r7,a
      00217E 7E 00            [12]  692 	mov	r6,#0x00
      002180 8F 82            [24]  693 	mov	dpl,r7
      002182 8E 83            [24]  694 	mov	dph,r6
      002184 12 20 75         [24]  695 	lcall	_putchar
                                    696 ;	life.c:40: putchar(digits[a & 0xf]);
      002187 53 04 0F         [24]  697 	anl	ar4,#0x0f
      00218A 7D 00            [12]  698 	mov	r5,#0x00
      00218C EC               [12]  699 	mov	a,r4
      00218D 24 DC            [12]  700 	add	a,#_digits
      00218F F5 82            [12]  701 	mov	dpl,a
      002191 ED               [12]  702 	mov	a,r5
      002192 34 2B            [12]  703 	addc	a,#(_digits >> 8)
      002194 F5 83            [12]  704 	mov	dph,a
      002196 E4               [12]  705 	clr	a
      002197 93               [24]  706 	movc	a,@a+dptr
      002198 FF               [12]  707 	mov	r7,a
      002199 7E 00            [12]  708 	mov	r6,#0x00
      00219B 8F 82            [24]  709 	mov	dpl,r7
      00219D 8E 83            [24]  710 	mov	dph,r6
      00219F 12 20 75         [24]  711 	lcall	_putchar
                                    712 ;	life.c:93: if (j < 3) putchar(' ');
      0021A2 90 8C 15         [24]  713 	mov	dptr,#_j
      0021A5 E0               [24]  714 	movx	a,@dptr
      0021A6 FE               [12]  715 	mov	r6,a
      0021A7 A3               [24]  716 	inc	dptr
      0021A8 E0               [24]  717 	movx	a,@dptr
      0021A9 FF               [12]  718 	mov	r7,a
      0021AA C3               [12]  719 	clr	c
      0021AB EE               [12]  720 	mov	a,r6
      0021AC 94 03            [12]  721 	subb	a,#0x03
      0021AE EF               [12]  722 	mov	a,r7
      0021AF 64 80            [12]  723 	xrl	a,#0x80
      0021B1 94 80            [12]  724 	subb	a,#0x80
      0021B3 50 06            [24]  725 	jnc	00131$
      0021B5 90 00 20         [24]  726 	mov	dptr,#0x0020
      0021B8 12 20 75         [24]  727 	lcall	_putchar
      0021BB                        728 00131$:
                                    729 ;	life.c:91: for (j = 0; j < 4; j++) {
      0021BB 90 8C 15         [24]  730 	mov	dptr,#_j
      0021BE E0               [24]  731 	movx	a,@dptr
      0021BF 24 01            [12]  732 	add	a,#0x01
      0021C1 F0               [24]  733 	movx	@dptr,a
      0021C2 A3               [24]  734 	inc	dptr
      0021C3 E0               [24]  735 	movx	a,@dptr
      0021C4 34 00            [12]  736 	addc	a,#0x00
      0021C6 F0               [24]  737 	movx	@dptr,a
      0021C7 90 8C 15         [24]  738 	mov	dptr,#_j
      0021CA E0               [24]  739 	movx	a,@dptr
      0021CB FE               [12]  740 	mov	r6,a
      0021CC A3               [24]  741 	inc	dptr
      0021CD E0               [24]  742 	movx	a,@dptr
      0021CE FF               [12]  743 	mov	r7,a
      0021CF C3               [12]  744 	clr	c
      0021D0 EE               [12]  745 	mov	a,r6
      0021D1 94 04            [12]  746 	subb	a,#0x04
      0021D3 EF               [12]  747 	mov	a,r7
      0021D4 64 80            [12]  748 	xrl	a,#0x80
      0021D6 94 80            [12]  749 	subb	a,#0x80
      0021D8 50 03            [24]  750 	jnc	00249$
      0021DA 02 20 DA         [24]  751 	ljmp	00130$
      0021DD                        752 00249$:
                                    753 ;	life.c:103: printstr("\r\n");
      0021DD 7D F4            [12]  754 	mov	r5,#___str_1
      0021DF 7E 2B            [12]  755 	mov	r6,#(___str_1 >> 8)
      0021E1 7F 80            [12]  756 	mov	r7,#0x80
                                    757 ;	life.c:48: return;
      0021E3                        758 00133$:
                                    759 ;	life.c:46: for (; *s; s++) putchar(*s);
      0021E3 8D 82            [24]  760 	mov	dpl,r5
      0021E5 8E 83            [24]  761 	mov	dph,r6
      0021E7 8F F0            [24]  762 	mov	b,r7
      0021E9 12 2A B4         [24]  763 	lcall	__gptrget
      0021EC FC               [12]  764 	mov	r4,a
      0021ED 60 10            [24]  765 	jz	00116$
      0021EF 7B 00            [12]  766 	mov	r3,#0x00
      0021F1 8C 82            [24]  767 	mov	dpl,r4
      0021F3 8B 83            [24]  768 	mov	dph,r3
      0021F5 12 20 75         [24]  769 	lcall	_putchar
      0021F8 0D               [12]  770 	inc	r5
                                    771 ;	life.c:103: printstr("\r\n");
      0021F9 BD 00 E7         [24]  772 	cjne	r5,#0x00,00133$
      0021FC 0E               [12]  773 	inc	r6
      0021FD 80 E4            [24]  774 	sjmp	00133$
      0021FF                        775 00116$:
                                    776 ;	life.c:82: for (j = 0; j < 4; j++) {
      0021FF 90 8C 15         [24]  777 	mov	dptr,#_j
      002202 E4               [12]  778 	clr	a
      002203 F0               [24]  779 	movx	@dptr,a
      002204 A3               [24]  780 	inc	dptr
      002205 F0               [24]  781 	movx	@dptr,a
      002206                        782 00135$:
                                    783 ;	life.c:83: generation[j]++;
      002206 90 8C 15         [24]  784 	mov	dptr,#_j
      002209 E0               [24]  785 	movx	a,@dptr
      00220A FE               [12]  786 	mov	r6,a
      00220B A3               [24]  787 	inc	dptr
      00220C E0               [24]  788 	movx	a,@dptr
      00220D FF               [12]  789 	mov	r7,a
      00220E EE               [12]  790 	mov	a,r6
      00220F 2E               [12]  791 	add	a,r6
      002210 FE               [12]  792 	mov	r6,a
      002211 EF               [12]  793 	mov	a,r7
      002212 33               [12]  794 	rlc	a
      002213 FF               [12]  795 	mov	r7,a
      002214 EE               [12]  796 	mov	a,r6
      002215 24 0B            [12]  797 	add	a,#_generation
      002217 FE               [12]  798 	mov	r6,a
      002218 EF               [12]  799 	mov	a,r7
      002219 34 8C            [12]  800 	addc	a,#(_generation >> 8)
      00221B FF               [12]  801 	mov	r7,a
      00221C 8E 82            [24]  802 	mov	dpl,r6
      00221E 8F 83            [24]  803 	mov	dph,r7
      002220 E0               [24]  804 	movx	a,@dptr
      002221 FC               [12]  805 	mov	r4,a
      002222 A3               [24]  806 	inc	dptr
      002223 E0               [24]  807 	movx	a,@dptr
      002224 FD               [12]  808 	mov	r5,a
      002225 0C               [12]  809 	inc	r4
      002226 BC 00 01         [24]  810 	cjne	r4,#0x00,00252$
      002229 0D               [12]  811 	inc	r5
      00222A                        812 00252$:
      00222A 8E 82            [24]  813 	mov	dpl,r6
      00222C 8F 83            [24]  814 	mov	dph,r7
      00222E EC               [12]  815 	mov	a,r4
      00222F F0               [24]  816 	movx	@dptr,a
      002230 ED               [12]  817 	mov	a,r5
      002231 A3               [24]  818 	inc	dptr
      002232 F0               [24]  819 	movx	@dptr,a
                                    820 ;	life.c:84: if (generation[j]) break;
      002233 90 8C 15         [24]  821 	mov	dptr,#_j
      002236 E0               [24]  822 	movx	a,@dptr
      002237 FE               [12]  823 	mov	r6,a
      002238 A3               [24]  824 	inc	dptr
      002239 E0               [24]  825 	movx	a,@dptr
      00223A FF               [12]  826 	mov	r7,a
      00223B EE               [12]  827 	mov	a,r6
      00223C 2E               [12]  828 	add	a,r6
      00223D FC               [12]  829 	mov	r4,a
      00223E EF               [12]  830 	mov	a,r7
      00223F 33               [12]  831 	rlc	a
      002240 FD               [12]  832 	mov	r5,a
      002241 EC               [12]  833 	mov	a,r4
      002242 24 0B            [12]  834 	add	a,#_generation
      002244 F5 82            [12]  835 	mov	dpl,a
      002246 ED               [12]  836 	mov	a,r5
      002247 34 8C            [12]  837 	addc	a,#(_generation >> 8)
      002249 F5 83            [12]  838 	mov	dph,a
      00224B E0               [24]  839 	movx	a,@dptr
      00224C FC               [12]  840 	mov	r4,a
      00224D A3               [24]  841 	inc	dptr
      00224E E0               [24]  842 	movx	a,@dptr
      00224F FD               [12]  843 	mov	r5,a
      002250 4C               [12]  844 	orl	a,r4
      002251 70 1E            [24]  845 	jnz	00102$
                                    846 ;	life.c:82: for (j = 0; j < 4; j++) {
      002253 90 8C 15         [24]  847 	mov	dptr,#_j
      002256 74 01            [12]  848 	mov	a,#0x01
      002258 2E               [12]  849 	add	a,r6
      002259 F0               [24]  850 	movx	@dptr,a
      00225A E4               [12]  851 	clr	a
      00225B 3F               [12]  852 	addc	a,r7
      00225C A3               [24]  853 	inc	dptr
      00225D F0               [24]  854 	movx	@dptr,a
      00225E 90 8C 15         [24]  855 	mov	dptr,#_j
      002261 E0               [24]  856 	movx	a,@dptr
      002262 FE               [12]  857 	mov	r6,a
      002263 A3               [24]  858 	inc	dptr
      002264 E0               [24]  859 	movx	a,@dptr
      002265 FF               [12]  860 	mov	r7,a
      002266 C3               [12]  861 	clr	c
      002267 EE               [12]  862 	mov	a,r6
      002268 94 04            [12]  863 	subb	a,#0x04
      00226A EF               [12]  864 	mov	a,r7
      00226B 64 80            [12]  865 	xrl	a,#0x80
      00226D 94 80            [12]  866 	subb	a,#0x80
      00226F 40 95            [24]  867 	jc	00135$
                                    868 ;	life.c:104: updategen();
      002271                        869 00102$:
                                    870 ;	life.c:107: for (x = 0; x < W; x++) {
      002271 90 8C 02         [24]  871 	mov	dptr,#_x
      002274 E4               [12]  872 	clr	a
      002275 F0               [24]  873 	movx	@dptr,a
      002276 A3               [24]  874 	inc	dptr
      002277 F0               [24]  875 	movx	@dptr,a
      002278                        876 00148$:
                                    877 ;	life.c:108: for (y = 0; y < H; y++)
      002278 90 8C 04         [24]  878 	mov	dptr,#_y
      00227B E4               [12]  879 	clr	a
      00227C F0               [24]  880 	movx	@dptr,a
      00227D A3               [24]  881 	inc	dptr
      00227E F0               [24]  882 	movx	@dptr,a
      00227F                        883 00143$:
                                    884 ;	life.c:109: if (u[A2D(W, y, x)]) printstr("[]");
      00227F 90 8C 04         [24]  885 	mov	dptr,#_y
      002282 E0               [24]  886 	movx	a,@dptr
      002283 FE               [12]  887 	mov	r6,a
      002284 A3               [24]  888 	inc	dptr
      002285 E0               [24]  889 	movx	a,@dptr
      002286 C4               [12]  890 	swap	a
      002287 23               [12]  891 	rl	a
      002288 54 E0            [12]  892 	anl	a,#0xe0
      00228A CE               [12]  893 	xch	a,r6
      00228B C4               [12]  894 	swap	a
      00228C 23               [12]  895 	rl	a
      00228D CE               [12]  896 	xch	a,r6
      00228E 6E               [12]  897 	xrl	a,r6
      00228F CE               [12]  898 	xch	a,r6
      002290 54 E0            [12]  899 	anl	a,#0xe0
      002292 CE               [12]  900 	xch	a,r6
      002293 6E               [12]  901 	xrl	a,r6
      002294 FF               [12]  902 	mov	r7,a
      002295 90 8C 02         [24]  903 	mov	dptr,#_x
      002298 E0               [24]  904 	movx	a,@dptr
      002299 FC               [12]  905 	mov	r4,a
      00229A A3               [24]  906 	inc	dptr
      00229B E0               [24]  907 	movx	a,@dptr
      00229C FD               [12]  908 	mov	r5,a
      00229D EC               [12]  909 	mov	a,r4
      00229E 2E               [12]  910 	add	a,r6
      00229F FE               [12]  911 	mov	r6,a
      0022A0 ED               [12]  912 	mov	a,r5
      0022A1 3F               [12]  913 	addc	a,r7
      0022A2 FF               [12]  914 	mov	r7,a
      0022A3 EE               [12]  915 	mov	a,r6
      0022A4 24 02            [12]  916 	add	a,#_u
      0022A6 FE               [12]  917 	mov	r6,a
      0022A7 EF               [12]  918 	mov	a,r7
      0022A8 34 84            [12]  919 	addc	a,#(_u >> 8)
      0022AA FF               [12]  920 	mov	r7,a
      0022AB 8E 82            [24]  921 	mov	dpl,r6
      0022AD 8F 83            [24]  922 	mov	dph,r7
      0022AF E0               [24]  923 	movx	a,@dptr
      0022B0 60 22            [24]  924 	jz	00104$
      0022B2 7D F7            [12]  925 	mov	r5,#___str_2
      0022B4 7E 2B            [12]  926 	mov	r6,#(___str_2 >> 8)
      0022B6 7F 80            [12]  927 	mov	r7,#0x80
                                    928 ;	life.c:48: return;
      0022B8                        929 00138$:
                                    930 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022B8 8D 82            [24]  931 	mov	dpl,r5
      0022BA 8E 83            [24]  932 	mov	dph,r6
      0022BC 8F F0            [24]  933 	mov	b,r7
      0022BE 12 2A B4         [24]  934 	lcall	__gptrget
      0022C1 FC               [12]  935 	mov	r4,a
      0022C2 60 32            [24]  936 	jz	00144$
      0022C4 7B 00            [12]  937 	mov	r3,#0x00
      0022C6 8C 82            [24]  938 	mov	dpl,r4
      0022C8 8B 83            [24]  939 	mov	dph,r3
      0022CA 12 20 75         [24]  940 	lcall	_putchar
      0022CD 0D               [12]  941 	inc	r5
                                    942 ;	life.c:109: if (u[A2D(W, y, x)]) printstr("[]");
      0022CE BD 00 E7         [24]  943 	cjne	r5,#0x00,00138$
      0022D1 0E               [12]  944 	inc	r6
      0022D2 80 E4            [24]  945 	sjmp	00138$
      0022D4                        946 00104$:
                                    947 ;	life.c:110: else printstr("##");
      0022D4 7D FA            [12]  948 	mov	r5,#___str_3
      0022D6 7E 2B            [12]  949 	mov	r6,#(___str_3 >> 8)
      0022D8 7F 80            [12]  950 	mov	r7,#0x80
                                    951 ;	life.c:48: return;
      0022DA                        952 00141$:
                                    953 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022DA 8D 82            [24]  954 	mov	dpl,r5
      0022DC 8E 83            [24]  955 	mov	dph,r6
      0022DE 8F F0            [24]  956 	mov	b,r7
      0022E0 12 2A B4         [24]  957 	lcall	__gptrget
      0022E3 FC               [12]  958 	mov	r4,a
      0022E4 60 10            [24]  959 	jz	00144$
      0022E6 7B 00            [12]  960 	mov	r3,#0x00
      0022E8 8C 82            [24]  961 	mov	dpl,r4
      0022EA 8B 83            [24]  962 	mov	dph,r3
      0022EC 12 20 75         [24]  963 	lcall	_putchar
      0022EF 0D               [12]  964 	inc	r5
                                    965 ;	life.c:110: else printstr("##");
      0022F0 BD 00 E7         [24]  966 	cjne	r5,#0x00,00141$
      0022F3 0E               [12]  967 	inc	r6
      0022F4 80 E4            [24]  968 	sjmp	00141$
      0022F6                        969 00144$:
                                    970 ;	life.c:108: for (y = 0; y < H; y++)
      0022F6 90 8C 04         [24]  971 	mov	dptr,#_y
      0022F9 E0               [24]  972 	movx	a,@dptr
      0022FA 24 01            [12]  973 	add	a,#0x01
      0022FC F0               [24]  974 	movx	@dptr,a
      0022FD A3               [24]  975 	inc	dptr
      0022FE E0               [24]  976 	movx	a,@dptr
      0022FF 34 00            [12]  977 	addc	a,#0x00
      002301 F0               [24]  978 	movx	@dptr,a
      002302 90 8C 04         [24]  979 	mov	dptr,#_y
      002305 E0               [24]  980 	movx	a,@dptr
      002306 FE               [12]  981 	mov	r6,a
      002307 A3               [24]  982 	inc	dptr
      002308 E0               [24]  983 	movx	a,@dptr
      002309 FF               [12]  984 	mov	r7,a
      00230A C3               [12]  985 	clr	c
      00230B EE               [12]  986 	mov	a,r6
      00230C 94 20            [12]  987 	subb	a,#0x20
      00230E EF               [12]  988 	mov	a,r7
      00230F 64 80            [12]  989 	xrl	a,#0x80
      002311 94 80            [12]  990 	subb	a,#0x80
      002313 50 03            [24]  991 	jnc	00260$
      002315 02 22 7F         [24]  992 	ljmp	00143$
      002318                        993 00260$:
                                    994 ;	life.c:111: printstr("\r\n");
      002318 7D F4            [12]  995 	mov	r5,#___str_1
      00231A 7E 2B            [12]  996 	mov	r6,#(___str_1 >> 8)
      00231C 7F 80            [12]  997 	mov	r7,#0x80
                                    998 ;	life.c:48: return;
      00231E                        999 00146$:
                                   1000 ;	life.c:46: for (; *s; s++) putchar(*s);
      00231E 8D 82            [24] 1001 	mov	dpl,r5
      002320 8E 83            [24] 1002 	mov	dph,r6
      002322 8F F0            [24] 1003 	mov	b,r7
      002324 12 2A B4         [24] 1004 	lcall	__gptrget
      002327 FC               [12] 1005 	mov	r4,a
      002328 60 10            [24] 1006 	jz	00126$
      00232A 7B 00            [12] 1007 	mov	r3,#0x00
      00232C 8C 82            [24] 1008 	mov	dpl,r4
      00232E 8B 83            [24] 1009 	mov	dph,r3
      002330 12 20 75         [24] 1010 	lcall	_putchar
      002333 0D               [12] 1011 	inc	r5
                                   1012 ;	life.c:111: printstr("\r\n");
      002334 BD 00 E7         [24] 1013 	cjne	r5,#0x00,00146$
      002337 0E               [12] 1014 	inc	r6
      002338 80 E4            [24] 1015 	sjmp	00146$
      00233A                       1016 00126$:
                                   1017 ;	life.c:107: for (x = 0; x < W; x++) {
      00233A 90 8C 02         [24] 1018 	mov	dptr,#_x
      00233D E0               [24] 1019 	movx	a,@dptr
      00233E 24 01            [12] 1020 	add	a,#0x01
      002340 F0               [24] 1021 	movx	@dptr,a
      002341 A3               [24] 1022 	inc	dptr
      002342 E0               [24] 1023 	movx	a,@dptr
      002343 34 00            [12] 1024 	addc	a,#0x00
      002345 F0               [24] 1025 	movx	@dptr,a
      002346 90 8C 02         [24] 1026 	mov	dptr,#_x
      002349 E0               [24] 1027 	movx	a,@dptr
      00234A FE               [12] 1028 	mov	r6,a
      00234B A3               [24] 1029 	inc	dptr
      00234C E0               [24] 1030 	movx	a,@dptr
      00234D FF               [12] 1031 	mov	r7,a
      00234E C3               [12] 1032 	clr	c
      00234F EE               [12] 1033 	mov	a,r6
      002350 94 20            [12] 1034 	subb	a,#0x20
      002352 EF               [12] 1035 	mov	a,r7
      002353 64 80            [12] 1036 	xrl	a,#0x80
      002355 94 80            [12] 1037 	subb	a,#0x80
      002357 50 03            [24] 1038 	jnc	00263$
      002359 02 22 78         [24] 1039 	ljmp	00148$
      00235C                       1040 00263$:
                                   1041 ;	life.c:114: return;
                                   1042 ;	life.c:115: }
      00235C 22               [24] 1043 	ret
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'main'
                                   1046 ;------------------------------------------------------------
                                   1047 ;__2621440022              Allocated to registers 
                                   1048 ;s                         Allocated to registers r5 r6 r7 
                                   1049 ;__1310720015              Allocated to registers 
                                   1050 ;s                         Allocated to registers r5 r6 r7 
                                   1051 ;__1310720017              Allocated to registers r6 r7 
                                   1052 ;a                         Allocated to registers r4 r5 
                                   1053 ;__1310720019              Allocated to registers 
                                   1054 ;s                         Allocated to registers r5 r6 r7 
                                   1055 ;__2621440025              Allocated to registers 
                                   1056 ;s                         Allocated to registers r5 r6 r7 
                                   1057 ;__4587520029              Allocated to registers 
                                   1058 ;s                         Allocated to registers r5 r6 r7 
                                   1059 ;__3276800031              Allocated to registers 
                                   1060 ;s                         Allocated to registers r5 r6 r7 
                                   1061 ;__1310720033              Allocated to registers 
                                   1062 ;s                         Allocated to registers r5 r6 r7 
                                   1063 ;sloc0                     Allocated to stack - _bp +1
                                   1064 ;------------------------------------------------------------
                                   1065 ;	life.c:177: void main(void) {
                                   1066 ;	-----------------------------------------
                                   1067 ;	 function main
                                   1068 ;	-----------------------------------------
      00235D                       1069 _main:
      00235D C0 10            [24] 1070 	push	_bp
      00235F 85 81 10         [24] 1071 	mov	_bp,sp
      002362 05 81            [12] 1072 	inc	sp
      002364 05 81            [12] 1073 	inc	sp
                                   1074 ;	life.c:178: IT0 = 1;
                                   1075 ;	assignBit
      002366 D2 88            [12] 1076 	setb	_IT0
                                   1077 ;	life.c:179: IT1 = 1;
                                   1078 ;	assignBit
      002368 D2 8A            [12] 1079 	setb	_IT1
                                   1080 ;	life.c:180: EX0 = 1;
                                   1081 ;	assignBit
      00236A D2 A8            [12] 1082 	setb	_EX0
                                   1083 ;	life.c:181: EX1 = 1;
                                   1084 ;	assignBit
      00236C D2 AA            [12] 1085 	setb	_EX1
                                   1086 ;	life.c:182: EA = 1;
                                   1087 ;	assignBit
      00236E D2 AF            [12] 1088 	setb	_EA
                                   1089 ;	life.c:184: for (i0 = 0; !i0; ) {
      002370 90 80 00         [24] 1090 	mov	dptr,#_i0
      002373 E4               [12] 1091 	clr	a
      002374 F0               [24] 1092 	movx	@dptr,a
      002375 90 80 01         [24] 1093 	mov	dptr,#_i1
      002378 F0               [24] 1094 	movx	@dptr,a
      002379                       1095 00192$:
                                   1096 ;	life.c:118: memset(u, 0, sizeof (u));
      002379 E4               [12] 1097 	clr	a
      00237A C0 E0            [24] 1098 	push	acc
      00237C 74 04            [12] 1099 	mov	a,#0x04
      00237E C0 E0            [24] 1100 	push	acc
      002380 E4               [12] 1101 	clr	a
      002381 C0 E0            [24] 1102 	push	acc
      002383 90 84 02         [24] 1103 	mov	dptr,#_u
      002386 75 F0 00         [24] 1104 	mov	b,#0x00
      002389 12 2A 4A         [24] 1105 	lcall	_memset
      00238C 15 81            [12] 1106 	dec	sp
      00238E 15 81            [12] 1107 	dec	sp
      002390 15 81            [12] 1108 	dec	sp
                                   1109 ;	life.c:119: memset(pu, 0, sizeof (pu));
      002392 E4               [12] 1110 	clr	a
      002393 C0 E0            [24] 1111 	push	acc
      002395 74 04            [12] 1112 	mov	a,#0x04
      002397 C0 E0            [24] 1113 	push	acc
      002399 E4               [12] 1114 	clr	a
      00239A C0 E0            [24] 1115 	push	acc
      00239C 90 80 02         [24] 1116 	mov	dptr,#_pu
      00239F 75 F0 00         [24] 1117 	mov	b,#0x00
      0023A2 12 2A 4A         [24] 1118 	lcall	_memset
      0023A5 15 81            [12] 1119 	dec	sp
      0023A7 15 81            [12] 1120 	dec	sp
      0023A9 15 81            [12] 1121 	dec	sp
                                   1122 ;	life.c:186: printstr("\033[2J\033[mINIT\r\n");
      0023AB 7D 08            [12] 1123 	mov	r5,#___str_6
      0023AD 7E 2C            [12] 1124 	mov	r6,#(___str_6 >> 8)
      0023AF 7F 80            [12] 1125 	mov	r7,#0x80
                                   1126 ;	life.c:48: return;
      0023B1                       1127 00155$:
                                   1128 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023B1 8D 82            [24] 1129 	mov	dpl,r5
      0023B3 8E 83            [24] 1130 	mov	dph,r6
      0023B5 8F F0            [24] 1131 	mov	b,r7
      0023B7 12 2A B4         [24] 1132 	lcall	__gptrget
      0023BA FC               [12] 1133 	mov	r4,a
      0023BB 60 10            [24] 1134 	jz	00110$
      0023BD 7B 00            [12] 1135 	mov	r3,#0x00
      0023BF 8C 82            [24] 1136 	mov	dpl,r4
      0023C1 8B 83            [24] 1137 	mov	dph,r3
      0023C3 12 20 75         [24] 1138 	lcall	_putchar
      0023C6 0D               [12] 1139 	inc	r5
                                   1140 ;	life.c:186: printstr("\033[2J\033[mINIT\r\n");
      0023C7 BD 00 E7         [24] 1141 	cjne	r5,#0x00,00155$
      0023CA 0E               [12] 1142 	inc	r6
      0023CB 80 E4            [24] 1143 	sjmp	00155$
      0023CD                       1144 00110$:
                                   1145 ;	life.c:187: (void)getchar();
      0023CD 12 20 7A         [24] 1146 	lcall	_getchar
                                   1147 ;	life.c:125: j = 0;
      0023D0 90 8C 15         [24] 1148 	mov	dptr,#_j
      0023D3 E4               [12] 1149 	clr	a
      0023D4 F0               [24] 1150 	movx	@dptr,a
      0023D5 A3               [24] 1151 	inc	dptr
      0023D6 F0               [24] 1152 	movx	@dptr,a
                                   1153 ;	life.c:127: printstr("LOAD <");
      0023D7 7D FD            [12] 1154 	mov	r5,#___str_4
      0023D9 7E 2B            [12] 1155 	mov	r6,#(___str_4 >> 8)
      0023DB 7F 80            [12] 1156 	mov	r7,#0x80
                                   1157 ;	life.c:48: return;
      0023DD                       1158 00158$:
                                   1159 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023DD 8D 82            [24] 1160 	mov	dpl,r5
      0023DF 8E 83            [24] 1161 	mov	dph,r6
      0023E1 8F F0            [24] 1162 	mov	b,r7
      0023E3 12 2A B4         [24] 1163 	lcall	__gptrget
      0023E6 FC               [12] 1164 	mov	r4,a
      0023E7 60 10            [24] 1165 	jz	00112$
      0023E9 7B 00            [12] 1166 	mov	r3,#0x00
      0023EB 8C 82            [24] 1167 	mov	dpl,r4
      0023ED 8B 83            [24] 1168 	mov	dph,r3
      0023EF 12 20 75         [24] 1169 	lcall	_putchar
      0023F2 0D               [12] 1170 	inc	r5
                                   1171 ;	life.c:127: printstr("LOAD <");
      0023F3 BD 00 E7         [24] 1172 	cjne	r5,#0x00,00158$
      0023F6 0E               [12] 1173 	inc	r6
      0023F7 80 E4            [24] 1174 	sjmp	00158$
      0023F9                       1175 00112$:
                                   1176 ;	life.c:129: for (y = 0; y < H; y++)
      0023F9 90 8C 04         [24] 1177 	mov	dptr,#_y
      0023FC E4               [12] 1178 	clr	a
      0023FD F0               [24] 1179 	movx	@dptr,a
      0023FE A3               [24] 1180 	inc	dptr
      0023FF F0               [24] 1181 	movx	@dptr,a
      002400                       1182 00162$:
                                   1183 ;	life.c:130: for (x = 0; x < W; x++) {
      002400 90 8C 02         [24] 1184 	mov	dptr,#_x
      002403 E4               [12] 1185 	clr	a
      002404 F0               [24] 1186 	movx	@dptr,a
      002405 A3               [24] 1187 	inc	dptr
      002406 F0               [24] 1188 	movx	@dptr,a
      002407                       1189 00160$:
                                   1190 ;	life.c:131: c = getchar();
      002407 12 20 7A         [24] 1191 	lcall	_getchar
      00240A AE 82            [24] 1192 	mov	r6,dpl
      00240C AF 83            [24] 1193 	mov	r7,dph
      00240E 90 8C 17         [24] 1194 	mov	dptr,#_c
      002411 EE               [12] 1195 	mov	a,r6
      002412 F0               [24] 1196 	movx	@dptr,a
      002413 EF               [12] 1197 	mov	a,r7
      002414 A3               [24] 1198 	inc	dptr
      002415 F0               [24] 1199 	movx	@dptr,a
                                   1200 ;	life.c:132: if (c == (int)'0') {
      002416 BE 30 41         [24] 1201 	cjne	r6,#0x30,00119$
      002419 BF 00 3E         [24] 1202 	cjne	r7,#0x00,00119$
                                   1203 ;	life.c:133: u[A2D(W, y, x)] = 0;
      00241C 90 8C 04         [24] 1204 	mov	dptr,#_y
      00241F E0               [24] 1205 	movx	a,@dptr
      002420 FC               [12] 1206 	mov	r4,a
      002421 A3               [24] 1207 	inc	dptr
      002422 E0               [24] 1208 	movx	a,@dptr
      002423 C4               [12] 1209 	swap	a
      002424 23               [12] 1210 	rl	a
      002425 54 E0            [12] 1211 	anl	a,#0xe0
      002427 CC               [12] 1212 	xch	a,r4
      002428 C4               [12] 1213 	swap	a
      002429 23               [12] 1214 	rl	a
      00242A CC               [12] 1215 	xch	a,r4
      00242B 6C               [12] 1216 	xrl	a,r4
      00242C CC               [12] 1217 	xch	a,r4
      00242D 54 E0            [12] 1218 	anl	a,#0xe0
      00242F CC               [12] 1219 	xch	a,r4
      002430 6C               [12] 1220 	xrl	a,r4
      002431 FD               [12] 1221 	mov	r5,a
      002432 90 8C 02         [24] 1222 	mov	dptr,#_x
      002435 E0               [24] 1223 	movx	a,@dptr
      002436 FA               [12] 1224 	mov	r2,a
      002437 A3               [24] 1225 	inc	dptr
      002438 E0               [24] 1226 	movx	a,@dptr
      002439 FB               [12] 1227 	mov	r3,a
      00243A EA               [12] 1228 	mov	a,r2
      00243B 2C               [12] 1229 	add	a,r4
      00243C FC               [12] 1230 	mov	r4,a
      00243D EB               [12] 1231 	mov	a,r3
      00243E 3D               [12] 1232 	addc	a,r5
      00243F FD               [12] 1233 	mov	r5,a
      002440 EC               [12] 1234 	mov	a,r4
      002441 24 02            [12] 1235 	add	a,#_u
      002443 F5 82            [12] 1236 	mov	dpl,a
      002445 ED               [12] 1237 	mov	a,r5
      002446 34 84            [12] 1238 	addc	a,#(_u >> 8)
      002448 F5 83            [12] 1239 	mov	dph,a
      00244A E4               [12] 1240 	clr	a
      00244B F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	life.c:134: j++;
      00244C 90 8C 15         [24] 1243 	mov	dptr,#_j
      00244F E0               [24] 1244 	movx	a,@dptr
      002450 24 01            [12] 1245 	add	a,#0x01
      002452 F0               [24] 1246 	movx	@dptr,a
      002453 A3               [24] 1247 	inc	dptr
      002454 E0               [24] 1248 	movx	a,@dptr
      002455 34 00            [12] 1249 	addc	a,#0x00
      002457 F0               [24] 1250 	movx	@dptr,a
      002458 80 4D            [24] 1251 	sjmp	00161$
      00245A                       1252 00119$:
                                   1253 ;	life.c:135: } else if (c == (int)'1') {
      00245A BE 31 42         [24] 1254 	cjne	r6,#0x31,00117$
      00245D BF 00 3F         [24] 1255 	cjne	r7,#0x00,00117$
                                   1256 ;	life.c:136: u[A2D(W, y, x)] = 1;
      002460 90 8C 04         [24] 1257 	mov	dptr,#_y
      002463 E0               [24] 1258 	movx	a,@dptr
      002464 FC               [12] 1259 	mov	r4,a
      002465 A3               [24] 1260 	inc	dptr
      002466 E0               [24] 1261 	movx	a,@dptr
      002467 C4               [12] 1262 	swap	a
      002468 23               [12] 1263 	rl	a
      002469 54 E0            [12] 1264 	anl	a,#0xe0
      00246B CC               [12] 1265 	xch	a,r4
      00246C C4               [12] 1266 	swap	a
      00246D 23               [12] 1267 	rl	a
      00246E CC               [12] 1268 	xch	a,r4
      00246F 6C               [12] 1269 	xrl	a,r4
      002470 CC               [12] 1270 	xch	a,r4
      002471 54 E0            [12] 1271 	anl	a,#0xe0
      002473 CC               [12] 1272 	xch	a,r4
      002474 6C               [12] 1273 	xrl	a,r4
      002475 FD               [12] 1274 	mov	r5,a
      002476 90 8C 02         [24] 1275 	mov	dptr,#_x
      002479 E0               [24] 1276 	movx	a,@dptr
      00247A FA               [12] 1277 	mov	r2,a
      00247B A3               [24] 1278 	inc	dptr
      00247C E0               [24] 1279 	movx	a,@dptr
      00247D FB               [12] 1280 	mov	r3,a
      00247E EA               [12] 1281 	mov	a,r2
      00247F 2C               [12] 1282 	add	a,r4
      002480 FC               [12] 1283 	mov	r4,a
      002481 EB               [12] 1284 	mov	a,r3
      002482 3D               [12] 1285 	addc	a,r5
      002483 FD               [12] 1286 	mov	r5,a
      002484 EC               [12] 1287 	mov	a,r4
      002485 24 02            [12] 1288 	add	a,#_u
      002487 F5 82            [12] 1289 	mov	dpl,a
      002489 ED               [12] 1290 	mov	a,r5
      00248A 34 84            [12] 1291 	addc	a,#(_u >> 8)
      00248C F5 83            [12] 1292 	mov	dph,a
      00248E 74 01            [12] 1293 	mov	a,#0x01
      002490 F0               [24] 1294 	movx	@dptr,a
                                   1295 ;	life.c:137: j++;
      002491 90 8C 15         [24] 1296 	mov	dptr,#_j
      002494 E0               [24] 1297 	movx	a,@dptr
      002495 24 01            [12] 1298 	add	a,#0x01
      002497 F0               [24] 1299 	movx	@dptr,a
      002498 A3               [24] 1300 	inc	dptr
      002499 E0               [24] 1301 	movx	a,@dptr
      00249A 34 00            [12] 1302 	addc	a,#0x00
      00249C F0               [24] 1303 	movx	@dptr,a
      00249D 80 08            [24] 1304 	sjmp	00161$
      00249F                       1305 00117$:
                                   1306 ;	life.c:138: } else if (c == (int)'#') goto out;
      00249F BE 23 05         [24] 1307 	cjne	r6,#0x23,00381$
      0024A2 BF 00 02         [24] 1308 	cjne	r7,#0x00,00381$
      0024A5 80 44            [24] 1309 	sjmp	00130$
      0024A7                       1310 00381$:
      0024A7                       1311 00161$:
                                   1312 ;	life.c:130: for (x = 0; x < W; x++) {
      0024A7 90 8C 02         [24] 1313 	mov	dptr,#_x
      0024AA E0               [24] 1314 	movx	a,@dptr
      0024AB 24 01            [12] 1315 	add	a,#0x01
      0024AD F0               [24] 1316 	movx	@dptr,a
      0024AE A3               [24] 1317 	inc	dptr
      0024AF E0               [24] 1318 	movx	a,@dptr
      0024B0 34 00            [12] 1319 	addc	a,#0x00
      0024B2 F0               [24] 1320 	movx	@dptr,a
      0024B3 90 8C 02         [24] 1321 	mov	dptr,#_x
      0024B6 E0               [24] 1322 	movx	a,@dptr
      0024B7 FE               [12] 1323 	mov	r6,a
      0024B8 A3               [24] 1324 	inc	dptr
      0024B9 E0               [24] 1325 	movx	a,@dptr
      0024BA FF               [12] 1326 	mov	r7,a
      0024BB C3               [12] 1327 	clr	c
      0024BC EE               [12] 1328 	mov	a,r6
      0024BD 94 20            [12] 1329 	subb	a,#0x20
      0024BF EF               [12] 1330 	mov	a,r7
      0024C0 64 80            [12] 1331 	xrl	a,#0x80
      0024C2 94 80            [12] 1332 	subb	a,#0x80
      0024C4 50 03            [24] 1333 	jnc	00382$
      0024C6 02 24 07         [24] 1334 	ljmp	00160$
      0024C9                       1335 00382$:
                                   1336 ;	life.c:129: for (y = 0; y < H; y++)
      0024C9 90 8C 04         [24] 1337 	mov	dptr,#_y
      0024CC E0               [24] 1338 	movx	a,@dptr
      0024CD 24 01            [12] 1339 	add	a,#0x01
      0024CF F0               [24] 1340 	movx	@dptr,a
      0024D0 A3               [24] 1341 	inc	dptr
      0024D1 E0               [24] 1342 	movx	a,@dptr
      0024D2 34 00            [12] 1343 	addc	a,#0x00
      0024D4 F0               [24] 1344 	movx	@dptr,a
      0024D5 90 8C 04         [24] 1345 	mov	dptr,#_y
      0024D8 E0               [24] 1346 	movx	a,@dptr
      0024D9 FE               [12] 1347 	mov	r6,a
      0024DA A3               [24] 1348 	inc	dptr
      0024DB E0               [24] 1349 	movx	a,@dptr
      0024DC FF               [12] 1350 	mov	r7,a
      0024DD C3               [12] 1351 	clr	c
      0024DE EE               [12] 1352 	mov	a,r6
      0024DF 94 20            [12] 1353 	subb	a,#0x20
      0024E1 EF               [12] 1354 	mov	a,r7
      0024E2 64 80            [12] 1355 	xrl	a,#0x80
      0024E4 94 80            [12] 1356 	subb	a,#0x80
      0024E6 50 03            [24] 1357 	jnc	00383$
      0024E8 02 24 00         [24] 1358 	ljmp	00162$
      0024EB                       1359 00383$:
                                   1360 ;	life.c:141: out:
      0024EB                       1361 00130$:
                                   1362 ;	life.c:142: if (c != (int)'#')
      0024EB 90 8C 17         [24] 1363 	mov	dptr,#_c
      0024EE E0               [24] 1364 	movx	a,@dptr
      0024EF FE               [12] 1365 	mov	r6,a
      0024F0 A3               [24] 1366 	inc	dptr
      0024F1 E0               [24] 1367 	movx	a,@dptr
      0024F2 FF               [12] 1368 	mov	r7,a
      0024F3 BE 23 05         [24] 1369 	cjne	r6,#0x23,00384$
      0024F6 BF 00 02         [24] 1370 	cjne	r7,#0x00,00384$
      0024F9 80 15            [24] 1371 	sjmp	00129$
      0024FB                       1372 00384$:
                                   1373 ;	life.c:143: while (1) {
      0024FB                       1374 00126$:
                                   1375 ;	life.c:144: c = getchar();
      0024FB 12 20 7A         [24] 1376 	lcall	_getchar
      0024FE AE 82            [24] 1377 	mov	r6,dpl
      002500 AF 83            [24] 1378 	mov	r7,dph
      002502 90 8C 17         [24] 1379 	mov	dptr,#_c
      002505 EE               [12] 1380 	mov	a,r6
      002506 F0               [24] 1381 	movx	@dptr,a
      002507 EF               [12] 1382 	mov	a,r7
      002508 A3               [24] 1383 	inc	dptr
      002509 F0               [24] 1384 	movx	@dptr,a
                                   1385 ;	life.c:145: if (c == (int)'#') break;
      00250A BE 23 EE         [24] 1386 	cjne	r6,#0x23,00126$
      00250D BF 00 EB         [24] 1387 	cjne	r7,#0x00,00126$
      002510                       1388 00129$:
                                   1389 ;	life.c:147: print16x(j);
      002510 90 8C 15         [24] 1390 	mov	dptr,#_j
      002513 E0               [24] 1391 	movx	a,@dptr
      002514 FE               [12] 1392 	mov	r6,a
      002515 A3               [24] 1393 	inc	dptr
      002516 E0               [24] 1394 	movx	a,@dptr
                                   1395 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      002517 8E 04            [24] 1396 	mov	ar4,r6
      002519 FD               [12] 1397 	mov	r5,a
      00251A C4               [12] 1398 	swap	a
      00251B 54 0F            [12] 1399 	anl	a,#0x0f
      00251D 30 E3 02         [24] 1400 	jnb	acc.3,00387$
      002520 44 F0            [12] 1401 	orl	a,#0xf0
      002522                       1402 00387$:
      002522 FE               [12] 1403 	mov	r6,a
      002523 33               [12] 1404 	rlc	a
      002524 95 E0            [12] 1405 	subb	a,acc
      002526 53 06 0F         [24] 1406 	anl	ar6,#0x0f
      002529 7F 00            [12] 1407 	mov	r7,#0x00
      00252B EE               [12] 1408 	mov	a,r6
      00252C 24 DC            [12] 1409 	add	a,#_digits
      00252E F5 82            [12] 1410 	mov	dpl,a
      002530 EF               [12] 1411 	mov	a,r7
      002531 34 2B            [12] 1412 	addc	a,#(_digits >> 8)
      002533 F5 83            [12] 1413 	mov	dph,a
      002535 E4               [12] 1414 	clr	a
      002536 93               [24] 1415 	movc	a,@a+dptr
      002537 FF               [12] 1416 	mov	r7,a
      002538 7E 00            [12] 1417 	mov	r6,#0x00
      00253A 8F 82            [24] 1418 	mov	dpl,r7
      00253C 8E 83            [24] 1419 	mov	dph,r6
      00253E 12 20 75         [24] 1420 	lcall	_putchar
                                   1421 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      002541 8D 07            [24] 1422 	mov	ar7,r5
      002543 53 07 0F         [24] 1423 	anl	ar7,#0x0f
      002546 7E 00            [12] 1424 	mov	r6,#0x00
      002548 EF               [12] 1425 	mov	a,r7
      002549 24 DC            [12] 1426 	add	a,#_digits
      00254B F5 82            [12] 1427 	mov	dpl,a
      00254D EE               [12] 1428 	mov	a,r6
      00254E 34 2B            [12] 1429 	addc	a,#(_digits >> 8)
      002550 F5 83            [12] 1430 	mov	dph,a
      002552 E4               [12] 1431 	clr	a
      002553 93               [24] 1432 	movc	a,@a+dptr
      002554 FF               [12] 1433 	mov	r7,a
      002555 7E 00            [12] 1434 	mov	r6,#0x00
      002557 8F 82            [24] 1435 	mov	dpl,r7
      002559 8E 83            [24] 1436 	mov	dph,r6
      00255B 12 20 75         [24] 1437 	lcall	_putchar
                                   1438 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      00255E 8C 06            [24] 1439 	mov	ar6,r4
      002560 ED               [12] 1440 	mov	a,r5
      002561 C4               [12] 1441 	swap	a
      002562 CE               [12] 1442 	xch	a,r6
      002563 C4               [12] 1443 	swap	a
      002564 54 0F            [12] 1444 	anl	a,#0x0f
      002566 6E               [12] 1445 	xrl	a,r6
      002567 CE               [12] 1446 	xch	a,r6
      002568 54 0F            [12] 1447 	anl	a,#0x0f
      00256A CE               [12] 1448 	xch	a,r6
      00256B 6E               [12] 1449 	xrl	a,r6
      00256C CE               [12] 1450 	xch	a,r6
      00256D 30 E3 02         [24] 1451 	jnb	acc.3,00388$
      002570 44 F0            [12] 1452 	orl	a,#0xf0
      002572                       1453 00388$:
      002572 53 06 0F         [24] 1454 	anl	ar6,#0x0f
      002575 7F 00            [12] 1455 	mov	r7,#0x00
      002577 EE               [12] 1456 	mov	a,r6
      002578 24 DC            [12] 1457 	add	a,#_digits
      00257A F5 82            [12] 1458 	mov	dpl,a
      00257C EF               [12] 1459 	mov	a,r7
      00257D 34 2B            [12] 1460 	addc	a,#(_digits >> 8)
      00257F F5 83            [12] 1461 	mov	dph,a
      002581 E4               [12] 1462 	clr	a
      002582 93               [24] 1463 	movc	a,@a+dptr
      002583 FF               [12] 1464 	mov	r7,a
      002584 7E 00            [12] 1465 	mov	r6,#0x00
      002586 8F 82            [24] 1466 	mov	dpl,r7
      002588 8E 83            [24] 1467 	mov	dph,r6
      00258A 12 20 75         [24] 1468 	lcall	_putchar
                                   1469 ;	life.c:40: putchar(digits[a & 0xf]);
      00258D 53 04 0F         [24] 1470 	anl	ar4,#0x0f
      002590 7D 00            [12] 1471 	mov	r5,#0x00
      002592 EC               [12] 1472 	mov	a,r4
      002593 24 DC            [12] 1473 	add	a,#_digits
      002595 F5 82            [12] 1474 	mov	dpl,a
      002597 ED               [12] 1475 	mov	a,r5
      002598 34 2B            [12] 1476 	addc	a,#(_digits >> 8)
      00259A F5 83            [12] 1477 	mov	dph,a
      00259C E4               [12] 1478 	clr	a
      00259D 93               [24] 1479 	movc	a,@a+dptr
      00259E FF               [12] 1480 	mov	r7,a
      00259F 7E 00            [12] 1481 	mov	r6,#0x00
      0025A1 8F 82            [24] 1482 	mov	dpl,r7
      0025A3 8E 83            [24] 1483 	mov	dph,r6
      0025A5 12 20 75         [24] 1484 	lcall	_putchar
                                   1485 ;	life.c:148: printstr(">\r\n");
      0025A8 7D 04            [12] 1486 	mov	r5,#___str_5
      0025AA 7E 2C            [12] 1487 	mov	r6,#(___str_5 >> 8)
      0025AC 7F 80            [12] 1488 	mov	r7,#0x80
                                   1489 ;	life.c:48: return;
      0025AE                       1490 00165$:
                                   1491 ;	life.c:46: for (; *s; s++) putchar(*s);
      0025AE 8D 82            [24] 1492 	mov	dpl,r5
      0025B0 8E 83            [24] 1493 	mov	dph,r6
      0025B2 8F F0            [24] 1494 	mov	b,r7
      0025B4 12 2A B4         [24] 1495 	lcall	__gptrget
      0025B7 FC               [12] 1496 	mov	r4,a
      0025B8 60 10            [24] 1497 	jz	00133$
      0025BA 7B 00            [12] 1498 	mov	r3,#0x00
      0025BC 8C 82            [24] 1499 	mov	dpl,r4
      0025BE 8B 83            [24] 1500 	mov	dph,r3
      0025C0 12 20 75         [24] 1501 	lcall	_putchar
      0025C3 0D               [12] 1502 	inc	r5
                                   1503 ;	life.c:148: printstr(">\r\n");
      0025C4 BD 00 E7         [24] 1504 	cjne	r5,#0x00,00165$
      0025C7 0E               [12] 1505 	inc	r6
      0025C8 80 E4            [24] 1506 	sjmp	00165$
      0025CA                       1507 00133$:
                                   1508 ;	life.c:190: show(0);
      0025CA 75 82 00         [24] 1509 	mov	dpl,#0x00
      0025CD 12 20 A9         [24] 1510 	lcall	_show
                                   1511 ;	life.c:192: printstr("RDY\r\n");
      0025D0 7D 16            [12] 1512 	mov	r5,#___str_7
      0025D2 7E 2C            [12] 1513 	mov	r6,#(___str_7 >> 8)
      0025D4 7F 80            [12] 1514 	mov	r7,#0x80
                                   1515 ;	life.c:48: return;
      0025D6                       1516 00168$:
                                   1517 ;	life.c:46: for (; *s; s++) putchar(*s);
      0025D6 8D 82            [24] 1518 	mov	dpl,r5
      0025D8 8E 83            [24] 1519 	mov	dph,r6
      0025DA 8F F0            [24] 1520 	mov	b,r7
      0025DC 12 2A B4         [24] 1521 	lcall	__gptrget
      0025DF FC               [12] 1522 	mov	r4,a
      0025E0 60 10            [24] 1523 	jz	00136$
      0025E2 7B 00            [12] 1524 	mov	r3,#0x00
      0025E4 8C 82            [24] 1525 	mov	dpl,r4
      0025E6 8B 83            [24] 1526 	mov	dph,r3
      0025E8 12 20 75         [24] 1527 	lcall	_putchar
      0025EB 0D               [12] 1528 	inc	r5
                                   1529 ;	life.c:192: printstr("RDY\r\n");
      0025EC BD 00 E7         [24] 1530 	cjne	r5,#0x00,00168$
      0025EF 0E               [12] 1531 	inc	r6
      0025F0 80 E4            [24] 1532 	sjmp	00168$
      0025F2                       1533 00136$:
                                   1534 ;	life.c:193: (void)getchar();
      0025F2 12 20 7A         [24] 1535 	lcall	_getchar
                                   1536 ;	life.c:75: for (j = 0; j < 4; j++)
      0025F5 90 8C 15         [24] 1537 	mov	dptr,#_j
      0025F8 E4               [12] 1538 	clr	a
      0025F9 F0               [24] 1539 	movx	@dptr,a
      0025FA A3               [24] 1540 	inc	dptr
      0025FB F0               [24] 1541 	movx	@dptr,a
      0025FC                       1542 00170$:
                                   1543 ;	life.c:76: generation[j] = 0;
      0025FC 90 8C 15         [24] 1544 	mov	dptr,#_j
      0025FF E0               [24] 1545 	movx	a,@dptr
      002600 FE               [12] 1546 	mov	r6,a
      002601 A3               [24] 1547 	inc	dptr
      002602 E0               [24] 1548 	movx	a,@dptr
      002603 FF               [12] 1549 	mov	r7,a
      002604 EE               [12] 1550 	mov	a,r6
      002605 2E               [12] 1551 	add	a,r6
      002606 FE               [12] 1552 	mov	r6,a
      002607 EF               [12] 1553 	mov	a,r7
      002608 33               [12] 1554 	rlc	a
      002609 FF               [12] 1555 	mov	r7,a
      00260A EE               [12] 1556 	mov	a,r6
      00260B 24 0B            [12] 1557 	add	a,#_generation
      00260D F5 82            [12] 1558 	mov	dpl,a
      00260F EF               [12] 1559 	mov	a,r7
      002610 34 8C            [12] 1560 	addc	a,#(_generation >> 8)
      002612 F5 83            [12] 1561 	mov	dph,a
      002614 E4               [12] 1562 	clr	a
      002615 F0               [24] 1563 	movx	@dptr,a
      002616 A3               [24] 1564 	inc	dptr
      002617 F0               [24] 1565 	movx	@dptr,a
                                   1566 ;	life.c:75: for (j = 0; j < 4; j++)
      002618 90 8C 15         [24] 1567 	mov	dptr,#_j
      00261B E0               [24] 1568 	movx	a,@dptr
      00261C 24 01            [12] 1569 	add	a,#0x01
      00261E F0               [24] 1570 	movx	@dptr,a
      00261F A3               [24] 1571 	inc	dptr
      002620 E0               [24] 1572 	movx	a,@dptr
      002621 34 00            [12] 1573 	addc	a,#0x00
      002623 F0               [24] 1574 	movx	@dptr,a
      002624 90 8C 15         [24] 1575 	mov	dptr,#_j
      002627 E0               [24] 1576 	movx	a,@dptr
      002628 FE               [12] 1577 	mov	r6,a
      002629 A3               [24] 1578 	inc	dptr
      00262A E0               [24] 1579 	movx	a,@dptr
      00262B FF               [12] 1580 	mov	r7,a
      00262C C3               [12] 1581 	clr	c
      00262D EE               [12] 1582 	mov	a,r6
      00262E 94 04            [12] 1583 	subb	a,#0x04
      002630 EF               [12] 1584 	mov	a,r7
      002631 64 80            [12] 1585 	xrl	a,#0x80
      002633 94 80            [12] 1586 	subb	a,#0x80
      002635 40 C5            [24] 1587 	jc	00170$
                                   1588 ;	life.c:197: for (i1 = 0; !i0 && !i1; ) {
      002637                       1589 00187$:
      002637 90 80 00         [24] 1590 	mov	dptr,#_i0
      00263A E0               [24] 1591 	movx	a,@dptr
      00263B 60 03            [24] 1592 	jz	00394$
      00263D 02 29 53         [24] 1593 	ljmp	00104$
      002640                       1594 00394$:
                                   1595 ;	life.c:198: show(1);
      002640 75 82 01         [24] 1596 	mov	dpl,#0x01
      002643 12 20 A9         [24] 1597 	lcall	_show
                                   1598 ;	life.c:154: fixed = 1;
      002646 90 8C 13         [24] 1599 	mov	dptr,#_fixed
      002649 74 01            [12] 1600 	mov	a,#0x01
      00264B F0               [24] 1601 	movx	@dptr,a
                                   1602 ;	life.c:155: cycle2 = 1;
      00264C 90 8C 14         [24] 1603 	mov	dptr,#_cycle2
      00264F F0               [24] 1604 	movx	@dptr,a
                                   1605 ;	life.c:157: for (y = 0; y < H; y++) {
      002650 90 8C 04         [24] 1606 	mov	dptr,#_y
      002653 E4               [12] 1607 	clr	a
      002654 F0               [24] 1608 	movx	@dptr,a
      002655 A3               [24] 1609 	inc	dptr
      002656 F0               [24] 1610 	movx	@dptr,a
      002657                       1611 00180$:
                                   1612 ;	life.c:158: for (x = 0; x < W; x++) {
      002657 90 8C 02         [24] 1613 	mov	dptr,#_x
      00265A E4               [12] 1614 	clr	a
      00265B F0               [24] 1615 	movx	@dptr,a
      00265C A3               [24] 1616 	inc	dptr
      00265D F0               [24] 1617 	movx	@dptr,a
      00265E                       1618 00178$:
                                   1619 ;	life.c:159: n = -u[A2D(W, y, x)];
      00265E 90 8C 04         [24] 1620 	mov	dptr,#_y
      002661 E0               [24] 1621 	movx	a,@dptr
      002662 FE               [12] 1622 	mov	r6,a
      002663 A3               [24] 1623 	inc	dptr
      002664 E0               [24] 1624 	movx	a,@dptr
      002665 FF               [12] 1625 	mov	r7,a
      002666 8E 04            [24] 1626 	mov	ar4,r6
      002668 C4               [12] 1627 	swap	a
      002669 23               [12] 1628 	rl	a
      00266A 54 E0            [12] 1629 	anl	a,#0xe0
      00266C CC               [12] 1630 	xch	a,r4
      00266D C4               [12] 1631 	swap	a
      00266E 23               [12] 1632 	rl	a
      00266F CC               [12] 1633 	xch	a,r4
      002670 6C               [12] 1634 	xrl	a,r4
      002671 CC               [12] 1635 	xch	a,r4
      002672 54 E0            [12] 1636 	anl	a,#0xe0
      002674 CC               [12] 1637 	xch	a,r4
      002675 6C               [12] 1638 	xrl	a,r4
      002676 FD               [12] 1639 	mov	r5,a
      002677 90 8C 02         [24] 1640 	mov	dptr,#_x
      00267A E0               [24] 1641 	movx	a,@dptr
      00267B FA               [12] 1642 	mov	r2,a
      00267C A3               [24] 1643 	inc	dptr
      00267D E0               [24] 1644 	movx	a,@dptr
      00267E FB               [12] 1645 	mov	r3,a
      00267F EA               [12] 1646 	mov	a,r2
      002680 2C               [12] 1647 	add	a,r4
      002681 FC               [12] 1648 	mov	r4,a
      002682 EB               [12] 1649 	mov	a,r3
      002683 3D               [12] 1650 	addc	a,r5
      002684 FD               [12] 1651 	mov	r5,a
      002685 EC               [12] 1652 	mov	a,r4
      002686 24 02            [12] 1653 	add	a,#_u
      002688 F5 82            [12] 1654 	mov	dpl,a
      00268A ED               [12] 1655 	mov	a,r5
      00268B 34 84            [12] 1656 	addc	a,#(_u >> 8)
      00268D F5 83            [12] 1657 	mov	dph,a
      00268F E0               [24] 1658 	movx	a,@dptr
      002690 FD               [12] 1659 	mov	r5,a
      002691 90 8C 0A         [24] 1660 	mov	dptr,#_n
      002694 C3               [12] 1661 	clr	c
      002695 E4               [12] 1662 	clr	a
      002696 9D               [12] 1663 	subb	a,r5
      002697 F0               [24] 1664 	movx	@dptr,a
                                   1665 ;	life.c:160: for (y1 = y - 1; y1 <= y + 1; y1++)
      002698 1E               [12] 1666 	dec	r6
      002699 BE FF 01         [24] 1667 	cjne	r6,#0xff,00395$
      00269C 1F               [12] 1668 	dec	r7
      00269D                       1669 00395$:
      00269D 90 8C 08         [24] 1670 	mov	dptr,#_y1
      0026A0 EE               [12] 1671 	mov	a,r6
      0026A1 F0               [24] 1672 	movx	@dptr,a
      0026A2 EF               [12] 1673 	mov	a,r7
      0026A3 A3               [24] 1674 	inc	dptr
      0026A4 F0               [24] 1675 	movx	@dptr,a
      0026A5                       1676 00176$:
      0026A5 90 8C 04         [24] 1677 	mov	dptr,#_y
      0026A8 E0               [24] 1678 	movx	a,@dptr
      0026A9 FE               [12] 1679 	mov	r6,a
      0026AA A3               [24] 1680 	inc	dptr
      0026AB E0               [24] 1681 	movx	a,@dptr
      0026AC FF               [12] 1682 	mov	r7,a
      0026AD 74 01            [12] 1683 	mov	a,#0x01
      0026AF 2E               [12] 1684 	add	a,r6
      0026B0 FC               [12] 1685 	mov	r4,a
      0026B1 E4               [12] 1686 	clr	a
      0026B2 3F               [12] 1687 	addc	a,r7
      0026B3 FD               [12] 1688 	mov	r5,a
      0026B4 90 8C 08         [24] 1689 	mov	dptr,#_y1
      0026B7 E0               [24] 1690 	movx	a,@dptr
      0026B8 FA               [12] 1691 	mov	r2,a
      0026B9 A3               [24] 1692 	inc	dptr
      0026BA E0               [24] 1693 	movx	a,@dptr
      0026BB FB               [12] 1694 	mov	r3,a
      0026BC C3               [12] 1695 	clr	c
      0026BD EC               [12] 1696 	mov	a,r4
      0026BE 9A               [12] 1697 	subb	a,r2
      0026BF ED               [12] 1698 	mov	a,r5
      0026C0 64 80            [12] 1699 	xrl	a,#0x80
      0026C2 8B F0            [24] 1700 	mov	b,r3
      0026C4 63 F0 80         [24] 1701 	xrl	b,#0x80
      0026C7 95 F0            [12] 1702 	subb	a,b
      0026C9 50 03            [24] 1703 	jnc	00396$
      0026CB 02 27 AB         [24] 1704 	ljmp	00140$
      0026CE                       1705 00396$:
                                   1706 ;	life.c:161: for (x1 = x - 1; x1 <= x + 1; x1++)
      0026CE 90 8C 02         [24] 1707 	mov	dptr,#_x
      0026D1 E0               [24] 1708 	movx	a,@dptr
      0026D2 FC               [12] 1709 	mov	r4,a
      0026D3 A3               [24] 1710 	inc	dptr
      0026D4 E0               [24] 1711 	movx	a,@dptr
      0026D5 FD               [12] 1712 	mov	r5,a
      0026D6 1C               [12] 1713 	dec	r4
      0026D7 BC FF 01         [24] 1714 	cjne	r4,#0xff,00397$
      0026DA 1D               [12] 1715 	dec	r5
      0026DB                       1716 00397$:
      0026DB 90 8C 06         [24] 1717 	mov	dptr,#_x1
      0026DE EC               [12] 1718 	mov	a,r4
      0026DF F0               [24] 1719 	movx	@dptr,a
      0026E0 ED               [12] 1720 	mov	a,r5
      0026E1 A3               [24] 1721 	inc	dptr
      0026E2 F0               [24] 1722 	movx	@dptr,a
      0026E3                       1723 00173$:
      0026E3 90 8C 02         [24] 1724 	mov	dptr,#_x
      0026E6 E0               [24] 1725 	movx	a,@dptr
      0026E7 FC               [12] 1726 	mov	r4,a
      0026E8 A3               [24] 1727 	inc	dptr
      0026E9 E0               [24] 1728 	movx	a,@dptr
      0026EA FD               [12] 1729 	mov	r5,a
      0026EB 0C               [12] 1730 	inc	r4
      0026EC BC 00 01         [24] 1731 	cjne	r4,#0x00,00398$
      0026EF 0D               [12] 1732 	inc	r5
      0026F0                       1733 00398$:
      0026F0 90 8C 06         [24] 1734 	mov	dptr,#_x1
      0026F3 E0               [24] 1735 	movx	a,@dptr
      0026F4 FA               [12] 1736 	mov	r2,a
      0026F5 A3               [24] 1737 	inc	dptr
      0026F6 E0               [24] 1738 	movx	a,@dptr
      0026F7 FB               [12] 1739 	mov	r3,a
      0026F8 C3               [12] 1740 	clr	c
      0026F9 EC               [12] 1741 	mov	a,r4
      0026FA 9A               [12] 1742 	subb	a,r2
      0026FB ED               [12] 1743 	mov	a,r5
      0026FC 64 80            [12] 1744 	xrl	a,#0x80
      0026FE 8B F0            [24] 1745 	mov	b,r3
      002700 63 F0 80         [24] 1746 	xrl	b,#0x80
      002703 95 F0            [12] 1747 	subb	a,b
      002705 50 03            [24] 1748 	jnc	00399$
      002707 02 27 9C         [24] 1749 	ljmp	00177$
      00270A                       1750 00399$:
                                   1751 ;	life.c:162: n += u[A2D(W, (y1 + H) % H, (x1 + W) % W)];
      00270A 90 8C 08         [24] 1752 	mov	dptr,#_y1
      00270D E0               [24] 1753 	movx	a,@dptr
      00270E FC               [12] 1754 	mov	r4,a
      00270F A3               [24] 1755 	inc	dptr
      002710 E0               [24] 1756 	movx	a,@dptr
      002711 FD               [12] 1757 	mov	r5,a
      002712 74 20            [12] 1758 	mov	a,#0x20
      002714 2C               [12] 1759 	add	a,r4
      002715 FC               [12] 1760 	mov	r4,a
      002716 E4               [12] 1761 	clr	a
      002717 3D               [12] 1762 	addc	a,r5
      002718 FD               [12] 1763 	mov	r5,a
      002719 C0 03            [24] 1764 	push	ar3
      00271B C0 02            [24] 1765 	push	ar2
      00271D 74 20            [12] 1766 	mov	a,#0x20
      00271F C0 E0            [24] 1767 	push	acc
      002721 E4               [12] 1768 	clr	a
      002722 C0 E0            [24] 1769 	push	acc
      002724 8C 82            [24] 1770 	mov	dpl,r4
      002726 8D 83            [24] 1771 	mov	dph,r5
      002728 12 2A D0         [24] 1772 	lcall	__modsint
      00272B AC 82            [24] 1773 	mov	r4,dpl
      00272D AD 83            [24] 1774 	mov	r5,dph
      00272F 15 81            [12] 1775 	dec	sp
      002731 15 81            [12] 1776 	dec	sp
      002733 D0 02            [24] 1777 	pop	ar2
      002735 D0 03            [24] 1778 	pop	ar3
      002737 8C 07            [24] 1779 	mov	ar7,r4
      002739 ED               [12] 1780 	mov	a,r5
      00273A C4               [12] 1781 	swap	a
      00273B 23               [12] 1782 	rl	a
      00273C 54 E0            [12] 1783 	anl	a,#0xe0
      00273E CF               [12] 1784 	xch	a,r7
      00273F C4               [12] 1785 	swap	a
      002740 23               [12] 1786 	rl	a
      002741 CF               [12] 1787 	xch	a,r7
      002742 6F               [12] 1788 	xrl	a,r7
      002743 CF               [12] 1789 	xch	a,r7
      002744 54 E0            [12] 1790 	anl	a,#0xe0
      002746 CF               [12] 1791 	xch	a,r7
      002747 6F               [12] 1792 	xrl	a,r7
      002748 FE               [12] 1793 	mov	r6,a
      002749 74 20            [12] 1794 	mov	a,#0x20
      00274B 2A               [12] 1795 	add	a,r2
      00274C FC               [12] 1796 	mov	r4,a
      00274D E4               [12] 1797 	clr	a
      00274E 3B               [12] 1798 	addc	a,r3
      00274F FD               [12] 1799 	mov	r5,a
      002750 C0 07            [24] 1800 	push	ar7
      002752 C0 06            [24] 1801 	push	ar6
      002754 C0 03            [24] 1802 	push	ar3
      002756 C0 02            [24] 1803 	push	ar2
      002758 74 20            [12] 1804 	mov	a,#0x20
      00275A C0 E0            [24] 1805 	push	acc
      00275C E4               [12] 1806 	clr	a
      00275D C0 E0            [24] 1807 	push	acc
      00275F 8C 82            [24] 1808 	mov	dpl,r4
      002761 8D 83            [24] 1809 	mov	dph,r5
      002763 12 2A D0         [24] 1810 	lcall	__modsint
      002766 AC 82            [24] 1811 	mov	r4,dpl
      002768 AD 83            [24] 1812 	mov	r5,dph
      00276A 15 81            [12] 1813 	dec	sp
      00276C 15 81            [12] 1814 	dec	sp
      00276E D0 02            [24] 1815 	pop	ar2
      002770 D0 03            [24] 1816 	pop	ar3
      002772 D0 06            [24] 1817 	pop	ar6
      002774 D0 07            [24] 1818 	pop	ar7
      002776 EC               [12] 1819 	mov	a,r4
      002777 2F               [12] 1820 	add	a,r7
      002778 FC               [12] 1821 	mov	r4,a
      002779 ED               [12] 1822 	mov	a,r5
      00277A 3E               [12] 1823 	addc	a,r6
      00277B FD               [12] 1824 	mov	r5,a
      00277C EC               [12] 1825 	mov	a,r4
      00277D 24 02            [12] 1826 	add	a,#_u
      00277F F5 82            [12] 1827 	mov	dpl,a
      002781 ED               [12] 1828 	mov	a,r5
      002782 34 84            [12] 1829 	addc	a,#(_u >> 8)
      002784 F5 83            [12] 1830 	mov	dph,a
      002786 E0               [24] 1831 	movx	a,@dptr
      002787 FD               [12] 1832 	mov	r5,a
      002788 90 8C 0A         [24] 1833 	mov	dptr,#_n
      00278B E0               [24] 1834 	movx	a,@dptr
      00278C 2D               [12] 1835 	add	a,r5
      00278D F0               [24] 1836 	movx	@dptr,a
                                   1837 ;	life.c:161: for (x1 = x - 1; x1 <= x + 1; x1++)
      00278E 90 8C 06         [24] 1838 	mov	dptr,#_x1
      002791 74 01            [12] 1839 	mov	a,#0x01
      002793 2A               [12] 1840 	add	a,r2
      002794 F0               [24] 1841 	movx	@dptr,a
      002795 E4               [12] 1842 	clr	a
      002796 3B               [12] 1843 	addc	a,r3
      002797 A3               [24] 1844 	inc	dptr
      002798 F0               [24] 1845 	movx	@dptr,a
      002799 02 26 E3         [24] 1846 	ljmp	00173$
      00279C                       1847 00177$:
                                   1848 ;	life.c:160: for (y1 = y - 1; y1 <= y + 1; y1++)
      00279C 90 8C 08         [24] 1849 	mov	dptr,#_y1
      00279F E0               [24] 1850 	movx	a,@dptr
      0027A0 24 01            [12] 1851 	add	a,#0x01
      0027A2 F0               [24] 1852 	movx	@dptr,a
      0027A3 A3               [24] 1853 	inc	dptr
      0027A4 E0               [24] 1854 	movx	a,@dptr
      0027A5 34 00            [12] 1855 	addc	a,#0x00
      0027A7 F0               [24] 1856 	movx	@dptr,a
      0027A8 02 26 A5         [24] 1857 	ljmp	00176$
      0027AB                       1858 00140$:
                                   1859 ;	life.c:164: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0027AB EF               [12] 1860 	mov	a,r7
      0027AC C4               [12] 1861 	swap	a
      0027AD 23               [12] 1862 	rl	a
      0027AE 54 E0            [12] 1863 	anl	a,#0xe0
      0027B0 CE               [12] 1864 	xch	a,r6
      0027B1 C4               [12] 1865 	swap	a
      0027B2 23               [12] 1866 	rl	a
      0027B3 CE               [12] 1867 	xch	a,r6
      0027B4 6E               [12] 1868 	xrl	a,r6
      0027B5 CE               [12] 1869 	xch	a,r6
      0027B6 54 E0            [12] 1870 	anl	a,#0xe0
      0027B8 CE               [12] 1871 	xch	a,r6
      0027B9 6E               [12] 1872 	xrl	a,r6
      0027BA FF               [12] 1873 	mov	r7,a
      0027BB 90 8C 02         [24] 1874 	mov	dptr,#_x
      0027BE E0               [24] 1875 	movx	a,@dptr
      0027BF FC               [12] 1876 	mov	r4,a
      0027C0 A3               [24] 1877 	inc	dptr
      0027C1 E0               [24] 1878 	movx	a,@dptr
      0027C2 FD               [12] 1879 	mov	r5,a
      0027C3 EC               [12] 1880 	mov	a,r4
      0027C4 2E               [12] 1881 	add	a,r6
      0027C5 FA               [12] 1882 	mov	r2,a
      0027C6 ED               [12] 1883 	mov	a,r5
      0027C7 3F               [12] 1884 	addc	a,r7
      0027C8 FB               [12] 1885 	mov	r3,a
      0027C9 EA               [12] 1886 	mov	a,r2
      0027CA 24 02            [12] 1887 	add	a,#_nu
      0027CC FA               [12] 1888 	mov	r2,a
      0027CD EB               [12] 1889 	mov	a,r3
      0027CE 34 88            [12] 1890 	addc	a,#(_nu >> 8)
      0027D0 FB               [12] 1891 	mov	r3,a
      0027D1 90 8C 0A         [24] 1892 	mov	dptr,#_n
      0027D4 A8 10            [24] 1893 	mov	r0,_bp
      0027D6 08               [12] 1894 	inc	r0
      0027D7 E0               [24] 1895 	movx	a,@dptr
      0027D8 F6               [12] 1896 	mov	@r0,a
      0027D9 A8 10            [24] 1897 	mov	r0,_bp
      0027DB 08               [12] 1898 	inc	r0
      0027DC B6 03 02         [24] 1899 	cjne	@r0,#0x03,00400$
      0027DF 80 1F            [24] 1900 	sjmp	00200$
      0027E1                       1901 00400$:
      0027E1 A8 10            [24] 1902 	mov	r0,_bp
      0027E3 08               [12] 1903 	inc	r0
      0027E4 B6 02 15         [24] 1904 	cjne	@r0,#0x02,00199$
      0027E7 EC               [12] 1905 	mov	a,r4
      0027E8 2E               [12] 1906 	add	a,r6
      0027E9 FE               [12] 1907 	mov	r6,a
      0027EA ED               [12] 1908 	mov	a,r5
      0027EB 3F               [12] 1909 	addc	a,r7
      0027EC FF               [12] 1910 	mov	r7,a
      0027ED EE               [12] 1911 	mov	a,r6
      0027EE 24 02            [12] 1912 	add	a,#_u
      0027F0 FE               [12] 1913 	mov	r6,a
      0027F1 EF               [12] 1914 	mov	a,r7
      0027F2 34 84            [12] 1915 	addc	a,#(_u >> 8)
      0027F4 FF               [12] 1916 	mov	r7,a
      0027F5 8E 82            [24] 1917 	mov	dpl,r6
      0027F7 8F 83            [24] 1918 	mov	dph,r7
      0027F9 E0               [24] 1919 	movx	a,@dptr
      0027FA 70 04            [24] 1920 	jnz	00200$
      0027FC                       1921 00199$:
                                   1922 ;	assignBit
      0027FC C2 00            [12] 1923 	clr	b0
      0027FE 80 02            [24] 1924 	sjmp	00201$
      002800                       1925 00200$:
                                   1926 ;	assignBit
      002800 D2 00            [12] 1927 	setb	b0
      002802                       1928 00201$:
      002802 A2 00            [12] 1929 	mov	c,b0
      002804 E4               [12] 1930 	clr	a
      002805 33               [12] 1931 	rlc	a
      002806 8A 82            [24] 1932 	mov	dpl,r2
      002808 8B 83            [24] 1933 	mov	dph,r3
      00280A F0               [24] 1934 	movx	@dptr,a
                                   1935 ;	life.c:166: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      00280B 90 8C 04         [24] 1936 	mov	dptr,#_y
      00280E E0               [24] 1937 	movx	a,@dptr
      00280F FE               [12] 1938 	mov	r6,a
      002810 A3               [24] 1939 	inc	dptr
      002811 E0               [24] 1940 	movx	a,@dptr
      002812 C4               [12] 1941 	swap	a
      002813 23               [12] 1942 	rl	a
      002814 54 E0            [12] 1943 	anl	a,#0xe0
      002816 CE               [12] 1944 	xch	a,r6
      002817 C4               [12] 1945 	swap	a
      002818 23               [12] 1946 	rl	a
      002819 CE               [12] 1947 	xch	a,r6
      00281A 6E               [12] 1948 	xrl	a,r6
      00281B CE               [12] 1949 	xch	a,r6
      00281C 54 E0            [12] 1950 	anl	a,#0xe0
      00281E CE               [12] 1951 	xch	a,r6
      00281F 6E               [12] 1952 	xrl	a,r6
      002820 FF               [12] 1953 	mov	r7,a
      002821 90 8C 02         [24] 1954 	mov	dptr,#_x
      002824 E0               [24] 1955 	movx	a,@dptr
      002825 FC               [12] 1956 	mov	r4,a
      002826 A3               [24] 1957 	inc	dptr
      002827 E0               [24] 1958 	movx	a,@dptr
      002828 FD               [12] 1959 	mov	r5,a
      002829 EC               [12] 1960 	mov	a,r4
      00282A 2E               [12] 1961 	add	a,r6
      00282B FE               [12] 1962 	mov	r6,a
      00282C ED               [12] 1963 	mov	a,r5
      00282D 3F               [12] 1964 	addc	a,r7
      00282E FF               [12] 1965 	mov	r7,a
      00282F EE               [12] 1966 	mov	a,r6
      002830 24 02            [12] 1967 	add	a,#_pu
      002832 F5 82            [12] 1968 	mov	dpl,a
      002834 EF               [12] 1969 	mov	a,r7
      002835 34 80            [12] 1970 	addc	a,#(_pu >> 8)
      002837 F5 83            [12] 1971 	mov	dph,a
      002839 E0               [24] 1972 	movx	a,@dptr
      00283A FD               [12] 1973 	mov	r5,a
      00283B EE               [12] 1974 	mov	a,r6
      00283C 24 02            [12] 1975 	add	a,#_nu
      00283E F5 82            [12] 1976 	mov	dpl,a
      002840 EF               [12] 1977 	mov	a,r7
      002841 34 88            [12] 1978 	addc	a,#(_nu >> 8)
      002843 F5 83            [12] 1979 	mov	dph,a
      002845 E0               [24] 1980 	movx	a,@dptr
      002846 FF               [12] 1981 	mov	r7,a
      002847 ED               [12] 1982 	mov	a,r5
      002848 B5 07 02         [24] 1983 	cjne	a,ar7,00404$
      00284B 80 05            [24] 1984 	sjmp	00142$
      00284D                       1985 00404$:
      00284D 90 8C 14         [24] 1986 	mov	dptr,#_cycle2
      002850 E4               [12] 1987 	clr	a
      002851 F0               [24] 1988 	movx	@dptr,a
      002852                       1989 00142$:
                                   1990 ;	life.c:167: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      002852 90 8C 04         [24] 1991 	mov	dptr,#_y
      002855 E0               [24] 1992 	movx	a,@dptr
      002856 FE               [12] 1993 	mov	r6,a
      002857 A3               [24] 1994 	inc	dptr
      002858 E0               [24] 1995 	movx	a,@dptr
      002859 C4               [12] 1996 	swap	a
      00285A 23               [12] 1997 	rl	a
      00285B 54 E0            [12] 1998 	anl	a,#0xe0
      00285D CE               [12] 1999 	xch	a,r6
      00285E C4               [12] 2000 	swap	a
      00285F 23               [12] 2001 	rl	a
      002860 CE               [12] 2002 	xch	a,r6
      002861 6E               [12] 2003 	xrl	a,r6
      002862 CE               [12] 2004 	xch	a,r6
      002863 54 E0            [12] 2005 	anl	a,#0xe0
      002865 CE               [12] 2006 	xch	a,r6
      002866 6E               [12] 2007 	xrl	a,r6
      002867 FF               [12] 2008 	mov	r7,a
      002868 90 8C 02         [24] 2009 	mov	dptr,#_x
      00286B E0               [24] 2010 	movx	a,@dptr
      00286C FC               [12] 2011 	mov	r4,a
      00286D A3               [24] 2012 	inc	dptr
      00286E E0               [24] 2013 	movx	a,@dptr
      00286F FD               [12] 2014 	mov	r5,a
      002870 EC               [12] 2015 	mov	a,r4
      002871 2E               [12] 2016 	add	a,r6
      002872 FE               [12] 2017 	mov	r6,a
      002873 ED               [12] 2018 	mov	a,r5
      002874 3F               [12] 2019 	addc	a,r7
      002875 FF               [12] 2020 	mov	r7,a
      002876 EE               [12] 2021 	mov	a,r6
      002877 24 02            [12] 2022 	add	a,#_u
      002879 F5 82            [12] 2023 	mov	dpl,a
      00287B EF               [12] 2024 	mov	a,r7
      00287C 34 84            [12] 2025 	addc	a,#(_u >> 8)
      00287E F5 83            [12] 2026 	mov	dph,a
      002880 E0               [24] 2027 	movx	a,@dptr
      002881 FD               [12] 2028 	mov	r5,a
      002882 EE               [12] 2029 	mov	a,r6
      002883 24 02            [12] 2030 	add	a,#_nu
      002885 F5 82            [12] 2031 	mov	dpl,a
      002887 EF               [12] 2032 	mov	a,r7
      002888 34 88            [12] 2033 	addc	a,#(_nu >> 8)
      00288A F5 83            [12] 2034 	mov	dph,a
      00288C E0               [24] 2035 	movx	a,@dptr
      00288D FF               [12] 2036 	mov	r7,a
      00288E ED               [12] 2037 	mov	a,r5
      00288F B5 07 02         [24] 2038 	cjne	a,ar7,00405$
      002892 80 05            [24] 2039 	sjmp	00179$
      002894                       2040 00405$:
      002894 90 8C 13         [24] 2041 	mov	dptr,#_fixed
      002897 E4               [12] 2042 	clr	a
      002898 F0               [24] 2043 	movx	@dptr,a
      002899                       2044 00179$:
                                   2045 ;	life.c:158: for (x = 0; x < W; x++) {
      002899 90 8C 02         [24] 2046 	mov	dptr,#_x
      00289C E0               [24] 2047 	movx	a,@dptr
      00289D 24 01            [12] 2048 	add	a,#0x01
      00289F F0               [24] 2049 	movx	@dptr,a
      0028A0 A3               [24] 2050 	inc	dptr
      0028A1 E0               [24] 2051 	movx	a,@dptr
      0028A2 34 00            [12] 2052 	addc	a,#0x00
      0028A4 F0               [24] 2053 	movx	@dptr,a
      0028A5 90 8C 02         [24] 2054 	mov	dptr,#_x
      0028A8 E0               [24] 2055 	movx	a,@dptr
      0028A9 FE               [12] 2056 	mov	r6,a
      0028AA A3               [24] 2057 	inc	dptr
      0028AB E0               [24] 2058 	movx	a,@dptr
      0028AC FF               [12] 2059 	mov	r7,a
      0028AD C3               [12] 2060 	clr	c
      0028AE EE               [12] 2061 	mov	a,r6
      0028AF 94 20            [12] 2062 	subb	a,#0x20
      0028B1 EF               [12] 2063 	mov	a,r7
      0028B2 64 80            [12] 2064 	xrl	a,#0x80
      0028B4 94 80            [12] 2065 	subb	a,#0x80
      0028B6 50 03            [24] 2066 	jnc	00406$
      0028B8 02 26 5E         [24] 2067 	ljmp	00178$
      0028BB                       2068 00406$:
                                   2069 ;	life.c:157: for (y = 0; y < H; y++) {
      0028BB 90 8C 04         [24] 2070 	mov	dptr,#_y
      0028BE E0               [24] 2071 	movx	a,@dptr
      0028BF 24 01            [12] 2072 	add	a,#0x01
      0028C1 F0               [24] 2073 	movx	@dptr,a
      0028C2 A3               [24] 2074 	inc	dptr
      0028C3 E0               [24] 2075 	movx	a,@dptr
      0028C4 34 00            [12] 2076 	addc	a,#0x00
      0028C6 F0               [24] 2077 	movx	@dptr,a
      0028C7 90 8C 04         [24] 2078 	mov	dptr,#_y
      0028CA E0               [24] 2079 	movx	a,@dptr
      0028CB FE               [12] 2080 	mov	r6,a
      0028CC A3               [24] 2081 	inc	dptr
      0028CD E0               [24] 2082 	movx	a,@dptr
      0028CE FF               [12] 2083 	mov	r7,a
      0028CF C3               [12] 2084 	clr	c
      0028D0 EE               [12] 2085 	mov	a,r6
      0028D1 94 20            [12] 2086 	subb	a,#0x20
      0028D3 EF               [12] 2087 	mov	a,r7
      0028D4 64 80            [12] 2088 	xrl	a,#0x80
      0028D6 94 80            [12] 2089 	subb	a,#0x80
      0028D8 50 03            [24] 2090 	jnc	00407$
      0028DA 02 26 57         [24] 2091 	ljmp	00180$
      0028DD                       2092 00407$:
                                   2093 ;	life.c:171: memcpy(pu, u, sizeof (u));
      0028DD E4               [12] 2094 	clr	a
      0028DE C0 E0            [24] 2095 	push	acc
      0028E0 74 04            [12] 2096 	mov	a,#0x04
      0028E2 C0 E0            [24] 2097 	push	acc
      0028E4 74 02            [12] 2098 	mov	a,#_u
      0028E6 C0 E0            [24] 2099 	push	acc
      0028E8 74 84            [12] 2100 	mov	a,#(_u >> 8)
      0028EA C0 E0            [24] 2101 	push	acc
      0028EC E4               [12] 2102 	clr	a
      0028ED C0 E0            [24] 2103 	push	acc
      0028EF 90 80 02         [24] 2104 	mov	dptr,#_pu
      0028F2 75 F0 00         [24] 2105 	mov	b,#0x00
      0028F5 12 29 B7         [24] 2106 	lcall	___memcpy
      0028F8 E5 81            [12] 2107 	mov	a,sp
      0028FA 24 FB            [12] 2108 	add	a,#0xfb
      0028FC F5 81            [12] 2109 	mov	sp,a
                                   2110 ;	life.c:172: memcpy(u, nu, sizeof (nu));
      0028FE E4               [12] 2111 	clr	a
      0028FF C0 E0            [24] 2112 	push	acc
      002901 74 04            [12] 2113 	mov	a,#0x04
      002903 C0 E0            [24] 2114 	push	acc
      002905 74 02            [12] 2115 	mov	a,#_nu
      002907 C0 E0            [24] 2116 	push	acc
      002909 74 88            [12] 2117 	mov	a,#(_nu >> 8)
      00290B C0 E0            [24] 2118 	push	acc
      00290D E4               [12] 2119 	clr	a
      00290E C0 E0            [24] 2120 	push	acc
      002910 90 84 02         [24] 2121 	mov	dptr,#_u
      002913 75 F0 00         [24] 2122 	mov	b,#0x00
      002916 12 29 B7         [24] 2123 	lcall	___memcpy
      002919 E5 81            [12] 2124 	mov	a,sp
      00291B 24 FB            [12] 2125 	add	a,#0xfb
      00291D F5 81            [12] 2126 	mov	sp,a
                                   2127 ;	life.c:200: if (fixed || cycle2) {
      00291F 90 8C 13         [24] 2128 	mov	dptr,#_fixed
      002922 E0               [24] 2129 	movx	a,@dptr
      002923 70 09            [24] 2130 	jnz	00101$
      002925 90 8C 14         [24] 2131 	mov	dptr,#_cycle2
      002928 E0               [24] 2132 	movx	a,@dptr
      002929 70 03            [24] 2133 	jnz	00409$
      00292B 02 26 37         [24] 2134 	ljmp	00187$
      00292E                       2135 00409$:
      00292E                       2136 00101$:
                                   2137 ;	life.c:201: printstr("DONE\r\n");
      00292E 7D 1C            [12] 2138 	mov	r5,#___str_8
      002930 7E 2C            [12] 2139 	mov	r6,#(___str_8 >> 8)
      002932 7F 80            [12] 2140 	mov	r7,#0x80
                                   2141 ;	life.c:48: return;
      002934                       2142 00183$:
                                   2143 ;	life.c:46: for (; *s; s++) putchar(*s);
      002934 8D 82            [24] 2144 	mov	dpl,r5
      002936 8E 83            [24] 2145 	mov	dph,r6
      002938 8F F0            [24] 2146 	mov	b,r7
      00293A 12 2A B4         [24] 2147 	lcall	__gptrget
      00293D FC               [12] 2148 	mov	r4,a
      00293E 60 10            [24] 2149 	jz	00149$
      002940 7B 00            [12] 2150 	mov	r3,#0x00
      002942 8C 82            [24] 2151 	mov	dpl,r4
      002944 8B 83            [24] 2152 	mov	dph,r3
      002946 12 20 75         [24] 2153 	lcall	_putchar
      002949 0D               [12] 2154 	inc	r5
                                   2155 ;	life.c:201: printstr("DONE\r\n");
      00294A BD 00 E7         [24] 2156 	cjne	r5,#0x00,00183$
      00294D 0E               [12] 2157 	inc	r6
      00294E 80 E4            [24] 2158 	sjmp	00183$
      002950                       2159 00149$:
                                   2160 ;	life.c:202: (void)getchar();
      002950 12 20 7A         [24] 2161 	lcall	_getchar
                                   2162 ;	life.c:203: break;
      002953                       2163 00104$:
                                   2164 ;	life.c:207: if (i1) {
      002953 90 80 01         [24] 2165 	mov	dptr,#_i1
      002956 E0               [24] 2166 	movx	a,@dptr
      002957 60 25            [24] 2167 	jz	00193$
                                   2168 ;	life.c:208: printstr("BREAK\r\n");
      002959 7D 23            [12] 2169 	mov	r5,#___str_9
      00295B 7E 2C            [12] 2170 	mov	r6,#(___str_9 >> 8)
      00295D 7F 80            [12] 2171 	mov	r7,#0x80
                                   2172 ;	life.c:48: return;
      00295F                       2173 00190$:
                                   2174 ;	life.c:46: for (; *s; s++) putchar(*s);
      00295F 8D 82            [24] 2175 	mov	dpl,r5
      002961 8E 83            [24] 2176 	mov	dph,r6
      002963 8F F0            [24] 2177 	mov	b,r7
      002965 12 2A B4         [24] 2178 	lcall	__gptrget
      002968 FC               [12] 2179 	mov	r4,a
      002969 60 10            [24] 2180 	jz	00151$
      00296B 7B 00            [12] 2181 	mov	r3,#0x00
      00296D 8C 82            [24] 2182 	mov	dpl,r4
      00296F 8B 83            [24] 2183 	mov	dph,r3
      002971 12 20 75         [24] 2184 	lcall	_putchar
      002974 0D               [12] 2185 	inc	r5
                                   2186 ;	life.c:208: printstr("BREAK\r\n");
      002975 BD 00 E7         [24] 2187 	cjne	r5,#0x00,00190$
      002978 0E               [12] 2188 	inc	r6
      002979 80 E4            [24] 2189 	sjmp	00190$
      00297B                       2190 00151$:
                                   2191 ;	life.c:209: (void)getchar();
      00297B 12 20 7A         [24] 2192 	lcall	_getchar
      00297E                       2193 00193$:
                                   2194 ;	life.c:184: for (i0 = 0; !i0; ) {
      00297E 90 80 00         [24] 2195 	mov	dptr,#_i0
      002981 E0               [24] 2196 	movx	a,@dptr
      002982 70 03            [24] 2197 	jnz	00415$
      002984 02 23 79         [24] 2198 	ljmp	00192$
      002987                       2199 00415$:
                                   2200 ;	life.c:213: EA = 0;
                                   2201 ;	assignBit
      002987 C2 AF            [12] 2202 	clr	_EA
                                   2203 ;	life.c:215: printstr("TERM\r\n");
      002989 7D 2B            [12] 2204 	mov	r5,#___str_10
      00298B 7E 2C            [12] 2205 	mov	r6,#(___str_10 >> 8)
      00298D 7F 80            [12] 2206 	mov	r7,#0x80
                                   2207 ;	life.c:48: return;
      00298F                       2208 00195$:
                                   2209 ;	life.c:46: for (; *s; s++) putchar(*s);
      00298F 8D 82            [24] 2210 	mov	dpl,r5
      002991 8E 83            [24] 2211 	mov	dph,r6
      002993 8F F0            [24] 2212 	mov	b,r7
      002995 12 2A B4         [24] 2213 	lcall	__gptrget
      002998 FC               [12] 2214 	mov	r4,a
      002999 60 10            [24] 2215 	jz	00153$
      00299B 7B 00            [12] 2216 	mov	r3,#0x00
      00299D 8C 82            [24] 2217 	mov	dpl,r4
      00299F 8B 83            [24] 2218 	mov	dph,r3
      0029A1 12 20 75         [24] 2219 	lcall	_putchar
      0029A4 0D               [12] 2220 	inc	r5
                                   2221 ;	life.c:215: printstr("TERM\r\n");
      0029A5 BD 00 E7         [24] 2222 	cjne	r5,#0x00,00195$
      0029A8 0E               [12] 2223 	inc	r6
      0029A9 80 E4            [24] 2224 	sjmp	00195$
      0029AB                       2225 00153$:
                                   2226 ;	life.c:216: (void)getchar();
      0029AB 12 20 7A         [24] 2227 	lcall	_getchar
                                   2228 ;	life.c:220: __endasm;
      0029AE 02 00 00         [24] 2229 	ljmp	0
                                   2230 ;	life.c:221: }
      0029B1 85 10 81         [24] 2231 	mov	sp,_bp
      0029B4 D0 10            [24] 2232 	pop	_bp
      0029B6 22               [24] 2233 	ret
                                   2234 	.area CSEG    (CODE)
                                   2235 	.area CONST   (CODE)
      002BDC                       2236 _digits:
      002BDC 30                    2237 	.db #0x30	; 48	'0'
      002BDD 31                    2238 	.db #0x31	; 49	'1'
      002BDE 32                    2239 	.db #0x32	; 50	'2'
      002BDF 33                    2240 	.db #0x33	; 51	'3'
      002BE0 34                    2241 	.db #0x34	; 52	'4'
      002BE1 35                    2242 	.db #0x35	; 53	'5'
      002BE2 36                    2243 	.db #0x36	; 54	'6'
      002BE3 37                    2244 	.db #0x37	; 55	'7'
      002BE4 38                    2245 	.db #0x38	; 56	'8'
      002BE5 39                    2246 	.db #0x39	; 57	'9'
      002BE6 61                    2247 	.db #0x61	; 97	'a'
      002BE7 62                    2248 	.db #0x62	; 98	'b'
      002BE8 63                    2249 	.db #0x63	; 99	'c'
      002BE9 64                    2250 	.db #0x64	; 100	'd'
      002BEA 65                    2251 	.db #0x65	; 101	'e'
      002BEB 66                    2252 	.db #0x66	; 102	'f'
                                   2253 	.area CONST   (CODE)
      002BEC                       2254 ___str_0:
      002BEC 1B                    2255 	.db 0x1b
      002BED 5B 32 4A              2256 	.ascii "[2J"
      002BF0 1B                    2257 	.db 0x1b
      002BF1 5B 6D                 2258 	.ascii "[m"
      002BF3 00                    2259 	.db 0x00
                                   2260 	.area CSEG    (CODE)
                                   2261 	.area CONST   (CODE)
      002BF4                       2262 ___str_1:
      002BF4 0D                    2263 	.db 0x0d
      002BF5 0A                    2264 	.db 0x0a
      002BF6 00                    2265 	.db 0x00
                                   2266 	.area CSEG    (CODE)
                                   2267 	.area CONST   (CODE)
      002BF7                       2268 ___str_2:
      002BF7 5B 5D                 2269 	.ascii "[]"
      002BF9 00                    2270 	.db 0x00
                                   2271 	.area CSEG    (CODE)
                                   2272 	.area CONST   (CODE)
      002BFA                       2273 ___str_3:
      002BFA 23 23                 2274 	.ascii "##"
      002BFC 00                    2275 	.db 0x00
                                   2276 	.area CSEG    (CODE)
                                   2277 	.area CONST   (CODE)
      002BFD                       2278 ___str_4:
      002BFD 4C 4F 41 44 20 3C     2279 	.ascii "LOAD <"
      002C03 00                    2280 	.db 0x00
                                   2281 	.area CSEG    (CODE)
                                   2282 	.area CONST   (CODE)
      002C04                       2283 ___str_5:
      002C04 3E                    2284 	.ascii ">"
      002C05 0D                    2285 	.db 0x0d
      002C06 0A                    2286 	.db 0x0a
      002C07 00                    2287 	.db 0x00
                                   2288 	.area CSEG    (CODE)
                                   2289 	.area CONST   (CODE)
      002C08                       2290 ___str_6:
      002C08 1B                    2291 	.db 0x1b
      002C09 5B 32 4A              2292 	.ascii "[2J"
      002C0C 1B                    2293 	.db 0x1b
      002C0D 5B 6D 49 4E 49 54     2294 	.ascii "[mINIT"
      002C13 0D                    2295 	.db 0x0d
      002C14 0A                    2296 	.db 0x0a
      002C15 00                    2297 	.db 0x00
                                   2298 	.area CSEG    (CODE)
                                   2299 	.area CONST   (CODE)
      002C16                       2300 ___str_7:
      002C16 52 44 59              2301 	.ascii "RDY"
      002C19 0D                    2302 	.db 0x0d
      002C1A 0A                    2303 	.db 0x0a
      002C1B 00                    2304 	.db 0x00
                                   2305 	.area CSEG    (CODE)
                                   2306 	.area CONST   (CODE)
      002C1C                       2307 ___str_8:
      002C1C 44 4F 4E 45           2308 	.ascii "DONE"
      002C20 0D                    2309 	.db 0x0d
      002C21 0A                    2310 	.db 0x0a
      002C22 00                    2311 	.db 0x00
                                   2312 	.area CSEG    (CODE)
                                   2313 	.area CONST   (CODE)
      002C23                       2314 ___str_9:
      002C23 42 52 45 41 4B        2315 	.ascii "BREAK"
      002C28 0D                    2316 	.db 0x0d
      002C29 0A                    2317 	.db 0x0a
      002C2A 00                    2318 	.db 0x00
                                   2319 	.area CSEG    (CODE)
                                   2320 	.area CONST   (CODE)
      002C2B                       2321 ___str_10:
      002C2B 54 45 52 4D           2322 	.ascii "TERM"
      002C2F 0D                    2323 	.db 0x0d
      002C30 0A                    2324 	.db 0x0a
      002C31 00                    2325 	.db 0x00
                                   2326 	.area CSEG    (CODE)
                                   2327 	.area XINIT   (CODE)
                                   2328 	.area CABS    (ABS,CODE)
