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
                                    467 ;	life.c:64: void int0(void) __interrupt 0 __using 1 {
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
                                    483 ;	life.c:65: i0 = 1;
      002089 90 80 00         [24]  484 	mov	dptr,#_i0
      00208C 74 01            [12]  485 	mov	a,#0x01
      00208E F0               [24]  486 	movx	@dptr,a
                                    487 ;	life.c:66: }
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
                                    498 ;	life.c:69: void int1(void) __interrupt 2 __using 1 {
                                    499 ;	-----------------------------------------
                                    500 ;	 function int1
                                    501 ;	-----------------------------------------
      002096                        502 _int1:
      002096 C0 E0            [24]  503 	push	acc
      002098 C0 82            [24]  504 	push	dpl
      00209A C0 83            [24]  505 	push	dph
                                    506 ;	life.c:70: i1 = 1;
      00209C 90 80 01         [24]  507 	mov	dptr,#_i1
      00209F 74 01            [12]  508 	mov	a,#0x01
      0020A1 F0               [24]  509 	movx	@dptr,a
                                    510 ;	life.c:71: }
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
                                    535 ;	life.c:98: void show(char hdr) {
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
                                    548 ;	life.c:99: if (hdr) {
      0020A9 E5 82            [12]  549 	mov	a,dpl
      0020AB FF               [12]  550 	mov	r7,a
      0020AC 70 03            [24]  551 	jnz	00241$
      0020AE 02 22 71         [24]  552 	ljmp	00102$
      0020B1                        553 00241$:
                                    554 ;	life.c:100: printstr("\033[2J\033[m");
      0020B1 7D 4D            [12]  555 	mov	r5,#___str_0
      0020B3 7E 2C            [12]  556 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  557 	mov	r7,#0x80
                                    558 ;	life.c:48: return;
      0020B7                        559 00128$:
                                    560 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  561 	mov	dpl,r5
      0020B9 8E 83            [24]  562 	mov	dph,r6
      0020BB 8F F0            [24]  563 	mov	b,r7
      0020BD 12 2B 15         [24]  564 	lcall	__gptrget
      0020C0 FC               [12]  565 	mov	r4,a
      0020C1 60 10            [24]  566 	jz	00109$
      0020C3 7B 00            [12]  567 	mov	r3,#0x00
      0020C5 8C 82            [24]  568 	mov	dpl,r4
      0020C7 8B 83            [24]  569 	mov	dph,r3
      0020C9 12 20 75         [24]  570 	lcall	_putchar
      0020CC 0D               [12]  571 	inc	r5
                                    572 ;	life.c:100: printstr("\033[2J\033[m");
      0020CD BD 00 E7         [24]  573 	cjne	r5,#0x00,00128$
      0020D0 0E               [12]  574 	inc	r6
      0020D1 80 E4            [24]  575 	sjmp	00128$
      0020D3                        576 00109$:
                                    577 ;	life.c:90: for (j = 0; j < 4; j++) {
      0020D3 90 8C 15         [24]  578 	mov	dptr,#_j
      0020D6 E4               [12]  579 	clr	a
      0020D7 F0               [24]  580 	movx	@dptr,a
      0020D8 A3               [24]  581 	inc	dptr
      0020D9 F0               [24]  582 	movx	@dptr,a
      0020DA                        583 00130$:
                                    584 ;	life.c:91: print16x(generation[3 - j]);
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
      002126 24 3D            [12]  636 	add	a,#_digits
      002128 F5 82            [12]  637 	mov	dpl,a
      00212A EF               [12]  638 	mov	a,r7
      00212B 34 2C            [12]  639 	addc	a,#(_digits >> 8)
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
      002143 24 3D            [12]  653 	add	a,#_digits
      002145 F5 82            [12]  654 	mov	dpl,a
      002147 EE               [12]  655 	mov	a,r6
      002148 34 2C            [12]  656 	addc	a,#(_digits >> 8)
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
      002172 24 3D            [12]  684 	add	a,#_digits
      002174 F5 82            [12]  685 	mov	dpl,a
      002176 EF               [12]  686 	mov	a,r7
      002177 34 2C            [12]  687 	addc	a,#(_digits >> 8)
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
      00218D 24 3D            [12]  700 	add	a,#_digits
      00218F F5 82            [12]  701 	mov	dpl,a
      002191 ED               [12]  702 	mov	a,r5
      002192 34 2C            [12]  703 	addc	a,#(_digits >> 8)
      002194 F5 83            [12]  704 	mov	dph,a
      002196 E4               [12]  705 	clr	a
      002197 93               [24]  706 	movc	a,@a+dptr
      002198 FF               [12]  707 	mov	r7,a
      002199 7E 00            [12]  708 	mov	r6,#0x00
      00219B 8F 82            [24]  709 	mov	dpl,r7
      00219D 8E 83            [24]  710 	mov	dph,r6
      00219F 12 20 75         [24]  711 	lcall	_putchar
                                    712 ;	life.c:92: if (j < 3) putchar(' ');
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
                                    729 ;	life.c:90: for (j = 0; j < 4; j++) {
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
                                    753 ;	life.c:102: printstr("\r\n");
      0021DD 7D 55            [12]  754 	mov	r5,#___str_1
      0021DF 7E 2C            [12]  755 	mov	r6,#(___str_1 >> 8)
      0021E1 7F 80            [12]  756 	mov	r7,#0x80
                                    757 ;	life.c:48: return;
      0021E3                        758 00133$:
                                    759 ;	life.c:46: for (; *s; s++) putchar(*s);
      0021E3 8D 82            [24]  760 	mov	dpl,r5
      0021E5 8E 83            [24]  761 	mov	dph,r6
      0021E7 8F F0            [24]  762 	mov	b,r7
      0021E9 12 2B 15         [24]  763 	lcall	__gptrget
      0021EC FC               [12]  764 	mov	r4,a
      0021ED 60 10            [24]  765 	jz	00116$
      0021EF 7B 00            [12]  766 	mov	r3,#0x00
      0021F1 8C 82            [24]  767 	mov	dpl,r4
      0021F3 8B 83            [24]  768 	mov	dph,r3
      0021F5 12 20 75         [24]  769 	lcall	_putchar
      0021F8 0D               [12]  770 	inc	r5
                                    771 ;	life.c:102: printstr("\r\n");
      0021F9 BD 00 E7         [24]  772 	cjne	r5,#0x00,00133$
      0021FC 0E               [12]  773 	inc	r6
      0021FD 80 E4            [24]  774 	sjmp	00133$
      0021FF                        775 00116$:
                                    776 ;	life.c:81: for (j = 0; j < 4; j++) {
      0021FF 90 8C 15         [24]  777 	mov	dptr,#_j
      002202 E4               [12]  778 	clr	a
      002203 F0               [24]  779 	movx	@dptr,a
      002204 A3               [24]  780 	inc	dptr
      002205 F0               [24]  781 	movx	@dptr,a
      002206                        782 00135$:
                                    783 ;	life.c:82: generation[j]++;
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
                                    820 ;	life.c:83: if (generation[j]) break;
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
                                    846 ;	life.c:81: for (j = 0; j < 4; j++) {
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
                                    868 ;	life.c:103: updategen();
      002271                        869 00102$:
                                    870 ;	life.c:106: for (x = 0; x < W; x++) {
      002271 90 8C 02         [24]  871 	mov	dptr,#_x
      002274 E4               [12]  872 	clr	a
      002275 F0               [24]  873 	movx	@dptr,a
      002276 A3               [24]  874 	inc	dptr
      002277 F0               [24]  875 	movx	@dptr,a
      002278                        876 00148$:
                                    877 ;	life.c:107: for (y = 0; y < H; y++)
      002278 90 8C 04         [24]  878 	mov	dptr,#_y
      00227B E4               [12]  879 	clr	a
      00227C F0               [24]  880 	movx	@dptr,a
      00227D A3               [24]  881 	inc	dptr
      00227E F0               [24]  882 	movx	@dptr,a
      00227F                        883 00143$:
                                    884 ;	life.c:108: if (u[A2D(W, y, x)]) printstr("[]");
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
      0022B2 7D 58            [12]  925 	mov	r5,#___str_2
      0022B4 7E 2C            [12]  926 	mov	r6,#(___str_2 >> 8)
      0022B6 7F 80            [12]  927 	mov	r7,#0x80
                                    928 ;	life.c:48: return;
      0022B8                        929 00138$:
                                    930 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022B8 8D 82            [24]  931 	mov	dpl,r5
      0022BA 8E 83            [24]  932 	mov	dph,r6
      0022BC 8F F0            [24]  933 	mov	b,r7
      0022BE 12 2B 15         [24]  934 	lcall	__gptrget
      0022C1 FC               [12]  935 	mov	r4,a
      0022C2 60 32            [24]  936 	jz	00144$
      0022C4 7B 00            [12]  937 	mov	r3,#0x00
      0022C6 8C 82            [24]  938 	mov	dpl,r4
      0022C8 8B 83            [24]  939 	mov	dph,r3
      0022CA 12 20 75         [24]  940 	lcall	_putchar
      0022CD 0D               [12]  941 	inc	r5
                                    942 ;	life.c:108: if (u[A2D(W, y, x)]) printstr("[]");
      0022CE BD 00 E7         [24]  943 	cjne	r5,#0x00,00138$
      0022D1 0E               [12]  944 	inc	r6
      0022D2 80 E4            [24]  945 	sjmp	00138$
      0022D4                        946 00104$:
                                    947 ;	life.c:109: else printstr("##");
      0022D4 7D 5B            [12]  948 	mov	r5,#___str_3
      0022D6 7E 2C            [12]  949 	mov	r6,#(___str_3 >> 8)
      0022D8 7F 80            [12]  950 	mov	r7,#0x80
                                    951 ;	life.c:48: return;
      0022DA                        952 00141$:
                                    953 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022DA 8D 82            [24]  954 	mov	dpl,r5
      0022DC 8E 83            [24]  955 	mov	dph,r6
      0022DE 8F F0            [24]  956 	mov	b,r7
      0022E0 12 2B 15         [24]  957 	lcall	__gptrget
      0022E3 FC               [12]  958 	mov	r4,a
      0022E4 60 10            [24]  959 	jz	00144$
      0022E6 7B 00            [12]  960 	mov	r3,#0x00
      0022E8 8C 82            [24]  961 	mov	dpl,r4
      0022EA 8B 83            [24]  962 	mov	dph,r3
      0022EC 12 20 75         [24]  963 	lcall	_putchar
      0022EF 0D               [12]  964 	inc	r5
                                    965 ;	life.c:109: else printstr("##");
      0022F0 BD 00 E7         [24]  966 	cjne	r5,#0x00,00141$
      0022F3 0E               [12]  967 	inc	r6
      0022F4 80 E4            [24]  968 	sjmp	00141$
      0022F6                        969 00144$:
                                    970 ;	life.c:107: for (y = 0; y < H; y++)
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
                                    994 ;	life.c:110: printstr("\r\n");
      002318 7D 55            [12]  995 	mov	r5,#___str_1
      00231A 7E 2C            [12]  996 	mov	r6,#(___str_1 >> 8)
      00231C 7F 80            [12]  997 	mov	r7,#0x80
                                    998 ;	life.c:48: return;
      00231E                        999 00146$:
                                   1000 ;	life.c:46: for (; *s; s++) putchar(*s);
      00231E 8D 82            [24] 1001 	mov	dpl,r5
      002320 8E 83            [24] 1002 	mov	dph,r6
      002322 8F F0            [24] 1003 	mov	b,r7
      002324 12 2B 15         [24] 1004 	lcall	__gptrget
      002327 FC               [12] 1005 	mov	r4,a
      002328 60 10            [24] 1006 	jz	00126$
      00232A 7B 00            [12] 1007 	mov	r3,#0x00
      00232C 8C 82            [24] 1008 	mov	dpl,r4
      00232E 8B 83            [24] 1009 	mov	dph,r3
      002330 12 20 75         [24] 1010 	lcall	_putchar
      002333 0D               [12] 1011 	inc	r5
                                   1012 ;	life.c:110: printstr("\r\n");
      002334 BD 00 E7         [24] 1013 	cjne	r5,#0x00,00146$
      002337 0E               [12] 1014 	inc	r6
      002338 80 E4            [24] 1015 	sjmp	00146$
      00233A                       1016 00126$:
                                   1017 ;	life.c:106: for (x = 0; x < W; x++) {
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
                                   1041 ;	life.c:113: return;
                                   1042 ;	life.c:114: }
      00235C 22               [24] 1043 	ret
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'main'
                                   1046 ;------------------------------------------------------------
                                   1047 ;__2621440020              Allocated to registers 
                                   1048 ;s                         Allocated to registers r5 r6 r7 
                                   1049 ;__2621440022              Allocated to registers 
                                   1050 ;s                         Allocated to registers r5 r6 r7 
                                   1051 ;__1310720015              Allocated to registers r6 r7 
                                   1052 ;a                         Allocated to registers r4 r5 
                                   1053 ;__1310720017              Allocated to registers 
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
                                   1065 ;	life.c:180: void main(void) {
                                   1066 ;	-----------------------------------------
                                   1067 ;	 function main
                                   1068 ;	-----------------------------------------
      00235D                       1069 _main:
      00235D C0 10            [24] 1070 	push	_bp
      00235F 85 81 10         [24] 1071 	mov	_bp,sp
      002362 05 81            [12] 1072 	inc	sp
                                   1073 ;	life.c:181: IT0 = 1;
                                   1074 ;	assignBit
      002364 D2 88            [12] 1075 	setb	_IT0
                                   1076 ;	life.c:182: IT1 = 1;
                                   1077 ;	assignBit
      002366 D2 8A            [12] 1078 	setb	_IT1
                                   1079 ;	life.c:183: EX0 = 1;
                                   1080 ;	assignBit
      002368 D2 A8            [12] 1081 	setb	_EX0
                                   1082 ;	life.c:184: EX1 = 1;
                                   1083 ;	assignBit
      00236A D2 AA            [12] 1084 	setb	_EX1
                                   1085 ;	life.c:185: EA = 1;
                                   1086 ;	assignBit
      00236C D2 AF            [12] 1087 	setb	_EA
                                   1088 ;	life.c:187: for (i0 = 0; !i0; ) {
      00236E 90 80 00         [24] 1089 	mov	dptr,#_i0
      002371 E4               [12] 1090 	clr	a
      002372 F0               [24] 1091 	movx	@dptr,a
      002373 90 80 01         [24] 1092 	mov	dptr,#_i1
      002376 F0               [24] 1093 	movx	@dptr,a
      002377                       1094 00202$:
                                   1095 ;	life.c:117: memset(u, 0, sizeof (u));
      002377 E4               [12] 1096 	clr	a
      002378 C0 E0            [24] 1097 	push	acc
      00237A 74 04            [12] 1098 	mov	a,#0x04
      00237C C0 E0            [24] 1099 	push	acc
      00237E E4               [12] 1100 	clr	a
      00237F C0 E0            [24] 1101 	push	acc
      002381 90 84 02         [24] 1102 	mov	dptr,#_u
      002384 75 F0 00         [24] 1103 	mov	b,#0x00
      002387 12 2A AB         [24] 1104 	lcall	_memset
      00238A 15 81            [12] 1105 	dec	sp
      00238C 15 81            [12] 1106 	dec	sp
      00238E 15 81            [12] 1107 	dec	sp
                                   1108 ;	life.c:118: memset(pu, 0, sizeof (pu));
      002390 E4               [12] 1109 	clr	a
      002391 C0 E0            [24] 1110 	push	acc
      002393 74 04            [12] 1111 	mov	a,#0x04
      002395 C0 E0            [24] 1112 	push	acc
      002397 E4               [12] 1113 	clr	a
      002398 C0 E0            [24] 1114 	push	acc
      00239A 90 80 02         [24] 1115 	mov	dptr,#_pu
      00239D 75 F0 00         [24] 1116 	mov	b,#0x00
      0023A0 12 2A AB         [24] 1117 	lcall	_memset
      0023A3 15 81            [12] 1118 	dec	sp
      0023A5 15 81            [12] 1119 	dec	sp
      0023A7 15 81            [12] 1120 	dec	sp
                                   1121 ;	life.c:189: printstr("\033[2J\033[mINIT\r\n");
      0023A9 7D 62            [12] 1122 	mov	r5,#___str_5
      0023AB 7E 2C            [12] 1123 	mov	r6,#(___str_5 >> 8)
      0023AD 7F 80            [12] 1124 	mov	r7,#0x80
                                   1125 ;	life.c:48: return;
      0023AF                       1126 00161$:
                                   1127 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023AF 8D 82            [24] 1128 	mov	dpl,r5
      0023B1 8E 83            [24] 1129 	mov	dph,r6
      0023B3 8F F0            [24] 1130 	mov	b,r7
      0023B5 12 2B 15         [24] 1131 	lcall	__gptrget
      0023B8 FC               [12] 1132 	mov	r4,a
      0023B9 60 10            [24] 1133 	jz	00110$
      0023BB 7B 00            [12] 1134 	mov	r3,#0x00
      0023BD 8C 82            [24] 1135 	mov	dpl,r4
      0023BF 8B 83            [24] 1136 	mov	dph,r3
      0023C1 12 20 75         [24] 1137 	lcall	_putchar
      0023C4 0D               [12] 1138 	inc	r5
                                   1139 ;	life.c:189: printstr("\033[2J\033[mINIT\r\n");
      0023C5 BD 00 E7         [24] 1140 	cjne	r5,#0x00,00161$
      0023C8 0E               [12] 1141 	inc	r6
      0023C9 80 E4            [24] 1142 	sjmp	00161$
      0023CB                       1143 00110$:
                                   1144 ;	life.c:190: (void)getchar();
      0023CB 12 20 7A         [24] 1145 	lcall	_getchar
                                   1146 ;	life.c:192: printstr("LOAD\r\n");
      0023CE 7D 70            [12] 1147 	mov	r5,#___str_6
      0023D0 7E 2C            [12] 1148 	mov	r6,#(___str_6 >> 8)
      0023D2 7F 80            [12] 1149 	mov	r7,#0x80
                                   1150 ;	life.c:48: return;
      0023D4                       1151 00164$:
                                   1152 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023D4 8D 82            [24] 1153 	mov	dpl,r5
      0023D6 8E 83            [24] 1154 	mov	dph,r6
      0023D8 8F F0            [24] 1155 	mov	b,r7
      0023DA 12 2B 15         [24] 1156 	lcall	__gptrget
      0023DD FC               [12] 1157 	mov	r4,a
      0023DE 60 10            [24] 1158 	jz	00112$
      0023E0 7B 00            [12] 1159 	mov	r3,#0x00
      0023E2 8C 82            [24] 1160 	mov	dpl,r4
      0023E4 8B 83            [24] 1161 	mov	dph,r3
      0023E6 12 20 75         [24] 1162 	lcall	_putchar
      0023E9 0D               [12] 1163 	inc	r5
                                   1164 ;	life.c:192: printstr("LOAD\r\n");
      0023EA BD 00 E7         [24] 1165 	cjne	r5,#0x00,00164$
      0023ED 0E               [12] 1166 	inc	r6
      0023EE 80 E4            [24] 1167 	sjmp	00164$
      0023F0                       1168 00112$:
                                   1169 ;	life.c:193: (void)getchar();
      0023F0 12 20 7A         [24] 1170 	lcall	_getchar
                                   1171 ;	life.c:124: j = 0;
      0023F3 90 8C 15         [24] 1172 	mov	dptr,#_j
      0023F6 E4               [12] 1173 	clr	a
      0023F7 F0               [24] 1174 	movx	@dptr,a
      0023F8 A3               [24] 1175 	inc	dptr
      0023F9 F0               [24] 1176 	movx	@dptr,a
                                   1177 ;	life.c:126: putchar('<');
      0023FA 90 00 3C         [24] 1178 	mov	dptr,#0x003c
      0023FD 12 20 75         [24] 1179 	lcall	_putchar
                                   1180 ;	life.c:128: for (y = 0; y < H; y++)
      002400 90 8C 04         [24] 1181 	mov	dptr,#_y
      002403 E4               [12] 1182 	clr	a
      002404 F0               [24] 1183 	movx	@dptr,a
      002405 A3               [24] 1184 	inc	dptr
      002406 F0               [24] 1185 	movx	@dptr,a
      002407                       1186 00168$:
                                   1187 ;	life.c:129: for (x = 0; x < W; x++) {
      002407 90 8C 02         [24] 1188 	mov	dptr,#_x
      00240A E4               [12] 1189 	clr	a
      00240B F0               [24] 1190 	movx	@dptr,a
      00240C A3               [24] 1191 	inc	dptr
      00240D F0               [24] 1192 	movx	@dptr,a
      00240E                       1193 00166$:
                                   1194 ;	life.c:130: c = getchar();
      00240E 12 20 7A         [24] 1195 	lcall	_getchar
      002411 AE 82            [24] 1196 	mov	r6,dpl
      002413 AF 83            [24] 1197 	mov	r7,dph
      002415 90 8C 17         [24] 1198 	mov	dptr,#_c
      002418 EE               [12] 1199 	mov	a,r6
      002419 F0               [24] 1200 	movx	@dptr,a
      00241A EF               [12] 1201 	mov	a,r7
      00241B A3               [24] 1202 	inc	dptr
      00241C F0               [24] 1203 	movx	@dptr,a
                                   1204 ;	life.c:131: if (c == (int)'0') {
      00241D BE 30 41         [24] 1205 	cjne	r6,#0x30,00119$
      002420 BF 00 3E         [24] 1206 	cjne	r7,#0x00,00119$
                                   1207 ;	life.c:132: u[A2D(W, y, x)] = 0;
      002423 90 8C 04         [24] 1208 	mov	dptr,#_y
      002426 E0               [24] 1209 	movx	a,@dptr
      002427 FC               [12] 1210 	mov	r4,a
      002428 A3               [24] 1211 	inc	dptr
      002429 E0               [24] 1212 	movx	a,@dptr
      00242A C4               [12] 1213 	swap	a
      00242B 23               [12] 1214 	rl	a
      00242C 54 E0            [12] 1215 	anl	a,#0xe0
      00242E CC               [12] 1216 	xch	a,r4
      00242F C4               [12] 1217 	swap	a
      002430 23               [12] 1218 	rl	a
      002431 CC               [12] 1219 	xch	a,r4
      002432 6C               [12] 1220 	xrl	a,r4
      002433 CC               [12] 1221 	xch	a,r4
      002434 54 E0            [12] 1222 	anl	a,#0xe0
      002436 CC               [12] 1223 	xch	a,r4
      002437 6C               [12] 1224 	xrl	a,r4
      002438 FD               [12] 1225 	mov	r5,a
      002439 90 8C 02         [24] 1226 	mov	dptr,#_x
      00243C E0               [24] 1227 	movx	a,@dptr
      00243D FA               [12] 1228 	mov	r2,a
      00243E A3               [24] 1229 	inc	dptr
      00243F E0               [24] 1230 	movx	a,@dptr
      002440 FB               [12] 1231 	mov	r3,a
      002441 EA               [12] 1232 	mov	a,r2
      002442 2C               [12] 1233 	add	a,r4
      002443 FC               [12] 1234 	mov	r4,a
      002444 EB               [12] 1235 	mov	a,r3
      002445 3D               [12] 1236 	addc	a,r5
      002446 FD               [12] 1237 	mov	r5,a
      002447 EC               [12] 1238 	mov	a,r4
      002448 24 02            [12] 1239 	add	a,#_u
      00244A F5 82            [12] 1240 	mov	dpl,a
      00244C ED               [12] 1241 	mov	a,r5
      00244D 34 84            [12] 1242 	addc	a,#(_u >> 8)
      00244F F5 83            [12] 1243 	mov	dph,a
      002451 E4               [12] 1244 	clr	a
      002452 F0               [24] 1245 	movx	@dptr,a
                                   1246 ;	life.c:133: j++;
      002453 90 8C 15         [24] 1247 	mov	dptr,#_j
      002456 E0               [24] 1248 	movx	a,@dptr
      002457 24 01            [12] 1249 	add	a,#0x01
      002459 F0               [24] 1250 	movx	@dptr,a
      00245A A3               [24] 1251 	inc	dptr
      00245B E0               [24] 1252 	movx	a,@dptr
      00245C 34 00            [12] 1253 	addc	a,#0x00
      00245E F0               [24] 1254 	movx	@dptr,a
      00245F 80 4D            [24] 1255 	sjmp	00167$
      002461                       1256 00119$:
                                   1257 ;	life.c:134: } else if (c == (int)'1') {
      002461 BE 31 42         [24] 1258 	cjne	r6,#0x31,00117$
      002464 BF 00 3F         [24] 1259 	cjne	r7,#0x00,00117$
                                   1260 ;	life.c:135: u[A2D(W, y, x)] = 1;
      002467 90 8C 04         [24] 1261 	mov	dptr,#_y
      00246A E0               [24] 1262 	movx	a,@dptr
      00246B FC               [12] 1263 	mov	r4,a
      00246C A3               [24] 1264 	inc	dptr
      00246D E0               [24] 1265 	movx	a,@dptr
      00246E C4               [12] 1266 	swap	a
      00246F 23               [12] 1267 	rl	a
      002470 54 E0            [12] 1268 	anl	a,#0xe0
      002472 CC               [12] 1269 	xch	a,r4
      002473 C4               [12] 1270 	swap	a
      002474 23               [12] 1271 	rl	a
      002475 CC               [12] 1272 	xch	a,r4
      002476 6C               [12] 1273 	xrl	a,r4
      002477 CC               [12] 1274 	xch	a,r4
      002478 54 E0            [12] 1275 	anl	a,#0xe0
      00247A CC               [12] 1276 	xch	a,r4
      00247B 6C               [12] 1277 	xrl	a,r4
      00247C FD               [12] 1278 	mov	r5,a
      00247D 90 8C 02         [24] 1279 	mov	dptr,#_x
      002480 E0               [24] 1280 	movx	a,@dptr
      002481 FA               [12] 1281 	mov	r2,a
      002482 A3               [24] 1282 	inc	dptr
      002483 E0               [24] 1283 	movx	a,@dptr
      002484 FB               [12] 1284 	mov	r3,a
      002485 EA               [12] 1285 	mov	a,r2
      002486 2C               [12] 1286 	add	a,r4
      002487 FC               [12] 1287 	mov	r4,a
      002488 EB               [12] 1288 	mov	a,r3
      002489 3D               [12] 1289 	addc	a,r5
      00248A FD               [12] 1290 	mov	r5,a
      00248B EC               [12] 1291 	mov	a,r4
      00248C 24 02            [12] 1292 	add	a,#_u
      00248E F5 82            [12] 1293 	mov	dpl,a
      002490 ED               [12] 1294 	mov	a,r5
      002491 34 84            [12] 1295 	addc	a,#(_u >> 8)
      002493 F5 83            [12] 1296 	mov	dph,a
      002495 74 01            [12] 1297 	mov	a,#0x01
      002497 F0               [24] 1298 	movx	@dptr,a
                                   1299 ;	life.c:136: j++;
      002498 90 8C 15         [24] 1300 	mov	dptr,#_j
      00249B E0               [24] 1301 	movx	a,@dptr
      00249C 24 01            [12] 1302 	add	a,#0x01
      00249E F0               [24] 1303 	movx	@dptr,a
      00249F A3               [24] 1304 	inc	dptr
      0024A0 E0               [24] 1305 	movx	a,@dptr
      0024A1 34 00            [12] 1306 	addc	a,#0x00
      0024A3 F0               [24] 1307 	movx	@dptr,a
      0024A4 80 08            [24] 1308 	sjmp	00167$
      0024A6                       1309 00117$:
                                   1310 ;	life.c:137: } else if (c == (int)'#') goto out;
      0024A6 BE 23 05         [24] 1311 	cjne	r6,#0x23,00415$
      0024A9 BF 00 02         [24] 1312 	cjne	r7,#0x00,00415$
      0024AC 80 44            [24] 1313 	sjmp	00130$
      0024AE                       1314 00415$:
      0024AE                       1315 00167$:
                                   1316 ;	life.c:129: for (x = 0; x < W; x++) {
      0024AE 90 8C 02         [24] 1317 	mov	dptr,#_x
      0024B1 E0               [24] 1318 	movx	a,@dptr
      0024B2 24 01            [12] 1319 	add	a,#0x01
      0024B4 F0               [24] 1320 	movx	@dptr,a
      0024B5 A3               [24] 1321 	inc	dptr
      0024B6 E0               [24] 1322 	movx	a,@dptr
      0024B7 34 00            [12] 1323 	addc	a,#0x00
      0024B9 F0               [24] 1324 	movx	@dptr,a
      0024BA 90 8C 02         [24] 1325 	mov	dptr,#_x
      0024BD E0               [24] 1326 	movx	a,@dptr
      0024BE FE               [12] 1327 	mov	r6,a
      0024BF A3               [24] 1328 	inc	dptr
      0024C0 E0               [24] 1329 	movx	a,@dptr
      0024C1 FF               [12] 1330 	mov	r7,a
      0024C2 C3               [12] 1331 	clr	c
      0024C3 EE               [12] 1332 	mov	a,r6
      0024C4 94 20            [12] 1333 	subb	a,#0x20
      0024C6 EF               [12] 1334 	mov	a,r7
      0024C7 64 80            [12] 1335 	xrl	a,#0x80
      0024C9 94 80            [12] 1336 	subb	a,#0x80
      0024CB 50 03            [24] 1337 	jnc	00416$
      0024CD 02 24 0E         [24] 1338 	ljmp	00166$
      0024D0                       1339 00416$:
                                   1340 ;	life.c:128: for (y = 0; y < H; y++)
      0024D0 90 8C 04         [24] 1341 	mov	dptr,#_y
      0024D3 E0               [24] 1342 	movx	a,@dptr
      0024D4 24 01            [12] 1343 	add	a,#0x01
      0024D6 F0               [24] 1344 	movx	@dptr,a
      0024D7 A3               [24] 1345 	inc	dptr
      0024D8 E0               [24] 1346 	movx	a,@dptr
      0024D9 34 00            [12] 1347 	addc	a,#0x00
      0024DB F0               [24] 1348 	movx	@dptr,a
      0024DC 90 8C 04         [24] 1349 	mov	dptr,#_y
      0024DF E0               [24] 1350 	movx	a,@dptr
      0024E0 FE               [12] 1351 	mov	r6,a
      0024E1 A3               [24] 1352 	inc	dptr
      0024E2 E0               [24] 1353 	movx	a,@dptr
      0024E3 FF               [12] 1354 	mov	r7,a
      0024E4 C3               [12] 1355 	clr	c
      0024E5 EE               [12] 1356 	mov	a,r6
      0024E6 94 20            [12] 1357 	subb	a,#0x20
      0024E8 EF               [12] 1358 	mov	a,r7
      0024E9 64 80            [12] 1359 	xrl	a,#0x80
      0024EB 94 80            [12] 1360 	subb	a,#0x80
      0024ED 50 03            [24] 1361 	jnc	00417$
      0024EF 02 24 07         [24] 1362 	ljmp	00168$
      0024F2                       1363 00417$:
                                   1364 ;	life.c:140: out:
      0024F2                       1365 00130$:
                                   1366 ;	life.c:141: if (c != (int)'#')
      0024F2 90 8C 17         [24] 1367 	mov	dptr,#_c
      0024F5 E0               [24] 1368 	movx	a,@dptr
      0024F6 FE               [12] 1369 	mov	r6,a
      0024F7 A3               [24] 1370 	inc	dptr
      0024F8 E0               [24] 1371 	movx	a,@dptr
      0024F9 FF               [12] 1372 	mov	r7,a
      0024FA BE 23 05         [24] 1373 	cjne	r6,#0x23,00418$
      0024FD BF 00 02         [24] 1374 	cjne	r7,#0x00,00418$
      002500 80 15            [24] 1375 	sjmp	00129$
      002502                       1376 00418$:
                                   1377 ;	life.c:142: while (1) {
      002502                       1378 00126$:
                                   1379 ;	life.c:143: c = getchar();
      002502 12 20 7A         [24] 1380 	lcall	_getchar
      002505 AE 82            [24] 1381 	mov	r6,dpl
      002507 AF 83            [24] 1382 	mov	r7,dph
      002509 90 8C 17         [24] 1383 	mov	dptr,#_c
      00250C EE               [12] 1384 	mov	a,r6
      00250D F0               [24] 1385 	movx	@dptr,a
      00250E EF               [12] 1386 	mov	a,r7
      00250F A3               [24] 1387 	inc	dptr
      002510 F0               [24] 1388 	movx	@dptr,a
                                   1389 ;	life.c:144: if (c == (int)'#') break;
      002511 BE 23 EE         [24] 1390 	cjne	r6,#0x23,00126$
      002514 BF 00 EB         [24] 1391 	cjne	r7,#0x00,00126$
      002517                       1392 00129$:
                                   1393 ;	life.c:146: print16x(j);
      002517 90 8C 15         [24] 1394 	mov	dptr,#_j
      00251A E0               [24] 1395 	movx	a,@dptr
      00251B FE               [12] 1396 	mov	r6,a
      00251C A3               [24] 1397 	inc	dptr
      00251D E0               [24] 1398 	movx	a,@dptr
      00251E FF               [12] 1399 	mov	r7,a
      00251F 8E 04            [24] 1400 	mov	ar4,r6
                                   1401 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      002521 EF               [12] 1402 	mov	a,r7
      002522 FD               [12] 1403 	mov	r5,a
      002523 C4               [12] 1404 	swap	a
      002524 54 0F            [12] 1405 	anl	a,#0x0f
      002526 30 E3 02         [24] 1406 	jnb	acc.3,00421$
      002529 44 F0            [12] 1407 	orl	a,#0xf0
      00252B                       1408 00421$:
      00252B FE               [12] 1409 	mov	r6,a
      00252C 33               [12] 1410 	rlc	a
      00252D 95 E0            [12] 1411 	subb	a,acc
      00252F 53 06 0F         [24] 1412 	anl	ar6,#0x0f
      002532 7F 00            [12] 1413 	mov	r7,#0x00
      002534 EE               [12] 1414 	mov	a,r6
      002535 24 3D            [12] 1415 	add	a,#_digits
      002537 F5 82            [12] 1416 	mov	dpl,a
      002539 EF               [12] 1417 	mov	a,r7
      00253A 34 2C            [12] 1418 	addc	a,#(_digits >> 8)
      00253C F5 83            [12] 1419 	mov	dph,a
      00253E E4               [12] 1420 	clr	a
      00253F 93               [24] 1421 	movc	a,@a+dptr
      002540 FF               [12] 1422 	mov	r7,a
      002541 7E 00            [12] 1423 	mov	r6,#0x00
      002543 8F 82            [24] 1424 	mov	dpl,r7
      002545 8E 83            [24] 1425 	mov	dph,r6
      002547 12 20 75         [24] 1426 	lcall	_putchar
                                   1427 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      00254A 8D 07            [24] 1428 	mov	ar7,r5
      00254C 53 07 0F         [24] 1429 	anl	ar7,#0x0f
      00254F 7E 00            [12] 1430 	mov	r6,#0x00
      002551 EF               [12] 1431 	mov	a,r7
      002552 24 3D            [12] 1432 	add	a,#_digits
      002554 F5 82            [12] 1433 	mov	dpl,a
      002556 EE               [12] 1434 	mov	a,r6
      002557 34 2C            [12] 1435 	addc	a,#(_digits >> 8)
      002559 F5 83            [12] 1436 	mov	dph,a
      00255B E4               [12] 1437 	clr	a
      00255C 93               [24] 1438 	movc	a,@a+dptr
      00255D FF               [12] 1439 	mov	r7,a
      00255E 7E 00            [12] 1440 	mov	r6,#0x00
      002560 8F 82            [24] 1441 	mov	dpl,r7
      002562 8E 83            [24] 1442 	mov	dph,r6
      002564 12 20 75         [24] 1443 	lcall	_putchar
                                   1444 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      002567 8C 06            [24] 1445 	mov	ar6,r4
      002569 ED               [12] 1446 	mov	a,r5
      00256A C4               [12] 1447 	swap	a
      00256B CE               [12] 1448 	xch	a,r6
      00256C C4               [12] 1449 	swap	a
      00256D 54 0F            [12] 1450 	anl	a,#0x0f
      00256F 6E               [12] 1451 	xrl	a,r6
      002570 CE               [12] 1452 	xch	a,r6
      002571 54 0F            [12] 1453 	anl	a,#0x0f
      002573 CE               [12] 1454 	xch	a,r6
      002574 6E               [12] 1455 	xrl	a,r6
      002575 CE               [12] 1456 	xch	a,r6
      002576 30 E3 02         [24] 1457 	jnb	acc.3,00422$
      002579 44 F0            [12] 1458 	orl	a,#0xf0
      00257B                       1459 00422$:
      00257B 53 06 0F         [24] 1460 	anl	ar6,#0x0f
      00257E 7F 00            [12] 1461 	mov	r7,#0x00
      002580 EE               [12] 1462 	mov	a,r6
      002581 24 3D            [12] 1463 	add	a,#_digits
      002583 F5 82            [12] 1464 	mov	dpl,a
      002585 EF               [12] 1465 	mov	a,r7
      002586 34 2C            [12] 1466 	addc	a,#(_digits >> 8)
      002588 F5 83            [12] 1467 	mov	dph,a
      00258A E4               [12] 1468 	clr	a
      00258B 93               [24] 1469 	movc	a,@a+dptr
      00258C FF               [12] 1470 	mov	r7,a
      00258D 7E 00            [12] 1471 	mov	r6,#0x00
      00258F 8F 82            [24] 1472 	mov	dpl,r7
      002591 8E 83            [24] 1473 	mov	dph,r6
      002593 12 20 75         [24] 1474 	lcall	_putchar
                                   1475 ;	life.c:40: putchar(digits[a & 0xf]);
      002596 53 04 0F         [24] 1476 	anl	ar4,#0x0f
      002599 7D 00            [12] 1477 	mov	r5,#0x00
      00259B EC               [12] 1478 	mov	a,r4
      00259C 24 3D            [12] 1479 	add	a,#_digits
      00259E F5 82            [12] 1480 	mov	dpl,a
      0025A0 ED               [12] 1481 	mov	a,r5
      0025A1 34 2C            [12] 1482 	addc	a,#(_digits >> 8)
      0025A3 F5 83            [12] 1483 	mov	dph,a
      0025A5 E4               [12] 1484 	clr	a
      0025A6 93               [24] 1485 	movc	a,@a+dptr
      0025A7 FF               [12] 1486 	mov	r7,a
      0025A8 7E 00            [12] 1487 	mov	r6,#0x00
      0025AA 8F 82            [24] 1488 	mov	dpl,r7
      0025AC 8E 83            [24] 1489 	mov	dph,r6
      0025AE 12 20 75         [24] 1490 	lcall	_putchar
                                   1491 ;	life.c:147: printstr(">\r\n");
      0025B1 7D 5E            [12] 1492 	mov	r5,#___str_4
      0025B3 7E 2C            [12] 1493 	mov	r6,#(___str_4 >> 8)
      0025B5 7F 80            [12] 1494 	mov	r7,#0x80
                                   1495 ;	life.c:48: return;
      0025B7                       1496 00171$:
                                   1497 ;	life.c:46: for (; *s; s++) putchar(*s);
      0025B7 8D 82            [24] 1498 	mov	dpl,r5
      0025B9 8E 83            [24] 1499 	mov	dph,r6
      0025BB 8F F0            [24] 1500 	mov	b,r7
      0025BD 12 2B 15         [24] 1501 	lcall	__gptrget
      0025C0 FC               [12] 1502 	mov	r4,a
      0025C1 60 10            [24] 1503 	jz	00133$
      0025C3 7B 00            [12] 1504 	mov	r3,#0x00
      0025C5 8C 82            [24] 1505 	mov	dpl,r4
      0025C7 8B 83            [24] 1506 	mov	dph,r3
      0025C9 12 20 75         [24] 1507 	lcall	_putchar
      0025CC 0D               [12] 1508 	inc	r5
                                   1509 ;	life.c:147: printstr(">\r\n");
      0025CD BD 00 E7         [24] 1510 	cjne	r5,#0x00,00171$
      0025D0 0E               [12] 1511 	inc	r6
      0025D1 80 E4            [24] 1512 	sjmp	00171$
      0025D3                       1513 00133$:
                                   1514 ;	life.c:196: show(0);
      0025D3 75 82 00         [24] 1515 	mov	dpl,#0x00
      0025D6 12 20 A9         [24] 1516 	lcall	_show
                                   1517 ;	life.c:198: printstr("RDY\r\n");
      0025D9 7D 77            [12] 1518 	mov	r5,#___str_7
      0025DB 7E 2C            [12] 1519 	mov	r6,#(___str_7 >> 8)
      0025DD 7F 80            [12] 1520 	mov	r7,#0x80
                                   1521 ;	life.c:48: return;
      0025DF                       1522 00174$:
                                   1523 ;	life.c:46: for (; *s; s++) putchar(*s);
      0025DF 8D 82            [24] 1524 	mov	dpl,r5
      0025E1 8E 83            [24] 1525 	mov	dph,r6
      0025E3 8F F0            [24] 1526 	mov	b,r7
      0025E5 12 2B 15         [24] 1527 	lcall	__gptrget
      0025E8 FC               [12] 1528 	mov	r4,a
      0025E9 60 10            [24] 1529 	jz	00136$
      0025EB 7B 00            [12] 1530 	mov	r3,#0x00
      0025ED 8C 82            [24] 1531 	mov	dpl,r4
      0025EF 8B 83            [24] 1532 	mov	dph,r3
      0025F1 12 20 75         [24] 1533 	lcall	_putchar
      0025F4 0D               [12] 1534 	inc	r5
                                   1535 ;	life.c:198: printstr("RDY\r\n");
      0025F5 BD 00 E7         [24] 1536 	cjne	r5,#0x00,00174$
      0025F8 0E               [12] 1537 	inc	r6
      0025F9 80 E4            [24] 1538 	sjmp	00174$
      0025FB                       1539 00136$:
                                   1540 ;	life.c:199: (void)getchar();
      0025FB 12 20 7A         [24] 1541 	lcall	_getchar
                                   1542 ;	life.c:74: for (j = 0; j < 4; j++)
      0025FE 90 8C 15         [24] 1543 	mov	dptr,#_j
      002601 E4               [12] 1544 	clr	a
      002602 F0               [24] 1545 	movx	@dptr,a
      002603 A3               [24] 1546 	inc	dptr
      002604 F0               [24] 1547 	movx	@dptr,a
      002605                       1548 00176$:
                                   1549 ;	life.c:75: generation[j] = 0;
      002605 90 8C 15         [24] 1550 	mov	dptr,#_j
      002608 E0               [24] 1551 	movx	a,@dptr
      002609 FE               [12] 1552 	mov	r6,a
      00260A A3               [24] 1553 	inc	dptr
      00260B E0               [24] 1554 	movx	a,@dptr
      00260C FF               [12] 1555 	mov	r7,a
      00260D EE               [12] 1556 	mov	a,r6
      00260E 2E               [12] 1557 	add	a,r6
      00260F FE               [12] 1558 	mov	r6,a
      002610 EF               [12] 1559 	mov	a,r7
      002611 33               [12] 1560 	rlc	a
      002612 FF               [12] 1561 	mov	r7,a
      002613 EE               [12] 1562 	mov	a,r6
      002614 24 0B            [12] 1563 	add	a,#_generation
      002616 F5 82            [12] 1564 	mov	dpl,a
      002618 EF               [12] 1565 	mov	a,r7
      002619 34 8C            [12] 1566 	addc	a,#(_generation >> 8)
      00261B F5 83            [12] 1567 	mov	dph,a
      00261D E4               [12] 1568 	clr	a
      00261E F0               [24] 1569 	movx	@dptr,a
      00261F A3               [24] 1570 	inc	dptr
      002620 F0               [24] 1571 	movx	@dptr,a
                                   1572 ;	life.c:74: for (j = 0; j < 4; j++)
      002621 90 8C 15         [24] 1573 	mov	dptr,#_j
      002624 E0               [24] 1574 	movx	a,@dptr
      002625 24 01            [12] 1575 	add	a,#0x01
      002627 F0               [24] 1576 	movx	@dptr,a
      002628 A3               [24] 1577 	inc	dptr
      002629 E0               [24] 1578 	movx	a,@dptr
      00262A 34 00            [12] 1579 	addc	a,#0x00
      00262C F0               [24] 1580 	movx	@dptr,a
      00262D 90 8C 15         [24] 1581 	mov	dptr,#_j
      002630 E0               [24] 1582 	movx	a,@dptr
      002631 FE               [12] 1583 	mov	r6,a
      002632 A3               [24] 1584 	inc	dptr
      002633 E0               [24] 1585 	movx	a,@dptr
      002634 FF               [12] 1586 	mov	r7,a
      002635 C3               [12] 1587 	clr	c
      002636 EE               [12] 1588 	mov	a,r6
      002637 94 04            [12] 1589 	subb	a,#0x04
      002639 EF               [12] 1590 	mov	a,r7
      00263A 64 80            [12] 1591 	xrl	a,#0x80
      00263C 94 80            [12] 1592 	subb	a,#0x80
      00263E 40 C5            [24] 1593 	jc	00176$
                                   1594 ;	life.c:203: for (i1 = 0; !i0 && !i1; ) {
      002640                       1595 00197$:
      002640 90 80 00         [24] 1596 	mov	dptr,#_i0
      002643 E0               [24] 1597 	movx	a,@dptr
      002644 60 03            [24] 1598 	jz	00428$
      002646 02 29 B5         [24] 1599 	ljmp	00104$
      002649                       1600 00428$:
                                   1601 ;	life.c:204: show(1);
      002649 75 82 01         [24] 1602 	mov	dpl,#0x01
      00264C 12 20 A9         [24] 1603 	lcall	_show
                                   1604 ;	life.c:153: fixed = 1;
      00264F 90 8C 13         [24] 1605 	mov	dptr,#_fixed
      002652 74 01            [12] 1606 	mov	a,#0x01
      002654 F0               [24] 1607 	movx	@dptr,a
                                   1608 ;	life.c:154: cycle2 = 1;
      002655 90 8C 14         [24] 1609 	mov	dptr,#_cycle2
      002658 F0               [24] 1610 	movx	@dptr,a
                                   1611 ;	life.c:156: for (y = 0; y < H; y++) {
      002659 90 8C 04         [24] 1612 	mov	dptr,#_y
      00265C E4               [12] 1613 	clr	a
      00265D F0               [24] 1614 	movx	@dptr,a
      00265E A3               [24] 1615 	inc	dptr
      00265F F0               [24] 1616 	movx	@dptr,a
      002660                       1617 00186$:
                                   1618 ;	life.c:157: for (x = 0; x < W; x++) {
      002660 90 8C 02         [24] 1619 	mov	dptr,#_x
      002663 E4               [12] 1620 	clr	a
      002664 F0               [24] 1621 	movx	@dptr,a
      002665 A3               [24] 1622 	inc	dptr
      002666 F0               [24] 1623 	movx	@dptr,a
      002667                       1624 00184$:
                                   1625 ;	life.c:158: n = 0;
      002667 90 8C 0A         [24] 1626 	mov	dptr,#_n
      00266A E4               [12] 1627 	clr	a
      00266B F0               [24] 1628 	movx	@dptr,a
                                   1629 ;	life.c:159: for (y1 = y - 1; y1 <= y + 1; y1++)
      00266C 90 8C 04         [24] 1630 	mov	dptr,#_y
      00266F E0               [24] 1631 	movx	a,@dptr
      002670 FE               [12] 1632 	mov	r6,a
      002671 A3               [24] 1633 	inc	dptr
      002672 E0               [24] 1634 	movx	a,@dptr
      002673 FF               [12] 1635 	mov	r7,a
      002674 1E               [12] 1636 	dec	r6
      002675 BE FF 01         [24] 1637 	cjne	r6,#0xff,00429$
      002678 1F               [12] 1638 	dec	r7
      002679                       1639 00429$:
      002679 90 8C 08         [24] 1640 	mov	dptr,#_y1
      00267C EE               [12] 1641 	mov	a,r6
      00267D F0               [24] 1642 	movx	@dptr,a
      00267E EF               [12] 1643 	mov	a,r7
      00267F A3               [24] 1644 	inc	dptr
      002680 F0               [24] 1645 	movx	@dptr,a
      002681                       1646 00182$:
      002681 90 8C 04         [24] 1647 	mov	dptr,#_y
      002684 E0               [24] 1648 	movx	a,@dptr
      002685 FE               [12] 1649 	mov	r6,a
      002686 A3               [24] 1650 	inc	dptr
      002687 E0               [24] 1651 	movx	a,@dptr
      002688 FF               [12] 1652 	mov	r7,a
      002689 74 01            [12] 1653 	mov	a,#0x01
      00268B 2E               [12] 1654 	add	a,r6
      00268C FC               [12] 1655 	mov	r4,a
      00268D E4               [12] 1656 	clr	a
      00268E 3F               [12] 1657 	addc	a,r7
      00268F FD               [12] 1658 	mov	r5,a
      002690 90 8C 08         [24] 1659 	mov	dptr,#_y1
      002693 E0               [24] 1660 	movx	a,@dptr
      002694 FA               [12] 1661 	mov	r2,a
      002695 A3               [24] 1662 	inc	dptr
      002696 E0               [24] 1663 	movx	a,@dptr
      002697 FB               [12] 1664 	mov	r3,a
      002698 C3               [12] 1665 	clr	c
      002699 EC               [12] 1666 	mov	a,r4
      00269A 9A               [12] 1667 	subb	a,r2
      00269B ED               [12] 1668 	mov	a,r5
      00269C 64 80            [12] 1669 	xrl	a,#0x80
      00269E 8B F0            [24] 1670 	mov	b,r3
      0026A0 63 F0 80         [24] 1671 	xrl	b,#0x80
      0026A3 95 F0            [12] 1672 	subb	a,b
      0026A5 50 03            [24] 1673 	jnc	00430$
      0026A7 02 27 82         [24] 1674 	ljmp	00142$
      0026AA                       1675 00430$:
                                   1676 ;	life.c:160: for (x1 = x - 1; x1 <= x + 1; x1++)
      0026AA 90 8C 02         [24] 1677 	mov	dptr,#_x
      0026AD E0               [24] 1678 	movx	a,@dptr
      0026AE FC               [12] 1679 	mov	r4,a
      0026AF A3               [24] 1680 	inc	dptr
      0026B0 E0               [24] 1681 	movx	a,@dptr
      0026B1 FD               [12] 1682 	mov	r5,a
      0026B2 1C               [12] 1683 	dec	r4
      0026B3 BC FF 01         [24] 1684 	cjne	r4,#0xff,00431$
      0026B6 1D               [12] 1685 	dec	r5
      0026B7                       1686 00431$:
      0026B7 90 8C 06         [24] 1687 	mov	dptr,#_x1
      0026BA EC               [12] 1688 	mov	a,r4
      0026BB F0               [24] 1689 	movx	@dptr,a
      0026BC ED               [12] 1690 	mov	a,r5
      0026BD A3               [24] 1691 	inc	dptr
      0026BE F0               [24] 1692 	movx	@dptr,a
      0026BF                       1693 00179$:
      0026BF 90 8C 02         [24] 1694 	mov	dptr,#_x
      0026C2 E0               [24] 1695 	movx	a,@dptr
      0026C3 FC               [12] 1696 	mov	r4,a
      0026C4 A3               [24] 1697 	inc	dptr
      0026C5 E0               [24] 1698 	movx	a,@dptr
      0026C6 FD               [12] 1699 	mov	r5,a
      0026C7 0C               [12] 1700 	inc	r4
      0026C8 BC 00 01         [24] 1701 	cjne	r4,#0x00,00432$
      0026CB 0D               [12] 1702 	inc	r5
      0026CC                       1703 00432$:
      0026CC 90 8C 06         [24] 1704 	mov	dptr,#_x1
      0026CF E0               [24] 1705 	movx	a,@dptr
      0026D0 FA               [12] 1706 	mov	r2,a
      0026D1 A3               [24] 1707 	inc	dptr
      0026D2 E0               [24] 1708 	movx	a,@dptr
      0026D3 FB               [12] 1709 	mov	r3,a
      0026D4 C3               [12] 1710 	clr	c
      0026D5 EC               [12] 1711 	mov	a,r4
      0026D6 9A               [12] 1712 	subb	a,r2
      0026D7 ED               [12] 1713 	mov	a,r5
      0026D8 64 80            [12] 1714 	xrl	a,#0x80
      0026DA 8B F0            [24] 1715 	mov	b,r3
      0026DC 63 F0 80         [24] 1716 	xrl	b,#0x80
      0026DF 95 F0            [12] 1717 	subb	a,b
      0026E1 50 03            [24] 1718 	jnc	00433$
      0026E3 02 27 73         [24] 1719 	ljmp	00183$
      0026E6                       1720 00433$:
                                   1721 ;	life.c:161: if (u[A2D(W, (y1 + H) % H, (x1 + W) % W)]) n++;
      0026E6 90 8C 08         [24] 1722 	mov	dptr,#_y1
      0026E9 E0               [24] 1723 	movx	a,@dptr
      0026EA FC               [12] 1724 	mov	r4,a
      0026EB A3               [24] 1725 	inc	dptr
      0026EC E0               [24] 1726 	movx	a,@dptr
      0026ED FD               [12] 1727 	mov	r5,a
      0026EE 74 20            [12] 1728 	mov	a,#0x20
      0026F0 2C               [12] 1729 	add	a,r4
      0026F1 FC               [12] 1730 	mov	r4,a
      0026F2 E4               [12] 1731 	clr	a
      0026F3 3D               [12] 1732 	addc	a,r5
      0026F4 FD               [12] 1733 	mov	r5,a
      0026F5 C0 03            [24] 1734 	push	ar3
      0026F7 C0 02            [24] 1735 	push	ar2
      0026F9 74 20            [12] 1736 	mov	a,#0x20
      0026FB C0 E0            [24] 1737 	push	acc
      0026FD E4               [12] 1738 	clr	a
      0026FE C0 E0            [24] 1739 	push	acc
      002700 8C 82            [24] 1740 	mov	dpl,r4
      002702 8D 83            [24] 1741 	mov	dph,r5
      002704 12 2B 31         [24] 1742 	lcall	__modsint
      002707 AC 82            [24] 1743 	mov	r4,dpl
      002709 AD 83            [24] 1744 	mov	r5,dph
      00270B 15 81            [12] 1745 	dec	sp
      00270D 15 81            [12] 1746 	dec	sp
      00270F D0 02            [24] 1747 	pop	ar2
      002711 D0 03            [24] 1748 	pop	ar3
      002713 ED               [12] 1749 	mov	a,r5
      002714 C4               [12] 1750 	swap	a
      002715 23               [12] 1751 	rl	a
      002716 54 E0            [12] 1752 	anl	a,#0xe0
      002718 CC               [12] 1753 	xch	a,r4
      002719 C4               [12] 1754 	swap	a
      00271A 23               [12] 1755 	rl	a
      00271B CC               [12] 1756 	xch	a,r4
      00271C 6C               [12] 1757 	xrl	a,r4
      00271D CC               [12] 1758 	xch	a,r4
      00271E 54 E0            [12] 1759 	anl	a,#0xe0
      002720 CC               [12] 1760 	xch	a,r4
      002721 6C               [12] 1761 	xrl	a,r4
      002722 FD               [12] 1762 	mov	r5,a
      002723 74 20            [12] 1763 	mov	a,#0x20
      002725 2A               [12] 1764 	add	a,r2
      002726 FA               [12] 1765 	mov	r2,a
      002727 E4               [12] 1766 	clr	a
      002728 3B               [12] 1767 	addc	a,r3
      002729 FB               [12] 1768 	mov	r3,a
      00272A C0 05            [24] 1769 	push	ar5
      00272C C0 04            [24] 1770 	push	ar4
      00272E 74 20            [12] 1771 	mov	a,#0x20
      002730 C0 E0            [24] 1772 	push	acc
      002732 E4               [12] 1773 	clr	a
      002733 C0 E0            [24] 1774 	push	acc
      002735 8A 82            [24] 1775 	mov	dpl,r2
      002737 8B 83            [24] 1776 	mov	dph,r3
      002739 12 2B 31         [24] 1777 	lcall	__modsint
      00273C AA 82            [24] 1778 	mov	r2,dpl
      00273E AB 83            [24] 1779 	mov	r3,dph
      002740 15 81            [12] 1780 	dec	sp
      002742 15 81            [12] 1781 	dec	sp
      002744 D0 04            [24] 1782 	pop	ar4
      002746 D0 05            [24] 1783 	pop	ar5
      002748 EA               [12] 1784 	mov	a,r2
      002749 2C               [12] 1785 	add	a,r4
      00274A FC               [12] 1786 	mov	r4,a
      00274B EB               [12] 1787 	mov	a,r3
      00274C 3D               [12] 1788 	addc	a,r5
      00274D FD               [12] 1789 	mov	r5,a
      00274E EC               [12] 1790 	mov	a,r4
      00274F 24 02            [12] 1791 	add	a,#_u
      002751 FC               [12] 1792 	mov	r4,a
      002752 ED               [12] 1793 	mov	a,r5
      002753 34 84            [12] 1794 	addc	a,#(_u >> 8)
      002755 FD               [12] 1795 	mov	r5,a
      002756 8C 82            [24] 1796 	mov	dpl,r4
      002758 8D 83            [24] 1797 	mov	dph,r5
      00275A E0               [24] 1798 	movx	a,@dptr
      00275B 60 07            [24] 1799 	jz	00180$
      00275D 90 8C 0A         [24] 1800 	mov	dptr,#_n
      002760 E0               [24] 1801 	movx	a,@dptr
      002761 24 01            [12] 1802 	add	a,#0x01
      002763 F0               [24] 1803 	movx	@dptr,a
      002764                       1804 00180$:
                                   1805 ;	life.c:160: for (x1 = x - 1; x1 <= x + 1; x1++)
      002764 90 8C 06         [24] 1806 	mov	dptr,#_x1
      002767 E0               [24] 1807 	movx	a,@dptr
      002768 24 01            [12] 1808 	add	a,#0x01
      00276A F0               [24] 1809 	movx	@dptr,a
      00276B A3               [24] 1810 	inc	dptr
      00276C E0               [24] 1811 	movx	a,@dptr
      00276D 34 00            [12] 1812 	addc	a,#0x00
      00276F F0               [24] 1813 	movx	@dptr,a
      002770 02 26 BF         [24] 1814 	ljmp	00179$
      002773                       1815 00183$:
                                   1816 ;	life.c:159: for (y1 = y - 1; y1 <= y + 1; y1++)
      002773 90 8C 08         [24] 1817 	mov	dptr,#_y1
      002776 E0               [24] 1818 	movx	a,@dptr
      002777 24 01            [12] 1819 	add	a,#0x01
      002779 F0               [24] 1820 	movx	@dptr,a
      00277A A3               [24] 1821 	inc	dptr
      00277B E0               [24] 1822 	movx	a,@dptr
      00277C 34 00            [12] 1823 	addc	a,#0x00
      00277E F0               [24] 1824 	movx	@dptr,a
      00277F 02 26 81         [24] 1825 	ljmp	00182$
      002782                       1826 00142$:
                                   1827 ;	life.c:163: if (u[A2D(W, y, x)]) n--;
      002782 EF               [12] 1828 	mov	a,r7
      002783 C4               [12] 1829 	swap	a
      002784 23               [12] 1830 	rl	a
      002785 54 E0            [12] 1831 	anl	a,#0xe0
      002787 CE               [12] 1832 	xch	a,r6
      002788 C4               [12] 1833 	swap	a
      002789 23               [12] 1834 	rl	a
      00278A CE               [12] 1835 	xch	a,r6
      00278B 6E               [12] 1836 	xrl	a,r6
      00278C CE               [12] 1837 	xch	a,r6
      00278D 54 E0            [12] 1838 	anl	a,#0xe0
      00278F CE               [12] 1839 	xch	a,r6
      002790 6E               [12] 1840 	xrl	a,r6
      002791 FF               [12] 1841 	mov	r7,a
      002792 90 8C 02         [24] 1842 	mov	dptr,#_x
      002795 E0               [24] 1843 	movx	a,@dptr
      002796 FC               [12] 1844 	mov	r4,a
      002797 A3               [24] 1845 	inc	dptr
      002798 E0               [24] 1846 	movx	a,@dptr
      002799 FD               [12] 1847 	mov	r5,a
      00279A EC               [12] 1848 	mov	a,r4
      00279B 2E               [12] 1849 	add	a,r6
      00279C FE               [12] 1850 	mov	r6,a
      00279D ED               [12] 1851 	mov	a,r5
      00279E 3F               [12] 1852 	addc	a,r7
      00279F FF               [12] 1853 	mov	r7,a
      0027A0 EE               [12] 1854 	mov	a,r6
      0027A1 24 02            [12] 1855 	add	a,#_u
      0027A3 FE               [12] 1856 	mov	r6,a
      0027A4 EF               [12] 1857 	mov	a,r7
      0027A5 34 84            [12] 1858 	addc	a,#(_u >> 8)
      0027A7 FF               [12] 1859 	mov	r7,a
      0027A8 8E 82            [24] 1860 	mov	dpl,r6
      0027AA 8F 83            [24] 1861 	mov	dph,r7
      0027AC E0               [24] 1862 	movx	a,@dptr
      0027AD 60 06            [24] 1863 	jz	00144$
      0027AF 90 8C 0A         [24] 1864 	mov	dptr,#_n
      0027B2 E0               [24] 1865 	movx	a,@dptr
      0027B3 14               [12] 1866 	dec	a
      0027B4 F0               [24] 1867 	movx	@dptr,a
      0027B5                       1868 00144$:
                                   1869 ;	life.c:164: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      0027B5 90 8C 04         [24] 1870 	mov	dptr,#_y
      0027B8 E0               [24] 1871 	movx	a,@dptr
      0027B9 FE               [12] 1872 	mov	r6,a
      0027BA A3               [24] 1873 	inc	dptr
      0027BB E0               [24] 1874 	movx	a,@dptr
      0027BC C4               [12] 1875 	swap	a
      0027BD 23               [12] 1876 	rl	a
      0027BE 54 E0            [12] 1877 	anl	a,#0xe0
      0027C0 CE               [12] 1878 	xch	a,r6
      0027C1 C4               [12] 1879 	swap	a
      0027C2 23               [12] 1880 	rl	a
      0027C3 CE               [12] 1881 	xch	a,r6
      0027C4 6E               [12] 1882 	xrl	a,r6
      0027C5 CE               [12] 1883 	xch	a,r6
      0027C6 54 E0            [12] 1884 	anl	a,#0xe0
      0027C8 CE               [12] 1885 	xch	a,r6
      0027C9 6E               [12] 1886 	xrl	a,r6
      0027CA FF               [12] 1887 	mov	r7,a
      0027CB 90 8C 02         [24] 1888 	mov	dptr,#_x
      0027CE E0               [24] 1889 	movx	a,@dptr
      0027CF FC               [12] 1890 	mov	r4,a
      0027D0 A3               [24] 1891 	inc	dptr
      0027D1 E0               [24] 1892 	movx	a,@dptr
      0027D2 FD               [12] 1893 	mov	r5,a
      0027D3 EC               [12] 1894 	mov	a,r4
      0027D4 2E               [12] 1895 	add	a,r6
      0027D5 FA               [12] 1896 	mov	r2,a
      0027D6 ED               [12] 1897 	mov	a,r5
      0027D7 3F               [12] 1898 	addc	a,r7
      0027D8 FB               [12] 1899 	mov	r3,a
      0027D9 EA               [12] 1900 	mov	a,r2
      0027DA 24 02            [12] 1901 	add	a,#_nu
      0027DC FA               [12] 1902 	mov	r2,a
      0027DD EB               [12] 1903 	mov	a,r3
      0027DE 34 88            [12] 1904 	addc	a,#(_nu >> 8)
      0027E0 FB               [12] 1905 	mov	r3,a
      0027E1 90 8C 0A         [24] 1906 	mov	dptr,#_n
      0027E4 A8 10            [24] 1907 	mov	r0,_bp
      0027E6 08               [12] 1908 	inc	r0
      0027E7 E0               [24] 1909 	movx	a,@dptr
      0027E8 F6               [12] 1910 	mov	@r0,a
      0027E9 A8 10            [24] 1911 	mov	r0,_bp
      0027EB 08               [12] 1912 	inc	r0
      0027EC B6 03 02         [24] 1913 	cjne	@r0,#0x03,00436$
      0027EF 80 1F            [24] 1914 	sjmp	00210$
      0027F1                       1915 00436$:
      0027F1 A8 10            [24] 1916 	mov	r0,_bp
      0027F3 08               [12] 1917 	inc	r0
      0027F4 B6 02 15         [24] 1918 	cjne	@r0,#0x02,00209$
      0027F7 EC               [12] 1919 	mov	a,r4
      0027F8 2E               [12] 1920 	add	a,r6
      0027F9 FE               [12] 1921 	mov	r6,a
      0027FA ED               [12] 1922 	mov	a,r5
      0027FB 3F               [12] 1923 	addc	a,r7
      0027FC FF               [12] 1924 	mov	r7,a
      0027FD EE               [12] 1925 	mov	a,r6
      0027FE 24 02            [12] 1926 	add	a,#_u
      002800 FE               [12] 1927 	mov	r6,a
      002801 EF               [12] 1928 	mov	a,r7
      002802 34 84            [12] 1929 	addc	a,#(_u >> 8)
      002804 FF               [12] 1930 	mov	r7,a
      002805 8E 82            [24] 1931 	mov	dpl,r6
      002807 8F 83            [24] 1932 	mov	dph,r7
      002809 E0               [24] 1933 	movx	a,@dptr
      00280A 70 04            [24] 1934 	jnz	00210$
      00280C                       1935 00209$:
                                   1936 ;	assignBit
      00280C C2 00            [12] 1937 	clr	b0
      00280E 80 02            [24] 1938 	sjmp	00211$
      002810                       1939 00210$:
                                   1940 ;	assignBit
      002810 D2 00            [12] 1941 	setb	b0
      002812                       1942 00211$:
      002812 A2 00            [12] 1943 	mov	c,b0
      002814 E4               [12] 1944 	clr	a
      002815 33               [12] 1945 	rlc	a
      002816 8A 82            [24] 1946 	mov	dpl,r2
      002818 8B 83            [24] 1947 	mov	dph,r3
      00281A F0               [24] 1948 	movx	@dptr,a
                                   1949 ;	life.c:157: for (x = 0; x < W; x++) {
      00281B 90 8C 02         [24] 1950 	mov	dptr,#_x
      00281E E0               [24] 1951 	movx	a,@dptr
      00281F 24 01            [12] 1952 	add	a,#0x01
      002821 F0               [24] 1953 	movx	@dptr,a
      002822 A3               [24] 1954 	inc	dptr
      002823 E0               [24] 1955 	movx	a,@dptr
      002824 34 00            [12] 1956 	addc	a,#0x00
      002826 F0               [24] 1957 	movx	@dptr,a
      002827 90 8C 02         [24] 1958 	mov	dptr,#_x
      00282A E0               [24] 1959 	movx	a,@dptr
      00282B FE               [12] 1960 	mov	r6,a
      00282C A3               [24] 1961 	inc	dptr
      00282D E0               [24] 1962 	movx	a,@dptr
      00282E FF               [12] 1963 	mov	r7,a
      00282F C3               [12] 1964 	clr	c
      002830 EE               [12] 1965 	mov	a,r6
      002831 94 20            [12] 1966 	subb	a,#0x20
      002833 EF               [12] 1967 	mov	a,r7
      002834 64 80            [12] 1968 	xrl	a,#0x80
      002836 94 80            [12] 1969 	subb	a,#0x80
      002838 50 03            [24] 1970 	jnc	00440$
      00283A 02 26 67         [24] 1971 	ljmp	00184$
      00283D                       1972 00440$:
                                   1973 ;	life.c:156: for (y = 0; y < H; y++) {
      00283D 90 8C 04         [24] 1974 	mov	dptr,#_y
      002840 E0               [24] 1975 	movx	a,@dptr
      002841 24 01            [12] 1976 	add	a,#0x01
      002843 F0               [24] 1977 	movx	@dptr,a
      002844 A3               [24] 1978 	inc	dptr
      002845 E0               [24] 1979 	movx	a,@dptr
      002846 34 00            [12] 1980 	addc	a,#0x00
      002848 F0               [24] 1981 	movx	@dptr,a
      002849 90 8C 04         [24] 1982 	mov	dptr,#_y
      00284C E0               [24] 1983 	movx	a,@dptr
      00284D FE               [12] 1984 	mov	r6,a
      00284E A3               [24] 1985 	inc	dptr
      00284F E0               [24] 1986 	movx	a,@dptr
      002850 FF               [12] 1987 	mov	r7,a
      002851 C3               [12] 1988 	clr	c
      002852 EE               [12] 1989 	mov	a,r6
      002853 94 20            [12] 1990 	subb	a,#0x20
      002855 EF               [12] 1991 	mov	a,r7
      002856 64 80            [12] 1992 	xrl	a,#0x80
      002858 94 80            [12] 1993 	subb	a,#0x80
      00285A 50 03            [24] 1994 	jnc	00441$
      00285C 02 26 60         [24] 1995 	ljmp	00186$
      00285F                       1996 00441$:
                                   1997 ;	life.c:168: for (y = 0; y < H; y++)
      00285F 90 8C 04         [24] 1998 	mov	dptr,#_y
      002862 E4               [12] 1999 	clr	a
      002863 F0               [24] 2000 	movx	@dptr,a
      002864 A3               [24] 2001 	inc	dptr
      002865 F0               [24] 2002 	movx	@dptr,a
      002866                       2003 00190$:
                                   2004 ;	life.c:169: for (x = 0; x < W; x++) {
      002866 90 8C 02         [24] 2005 	mov	dptr,#_x
      002869 E4               [12] 2006 	clr	a
      00286A F0               [24] 2007 	movx	@dptr,a
      00286B A3               [24] 2008 	inc	dptr
      00286C F0               [24] 2009 	movx	@dptr,a
      00286D                       2010 00188$:
                                   2011 ;	life.c:170: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      00286D 90 8C 04         [24] 2012 	mov	dptr,#_y
      002870 E0               [24] 2013 	movx	a,@dptr
      002871 FE               [12] 2014 	mov	r6,a
      002872 A3               [24] 2015 	inc	dptr
      002873 E0               [24] 2016 	movx	a,@dptr
      002874 C4               [12] 2017 	swap	a
      002875 23               [12] 2018 	rl	a
      002876 54 E0            [12] 2019 	anl	a,#0xe0
      002878 CE               [12] 2020 	xch	a,r6
      002879 C4               [12] 2021 	swap	a
      00287A 23               [12] 2022 	rl	a
      00287B CE               [12] 2023 	xch	a,r6
      00287C 6E               [12] 2024 	xrl	a,r6
      00287D CE               [12] 2025 	xch	a,r6
      00287E 54 E0            [12] 2026 	anl	a,#0xe0
      002880 CE               [12] 2027 	xch	a,r6
      002881 6E               [12] 2028 	xrl	a,r6
      002882 FF               [12] 2029 	mov	r7,a
      002883 90 8C 02         [24] 2030 	mov	dptr,#_x
      002886 E0               [24] 2031 	movx	a,@dptr
      002887 FC               [12] 2032 	mov	r4,a
      002888 A3               [24] 2033 	inc	dptr
      002889 E0               [24] 2034 	movx	a,@dptr
      00288A FD               [12] 2035 	mov	r5,a
      00288B EC               [12] 2036 	mov	a,r4
      00288C 2E               [12] 2037 	add	a,r6
      00288D FE               [12] 2038 	mov	r6,a
      00288E ED               [12] 2039 	mov	a,r5
      00288F 3F               [12] 2040 	addc	a,r7
      002890 FF               [12] 2041 	mov	r7,a
      002891 EE               [12] 2042 	mov	a,r6
      002892 24 02            [12] 2043 	add	a,#_pu
      002894 F5 82            [12] 2044 	mov	dpl,a
      002896 EF               [12] 2045 	mov	a,r7
      002897 34 80            [12] 2046 	addc	a,#(_pu >> 8)
      002899 F5 83            [12] 2047 	mov	dph,a
      00289B E0               [24] 2048 	movx	a,@dptr
      00289C FD               [12] 2049 	mov	r5,a
      00289D EE               [12] 2050 	mov	a,r6
      00289E 24 02            [12] 2051 	add	a,#_nu
      0028A0 F5 82            [12] 2052 	mov	dpl,a
      0028A2 EF               [12] 2053 	mov	a,r7
      0028A3 34 88            [12] 2054 	addc	a,#(_nu >> 8)
      0028A5 F5 83            [12] 2055 	mov	dph,a
      0028A7 E0               [24] 2056 	movx	a,@dptr
      0028A8 FF               [12] 2057 	mov	r7,a
      0028A9 ED               [12] 2058 	mov	a,r5
      0028AA B5 07 02         [24] 2059 	cjne	a,ar7,00442$
      0028AD 80 05            [24] 2060 	sjmp	00148$
      0028AF                       2061 00442$:
      0028AF 90 8C 14         [24] 2062 	mov	dptr,#_cycle2
      0028B2 E4               [12] 2063 	clr	a
      0028B3 F0               [24] 2064 	movx	@dptr,a
      0028B4                       2065 00148$:
                                   2066 ;	life.c:171: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      0028B4 90 8C 04         [24] 2067 	mov	dptr,#_y
      0028B7 E0               [24] 2068 	movx	a,@dptr
      0028B8 FE               [12] 2069 	mov	r6,a
      0028B9 A3               [24] 2070 	inc	dptr
      0028BA E0               [24] 2071 	movx	a,@dptr
      0028BB C4               [12] 2072 	swap	a
      0028BC 23               [12] 2073 	rl	a
      0028BD 54 E0            [12] 2074 	anl	a,#0xe0
      0028BF CE               [12] 2075 	xch	a,r6
      0028C0 C4               [12] 2076 	swap	a
      0028C1 23               [12] 2077 	rl	a
      0028C2 CE               [12] 2078 	xch	a,r6
      0028C3 6E               [12] 2079 	xrl	a,r6
      0028C4 CE               [12] 2080 	xch	a,r6
      0028C5 54 E0            [12] 2081 	anl	a,#0xe0
      0028C7 CE               [12] 2082 	xch	a,r6
      0028C8 6E               [12] 2083 	xrl	a,r6
      0028C9 FF               [12] 2084 	mov	r7,a
      0028CA 90 8C 02         [24] 2085 	mov	dptr,#_x
      0028CD E0               [24] 2086 	movx	a,@dptr
      0028CE FC               [12] 2087 	mov	r4,a
      0028CF A3               [24] 2088 	inc	dptr
      0028D0 E0               [24] 2089 	movx	a,@dptr
      0028D1 FD               [12] 2090 	mov	r5,a
      0028D2 EC               [12] 2091 	mov	a,r4
      0028D3 2E               [12] 2092 	add	a,r6
      0028D4 FE               [12] 2093 	mov	r6,a
      0028D5 ED               [12] 2094 	mov	a,r5
      0028D6 3F               [12] 2095 	addc	a,r7
      0028D7 FF               [12] 2096 	mov	r7,a
      0028D8 EE               [12] 2097 	mov	a,r6
      0028D9 24 02            [12] 2098 	add	a,#_u
      0028DB F5 82            [12] 2099 	mov	dpl,a
      0028DD EF               [12] 2100 	mov	a,r7
      0028DE 34 84            [12] 2101 	addc	a,#(_u >> 8)
      0028E0 F5 83            [12] 2102 	mov	dph,a
      0028E2 E0               [24] 2103 	movx	a,@dptr
      0028E3 FD               [12] 2104 	mov	r5,a
      0028E4 EE               [12] 2105 	mov	a,r6
      0028E5 24 02            [12] 2106 	add	a,#_nu
      0028E7 F5 82            [12] 2107 	mov	dpl,a
      0028E9 EF               [12] 2108 	mov	a,r7
      0028EA 34 88            [12] 2109 	addc	a,#(_nu >> 8)
      0028EC F5 83            [12] 2110 	mov	dph,a
      0028EE E0               [24] 2111 	movx	a,@dptr
      0028EF FF               [12] 2112 	mov	r7,a
      0028F0 ED               [12] 2113 	mov	a,r5
      0028F1 B5 07 02         [24] 2114 	cjne	a,ar7,00443$
      0028F4 80 05            [24] 2115 	sjmp	00189$
      0028F6                       2116 00443$:
      0028F6 90 8C 13         [24] 2117 	mov	dptr,#_fixed
      0028F9 E4               [12] 2118 	clr	a
      0028FA F0               [24] 2119 	movx	@dptr,a
      0028FB                       2120 00189$:
                                   2121 ;	life.c:169: for (x = 0; x < W; x++) {
      0028FB 90 8C 02         [24] 2122 	mov	dptr,#_x
      0028FE E0               [24] 2123 	movx	a,@dptr
      0028FF 24 01            [12] 2124 	add	a,#0x01
      002901 F0               [24] 2125 	movx	@dptr,a
      002902 A3               [24] 2126 	inc	dptr
      002903 E0               [24] 2127 	movx	a,@dptr
      002904 34 00            [12] 2128 	addc	a,#0x00
      002906 F0               [24] 2129 	movx	@dptr,a
      002907 90 8C 02         [24] 2130 	mov	dptr,#_x
      00290A E0               [24] 2131 	movx	a,@dptr
      00290B FE               [12] 2132 	mov	r6,a
      00290C A3               [24] 2133 	inc	dptr
      00290D E0               [24] 2134 	movx	a,@dptr
      00290E FF               [12] 2135 	mov	r7,a
      00290F C3               [12] 2136 	clr	c
      002910 EE               [12] 2137 	mov	a,r6
      002911 94 20            [12] 2138 	subb	a,#0x20
      002913 EF               [12] 2139 	mov	a,r7
      002914 64 80            [12] 2140 	xrl	a,#0x80
      002916 94 80            [12] 2141 	subb	a,#0x80
      002918 50 03            [24] 2142 	jnc	00444$
      00291A 02 28 6D         [24] 2143 	ljmp	00188$
      00291D                       2144 00444$:
                                   2145 ;	life.c:168: for (y = 0; y < H; y++)
      00291D 90 8C 04         [24] 2146 	mov	dptr,#_y
      002920 E0               [24] 2147 	movx	a,@dptr
      002921 24 01            [12] 2148 	add	a,#0x01
      002923 F0               [24] 2149 	movx	@dptr,a
      002924 A3               [24] 2150 	inc	dptr
      002925 E0               [24] 2151 	movx	a,@dptr
      002926 34 00            [12] 2152 	addc	a,#0x00
      002928 F0               [24] 2153 	movx	@dptr,a
      002929 90 8C 04         [24] 2154 	mov	dptr,#_y
      00292C E0               [24] 2155 	movx	a,@dptr
      00292D FE               [12] 2156 	mov	r6,a
      00292E A3               [24] 2157 	inc	dptr
      00292F E0               [24] 2158 	movx	a,@dptr
      002930 FF               [12] 2159 	mov	r7,a
      002931 C3               [12] 2160 	clr	c
      002932 EE               [12] 2161 	mov	a,r6
      002933 94 20            [12] 2162 	subb	a,#0x20
      002935 EF               [12] 2163 	mov	a,r7
      002936 64 80            [12] 2164 	xrl	a,#0x80
      002938 94 80            [12] 2165 	subb	a,#0x80
      00293A 50 03            [24] 2166 	jnc	00445$
      00293C 02 28 66         [24] 2167 	ljmp	00190$
      00293F                       2168 00445$:
                                   2169 ;	life.c:174: memcpy(pu, u, sizeof (u));
      00293F E4               [12] 2170 	clr	a
      002940 C0 E0            [24] 2171 	push	acc
      002942 74 04            [12] 2172 	mov	a,#0x04
      002944 C0 E0            [24] 2173 	push	acc
      002946 74 02            [12] 2174 	mov	a,#_u
      002948 C0 E0            [24] 2175 	push	acc
      00294A 74 84            [12] 2176 	mov	a,#(_u >> 8)
      00294C C0 E0            [24] 2177 	push	acc
      00294E E4               [12] 2178 	clr	a
      00294F C0 E0            [24] 2179 	push	acc
      002951 90 80 02         [24] 2180 	mov	dptr,#_pu
      002954 75 F0 00         [24] 2181 	mov	b,#0x00
      002957 12 2A 18         [24] 2182 	lcall	___memcpy
      00295A E5 81            [12] 2183 	mov	a,sp
      00295C 24 FB            [12] 2184 	add	a,#0xfb
      00295E F5 81            [12] 2185 	mov	sp,a
                                   2186 ;	life.c:175: memcpy(u, nu, sizeof (nu));
      002960 E4               [12] 2187 	clr	a
      002961 C0 E0            [24] 2188 	push	acc
      002963 74 04            [12] 2189 	mov	a,#0x04
      002965 C0 E0            [24] 2190 	push	acc
      002967 74 02            [12] 2191 	mov	a,#_nu
      002969 C0 E0            [24] 2192 	push	acc
      00296B 74 88            [12] 2193 	mov	a,#(_nu >> 8)
      00296D C0 E0            [24] 2194 	push	acc
      00296F E4               [12] 2195 	clr	a
      002970 C0 E0            [24] 2196 	push	acc
      002972 90 84 02         [24] 2197 	mov	dptr,#_u
      002975 75 F0 00         [24] 2198 	mov	b,#0x00
      002978 12 2A 18         [24] 2199 	lcall	___memcpy
      00297B E5 81            [12] 2200 	mov	a,sp
      00297D 24 FB            [12] 2201 	add	a,#0xfb
      00297F F5 81            [12] 2202 	mov	sp,a
                                   2203 ;	life.c:206: if (fixed || cycle2) {
      002981 90 8C 13         [24] 2204 	mov	dptr,#_fixed
      002984 E0               [24] 2205 	movx	a,@dptr
      002985 70 09            [24] 2206 	jnz	00101$
      002987 90 8C 14         [24] 2207 	mov	dptr,#_cycle2
      00298A E0               [24] 2208 	movx	a,@dptr
      00298B 70 03            [24] 2209 	jnz	00447$
      00298D 02 26 40         [24] 2210 	ljmp	00197$
      002990                       2211 00447$:
      002990                       2212 00101$:
                                   2213 ;	life.c:207: printstr("DONE\r\n");
      002990 7D 7D            [12] 2214 	mov	r5,#___str_8
      002992 7E 2C            [12] 2215 	mov	r6,#(___str_8 >> 8)
      002994 7F 80            [12] 2216 	mov	r7,#0x80
                                   2217 ;	life.c:48: return;
      002996                       2218 00193$:
                                   2219 ;	life.c:46: for (; *s; s++) putchar(*s);
      002996 8D 82            [24] 2220 	mov	dpl,r5
      002998 8E 83            [24] 2221 	mov	dph,r6
      00299A 8F F0            [24] 2222 	mov	b,r7
      00299C 12 2B 15         [24] 2223 	lcall	__gptrget
      00299F FC               [12] 2224 	mov	r4,a
      0029A0 60 10            [24] 2225 	jz	00155$
      0029A2 7B 00            [12] 2226 	mov	r3,#0x00
      0029A4 8C 82            [24] 2227 	mov	dpl,r4
      0029A6 8B 83            [24] 2228 	mov	dph,r3
      0029A8 12 20 75         [24] 2229 	lcall	_putchar
      0029AB 0D               [12] 2230 	inc	r5
                                   2231 ;	life.c:207: printstr("DONE\r\n");
      0029AC BD 00 E7         [24] 2232 	cjne	r5,#0x00,00193$
      0029AF 0E               [12] 2233 	inc	r6
      0029B0 80 E4            [24] 2234 	sjmp	00193$
      0029B2                       2235 00155$:
                                   2236 ;	life.c:208: (void)getchar();
      0029B2 12 20 7A         [24] 2237 	lcall	_getchar
                                   2238 ;	life.c:209: break;
      0029B5                       2239 00104$:
                                   2240 ;	life.c:213: if (i1) {
      0029B5 90 80 01         [24] 2241 	mov	dptr,#_i1
      0029B8 E0               [24] 2242 	movx	a,@dptr
      0029B9 60 25            [24] 2243 	jz	00203$
                                   2244 ;	life.c:214: printstr("BREAK\r\n");
      0029BB 7D 84            [12] 2245 	mov	r5,#___str_9
      0029BD 7E 2C            [12] 2246 	mov	r6,#(___str_9 >> 8)
      0029BF 7F 80            [12] 2247 	mov	r7,#0x80
                                   2248 ;	life.c:48: return;
      0029C1                       2249 00200$:
                                   2250 ;	life.c:46: for (; *s; s++) putchar(*s);
      0029C1 8D 82            [24] 2251 	mov	dpl,r5
      0029C3 8E 83            [24] 2252 	mov	dph,r6
      0029C5 8F F0            [24] 2253 	mov	b,r7
      0029C7 12 2B 15         [24] 2254 	lcall	__gptrget
      0029CA FC               [12] 2255 	mov	r4,a
      0029CB 60 10            [24] 2256 	jz	00157$
      0029CD 7B 00            [12] 2257 	mov	r3,#0x00
      0029CF 8C 82            [24] 2258 	mov	dpl,r4
      0029D1 8B 83            [24] 2259 	mov	dph,r3
      0029D3 12 20 75         [24] 2260 	lcall	_putchar
      0029D6 0D               [12] 2261 	inc	r5
                                   2262 ;	life.c:214: printstr("BREAK\r\n");
      0029D7 BD 00 E7         [24] 2263 	cjne	r5,#0x00,00200$
      0029DA 0E               [12] 2264 	inc	r6
      0029DB 80 E4            [24] 2265 	sjmp	00200$
      0029DD                       2266 00157$:
                                   2267 ;	life.c:215: (void)getchar();
      0029DD 12 20 7A         [24] 2268 	lcall	_getchar
      0029E0                       2269 00203$:
                                   2270 ;	life.c:187: for (i0 = 0; !i0; ) {
      0029E0 90 80 00         [24] 2271 	mov	dptr,#_i0
      0029E3 E0               [24] 2272 	movx	a,@dptr
      0029E4 70 03            [24] 2273 	jnz	00453$
      0029E6 02 23 77         [24] 2274 	ljmp	00202$
      0029E9                       2275 00453$:
                                   2276 ;	life.c:219: EA = 0;
                                   2277 ;	assignBit
      0029E9 C2 AF            [12] 2278 	clr	_EA
                                   2279 ;	life.c:221: printstr("TERM\r\n");
      0029EB 7D 8C            [12] 2280 	mov	r5,#___str_10
      0029ED 7E 2C            [12] 2281 	mov	r6,#(___str_10 >> 8)
      0029EF 7F 80            [12] 2282 	mov	r7,#0x80
                                   2283 ;	life.c:48: return;
      0029F1                       2284 00205$:
                                   2285 ;	life.c:46: for (; *s; s++) putchar(*s);
      0029F1 8D 82            [24] 2286 	mov	dpl,r5
      0029F3 8E 83            [24] 2287 	mov	dph,r6
      0029F5 8F F0            [24] 2288 	mov	b,r7
      0029F7 12 2B 15         [24] 2289 	lcall	__gptrget
      0029FA FC               [12] 2290 	mov	r4,a
      0029FB 60 10            [24] 2291 	jz	00159$
      0029FD 7B 00            [12] 2292 	mov	r3,#0x00
      0029FF 8C 82            [24] 2293 	mov	dpl,r4
      002A01 8B 83            [24] 2294 	mov	dph,r3
      002A03 12 20 75         [24] 2295 	lcall	_putchar
      002A06 0D               [12] 2296 	inc	r5
                                   2297 ;	life.c:221: printstr("TERM\r\n");
      002A07 BD 00 E7         [24] 2298 	cjne	r5,#0x00,00205$
      002A0A 0E               [12] 2299 	inc	r6
      002A0B 80 E4            [24] 2300 	sjmp	00205$
      002A0D                       2301 00159$:
                                   2302 ;	life.c:222: (void)getchar();
      002A0D 12 20 7A         [24] 2303 	lcall	_getchar
                                   2304 ;	life.c:226: __endasm;
      002A10 02 00 00         [24] 2305 	ljmp	0
                                   2306 ;	life.c:227: }
      002A13 15 81            [12] 2307 	dec	sp
      002A15 D0 10            [24] 2308 	pop	_bp
      002A17 22               [24] 2309 	ret
                                   2310 	.area CSEG    (CODE)
                                   2311 	.area CONST   (CODE)
      002C3D                       2312 _digits:
      002C3D 30                    2313 	.db #0x30	; 48	'0'
      002C3E 31                    2314 	.db #0x31	; 49	'1'
      002C3F 32                    2315 	.db #0x32	; 50	'2'
      002C40 33                    2316 	.db #0x33	; 51	'3'
      002C41 34                    2317 	.db #0x34	; 52	'4'
      002C42 35                    2318 	.db #0x35	; 53	'5'
      002C43 36                    2319 	.db #0x36	; 54	'6'
      002C44 37                    2320 	.db #0x37	; 55	'7'
      002C45 38                    2321 	.db #0x38	; 56	'8'
      002C46 39                    2322 	.db #0x39	; 57	'9'
      002C47 61                    2323 	.db #0x61	; 97	'a'
      002C48 62                    2324 	.db #0x62	; 98	'b'
      002C49 63                    2325 	.db #0x63	; 99	'c'
      002C4A 64                    2326 	.db #0x64	; 100	'd'
      002C4B 65                    2327 	.db #0x65	; 101	'e'
      002C4C 66                    2328 	.db #0x66	; 102	'f'
                                   2329 	.area CONST   (CODE)
      002C4D                       2330 ___str_0:
      002C4D 1B                    2331 	.db 0x1b
      002C4E 5B 32 4A              2332 	.ascii "[2J"
      002C51 1B                    2333 	.db 0x1b
      002C52 5B 6D                 2334 	.ascii "[m"
      002C54 00                    2335 	.db 0x00
                                   2336 	.area CSEG    (CODE)
                                   2337 	.area CONST   (CODE)
      002C55                       2338 ___str_1:
      002C55 0D                    2339 	.db 0x0d
      002C56 0A                    2340 	.db 0x0a
      002C57 00                    2341 	.db 0x00
                                   2342 	.area CSEG    (CODE)
                                   2343 	.area CONST   (CODE)
      002C58                       2344 ___str_2:
      002C58 5B 5D                 2345 	.ascii "[]"
      002C5A 00                    2346 	.db 0x00
                                   2347 	.area CSEG    (CODE)
                                   2348 	.area CONST   (CODE)
      002C5B                       2349 ___str_3:
      002C5B 23 23                 2350 	.ascii "##"
      002C5D 00                    2351 	.db 0x00
                                   2352 	.area CSEG    (CODE)
                                   2353 	.area CONST   (CODE)
      002C5E                       2354 ___str_4:
      002C5E 3E                    2355 	.ascii ">"
      002C5F 0D                    2356 	.db 0x0d
      002C60 0A                    2357 	.db 0x0a
      002C61 00                    2358 	.db 0x00
                                   2359 	.area CSEG    (CODE)
                                   2360 	.area CONST   (CODE)
      002C62                       2361 ___str_5:
      002C62 1B                    2362 	.db 0x1b
      002C63 5B 32 4A              2363 	.ascii "[2J"
      002C66 1B                    2364 	.db 0x1b
      002C67 5B 6D 49 4E 49 54     2365 	.ascii "[mINIT"
      002C6D 0D                    2366 	.db 0x0d
      002C6E 0A                    2367 	.db 0x0a
      002C6F 00                    2368 	.db 0x00
                                   2369 	.area CSEG    (CODE)
                                   2370 	.area CONST   (CODE)
      002C70                       2371 ___str_6:
      002C70 4C 4F 41 44           2372 	.ascii "LOAD"
      002C74 0D                    2373 	.db 0x0d
      002C75 0A                    2374 	.db 0x0a
      002C76 00                    2375 	.db 0x00
                                   2376 	.area CSEG    (CODE)
                                   2377 	.area CONST   (CODE)
      002C77                       2378 ___str_7:
      002C77 52 44 59              2379 	.ascii "RDY"
      002C7A 0D                    2380 	.db 0x0d
      002C7B 0A                    2381 	.db 0x0a
      002C7C 00                    2382 	.db 0x00
                                   2383 	.area CSEG    (CODE)
                                   2384 	.area CONST   (CODE)
      002C7D                       2385 ___str_8:
      002C7D 44 4F 4E 45           2386 	.ascii "DONE"
      002C81 0D                    2387 	.db 0x0d
      002C82 0A                    2388 	.db 0x0a
      002C83 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      002C84                       2392 ___str_9:
      002C84 42 52 45 41 4B        2393 	.ascii "BREAK"
      002C89 0D                    2394 	.db 0x0d
      002C8A 0A                    2395 	.db 0x0a
      002C8B 00                    2396 	.db 0x00
                                   2397 	.area CSEG    (CODE)
                                   2398 	.area CONST   (CODE)
      002C8C                       2399 ___str_10:
      002C8C 54 45 52 4D           2400 	.ascii "TERM"
      002C90 0D                    2401 	.db 0x0d
      002C91 0A                    2402 	.db 0x0a
      002C92 00                    2403 	.db 0x00
                                   2404 	.area CSEG    (CODE)
                                   2405 	.area XINIT   (CODE)
                                   2406 	.area CABS    (ABS,CODE)
