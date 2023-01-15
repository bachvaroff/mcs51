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
      008002                        352 	.ds 1024
      008402                        353 _u::
      008402                        354 	.ds 1024
      008802                        355 _nu::
      008802                        356 	.ds 1024
      008C02                        357 _x::
      008C02                        358 	.ds 2
      008C04                        359 _y::
      008C04                        360 	.ds 2
      008C06                        361 _x1::
      008C06                        362 	.ds 2
      008C08                        363 _y1::
      008C08                        364 	.ds 2
      008C0A                        365 _j::
      008C0A                        366 	.ds 2
      008C0C                        367 _c::
      008C0C                        368 	.ds 2
      008C0E                        369 _bstep::
      008C0E                        370 	.ds 1
      008C0F                        371 _n::
      008C0F                        372 	.ds 1
      008C10                        373 _fixed::
      008C10                        374 	.ds 1
      008C11                        375 _cycle2::
      008C11                        376 	.ds 1
      008C12                        377 _generation::
      008C12                        378 	.ds 4
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
                                    470 ;	life.c:65: void int0(void) __interrupt 0 __using 1 {
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
                                    501 ;	life.c:70: void int1(void) __interrupt 2 __using 1 {
                                    502 ;	-----------------------------------------
                                    503 ;	 function int1
                                    504 ;	-----------------------------------------
      002096                        505 _int1:
      002096 C0 E0            [24]  506 	push	acc
      002098 C0 82            [24]  507 	push	dpl
      00209A C0 83            [24]  508 	push	dph
                                    509 ;	life.c:71: i1 = 1;
      00209C 90 80 01         [24]  510 	mov	dptr,#_i1
      00209F 74 01            [12]  511 	mov	a,#0x01
      0020A1 F0               [24]  512 	movx	@dptr,a
                                    513 ;	life.c:72: }
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
                                    536 ;	life.c:95: void show(char hdr) {
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
                                    549 ;	life.c:96: if (hdr) {
      0020A9 E5 82            [12]  550 	mov	a,dpl
      0020AB FF               [12]  551 	mov	r7,a
      0020AC 70 03            [24]  552 	jnz	00190$
      0020AE 02 22 4F         [24]  553 	ljmp	00102$
      0020B1                        554 00190$:
                                    555 ;	life.c:97: printstr("\033[2J\033[m");
      0020B1 7D 9B            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2B            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2A 63         [24]  565 	lcall	__gptrget
      0020C0 FC               [12]  566 	mov	r4,a
      0020C1 60 10            [24]  567 	jz	00109$
      0020C3 7B 00            [12]  568 	mov	r3,#0x00
      0020C5 8C 82            [24]  569 	mov	dpl,r4
      0020C7 8B 83            [24]  570 	mov	dph,r3
      0020C9 12 20 75         [24]  571 	lcall	_putchar
      0020CC 0D               [12]  572 	inc	r5
                                    573 ;	life.c:97: printstr("\033[2J\033[m");
      0020CD BD 00 E7         [24]  574 	cjne	r5,#0x00,00121$
      0020D0 0E               [12]  575 	inc	r6
      0020D1 80 E4            [24]  576 	sjmp	00121$
      0020D3                        577 00109$:
                                    578 ;	life.c:89: print16x(generation[1]);
      0020D3 90 8C 14         [24]  579 	mov	dptr,#(_generation + 0x0002)
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
      0020ED 24 8B            [12]  597 	add	a,#_digits
      0020EF F5 82            [12]  598 	mov	dpl,a
      0020F1 ED               [12]  599 	mov	a,r5
      0020F2 34 2B            [12]  600 	addc	a,#(_digits >> 8)
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
      00210A 24 8B            [12]  614 	add	a,#_digits
      00210C F5 82            [12]  615 	mov	dpl,a
      00210E EC               [12]  616 	mov	a,r4
      00210F 34 2B            [12]  617 	addc	a,#(_digits >> 8)
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
      002139 24 8B            [12]  645 	add	a,#_digits
      00213B F5 82            [12]  646 	mov	dpl,a
      00213D ED               [12]  647 	mov	a,r5
      00213E 34 2B            [12]  648 	addc	a,#(_digits >> 8)
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
      002154 24 8B            [12]  661 	add	a,#_digits
      002156 F5 82            [12]  662 	mov	dpl,a
      002158 EF               [12]  663 	mov	a,r7
      002159 34 2B            [12]  664 	addc	a,#(_digits >> 8)
      00215B F5 83            [12]  665 	mov	dph,a
      00215D E4               [12]  666 	clr	a
      00215E 93               [24]  667 	movc	a,@a+dptr
      00215F FF               [12]  668 	mov	r7,a
      002160 7E 00            [12]  669 	mov	r6,#0x00
      002162 8F 82            [24]  670 	mov	dpl,r7
      002164 8E 83            [24]  671 	mov	dph,r6
      002166 12 20 75         [24]  672 	lcall	_putchar
                                    673 ;	life.c:90: print16x(generation[0]);
      002169 90 8C 12         [24]  674 	mov	dptr,#_generation
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
      002183 24 8B            [12]  692 	add	a,#_digits
      002185 F5 82            [12]  693 	mov	dpl,a
      002187 ED               [12]  694 	mov	a,r5
      002188 34 2B            [12]  695 	addc	a,#(_digits >> 8)
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
      0021A0 24 8B            [12]  709 	add	a,#_digits
      0021A2 F5 82            [12]  710 	mov	dpl,a
      0021A4 EC               [12]  711 	mov	a,r4
      0021A5 34 2B            [12]  712 	addc	a,#(_digits >> 8)
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
      0021CF 24 8B            [12]  740 	add	a,#_digits
      0021D1 F5 82            [12]  741 	mov	dpl,a
      0021D3 ED               [12]  742 	mov	a,r5
      0021D4 34 2B            [12]  743 	addc	a,#(_digits >> 8)
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
      0021EA 24 8B            [12]  756 	add	a,#_digits
      0021EC F5 82            [12]  757 	mov	dpl,a
      0021EE EF               [12]  758 	mov	a,r7
      0021EF 34 2B            [12]  759 	addc	a,#(_digits >> 8)
      0021F1 F5 83            [12]  760 	mov	dph,a
      0021F3 E4               [12]  761 	clr	a
      0021F4 93               [24]  762 	movc	a,@a+dptr
      0021F5 FF               [12]  763 	mov	r7,a
      0021F6 7E 00            [12]  764 	mov	r6,#0x00
      0021F8 8F 82            [24]  765 	mov	dpl,r7
      0021FA 8E 83            [24]  766 	mov	dph,r6
      0021FC 12 20 75         [24]  767 	lcall	_putchar
                                    768 ;	life.c:99: printstr("\r\n");
      0021FF 7D A3            [12]  769 	mov	r5,#___str_1
      002201 7E 2B            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2A 63         [24]  778 	lcall	__gptrget
      00220E FC               [12]  779 	mov	r4,a
      00220F 60 10            [24]  780 	jz	00114$
      002211 7B 00            [12]  781 	mov	r3,#0x00
      002213 8C 82            [24]  782 	mov	dpl,r4
      002215 8B 83            [24]  783 	mov	dph,r3
      002217 12 20 75         [24]  784 	lcall	_putchar
      00221A 0D               [12]  785 	inc	r5
                                    786 ;	life.c:99: printstr("\r\n");
      00221B BD 00 E7         [24]  787 	cjne	r5,#0x00,00124$
      00221E 0E               [12]  788 	inc	r6
      00221F 80 E4            [24]  789 	sjmp	00124$
      002221                        790 00114$:
                                    791 ;	life.c:82: generation[0]++;
      002221 90 8C 12         [24]  792 	mov	dptr,#_generation
      002224 E0               [24]  793 	movx	a,@dptr
      002225 FE               [12]  794 	mov	r6,a
      002226 A3               [24]  795 	inc	dptr
      002227 E0               [24]  796 	movx	a,@dptr
      002228 FF               [12]  797 	mov	r7,a
      002229 0E               [12]  798 	inc	r6
      00222A BE 00 01         [24]  799 	cjne	r6,#0x00,00199$
      00222D 0F               [12]  800 	inc	r7
      00222E                        801 00199$:
      00222E 90 8C 12         [24]  802 	mov	dptr,#_generation
      002231 EE               [12]  803 	mov	a,r6
      002232 F0               [24]  804 	movx	@dptr,a
      002233 EF               [12]  805 	mov	a,r7
      002234 A3               [24]  806 	inc	dptr
      002235 F0               [24]  807 	movx	@dptr,a
                                    808 ;	life.c:83: if (!generation[0]) generation[1]++;
      002236 EE               [12]  809 	mov	a,r6
      002237 4F               [12]  810 	orl	a,r7
      002238 70 15            [24]  811 	jnz	00102$
      00223A 90 8C 14         [24]  812 	mov	dptr,#(_generation + 0x0002)
      00223D E0               [24]  813 	movx	a,@dptr
      00223E FE               [12]  814 	mov	r6,a
      00223F A3               [24]  815 	inc	dptr
      002240 E0               [24]  816 	movx	a,@dptr
      002241 FF               [12]  817 	mov	r7,a
      002242 0E               [12]  818 	inc	r6
      002243 BE 00 01         [24]  819 	cjne	r6,#0x00,00201$
      002246 0F               [12]  820 	inc	r7
      002247                        821 00201$:
      002247 90 8C 14         [24]  822 	mov	dptr,#(_generation + 0x0002)
      00224A EE               [12]  823 	mov	a,r6
      00224B F0               [24]  824 	movx	@dptr,a
      00224C EF               [12]  825 	mov	a,r7
      00224D A3               [24]  826 	inc	dptr
      00224E F0               [24]  827 	movx	@dptr,a
                                    828 ;	life.c:100: updategen();
      00224F                        829 00102$:
                                    830 ;	life.c:103: for (x = 0; x < W; x++) {
      00224F 90 8C 02         [24]  831 	mov	dptr,#_x
      002252 E4               [12]  832 	clr	a
      002253 F0               [24]  833 	movx	@dptr,a
      002254 A3               [24]  834 	inc	dptr
      002255 F0               [24]  835 	movx	@dptr,a
      002256                        836 00131$:
                                    837 ;	life.c:104: for (y = 0; y < H; y++)
      002256 90 8C 04         [24]  838 	mov	dptr,#_y
      002259 E4               [12]  839 	clr	a
      00225A F0               [24]  840 	movx	@dptr,a
      00225B A3               [24]  841 	inc	dptr
      00225C F0               [24]  842 	movx	@dptr,a
      00225D                        843 00126$:
                                    844 ;	life.c:105: if (u[A2D(W, y, x)]) {
      00225D 90 8C 04         [24]  845 	mov	dptr,#_y
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
      002273 90 8C 02         [24]  863 	mov	dptr,#_x
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
      002286 34 84            [12]  879 	addc	a,#(_u >> 8)
      002288 FF               [12]  880 	mov	r7,a
      002289 8E 82            [24]  881 	mov	dpl,r6
      00228B 8F 83            [24]  882 	mov	dph,r7
      00228D E0               [24]  883 	movx	a,@dptr
      00228E 60 0E            [24]  884 	jz	00104$
                                    885 ;	life.c:106: putchar('['); putchar(']');
      002290 90 00 5B         [24]  886 	mov	dptr,#0x005b
      002293 12 20 75         [24]  887 	lcall	_putchar
      002296 90 00 5D         [24]  888 	mov	dptr,#0x005d
      002299 12 20 75         [24]  889 	lcall	_putchar
      00229C 80 0C            [24]  890 	sjmp	00127$
      00229E                        891 00104$:
                                    892 ;	life.c:108: putchar('#'); putchar('#');
      00229E 90 00 23         [24]  893 	mov	dptr,#0x0023
      0022A1 12 20 75         [24]  894 	lcall	_putchar
      0022A4 90 00 23         [24]  895 	mov	dptr,#0x0023
      0022A7 12 20 75         [24]  896 	lcall	_putchar
      0022AA                        897 00127$:
                                    898 ;	life.c:104: for (y = 0; y < H; y++)
      0022AA 90 8C 04         [24]  899 	mov	dptr,#_y
      0022AD E0               [24]  900 	movx	a,@dptr
      0022AE 24 01            [12]  901 	add	a,#0x01
      0022B0 F0               [24]  902 	movx	@dptr,a
      0022B1 A3               [24]  903 	inc	dptr
      0022B2 E0               [24]  904 	movx	a,@dptr
      0022B3 34 00            [12]  905 	addc	a,#0x00
      0022B5 F0               [24]  906 	movx	@dptr,a
      0022B6 90 8C 04         [24]  907 	mov	dptr,#_y
      0022B9 E0               [24]  908 	movx	a,@dptr
      0022BA FE               [12]  909 	mov	r6,a
      0022BB A3               [24]  910 	inc	dptr
      0022BC E0               [24]  911 	movx	a,@dptr
      0022BD FF               [12]  912 	mov	r7,a
      0022BE C3               [12]  913 	clr	c
      0022BF EE               [12]  914 	mov	a,r6
      0022C0 94 20            [12]  915 	subb	a,#0x20
      0022C2 EF               [12]  916 	mov	a,r7
      0022C3 64 80            [12]  917 	xrl	a,#0x80
      0022C5 94 80            [12]  918 	subb	a,#0x80
      0022C7 40 94            [24]  919 	jc	00126$
                                    920 ;	life.c:110: printstr("\r\n");
      0022C9 7D A3            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2B            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2A 63         [24]  930 	lcall	__gptrget
      0022D8 FC               [12]  931 	mov	r4,a
      0022D9 60 10            [24]  932 	jz	00119$
      0022DB 7B 00            [12]  933 	mov	r3,#0x00
      0022DD 8C 82            [24]  934 	mov	dpl,r4
      0022DF 8B 83            [24]  935 	mov	dph,r3
      0022E1 12 20 75         [24]  936 	lcall	_putchar
      0022E4 0D               [12]  937 	inc	r5
                                    938 ;	life.c:110: printstr("\r\n");
      0022E5 BD 00 E7         [24]  939 	cjne	r5,#0x00,00129$
      0022E8 0E               [12]  940 	inc	r6
      0022E9 80 E4            [24]  941 	sjmp	00129$
      0022EB                        942 00119$:
                                    943 ;	life.c:103: for (x = 0; x < W; x++) {
      0022EB 90 8C 02         [24]  944 	mov	dptr,#_x
      0022EE E0               [24]  945 	movx	a,@dptr
      0022EF 24 01            [12]  946 	add	a,#0x01
      0022F1 F0               [24]  947 	movx	@dptr,a
      0022F2 A3               [24]  948 	inc	dptr
      0022F3 E0               [24]  949 	movx	a,@dptr
      0022F4 34 00            [12]  950 	addc	a,#0x00
      0022F6 F0               [24]  951 	movx	@dptr,a
      0022F7 90 8C 02         [24]  952 	mov	dptr,#_x
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
                                    967 ;	life.c:113: return;
                                    968 ;	life.c:114: }
      00230D 22               [24]  969 	ret
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'main'
                                    972 ;------------------------------------------------------------
                                    973 ;__2621440020              Allocated to registers 
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
                                    990 ;------------------------------------------------------------
                                    991 ;	life.c:181: void main(void) {
                                    992 ;	-----------------------------------------
                                    993 ;	 function main
                                    994 ;	-----------------------------------------
      00230E                        995 _main:
      00230E C0 10            [24]  996 	push	_bp
      002310 85 81 10         [24]  997 	mov	_bp,sp
      002313 05 81            [12]  998 	inc	sp
      002315 05 81            [12]  999 	inc	sp
                                   1000 ;	life.c:182: IT0 = 1;
                                   1001 ;	assignBit
      002317 D2 88            [12] 1002 	setb	_IT0
                                   1003 ;	life.c:183: IT1 = 1;
                                   1004 ;	assignBit
      002319 D2 8A            [12] 1005 	setb	_IT1
                                   1006 ;	life.c:184: EX0 = 1;
                                   1007 ;	assignBit
      00231B D2 A8            [12] 1008 	setb	_EX0
                                   1009 ;	life.c:185: EX1 = 1;
                                   1010 ;	assignBit
      00231D D2 AA            [12] 1011 	setb	_EX1
                                   1012 ;	life.c:186: EA = 1;
                                   1013 ;	assignBit
      00231F D2 AF            [12] 1014 	setb	_EA
                                   1015 ;	life.c:188: for (i0 = 0; !i0; ) {
      002321 90 80 00         [24] 1016 	mov	dptr,#_i0
      002324 E4               [12] 1017 	clr	a
      002325 F0               [24] 1018 	movx	@dptr,a
      002326                       1019 00189$:
                                   1020 ;	life.c:117: memset(u, 0, sizeof (u));
      002326 E4               [12] 1021 	clr	a
      002327 C0 E0            [24] 1022 	push	acc
      002329 74 04            [12] 1023 	mov	a,#0x04
      00232B C0 E0            [24] 1024 	push	acc
      00232D E4               [12] 1025 	clr	a
      00232E C0 E0            [24] 1026 	push	acc
      002330 90 84 02         [24] 1027 	mov	dptr,#_u
      002333 75 F0 00         [24] 1028 	mov	b,#0x00
      002336 12 29 F9         [24] 1029 	lcall	_memset
      002339 15 81            [12] 1030 	dec	sp
      00233B 15 81            [12] 1031 	dec	sp
      00233D 15 81            [12] 1032 	dec	sp
                                   1033 ;	life.c:118: memset(pu, 0, sizeof (pu));
      00233F E4               [12] 1034 	clr	a
      002340 C0 E0            [24] 1035 	push	acc
      002342 74 04            [12] 1036 	mov	a,#0x04
      002344 C0 E0            [24] 1037 	push	acc
      002346 E4               [12] 1038 	clr	a
      002347 C0 E0            [24] 1039 	push	acc
      002349 90 80 02         [24] 1040 	mov	dptr,#_pu
      00234C 75 F0 00         [24] 1041 	mov	b,#0x00
      00234F 12 29 F9         [24] 1042 	lcall	_memset
      002352 15 81            [12] 1043 	dec	sp
      002354 15 81            [12] 1044 	dec	sp
      002356 15 81            [12] 1045 	dec	sp
                                   1046 ;	life.c:190: printstr("\033[2J\033[mINIT\r\n");
      002358 7D B1            [12] 1047 	mov	r5,#___str_4
      00235A 7E 2B            [12] 1048 	mov	r6,#(___str_4 >> 8)
      00235C 7F 80            [12] 1049 	mov	r7,#0x80
                                   1050 ;	life.c:48: return;
      00235E                       1051 00154$:
                                   1052 ;	life.c:46: for (; *s; s++) putchar(*s);
      00235E 8D 82            [24] 1053 	mov	dpl,r5
      002360 8E 83            [24] 1054 	mov	dph,r6
      002362 8F F0            [24] 1055 	mov	b,r7
      002364 12 2A 63         [24] 1056 	lcall	__gptrget
      002367 FC               [12] 1057 	mov	r4,a
      002368 60 10            [24] 1058 	jz	00110$
      00236A 7B 00            [12] 1059 	mov	r3,#0x00
      00236C 8C 82            [24] 1060 	mov	dpl,r4
      00236E 8B 83            [24] 1061 	mov	dph,r3
      002370 12 20 75         [24] 1062 	lcall	_putchar
      002373 0D               [12] 1063 	inc	r5
                                   1064 ;	life.c:190: printstr("\033[2J\033[mINIT\r\n");
      002374 BD 00 E7         [24] 1065 	cjne	r5,#0x00,00154$
      002377 0E               [12] 1066 	inc	r6
      002378 80 E4            [24] 1067 	sjmp	00154$
      00237A                       1068 00110$:
                                   1069 ;	life.c:191: (void)getchar();
      00237A 12 20 7A         [24] 1070 	lcall	_getchar
                                   1071 ;	life.c:124: j = 0;
      00237D 90 8C 0A         [24] 1072 	mov	dptr,#_j
      002380 E4               [12] 1073 	clr	a
      002381 F0               [24] 1074 	movx	@dptr,a
      002382 A3               [24] 1075 	inc	dptr
      002383 F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	life.c:126: printstr("LOAD <");
      002384 7D A6            [12] 1078 	mov	r5,#___str_2
      002386 7E 2B            [12] 1079 	mov	r6,#(___str_2 >> 8)
      002388 7F 80            [12] 1080 	mov	r7,#0x80
                                   1081 ;	life.c:48: return;
      00238A                       1082 00157$:
                                   1083 ;	life.c:46: for (; *s; s++) putchar(*s);
      00238A 8D 82            [24] 1084 	mov	dpl,r5
      00238C 8E 83            [24] 1085 	mov	dph,r6
      00238E 8F F0            [24] 1086 	mov	b,r7
      002390 12 2A 63         [24] 1087 	lcall	__gptrget
      002393 FC               [12] 1088 	mov	r4,a
      002394 60 10            [24] 1089 	jz	00112$
      002396 7B 00            [12] 1090 	mov	r3,#0x00
      002398 8C 82            [24] 1091 	mov	dpl,r4
      00239A 8B 83            [24] 1092 	mov	dph,r3
      00239C 12 20 75         [24] 1093 	lcall	_putchar
      00239F 0D               [12] 1094 	inc	r5
                                   1095 ;	life.c:126: printstr("LOAD <");
      0023A0 BD 00 E7         [24] 1096 	cjne	r5,#0x00,00157$
      0023A3 0E               [12] 1097 	inc	r6
      0023A4 80 E4            [24] 1098 	sjmp	00157$
      0023A6                       1099 00112$:
                                   1100 ;	life.c:128: for (y = 0; y < H; y++)
      0023A6 90 8C 04         [24] 1101 	mov	dptr,#_y
      0023A9 E4               [12] 1102 	clr	a
      0023AA F0               [24] 1103 	movx	@dptr,a
      0023AB A3               [24] 1104 	inc	dptr
      0023AC F0               [24] 1105 	movx	@dptr,a
      0023AD                       1106 00161$:
                                   1107 ;	life.c:129: for (x = 0; x < W; x++) {
      0023AD 90 8C 02         [24] 1108 	mov	dptr,#_x
      0023B0 E4               [12] 1109 	clr	a
      0023B1 F0               [24] 1110 	movx	@dptr,a
      0023B2 A3               [24] 1111 	inc	dptr
      0023B3 F0               [24] 1112 	movx	@dptr,a
      0023B4                       1113 00159$:
                                   1114 ;	life.c:130: c = getchar();
      0023B4 12 20 7A         [24] 1115 	lcall	_getchar
      0023B7 AE 82            [24] 1116 	mov	r6,dpl
      0023B9 AF 83            [24] 1117 	mov	r7,dph
      0023BB 90 8C 0C         [24] 1118 	mov	dptr,#_c
      0023BE EE               [12] 1119 	mov	a,r6
      0023BF F0               [24] 1120 	movx	@dptr,a
      0023C0 EF               [12] 1121 	mov	a,r7
      0023C1 A3               [24] 1122 	inc	dptr
      0023C2 F0               [24] 1123 	movx	@dptr,a
                                   1124 ;	life.c:131: if (c == (int)'0') {
      0023C3 BE 30 41         [24] 1125 	cjne	r6,#0x30,00119$
      0023C6 BF 00 3E         [24] 1126 	cjne	r7,#0x00,00119$
                                   1127 ;	life.c:132: u[A2D(W, y, x)] = 0;
      0023C9 90 8C 04         [24] 1128 	mov	dptr,#_y
      0023CC E0               [24] 1129 	movx	a,@dptr
      0023CD FC               [12] 1130 	mov	r4,a
      0023CE A3               [24] 1131 	inc	dptr
      0023CF E0               [24] 1132 	movx	a,@dptr
      0023D0 C4               [12] 1133 	swap	a
      0023D1 23               [12] 1134 	rl	a
      0023D2 54 E0            [12] 1135 	anl	a,#0xe0
      0023D4 CC               [12] 1136 	xch	a,r4
      0023D5 C4               [12] 1137 	swap	a
      0023D6 23               [12] 1138 	rl	a
      0023D7 CC               [12] 1139 	xch	a,r4
      0023D8 6C               [12] 1140 	xrl	a,r4
      0023D9 CC               [12] 1141 	xch	a,r4
      0023DA 54 E0            [12] 1142 	anl	a,#0xe0
      0023DC CC               [12] 1143 	xch	a,r4
      0023DD 6C               [12] 1144 	xrl	a,r4
      0023DE FD               [12] 1145 	mov	r5,a
      0023DF 90 8C 02         [24] 1146 	mov	dptr,#_x
      0023E2 E0               [24] 1147 	movx	a,@dptr
      0023E3 FA               [12] 1148 	mov	r2,a
      0023E4 A3               [24] 1149 	inc	dptr
      0023E5 E0               [24] 1150 	movx	a,@dptr
      0023E6 FB               [12] 1151 	mov	r3,a
      0023E7 EA               [12] 1152 	mov	a,r2
      0023E8 2C               [12] 1153 	add	a,r4
      0023E9 FC               [12] 1154 	mov	r4,a
      0023EA EB               [12] 1155 	mov	a,r3
      0023EB 3D               [12] 1156 	addc	a,r5
      0023EC FD               [12] 1157 	mov	r5,a
      0023ED EC               [12] 1158 	mov	a,r4
      0023EE 24 02            [12] 1159 	add	a,#_u
      0023F0 F5 82            [12] 1160 	mov	dpl,a
      0023F2 ED               [12] 1161 	mov	a,r5
      0023F3 34 84            [12] 1162 	addc	a,#(_u >> 8)
      0023F5 F5 83            [12] 1163 	mov	dph,a
      0023F7 E4               [12] 1164 	clr	a
      0023F8 F0               [24] 1165 	movx	@dptr,a
                                   1166 ;	life.c:133: j++;
      0023F9 90 8C 0A         [24] 1167 	mov	dptr,#_j
      0023FC E0               [24] 1168 	movx	a,@dptr
      0023FD 24 01            [12] 1169 	add	a,#0x01
      0023FF F0               [24] 1170 	movx	@dptr,a
      002400 A3               [24] 1171 	inc	dptr
      002401 E0               [24] 1172 	movx	a,@dptr
      002402 34 00            [12] 1173 	addc	a,#0x00
      002404 F0               [24] 1174 	movx	@dptr,a
      002405 80 4D            [24] 1175 	sjmp	00160$
      002407                       1176 00119$:
                                   1177 ;	life.c:134: } else if (c == (int)'1') {
      002407 BE 31 42         [24] 1178 	cjne	r6,#0x31,00117$
      00240A BF 00 3F         [24] 1179 	cjne	r7,#0x00,00117$
                                   1180 ;	life.c:135: u[A2D(W, y, x)] = 1;
      00240D 90 8C 04         [24] 1181 	mov	dptr,#_y
      002410 E0               [24] 1182 	movx	a,@dptr
      002411 FC               [12] 1183 	mov	r4,a
      002412 A3               [24] 1184 	inc	dptr
      002413 E0               [24] 1185 	movx	a,@dptr
      002414 C4               [12] 1186 	swap	a
      002415 23               [12] 1187 	rl	a
      002416 54 E0            [12] 1188 	anl	a,#0xe0
      002418 CC               [12] 1189 	xch	a,r4
      002419 C4               [12] 1190 	swap	a
      00241A 23               [12] 1191 	rl	a
      00241B CC               [12] 1192 	xch	a,r4
      00241C 6C               [12] 1193 	xrl	a,r4
      00241D CC               [12] 1194 	xch	a,r4
      00241E 54 E0            [12] 1195 	anl	a,#0xe0
      002420 CC               [12] 1196 	xch	a,r4
      002421 6C               [12] 1197 	xrl	a,r4
      002422 FD               [12] 1198 	mov	r5,a
      002423 90 8C 02         [24] 1199 	mov	dptr,#_x
      002426 E0               [24] 1200 	movx	a,@dptr
      002427 FA               [12] 1201 	mov	r2,a
      002428 A3               [24] 1202 	inc	dptr
      002429 E0               [24] 1203 	movx	a,@dptr
      00242A FB               [12] 1204 	mov	r3,a
      00242B EA               [12] 1205 	mov	a,r2
      00242C 2C               [12] 1206 	add	a,r4
      00242D FC               [12] 1207 	mov	r4,a
      00242E EB               [12] 1208 	mov	a,r3
      00242F 3D               [12] 1209 	addc	a,r5
      002430 FD               [12] 1210 	mov	r5,a
      002431 EC               [12] 1211 	mov	a,r4
      002432 24 02            [12] 1212 	add	a,#_u
      002434 F5 82            [12] 1213 	mov	dpl,a
      002436 ED               [12] 1214 	mov	a,r5
      002437 34 84            [12] 1215 	addc	a,#(_u >> 8)
      002439 F5 83            [12] 1216 	mov	dph,a
      00243B 74 01            [12] 1217 	mov	a,#0x01
      00243D F0               [24] 1218 	movx	@dptr,a
                                   1219 ;	life.c:136: j++;
      00243E 90 8C 0A         [24] 1220 	mov	dptr,#_j
      002441 E0               [24] 1221 	movx	a,@dptr
      002442 24 01            [12] 1222 	add	a,#0x01
      002444 F0               [24] 1223 	movx	@dptr,a
      002445 A3               [24] 1224 	inc	dptr
      002446 E0               [24] 1225 	movx	a,@dptr
      002447 34 00            [12] 1226 	addc	a,#0x00
      002449 F0               [24] 1227 	movx	@dptr,a
      00244A 80 08            [24] 1228 	sjmp	00160$
      00244C                       1229 00117$:
                                   1230 ;	life.c:137: } else if (c == (int)'#') goto out;
      00244C BE 23 05         [24] 1231 	cjne	r6,#0x23,00373$
      00244F BF 00 02         [24] 1232 	cjne	r7,#0x00,00373$
      002452 80 44            [24] 1233 	sjmp	00130$
      002454                       1234 00373$:
      002454                       1235 00160$:
                                   1236 ;	life.c:129: for (x = 0; x < W; x++) {
      002454 90 8C 02         [24] 1237 	mov	dptr,#_x
      002457 E0               [24] 1238 	movx	a,@dptr
      002458 24 01            [12] 1239 	add	a,#0x01
      00245A F0               [24] 1240 	movx	@dptr,a
      00245B A3               [24] 1241 	inc	dptr
      00245C E0               [24] 1242 	movx	a,@dptr
      00245D 34 00            [12] 1243 	addc	a,#0x00
      00245F F0               [24] 1244 	movx	@dptr,a
      002460 90 8C 02         [24] 1245 	mov	dptr,#_x
      002463 E0               [24] 1246 	movx	a,@dptr
      002464 FE               [12] 1247 	mov	r6,a
      002465 A3               [24] 1248 	inc	dptr
      002466 E0               [24] 1249 	movx	a,@dptr
      002467 FF               [12] 1250 	mov	r7,a
      002468 C3               [12] 1251 	clr	c
      002469 EE               [12] 1252 	mov	a,r6
      00246A 94 20            [12] 1253 	subb	a,#0x20
      00246C EF               [12] 1254 	mov	a,r7
      00246D 64 80            [12] 1255 	xrl	a,#0x80
      00246F 94 80            [12] 1256 	subb	a,#0x80
      002471 50 03            [24] 1257 	jnc	00374$
      002473 02 23 B4         [24] 1258 	ljmp	00159$
      002476                       1259 00374$:
                                   1260 ;	life.c:128: for (y = 0; y < H; y++)
      002476 90 8C 04         [24] 1261 	mov	dptr,#_y
      002479 E0               [24] 1262 	movx	a,@dptr
      00247A 24 01            [12] 1263 	add	a,#0x01
      00247C F0               [24] 1264 	movx	@dptr,a
      00247D A3               [24] 1265 	inc	dptr
      00247E E0               [24] 1266 	movx	a,@dptr
      00247F 34 00            [12] 1267 	addc	a,#0x00
      002481 F0               [24] 1268 	movx	@dptr,a
      002482 90 8C 04         [24] 1269 	mov	dptr,#_y
      002485 E0               [24] 1270 	movx	a,@dptr
      002486 FE               [12] 1271 	mov	r6,a
      002487 A3               [24] 1272 	inc	dptr
      002488 E0               [24] 1273 	movx	a,@dptr
      002489 FF               [12] 1274 	mov	r7,a
      00248A C3               [12] 1275 	clr	c
      00248B EE               [12] 1276 	mov	a,r6
      00248C 94 20            [12] 1277 	subb	a,#0x20
      00248E EF               [12] 1278 	mov	a,r7
      00248F 64 80            [12] 1279 	xrl	a,#0x80
      002491 94 80            [12] 1280 	subb	a,#0x80
      002493 50 03            [24] 1281 	jnc	00375$
      002495 02 23 AD         [24] 1282 	ljmp	00161$
      002498                       1283 00375$:
                                   1284 ;	life.c:140: out:
      002498                       1285 00130$:
                                   1286 ;	life.c:141: if (c != (int)'#')
      002498 90 8C 0C         [24] 1287 	mov	dptr,#_c
      00249B E0               [24] 1288 	movx	a,@dptr
      00249C FE               [12] 1289 	mov	r6,a
      00249D A3               [24] 1290 	inc	dptr
      00249E E0               [24] 1291 	movx	a,@dptr
      00249F FF               [12] 1292 	mov	r7,a
      0024A0 BE 23 05         [24] 1293 	cjne	r6,#0x23,00376$
      0024A3 BF 00 02         [24] 1294 	cjne	r7,#0x00,00376$
      0024A6 80 15            [24] 1295 	sjmp	00129$
      0024A8                       1296 00376$:
                                   1297 ;	life.c:142: while (1) {
      0024A8                       1298 00126$:
                                   1299 ;	life.c:143: c = getchar();
      0024A8 12 20 7A         [24] 1300 	lcall	_getchar
      0024AB AE 82            [24] 1301 	mov	r6,dpl
      0024AD AF 83            [24] 1302 	mov	r7,dph
      0024AF 90 8C 0C         [24] 1303 	mov	dptr,#_c
      0024B2 EE               [12] 1304 	mov	a,r6
      0024B3 F0               [24] 1305 	movx	@dptr,a
      0024B4 EF               [12] 1306 	mov	a,r7
      0024B5 A3               [24] 1307 	inc	dptr
      0024B6 F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	life.c:144: if (c == (int)'#') break;
      0024B7 BE 23 EE         [24] 1310 	cjne	r6,#0x23,00126$
      0024BA BF 00 EB         [24] 1311 	cjne	r7,#0x00,00126$
      0024BD                       1312 00129$:
                                   1313 ;	life.c:146: print16x(j);
      0024BD 90 8C 0A         [24] 1314 	mov	dptr,#_j
      0024C0 E0               [24] 1315 	movx	a,@dptr
      0024C1 FE               [12] 1316 	mov	r6,a
      0024C2 A3               [24] 1317 	inc	dptr
      0024C3 E0               [24] 1318 	movx	a,@dptr
                                   1319 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0024C4 8E 04            [24] 1320 	mov	ar4,r6
      0024C6 FD               [12] 1321 	mov	r5,a
      0024C7 C4               [12] 1322 	swap	a
      0024C8 54 0F            [12] 1323 	anl	a,#0x0f
      0024CA 30 E3 02         [24] 1324 	jnb	acc.3,00379$
      0024CD 44 F0            [12] 1325 	orl	a,#0xf0
      0024CF                       1326 00379$:
      0024CF FE               [12] 1327 	mov	r6,a
      0024D0 33               [12] 1328 	rlc	a
      0024D1 95 E0            [12] 1329 	subb	a,acc
      0024D3 53 06 0F         [24] 1330 	anl	ar6,#0x0f
      0024D6 7F 00            [12] 1331 	mov	r7,#0x00
      0024D8 EE               [12] 1332 	mov	a,r6
      0024D9 24 8B            [12] 1333 	add	a,#_digits
      0024DB F5 82            [12] 1334 	mov	dpl,a
      0024DD EF               [12] 1335 	mov	a,r7
      0024DE 34 2B            [12] 1336 	addc	a,#(_digits >> 8)
      0024E0 F5 83            [12] 1337 	mov	dph,a
      0024E2 E4               [12] 1338 	clr	a
      0024E3 93               [24] 1339 	movc	a,@a+dptr
      0024E4 FF               [12] 1340 	mov	r7,a
      0024E5 7E 00            [12] 1341 	mov	r6,#0x00
      0024E7 8F 82            [24] 1342 	mov	dpl,r7
      0024E9 8E 83            [24] 1343 	mov	dph,r6
      0024EB 12 20 75         [24] 1344 	lcall	_putchar
                                   1345 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      0024EE 8D 07            [24] 1346 	mov	ar7,r5
      0024F0 53 07 0F         [24] 1347 	anl	ar7,#0x0f
      0024F3 7E 00            [12] 1348 	mov	r6,#0x00
      0024F5 EF               [12] 1349 	mov	a,r7
      0024F6 24 8B            [12] 1350 	add	a,#_digits
      0024F8 F5 82            [12] 1351 	mov	dpl,a
      0024FA EE               [12] 1352 	mov	a,r6
      0024FB 34 2B            [12] 1353 	addc	a,#(_digits >> 8)
      0024FD F5 83            [12] 1354 	mov	dph,a
      0024FF E4               [12] 1355 	clr	a
      002500 93               [24] 1356 	movc	a,@a+dptr
      002501 FF               [12] 1357 	mov	r7,a
      002502 7E 00            [12] 1358 	mov	r6,#0x00
      002504 8F 82            [24] 1359 	mov	dpl,r7
      002506 8E 83            [24] 1360 	mov	dph,r6
      002508 12 20 75         [24] 1361 	lcall	_putchar
                                   1362 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      00250B 8C 06            [24] 1363 	mov	ar6,r4
      00250D ED               [12] 1364 	mov	a,r5
      00250E C4               [12] 1365 	swap	a
      00250F CE               [12] 1366 	xch	a,r6
      002510 C4               [12] 1367 	swap	a
      002511 54 0F            [12] 1368 	anl	a,#0x0f
      002513 6E               [12] 1369 	xrl	a,r6
      002514 CE               [12] 1370 	xch	a,r6
      002515 54 0F            [12] 1371 	anl	a,#0x0f
      002517 CE               [12] 1372 	xch	a,r6
      002518 6E               [12] 1373 	xrl	a,r6
      002519 CE               [12] 1374 	xch	a,r6
      00251A 30 E3 02         [24] 1375 	jnb	acc.3,00380$
      00251D 44 F0            [12] 1376 	orl	a,#0xf0
      00251F                       1377 00380$:
      00251F 53 06 0F         [24] 1378 	anl	ar6,#0x0f
      002522 7F 00            [12] 1379 	mov	r7,#0x00
      002524 EE               [12] 1380 	mov	a,r6
      002525 24 8B            [12] 1381 	add	a,#_digits
      002527 F5 82            [12] 1382 	mov	dpl,a
      002529 EF               [12] 1383 	mov	a,r7
      00252A 34 2B            [12] 1384 	addc	a,#(_digits >> 8)
      00252C F5 83            [12] 1385 	mov	dph,a
      00252E E4               [12] 1386 	clr	a
      00252F 93               [24] 1387 	movc	a,@a+dptr
      002530 FF               [12] 1388 	mov	r7,a
      002531 7E 00            [12] 1389 	mov	r6,#0x00
      002533 8F 82            [24] 1390 	mov	dpl,r7
      002535 8E 83            [24] 1391 	mov	dph,r6
      002537 12 20 75         [24] 1392 	lcall	_putchar
                                   1393 ;	life.c:40: putchar(digits[a & 0xf]);
      00253A 53 04 0F         [24] 1394 	anl	ar4,#0x0f
      00253D 7D 00            [12] 1395 	mov	r5,#0x00
      00253F EC               [12] 1396 	mov	a,r4
      002540 24 8B            [12] 1397 	add	a,#_digits
      002542 F5 82            [12] 1398 	mov	dpl,a
      002544 ED               [12] 1399 	mov	a,r5
      002545 34 2B            [12] 1400 	addc	a,#(_digits >> 8)
      002547 F5 83            [12] 1401 	mov	dph,a
      002549 E4               [12] 1402 	clr	a
      00254A 93               [24] 1403 	movc	a,@a+dptr
      00254B FF               [12] 1404 	mov	r7,a
      00254C 7E 00            [12] 1405 	mov	r6,#0x00
      00254E 8F 82            [24] 1406 	mov	dpl,r7
      002550 8E 83            [24] 1407 	mov	dph,r6
      002552 12 20 75         [24] 1408 	lcall	_putchar
                                   1409 ;	life.c:147: printstr(">\r\n");
      002555 7D AD            [12] 1410 	mov	r5,#___str_3
      002557 7E 2B            [12] 1411 	mov	r6,#(___str_3 >> 8)
      002559 7F 80            [12] 1412 	mov	r7,#0x80
                                   1413 ;	life.c:48: return;
      00255B                       1414 00164$:
                                   1415 ;	life.c:46: for (; *s; s++) putchar(*s);
      00255B 8D 82            [24] 1416 	mov	dpl,r5
      00255D 8E 83            [24] 1417 	mov	dph,r6
      00255F 8F F0            [24] 1418 	mov	b,r7
      002561 12 2A 63         [24] 1419 	lcall	__gptrget
      002564 FC               [12] 1420 	mov	r4,a
      002565 60 10            [24] 1421 	jz	00133$
      002567 7B 00            [12] 1422 	mov	r3,#0x00
      002569 8C 82            [24] 1423 	mov	dpl,r4
      00256B 8B 83            [24] 1424 	mov	dph,r3
      00256D 12 20 75         [24] 1425 	lcall	_putchar
      002570 0D               [12] 1426 	inc	r5
                                   1427 ;	life.c:147: printstr(">\r\n");
      002571 BD 00 E7         [24] 1428 	cjne	r5,#0x00,00164$
      002574 0E               [12] 1429 	inc	r6
      002575 80 E4            [24] 1430 	sjmp	00164$
      002577                       1431 00133$:
                                   1432 ;	life.c:194: show(0);
      002577 75 82 00         [24] 1433 	mov	dpl,#0x00
      00257A 12 20 A9         [24] 1434 	lcall	_show
                                   1435 ;	life.c:196: printstr("RDY\r\n");
      00257D 7D BF            [12] 1436 	mov	r5,#___str_5
      00257F 7E 2B            [12] 1437 	mov	r6,#(___str_5 >> 8)
      002581 7F 80            [12] 1438 	mov	r7,#0x80
                                   1439 ;	life.c:48: return;
      002583                       1440 00167$:
                                   1441 ;	life.c:46: for (; *s; s++) putchar(*s);
      002583 8D 82            [24] 1442 	mov	dpl,r5
      002585 8E 83            [24] 1443 	mov	dph,r6
      002587 8F F0            [24] 1444 	mov	b,r7
      002589 12 2A 63         [24] 1445 	lcall	__gptrget
      00258C FC               [12] 1446 	mov	r4,a
      00258D 60 10            [24] 1447 	jz	00136$
      00258F 7B 00            [12] 1448 	mov	r3,#0x00
      002591 8C 82            [24] 1449 	mov	dpl,r4
      002593 8B 83            [24] 1450 	mov	dph,r3
      002595 12 20 75         [24] 1451 	lcall	_putchar
      002598 0D               [12] 1452 	inc	r5
                                   1453 ;	life.c:196: printstr("RDY\r\n");
      002599 BD 00 E7         [24] 1454 	cjne	r5,#0x00,00167$
      00259C 0E               [12] 1455 	inc	r6
      00259D 80 E4            [24] 1456 	sjmp	00167$
      00259F                       1457 00136$:
                                   1458 ;	life.c:197: (void)getchar();
      00259F 12 20 7A         [24] 1459 	lcall	_getchar
                                   1460 ;	life.c:75: generation[0] = 0;
      0025A2 90 8C 12         [24] 1461 	mov	dptr,#_generation
      0025A5 E4               [12] 1462 	clr	a
      0025A6 F0               [24] 1463 	movx	@dptr,a
      0025A7 A3               [24] 1464 	inc	dptr
      0025A8 F0               [24] 1465 	movx	@dptr,a
                                   1466 ;	life.c:76: generation[1] = 0;
      0025A9 90 8C 14         [24] 1467 	mov	dptr,#(_generation + 0x0002)
      0025AC F0               [24] 1468 	movx	@dptr,a
      0025AD A3               [24] 1469 	inc	dptr
      0025AE F0               [24] 1470 	movx	@dptr,a
                                   1471 ;	life.c:201: for (i1 = 0; !i0 && !i1; ) {
      0025AF 90 80 01         [24] 1472 	mov	dptr,#_i1
      0025B2 F0               [24] 1473 	movx	@dptr,a
      0025B3                       1474 00184$:
      0025B3 90 80 00         [24] 1475 	mov	dptr,#_i0
      0025B6 E0               [24] 1476 	movx	a,@dptr
      0025B7 60 03            [24] 1477 	jz	00385$
      0025B9 02 28 FE         [24] 1478 	ljmp	00104$
      0025BC                       1479 00385$:
      0025BC 90 80 01         [24] 1480 	mov	dptr,#_i1
      0025BF E0               [24] 1481 	movx	a,@dptr
      0025C0 60 03            [24] 1482 	jz	00386$
      0025C2 02 28 FE         [24] 1483 	ljmp	00104$
      0025C5                       1484 00386$:
                                   1485 ;	life.c:202: show(1);
      0025C5 75 82 01         [24] 1486 	mov	dpl,#0x01
      0025C8 12 20 A9         [24] 1487 	lcall	_show
                                   1488 ;	life.c:155: fixed = 1;
      0025CB 90 8C 10         [24] 1489 	mov	dptr,#_fixed
      0025CE 74 01            [12] 1490 	mov	a,#0x01
      0025D0 F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	life.c:156: cycle2 = 1;
      0025D1 90 8C 11         [24] 1493 	mov	dptr,#_cycle2
      0025D4 F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	life.c:157: bstep = 0;
      0025D5 90 8C 0E         [24] 1496 	mov	dptr,#_bstep
      0025D8 E4               [12] 1497 	clr	a
      0025D9 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	life.c:159: for (y = 0; y < H; y++) {
      0025DA 90 8C 04         [24] 1500 	mov	dptr,#_y
      0025DD F0               [24] 1501 	movx	@dptr,a
      0025DE A3               [24] 1502 	inc	dptr
      0025DF F0               [24] 1503 	movx	@dptr,a
      0025E0                       1504 00177$:
                                   1505 ;	life.c:160: putchar(busy[bstep]); putchar('\r');
      0025E0 90 8C 0E         [24] 1506 	mov	dptr,#_bstep
      0025E3 E0               [24] 1507 	movx	a,@dptr
      0025E4 90 29 62         [24] 1508 	mov	dptr,#_busy
      0025E7 93               [24] 1509 	movc	a,@a+dptr
      0025E8 FF               [12] 1510 	mov	r7,a
      0025E9 7E 00            [12] 1511 	mov	r6,#0x00
      0025EB 8F 82            [24] 1512 	mov	dpl,r7
      0025ED 8E 83            [24] 1513 	mov	dph,r6
      0025EF 12 20 75         [24] 1514 	lcall	_putchar
      0025F2 90 00 0D         [24] 1515 	mov	dptr,#0x000d
      0025F5 12 20 75         [24] 1516 	lcall	_putchar
                                   1517 ;	life.c:161: bstep = (bstep + 1) & 3;
      0025F8 90 8C 0E         [24] 1518 	mov	dptr,#_bstep
      0025FB E0               [24] 1519 	movx	a,@dptr
      0025FC FF               [12] 1520 	mov	r7,a
      0025FD 0F               [12] 1521 	inc	r7
      0025FE 74 03            [12] 1522 	mov	a,#0x03
      002600 5F               [12] 1523 	anl	a,r7
      002601 F0               [24] 1524 	movx	@dptr,a
                                   1525 ;	life.c:162: for (x = 0; x < W; x++) {
      002602 90 8C 02         [24] 1526 	mov	dptr,#_x
      002605 E4               [12] 1527 	clr	a
      002606 F0               [24] 1528 	movx	@dptr,a
      002607 A3               [24] 1529 	inc	dptr
      002608 F0               [24] 1530 	movx	@dptr,a
      002609                       1531 00175$:
                                   1532 ;	life.c:163: n = -u[A2D(W, y, x)];
      002609 90 8C 04         [24] 1533 	mov	dptr,#_y
      00260C E0               [24] 1534 	movx	a,@dptr
      00260D FE               [12] 1535 	mov	r6,a
      00260E A3               [24] 1536 	inc	dptr
      00260F E0               [24] 1537 	movx	a,@dptr
      002610 FF               [12] 1538 	mov	r7,a
      002611 8E 04            [24] 1539 	mov	ar4,r6
      002613 C4               [12] 1540 	swap	a
      002614 23               [12] 1541 	rl	a
      002615 54 E0            [12] 1542 	anl	a,#0xe0
      002617 CC               [12] 1543 	xch	a,r4
      002618 C4               [12] 1544 	swap	a
      002619 23               [12] 1545 	rl	a
      00261A CC               [12] 1546 	xch	a,r4
      00261B 6C               [12] 1547 	xrl	a,r4
      00261C CC               [12] 1548 	xch	a,r4
      00261D 54 E0            [12] 1549 	anl	a,#0xe0
      00261F CC               [12] 1550 	xch	a,r4
      002620 6C               [12] 1551 	xrl	a,r4
      002621 FD               [12] 1552 	mov	r5,a
      002622 90 8C 02         [24] 1553 	mov	dptr,#_x
      002625 E0               [24] 1554 	movx	a,@dptr
      002626 FA               [12] 1555 	mov	r2,a
      002627 A3               [24] 1556 	inc	dptr
      002628 E0               [24] 1557 	movx	a,@dptr
      002629 FB               [12] 1558 	mov	r3,a
      00262A EA               [12] 1559 	mov	a,r2
      00262B 2C               [12] 1560 	add	a,r4
      00262C FC               [12] 1561 	mov	r4,a
      00262D EB               [12] 1562 	mov	a,r3
      00262E 3D               [12] 1563 	addc	a,r5
      00262F FD               [12] 1564 	mov	r5,a
      002630 EC               [12] 1565 	mov	a,r4
      002631 24 02            [12] 1566 	add	a,#_u
      002633 F5 82            [12] 1567 	mov	dpl,a
      002635 ED               [12] 1568 	mov	a,r5
      002636 34 84            [12] 1569 	addc	a,#(_u >> 8)
      002638 F5 83            [12] 1570 	mov	dph,a
      00263A E0               [24] 1571 	movx	a,@dptr
      00263B FD               [12] 1572 	mov	r5,a
      00263C 90 8C 0F         [24] 1573 	mov	dptr,#_n
      00263F C3               [12] 1574 	clr	c
      002640 E4               [12] 1575 	clr	a
      002641 9D               [12] 1576 	subb	a,r5
      002642 F0               [24] 1577 	movx	@dptr,a
                                   1578 ;	life.c:164: for (y1 = y - 1; y1 <= y + 1; y1++)
      002643 1E               [12] 1579 	dec	r6
      002644 BE FF 01         [24] 1580 	cjne	r6,#0xff,00387$
      002647 1F               [12] 1581 	dec	r7
      002648                       1582 00387$:
      002648 90 8C 08         [24] 1583 	mov	dptr,#_y1
      00264B EE               [12] 1584 	mov	a,r6
      00264C F0               [24] 1585 	movx	@dptr,a
      00264D EF               [12] 1586 	mov	a,r7
      00264E A3               [24] 1587 	inc	dptr
      00264F F0               [24] 1588 	movx	@dptr,a
      002650                       1589 00173$:
      002650 90 8C 04         [24] 1590 	mov	dptr,#_y
      002653 E0               [24] 1591 	movx	a,@dptr
      002654 FE               [12] 1592 	mov	r6,a
      002655 A3               [24] 1593 	inc	dptr
      002656 E0               [24] 1594 	movx	a,@dptr
      002657 FF               [12] 1595 	mov	r7,a
      002658 74 01            [12] 1596 	mov	a,#0x01
      00265A 2E               [12] 1597 	add	a,r6
      00265B FC               [12] 1598 	mov	r4,a
      00265C E4               [12] 1599 	clr	a
      00265D 3F               [12] 1600 	addc	a,r7
      00265E FD               [12] 1601 	mov	r5,a
      00265F 90 8C 08         [24] 1602 	mov	dptr,#_y1
      002662 E0               [24] 1603 	movx	a,@dptr
      002663 FA               [12] 1604 	mov	r2,a
      002664 A3               [24] 1605 	inc	dptr
      002665 E0               [24] 1606 	movx	a,@dptr
      002666 FB               [12] 1607 	mov	r3,a
      002667 C3               [12] 1608 	clr	c
      002668 EC               [12] 1609 	mov	a,r4
      002669 9A               [12] 1610 	subb	a,r2
      00266A ED               [12] 1611 	mov	a,r5
      00266B 64 80            [12] 1612 	xrl	a,#0x80
      00266D 8B F0            [24] 1613 	mov	b,r3
      00266F 63 F0 80         [24] 1614 	xrl	b,#0x80
      002672 95 F0            [12] 1615 	subb	a,b
      002674 50 03            [24] 1616 	jnc	00388$
      002676 02 27 56         [24] 1617 	ljmp	00139$
      002679                       1618 00388$:
                                   1619 ;	life.c:165: for (x1 = x - 1; x1 <= x + 1; x1++)
      002679 90 8C 02         [24] 1620 	mov	dptr,#_x
      00267C E0               [24] 1621 	movx	a,@dptr
      00267D FC               [12] 1622 	mov	r4,a
      00267E A3               [24] 1623 	inc	dptr
      00267F E0               [24] 1624 	movx	a,@dptr
      002680 FD               [12] 1625 	mov	r5,a
      002681 1C               [12] 1626 	dec	r4
      002682 BC FF 01         [24] 1627 	cjne	r4,#0xff,00389$
      002685 1D               [12] 1628 	dec	r5
      002686                       1629 00389$:
      002686 90 8C 06         [24] 1630 	mov	dptr,#_x1
      002689 EC               [12] 1631 	mov	a,r4
      00268A F0               [24] 1632 	movx	@dptr,a
      00268B ED               [12] 1633 	mov	a,r5
      00268C A3               [24] 1634 	inc	dptr
      00268D F0               [24] 1635 	movx	@dptr,a
      00268E                       1636 00170$:
      00268E 90 8C 02         [24] 1637 	mov	dptr,#_x
      002691 E0               [24] 1638 	movx	a,@dptr
      002692 FC               [12] 1639 	mov	r4,a
      002693 A3               [24] 1640 	inc	dptr
      002694 E0               [24] 1641 	movx	a,@dptr
      002695 FD               [12] 1642 	mov	r5,a
      002696 0C               [12] 1643 	inc	r4
      002697 BC 00 01         [24] 1644 	cjne	r4,#0x00,00390$
      00269A 0D               [12] 1645 	inc	r5
      00269B                       1646 00390$:
      00269B 90 8C 06         [24] 1647 	mov	dptr,#_x1
      00269E E0               [24] 1648 	movx	a,@dptr
      00269F FA               [12] 1649 	mov	r2,a
      0026A0 A3               [24] 1650 	inc	dptr
      0026A1 E0               [24] 1651 	movx	a,@dptr
      0026A2 FB               [12] 1652 	mov	r3,a
      0026A3 C3               [12] 1653 	clr	c
      0026A4 EC               [12] 1654 	mov	a,r4
      0026A5 9A               [12] 1655 	subb	a,r2
      0026A6 ED               [12] 1656 	mov	a,r5
      0026A7 64 80            [12] 1657 	xrl	a,#0x80
      0026A9 8B F0            [24] 1658 	mov	b,r3
      0026AB 63 F0 80         [24] 1659 	xrl	b,#0x80
      0026AE 95 F0            [12] 1660 	subb	a,b
      0026B0 50 03            [24] 1661 	jnc	00391$
      0026B2 02 27 47         [24] 1662 	ljmp	00174$
      0026B5                       1663 00391$:
                                   1664 ;	life.c:166: n += u[A2D(W, (y1 + H) % H, (x1 + W) % W)];
      0026B5 90 8C 08         [24] 1665 	mov	dptr,#_y1
      0026B8 E0               [24] 1666 	movx	a,@dptr
      0026B9 FC               [12] 1667 	mov	r4,a
      0026BA A3               [24] 1668 	inc	dptr
      0026BB E0               [24] 1669 	movx	a,@dptr
      0026BC FD               [12] 1670 	mov	r5,a
      0026BD 74 20            [12] 1671 	mov	a,#0x20
      0026BF 2C               [12] 1672 	add	a,r4
      0026C0 FC               [12] 1673 	mov	r4,a
      0026C1 E4               [12] 1674 	clr	a
      0026C2 3D               [12] 1675 	addc	a,r5
      0026C3 FD               [12] 1676 	mov	r5,a
      0026C4 C0 03            [24] 1677 	push	ar3
      0026C6 C0 02            [24] 1678 	push	ar2
      0026C8 74 20            [12] 1679 	mov	a,#0x20
      0026CA C0 E0            [24] 1680 	push	acc
      0026CC E4               [12] 1681 	clr	a
      0026CD C0 E0            [24] 1682 	push	acc
      0026CF 8C 82            [24] 1683 	mov	dpl,r4
      0026D1 8D 83            [24] 1684 	mov	dph,r5
      0026D3 12 2A 7F         [24] 1685 	lcall	__modsint
      0026D6 AC 82            [24] 1686 	mov	r4,dpl
      0026D8 AD 83            [24] 1687 	mov	r5,dph
      0026DA 15 81            [12] 1688 	dec	sp
      0026DC 15 81            [12] 1689 	dec	sp
      0026DE D0 02            [24] 1690 	pop	ar2
      0026E0 D0 03            [24] 1691 	pop	ar3
      0026E2 8C 07            [24] 1692 	mov	ar7,r4
      0026E4 ED               [12] 1693 	mov	a,r5
      0026E5 C4               [12] 1694 	swap	a
      0026E6 23               [12] 1695 	rl	a
      0026E7 54 E0            [12] 1696 	anl	a,#0xe0
      0026E9 CF               [12] 1697 	xch	a,r7
      0026EA C4               [12] 1698 	swap	a
      0026EB 23               [12] 1699 	rl	a
      0026EC CF               [12] 1700 	xch	a,r7
      0026ED 6F               [12] 1701 	xrl	a,r7
      0026EE CF               [12] 1702 	xch	a,r7
      0026EF 54 E0            [12] 1703 	anl	a,#0xe0
      0026F1 CF               [12] 1704 	xch	a,r7
      0026F2 6F               [12] 1705 	xrl	a,r7
      0026F3 FE               [12] 1706 	mov	r6,a
      0026F4 74 20            [12] 1707 	mov	a,#0x20
      0026F6 2A               [12] 1708 	add	a,r2
      0026F7 FC               [12] 1709 	mov	r4,a
      0026F8 E4               [12] 1710 	clr	a
      0026F9 3B               [12] 1711 	addc	a,r3
      0026FA FD               [12] 1712 	mov	r5,a
      0026FB C0 07            [24] 1713 	push	ar7
      0026FD C0 06            [24] 1714 	push	ar6
      0026FF C0 03            [24] 1715 	push	ar3
      002701 C0 02            [24] 1716 	push	ar2
      002703 74 20            [12] 1717 	mov	a,#0x20
      002705 C0 E0            [24] 1718 	push	acc
      002707 E4               [12] 1719 	clr	a
      002708 C0 E0            [24] 1720 	push	acc
      00270A 8C 82            [24] 1721 	mov	dpl,r4
      00270C 8D 83            [24] 1722 	mov	dph,r5
      00270E 12 2A 7F         [24] 1723 	lcall	__modsint
      002711 AC 82            [24] 1724 	mov	r4,dpl
      002713 AD 83            [24] 1725 	mov	r5,dph
      002715 15 81            [12] 1726 	dec	sp
      002717 15 81            [12] 1727 	dec	sp
      002719 D0 02            [24] 1728 	pop	ar2
      00271B D0 03            [24] 1729 	pop	ar3
      00271D D0 06            [24] 1730 	pop	ar6
      00271F D0 07            [24] 1731 	pop	ar7
      002721 EC               [12] 1732 	mov	a,r4
      002722 2F               [12] 1733 	add	a,r7
      002723 FC               [12] 1734 	mov	r4,a
      002724 ED               [12] 1735 	mov	a,r5
      002725 3E               [12] 1736 	addc	a,r6
      002726 FD               [12] 1737 	mov	r5,a
      002727 EC               [12] 1738 	mov	a,r4
      002728 24 02            [12] 1739 	add	a,#_u
      00272A F5 82            [12] 1740 	mov	dpl,a
      00272C ED               [12] 1741 	mov	a,r5
      00272D 34 84            [12] 1742 	addc	a,#(_u >> 8)
      00272F F5 83            [12] 1743 	mov	dph,a
      002731 E0               [24] 1744 	movx	a,@dptr
      002732 FD               [12] 1745 	mov	r5,a
      002733 90 8C 0F         [24] 1746 	mov	dptr,#_n
      002736 E0               [24] 1747 	movx	a,@dptr
      002737 2D               [12] 1748 	add	a,r5
      002738 F0               [24] 1749 	movx	@dptr,a
                                   1750 ;	life.c:165: for (x1 = x - 1; x1 <= x + 1; x1++)
      002739 90 8C 06         [24] 1751 	mov	dptr,#_x1
      00273C 74 01            [12] 1752 	mov	a,#0x01
      00273E 2A               [12] 1753 	add	a,r2
      00273F F0               [24] 1754 	movx	@dptr,a
      002740 E4               [12] 1755 	clr	a
      002741 3B               [12] 1756 	addc	a,r3
      002742 A3               [24] 1757 	inc	dptr
      002743 F0               [24] 1758 	movx	@dptr,a
      002744 02 26 8E         [24] 1759 	ljmp	00170$
      002747                       1760 00174$:
                                   1761 ;	life.c:164: for (y1 = y - 1; y1 <= y + 1; y1++)
      002747 90 8C 08         [24] 1762 	mov	dptr,#_y1
      00274A E0               [24] 1763 	movx	a,@dptr
      00274B 24 01            [12] 1764 	add	a,#0x01
      00274D F0               [24] 1765 	movx	@dptr,a
      00274E A3               [24] 1766 	inc	dptr
      00274F E0               [24] 1767 	movx	a,@dptr
      002750 34 00            [12] 1768 	addc	a,#0x00
      002752 F0               [24] 1769 	movx	@dptr,a
      002753 02 26 50         [24] 1770 	ljmp	00173$
      002756                       1771 00139$:
                                   1772 ;	life.c:168: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002756 EF               [12] 1773 	mov	a,r7
      002757 C4               [12] 1774 	swap	a
      002758 23               [12] 1775 	rl	a
      002759 54 E0            [12] 1776 	anl	a,#0xe0
      00275B CE               [12] 1777 	xch	a,r6
      00275C C4               [12] 1778 	swap	a
      00275D 23               [12] 1779 	rl	a
      00275E CE               [12] 1780 	xch	a,r6
      00275F 6E               [12] 1781 	xrl	a,r6
      002760 CE               [12] 1782 	xch	a,r6
      002761 54 E0            [12] 1783 	anl	a,#0xe0
      002763 CE               [12] 1784 	xch	a,r6
      002764 6E               [12] 1785 	xrl	a,r6
      002765 FF               [12] 1786 	mov	r7,a
      002766 90 8C 02         [24] 1787 	mov	dptr,#_x
      002769 E0               [24] 1788 	movx	a,@dptr
      00276A FC               [12] 1789 	mov	r4,a
      00276B A3               [24] 1790 	inc	dptr
      00276C E0               [24] 1791 	movx	a,@dptr
      00276D FD               [12] 1792 	mov	r5,a
      00276E EC               [12] 1793 	mov	a,r4
      00276F 2E               [12] 1794 	add	a,r6
      002770 FA               [12] 1795 	mov	r2,a
      002771 ED               [12] 1796 	mov	a,r5
      002772 3F               [12] 1797 	addc	a,r7
      002773 FB               [12] 1798 	mov	r3,a
      002774 EA               [12] 1799 	mov	a,r2
      002775 24 02            [12] 1800 	add	a,#_nu
      002777 FA               [12] 1801 	mov	r2,a
      002778 EB               [12] 1802 	mov	a,r3
      002779 34 88            [12] 1803 	addc	a,#(_nu >> 8)
      00277B FB               [12] 1804 	mov	r3,a
      00277C 90 8C 0F         [24] 1805 	mov	dptr,#_n
      00277F A8 10            [24] 1806 	mov	r0,_bp
      002781 08               [12] 1807 	inc	r0
      002782 E0               [24] 1808 	movx	a,@dptr
      002783 F6               [12] 1809 	mov	@r0,a
      002784 A8 10            [24] 1810 	mov	r0,_bp
      002786 08               [12] 1811 	inc	r0
      002787 B6 03 02         [24] 1812 	cjne	@r0,#0x03,00392$
      00278A 80 1F            [24] 1813 	sjmp	00197$
      00278C                       1814 00392$:
      00278C A8 10            [24] 1815 	mov	r0,_bp
      00278E 08               [12] 1816 	inc	r0
      00278F B6 02 15         [24] 1817 	cjne	@r0,#0x02,00196$
      002792 EC               [12] 1818 	mov	a,r4
      002793 2E               [12] 1819 	add	a,r6
      002794 FE               [12] 1820 	mov	r6,a
      002795 ED               [12] 1821 	mov	a,r5
      002796 3F               [12] 1822 	addc	a,r7
      002797 FF               [12] 1823 	mov	r7,a
      002798 EE               [12] 1824 	mov	a,r6
      002799 24 02            [12] 1825 	add	a,#_u
      00279B FE               [12] 1826 	mov	r6,a
      00279C EF               [12] 1827 	mov	a,r7
      00279D 34 84            [12] 1828 	addc	a,#(_u >> 8)
      00279F FF               [12] 1829 	mov	r7,a
      0027A0 8E 82            [24] 1830 	mov	dpl,r6
      0027A2 8F 83            [24] 1831 	mov	dph,r7
      0027A4 E0               [24] 1832 	movx	a,@dptr
      0027A5 70 04            [24] 1833 	jnz	00197$
      0027A7                       1834 00196$:
                                   1835 ;	assignBit
      0027A7 C2 00            [12] 1836 	clr	b0
      0027A9 80 02            [24] 1837 	sjmp	00198$
      0027AB                       1838 00197$:
                                   1839 ;	assignBit
      0027AB D2 00            [12] 1840 	setb	b0
      0027AD                       1841 00198$:
      0027AD A2 00            [12] 1842 	mov	c,b0
      0027AF E4               [12] 1843 	clr	a
      0027B0 33               [12] 1844 	rlc	a
      0027B1 8A 82            [24] 1845 	mov	dpl,r2
      0027B3 8B 83            [24] 1846 	mov	dph,r3
      0027B5 F0               [24] 1847 	movx	@dptr,a
                                   1848 ;	life.c:170: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      0027B6 90 8C 04         [24] 1849 	mov	dptr,#_y
      0027B9 E0               [24] 1850 	movx	a,@dptr
      0027BA FE               [12] 1851 	mov	r6,a
      0027BB A3               [24] 1852 	inc	dptr
      0027BC E0               [24] 1853 	movx	a,@dptr
      0027BD C4               [12] 1854 	swap	a
      0027BE 23               [12] 1855 	rl	a
      0027BF 54 E0            [12] 1856 	anl	a,#0xe0
      0027C1 CE               [12] 1857 	xch	a,r6
      0027C2 C4               [12] 1858 	swap	a
      0027C3 23               [12] 1859 	rl	a
      0027C4 CE               [12] 1860 	xch	a,r6
      0027C5 6E               [12] 1861 	xrl	a,r6
      0027C6 CE               [12] 1862 	xch	a,r6
      0027C7 54 E0            [12] 1863 	anl	a,#0xe0
      0027C9 CE               [12] 1864 	xch	a,r6
      0027CA 6E               [12] 1865 	xrl	a,r6
      0027CB FF               [12] 1866 	mov	r7,a
      0027CC 90 8C 02         [24] 1867 	mov	dptr,#_x
      0027CF E0               [24] 1868 	movx	a,@dptr
      0027D0 FC               [12] 1869 	mov	r4,a
      0027D1 A3               [24] 1870 	inc	dptr
      0027D2 E0               [24] 1871 	movx	a,@dptr
      0027D3 FD               [12] 1872 	mov	r5,a
      0027D4 EC               [12] 1873 	mov	a,r4
      0027D5 2E               [12] 1874 	add	a,r6
      0027D6 FE               [12] 1875 	mov	r6,a
      0027D7 ED               [12] 1876 	mov	a,r5
      0027D8 3F               [12] 1877 	addc	a,r7
      0027D9 FF               [12] 1878 	mov	r7,a
      0027DA EE               [12] 1879 	mov	a,r6
      0027DB 24 02            [12] 1880 	add	a,#_pu
      0027DD F5 82            [12] 1881 	mov	dpl,a
      0027DF EF               [12] 1882 	mov	a,r7
      0027E0 34 80            [12] 1883 	addc	a,#(_pu >> 8)
      0027E2 F5 83            [12] 1884 	mov	dph,a
      0027E4 E0               [24] 1885 	movx	a,@dptr
      0027E5 FD               [12] 1886 	mov	r5,a
      0027E6 EE               [12] 1887 	mov	a,r6
      0027E7 24 02            [12] 1888 	add	a,#_nu
      0027E9 F5 82            [12] 1889 	mov	dpl,a
      0027EB EF               [12] 1890 	mov	a,r7
      0027EC 34 88            [12] 1891 	addc	a,#(_nu >> 8)
      0027EE F5 83            [12] 1892 	mov	dph,a
      0027F0 E0               [24] 1893 	movx	a,@dptr
      0027F1 FF               [12] 1894 	mov	r7,a
      0027F2 ED               [12] 1895 	mov	a,r5
      0027F3 B5 07 02         [24] 1896 	cjne	a,ar7,00396$
      0027F6 80 05            [24] 1897 	sjmp	00141$
      0027F8                       1898 00396$:
      0027F8 90 8C 11         [24] 1899 	mov	dptr,#_cycle2
      0027FB E4               [12] 1900 	clr	a
      0027FC F0               [24] 1901 	movx	@dptr,a
      0027FD                       1902 00141$:
                                   1903 ;	life.c:171: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      0027FD 90 8C 04         [24] 1904 	mov	dptr,#_y
      002800 E0               [24] 1905 	movx	a,@dptr
      002801 FE               [12] 1906 	mov	r6,a
      002802 A3               [24] 1907 	inc	dptr
      002803 E0               [24] 1908 	movx	a,@dptr
      002804 C4               [12] 1909 	swap	a
      002805 23               [12] 1910 	rl	a
      002806 54 E0            [12] 1911 	anl	a,#0xe0
      002808 CE               [12] 1912 	xch	a,r6
      002809 C4               [12] 1913 	swap	a
      00280A 23               [12] 1914 	rl	a
      00280B CE               [12] 1915 	xch	a,r6
      00280C 6E               [12] 1916 	xrl	a,r6
      00280D CE               [12] 1917 	xch	a,r6
      00280E 54 E0            [12] 1918 	anl	a,#0xe0
      002810 CE               [12] 1919 	xch	a,r6
      002811 6E               [12] 1920 	xrl	a,r6
      002812 FF               [12] 1921 	mov	r7,a
      002813 90 8C 02         [24] 1922 	mov	dptr,#_x
      002816 E0               [24] 1923 	movx	a,@dptr
      002817 FC               [12] 1924 	mov	r4,a
      002818 A3               [24] 1925 	inc	dptr
      002819 E0               [24] 1926 	movx	a,@dptr
      00281A FD               [12] 1927 	mov	r5,a
      00281B EC               [12] 1928 	mov	a,r4
      00281C 2E               [12] 1929 	add	a,r6
      00281D FE               [12] 1930 	mov	r6,a
      00281E ED               [12] 1931 	mov	a,r5
      00281F 3F               [12] 1932 	addc	a,r7
      002820 FF               [12] 1933 	mov	r7,a
      002821 EE               [12] 1934 	mov	a,r6
      002822 24 02            [12] 1935 	add	a,#_u
      002824 F5 82            [12] 1936 	mov	dpl,a
      002826 EF               [12] 1937 	mov	a,r7
      002827 34 84            [12] 1938 	addc	a,#(_u >> 8)
      002829 F5 83            [12] 1939 	mov	dph,a
      00282B E0               [24] 1940 	movx	a,@dptr
      00282C FD               [12] 1941 	mov	r5,a
      00282D EE               [12] 1942 	mov	a,r6
      00282E 24 02            [12] 1943 	add	a,#_nu
      002830 F5 82            [12] 1944 	mov	dpl,a
      002832 EF               [12] 1945 	mov	a,r7
      002833 34 88            [12] 1946 	addc	a,#(_nu >> 8)
      002835 F5 83            [12] 1947 	mov	dph,a
      002837 E0               [24] 1948 	movx	a,@dptr
      002838 FF               [12] 1949 	mov	r7,a
      002839 ED               [12] 1950 	mov	a,r5
      00283A B5 07 02         [24] 1951 	cjne	a,ar7,00397$
      00283D 80 05            [24] 1952 	sjmp	00176$
      00283F                       1953 00397$:
      00283F 90 8C 10         [24] 1954 	mov	dptr,#_fixed
      002842 E4               [12] 1955 	clr	a
      002843 F0               [24] 1956 	movx	@dptr,a
      002844                       1957 00176$:
                                   1958 ;	life.c:162: for (x = 0; x < W; x++) {
      002844 90 8C 02         [24] 1959 	mov	dptr,#_x
      002847 E0               [24] 1960 	movx	a,@dptr
      002848 24 01            [12] 1961 	add	a,#0x01
      00284A F0               [24] 1962 	movx	@dptr,a
      00284B A3               [24] 1963 	inc	dptr
      00284C E0               [24] 1964 	movx	a,@dptr
      00284D 34 00            [12] 1965 	addc	a,#0x00
      00284F F0               [24] 1966 	movx	@dptr,a
      002850 90 8C 02         [24] 1967 	mov	dptr,#_x
      002853 E0               [24] 1968 	movx	a,@dptr
      002854 FE               [12] 1969 	mov	r6,a
      002855 A3               [24] 1970 	inc	dptr
      002856 E0               [24] 1971 	movx	a,@dptr
      002857 FF               [12] 1972 	mov	r7,a
      002858 C3               [12] 1973 	clr	c
      002859 EE               [12] 1974 	mov	a,r6
      00285A 94 20            [12] 1975 	subb	a,#0x20
      00285C EF               [12] 1976 	mov	a,r7
      00285D 64 80            [12] 1977 	xrl	a,#0x80
      00285F 94 80            [12] 1978 	subb	a,#0x80
      002861 50 03            [24] 1979 	jnc	00398$
      002863 02 26 09         [24] 1980 	ljmp	00175$
      002866                       1981 00398$:
                                   1982 ;	life.c:159: for (y = 0; y < H; y++) {
      002866 90 8C 04         [24] 1983 	mov	dptr,#_y
      002869 E0               [24] 1984 	movx	a,@dptr
      00286A 24 01            [12] 1985 	add	a,#0x01
      00286C F0               [24] 1986 	movx	@dptr,a
      00286D A3               [24] 1987 	inc	dptr
      00286E E0               [24] 1988 	movx	a,@dptr
      00286F 34 00            [12] 1989 	addc	a,#0x00
      002871 F0               [24] 1990 	movx	@dptr,a
      002872 90 8C 04         [24] 1991 	mov	dptr,#_y
      002875 E0               [24] 1992 	movx	a,@dptr
      002876 FE               [12] 1993 	mov	r6,a
      002877 A3               [24] 1994 	inc	dptr
      002878 E0               [24] 1995 	movx	a,@dptr
      002879 FF               [12] 1996 	mov	r7,a
      00287A C3               [12] 1997 	clr	c
      00287B EE               [12] 1998 	mov	a,r6
      00287C 94 20            [12] 1999 	subb	a,#0x20
      00287E EF               [12] 2000 	mov	a,r7
      00287F 64 80            [12] 2001 	xrl	a,#0x80
      002881 94 80            [12] 2002 	subb	a,#0x80
      002883 50 03            [24] 2003 	jnc	00399$
      002885 02 25 E0         [24] 2004 	ljmp	00177$
      002888                       2005 00399$:
                                   2006 ;	life.c:175: memcpy(pu, u, sizeof (u));
      002888 E4               [12] 2007 	clr	a
      002889 C0 E0            [24] 2008 	push	acc
      00288B 74 04            [12] 2009 	mov	a,#0x04
      00288D C0 E0            [24] 2010 	push	acc
      00288F 74 02            [12] 2011 	mov	a,#_u
      002891 C0 E0            [24] 2012 	push	acc
      002893 74 84            [12] 2013 	mov	a,#(_u >> 8)
      002895 C0 E0            [24] 2014 	push	acc
      002897 E4               [12] 2015 	clr	a
      002898 C0 E0            [24] 2016 	push	acc
      00289A 90 80 02         [24] 2017 	mov	dptr,#_pu
      00289D 75 F0 00         [24] 2018 	mov	b,#0x00
      0028A0 12 29 66         [24] 2019 	lcall	___memcpy
      0028A3 E5 81            [12] 2020 	mov	a,sp
      0028A5 24 FB            [12] 2021 	add	a,#0xfb
      0028A7 F5 81            [12] 2022 	mov	sp,a
                                   2023 ;	life.c:176: memcpy(u, nu, sizeof (nu));
      0028A9 E4               [12] 2024 	clr	a
      0028AA C0 E0            [24] 2025 	push	acc
      0028AC 74 04            [12] 2026 	mov	a,#0x04
      0028AE C0 E0            [24] 2027 	push	acc
      0028B0 74 02            [12] 2028 	mov	a,#_nu
      0028B2 C0 E0            [24] 2029 	push	acc
      0028B4 74 88            [12] 2030 	mov	a,#(_nu >> 8)
      0028B6 C0 E0            [24] 2031 	push	acc
      0028B8 E4               [12] 2032 	clr	a
      0028B9 C0 E0            [24] 2033 	push	acc
      0028BB 90 84 02         [24] 2034 	mov	dptr,#_u
      0028BE 75 F0 00         [24] 2035 	mov	b,#0x00
      0028C1 12 29 66         [24] 2036 	lcall	___memcpy
      0028C4 E5 81            [12] 2037 	mov	a,sp
      0028C6 24 FB            [12] 2038 	add	a,#0xfb
      0028C8 F5 81            [12] 2039 	mov	sp,a
                                   2040 ;	life.c:204: if (fixed || cycle2) {
      0028CA 90 8C 10         [24] 2041 	mov	dptr,#_fixed
      0028CD E0               [24] 2042 	movx	a,@dptr
      0028CE 70 09            [24] 2043 	jnz	00101$
      0028D0 90 8C 11         [24] 2044 	mov	dptr,#_cycle2
      0028D3 E0               [24] 2045 	movx	a,@dptr
      0028D4 70 03            [24] 2046 	jnz	00401$
      0028D6 02 25 B3         [24] 2047 	ljmp	00184$
      0028D9                       2048 00401$:
      0028D9                       2049 00101$:
                                   2050 ;	life.c:205: printstr("DONE\r\n");
      0028D9 7D C5            [12] 2051 	mov	r5,#___str_6
      0028DB 7E 2B            [12] 2052 	mov	r6,#(___str_6 >> 8)
      0028DD 7F 80            [12] 2053 	mov	r7,#0x80
                                   2054 ;	life.c:48: return;
      0028DF                       2055 00180$:
                                   2056 ;	life.c:46: for (; *s; s++) putchar(*s);
      0028DF 8D 82            [24] 2057 	mov	dpl,r5
      0028E1 8E 83            [24] 2058 	mov	dph,r6
      0028E3 8F F0            [24] 2059 	mov	b,r7
      0028E5 12 2A 63         [24] 2060 	lcall	__gptrget
      0028E8 FC               [12] 2061 	mov	r4,a
      0028E9 60 10            [24] 2062 	jz	00148$
      0028EB 7B 00            [12] 2063 	mov	r3,#0x00
      0028ED 8C 82            [24] 2064 	mov	dpl,r4
      0028EF 8B 83            [24] 2065 	mov	dph,r3
      0028F1 12 20 75         [24] 2066 	lcall	_putchar
      0028F4 0D               [12] 2067 	inc	r5
                                   2068 ;	life.c:205: printstr("DONE\r\n");
      0028F5 BD 00 E7         [24] 2069 	cjne	r5,#0x00,00180$
      0028F8 0E               [12] 2070 	inc	r6
      0028F9 80 E4            [24] 2071 	sjmp	00180$
      0028FB                       2072 00148$:
                                   2073 ;	life.c:206: (void)getchar();
      0028FB 12 20 7A         [24] 2074 	lcall	_getchar
                                   2075 ;	life.c:207: break;
      0028FE                       2076 00104$:
                                   2077 ;	life.c:211: if (i1) {
      0028FE 90 80 01         [24] 2078 	mov	dptr,#_i1
      002901 E0               [24] 2079 	movx	a,@dptr
      002902 60 25            [24] 2080 	jz	00190$
                                   2081 ;	life.c:212: printstr("BREAK\r\n");
      002904 7D CC            [12] 2082 	mov	r5,#___str_7
      002906 7E 2B            [12] 2083 	mov	r6,#(___str_7 >> 8)
      002908 7F 80            [12] 2084 	mov	r7,#0x80
                                   2085 ;	life.c:48: return;
      00290A                       2086 00187$:
                                   2087 ;	life.c:46: for (; *s; s++) putchar(*s);
      00290A 8D 82            [24] 2088 	mov	dpl,r5
      00290C 8E 83            [24] 2089 	mov	dph,r6
      00290E 8F F0            [24] 2090 	mov	b,r7
      002910 12 2A 63         [24] 2091 	lcall	__gptrget
      002913 FC               [12] 2092 	mov	r4,a
      002914 60 10            [24] 2093 	jz	00150$
      002916 7B 00            [12] 2094 	mov	r3,#0x00
      002918 8C 82            [24] 2095 	mov	dpl,r4
      00291A 8B 83            [24] 2096 	mov	dph,r3
      00291C 12 20 75         [24] 2097 	lcall	_putchar
      00291F 0D               [12] 2098 	inc	r5
                                   2099 ;	life.c:212: printstr("BREAK\r\n");
      002920 BD 00 E7         [24] 2100 	cjne	r5,#0x00,00187$
      002923 0E               [12] 2101 	inc	r6
      002924 80 E4            [24] 2102 	sjmp	00187$
      002926                       2103 00150$:
                                   2104 ;	life.c:213: (void)getchar();
      002926 12 20 7A         [24] 2105 	lcall	_getchar
      002929                       2106 00190$:
                                   2107 ;	life.c:188: for (i0 = 0; !i0; ) {
      002929 90 80 00         [24] 2108 	mov	dptr,#_i0
      00292C E0               [24] 2109 	movx	a,@dptr
      00292D 70 03            [24] 2110 	jnz	00407$
      00292F 02 23 26         [24] 2111 	ljmp	00189$
      002932                       2112 00407$:
                                   2113 ;	life.c:217: EA = 0;
                                   2114 ;	assignBit
      002932 C2 AF            [12] 2115 	clr	_EA
                                   2116 ;	life.c:219: printstr("TERM\r\n");
      002934 7D D4            [12] 2117 	mov	r5,#___str_8
      002936 7E 2B            [12] 2118 	mov	r6,#(___str_8 >> 8)
      002938 7F 80            [12] 2119 	mov	r7,#0x80
                                   2120 ;	life.c:48: return;
      00293A                       2121 00192$:
                                   2122 ;	life.c:46: for (; *s; s++) putchar(*s);
      00293A 8D 82            [24] 2123 	mov	dpl,r5
      00293C 8E 83            [24] 2124 	mov	dph,r6
      00293E 8F F0            [24] 2125 	mov	b,r7
      002940 12 2A 63         [24] 2126 	lcall	__gptrget
      002943 FC               [12] 2127 	mov	r4,a
      002944 60 10            [24] 2128 	jz	00152$
      002946 7B 00            [12] 2129 	mov	r3,#0x00
      002948 8C 82            [24] 2130 	mov	dpl,r4
      00294A 8B 83            [24] 2131 	mov	dph,r3
      00294C 12 20 75         [24] 2132 	lcall	_putchar
      00294F 0D               [12] 2133 	inc	r5
                                   2134 ;	life.c:219: printstr("TERM\r\n");
      002950 BD 00 E7         [24] 2135 	cjne	r5,#0x00,00192$
      002953 0E               [12] 2136 	inc	r6
      002954 80 E4            [24] 2137 	sjmp	00192$
      002956                       2138 00152$:
                                   2139 ;	life.c:220: (void)getchar();
      002956 12 20 7A         [24] 2140 	lcall	_getchar
                                   2141 ;	life.c:224: __endasm;
      002959 02 00 00         [24] 2142 	ljmp	0
                                   2143 ;	life.c:225: }
      00295C 85 10 81         [24] 2144 	mov	sp,_bp
      00295F D0 10            [24] 2145 	pop	_bp
      002961 22               [24] 2146 	ret
                                   2147 	.area CSEG    (CODE)
                                   2148 	.area CONST   (CODE)
      002B8B                       2149 _digits:
      002B8B 30                    2150 	.db #0x30	; 48	'0'
      002B8C 31                    2151 	.db #0x31	; 49	'1'
      002B8D 32                    2152 	.db #0x32	; 50	'2'
      002B8E 33                    2153 	.db #0x33	; 51	'3'
      002B8F 34                    2154 	.db #0x34	; 52	'4'
      002B90 35                    2155 	.db #0x35	; 53	'5'
      002B91 36                    2156 	.db #0x36	; 54	'6'
      002B92 37                    2157 	.db #0x37	; 55	'7'
      002B93 38                    2158 	.db #0x38	; 56	'8'
      002B94 39                    2159 	.db #0x39	; 57	'9'
      002B95 61                    2160 	.db #0x61	; 97	'a'
      002B96 62                    2161 	.db #0x62	; 98	'b'
      002B97 63                    2162 	.db #0x63	; 99	'c'
      002B98 64                    2163 	.db #0x64	; 100	'd'
      002B99 65                    2164 	.db #0x65	; 101	'e'
      002B9A 66                    2165 	.db #0x66	; 102	'f'
                                   2166 	.area CONST   (CODE)
      002B9B                       2167 ___str_0:
      002B9B 1B                    2168 	.db 0x1b
      002B9C 5B 32 4A              2169 	.ascii "[2J"
      002B9F 1B                    2170 	.db 0x1b
      002BA0 5B 6D                 2171 	.ascii "[m"
      002BA2 00                    2172 	.db 0x00
                                   2173 	.area CSEG    (CODE)
                                   2174 	.area CONST   (CODE)
      002BA3                       2175 ___str_1:
      002BA3 0D                    2176 	.db 0x0d
      002BA4 0A                    2177 	.db 0x0a
      002BA5 00                    2178 	.db 0x00
                                   2179 	.area CSEG    (CODE)
                                   2180 	.area CONST   (CODE)
      002BA6                       2181 ___str_2:
      002BA6 4C 4F 41 44 20 3C     2182 	.ascii "LOAD <"
      002BAC 00                    2183 	.db 0x00
                                   2184 	.area CSEG    (CODE)
                                   2185 	.area CONST   (CODE)
      002BAD                       2186 ___str_3:
      002BAD 3E                    2187 	.ascii ">"
      002BAE 0D                    2188 	.db 0x0d
      002BAF 0A                    2189 	.db 0x0a
      002BB0 00                    2190 	.db 0x00
                                   2191 	.area CSEG    (CODE)
      002962                       2192 _busy:
      002962 5C                    2193 	.db #0x5c	; 92
      002963 7C                    2194 	.db #0x7c	; 124
      002964 2F                    2195 	.db #0x2f	; 47
      002965 2D                    2196 	.db #0x2d	; 45
                                   2197 	.area CONST   (CODE)
      002BB1                       2198 ___str_4:
      002BB1 1B                    2199 	.db 0x1b
      002BB2 5B 32 4A              2200 	.ascii "[2J"
      002BB5 1B                    2201 	.db 0x1b
      002BB6 5B 6D 49 4E 49 54     2202 	.ascii "[mINIT"
      002BBC 0D                    2203 	.db 0x0d
      002BBD 0A                    2204 	.db 0x0a
      002BBE 00                    2205 	.db 0x00
                                   2206 	.area CSEG    (CODE)
                                   2207 	.area CONST   (CODE)
      002BBF                       2208 ___str_5:
      002BBF 52 44 59              2209 	.ascii "RDY"
      002BC2 0D                    2210 	.db 0x0d
      002BC3 0A                    2211 	.db 0x0a
      002BC4 00                    2212 	.db 0x00
                                   2213 	.area CSEG    (CODE)
                                   2214 	.area CONST   (CODE)
      002BC5                       2215 ___str_6:
      002BC5 44 4F 4E 45           2216 	.ascii "DONE"
      002BC9 0D                    2217 	.db 0x0d
      002BCA 0A                    2218 	.db 0x0a
      002BCB 00                    2219 	.db 0x00
                                   2220 	.area CSEG    (CODE)
                                   2221 	.area CONST   (CODE)
      002BCC                       2222 ___str_7:
      002BCC 42 52 45 41 4B        2223 	.ascii "BREAK"
      002BD1 0D                    2224 	.db 0x0d
      002BD2 0A                    2225 	.db 0x0a
      002BD3 00                    2226 	.db 0x00
                                   2227 	.area CSEG    (CODE)
                                   2228 	.area CONST   (CODE)
      002BD4                       2229 ___str_8:
      002BD4 54 45 52 4D           2230 	.ascii "TERM"
      002BD8 0D                    2231 	.db 0x0d
      002BD9 0A                    2232 	.db 0x0a
      002BDA 00                    2233 	.db 0x00
                                   2234 	.area CSEG    (CODE)
                                   2235 	.area XINIT   (CODE)
                                   2236 	.area CABS    (ABS,CODE)
