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
                                    501 ;	life.c:69: void int1(void) __interrupt 2 __using 1 {
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
      0020B1 7D 60            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2D            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2C 28         [24]  565 	lcall	__gptrget
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
      0020ED 24 50            [12]  597 	add	a,#_digits
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
      00210A 24 50            [12]  614 	add	a,#_digits
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
      002139 24 50            [12]  645 	add	a,#_digits
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
      002154 24 50            [12]  661 	add	a,#_digits
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
      002183 24 50            [12]  692 	add	a,#_digits
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
      0021A0 24 50            [12]  709 	add	a,#_digits
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
      0021CF 24 50            [12]  740 	add	a,#_digits
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
      0021EA 24 50            [12]  756 	add	a,#_digits
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
      0021FF 7D 68            [12]  769 	mov	r5,#___str_1
      002201 7E 2D            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2C 28         [24]  778 	lcall	__gptrget
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
                                    808 ;	life.c:82: if (!generation[0]) generation[1]++;
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
                                    828 ;	life.c:99: updategen();
      00224F                        829 00102$:
                                    830 ;	life.c:102: for (x = 0; x < W; x++) {
      00224F 90 8C 02         [24]  831 	mov	dptr,#_x
      002252 E4               [12]  832 	clr	a
      002253 F0               [24]  833 	movx	@dptr,a
      002254 A3               [24]  834 	inc	dptr
      002255 F0               [24]  835 	movx	@dptr,a
      002256                        836 00131$:
                                    837 ;	life.c:103: for (y = 0; y < H; y++)
      002256 90 8C 04         [24]  838 	mov	dptr,#_y
      002259 E4               [12]  839 	clr	a
      00225A F0               [24]  840 	movx	@dptr,a
      00225B A3               [24]  841 	inc	dptr
      00225C F0               [24]  842 	movx	@dptr,a
      00225D                        843 00126$:
                                    844 ;	life.c:104: if (u[A2D(W, y, x)]) {
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
                                    920 ;	life.c:109: printstr("\r\n");
      0022C9 7D 68            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2D            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2C 28         [24]  930 	lcall	__gptrget
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
                                    967 ;	life.c:112: return;
                                    968 ;	life.c:113: }
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
                                    983 ;__2621440025              Allocated to registers 
                                    984 ;s                         Allocated to registers r5 r6 r7 
                                    985 ;__4587520029              Allocated to registers 
                                    986 ;s                         Allocated to registers r5 r6 r7 
                                    987 ;__3276800031              Allocated to registers 
                                    988 ;s                         Allocated to registers r5 r6 r7 
                                    989 ;__1310720033              Allocated to registers 
                                    990 ;s                         Allocated to registers r5 r6 r7 
                                    991 ;sloc0                     Allocated to stack - _bp +1
                                    992 ;sloc1                     Allocated to stack - _bp +3
                                    993 ;sloc2                     Allocated to stack - _bp +5
                                    994 ;sloc3                     Allocated to stack - _bp +6
                                    995 ;sloc4                     Allocated to stack - _bp +8
                                    996 ;sloc5                     Allocated to stack - _bp +10
                                    997 ;sloc6                     Allocated to stack - _bp +12
                                    998 ;sloc7                     Allocated to stack - _bp +14
                                    999 ;------------------------------------------------------------
                                   1000 ;	life.c:196: void main(void) {
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function main
                                   1003 ;	-----------------------------------------
      00230E                       1004 _main:
      00230E C0 10            [24] 1005 	push	_bp
      002310 E5 81            [12] 1006 	mov	a,sp
      002312 F5 10            [12] 1007 	mov	_bp,a
      002314 24 0F            [12] 1008 	add	a,#0x0f
      002316 F5 81            [12] 1009 	mov	sp,a
                                   1010 ;	life.c:197: IT0 = 1;
                                   1011 ;	assignBit
      002318 D2 88            [12] 1012 	setb	_IT0
                                   1013 ;	life.c:198: IT1 = 1;
                                   1014 ;	assignBit
      00231A D2 8A            [12] 1015 	setb	_IT1
                                   1016 ;	life.c:199: EX0 = 1;
                                   1017 ;	assignBit
      00231C D2 A8            [12] 1018 	setb	_EX0
                                   1019 ;	life.c:200: EX1 = 1;
                                   1020 ;	assignBit
      00231E D2 AA            [12] 1021 	setb	_EX1
                                   1022 ;	life.c:201: EA = 1;
                                   1023 ;	assignBit
      002320 D2 AF            [12] 1024 	setb	_EA
                                   1025 ;	life.c:203: for (i0 = 0; !i0; ) {
      002322 90 80 00         [24] 1026 	mov	dptr,#_i0
      002325 E4               [12] 1027 	clr	a
      002326 F0               [24] 1028 	movx	@dptr,a
      002327                       1029 00191$:
                                   1030 ;	life.c:116: memset(u, 0, sizeof (u));
      002327 E4               [12] 1031 	clr	a
      002328 C0 E0            [24] 1032 	push	acc
      00232A 74 04            [12] 1033 	mov	a,#0x04
      00232C C0 E0            [24] 1034 	push	acc
      00232E E4               [12] 1035 	clr	a
      00232F C0 E0            [24] 1036 	push	acc
      002331 90 84 02         [24] 1037 	mov	dptr,#_u
      002334 75 F0 00         [24] 1038 	mov	b,#0x00
      002337 12 2B BE         [24] 1039 	lcall	_memset
      00233A 15 81            [12] 1040 	dec	sp
      00233C 15 81            [12] 1041 	dec	sp
      00233E 15 81            [12] 1042 	dec	sp
                                   1043 ;	life.c:117: memset(pu, 0, sizeof (pu));
      002340 E4               [12] 1044 	clr	a
      002341 C0 E0            [24] 1045 	push	acc
      002343 74 04            [12] 1046 	mov	a,#0x04
      002345 C0 E0            [24] 1047 	push	acc
      002347 E4               [12] 1048 	clr	a
      002348 C0 E0            [24] 1049 	push	acc
      00234A 90 80 02         [24] 1050 	mov	dptr,#_pu
      00234D 75 F0 00         [24] 1051 	mov	b,#0x00
      002350 12 2B BE         [24] 1052 	lcall	_memset
      002353 15 81            [12] 1053 	dec	sp
      002355 15 81            [12] 1054 	dec	sp
      002357 15 81            [12] 1055 	dec	sp
                                   1056 ;	life.c:205: printstr("\033[2J\033[mINIT\r\n");
      002359 7D 76            [12] 1057 	mov	r5,#___str_4
      00235B 7E 2D            [12] 1058 	mov	r6,#(___str_4 >> 8)
      00235D 7F 80            [12] 1059 	mov	r7,#0x80
                                   1060 ;	life.c:48: return;
      00235F                       1061 00159$:
                                   1062 ;	life.c:46: for (; *s; s++) putchar(*s);
      00235F 8D 82            [24] 1063 	mov	dpl,r5
      002361 8E 83            [24] 1064 	mov	dph,r6
      002363 8F F0            [24] 1065 	mov	b,r7
      002365 12 2C 28         [24] 1066 	lcall	__gptrget
      002368 FC               [12] 1067 	mov	r4,a
      002369 60 10            [24] 1068 	jz	00115$
      00236B 7B 00            [12] 1069 	mov	r3,#0x00
      00236D 8C 82            [24] 1070 	mov	dpl,r4
      00236F 8B 83            [24] 1071 	mov	dph,r3
      002371 12 20 75         [24] 1072 	lcall	_putchar
      002374 0D               [12] 1073 	inc	r5
                                   1074 ;	life.c:205: printstr("\033[2J\033[mINIT\r\n");
      002375 BD 00 E7         [24] 1075 	cjne	r5,#0x00,00159$
      002378 0E               [12] 1076 	inc	r6
      002379 80 E4            [24] 1077 	sjmp	00159$
      00237B                       1078 00115$:
                                   1079 ;	life.c:206: (void)getchar();
      00237B 12 20 7A         [24] 1080 	lcall	_getchar
                                   1081 ;	life.c:123: j = 0;
      00237E 90 8C 0A         [24] 1082 	mov	dptr,#_j
      002381 E4               [12] 1083 	clr	a
      002382 F0               [24] 1084 	movx	@dptr,a
      002383 A3               [24] 1085 	inc	dptr
      002384 F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	life.c:125: printstr("LOAD <");
      002385 7D 6B            [12] 1088 	mov	r5,#___str_2
      002387 7E 2D            [12] 1089 	mov	r6,#(___str_2 >> 8)
      002389 7F 80            [12] 1090 	mov	r7,#0x80
                                   1091 ;	life.c:48: return;
      00238B                       1092 00162$:
                                   1093 ;	life.c:46: for (; *s; s++) putchar(*s);
      00238B 8D 82            [24] 1094 	mov	dpl,r5
      00238D 8E 83            [24] 1095 	mov	dph,r6
      00238F 8F F0            [24] 1096 	mov	b,r7
      002391 12 2C 28         [24] 1097 	lcall	__gptrget
      002394 FC               [12] 1098 	mov	r4,a
      002395 60 10            [24] 1099 	jz	00117$
      002397 7B 00            [12] 1100 	mov	r3,#0x00
      002399 8C 82            [24] 1101 	mov	dpl,r4
      00239B 8B 83            [24] 1102 	mov	dph,r3
      00239D 12 20 75         [24] 1103 	lcall	_putchar
      0023A0 0D               [12] 1104 	inc	r5
                                   1105 ;	life.c:125: printstr("LOAD <");
      0023A1 BD 00 E7         [24] 1106 	cjne	r5,#0x00,00162$
      0023A4 0E               [12] 1107 	inc	r6
      0023A5 80 E4            [24] 1108 	sjmp	00162$
      0023A7                       1109 00117$:
                                   1110 ;	life.c:127: for (y = 0; y < H; y++)
      0023A7 90 8C 04         [24] 1111 	mov	dptr,#_y
      0023AA E4               [12] 1112 	clr	a
      0023AB F0               [24] 1113 	movx	@dptr,a
      0023AC A3               [24] 1114 	inc	dptr
      0023AD F0               [24] 1115 	movx	@dptr,a
      0023AE                       1116 00166$:
                                   1117 ;	life.c:128: for (x = 0; x < W; x++) {
      0023AE 90 8C 02         [24] 1118 	mov	dptr,#_x
      0023B1 E4               [12] 1119 	clr	a
      0023B2 F0               [24] 1120 	movx	@dptr,a
      0023B3 A3               [24] 1121 	inc	dptr
      0023B4 F0               [24] 1122 	movx	@dptr,a
      0023B5                       1123 00164$:
                                   1124 ;	life.c:129: c = getchar();
      0023B5 12 20 7A         [24] 1125 	lcall	_getchar
      0023B8 AE 82            [24] 1126 	mov	r6,dpl
      0023BA AF 83            [24] 1127 	mov	r7,dph
      0023BC 90 8C 0C         [24] 1128 	mov	dptr,#_c
      0023BF EE               [12] 1129 	mov	a,r6
      0023C0 F0               [24] 1130 	movx	@dptr,a
      0023C1 EF               [12] 1131 	mov	a,r7
      0023C2 A3               [24] 1132 	inc	dptr
      0023C3 F0               [24] 1133 	movx	@dptr,a
                                   1134 ;	life.c:130: if (c == (int)'0') {
      0023C4 BE 30 41         [24] 1135 	cjne	r6,#0x30,00124$
      0023C7 BF 00 3E         [24] 1136 	cjne	r7,#0x00,00124$
                                   1137 ;	life.c:131: u[A2D(W, y, x)] = 0;
      0023CA 90 8C 04         [24] 1138 	mov	dptr,#_y
      0023CD E0               [24] 1139 	movx	a,@dptr
      0023CE FC               [12] 1140 	mov	r4,a
      0023CF A3               [24] 1141 	inc	dptr
      0023D0 E0               [24] 1142 	movx	a,@dptr
      0023D1 C4               [12] 1143 	swap	a
      0023D2 23               [12] 1144 	rl	a
      0023D3 54 E0            [12] 1145 	anl	a,#0xe0
      0023D5 CC               [12] 1146 	xch	a,r4
      0023D6 C4               [12] 1147 	swap	a
      0023D7 23               [12] 1148 	rl	a
      0023D8 CC               [12] 1149 	xch	a,r4
      0023D9 6C               [12] 1150 	xrl	a,r4
      0023DA CC               [12] 1151 	xch	a,r4
      0023DB 54 E0            [12] 1152 	anl	a,#0xe0
      0023DD CC               [12] 1153 	xch	a,r4
      0023DE 6C               [12] 1154 	xrl	a,r4
      0023DF FD               [12] 1155 	mov	r5,a
      0023E0 90 8C 02         [24] 1156 	mov	dptr,#_x
      0023E3 E0               [24] 1157 	movx	a,@dptr
      0023E4 FA               [12] 1158 	mov	r2,a
      0023E5 A3               [24] 1159 	inc	dptr
      0023E6 E0               [24] 1160 	movx	a,@dptr
      0023E7 FB               [12] 1161 	mov	r3,a
      0023E8 EA               [12] 1162 	mov	a,r2
      0023E9 2C               [12] 1163 	add	a,r4
      0023EA FC               [12] 1164 	mov	r4,a
      0023EB EB               [12] 1165 	mov	a,r3
      0023EC 3D               [12] 1166 	addc	a,r5
      0023ED FD               [12] 1167 	mov	r5,a
      0023EE EC               [12] 1168 	mov	a,r4
      0023EF 24 02            [12] 1169 	add	a,#_u
      0023F1 F5 82            [12] 1170 	mov	dpl,a
      0023F3 ED               [12] 1171 	mov	a,r5
      0023F4 34 84            [12] 1172 	addc	a,#(_u >> 8)
      0023F6 F5 83            [12] 1173 	mov	dph,a
      0023F8 E4               [12] 1174 	clr	a
      0023F9 F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	life.c:132: j++;
      0023FA 90 8C 0A         [24] 1177 	mov	dptr,#_j
      0023FD E0               [24] 1178 	movx	a,@dptr
      0023FE 24 01            [12] 1179 	add	a,#0x01
      002400 F0               [24] 1180 	movx	@dptr,a
      002401 A3               [24] 1181 	inc	dptr
      002402 E0               [24] 1182 	movx	a,@dptr
      002403 34 00            [12] 1183 	addc	a,#0x00
      002405 F0               [24] 1184 	movx	@dptr,a
      002406 80 4D            [24] 1185 	sjmp	00165$
      002408                       1186 00124$:
                                   1187 ;	life.c:133: } else if (c == (int)'1') {
      002408 BE 31 42         [24] 1188 	cjne	r6,#0x31,00122$
      00240B BF 00 3F         [24] 1189 	cjne	r7,#0x00,00122$
                                   1190 ;	life.c:134: u[A2D(W, y, x)] = 1;
      00240E 90 8C 04         [24] 1191 	mov	dptr,#_y
      002411 E0               [24] 1192 	movx	a,@dptr
      002412 FC               [12] 1193 	mov	r4,a
      002413 A3               [24] 1194 	inc	dptr
      002414 E0               [24] 1195 	movx	a,@dptr
      002415 C4               [12] 1196 	swap	a
      002416 23               [12] 1197 	rl	a
      002417 54 E0            [12] 1198 	anl	a,#0xe0
      002419 CC               [12] 1199 	xch	a,r4
      00241A C4               [12] 1200 	swap	a
      00241B 23               [12] 1201 	rl	a
      00241C CC               [12] 1202 	xch	a,r4
      00241D 6C               [12] 1203 	xrl	a,r4
      00241E CC               [12] 1204 	xch	a,r4
      00241F 54 E0            [12] 1205 	anl	a,#0xe0
      002421 CC               [12] 1206 	xch	a,r4
      002422 6C               [12] 1207 	xrl	a,r4
      002423 FD               [12] 1208 	mov	r5,a
      002424 90 8C 02         [24] 1209 	mov	dptr,#_x
      002427 E0               [24] 1210 	movx	a,@dptr
      002428 FA               [12] 1211 	mov	r2,a
      002429 A3               [24] 1212 	inc	dptr
      00242A E0               [24] 1213 	movx	a,@dptr
      00242B FB               [12] 1214 	mov	r3,a
      00242C EA               [12] 1215 	mov	a,r2
      00242D 2C               [12] 1216 	add	a,r4
      00242E FC               [12] 1217 	mov	r4,a
      00242F EB               [12] 1218 	mov	a,r3
      002430 3D               [12] 1219 	addc	a,r5
      002431 FD               [12] 1220 	mov	r5,a
      002432 EC               [12] 1221 	mov	a,r4
      002433 24 02            [12] 1222 	add	a,#_u
      002435 F5 82            [12] 1223 	mov	dpl,a
      002437 ED               [12] 1224 	mov	a,r5
      002438 34 84            [12] 1225 	addc	a,#(_u >> 8)
      00243A F5 83            [12] 1226 	mov	dph,a
      00243C 74 01            [12] 1227 	mov	a,#0x01
      00243E F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	life.c:135: j++;
      00243F 90 8C 0A         [24] 1230 	mov	dptr,#_j
      002442 E0               [24] 1231 	movx	a,@dptr
      002443 24 01            [12] 1232 	add	a,#0x01
      002445 F0               [24] 1233 	movx	@dptr,a
      002446 A3               [24] 1234 	inc	dptr
      002447 E0               [24] 1235 	movx	a,@dptr
      002448 34 00            [12] 1236 	addc	a,#0x00
      00244A F0               [24] 1237 	movx	@dptr,a
      00244B 80 08            [24] 1238 	sjmp	00165$
      00244D                       1239 00122$:
                                   1240 ;	life.c:136: } else if (c == (int)'#') goto out;
      00244D BE 23 05         [24] 1241 	cjne	r6,#0x23,00376$
      002450 BF 00 02         [24] 1242 	cjne	r7,#0x00,00376$
      002453 80 44            [24] 1243 	sjmp	00135$
      002455                       1244 00376$:
      002455                       1245 00165$:
                                   1246 ;	life.c:128: for (x = 0; x < W; x++) {
      002455 90 8C 02         [24] 1247 	mov	dptr,#_x
      002458 E0               [24] 1248 	movx	a,@dptr
      002459 24 01            [12] 1249 	add	a,#0x01
      00245B F0               [24] 1250 	movx	@dptr,a
      00245C A3               [24] 1251 	inc	dptr
      00245D E0               [24] 1252 	movx	a,@dptr
      00245E 34 00            [12] 1253 	addc	a,#0x00
      002460 F0               [24] 1254 	movx	@dptr,a
      002461 90 8C 02         [24] 1255 	mov	dptr,#_x
      002464 E0               [24] 1256 	movx	a,@dptr
      002465 FE               [12] 1257 	mov	r6,a
      002466 A3               [24] 1258 	inc	dptr
      002467 E0               [24] 1259 	movx	a,@dptr
      002468 FF               [12] 1260 	mov	r7,a
      002469 C3               [12] 1261 	clr	c
      00246A EE               [12] 1262 	mov	a,r6
      00246B 94 20            [12] 1263 	subb	a,#0x20
      00246D EF               [12] 1264 	mov	a,r7
      00246E 64 80            [12] 1265 	xrl	a,#0x80
      002470 94 80            [12] 1266 	subb	a,#0x80
      002472 50 03            [24] 1267 	jnc	00377$
      002474 02 23 B5         [24] 1268 	ljmp	00164$
      002477                       1269 00377$:
                                   1270 ;	life.c:127: for (y = 0; y < H; y++)
      002477 90 8C 04         [24] 1271 	mov	dptr,#_y
      00247A E0               [24] 1272 	movx	a,@dptr
      00247B 24 01            [12] 1273 	add	a,#0x01
      00247D F0               [24] 1274 	movx	@dptr,a
      00247E A3               [24] 1275 	inc	dptr
      00247F E0               [24] 1276 	movx	a,@dptr
      002480 34 00            [12] 1277 	addc	a,#0x00
      002482 F0               [24] 1278 	movx	@dptr,a
      002483 90 8C 04         [24] 1279 	mov	dptr,#_y
      002486 E0               [24] 1280 	movx	a,@dptr
      002487 FE               [12] 1281 	mov	r6,a
      002488 A3               [24] 1282 	inc	dptr
      002489 E0               [24] 1283 	movx	a,@dptr
      00248A FF               [12] 1284 	mov	r7,a
      00248B C3               [12] 1285 	clr	c
      00248C EE               [12] 1286 	mov	a,r6
      00248D 94 20            [12] 1287 	subb	a,#0x20
      00248F EF               [12] 1288 	mov	a,r7
      002490 64 80            [12] 1289 	xrl	a,#0x80
      002492 94 80            [12] 1290 	subb	a,#0x80
      002494 50 03            [24] 1291 	jnc	00378$
      002496 02 23 AE         [24] 1292 	ljmp	00166$
      002499                       1293 00378$:
                                   1294 ;	life.c:139: out:
      002499                       1295 00135$:
                                   1296 ;	life.c:140: if (c != (int)'#')
      002499 90 8C 0C         [24] 1297 	mov	dptr,#_c
      00249C E0               [24] 1298 	movx	a,@dptr
      00249D FE               [12] 1299 	mov	r6,a
      00249E A3               [24] 1300 	inc	dptr
      00249F E0               [24] 1301 	movx	a,@dptr
      0024A0 FF               [12] 1302 	mov	r7,a
      0024A1 BE 23 05         [24] 1303 	cjne	r6,#0x23,00379$
      0024A4 BF 00 02         [24] 1304 	cjne	r7,#0x00,00379$
      0024A7 80 15            [24] 1305 	sjmp	00134$
      0024A9                       1306 00379$:
                                   1307 ;	life.c:141: while (1) {
      0024A9                       1308 00131$:
                                   1309 ;	life.c:142: c = getchar();
      0024A9 12 20 7A         [24] 1310 	lcall	_getchar
      0024AC AE 82            [24] 1311 	mov	r6,dpl
      0024AE AF 83            [24] 1312 	mov	r7,dph
      0024B0 90 8C 0C         [24] 1313 	mov	dptr,#_c
      0024B3 EE               [12] 1314 	mov	a,r6
      0024B4 F0               [24] 1315 	movx	@dptr,a
      0024B5 EF               [12] 1316 	mov	a,r7
      0024B6 A3               [24] 1317 	inc	dptr
      0024B7 F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	life.c:143: if (c == (int)'#') break;
      0024B8 BE 23 EE         [24] 1320 	cjne	r6,#0x23,00131$
      0024BB BF 00 EB         [24] 1321 	cjne	r7,#0x00,00131$
      0024BE                       1322 00134$:
                                   1323 ;	life.c:145: print16x(j);
      0024BE 90 8C 0A         [24] 1324 	mov	dptr,#_j
      0024C1 E0               [24] 1325 	movx	a,@dptr
      0024C2 FE               [12] 1326 	mov	r6,a
      0024C3 A3               [24] 1327 	inc	dptr
      0024C4 E0               [24] 1328 	movx	a,@dptr
                                   1329 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0024C5 8E 04            [24] 1330 	mov	ar4,r6
      0024C7 FD               [12] 1331 	mov	r5,a
      0024C8 C4               [12] 1332 	swap	a
      0024C9 54 0F            [12] 1333 	anl	a,#0x0f
      0024CB 30 E3 02         [24] 1334 	jnb	acc.3,00382$
      0024CE 44 F0            [12] 1335 	orl	a,#0xf0
      0024D0                       1336 00382$:
      0024D0 FE               [12] 1337 	mov	r6,a
      0024D1 33               [12] 1338 	rlc	a
      0024D2 95 E0            [12] 1339 	subb	a,acc
      0024D4 53 06 0F         [24] 1340 	anl	ar6,#0x0f
      0024D7 7F 00            [12] 1341 	mov	r7,#0x00
      0024D9 EE               [12] 1342 	mov	a,r6
      0024DA 24 50            [12] 1343 	add	a,#_digits
      0024DC F5 82            [12] 1344 	mov	dpl,a
      0024DE EF               [12] 1345 	mov	a,r7
      0024DF 34 2D            [12] 1346 	addc	a,#(_digits >> 8)
      0024E1 F5 83            [12] 1347 	mov	dph,a
      0024E3 E4               [12] 1348 	clr	a
      0024E4 93               [24] 1349 	movc	a,@a+dptr
      0024E5 FF               [12] 1350 	mov	r7,a
      0024E6 7E 00            [12] 1351 	mov	r6,#0x00
      0024E8 8F 82            [24] 1352 	mov	dpl,r7
      0024EA 8E 83            [24] 1353 	mov	dph,r6
      0024EC 12 20 75         [24] 1354 	lcall	_putchar
                                   1355 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      0024EF 8D 07            [24] 1356 	mov	ar7,r5
      0024F1 53 07 0F         [24] 1357 	anl	ar7,#0x0f
      0024F4 7E 00            [12] 1358 	mov	r6,#0x00
      0024F6 EF               [12] 1359 	mov	a,r7
      0024F7 24 50            [12] 1360 	add	a,#_digits
      0024F9 F5 82            [12] 1361 	mov	dpl,a
      0024FB EE               [12] 1362 	mov	a,r6
      0024FC 34 2D            [12] 1363 	addc	a,#(_digits >> 8)
      0024FE F5 83            [12] 1364 	mov	dph,a
      002500 E4               [12] 1365 	clr	a
      002501 93               [24] 1366 	movc	a,@a+dptr
      002502 FF               [12] 1367 	mov	r7,a
      002503 7E 00            [12] 1368 	mov	r6,#0x00
      002505 8F 82            [24] 1369 	mov	dpl,r7
      002507 8E 83            [24] 1370 	mov	dph,r6
      002509 12 20 75         [24] 1371 	lcall	_putchar
                                   1372 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      00250C 8C 06            [24] 1373 	mov	ar6,r4
      00250E ED               [12] 1374 	mov	a,r5
      00250F C4               [12] 1375 	swap	a
      002510 CE               [12] 1376 	xch	a,r6
      002511 C4               [12] 1377 	swap	a
      002512 54 0F            [12] 1378 	anl	a,#0x0f
      002514 6E               [12] 1379 	xrl	a,r6
      002515 CE               [12] 1380 	xch	a,r6
      002516 54 0F            [12] 1381 	anl	a,#0x0f
      002518 CE               [12] 1382 	xch	a,r6
      002519 6E               [12] 1383 	xrl	a,r6
      00251A CE               [12] 1384 	xch	a,r6
      00251B 30 E3 02         [24] 1385 	jnb	acc.3,00383$
      00251E 44 F0            [12] 1386 	orl	a,#0xf0
      002520                       1387 00383$:
      002520 53 06 0F         [24] 1388 	anl	ar6,#0x0f
      002523 7F 00            [12] 1389 	mov	r7,#0x00
      002525 EE               [12] 1390 	mov	a,r6
      002526 24 50            [12] 1391 	add	a,#_digits
      002528 F5 82            [12] 1392 	mov	dpl,a
      00252A EF               [12] 1393 	mov	a,r7
      00252B 34 2D            [12] 1394 	addc	a,#(_digits >> 8)
      00252D F5 83            [12] 1395 	mov	dph,a
      00252F E4               [12] 1396 	clr	a
      002530 93               [24] 1397 	movc	a,@a+dptr
      002531 FF               [12] 1398 	mov	r7,a
      002532 7E 00            [12] 1399 	mov	r6,#0x00
      002534 8F 82            [24] 1400 	mov	dpl,r7
      002536 8E 83            [24] 1401 	mov	dph,r6
      002538 12 20 75         [24] 1402 	lcall	_putchar
                                   1403 ;	life.c:40: putchar(digits[a & 0xf]);
      00253B 53 04 0F         [24] 1404 	anl	ar4,#0x0f
      00253E 7D 00            [12] 1405 	mov	r5,#0x00
      002540 EC               [12] 1406 	mov	a,r4
      002541 24 50            [12] 1407 	add	a,#_digits
      002543 F5 82            [12] 1408 	mov	dpl,a
      002545 ED               [12] 1409 	mov	a,r5
      002546 34 2D            [12] 1410 	addc	a,#(_digits >> 8)
      002548 F5 83            [12] 1411 	mov	dph,a
      00254A E4               [12] 1412 	clr	a
      00254B 93               [24] 1413 	movc	a,@a+dptr
      00254C FF               [12] 1414 	mov	r7,a
      00254D 7E 00            [12] 1415 	mov	r6,#0x00
      00254F 8F 82            [24] 1416 	mov	dpl,r7
      002551 8E 83            [24] 1417 	mov	dph,r6
      002553 12 20 75         [24] 1418 	lcall	_putchar
                                   1419 ;	life.c:146: printstr(">\r\n");
      002556 7D 72            [12] 1420 	mov	r5,#___str_3
      002558 7E 2D            [12] 1421 	mov	r6,#(___str_3 >> 8)
      00255A 7F 80            [12] 1422 	mov	r7,#0x80
                                   1423 ;	life.c:48: return;
      00255C                       1424 00169$:
                                   1425 ;	life.c:46: for (; *s; s++) putchar(*s);
      00255C 8D 82            [24] 1426 	mov	dpl,r5
      00255E 8E 83            [24] 1427 	mov	dph,r6
      002560 8F F0            [24] 1428 	mov	b,r7
      002562 12 2C 28         [24] 1429 	lcall	__gptrget
      002565 FC               [12] 1430 	mov	r4,a
      002566 60 10            [24] 1431 	jz	00138$
      002568 7B 00            [12] 1432 	mov	r3,#0x00
      00256A 8C 82            [24] 1433 	mov	dpl,r4
      00256C 8B 83            [24] 1434 	mov	dph,r3
      00256E 12 20 75         [24] 1435 	lcall	_putchar
      002571 0D               [12] 1436 	inc	r5
                                   1437 ;	life.c:146: printstr(">\r\n");
      002572 BD 00 E7         [24] 1438 	cjne	r5,#0x00,00169$
      002575 0E               [12] 1439 	inc	r6
      002576 80 E4            [24] 1440 	sjmp	00169$
      002578                       1441 00138$:
                                   1442 ;	life.c:209: show(0);
      002578 75 82 00         [24] 1443 	mov	dpl,#0x00
      00257B 12 20 A9         [24] 1444 	lcall	_show
                                   1445 ;	life.c:211: printstr("READY\r\n");
      00257E 7D 84            [12] 1446 	mov	r5,#___str_5
      002580 7E 2D            [12] 1447 	mov	r6,#(___str_5 >> 8)
      002582 7F 80            [12] 1448 	mov	r7,#0x80
                                   1449 ;	life.c:48: return;
      002584                       1450 00172$:
                                   1451 ;	life.c:46: for (; *s; s++) putchar(*s);
      002584 8D 82            [24] 1452 	mov	dpl,r5
      002586 8E 83            [24] 1453 	mov	dph,r6
      002588 8F F0            [24] 1454 	mov	b,r7
      00258A 12 2C 28         [24] 1455 	lcall	__gptrget
      00258D FC               [12] 1456 	mov	r4,a
      00258E 60 10            [24] 1457 	jz	00104$
      002590 7B 00            [12] 1458 	mov	r3,#0x00
      002592 8C 82            [24] 1459 	mov	dpl,r4
      002594 8B 83            [24] 1460 	mov	dph,r3
      002596 12 20 75         [24] 1461 	lcall	_putchar
      002599 0D               [12] 1462 	inc	r5
                                   1463 ;	life.c:212: while (1) {
      00259A BD 00 E7         [24] 1464 	cjne	r5,#0x00,00172$
      00259D 0E               [12] 1465 	inc	r6
      00259E 80 E4            [24] 1466 	sjmp	00172$
      0025A0                       1467 00104$:
                                   1468 ;	life.c:213: c = getchar();
      0025A0 12 20 7A         [24] 1469 	lcall	_getchar
      0025A3 AE 82            [24] 1470 	mov	r6,dpl
      0025A5 AF 83            [24] 1471 	mov	r7,dph
      0025A7 90 8C 0C         [24] 1472 	mov	dptr,#_c
      0025AA EE               [12] 1473 	mov	a,r6
      0025AB F0               [24] 1474 	movx	@dptr,a
      0025AC EF               [12] 1475 	mov	a,r7
      0025AD A3               [24] 1476 	inc	dptr
      0025AE F0               [24] 1477 	movx	@dptr,a
                                   1478 ;	life.c:214: if (c == (int)'S') break;
      0025AF BE 53 EE         [24] 1479 	cjne	r6,#0x53,00104$
      0025B2 BF 00 EB         [24] 1480 	cjne	r7,#0x00,00104$
                                   1481 ;	life.c:216: printstr("START\r\n");
      0025B5 7D 8C            [12] 1482 	mov	r5,#___str_6
      0025B7 7E 2D            [12] 1483 	mov	r6,#(___str_6 >> 8)
      0025B9 7F 80            [12] 1484 	mov	r7,#0x80
                                   1485 ;	life.c:48: return;
      0025BB                       1486 00175$:
                                   1487 ;	life.c:46: for (; *s; s++) putchar(*s);
      0025BB 8D 82            [24] 1488 	mov	dpl,r5
      0025BD 8E 83            [24] 1489 	mov	dph,r6
      0025BF 8F F0            [24] 1490 	mov	b,r7
      0025C1 12 2C 28         [24] 1491 	lcall	__gptrget
      0025C4 FC               [12] 1492 	mov	r4,a
      0025C5 60 10            [24] 1493 	jz	00143$
      0025C7 7B 00            [12] 1494 	mov	r3,#0x00
      0025C9 8C 82            [24] 1495 	mov	dpl,r4
      0025CB 8B 83            [24] 1496 	mov	dph,r3
      0025CD 12 20 75         [24] 1497 	lcall	_putchar
      0025D0 0D               [12] 1498 	inc	r5
                                   1499 ;	life.c:216: printstr("START\r\n");
      0025D1 BD 00 E7         [24] 1500 	cjne	r5,#0x00,00175$
      0025D4 0E               [12] 1501 	inc	r6
      0025D5 80 E4            [24] 1502 	sjmp	00175$
      0025D7                       1503 00143$:
                                   1504 ;	life.c:74: generation[0] = 0;
      0025D7 90 8C 12         [24] 1505 	mov	dptr,#_generation
      0025DA E4               [12] 1506 	clr	a
      0025DB F0               [24] 1507 	movx	@dptr,a
      0025DC A3               [24] 1508 	inc	dptr
      0025DD F0               [24] 1509 	movx	@dptr,a
                                   1510 ;	life.c:75: generation[1] = 0;
      0025DE 90 8C 14         [24] 1511 	mov	dptr,#(_generation + 0x0002)
      0025E1 F0               [24] 1512 	movx	@dptr,a
      0025E2 A3               [24] 1513 	inc	dptr
      0025E3 F0               [24] 1514 	movx	@dptr,a
                                   1515 ;	life.c:220: for (i1 = 0; !i0 && !i1; ) {
      0025E4 90 80 01         [24] 1516 	mov	dptr,#_i1
      0025E7 F0               [24] 1517 	movx	@dptr,a
      0025E8                       1518 00186$:
      0025E8 90 80 00         [24] 1519 	mov	dptr,#_i0
      0025EB E0               [24] 1520 	movx	a,@dptr
      0025EC 60 03            [24] 1521 	jz	00392$
      0025EE 02 2A C3         [24] 1522 	ljmp	00109$
      0025F1                       1523 00392$:
      0025F1 90 80 01         [24] 1524 	mov	dptr,#_i1
      0025F4 E0               [24] 1525 	movx	a,@dptr
      0025F5 60 03            [24] 1526 	jz	00393$
      0025F7 02 2A C3         [24] 1527 	ljmp	00109$
      0025FA                       1528 00393$:
                                   1529 ;	life.c:221: show(1);
      0025FA 75 82 01         [24] 1530 	mov	dpl,#0x01
      0025FD 12 20 A9         [24] 1531 	lcall	_show
                                   1532 ;	life.c:154: fixed = 1;
      002600 90 8C 10         [24] 1533 	mov	dptr,#_fixed
      002603 74 01            [12] 1534 	mov	a,#0x01
      002605 F0               [24] 1535 	movx	@dptr,a
                                   1536 ;	life.c:155: cycle2 = 1;
      002606 90 8C 11         [24] 1537 	mov	dptr,#_cycle2
      002609 F0               [24] 1538 	movx	@dptr,a
                                   1539 ;	life.c:156: bstep = 0;
      00260A 90 8C 0E         [24] 1540 	mov	dptr,#_bstep
      00260D E4               [12] 1541 	clr	a
      00260E F0               [24] 1542 	movx	@dptr,a
                                   1543 ;	life.c:158: for (y = 0; y < H; y++) {
      00260F 90 8C 04         [24] 1544 	mov	dptr,#_y
      002612 F0               [24] 1545 	movx	@dptr,a
      002613 A3               [24] 1546 	inc	dptr
      002614 F0               [24] 1547 	movx	@dptr,a
      002615                       1548 00179$:
                                   1549 ;	life.c:159: putchar(busy[bstep]); putchar('\r');
      002615 90 8C 0E         [24] 1550 	mov	dptr,#_bstep
      002618 E0               [24] 1551 	movx	a,@dptr
      002619 90 2B 27         [24] 1552 	mov	dptr,#_busy
      00261C 93               [24] 1553 	movc	a,@a+dptr
      00261D FF               [12] 1554 	mov	r7,a
      00261E 7E 00            [12] 1555 	mov	r6,#0x00
      002620 8F 82            [24] 1556 	mov	dpl,r7
      002622 8E 83            [24] 1557 	mov	dph,r6
      002624 12 20 75         [24] 1558 	lcall	_putchar
      002627 90 00 0D         [24] 1559 	mov	dptr,#0x000d
      00262A 12 20 75         [24] 1560 	lcall	_putchar
                                   1561 ;	life.c:160: bstep = (bstep + 1) & 3;
      00262D 90 8C 0E         [24] 1562 	mov	dptr,#_bstep
      002630 E0               [24] 1563 	movx	a,@dptr
      002631 FF               [12] 1564 	mov	r7,a
      002632 0F               [12] 1565 	inc	r7
      002633 74 03            [12] 1566 	mov	a,#0x03
      002635 5F               [12] 1567 	anl	a,r7
      002636 F0               [24] 1568 	movx	@dptr,a
                                   1569 ;	life.c:161: for (x = 0; x < W; x++) {
      002637 90 8C 02         [24] 1570 	mov	dptr,#_x
      00263A E4               [12] 1571 	clr	a
      00263B F0               [24] 1572 	movx	@dptr,a
      00263C A3               [24] 1573 	inc	dptr
      00263D F0               [24] 1574 	movx	@dptr,a
      00263E                       1575 00177$:
                                   1576 ;	life.c:162: n = -u[A2D(W, y, x)];
      00263E 90 8C 04         [24] 1577 	mov	dptr,#_y
      002641 E0               [24] 1578 	movx	a,@dptr
      002642 FE               [12] 1579 	mov	r6,a
      002643 A3               [24] 1580 	inc	dptr
      002644 E0               [24] 1581 	movx	a,@dptr
      002645 FF               [12] 1582 	mov	r7,a
      002646 A8 10            [24] 1583 	mov	r0,_bp
      002648 08               [12] 1584 	inc	r0
      002649 A6 06            [24] 1585 	mov	@r0,ar6
      00264B EF               [12] 1586 	mov	a,r7
      00264C C4               [12] 1587 	swap	a
      00264D 23               [12] 1588 	rl	a
      00264E 54 E0            [12] 1589 	anl	a,#0xe0
      002650 C6               [12] 1590 	xch	a,@r0
      002651 C4               [12] 1591 	swap	a
      002652 23               [12] 1592 	rl	a
      002653 C6               [12] 1593 	xch	a,@r0
      002654 66               [12] 1594 	xrl	a,@r0
      002655 C6               [12] 1595 	xch	a,@r0
      002656 54 E0            [12] 1596 	anl	a,#0xe0
      002658 C6               [12] 1597 	xch	a,@r0
      002659 66               [12] 1598 	xrl	a,@r0
      00265A 08               [12] 1599 	inc	r0
      00265B F6               [12] 1600 	mov	@r0,a
      00265C 90 8C 02         [24] 1601 	mov	dptr,#_x
      00265F E0               [24] 1602 	movx	a,@dptr
      002660 FA               [12] 1603 	mov	r2,a
      002661 A3               [24] 1604 	inc	dptr
      002662 E0               [24] 1605 	movx	a,@dptr
      002663 FB               [12] 1606 	mov	r3,a
      002664 A8 10            [24] 1607 	mov	r0,_bp
      002666 08               [12] 1608 	inc	r0
      002667 E5 10            [12] 1609 	mov	a,_bp
      002669 24 03            [12] 1610 	add	a,#0x03
      00266B F9               [12] 1611 	mov	r1,a
      00266C EA               [12] 1612 	mov	a,r2
      00266D 26               [12] 1613 	add	a,@r0
      00266E F7               [12] 1614 	mov	@r1,a
      00266F EB               [12] 1615 	mov	a,r3
      002670 08               [12] 1616 	inc	r0
      002671 36               [12] 1617 	addc	a,@r0
      002672 09               [12] 1618 	inc	r1
      002673 F7               [12] 1619 	mov	@r1,a
      002674 E5 10            [12] 1620 	mov	a,_bp
      002676 24 03            [12] 1621 	add	a,#0x03
      002678 F8               [12] 1622 	mov	r0,a
      002679 E6               [12] 1623 	mov	a,@r0
      00267A 24 02            [12] 1624 	add	a,#_u
      00267C F5 82            [12] 1625 	mov	dpl,a
      00267E 08               [12] 1626 	inc	r0
      00267F E6               [12] 1627 	mov	a,@r0
      002680 34 84            [12] 1628 	addc	a,#(_u >> 8)
      002682 F5 83            [12] 1629 	mov	dph,a
      002684 E0               [24] 1630 	movx	a,@dptr
      002685 FD               [12] 1631 	mov	r5,a
      002686 E5 10            [12] 1632 	mov	a,_bp
      002688 24 05            [12] 1633 	add	a,#0x05
      00268A F8               [12] 1634 	mov	r0,a
      00268B C3               [12] 1635 	clr	c
      00268C E4               [12] 1636 	clr	a
      00268D 9D               [12] 1637 	subb	a,r5
      00268E F6               [12] 1638 	mov	@r0,a
                                   1639 ;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00268F 74 1F            [12] 1640 	mov	a,#0x1f
      002691 2E               [12] 1641 	add	a,r6
      002692 FC               [12] 1642 	mov	r4,a
      002693 E4               [12] 1643 	clr	a
      002694 3F               [12] 1644 	addc	a,r7
      002695 FD               [12] 1645 	mov	r5,a
      002696 C0 07            [24] 1646 	push	ar7
      002698 C0 06            [24] 1647 	push	ar6
      00269A C0 03            [24] 1648 	push	ar3
      00269C C0 02            [24] 1649 	push	ar2
      00269E 74 20            [12] 1650 	mov	a,#0x20
      0026A0 C0 E0            [24] 1651 	push	acc
      0026A2 E4               [12] 1652 	clr	a
      0026A3 C0 E0            [24] 1653 	push	acc
      0026A5 8C 82            [24] 1654 	mov	dpl,r4
      0026A7 8D 83            [24] 1655 	mov	dph,r5
      0026A9 12 2C 44         [24] 1656 	lcall	__modsint
      0026AC AC 82            [24] 1657 	mov	r4,dpl
      0026AE AD 83            [24] 1658 	mov	r5,dph
      0026B0 15 81            [12] 1659 	dec	sp
      0026B2 15 81            [12] 1660 	dec	sp
      0026B4 D0 02            [24] 1661 	pop	ar2
      0026B6 D0 03            [24] 1662 	pop	ar3
      0026B8 E5 10            [12] 1663 	mov	a,_bp
      0026BA 24 06            [12] 1664 	add	a,#0x06
      0026BC F8               [12] 1665 	mov	r0,a
      0026BD A6 04            [24] 1666 	mov	@r0,ar4
      0026BF ED               [12] 1667 	mov	a,r5
      0026C0 C4               [12] 1668 	swap	a
      0026C1 23               [12] 1669 	rl	a
      0026C2 54 E0            [12] 1670 	anl	a,#0xe0
      0026C4 C6               [12] 1671 	xch	a,@r0
      0026C5 C4               [12] 1672 	swap	a
      0026C6 23               [12] 1673 	rl	a
      0026C7 C6               [12] 1674 	xch	a,@r0
      0026C8 66               [12] 1675 	xrl	a,@r0
      0026C9 C6               [12] 1676 	xch	a,@r0
      0026CA 54 E0            [12] 1677 	anl	a,#0xe0
      0026CC C6               [12] 1678 	xch	a,@r0
      0026CD 66               [12] 1679 	xrl	a,@r0
      0026CE 08               [12] 1680 	inc	r0
      0026CF F6               [12] 1681 	mov	@r0,a
      0026D0 74 1F            [12] 1682 	mov	a,#0x1f
      0026D2 2A               [12] 1683 	add	a,r2
      0026D3 FC               [12] 1684 	mov	r4,a
      0026D4 E4               [12] 1685 	clr	a
      0026D5 3B               [12] 1686 	addc	a,r3
      0026D6 FD               [12] 1687 	mov	r5,a
      0026D7 C0 03            [24] 1688 	push	ar3
      0026D9 C0 02            [24] 1689 	push	ar2
      0026DB 74 20            [12] 1690 	mov	a,#0x20
      0026DD C0 E0            [24] 1691 	push	acc
      0026DF E4               [12] 1692 	clr	a
      0026E0 C0 E0            [24] 1693 	push	acc
      0026E2 8C 82            [24] 1694 	mov	dpl,r4
      0026E4 8D 83            [24] 1695 	mov	dph,r5
      0026E6 12 2C 44         [24] 1696 	lcall	__modsint
      0026E9 C8               [12] 1697 	xch	a,r0
      0026EA E5 10            [12] 1698 	mov	a,_bp
      0026EC 24 08            [12] 1699 	add	a,#0x08
      0026EE C8               [12] 1700 	xch	a,r0
      0026EF A6 82            [24] 1701 	mov	@r0,dpl
      0026F1 08               [12] 1702 	inc	r0
      0026F2 A6 83            [24] 1703 	mov	@r0,dph
      0026F4 15 81            [12] 1704 	dec	sp
      0026F6 15 81            [12] 1705 	dec	sp
      0026F8 D0 02            [24] 1706 	pop	ar2
      0026FA D0 03            [24] 1707 	pop	ar3
      0026FC E5 10            [12] 1708 	mov	a,_bp
      0026FE 24 06            [12] 1709 	add	a,#0x06
      002700 F8               [12] 1710 	mov	r0,a
      002701 E5 10            [12] 1711 	mov	a,_bp
      002703 24 08            [12] 1712 	add	a,#0x08
      002705 F9               [12] 1713 	mov	r1,a
      002706 E7               [12] 1714 	mov	a,@r1
      002707 26               [12] 1715 	add	a,@r0
      002708 FC               [12] 1716 	mov	r4,a
      002709 09               [12] 1717 	inc	r1
      00270A E7               [12] 1718 	mov	a,@r1
      00270B 08               [12] 1719 	inc	r0
      00270C 36               [12] 1720 	addc	a,@r0
      00270D FD               [12] 1721 	mov	r5,a
      00270E EC               [12] 1722 	mov	a,r4
      00270F 24 02            [12] 1723 	add	a,#_u
      002711 F5 82            [12] 1724 	mov	dpl,a
      002713 ED               [12] 1725 	mov	a,r5
      002714 34 84            [12] 1726 	addc	a,#(_u >> 8)
      002716 F5 83            [12] 1727 	mov	dph,a
      002718 E0               [24] 1728 	movx	a,@dptr
      002719 FD               [12] 1729 	mov	r5,a
      00271A E5 10            [12] 1730 	mov	a,_bp
      00271C 24 05            [12] 1731 	add	a,#0x05
      00271E F8               [12] 1732 	mov	r0,a
      00271F ED               [12] 1733 	mov	a,r5
      002720 26               [12] 1734 	add	a,@r0
      002721 F6               [12] 1735 	mov	@r0,a
                                   1736 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002722 74 20            [12] 1737 	mov	a,#0x20
      002724 2A               [12] 1738 	add	a,r2
      002725 FC               [12] 1739 	mov	r4,a
      002726 E4               [12] 1740 	clr	a
      002727 3B               [12] 1741 	addc	a,r3
      002728 FD               [12] 1742 	mov	r5,a
      002729 C0 03            [24] 1743 	push	ar3
      00272B C0 02            [24] 1744 	push	ar2
      00272D 74 20            [12] 1745 	mov	a,#0x20
      00272F C0 E0            [24] 1746 	push	acc
      002731 E4               [12] 1747 	clr	a
      002732 C0 E0            [24] 1748 	push	acc
      002734 8C 82            [24] 1749 	mov	dpl,r4
      002736 8D 83            [24] 1750 	mov	dph,r5
      002738 12 2C 44         [24] 1751 	lcall	__modsint
      00273B C8               [12] 1752 	xch	a,r0
      00273C E5 10            [12] 1753 	mov	a,_bp
      00273E 24 0A            [12] 1754 	add	a,#0x0a
      002740 C8               [12] 1755 	xch	a,r0
      002741 A6 82            [24] 1756 	mov	@r0,dpl
      002743 08               [12] 1757 	inc	r0
      002744 A6 83            [24] 1758 	mov	@r0,dph
      002746 15 81            [12] 1759 	dec	sp
      002748 15 81            [12] 1760 	dec	sp
      00274A D0 02            [24] 1761 	pop	ar2
      00274C D0 03            [24] 1762 	pop	ar3
      00274E E5 10            [12] 1763 	mov	a,_bp
      002750 24 06            [12] 1764 	add	a,#0x06
      002752 F8               [12] 1765 	mov	r0,a
      002753 E5 10            [12] 1766 	mov	a,_bp
      002755 24 0A            [12] 1767 	add	a,#0x0a
      002757 F9               [12] 1768 	mov	r1,a
      002758 E7               [12] 1769 	mov	a,@r1
      002759 26               [12] 1770 	add	a,@r0
      00275A FC               [12] 1771 	mov	r4,a
      00275B 09               [12] 1772 	inc	r1
      00275C E7               [12] 1773 	mov	a,@r1
      00275D 08               [12] 1774 	inc	r0
      00275E 36               [12] 1775 	addc	a,@r0
      00275F FD               [12] 1776 	mov	r5,a
      002760 EC               [12] 1777 	mov	a,r4
      002761 24 02            [12] 1778 	add	a,#_u
      002763 F5 82            [12] 1779 	mov	dpl,a
      002765 ED               [12] 1780 	mov	a,r5
      002766 34 84            [12] 1781 	addc	a,#(_u >> 8)
      002768 F5 83            [12] 1782 	mov	dph,a
      00276A E0               [24] 1783 	movx	a,@dptr
      00276B FD               [12] 1784 	mov	r5,a
      00276C E5 10            [12] 1785 	mov	a,_bp
      00276E 24 05            [12] 1786 	add	a,#0x05
      002770 F8               [12] 1787 	mov	r0,a
      002771 ED               [12] 1788 	mov	a,r5
      002772 26               [12] 1789 	add	a,@r0
      002773 F6               [12] 1790 	mov	@r0,a
                                   1791 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002774 74 21            [12] 1792 	mov	a,#0x21
      002776 2A               [12] 1793 	add	a,r2
      002777 FC               [12] 1794 	mov	r4,a
      002778 E4               [12] 1795 	clr	a
      002779 3B               [12] 1796 	addc	a,r3
      00277A FD               [12] 1797 	mov	r5,a
      00277B C0 03            [24] 1798 	push	ar3
      00277D C0 02            [24] 1799 	push	ar2
      00277F 74 20            [12] 1800 	mov	a,#0x20
      002781 C0 E0            [24] 1801 	push	acc
      002783 E4               [12] 1802 	clr	a
      002784 C0 E0            [24] 1803 	push	acc
      002786 8C 82            [24] 1804 	mov	dpl,r4
      002788 8D 83            [24] 1805 	mov	dph,r5
      00278A 12 2C 44         [24] 1806 	lcall	__modsint
      00278D C8               [12] 1807 	xch	a,r0
      00278E E5 10            [12] 1808 	mov	a,_bp
      002790 24 0C            [12] 1809 	add	a,#0x0c
      002792 C8               [12] 1810 	xch	a,r0
      002793 A6 82            [24] 1811 	mov	@r0,dpl
      002795 08               [12] 1812 	inc	r0
      002796 A6 83            [24] 1813 	mov	@r0,dph
      002798 15 81            [12] 1814 	dec	sp
      00279A 15 81            [12] 1815 	dec	sp
      00279C D0 02            [24] 1816 	pop	ar2
      00279E D0 03            [24] 1817 	pop	ar3
      0027A0 D0 06            [24] 1818 	pop	ar6
      0027A2 D0 07            [24] 1819 	pop	ar7
      0027A4 E5 10            [12] 1820 	mov	a,_bp
      0027A6 24 06            [12] 1821 	add	a,#0x06
      0027A8 F8               [12] 1822 	mov	r0,a
      0027A9 E5 10            [12] 1823 	mov	a,_bp
      0027AB 24 0C            [12] 1824 	add	a,#0x0c
      0027AD F9               [12] 1825 	mov	r1,a
      0027AE E7               [12] 1826 	mov	a,@r1
      0027AF 26               [12] 1827 	add	a,@r0
      0027B0 FC               [12] 1828 	mov	r4,a
      0027B1 09               [12] 1829 	inc	r1
      0027B2 E7               [12] 1830 	mov	a,@r1
      0027B3 08               [12] 1831 	inc	r0
      0027B4 36               [12] 1832 	addc	a,@r0
      0027B5 FD               [12] 1833 	mov	r5,a
      0027B6 EC               [12] 1834 	mov	a,r4
      0027B7 24 02            [12] 1835 	add	a,#_u
      0027B9 F5 82            [12] 1836 	mov	dpl,a
      0027BB ED               [12] 1837 	mov	a,r5
      0027BC 34 84            [12] 1838 	addc	a,#(_u >> 8)
      0027BE F5 83            [12] 1839 	mov	dph,a
      0027C0 E0               [24] 1840 	movx	a,@dptr
      0027C1 FD               [12] 1841 	mov	r5,a
      0027C2 E5 10            [12] 1842 	mov	a,_bp
      0027C4 24 05            [12] 1843 	add	a,#0x05
      0027C6 F8               [12] 1844 	mov	r0,a
      0027C7 E5 10            [12] 1845 	mov	a,_bp
      0027C9 24 06            [12] 1846 	add	a,#0x06
      0027CB F9               [12] 1847 	mov	r1,a
      0027CC ED               [12] 1848 	mov	a,r5
      0027CD 26               [12] 1849 	add	a,@r0
      0027CE F7               [12] 1850 	mov	@r1,a
                                   1851 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027CF 74 20            [12] 1852 	mov	a,#0x20
      0027D1 2E               [12] 1853 	add	a,r6
      0027D2 FC               [12] 1854 	mov	r4,a
      0027D3 E4               [12] 1855 	clr	a
      0027D4 3F               [12] 1856 	addc	a,r7
      0027D5 FD               [12] 1857 	mov	r5,a
      0027D6 C0 07            [24] 1858 	push	ar7
      0027D8 C0 06            [24] 1859 	push	ar6
      0027DA C0 03            [24] 1860 	push	ar3
      0027DC C0 02            [24] 1861 	push	ar2
      0027DE 74 20            [12] 1862 	mov	a,#0x20
      0027E0 C0 E0            [24] 1863 	push	acc
      0027E2 E4               [12] 1864 	clr	a
      0027E3 C0 E0            [24] 1865 	push	acc
      0027E5 8C 82            [24] 1866 	mov	dpl,r4
      0027E7 8D 83            [24] 1867 	mov	dph,r5
      0027E9 12 2C 44         [24] 1868 	lcall	__modsint
      0027EC AC 82            [24] 1869 	mov	r4,dpl
      0027EE AD 83            [24] 1870 	mov	r5,dph
      0027F0 15 81            [12] 1871 	dec	sp
      0027F2 15 81            [12] 1872 	dec	sp
      0027F4 D0 02            [24] 1873 	pop	ar2
      0027F6 D0 03            [24] 1874 	pop	ar3
      0027F8 D0 06            [24] 1875 	pop	ar6
      0027FA D0 07            [24] 1876 	pop	ar7
      0027FC E5 10            [12] 1877 	mov	a,_bp
      0027FE 24 0E            [12] 1878 	add	a,#0x0e
      002800 F8               [12] 1879 	mov	r0,a
      002801 A6 04            [24] 1880 	mov	@r0,ar4
      002803 ED               [12] 1881 	mov	a,r5
      002804 C4               [12] 1882 	swap	a
      002805 23               [12] 1883 	rl	a
      002806 54 E0            [12] 1884 	anl	a,#0xe0
      002808 C6               [12] 1885 	xch	a,@r0
      002809 C4               [12] 1886 	swap	a
      00280A 23               [12] 1887 	rl	a
      00280B C6               [12] 1888 	xch	a,@r0
      00280C 66               [12] 1889 	xrl	a,@r0
      00280D C6               [12] 1890 	xch	a,@r0
      00280E 54 E0            [12] 1891 	anl	a,#0xe0
      002810 C6               [12] 1892 	xch	a,@r0
      002811 66               [12] 1893 	xrl	a,@r0
      002812 08               [12] 1894 	inc	r0
      002813 F6               [12] 1895 	mov	@r0,a
      002814 E5 10            [12] 1896 	mov	a,_bp
      002816 24 0E            [12] 1897 	add	a,#0x0e
      002818 F8               [12] 1898 	mov	r0,a
      002819 E5 10            [12] 1899 	mov	a,_bp
      00281B 24 08            [12] 1900 	add	a,#0x08
      00281D F9               [12] 1901 	mov	r1,a
      00281E E7               [12] 1902 	mov	a,@r1
      00281F 26               [12] 1903 	add	a,@r0
      002820 FC               [12] 1904 	mov	r4,a
      002821 09               [12] 1905 	inc	r1
      002822 E7               [12] 1906 	mov	a,@r1
      002823 08               [12] 1907 	inc	r0
      002824 36               [12] 1908 	addc	a,@r0
      002825 FD               [12] 1909 	mov	r5,a
      002826 EC               [12] 1910 	mov	a,r4
      002827 24 02            [12] 1911 	add	a,#_u
      002829 F5 82            [12] 1912 	mov	dpl,a
      00282B ED               [12] 1913 	mov	a,r5
      00282C 34 84            [12] 1914 	addc	a,#(_u >> 8)
      00282E F5 83            [12] 1915 	mov	dph,a
      002830 E0               [24] 1916 	movx	a,@dptr
      002831 FD               [12] 1917 	mov	r5,a
      002832 E5 10            [12] 1918 	mov	a,_bp
      002834 24 06            [12] 1919 	add	a,#0x06
      002836 F8               [12] 1920 	mov	r0,a
      002837 E5 10            [12] 1921 	mov	a,_bp
      002839 24 06            [12] 1922 	add	a,#0x06
      00283B F9               [12] 1923 	mov	r1,a
      00283C ED               [12] 1924 	mov	a,r5
      00283D 26               [12] 1925 	add	a,@r0
      00283E F7               [12] 1926 	mov	@r1,a
                                   1927 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00283F E5 10            [12] 1928 	mov	a,_bp
      002841 24 0E            [12] 1929 	add	a,#0x0e
      002843 F8               [12] 1930 	mov	r0,a
      002844 E5 10            [12] 1931 	mov	a,_bp
      002846 24 0A            [12] 1932 	add	a,#0x0a
      002848 F9               [12] 1933 	mov	r1,a
      002849 E7               [12] 1934 	mov	a,@r1
      00284A 26               [12] 1935 	add	a,@r0
      00284B FC               [12] 1936 	mov	r4,a
      00284C 09               [12] 1937 	inc	r1
      00284D E7               [12] 1938 	mov	a,@r1
      00284E 08               [12] 1939 	inc	r0
      00284F 36               [12] 1940 	addc	a,@r0
      002850 FD               [12] 1941 	mov	r5,a
      002851 EC               [12] 1942 	mov	a,r4
      002852 24 02            [12] 1943 	add	a,#_u
      002854 F5 82            [12] 1944 	mov	dpl,a
      002856 ED               [12] 1945 	mov	a,r5
      002857 34 84            [12] 1946 	addc	a,#(_u >> 8)
      002859 F5 83            [12] 1947 	mov	dph,a
      00285B E0               [24] 1948 	movx	a,@dptr
      00285C FD               [12] 1949 	mov	r5,a
      00285D E5 10            [12] 1950 	mov	a,_bp
      00285F 24 06            [12] 1951 	add	a,#0x06
      002861 F8               [12] 1952 	mov	r0,a
      002862 E5 10            [12] 1953 	mov	a,_bp
      002864 24 06            [12] 1954 	add	a,#0x06
      002866 F9               [12] 1955 	mov	r1,a
      002867 ED               [12] 1956 	mov	a,r5
      002868 26               [12] 1957 	add	a,@r0
      002869 F7               [12] 1958 	mov	@r1,a
                                   1959 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00286A E5 10            [12] 1960 	mov	a,_bp
      00286C 24 0E            [12] 1961 	add	a,#0x0e
      00286E F8               [12] 1962 	mov	r0,a
      00286F E5 10            [12] 1963 	mov	a,_bp
      002871 24 0C            [12] 1964 	add	a,#0x0c
      002873 F9               [12] 1965 	mov	r1,a
      002874 E7               [12] 1966 	mov	a,@r1
      002875 26               [12] 1967 	add	a,@r0
      002876 FC               [12] 1968 	mov	r4,a
      002877 09               [12] 1969 	inc	r1
      002878 E7               [12] 1970 	mov	a,@r1
      002879 08               [12] 1971 	inc	r0
      00287A 36               [12] 1972 	addc	a,@r0
      00287B FD               [12] 1973 	mov	r5,a
      00287C EC               [12] 1974 	mov	a,r4
      00287D 24 02            [12] 1975 	add	a,#_u
      00287F F5 82            [12] 1976 	mov	dpl,a
      002881 ED               [12] 1977 	mov	a,r5
      002882 34 84            [12] 1978 	addc	a,#(_u >> 8)
      002884 F5 83            [12] 1979 	mov	dph,a
      002886 E0               [24] 1980 	movx	a,@dptr
      002887 FD               [12] 1981 	mov	r5,a
      002888 E5 10            [12] 1982 	mov	a,_bp
      00288A 24 06            [12] 1983 	add	a,#0x06
      00288C F8               [12] 1984 	mov	r0,a
      00288D E5 10            [12] 1985 	mov	a,_bp
      00288F 24 0E            [12] 1986 	add	a,#0x0e
      002891 F9               [12] 1987 	mov	r1,a
      002892 ED               [12] 1988 	mov	a,r5
      002893 26               [12] 1989 	add	a,@r0
      002894 F7               [12] 1990 	mov	@r1,a
                                   1991 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002895 74 21            [12] 1992 	mov	a,#0x21
      002897 2E               [12] 1993 	add	a,r6
      002898 FE               [12] 1994 	mov	r6,a
      002899 E4               [12] 1995 	clr	a
      00289A 3F               [12] 1996 	addc	a,r7
      00289B FF               [12] 1997 	mov	r7,a
      00289C C0 03            [24] 1998 	push	ar3
      00289E C0 02            [24] 1999 	push	ar2
      0028A0 74 20            [12] 2000 	mov	a,#0x20
      0028A2 C0 E0            [24] 2001 	push	acc
      0028A4 E4               [12] 2002 	clr	a
      0028A5 C0 E0            [24] 2003 	push	acc
      0028A7 8E 82            [24] 2004 	mov	dpl,r6
      0028A9 8F 83            [24] 2005 	mov	dph,r7
      0028AB 12 2C 44         [24] 2006 	lcall	__modsint
      0028AE AE 82            [24] 2007 	mov	r6,dpl
      0028B0 AF 83            [24] 2008 	mov	r7,dph
      0028B2 15 81            [12] 2009 	dec	sp
      0028B4 15 81            [12] 2010 	dec	sp
      0028B6 D0 02            [24] 2011 	pop	ar2
      0028B8 D0 03            [24] 2012 	pop	ar3
      0028BA EF               [12] 2013 	mov	a,r7
      0028BB C4               [12] 2014 	swap	a
      0028BC 23               [12] 2015 	rl	a
      0028BD 54 E0            [12] 2016 	anl	a,#0xe0
      0028BF CE               [12] 2017 	xch	a,r6
      0028C0 C4               [12] 2018 	swap	a
      0028C1 23               [12] 2019 	rl	a
      0028C2 CE               [12] 2020 	xch	a,r6
      0028C3 6E               [12] 2021 	xrl	a,r6
      0028C4 CE               [12] 2022 	xch	a,r6
      0028C5 54 E0            [12] 2023 	anl	a,#0xe0
      0028C7 CE               [12] 2024 	xch	a,r6
      0028C8 6E               [12] 2025 	xrl	a,r6
      0028C9 FF               [12] 2026 	mov	r7,a
      0028CA E5 10            [12] 2027 	mov	a,_bp
      0028CC 24 08            [12] 2028 	add	a,#0x08
      0028CE F8               [12] 2029 	mov	r0,a
      0028CF E6               [12] 2030 	mov	a,@r0
      0028D0 2E               [12] 2031 	add	a,r6
      0028D1 FC               [12] 2032 	mov	r4,a
      0028D2 08               [12] 2033 	inc	r0
      0028D3 E6               [12] 2034 	mov	a,@r0
      0028D4 3F               [12] 2035 	addc	a,r7
      0028D5 FD               [12] 2036 	mov	r5,a
      0028D6 EC               [12] 2037 	mov	a,r4
      0028D7 24 02            [12] 2038 	add	a,#_u
      0028D9 F5 82            [12] 2039 	mov	dpl,a
      0028DB ED               [12] 2040 	mov	a,r5
      0028DC 34 84            [12] 2041 	addc	a,#(_u >> 8)
      0028DE F5 83            [12] 2042 	mov	dph,a
      0028E0 E0               [24] 2043 	movx	a,@dptr
      0028E1 FD               [12] 2044 	mov	r5,a
      0028E2 E5 10            [12] 2045 	mov	a,_bp
      0028E4 24 0E            [12] 2046 	add	a,#0x0e
      0028E6 F8               [12] 2047 	mov	r0,a
      0028E7 E5 10            [12] 2048 	mov	a,_bp
      0028E9 24 0E            [12] 2049 	add	a,#0x0e
      0028EB F9               [12] 2050 	mov	r1,a
      0028EC ED               [12] 2051 	mov	a,r5
      0028ED 26               [12] 2052 	add	a,@r0
      0028EE F7               [12] 2053 	mov	@r1,a
                                   2054 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028EF E5 10            [12] 2055 	mov	a,_bp
      0028F1 24 0A            [12] 2056 	add	a,#0x0a
      0028F3 F8               [12] 2057 	mov	r0,a
      0028F4 E6               [12] 2058 	mov	a,@r0
      0028F5 2E               [12] 2059 	add	a,r6
      0028F6 FC               [12] 2060 	mov	r4,a
      0028F7 08               [12] 2061 	inc	r0
      0028F8 E6               [12] 2062 	mov	a,@r0
      0028F9 3F               [12] 2063 	addc	a,r7
      0028FA FD               [12] 2064 	mov	r5,a
      0028FB EC               [12] 2065 	mov	a,r4
      0028FC 24 02            [12] 2066 	add	a,#_u
      0028FE F5 82            [12] 2067 	mov	dpl,a
      002900 ED               [12] 2068 	mov	a,r5
      002901 34 84            [12] 2069 	addc	a,#(_u >> 8)
      002903 F5 83            [12] 2070 	mov	dph,a
      002905 E0               [24] 2071 	movx	a,@dptr
      002906 FD               [12] 2072 	mov	r5,a
      002907 E5 10            [12] 2073 	mov	a,_bp
      002909 24 0E            [12] 2074 	add	a,#0x0e
      00290B F8               [12] 2075 	mov	r0,a
      00290C ED               [12] 2076 	mov	a,r5
      00290D 26               [12] 2077 	add	a,@r0
      00290E FD               [12] 2078 	mov	r5,a
                                   2079 ;	life.c:180: y1 = 1; x1 = 1;
      00290F 90 8C 08         [24] 2080 	mov	dptr,#_y1
      002912 74 01            [12] 2081 	mov	a,#0x01
      002914 F0               [24] 2082 	movx	@dptr,a
      002915 E4               [12] 2083 	clr	a
      002916 A3               [24] 2084 	inc	dptr
      002917 F0               [24] 2085 	movx	@dptr,a
      002918 90 8C 06         [24] 2086 	mov	dptr,#_x1
      00291B 04               [12] 2087 	inc	a
      00291C F0               [24] 2088 	movx	@dptr,a
      00291D E4               [12] 2089 	clr	a
      00291E A3               [24] 2090 	inc	dptr
      00291F F0               [24] 2091 	movx	@dptr,a
                                   2092 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002920 E5 10            [12] 2093 	mov	a,_bp
      002922 24 0C            [12] 2094 	add	a,#0x0c
      002924 F8               [12] 2095 	mov	r0,a
      002925 E6               [12] 2096 	mov	a,@r0
      002926 2E               [12] 2097 	add	a,r6
      002927 FE               [12] 2098 	mov	r6,a
      002928 08               [12] 2099 	inc	r0
      002929 E6               [12] 2100 	mov	a,@r0
      00292A 3F               [12] 2101 	addc	a,r7
      00292B FF               [12] 2102 	mov	r7,a
      00292C EE               [12] 2103 	mov	a,r6
      00292D 24 02            [12] 2104 	add	a,#_u
      00292F F5 82            [12] 2105 	mov	dpl,a
      002931 EF               [12] 2106 	mov	a,r7
      002932 34 84            [12] 2107 	addc	a,#(_u >> 8)
      002934 F5 83            [12] 2108 	mov	dph,a
      002936 E0               [24] 2109 	movx	a,@dptr
      002937 2D               [12] 2110 	add	a,r5
      002938 FF               [12] 2111 	mov	r7,a
      002939 90 8C 0F         [24] 2112 	mov	dptr,#_n
      00293C F0               [24] 2113 	movx	@dptr,a
                                   2114 ;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00293D E5 10            [12] 2115 	mov	a,_bp
      00293F 24 03            [12] 2116 	add	a,#0x03
      002941 F8               [12] 2117 	mov	r0,a
      002942 E6               [12] 2118 	mov	a,@r0
      002943 24 02            [12] 2119 	add	a,#_nu
      002945 FD               [12] 2120 	mov	r5,a
      002946 08               [12] 2121 	inc	r0
      002947 E6               [12] 2122 	mov	a,@r0
      002948 34 88            [12] 2123 	addc	a,#(_nu >> 8)
      00294A FE               [12] 2124 	mov	r6,a
      00294B BF 03 02         [24] 2125 	cjne	r7,#0x03,00394$
      00294E 80 20            [24] 2126 	sjmp	00199$
      002950                       2127 00394$:
      002950 BF 02 19         [24] 2128 	cjne	r7,#0x02,00198$
      002953 A8 10            [24] 2129 	mov	r0,_bp
      002955 08               [12] 2130 	inc	r0
      002956 EA               [12] 2131 	mov	a,r2
      002957 26               [12] 2132 	add	a,@r0
      002958 FA               [12] 2133 	mov	r2,a
      002959 EB               [12] 2134 	mov	a,r3
      00295A 08               [12] 2135 	inc	r0
      00295B 36               [12] 2136 	addc	a,@r0
      00295C FB               [12] 2137 	mov	r3,a
      00295D EA               [12] 2138 	mov	a,r2
      00295E 24 02            [12] 2139 	add	a,#_u
      002960 FA               [12] 2140 	mov	r2,a
      002961 EB               [12] 2141 	mov	a,r3
      002962 34 84            [12] 2142 	addc	a,#(_u >> 8)
      002964 FB               [12] 2143 	mov	r3,a
      002965 8A 82            [24] 2144 	mov	dpl,r2
      002967 8B 83            [24] 2145 	mov	dph,r3
      002969 E0               [24] 2146 	movx	a,@dptr
      00296A 70 04            [24] 2147 	jnz	00199$
      00296C                       2148 00198$:
                                   2149 ;	assignBit
      00296C C2 00            [12] 2150 	clr	b0
      00296E 80 02            [24] 2151 	sjmp	00200$
      002970                       2152 00199$:
                                   2153 ;	assignBit
      002970 D2 00            [12] 2154 	setb	b0
      002972                       2155 00200$:
      002972 A2 00            [12] 2156 	mov	c,b0
      002974 E4               [12] 2157 	clr	a
      002975 33               [12] 2158 	rlc	a
      002976 8D 82            [24] 2159 	mov	dpl,r5
      002978 8E 83            [24] 2160 	mov	dph,r6
      00297A F0               [24] 2161 	movx	@dptr,a
                                   2162 ;	life.c:185: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      00297B 90 8C 04         [24] 2163 	mov	dptr,#_y
      00297E E0               [24] 2164 	movx	a,@dptr
      00297F FE               [12] 2165 	mov	r6,a
      002980 A3               [24] 2166 	inc	dptr
      002981 E0               [24] 2167 	movx	a,@dptr
      002982 C4               [12] 2168 	swap	a
      002983 23               [12] 2169 	rl	a
      002984 54 E0            [12] 2170 	anl	a,#0xe0
      002986 CE               [12] 2171 	xch	a,r6
      002987 C4               [12] 2172 	swap	a
      002988 23               [12] 2173 	rl	a
      002989 CE               [12] 2174 	xch	a,r6
      00298A 6E               [12] 2175 	xrl	a,r6
      00298B CE               [12] 2176 	xch	a,r6
      00298C 54 E0            [12] 2177 	anl	a,#0xe0
      00298E CE               [12] 2178 	xch	a,r6
      00298F 6E               [12] 2179 	xrl	a,r6
      002990 FF               [12] 2180 	mov	r7,a
      002991 90 8C 02         [24] 2181 	mov	dptr,#_x
      002994 E0               [24] 2182 	movx	a,@dptr
      002995 FC               [12] 2183 	mov	r4,a
      002996 A3               [24] 2184 	inc	dptr
      002997 E0               [24] 2185 	movx	a,@dptr
      002998 FD               [12] 2186 	mov	r5,a
      002999 EC               [12] 2187 	mov	a,r4
      00299A 2E               [12] 2188 	add	a,r6
      00299B FE               [12] 2189 	mov	r6,a
      00299C ED               [12] 2190 	mov	a,r5
      00299D 3F               [12] 2191 	addc	a,r7
      00299E FF               [12] 2192 	mov	r7,a
      00299F EE               [12] 2193 	mov	a,r6
      0029A0 24 02            [12] 2194 	add	a,#_pu
      0029A2 F5 82            [12] 2195 	mov	dpl,a
      0029A4 EF               [12] 2196 	mov	a,r7
      0029A5 34 80            [12] 2197 	addc	a,#(_pu >> 8)
      0029A7 F5 83            [12] 2198 	mov	dph,a
      0029A9 E0               [24] 2199 	movx	a,@dptr
      0029AA FD               [12] 2200 	mov	r5,a
      0029AB EE               [12] 2201 	mov	a,r6
      0029AC 24 02            [12] 2202 	add	a,#_nu
      0029AE F5 82            [12] 2203 	mov	dpl,a
      0029B0 EF               [12] 2204 	mov	a,r7
      0029B1 34 88            [12] 2205 	addc	a,#(_nu >> 8)
      0029B3 F5 83            [12] 2206 	mov	dph,a
      0029B5 E0               [24] 2207 	movx	a,@dptr
      0029B6 FF               [12] 2208 	mov	r7,a
      0029B7 ED               [12] 2209 	mov	a,r5
      0029B8 B5 07 02         [24] 2210 	cjne	a,ar7,00398$
      0029BB 80 05            [24] 2211 	sjmp	00146$
      0029BD                       2212 00398$:
      0029BD 90 8C 11         [24] 2213 	mov	dptr,#_cycle2
      0029C0 E4               [12] 2214 	clr	a
      0029C1 F0               [24] 2215 	movx	@dptr,a
      0029C2                       2216 00146$:
                                   2217 ;	life.c:186: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      0029C2 90 8C 04         [24] 2218 	mov	dptr,#_y
      0029C5 E0               [24] 2219 	movx	a,@dptr
      0029C6 FE               [12] 2220 	mov	r6,a
      0029C7 A3               [24] 2221 	inc	dptr
      0029C8 E0               [24] 2222 	movx	a,@dptr
      0029C9 C4               [12] 2223 	swap	a
      0029CA 23               [12] 2224 	rl	a
      0029CB 54 E0            [12] 2225 	anl	a,#0xe0
      0029CD CE               [12] 2226 	xch	a,r6
      0029CE C4               [12] 2227 	swap	a
      0029CF 23               [12] 2228 	rl	a
      0029D0 CE               [12] 2229 	xch	a,r6
      0029D1 6E               [12] 2230 	xrl	a,r6
      0029D2 CE               [12] 2231 	xch	a,r6
      0029D3 54 E0            [12] 2232 	anl	a,#0xe0
      0029D5 CE               [12] 2233 	xch	a,r6
      0029D6 6E               [12] 2234 	xrl	a,r6
      0029D7 FF               [12] 2235 	mov	r7,a
      0029D8 90 8C 02         [24] 2236 	mov	dptr,#_x
      0029DB E0               [24] 2237 	movx	a,@dptr
      0029DC FC               [12] 2238 	mov	r4,a
      0029DD A3               [24] 2239 	inc	dptr
      0029DE E0               [24] 2240 	movx	a,@dptr
      0029DF FD               [12] 2241 	mov	r5,a
      0029E0 EC               [12] 2242 	mov	a,r4
      0029E1 2E               [12] 2243 	add	a,r6
      0029E2 FE               [12] 2244 	mov	r6,a
      0029E3 ED               [12] 2245 	mov	a,r5
      0029E4 3F               [12] 2246 	addc	a,r7
      0029E5 FF               [12] 2247 	mov	r7,a
      0029E6 EE               [12] 2248 	mov	a,r6
      0029E7 24 02            [12] 2249 	add	a,#_u
      0029E9 F5 82            [12] 2250 	mov	dpl,a
      0029EB EF               [12] 2251 	mov	a,r7
      0029EC 34 84            [12] 2252 	addc	a,#(_u >> 8)
      0029EE F5 83            [12] 2253 	mov	dph,a
      0029F0 E0               [24] 2254 	movx	a,@dptr
      0029F1 FD               [12] 2255 	mov	r5,a
      0029F2 EE               [12] 2256 	mov	a,r6
      0029F3 24 02            [12] 2257 	add	a,#_nu
      0029F5 F5 82            [12] 2258 	mov	dpl,a
      0029F7 EF               [12] 2259 	mov	a,r7
      0029F8 34 88            [12] 2260 	addc	a,#(_nu >> 8)
      0029FA F5 83            [12] 2261 	mov	dph,a
      0029FC E0               [24] 2262 	movx	a,@dptr
      0029FD FF               [12] 2263 	mov	r7,a
      0029FE ED               [12] 2264 	mov	a,r5
      0029FF B5 07 02         [24] 2265 	cjne	a,ar7,00399$
      002A02 80 05            [24] 2266 	sjmp	00178$
      002A04                       2267 00399$:
      002A04 90 8C 10         [24] 2268 	mov	dptr,#_fixed
      002A07 E4               [12] 2269 	clr	a
      002A08 F0               [24] 2270 	movx	@dptr,a
      002A09                       2271 00178$:
                                   2272 ;	life.c:161: for (x = 0; x < W; x++) {
      002A09 90 8C 02         [24] 2273 	mov	dptr,#_x
      002A0C E0               [24] 2274 	movx	a,@dptr
      002A0D 24 01            [12] 2275 	add	a,#0x01
      002A0F F0               [24] 2276 	movx	@dptr,a
      002A10 A3               [24] 2277 	inc	dptr
      002A11 E0               [24] 2278 	movx	a,@dptr
      002A12 34 00            [12] 2279 	addc	a,#0x00
      002A14 F0               [24] 2280 	movx	@dptr,a
      002A15 90 8C 02         [24] 2281 	mov	dptr,#_x
      002A18 E0               [24] 2282 	movx	a,@dptr
      002A19 FE               [12] 2283 	mov	r6,a
      002A1A A3               [24] 2284 	inc	dptr
      002A1B E0               [24] 2285 	movx	a,@dptr
      002A1C FF               [12] 2286 	mov	r7,a
      002A1D C3               [12] 2287 	clr	c
      002A1E EE               [12] 2288 	mov	a,r6
      002A1F 94 20            [12] 2289 	subb	a,#0x20
      002A21 EF               [12] 2290 	mov	a,r7
      002A22 64 80            [12] 2291 	xrl	a,#0x80
      002A24 94 80            [12] 2292 	subb	a,#0x80
      002A26 50 03            [24] 2293 	jnc	00400$
      002A28 02 26 3E         [24] 2294 	ljmp	00177$
      002A2B                       2295 00400$:
                                   2296 ;	life.c:158: for (y = 0; y < H; y++) {
      002A2B 90 8C 04         [24] 2297 	mov	dptr,#_y
      002A2E E0               [24] 2298 	movx	a,@dptr
      002A2F 24 01            [12] 2299 	add	a,#0x01
      002A31 F0               [24] 2300 	movx	@dptr,a
      002A32 A3               [24] 2301 	inc	dptr
      002A33 E0               [24] 2302 	movx	a,@dptr
      002A34 34 00            [12] 2303 	addc	a,#0x00
      002A36 F0               [24] 2304 	movx	@dptr,a
      002A37 90 8C 04         [24] 2305 	mov	dptr,#_y
      002A3A E0               [24] 2306 	movx	a,@dptr
      002A3B FE               [12] 2307 	mov	r6,a
      002A3C A3               [24] 2308 	inc	dptr
      002A3D E0               [24] 2309 	movx	a,@dptr
      002A3E FF               [12] 2310 	mov	r7,a
      002A3F C3               [12] 2311 	clr	c
      002A40 EE               [12] 2312 	mov	a,r6
      002A41 94 20            [12] 2313 	subb	a,#0x20
      002A43 EF               [12] 2314 	mov	a,r7
      002A44 64 80            [12] 2315 	xrl	a,#0x80
      002A46 94 80            [12] 2316 	subb	a,#0x80
      002A48 50 03            [24] 2317 	jnc	00401$
      002A4A 02 26 15         [24] 2318 	ljmp	00179$
      002A4D                       2319 00401$:
                                   2320 ;	life.c:190: memcpy(pu, u, sizeof (u));
      002A4D E4               [12] 2321 	clr	a
      002A4E C0 E0            [24] 2322 	push	acc
      002A50 74 04            [12] 2323 	mov	a,#0x04
      002A52 C0 E0            [24] 2324 	push	acc
      002A54 74 02            [12] 2325 	mov	a,#_u
      002A56 C0 E0            [24] 2326 	push	acc
      002A58 74 84            [12] 2327 	mov	a,#(_u >> 8)
      002A5A C0 E0            [24] 2328 	push	acc
      002A5C E4               [12] 2329 	clr	a
      002A5D C0 E0            [24] 2330 	push	acc
      002A5F 90 80 02         [24] 2331 	mov	dptr,#_pu
      002A62 75 F0 00         [24] 2332 	mov	b,#0x00
      002A65 12 2B 2B         [24] 2333 	lcall	___memcpy
      002A68 E5 81            [12] 2334 	mov	a,sp
      002A6A 24 FB            [12] 2335 	add	a,#0xfb
      002A6C F5 81            [12] 2336 	mov	sp,a
                                   2337 ;	life.c:191: memcpy(u, nu, sizeof (nu));
      002A6E E4               [12] 2338 	clr	a
      002A6F C0 E0            [24] 2339 	push	acc
      002A71 74 04            [12] 2340 	mov	a,#0x04
      002A73 C0 E0            [24] 2341 	push	acc
      002A75 74 02            [12] 2342 	mov	a,#_nu
      002A77 C0 E0            [24] 2343 	push	acc
      002A79 74 88            [12] 2344 	mov	a,#(_nu >> 8)
      002A7B C0 E0            [24] 2345 	push	acc
      002A7D E4               [12] 2346 	clr	a
      002A7E C0 E0            [24] 2347 	push	acc
      002A80 90 84 02         [24] 2348 	mov	dptr,#_u
      002A83 75 F0 00         [24] 2349 	mov	b,#0x00
      002A86 12 2B 2B         [24] 2350 	lcall	___memcpy
      002A89 E5 81            [12] 2351 	mov	a,sp
      002A8B 24 FB            [12] 2352 	add	a,#0xfb
      002A8D F5 81            [12] 2353 	mov	sp,a
                                   2354 ;	life.c:223: if (fixed || cycle2) {
      002A8F 90 8C 10         [24] 2355 	mov	dptr,#_fixed
      002A92 E0               [24] 2356 	movx	a,@dptr
      002A93 70 09            [24] 2357 	jnz	00106$
      002A95 90 8C 11         [24] 2358 	mov	dptr,#_cycle2
      002A98 E0               [24] 2359 	movx	a,@dptr
      002A99 70 03            [24] 2360 	jnz	00403$
      002A9B 02 25 E8         [24] 2361 	ljmp	00186$
      002A9E                       2362 00403$:
      002A9E                       2363 00106$:
                                   2364 ;	life.c:224: printstr("DONE\r\n");
      002A9E 7D 94            [12] 2365 	mov	r5,#___str_7
      002AA0 7E 2D            [12] 2366 	mov	r6,#(___str_7 >> 8)
      002AA2 7F 80            [12] 2367 	mov	r7,#0x80
                                   2368 ;	life.c:48: return;
      002AA4                       2369 00182$:
                                   2370 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AA4 8D 82            [24] 2371 	mov	dpl,r5
      002AA6 8E 83            [24] 2372 	mov	dph,r6
      002AA8 8F F0            [24] 2373 	mov	b,r7
      002AAA 12 2C 28         [24] 2374 	lcall	__gptrget
      002AAD FC               [12] 2375 	mov	r4,a
      002AAE 60 10            [24] 2376 	jz	00153$
      002AB0 7B 00            [12] 2377 	mov	r3,#0x00
      002AB2 8C 82            [24] 2378 	mov	dpl,r4
      002AB4 8B 83            [24] 2379 	mov	dph,r3
      002AB6 12 20 75         [24] 2380 	lcall	_putchar
      002AB9 0D               [12] 2381 	inc	r5
                                   2382 ;	life.c:224: printstr("DONE\r\n");
      002ABA BD 00 E7         [24] 2383 	cjne	r5,#0x00,00182$
      002ABD 0E               [12] 2384 	inc	r6
      002ABE 80 E4            [24] 2385 	sjmp	00182$
      002AC0                       2386 00153$:
                                   2387 ;	life.c:225: (void)getchar();
      002AC0 12 20 7A         [24] 2388 	lcall	_getchar
                                   2389 ;	life.c:226: break;
      002AC3                       2390 00109$:
                                   2391 ;	life.c:230: if (i1) {
      002AC3 90 80 01         [24] 2392 	mov	dptr,#_i1
      002AC6 E0               [24] 2393 	movx	a,@dptr
      002AC7 60 25            [24] 2394 	jz	00192$
                                   2395 ;	life.c:231: printstr("BREAK\r\n");
      002AC9 7D 9B            [12] 2396 	mov	r5,#___str_8
      002ACB 7E 2D            [12] 2397 	mov	r6,#(___str_8 >> 8)
      002ACD 7F 80            [12] 2398 	mov	r7,#0x80
                                   2399 ;	life.c:48: return;
      002ACF                       2400 00189$:
                                   2401 ;	life.c:46: for (; *s; s++) putchar(*s);
      002ACF 8D 82            [24] 2402 	mov	dpl,r5
      002AD1 8E 83            [24] 2403 	mov	dph,r6
      002AD3 8F F0            [24] 2404 	mov	b,r7
      002AD5 12 2C 28         [24] 2405 	lcall	__gptrget
      002AD8 FC               [12] 2406 	mov	r4,a
      002AD9 60 10            [24] 2407 	jz	00155$
      002ADB 7B 00            [12] 2408 	mov	r3,#0x00
      002ADD 8C 82            [24] 2409 	mov	dpl,r4
      002ADF 8B 83            [24] 2410 	mov	dph,r3
      002AE1 12 20 75         [24] 2411 	lcall	_putchar
      002AE4 0D               [12] 2412 	inc	r5
                                   2413 ;	life.c:231: printstr("BREAK\r\n");
      002AE5 BD 00 E7         [24] 2414 	cjne	r5,#0x00,00189$
      002AE8 0E               [12] 2415 	inc	r6
      002AE9 80 E4            [24] 2416 	sjmp	00189$
      002AEB                       2417 00155$:
                                   2418 ;	life.c:232: (void)getchar();
      002AEB 12 20 7A         [24] 2419 	lcall	_getchar
      002AEE                       2420 00192$:
                                   2421 ;	life.c:203: for (i0 = 0; !i0; ) {
      002AEE 90 80 00         [24] 2422 	mov	dptr,#_i0
      002AF1 E0               [24] 2423 	movx	a,@dptr
      002AF2 70 03            [24] 2424 	jnz	00409$
      002AF4 02 23 27         [24] 2425 	ljmp	00191$
      002AF7                       2426 00409$:
                                   2427 ;	life.c:236: EA = 0;
                                   2428 ;	assignBit
      002AF7 C2 AF            [12] 2429 	clr	_EA
                                   2430 ;	life.c:238: printstr("TERM\r\n");
      002AF9 7D A3            [12] 2431 	mov	r5,#___str_9
      002AFB 7E 2D            [12] 2432 	mov	r6,#(___str_9 >> 8)
      002AFD 7F 80            [12] 2433 	mov	r7,#0x80
                                   2434 ;	life.c:48: return;
      002AFF                       2435 00194$:
                                   2436 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AFF 8D 82            [24] 2437 	mov	dpl,r5
      002B01 8E 83            [24] 2438 	mov	dph,r6
      002B03 8F F0            [24] 2439 	mov	b,r7
      002B05 12 2C 28         [24] 2440 	lcall	__gptrget
      002B08 FC               [12] 2441 	mov	r4,a
      002B09 60 10            [24] 2442 	jz	00157$
      002B0B 7B 00            [12] 2443 	mov	r3,#0x00
      002B0D 8C 82            [24] 2444 	mov	dpl,r4
      002B0F 8B 83            [24] 2445 	mov	dph,r3
      002B11 12 20 75         [24] 2446 	lcall	_putchar
      002B14 0D               [12] 2447 	inc	r5
                                   2448 ;	life.c:238: printstr("TERM\r\n");
      002B15 BD 00 E7         [24] 2449 	cjne	r5,#0x00,00194$
      002B18 0E               [12] 2450 	inc	r6
      002B19 80 E4            [24] 2451 	sjmp	00194$
      002B1B                       2452 00157$:
                                   2453 ;	life.c:239: (void)getchar();
      002B1B 12 20 7A         [24] 2454 	lcall	_getchar
                                   2455 ;	life.c:243: __endasm;
      002B1E 02 00 00         [24] 2456 	ljmp	0
                                   2457 ;	life.c:244: }
      002B21 85 10 81         [24] 2458 	mov	sp,_bp
      002B24 D0 10            [24] 2459 	pop	_bp
      002B26 22               [24] 2460 	ret
                                   2461 	.area CSEG    (CODE)
                                   2462 	.area CONST   (CODE)
      002D50                       2463 _digits:
      002D50 30                    2464 	.db #0x30	; 48	'0'
      002D51 31                    2465 	.db #0x31	; 49	'1'
      002D52 32                    2466 	.db #0x32	; 50	'2'
      002D53 33                    2467 	.db #0x33	; 51	'3'
      002D54 34                    2468 	.db #0x34	; 52	'4'
      002D55 35                    2469 	.db #0x35	; 53	'5'
      002D56 36                    2470 	.db #0x36	; 54	'6'
      002D57 37                    2471 	.db #0x37	; 55	'7'
      002D58 38                    2472 	.db #0x38	; 56	'8'
      002D59 39                    2473 	.db #0x39	; 57	'9'
      002D5A 61                    2474 	.db #0x61	; 97	'a'
      002D5B 62                    2475 	.db #0x62	; 98	'b'
      002D5C 63                    2476 	.db #0x63	; 99	'c'
      002D5D 64                    2477 	.db #0x64	; 100	'd'
      002D5E 65                    2478 	.db #0x65	; 101	'e'
      002D5F 66                    2479 	.db #0x66	; 102	'f'
                                   2480 	.area CONST   (CODE)
      002D60                       2481 ___str_0:
      002D60 1B                    2482 	.db 0x1b
      002D61 5B 32 4A              2483 	.ascii "[2J"
      002D64 1B                    2484 	.db 0x1b
      002D65 5B 6D                 2485 	.ascii "[m"
      002D67 00                    2486 	.db 0x00
                                   2487 	.area CSEG    (CODE)
                                   2488 	.area CONST   (CODE)
      002D68                       2489 ___str_1:
      002D68 0D                    2490 	.db 0x0d
      002D69 0A                    2491 	.db 0x0a
      002D6A 00                    2492 	.db 0x00
                                   2493 	.area CSEG    (CODE)
                                   2494 	.area CONST   (CODE)
      002D6B                       2495 ___str_2:
      002D6B 4C 4F 41 44 20 3C     2496 	.ascii "LOAD <"
      002D71 00                    2497 	.db 0x00
                                   2498 	.area CSEG    (CODE)
                                   2499 	.area CONST   (CODE)
      002D72                       2500 ___str_3:
      002D72 3E                    2501 	.ascii ">"
      002D73 0D                    2502 	.db 0x0d
      002D74 0A                    2503 	.db 0x0a
      002D75 00                    2504 	.db 0x00
                                   2505 	.area CSEG    (CODE)
      002B27                       2506 _busy:
      002B27 5C                    2507 	.db #0x5c	; 92
      002B28 7C                    2508 	.db #0x7c	; 124
      002B29 2F                    2509 	.db #0x2f	; 47
      002B2A 2D                    2510 	.db #0x2d	; 45
                                   2511 	.area CONST   (CODE)
      002D76                       2512 ___str_4:
      002D76 1B                    2513 	.db 0x1b
      002D77 5B 32 4A              2514 	.ascii "[2J"
      002D7A 1B                    2515 	.db 0x1b
      002D7B 5B 6D 49 4E 49 54     2516 	.ascii "[mINIT"
      002D81 0D                    2517 	.db 0x0d
      002D82 0A                    2518 	.db 0x0a
      002D83 00                    2519 	.db 0x00
                                   2520 	.area CSEG    (CODE)
                                   2521 	.area CONST   (CODE)
      002D84                       2522 ___str_5:
      002D84 52 45 41 44 59        2523 	.ascii "READY"
      002D89 0D                    2524 	.db 0x0d
      002D8A 0A                    2525 	.db 0x0a
      002D8B 00                    2526 	.db 0x00
                                   2527 	.area CSEG    (CODE)
                                   2528 	.area CONST   (CODE)
      002D8C                       2529 ___str_6:
      002D8C 53 54 41 52 54        2530 	.ascii "START"
      002D91 0D                    2531 	.db 0x0d
      002D92 0A                    2532 	.db 0x0a
      002D93 00                    2533 	.db 0x00
                                   2534 	.area CSEG    (CODE)
                                   2535 	.area CONST   (CODE)
      002D94                       2536 ___str_7:
      002D94 44 4F 4E 45           2537 	.ascii "DONE"
      002D98 0D                    2538 	.db 0x0d
      002D99 0A                    2539 	.db 0x0a
      002D9A 00                    2540 	.db 0x00
                                   2541 	.area CSEG    (CODE)
                                   2542 	.area CONST   (CODE)
      002D9B                       2543 ___str_8:
      002D9B 42 52 45 41 4B        2544 	.ascii "BREAK"
      002DA0 0D                    2545 	.db 0x0d
      002DA1 0A                    2546 	.db 0x0a
      002DA2 00                    2547 	.db 0x00
                                   2548 	.area CSEG    (CODE)
                                   2549 	.area CONST   (CODE)
      002DA3                       2550 ___str_9:
      002DA3 54 45 52 4D           2551 	.ascii "TERM"
      002DA7 0D                    2552 	.db 0x0d
      002DA8 0A                    2553 	.db 0x0a
      002DA9 00                    2554 	.db 0x00
                                   2555 	.area CSEG    (CODE)
                                   2556 	.area XINIT   (CODE)
                                   2557 	.area CABS    (ABS,CODE)
