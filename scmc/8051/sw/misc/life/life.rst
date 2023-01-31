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
      0020B1 7D 35            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2D            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2B FD         [24]  565 	lcall	__gptrget
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
      0020ED 24 25            [12]  597 	add	a,#_digits
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
      00210A 24 25            [12]  614 	add	a,#_digits
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
      002139 24 25            [12]  645 	add	a,#_digits
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
      002154 24 25            [12]  661 	add	a,#_digits
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
      002183 24 25            [12]  692 	add	a,#_digits
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
      0021A0 24 25            [12]  709 	add	a,#_digits
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
      0021CF 24 25            [12]  740 	add	a,#_digits
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
      0021EA 24 25            [12]  756 	add	a,#_digits
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
      0021FF 7D 3D            [12]  769 	mov	r5,#___str_1
      002201 7E 2D            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2B FD         [24]  778 	lcall	__gptrget
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
      0022C9 7D 3D            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2D            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2B FD         [24]  930 	lcall	__gptrget
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
      002327 90 80 01         [24] 1027 	mov	dptr,#_i1
      00232A F0               [24] 1028 	movx	@dptr,a
      00232B                       1029 00186$:
                                   1030 ;	life.c:116: memset(u, 0, sizeof (u));
      00232B E4               [12] 1031 	clr	a
      00232C C0 E0            [24] 1032 	push	acc
      00232E 74 04            [12] 1033 	mov	a,#0x04
      002330 C0 E0            [24] 1034 	push	acc
      002332 E4               [12] 1035 	clr	a
      002333 C0 E0            [24] 1036 	push	acc
      002335 90 84 02         [24] 1037 	mov	dptr,#_u
      002338 75 F0 00         [24] 1038 	mov	b,#0x00
      00233B 12 2B 93         [24] 1039 	lcall	_memset
      00233E 15 81            [12] 1040 	dec	sp
      002340 15 81            [12] 1041 	dec	sp
      002342 15 81            [12] 1042 	dec	sp
                                   1043 ;	life.c:117: memset(pu, 0, sizeof (pu));
      002344 E4               [12] 1044 	clr	a
      002345 C0 E0            [24] 1045 	push	acc
      002347 74 04            [12] 1046 	mov	a,#0x04
      002349 C0 E0            [24] 1047 	push	acc
      00234B E4               [12] 1048 	clr	a
      00234C C0 E0            [24] 1049 	push	acc
      00234E 90 80 02         [24] 1050 	mov	dptr,#_pu
      002351 75 F0 00         [24] 1051 	mov	b,#0x00
      002354 12 2B 93         [24] 1052 	lcall	_memset
      002357 15 81            [12] 1053 	dec	sp
      002359 15 81            [12] 1054 	dec	sp
      00235B 15 81            [12] 1055 	dec	sp
                                   1056 ;	life.c:205: printstr("\033[2J\033[mINIT\r\n");
      00235D 7D 4B            [12] 1057 	mov	r5,#___str_4
      00235F 7E 2D            [12] 1058 	mov	r6,#(___str_4 >> 8)
      002361 7F 80            [12] 1059 	mov	r7,#0x80
                                   1060 ;	life.c:48: return;
      002363                       1061 00157$:
                                   1062 ;	life.c:46: for (; *s; s++) putchar(*s);
      002363 8D 82            [24] 1063 	mov	dpl,r5
      002365 8E 83            [24] 1064 	mov	dph,r6
      002367 8F F0            [24] 1065 	mov	b,r7
      002369 12 2B FD         [24] 1066 	lcall	__gptrget
      00236C FC               [12] 1067 	mov	r4,a
      00236D 60 10            [24] 1068 	jz	00115$
      00236F 7B 00            [12] 1069 	mov	r3,#0x00
      002371 8C 82            [24] 1070 	mov	dpl,r4
      002373 8B 83            [24] 1071 	mov	dph,r3
      002375 12 20 75         [24] 1072 	lcall	_putchar
      002378 0D               [12] 1073 	inc	r5
                                   1074 ;	life.c:205: printstr("\033[2J\033[mINIT\r\n");
      002379 BD 00 E7         [24] 1075 	cjne	r5,#0x00,00157$
      00237C 0E               [12] 1076 	inc	r6
      00237D 80 E4            [24] 1077 	sjmp	00157$
      00237F                       1078 00115$:
                                   1079 ;	life.c:206: (void)getchar();
      00237F 12 20 7A         [24] 1080 	lcall	_getchar
                                   1081 ;	life.c:123: j = 0;
      002382 90 8C 0A         [24] 1082 	mov	dptr,#_j
      002385 E4               [12] 1083 	clr	a
      002386 F0               [24] 1084 	movx	@dptr,a
      002387 A3               [24] 1085 	inc	dptr
      002388 F0               [24] 1086 	movx	@dptr,a
                                   1087 ;	life.c:125: printstr("LOAD <");
      002389 7D 40            [12] 1088 	mov	r5,#___str_2
      00238B 7E 2D            [12] 1089 	mov	r6,#(___str_2 >> 8)
      00238D 7F 80            [12] 1090 	mov	r7,#0x80
                                   1091 ;	life.c:48: return;
      00238F                       1092 00160$:
                                   1093 ;	life.c:46: for (; *s; s++) putchar(*s);
      00238F 8D 82            [24] 1094 	mov	dpl,r5
      002391 8E 83            [24] 1095 	mov	dph,r6
      002393 8F F0            [24] 1096 	mov	b,r7
      002395 12 2B FD         [24] 1097 	lcall	__gptrget
      002398 FC               [12] 1098 	mov	r4,a
      002399 60 10            [24] 1099 	jz	00117$
      00239B 7B 00            [12] 1100 	mov	r3,#0x00
      00239D 8C 82            [24] 1101 	mov	dpl,r4
      00239F 8B 83            [24] 1102 	mov	dph,r3
      0023A1 12 20 75         [24] 1103 	lcall	_putchar
      0023A4 0D               [12] 1104 	inc	r5
                                   1105 ;	life.c:125: printstr("LOAD <");
      0023A5 BD 00 E7         [24] 1106 	cjne	r5,#0x00,00160$
      0023A8 0E               [12] 1107 	inc	r6
      0023A9 80 E4            [24] 1108 	sjmp	00160$
      0023AB                       1109 00117$:
                                   1110 ;	life.c:127: for (y = 0; y < H; y++)
      0023AB 90 8C 04         [24] 1111 	mov	dptr,#_y
      0023AE E4               [12] 1112 	clr	a
      0023AF F0               [24] 1113 	movx	@dptr,a
      0023B0 A3               [24] 1114 	inc	dptr
      0023B1 F0               [24] 1115 	movx	@dptr,a
      0023B2                       1116 00164$:
                                   1117 ;	life.c:128: for (x = 0; x < W; x++) {
      0023B2 90 8C 02         [24] 1118 	mov	dptr,#_x
      0023B5 E4               [12] 1119 	clr	a
      0023B6 F0               [24] 1120 	movx	@dptr,a
      0023B7 A3               [24] 1121 	inc	dptr
      0023B8 F0               [24] 1122 	movx	@dptr,a
      0023B9                       1123 00162$:
                                   1124 ;	life.c:129: c = getchar();
      0023B9 12 20 7A         [24] 1125 	lcall	_getchar
      0023BC AE 82            [24] 1126 	mov	r6,dpl
      0023BE AF 83            [24] 1127 	mov	r7,dph
      0023C0 90 8C 0C         [24] 1128 	mov	dptr,#_c
      0023C3 EE               [12] 1129 	mov	a,r6
      0023C4 F0               [24] 1130 	movx	@dptr,a
      0023C5 EF               [12] 1131 	mov	a,r7
      0023C6 A3               [24] 1132 	inc	dptr
      0023C7 F0               [24] 1133 	movx	@dptr,a
                                   1134 ;	life.c:130: if (c == (int)'0') {
      0023C8 BE 30 41         [24] 1135 	cjne	r6,#0x30,00124$
      0023CB BF 00 3E         [24] 1136 	cjne	r7,#0x00,00124$
                                   1137 ;	life.c:131: u[A2D(W, y, x)] = 0;
      0023CE 90 8C 04         [24] 1138 	mov	dptr,#_y
      0023D1 E0               [24] 1139 	movx	a,@dptr
      0023D2 FC               [12] 1140 	mov	r4,a
      0023D3 A3               [24] 1141 	inc	dptr
      0023D4 E0               [24] 1142 	movx	a,@dptr
      0023D5 C4               [12] 1143 	swap	a
      0023D6 23               [12] 1144 	rl	a
      0023D7 54 E0            [12] 1145 	anl	a,#0xe0
      0023D9 CC               [12] 1146 	xch	a,r4
      0023DA C4               [12] 1147 	swap	a
      0023DB 23               [12] 1148 	rl	a
      0023DC CC               [12] 1149 	xch	a,r4
      0023DD 6C               [12] 1150 	xrl	a,r4
      0023DE CC               [12] 1151 	xch	a,r4
      0023DF 54 E0            [12] 1152 	anl	a,#0xe0
      0023E1 CC               [12] 1153 	xch	a,r4
      0023E2 6C               [12] 1154 	xrl	a,r4
      0023E3 FD               [12] 1155 	mov	r5,a
      0023E4 90 8C 02         [24] 1156 	mov	dptr,#_x
      0023E7 E0               [24] 1157 	movx	a,@dptr
      0023E8 FA               [12] 1158 	mov	r2,a
      0023E9 A3               [24] 1159 	inc	dptr
      0023EA E0               [24] 1160 	movx	a,@dptr
      0023EB FB               [12] 1161 	mov	r3,a
      0023EC EA               [12] 1162 	mov	a,r2
      0023ED 2C               [12] 1163 	add	a,r4
      0023EE FC               [12] 1164 	mov	r4,a
      0023EF EB               [12] 1165 	mov	a,r3
      0023F0 3D               [12] 1166 	addc	a,r5
      0023F1 FD               [12] 1167 	mov	r5,a
      0023F2 EC               [12] 1168 	mov	a,r4
      0023F3 24 02            [12] 1169 	add	a,#_u
      0023F5 F5 82            [12] 1170 	mov	dpl,a
      0023F7 ED               [12] 1171 	mov	a,r5
      0023F8 34 84            [12] 1172 	addc	a,#(_u >> 8)
      0023FA F5 83            [12] 1173 	mov	dph,a
      0023FC E4               [12] 1174 	clr	a
      0023FD F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	life.c:132: j++;
      0023FE 90 8C 0A         [24] 1177 	mov	dptr,#_j
      002401 E0               [24] 1178 	movx	a,@dptr
      002402 24 01            [12] 1179 	add	a,#0x01
      002404 F0               [24] 1180 	movx	@dptr,a
      002405 A3               [24] 1181 	inc	dptr
      002406 E0               [24] 1182 	movx	a,@dptr
      002407 34 00            [12] 1183 	addc	a,#0x00
      002409 F0               [24] 1184 	movx	@dptr,a
      00240A 80 4D            [24] 1185 	sjmp	00163$
      00240C                       1186 00124$:
                                   1187 ;	life.c:133: } else if (c == (int)'1') {
      00240C BE 31 42         [24] 1188 	cjne	r6,#0x31,00122$
      00240F BF 00 3F         [24] 1189 	cjne	r7,#0x00,00122$
                                   1190 ;	life.c:134: u[A2D(W, y, x)] = 1;
      002412 90 8C 04         [24] 1191 	mov	dptr,#_y
      002415 E0               [24] 1192 	movx	a,@dptr
      002416 FC               [12] 1193 	mov	r4,a
      002417 A3               [24] 1194 	inc	dptr
      002418 E0               [24] 1195 	movx	a,@dptr
      002419 C4               [12] 1196 	swap	a
      00241A 23               [12] 1197 	rl	a
      00241B 54 E0            [12] 1198 	anl	a,#0xe0
      00241D CC               [12] 1199 	xch	a,r4
      00241E C4               [12] 1200 	swap	a
      00241F 23               [12] 1201 	rl	a
      002420 CC               [12] 1202 	xch	a,r4
      002421 6C               [12] 1203 	xrl	a,r4
      002422 CC               [12] 1204 	xch	a,r4
      002423 54 E0            [12] 1205 	anl	a,#0xe0
      002425 CC               [12] 1206 	xch	a,r4
      002426 6C               [12] 1207 	xrl	a,r4
      002427 FD               [12] 1208 	mov	r5,a
      002428 90 8C 02         [24] 1209 	mov	dptr,#_x
      00242B E0               [24] 1210 	movx	a,@dptr
      00242C FA               [12] 1211 	mov	r2,a
      00242D A3               [24] 1212 	inc	dptr
      00242E E0               [24] 1213 	movx	a,@dptr
      00242F FB               [12] 1214 	mov	r3,a
      002430 EA               [12] 1215 	mov	a,r2
      002431 2C               [12] 1216 	add	a,r4
      002432 FC               [12] 1217 	mov	r4,a
      002433 EB               [12] 1218 	mov	a,r3
      002434 3D               [12] 1219 	addc	a,r5
      002435 FD               [12] 1220 	mov	r5,a
      002436 EC               [12] 1221 	mov	a,r4
      002437 24 02            [12] 1222 	add	a,#_u
      002439 F5 82            [12] 1223 	mov	dpl,a
      00243B ED               [12] 1224 	mov	a,r5
      00243C 34 84            [12] 1225 	addc	a,#(_u >> 8)
      00243E F5 83            [12] 1226 	mov	dph,a
      002440 74 01            [12] 1227 	mov	a,#0x01
      002442 F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	life.c:135: j++;
      002443 90 8C 0A         [24] 1230 	mov	dptr,#_j
      002446 E0               [24] 1231 	movx	a,@dptr
      002447 24 01            [12] 1232 	add	a,#0x01
      002449 F0               [24] 1233 	movx	@dptr,a
      00244A A3               [24] 1234 	inc	dptr
      00244B E0               [24] 1235 	movx	a,@dptr
      00244C 34 00            [12] 1236 	addc	a,#0x00
      00244E F0               [24] 1237 	movx	@dptr,a
      00244F 80 08            [24] 1238 	sjmp	00163$
      002451                       1239 00122$:
                                   1240 ;	life.c:136: } else if (c == (int)'#') goto out;
      002451 BE 23 05         [24] 1241 	cjne	r6,#0x23,00359$
      002454 BF 00 02         [24] 1242 	cjne	r7,#0x00,00359$
      002457 80 44            [24] 1243 	sjmp	00135$
      002459                       1244 00359$:
      002459                       1245 00163$:
                                   1246 ;	life.c:128: for (x = 0; x < W; x++) {
      002459 90 8C 02         [24] 1247 	mov	dptr,#_x
      00245C E0               [24] 1248 	movx	a,@dptr
      00245D 24 01            [12] 1249 	add	a,#0x01
      00245F F0               [24] 1250 	movx	@dptr,a
      002460 A3               [24] 1251 	inc	dptr
      002461 E0               [24] 1252 	movx	a,@dptr
      002462 34 00            [12] 1253 	addc	a,#0x00
      002464 F0               [24] 1254 	movx	@dptr,a
      002465 90 8C 02         [24] 1255 	mov	dptr,#_x
      002468 E0               [24] 1256 	movx	a,@dptr
      002469 FE               [12] 1257 	mov	r6,a
      00246A A3               [24] 1258 	inc	dptr
      00246B E0               [24] 1259 	movx	a,@dptr
      00246C FF               [12] 1260 	mov	r7,a
      00246D C3               [12] 1261 	clr	c
      00246E EE               [12] 1262 	mov	a,r6
      00246F 94 20            [12] 1263 	subb	a,#0x20
      002471 EF               [12] 1264 	mov	a,r7
      002472 64 80            [12] 1265 	xrl	a,#0x80
      002474 94 80            [12] 1266 	subb	a,#0x80
      002476 50 03            [24] 1267 	jnc	00360$
      002478 02 23 B9         [24] 1268 	ljmp	00162$
      00247B                       1269 00360$:
                                   1270 ;	life.c:127: for (y = 0; y < H; y++)
      00247B 90 8C 04         [24] 1271 	mov	dptr,#_y
      00247E E0               [24] 1272 	movx	a,@dptr
      00247F 24 01            [12] 1273 	add	a,#0x01
      002481 F0               [24] 1274 	movx	@dptr,a
      002482 A3               [24] 1275 	inc	dptr
      002483 E0               [24] 1276 	movx	a,@dptr
      002484 34 00            [12] 1277 	addc	a,#0x00
      002486 F0               [24] 1278 	movx	@dptr,a
      002487 90 8C 04         [24] 1279 	mov	dptr,#_y
      00248A E0               [24] 1280 	movx	a,@dptr
      00248B FE               [12] 1281 	mov	r6,a
      00248C A3               [24] 1282 	inc	dptr
      00248D E0               [24] 1283 	movx	a,@dptr
      00248E FF               [12] 1284 	mov	r7,a
      00248F C3               [12] 1285 	clr	c
      002490 EE               [12] 1286 	mov	a,r6
      002491 94 20            [12] 1287 	subb	a,#0x20
      002493 EF               [12] 1288 	mov	a,r7
      002494 64 80            [12] 1289 	xrl	a,#0x80
      002496 94 80            [12] 1290 	subb	a,#0x80
      002498 50 03            [24] 1291 	jnc	00361$
      00249A 02 23 B2         [24] 1292 	ljmp	00164$
      00249D                       1293 00361$:
                                   1294 ;	life.c:139: out:
      00249D                       1295 00135$:
                                   1296 ;	life.c:140: if (c != (int)'#')
      00249D 90 8C 0C         [24] 1297 	mov	dptr,#_c
      0024A0 E0               [24] 1298 	movx	a,@dptr
      0024A1 FE               [12] 1299 	mov	r6,a
      0024A2 A3               [24] 1300 	inc	dptr
      0024A3 E0               [24] 1301 	movx	a,@dptr
      0024A4 FF               [12] 1302 	mov	r7,a
      0024A5 BE 23 05         [24] 1303 	cjne	r6,#0x23,00362$
      0024A8 BF 00 02         [24] 1304 	cjne	r7,#0x00,00362$
      0024AB 80 15            [24] 1305 	sjmp	00134$
      0024AD                       1306 00362$:
                                   1307 ;	life.c:141: while (1) {
      0024AD                       1308 00131$:
                                   1309 ;	life.c:142: c = getchar();
      0024AD 12 20 7A         [24] 1310 	lcall	_getchar
      0024B0 AE 82            [24] 1311 	mov	r6,dpl
      0024B2 AF 83            [24] 1312 	mov	r7,dph
      0024B4 90 8C 0C         [24] 1313 	mov	dptr,#_c
      0024B7 EE               [12] 1314 	mov	a,r6
      0024B8 F0               [24] 1315 	movx	@dptr,a
      0024B9 EF               [12] 1316 	mov	a,r7
      0024BA A3               [24] 1317 	inc	dptr
      0024BB F0               [24] 1318 	movx	@dptr,a
                                   1319 ;	life.c:143: if (c == (int)'#') break;
      0024BC BE 23 EE         [24] 1320 	cjne	r6,#0x23,00131$
      0024BF BF 00 EB         [24] 1321 	cjne	r7,#0x00,00131$
      0024C2                       1322 00134$:
                                   1323 ;	life.c:145: print16x(j);
      0024C2 90 8C 0A         [24] 1324 	mov	dptr,#_j
      0024C5 E0               [24] 1325 	movx	a,@dptr
      0024C6 FE               [12] 1326 	mov	r6,a
      0024C7 A3               [24] 1327 	inc	dptr
      0024C8 E0               [24] 1328 	movx	a,@dptr
                                   1329 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0024C9 8E 04            [24] 1330 	mov	ar4,r6
      0024CB FD               [12] 1331 	mov	r5,a
      0024CC C4               [12] 1332 	swap	a
      0024CD 54 0F            [12] 1333 	anl	a,#0x0f
      0024CF 30 E3 02         [24] 1334 	jnb	acc.3,00365$
      0024D2 44 F0            [12] 1335 	orl	a,#0xf0
      0024D4                       1336 00365$:
      0024D4 FE               [12] 1337 	mov	r6,a
      0024D5 33               [12] 1338 	rlc	a
      0024D6 95 E0            [12] 1339 	subb	a,acc
      0024D8 53 06 0F         [24] 1340 	anl	ar6,#0x0f
      0024DB 7F 00            [12] 1341 	mov	r7,#0x00
      0024DD EE               [12] 1342 	mov	a,r6
      0024DE 24 25            [12] 1343 	add	a,#_digits
      0024E0 F5 82            [12] 1344 	mov	dpl,a
      0024E2 EF               [12] 1345 	mov	a,r7
      0024E3 34 2D            [12] 1346 	addc	a,#(_digits >> 8)
      0024E5 F5 83            [12] 1347 	mov	dph,a
      0024E7 E4               [12] 1348 	clr	a
      0024E8 93               [24] 1349 	movc	a,@a+dptr
      0024E9 FF               [12] 1350 	mov	r7,a
      0024EA 7E 00            [12] 1351 	mov	r6,#0x00
      0024EC 8F 82            [24] 1352 	mov	dpl,r7
      0024EE 8E 83            [24] 1353 	mov	dph,r6
      0024F0 12 20 75         [24] 1354 	lcall	_putchar
                                   1355 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      0024F3 8D 07            [24] 1356 	mov	ar7,r5
      0024F5 53 07 0F         [24] 1357 	anl	ar7,#0x0f
      0024F8 7E 00            [12] 1358 	mov	r6,#0x00
      0024FA EF               [12] 1359 	mov	a,r7
      0024FB 24 25            [12] 1360 	add	a,#_digits
      0024FD F5 82            [12] 1361 	mov	dpl,a
      0024FF EE               [12] 1362 	mov	a,r6
      002500 34 2D            [12] 1363 	addc	a,#(_digits >> 8)
      002502 F5 83            [12] 1364 	mov	dph,a
      002504 E4               [12] 1365 	clr	a
      002505 93               [24] 1366 	movc	a,@a+dptr
      002506 FF               [12] 1367 	mov	r7,a
      002507 7E 00            [12] 1368 	mov	r6,#0x00
      002509 8F 82            [24] 1369 	mov	dpl,r7
      00250B 8E 83            [24] 1370 	mov	dph,r6
      00250D 12 20 75         [24] 1371 	lcall	_putchar
                                   1372 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      002510 8C 06            [24] 1373 	mov	ar6,r4
      002512 ED               [12] 1374 	mov	a,r5
      002513 C4               [12] 1375 	swap	a
      002514 CE               [12] 1376 	xch	a,r6
      002515 C4               [12] 1377 	swap	a
      002516 54 0F            [12] 1378 	anl	a,#0x0f
      002518 6E               [12] 1379 	xrl	a,r6
      002519 CE               [12] 1380 	xch	a,r6
      00251A 54 0F            [12] 1381 	anl	a,#0x0f
      00251C CE               [12] 1382 	xch	a,r6
      00251D 6E               [12] 1383 	xrl	a,r6
      00251E CE               [12] 1384 	xch	a,r6
      00251F 30 E3 02         [24] 1385 	jnb	acc.3,00366$
      002522 44 F0            [12] 1386 	orl	a,#0xf0
      002524                       1387 00366$:
      002524 53 06 0F         [24] 1388 	anl	ar6,#0x0f
      002527 7F 00            [12] 1389 	mov	r7,#0x00
      002529 EE               [12] 1390 	mov	a,r6
      00252A 24 25            [12] 1391 	add	a,#_digits
      00252C F5 82            [12] 1392 	mov	dpl,a
      00252E EF               [12] 1393 	mov	a,r7
      00252F 34 2D            [12] 1394 	addc	a,#(_digits >> 8)
      002531 F5 83            [12] 1395 	mov	dph,a
      002533 E4               [12] 1396 	clr	a
      002534 93               [24] 1397 	movc	a,@a+dptr
      002535 FF               [12] 1398 	mov	r7,a
      002536 7E 00            [12] 1399 	mov	r6,#0x00
      002538 8F 82            [24] 1400 	mov	dpl,r7
      00253A 8E 83            [24] 1401 	mov	dph,r6
      00253C 12 20 75         [24] 1402 	lcall	_putchar
                                   1403 ;	life.c:40: putchar(digits[a & 0xf]);
      00253F 53 04 0F         [24] 1404 	anl	ar4,#0x0f
      002542 7D 00            [12] 1405 	mov	r5,#0x00
      002544 EC               [12] 1406 	mov	a,r4
      002545 24 25            [12] 1407 	add	a,#_digits
      002547 F5 82            [12] 1408 	mov	dpl,a
      002549 ED               [12] 1409 	mov	a,r5
      00254A 34 2D            [12] 1410 	addc	a,#(_digits >> 8)
      00254C F5 83            [12] 1411 	mov	dph,a
      00254E E4               [12] 1412 	clr	a
      00254F 93               [24] 1413 	movc	a,@a+dptr
      002550 FF               [12] 1414 	mov	r7,a
      002551 7E 00            [12] 1415 	mov	r6,#0x00
      002553 8F 82            [24] 1416 	mov	dpl,r7
      002555 8E 83            [24] 1417 	mov	dph,r6
      002557 12 20 75         [24] 1418 	lcall	_putchar
                                   1419 ;	life.c:146: printstr(">\r\n");
      00255A 7D 47            [12] 1420 	mov	r5,#___str_3
      00255C 7E 2D            [12] 1421 	mov	r6,#(___str_3 >> 8)
      00255E 7F 80            [12] 1422 	mov	r7,#0x80
                                   1423 ;	life.c:48: return;
      002560                       1424 00167$:
                                   1425 ;	life.c:46: for (; *s; s++) putchar(*s);
      002560 8D 82            [24] 1426 	mov	dpl,r5
      002562 8E 83            [24] 1427 	mov	dph,r6
      002564 8F F0            [24] 1428 	mov	b,r7
      002566 12 2B FD         [24] 1429 	lcall	__gptrget
      002569 FC               [12] 1430 	mov	r4,a
      00256A 60 10            [24] 1431 	jz	00138$
      00256C 7B 00            [12] 1432 	mov	r3,#0x00
      00256E 8C 82            [24] 1433 	mov	dpl,r4
      002570 8B 83            [24] 1434 	mov	dph,r3
      002572 12 20 75         [24] 1435 	lcall	_putchar
      002575 0D               [12] 1436 	inc	r5
                                   1437 ;	life.c:146: printstr(">\r\n");
      002576 BD 00 E7         [24] 1438 	cjne	r5,#0x00,00167$
      002579 0E               [12] 1439 	inc	r6
      00257A 80 E4            [24] 1440 	sjmp	00167$
      00257C                       1441 00138$:
                                   1442 ;	life.c:209: show(0);
      00257C 75 82 00         [24] 1443 	mov	dpl,#0x00
      00257F 12 20 A9         [24] 1444 	lcall	_show
                                   1445 ;	life.c:211: printstr("READY\r\n");
      002582 7D 59            [12] 1446 	mov	r5,#___str_5
      002584 7E 2D            [12] 1447 	mov	r6,#(___str_5 >> 8)
      002586 7F 80            [12] 1448 	mov	r7,#0x80
                                   1449 ;	life.c:48: return;
      002588                       1450 00170$:
                                   1451 ;	life.c:46: for (; *s; s++) putchar(*s);
      002588 8D 82            [24] 1452 	mov	dpl,r5
      00258A 8E 83            [24] 1453 	mov	dph,r6
      00258C 8F F0            [24] 1454 	mov	b,r7
      00258E 12 2B FD         [24] 1455 	lcall	__gptrget
      002591 FC               [12] 1456 	mov	r4,a
      002592 60 10            [24] 1457 	jz	00104$
      002594 7B 00            [12] 1458 	mov	r3,#0x00
      002596 8C 82            [24] 1459 	mov	dpl,r4
      002598 8B 83            [24] 1460 	mov	dph,r3
      00259A 12 20 75         [24] 1461 	lcall	_putchar
      00259D 0D               [12] 1462 	inc	r5
                                   1463 ;	life.c:212: while (1) {
      00259E BD 00 E7         [24] 1464 	cjne	r5,#0x00,00170$
      0025A1 0E               [12] 1465 	inc	r6
      0025A2 80 E4            [24] 1466 	sjmp	00170$
      0025A4                       1467 00104$:
                                   1468 ;	life.c:213: c = getchar();
      0025A4 12 20 7A         [24] 1469 	lcall	_getchar
      0025A7 AE 82            [24] 1470 	mov	r6,dpl
      0025A9 AF 83            [24] 1471 	mov	r7,dph
      0025AB 90 8C 0C         [24] 1472 	mov	dptr,#_c
      0025AE EE               [12] 1473 	mov	a,r6
      0025AF F0               [24] 1474 	movx	@dptr,a
      0025B0 EF               [12] 1475 	mov	a,r7
      0025B1 A3               [24] 1476 	inc	dptr
      0025B2 F0               [24] 1477 	movx	@dptr,a
                                   1478 ;	life.c:214: if (c == (int)'S') break;
      0025B3 BE 53 EE         [24] 1479 	cjne	r6,#0x53,00104$
      0025B6 BF 00 EB         [24] 1480 	cjne	r7,#0x00,00104$
                                   1481 ;	life.c:74: generation[0] = 0;
      0025B9 90 8C 12         [24] 1482 	mov	dptr,#_generation
      0025BC E4               [12] 1483 	clr	a
      0025BD F0               [24] 1484 	movx	@dptr,a
      0025BE A3               [24] 1485 	inc	dptr
      0025BF F0               [24] 1486 	movx	@dptr,a
                                   1487 ;	life.c:75: generation[1] = 0;
      0025C0 90 8C 14         [24] 1488 	mov	dptr,#(_generation + 0x0002)
      0025C3 F0               [24] 1489 	movx	@dptr,a
      0025C4 A3               [24] 1490 	inc	dptr
      0025C5 F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	life.c:222: for (i1 = 0; !i0 && !i1; ) {
      0025C6                       1493 00181$:
      0025C6 90 80 00         [24] 1494 	mov	dptr,#_i0
      0025C9 E0               [24] 1495 	movx	a,@dptr
      0025CA 60 03            [24] 1496 	jz	00373$
      0025CC 02 2A 98         [24] 1497 	ljmp	00109$
      0025CF                       1498 00373$:
                                   1499 ;	life.c:223: show(1);
      0025CF 75 82 01         [24] 1500 	mov	dpl,#0x01
      0025D2 12 20 A9         [24] 1501 	lcall	_show
                                   1502 ;	life.c:154: fixed = 1;
      0025D5 90 8C 10         [24] 1503 	mov	dptr,#_fixed
      0025D8 74 01            [12] 1504 	mov	a,#0x01
      0025DA F0               [24] 1505 	movx	@dptr,a
                                   1506 ;	life.c:155: cycle2 = 1;
      0025DB 90 8C 11         [24] 1507 	mov	dptr,#_cycle2
      0025DE F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	life.c:156: bstep = 0;
      0025DF 90 8C 0E         [24] 1510 	mov	dptr,#_bstep
      0025E2 E4               [12] 1511 	clr	a
      0025E3 F0               [24] 1512 	movx	@dptr,a
                                   1513 ;	life.c:158: for (y = 0; y < H; y++) {
      0025E4 90 8C 04         [24] 1514 	mov	dptr,#_y
      0025E7 F0               [24] 1515 	movx	@dptr,a
      0025E8 A3               [24] 1516 	inc	dptr
      0025E9 F0               [24] 1517 	movx	@dptr,a
      0025EA                       1518 00174$:
                                   1519 ;	life.c:159: putchar(busy[bstep]); putchar('\r');
      0025EA 90 8C 0E         [24] 1520 	mov	dptr,#_bstep
      0025ED E0               [24] 1521 	movx	a,@dptr
      0025EE 90 2A FC         [24] 1522 	mov	dptr,#_busy
      0025F1 93               [24] 1523 	movc	a,@a+dptr
      0025F2 FF               [12] 1524 	mov	r7,a
      0025F3 7E 00            [12] 1525 	mov	r6,#0x00
      0025F5 8F 82            [24] 1526 	mov	dpl,r7
      0025F7 8E 83            [24] 1527 	mov	dph,r6
      0025F9 12 20 75         [24] 1528 	lcall	_putchar
      0025FC 90 00 0D         [24] 1529 	mov	dptr,#0x000d
      0025FF 12 20 75         [24] 1530 	lcall	_putchar
                                   1531 ;	life.c:160: bstep = (bstep + 1) & 3;
      002602 90 8C 0E         [24] 1532 	mov	dptr,#_bstep
      002605 E0               [24] 1533 	movx	a,@dptr
      002606 FF               [12] 1534 	mov	r7,a
      002607 0F               [12] 1535 	inc	r7
      002608 74 03            [12] 1536 	mov	a,#0x03
      00260A 5F               [12] 1537 	anl	a,r7
      00260B F0               [24] 1538 	movx	@dptr,a
                                   1539 ;	life.c:161: for (x = 0; x < W; x++) {
      00260C 90 8C 02         [24] 1540 	mov	dptr,#_x
      00260F E4               [12] 1541 	clr	a
      002610 F0               [24] 1542 	movx	@dptr,a
      002611 A3               [24] 1543 	inc	dptr
      002612 F0               [24] 1544 	movx	@dptr,a
      002613                       1545 00172$:
                                   1546 ;	life.c:162: n = -u[A2D(W, y, x)];
      002613 90 8C 04         [24] 1547 	mov	dptr,#_y
      002616 E0               [24] 1548 	movx	a,@dptr
      002617 FE               [12] 1549 	mov	r6,a
      002618 A3               [24] 1550 	inc	dptr
      002619 E0               [24] 1551 	movx	a,@dptr
      00261A FF               [12] 1552 	mov	r7,a
      00261B A8 10            [24] 1553 	mov	r0,_bp
      00261D 08               [12] 1554 	inc	r0
      00261E A6 06            [24] 1555 	mov	@r0,ar6
      002620 EF               [12] 1556 	mov	a,r7
      002621 C4               [12] 1557 	swap	a
      002622 23               [12] 1558 	rl	a
      002623 54 E0            [12] 1559 	anl	a,#0xe0
      002625 C6               [12] 1560 	xch	a,@r0
      002626 C4               [12] 1561 	swap	a
      002627 23               [12] 1562 	rl	a
      002628 C6               [12] 1563 	xch	a,@r0
      002629 66               [12] 1564 	xrl	a,@r0
      00262A C6               [12] 1565 	xch	a,@r0
      00262B 54 E0            [12] 1566 	anl	a,#0xe0
      00262D C6               [12] 1567 	xch	a,@r0
      00262E 66               [12] 1568 	xrl	a,@r0
      00262F 08               [12] 1569 	inc	r0
      002630 F6               [12] 1570 	mov	@r0,a
      002631 90 8C 02         [24] 1571 	mov	dptr,#_x
      002634 E0               [24] 1572 	movx	a,@dptr
      002635 FA               [12] 1573 	mov	r2,a
      002636 A3               [24] 1574 	inc	dptr
      002637 E0               [24] 1575 	movx	a,@dptr
      002638 FB               [12] 1576 	mov	r3,a
      002639 A8 10            [24] 1577 	mov	r0,_bp
      00263B 08               [12] 1578 	inc	r0
      00263C E5 10            [12] 1579 	mov	a,_bp
      00263E 24 03            [12] 1580 	add	a,#0x03
      002640 F9               [12] 1581 	mov	r1,a
      002641 EA               [12] 1582 	mov	a,r2
      002642 26               [12] 1583 	add	a,@r0
      002643 F7               [12] 1584 	mov	@r1,a
      002644 EB               [12] 1585 	mov	a,r3
      002645 08               [12] 1586 	inc	r0
      002646 36               [12] 1587 	addc	a,@r0
      002647 09               [12] 1588 	inc	r1
      002648 F7               [12] 1589 	mov	@r1,a
      002649 E5 10            [12] 1590 	mov	a,_bp
      00264B 24 03            [12] 1591 	add	a,#0x03
      00264D F8               [12] 1592 	mov	r0,a
      00264E E6               [12] 1593 	mov	a,@r0
      00264F 24 02            [12] 1594 	add	a,#_u
      002651 F5 82            [12] 1595 	mov	dpl,a
      002653 08               [12] 1596 	inc	r0
      002654 E6               [12] 1597 	mov	a,@r0
      002655 34 84            [12] 1598 	addc	a,#(_u >> 8)
      002657 F5 83            [12] 1599 	mov	dph,a
      002659 E0               [24] 1600 	movx	a,@dptr
      00265A FD               [12] 1601 	mov	r5,a
      00265B E5 10            [12] 1602 	mov	a,_bp
      00265D 24 05            [12] 1603 	add	a,#0x05
      00265F F8               [12] 1604 	mov	r0,a
      002660 C3               [12] 1605 	clr	c
      002661 E4               [12] 1606 	clr	a
      002662 9D               [12] 1607 	subb	a,r5
      002663 F6               [12] 1608 	mov	@r0,a
                                   1609 ;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002664 74 1F            [12] 1610 	mov	a,#0x1f
      002666 2E               [12] 1611 	add	a,r6
      002667 FC               [12] 1612 	mov	r4,a
      002668 E4               [12] 1613 	clr	a
      002669 3F               [12] 1614 	addc	a,r7
      00266A FD               [12] 1615 	mov	r5,a
      00266B C0 07            [24] 1616 	push	ar7
      00266D C0 06            [24] 1617 	push	ar6
      00266F C0 03            [24] 1618 	push	ar3
      002671 C0 02            [24] 1619 	push	ar2
      002673 74 20            [12] 1620 	mov	a,#0x20
      002675 C0 E0            [24] 1621 	push	acc
      002677 E4               [12] 1622 	clr	a
      002678 C0 E0            [24] 1623 	push	acc
      00267A 8C 82            [24] 1624 	mov	dpl,r4
      00267C 8D 83            [24] 1625 	mov	dph,r5
      00267E 12 2C 19         [24] 1626 	lcall	__modsint
      002681 AC 82            [24] 1627 	mov	r4,dpl
      002683 AD 83            [24] 1628 	mov	r5,dph
      002685 15 81            [12] 1629 	dec	sp
      002687 15 81            [12] 1630 	dec	sp
      002689 D0 02            [24] 1631 	pop	ar2
      00268B D0 03            [24] 1632 	pop	ar3
      00268D E5 10            [12] 1633 	mov	a,_bp
      00268F 24 06            [12] 1634 	add	a,#0x06
      002691 F8               [12] 1635 	mov	r0,a
      002692 A6 04            [24] 1636 	mov	@r0,ar4
      002694 ED               [12] 1637 	mov	a,r5
      002695 C4               [12] 1638 	swap	a
      002696 23               [12] 1639 	rl	a
      002697 54 E0            [12] 1640 	anl	a,#0xe0
      002699 C6               [12] 1641 	xch	a,@r0
      00269A C4               [12] 1642 	swap	a
      00269B 23               [12] 1643 	rl	a
      00269C C6               [12] 1644 	xch	a,@r0
      00269D 66               [12] 1645 	xrl	a,@r0
      00269E C6               [12] 1646 	xch	a,@r0
      00269F 54 E0            [12] 1647 	anl	a,#0xe0
      0026A1 C6               [12] 1648 	xch	a,@r0
      0026A2 66               [12] 1649 	xrl	a,@r0
      0026A3 08               [12] 1650 	inc	r0
      0026A4 F6               [12] 1651 	mov	@r0,a
      0026A5 74 1F            [12] 1652 	mov	a,#0x1f
      0026A7 2A               [12] 1653 	add	a,r2
      0026A8 FC               [12] 1654 	mov	r4,a
      0026A9 E4               [12] 1655 	clr	a
      0026AA 3B               [12] 1656 	addc	a,r3
      0026AB FD               [12] 1657 	mov	r5,a
      0026AC C0 03            [24] 1658 	push	ar3
      0026AE C0 02            [24] 1659 	push	ar2
      0026B0 74 20            [12] 1660 	mov	a,#0x20
      0026B2 C0 E0            [24] 1661 	push	acc
      0026B4 E4               [12] 1662 	clr	a
      0026B5 C0 E0            [24] 1663 	push	acc
      0026B7 8C 82            [24] 1664 	mov	dpl,r4
      0026B9 8D 83            [24] 1665 	mov	dph,r5
      0026BB 12 2C 19         [24] 1666 	lcall	__modsint
      0026BE C8               [12] 1667 	xch	a,r0
      0026BF E5 10            [12] 1668 	mov	a,_bp
      0026C1 24 08            [12] 1669 	add	a,#0x08
      0026C3 C8               [12] 1670 	xch	a,r0
      0026C4 A6 82            [24] 1671 	mov	@r0,dpl
      0026C6 08               [12] 1672 	inc	r0
      0026C7 A6 83            [24] 1673 	mov	@r0,dph
      0026C9 15 81            [12] 1674 	dec	sp
      0026CB 15 81            [12] 1675 	dec	sp
      0026CD D0 02            [24] 1676 	pop	ar2
      0026CF D0 03            [24] 1677 	pop	ar3
      0026D1 E5 10            [12] 1678 	mov	a,_bp
      0026D3 24 06            [12] 1679 	add	a,#0x06
      0026D5 F8               [12] 1680 	mov	r0,a
      0026D6 E5 10            [12] 1681 	mov	a,_bp
      0026D8 24 08            [12] 1682 	add	a,#0x08
      0026DA F9               [12] 1683 	mov	r1,a
      0026DB E7               [12] 1684 	mov	a,@r1
      0026DC 26               [12] 1685 	add	a,@r0
      0026DD FC               [12] 1686 	mov	r4,a
      0026DE 09               [12] 1687 	inc	r1
      0026DF E7               [12] 1688 	mov	a,@r1
      0026E0 08               [12] 1689 	inc	r0
      0026E1 36               [12] 1690 	addc	a,@r0
      0026E2 FD               [12] 1691 	mov	r5,a
      0026E3 EC               [12] 1692 	mov	a,r4
      0026E4 24 02            [12] 1693 	add	a,#_u
      0026E6 F5 82            [12] 1694 	mov	dpl,a
      0026E8 ED               [12] 1695 	mov	a,r5
      0026E9 34 84            [12] 1696 	addc	a,#(_u >> 8)
      0026EB F5 83            [12] 1697 	mov	dph,a
      0026ED E0               [24] 1698 	movx	a,@dptr
      0026EE FD               [12] 1699 	mov	r5,a
      0026EF E5 10            [12] 1700 	mov	a,_bp
      0026F1 24 05            [12] 1701 	add	a,#0x05
      0026F3 F8               [12] 1702 	mov	r0,a
      0026F4 ED               [12] 1703 	mov	a,r5
      0026F5 26               [12] 1704 	add	a,@r0
      0026F6 F6               [12] 1705 	mov	@r0,a
                                   1706 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026F7 74 20            [12] 1707 	mov	a,#0x20
      0026F9 2A               [12] 1708 	add	a,r2
      0026FA FC               [12] 1709 	mov	r4,a
      0026FB E4               [12] 1710 	clr	a
      0026FC 3B               [12] 1711 	addc	a,r3
      0026FD FD               [12] 1712 	mov	r5,a
      0026FE C0 03            [24] 1713 	push	ar3
      002700 C0 02            [24] 1714 	push	ar2
      002702 74 20            [12] 1715 	mov	a,#0x20
      002704 C0 E0            [24] 1716 	push	acc
      002706 E4               [12] 1717 	clr	a
      002707 C0 E0            [24] 1718 	push	acc
      002709 8C 82            [24] 1719 	mov	dpl,r4
      00270B 8D 83            [24] 1720 	mov	dph,r5
      00270D 12 2C 19         [24] 1721 	lcall	__modsint
      002710 C8               [12] 1722 	xch	a,r0
      002711 E5 10            [12] 1723 	mov	a,_bp
      002713 24 0A            [12] 1724 	add	a,#0x0a
      002715 C8               [12] 1725 	xch	a,r0
      002716 A6 82            [24] 1726 	mov	@r0,dpl
      002718 08               [12] 1727 	inc	r0
      002719 A6 83            [24] 1728 	mov	@r0,dph
      00271B 15 81            [12] 1729 	dec	sp
      00271D 15 81            [12] 1730 	dec	sp
      00271F D0 02            [24] 1731 	pop	ar2
      002721 D0 03            [24] 1732 	pop	ar3
      002723 E5 10            [12] 1733 	mov	a,_bp
      002725 24 06            [12] 1734 	add	a,#0x06
      002727 F8               [12] 1735 	mov	r0,a
      002728 E5 10            [12] 1736 	mov	a,_bp
      00272A 24 0A            [12] 1737 	add	a,#0x0a
      00272C F9               [12] 1738 	mov	r1,a
      00272D E7               [12] 1739 	mov	a,@r1
      00272E 26               [12] 1740 	add	a,@r0
      00272F FC               [12] 1741 	mov	r4,a
      002730 09               [12] 1742 	inc	r1
      002731 E7               [12] 1743 	mov	a,@r1
      002732 08               [12] 1744 	inc	r0
      002733 36               [12] 1745 	addc	a,@r0
      002734 FD               [12] 1746 	mov	r5,a
      002735 EC               [12] 1747 	mov	a,r4
      002736 24 02            [12] 1748 	add	a,#_u
      002738 F5 82            [12] 1749 	mov	dpl,a
      00273A ED               [12] 1750 	mov	a,r5
      00273B 34 84            [12] 1751 	addc	a,#(_u >> 8)
      00273D F5 83            [12] 1752 	mov	dph,a
      00273F E0               [24] 1753 	movx	a,@dptr
      002740 FD               [12] 1754 	mov	r5,a
      002741 E5 10            [12] 1755 	mov	a,_bp
      002743 24 05            [12] 1756 	add	a,#0x05
      002745 F8               [12] 1757 	mov	r0,a
      002746 ED               [12] 1758 	mov	a,r5
      002747 26               [12] 1759 	add	a,@r0
      002748 F6               [12] 1760 	mov	@r0,a
                                   1761 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002749 74 21            [12] 1762 	mov	a,#0x21
      00274B 2A               [12] 1763 	add	a,r2
      00274C FC               [12] 1764 	mov	r4,a
      00274D E4               [12] 1765 	clr	a
      00274E 3B               [12] 1766 	addc	a,r3
      00274F FD               [12] 1767 	mov	r5,a
      002750 C0 03            [24] 1768 	push	ar3
      002752 C0 02            [24] 1769 	push	ar2
      002754 74 20            [12] 1770 	mov	a,#0x20
      002756 C0 E0            [24] 1771 	push	acc
      002758 E4               [12] 1772 	clr	a
      002759 C0 E0            [24] 1773 	push	acc
      00275B 8C 82            [24] 1774 	mov	dpl,r4
      00275D 8D 83            [24] 1775 	mov	dph,r5
      00275F 12 2C 19         [24] 1776 	lcall	__modsint
      002762 C8               [12] 1777 	xch	a,r0
      002763 E5 10            [12] 1778 	mov	a,_bp
      002765 24 0C            [12] 1779 	add	a,#0x0c
      002767 C8               [12] 1780 	xch	a,r0
      002768 A6 82            [24] 1781 	mov	@r0,dpl
      00276A 08               [12] 1782 	inc	r0
      00276B A6 83            [24] 1783 	mov	@r0,dph
      00276D 15 81            [12] 1784 	dec	sp
      00276F 15 81            [12] 1785 	dec	sp
      002771 D0 02            [24] 1786 	pop	ar2
      002773 D0 03            [24] 1787 	pop	ar3
      002775 D0 06            [24] 1788 	pop	ar6
      002777 D0 07            [24] 1789 	pop	ar7
      002779 E5 10            [12] 1790 	mov	a,_bp
      00277B 24 06            [12] 1791 	add	a,#0x06
      00277D F8               [12] 1792 	mov	r0,a
      00277E E5 10            [12] 1793 	mov	a,_bp
      002780 24 0C            [12] 1794 	add	a,#0x0c
      002782 F9               [12] 1795 	mov	r1,a
      002783 E7               [12] 1796 	mov	a,@r1
      002784 26               [12] 1797 	add	a,@r0
      002785 FC               [12] 1798 	mov	r4,a
      002786 09               [12] 1799 	inc	r1
      002787 E7               [12] 1800 	mov	a,@r1
      002788 08               [12] 1801 	inc	r0
      002789 36               [12] 1802 	addc	a,@r0
      00278A FD               [12] 1803 	mov	r5,a
      00278B EC               [12] 1804 	mov	a,r4
      00278C 24 02            [12] 1805 	add	a,#_u
      00278E F5 82            [12] 1806 	mov	dpl,a
      002790 ED               [12] 1807 	mov	a,r5
      002791 34 84            [12] 1808 	addc	a,#(_u >> 8)
      002793 F5 83            [12] 1809 	mov	dph,a
      002795 E0               [24] 1810 	movx	a,@dptr
      002796 FD               [12] 1811 	mov	r5,a
      002797 E5 10            [12] 1812 	mov	a,_bp
      002799 24 05            [12] 1813 	add	a,#0x05
      00279B F8               [12] 1814 	mov	r0,a
      00279C E5 10            [12] 1815 	mov	a,_bp
      00279E 24 06            [12] 1816 	add	a,#0x06
      0027A0 F9               [12] 1817 	mov	r1,a
      0027A1 ED               [12] 1818 	mov	a,r5
      0027A2 26               [12] 1819 	add	a,@r0
      0027A3 F7               [12] 1820 	mov	@r1,a
                                   1821 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027A4 74 20            [12] 1822 	mov	a,#0x20
      0027A6 2E               [12] 1823 	add	a,r6
      0027A7 FC               [12] 1824 	mov	r4,a
      0027A8 E4               [12] 1825 	clr	a
      0027A9 3F               [12] 1826 	addc	a,r7
      0027AA FD               [12] 1827 	mov	r5,a
      0027AB C0 07            [24] 1828 	push	ar7
      0027AD C0 06            [24] 1829 	push	ar6
      0027AF C0 03            [24] 1830 	push	ar3
      0027B1 C0 02            [24] 1831 	push	ar2
      0027B3 74 20            [12] 1832 	mov	a,#0x20
      0027B5 C0 E0            [24] 1833 	push	acc
      0027B7 E4               [12] 1834 	clr	a
      0027B8 C0 E0            [24] 1835 	push	acc
      0027BA 8C 82            [24] 1836 	mov	dpl,r4
      0027BC 8D 83            [24] 1837 	mov	dph,r5
      0027BE 12 2C 19         [24] 1838 	lcall	__modsint
      0027C1 AC 82            [24] 1839 	mov	r4,dpl
      0027C3 AD 83            [24] 1840 	mov	r5,dph
      0027C5 15 81            [12] 1841 	dec	sp
      0027C7 15 81            [12] 1842 	dec	sp
      0027C9 D0 02            [24] 1843 	pop	ar2
      0027CB D0 03            [24] 1844 	pop	ar3
      0027CD D0 06            [24] 1845 	pop	ar6
      0027CF D0 07            [24] 1846 	pop	ar7
      0027D1 E5 10            [12] 1847 	mov	a,_bp
      0027D3 24 0E            [12] 1848 	add	a,#0x0e
      0027D5 F8               [12] 1849 	mov	r0,a
      0027D6 A6 04            [24] 1850 	mov	@r0,ar4
      0027D8 ED               [12] 1851 	mov	a,r5
      0027D9 C4               [12] 1852 	swap	a
      0027DA 23               [12] 1853 	rl	a
      0027DB 54 E0            [12] 1854 	anl	a,#0xe0
      0027DD C6               [12] 1855 	xch	a,@r0
      0027DE C4               [12] 1856 	swap	a
      0027DF 23               [12] 1857 	rl	a
      0027E0 C6               [12] 1858 	xch	a,@r0
      0027E1 66               [12] 1859 	xrl	a,@r0
      0027E2 C6               [12] 1860 	xch	a,@r0
      0027E3 54 E0            [12] 1861 	anl	a,#0xe0
      0027E5 C6               [12] 1862 	xch	a,@r0
      0027E6 66               [12] 1863 	xrl	a,@r0
      0027E7 08               [12] 1864 	inc	r0
      0027E8 F6               [12] 1865 	mov	@r0,a
      0027E9 E5 10            [12] 1866 	mov	a,_bp
      0027EB 24 0E            [12] 1867 	add	a,#0x0e
      0027ED F8               [12] 1868 	mov	r0,a
      0027EE E5 10            [12] 1869 	mov	a,_bp
      0027F0 24 08            [12] 1870 	add	a,#0x08
      0027F2 F9               [12] 1871 	mov	r1,a
      0027F3 E7               [12] 1872 	mov	a,@r1
      0027F4 26               [12] 1873 	add	a,@r0
      0027F5 FC               [12] 1874 	mov	r4,a
      0027F6 09               [12] 1875 	inc	r1
      0027F7 E7               [12] 1876 	mov	a,@r1
      0027F8 08               [12] 1877 	inc	r0
      0027F9 36               [12] 1878 	addc	a,@r0
      0027FA FD               [12] 1879 	mov	r5,a
      0027FB EC               [12] 1880 	mov	a,r4
      0027FC 24 02            [12] 1881 	add	a,#_u
      0027FE F5 82            [12] 1882 	mov	dpl,a
      002800 ED               [12] 1883 	mov	a,r5
      002801 34 84            [12] 1884 	addc	a,#(_u >> 8)
      002803 F5 83            [12] 1885 	mov	dph,a
      002805 E0               [24] 1886 	movx	a,@dptr
      002806 FD               [12] 1887 	mov	r5,a
      002807 E5 10            [12] 1888 	mov	a,_bp
      002809 24 06            [12] 1889 	add	a,#0x06
      00280B F8               [12] 1890 	mov	r0,a
      00280C E5 10            [12] 1891 	mov	a,_bp
      00280E 24 06            [12] 1892 	add	a,#0x06
      002810 F9               [12] 1893 	mov	r1,a
      002811 ED               [12] 1894 	mov	a,r5
      002812 26               [12] 1895 	add	a,@r0
      002813 F7               [12] 1896 	mov	@r1,a
                                   1897 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002814 E5 10            [12] 1898 	mov	a,_bp
      002816 24 0E            [12] 1899 	add	a,#0x0e
      002818 F8               [12] 1900 	mov	r0,a
      002819 E5 10            [12] 1901 	mov	a,_bp
      00281B 24 0A            [12] 1902 	add	a,#0x0a
      00281D F9               [12] 1903 	mov	r1,a
      00281E E7               [12] 1904 	mov	a,@r1
      00281F 26               [12] 1905 	add	a,@r0
      002820 FC               [12] 1906 	mov	r4,a
      002821 09               [12] 1907 	inc	r1
      002822 E7               [12] 1908 	mov	a,@r1
      002823 08               [12] 1909 	inc	r0
      002824 36               [12] 1910 	addc	a,@r0
      002825 FD               [12] 1911 	mov	r5,a
      002826 EC               [12] 1912 	mov	a,r4
      002827 24 02            [12] 1913 	add	a,#_u
      002829 F5 82            [12] 1914 	mov	dpl,a
      00282B ED               [12] 1915 	mov	a,r5
      00282C 34 84            [12] 1916 	addc	a,#(_u >> 8)
      00282E F5 83            [12] 1917 	mov	dph,a
      002830 E0               [24] 1918 	movx	a,@dptr
      002831 FD               [12] 1919 	mov	r5,a
      002832 E5 10            [12] 1920 	mov	a,_bp
      002834 24 06            [12] 1921 	add	a,#0x06
      002836 F8               [12] 1922 	mov	r0,a
      002837 E5 10            [12] 1923 	mov	a,_bp
      002839 24 06            [12] 1924 	add	a,#0x06
      00283B F9               [12] 1925 	mov	r1,a
      00283C ED               [12] 1926 	mov	a,r5
      00283D 26               [12] 1927 	add	a,@r0
      00283E F7               [12] 1928 	mov	@r1,a
                                   1929 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00283F E5 10            [12] 1930 	mov	a,_bp
      002841 24 0E            [12] 1931 	add	a,#0x0e
      002843 F8               [12] 1932 	mov	r0,a
      002844 E5 10            [12] 1933 	mov	a,_bp
      002846 24 0C            [12] 1934 	add	a,#0x0c
      002848 F9               [12] 1935 	mov	r1,a
      002849 E7               [12] 1936 	mov	a,@r1
      00284A 26               [12] 1937 	add	a,@r0
      00284B FC               [12] 1938 	mov	r4,a
      00284C 09               [12] 1939 	inc	r1
      00284D E7               [12] 1940 	mov	a,@r1
      00284E 08               [12] 1941 	inc	r0
      00284F 36               [12] 1942 	addc	a,@r0
      002850 FD               [12] 1943 	mov	r5,a
      002851 EC               [12] 1944 	mov	a,r4
      002852 24 02            [12] 1945 	add	a,#_u
      002854 F5 82            [12] 1946 	mov	dpl,a
      002856 ED               [12] 1947 	mov	a,r5
      002857 34 84            [12] 1948 	addc	a,#(_u >> 8)
      002859 F5 83            [12] 1949 	mov	dph,a
      00285B E0               [24] 1950 	movx	a,@dptr
      00285C FD               [12] 1951 	mov	r5,a
      00285D E5 10            [12] 1952 	mov	a,_bp
      00285F 24 06            [12] 1953 	add	a,#0x06
      002861 F8               [12] 1954 	mov	r0,a
      002862 E5 10            [12] 1955 	mov	a,_bp
      002864 24 0E            [12] 1956 	add	a,#0x0e
      002866 F9               [12] 1957 	mov	r1,a
      002867 ED               [12] 1958 	mov	a,r5
      002868 26               [12] 1959 	add	a,@r0
      002869 F7               [12] 1960 	mov	@r1,a
                                   1961 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00286A 74 21            [12] 1962 	mov	a,#0x21
      00286C 2E               [12] 1963 	add	a,r6
      00286D FE               [12] 1964 	mov	r6,a
      00286E E4               [12] 1965 	clr	a
      00286F 3F               [12] 1966 	addc	a,r7
      002870 FF               [12] 1967 	mov	r7,a
      002871 C0 03            [24] 1968 	push	ar3
      002873 C0 02            [24] 1969 	push	ar2
      002875 74 20            [12] 1970 	mov	a,#0x20
      002877 C0 E0            [24] 1971 	push	acc
      002879 E4               [12] 1972 	clr	a
      00287A C0 E0            [24] 1973 	push	acc
      00287C 8E 82            [24] 1974 	mov	dpl,r6
      00287E 8F 83            [24] 1975 	mov	dph,r7
      002880 12 2C 19         [24] 1976 	lcall	__modsint
      002883 AE 82            [24] 1977 	mov	r6,dpl
      002885 AF 83            [24] 1978 	mov	r7,dph
      002887 15 81            [12] 1979 	dec	sp
      002889 15 81            [12] 1980 	dec	sp
      00288B D0 02            [24] 1981 	pop	ar2
      00288D D0 03            [24] 1982 	pop	ar3
      00288F EF               [12] 1983 	mov	a,r7
      002890 C4               [12] 1984 	swap	a
      002891 23               [12] 1985 	rl	a
      002892 54 E0            [12] 1986 	anl	a,#0xe0
      002894 CE               [12] 1987 	xch	a,r6
      002895 C4               [12] 1988 	swap	a
      002896 23               [12] 1989 	rl	a
      002897 CE               [12] 1990 	xch	a,r6
      002898 6E               [12] 1991 	xrl	a,r6
      002899 CE               [12] 1992 	xch	a,r6
      00289A 54 E0            [12] 1993 	anl	a,#0xe0
      00289C CE               [12] 1994 	xch	a,r6
      00289D 6E               [12] 1995 	xrl	a,r6
      00289E FF               [12] 1996 	mov	r7,a
      00289F E5 10            [12] 1997 	mov	a,_bp
      0028A1 24 08            [12] 1998 	add	a,#0x08
      0028A3 F8               [12] 1999 	mov	r0,a
      0028A4 E6               [12] 2000 	mov	a,@r0
      0028A5 2E               [12] 2001 	add	a,r6
      0028A6 FC               [12] 2002 	mov	r4,a
      0028A7 08               [12] 2003 	inc	r0
      0028A8 E6               [12] 2004 	mov	a,@r0
      0028A9 3F               [12] 2005 	addc	a,r7
      0028AA FD               [12] 2006 	mov	r5,a
      0028AB EC               [12] 2007 	mov	a,r4
      0028AC 24 02            [12] 2008 	add	a,#_u
      0028AE F5 82            [12] 2009 	mov	dpl,a
      0028B0 ED               [12] 2010 	mov	a,r5
      0028B1 34 84            [12] 2011 	addc	a,#(_u >> 8)
      0028B3 F5 83            [12] 2012 	mov	dph,a
      0028B5 E0               [24] 2013 	movx	a,@dptr
      0028B6 FD               [12] 2014 	mov	r5,a
      0028B7 E5 10            [12] 2015 	mov	a,_bp
      0028B9 24 0E            [12] 2016 	add	a,#0x0e
      0028BB F8               [12] 2017 	mov	r0,a
      0028BC E5 10            [12] 2018 	mov	a,_bp
      0028BE 24 0E            [12] 2019 	add	a,#0x0e
      0028C0 F9               [12] 2020 	mov	r1,a
      0028C1 ED               [12] 2021 	mov	a,r5
      0028C2 26               [12] 2022 	add	a,@r0
      0028C3 F7               [12] 2023 	mov	@r1,a
                                   2024 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028C4 E5 10            [12] 2025 	mov	a,_bp
      0028C6 24 0A            [12] 2026 	add	a,#0x0a
      0028C8 F8               [12] 2027 	mov	r0,a
      0028C9 E6               [12] 2028 	mov	a,@r0
      0028CA 2E               [12] 2029 	add	a,r6
      0028CB FC               [12] 2030 	mov	r4,a
      0028CC 08               [12] 2031 	inc	r0
      0028CD E6               [12] 2032 	mov	a,@r0
      0028CE 3F               [12] 2033 	addc	a,r7
      0028CF FD               [12] 2034 	mov	r5,a
      0028D0 EC               [12] 2035 	mov	a,r4
      0028D1 24 02            [12] 2036 	add	a,#_u
      0028D3 F5 82            [12] 2037 	mov	dpl,a
      0028D5 ED               [12] 2038 	mov	a,r5
      0028D6 34 84            [12] 2039 	addc	a,#(_u >> 8)
      0028D8 F5 83            [12] 2040 	mov	dph,a
      0028DA E0               [24] 2041 	movx	a,@dptr
      0028DB FD               [12] 2042 	mov	r5,a
      0028DC E5 10            [12] 2043 	mov	a,_bp
      0028DE 24 0E            [12] 2044 	add	a,#0x0e
      0028E0 F8               [12] 2045 	mov	r0,a
      0028E1 ED               [12] 2046 	mov	a,r5
      0028E2 26               [12] 2047 	add	a,@r0
      0028E3 FD               [12] 2048 	mov	r5,a
                                   2049 ;	life.c:180: y1 = 1; x1 = 1;
      0028E4 90 8C 08         [24] 2050 	mov	dptr,#_y1
      0028E7 74 01            [12] 2051 	mov	a,#0x01
      0028E9 F0               [24] 2052 	movx	@dptr,a
      0028EA E4               [12] 2053 	clr	a
      0028EB A3               [24] 2054 	inc	dptr
      0028EC F0               [24] 2055 	movx	@dptr,a
      0028ED 90 8C 06         [24] 2056 	mov	dptr,#_x1
      0028F0 04               [12] 2057 	inc	a
      0028F1 F0               [24] 2058 	movx	@dptr,a
      0028F2 E4               [12] 2059 	clr	a
      0028F3 A3               [24] 2060 	inc	dptr
      0028F4 F0               [24] 2061 	movx	@dptr,a
                                   2062 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028F5 E5 10            [12] 2063 	mov	a,_bp
      0028F7 24 0C            [12] 2064 	add	a,#0x0c
      0028F9 F8               [12] 2065 	mov	r0,a
      0028FA E6               [12] 2066 	mov	a,@r0
      0028FB 2E               [12] 2067 	add	a,r6
      0028FC FE               [12] 2068 	mov	r6,a
      0028FD 08               [12] 2069 	inc	r0
      0028FE E6               [12] 2070 	mov	a,@r0
      0028FF 3F               [12] 2071 	addc	a,r7
      002900 FF               [12] 2072 	mov	r7,a
      002901 EE               [12] 2073 	mov	a,r6
      002902 24 02            [12] 2074 	add	a,#_u
      002904 F5 82            [12] 2075 	mov	dpl,a
      002906 EF               [12] 2076 	mov	a,r7
      002907 34 84            [12] 2077 	addc	a,#(_u >> 8)
      002909 F5 83            [12] 2078 	mov	dph,a
      00290B E0               [24] 2079 	movx	a,@dptr
      00290C 2D               [12] 2080 	add	a,r5
      00290D FF               [12] 2081 	mov	r7,a
      00290E 90 8C 0F         [24] 2082 	mov	dptr,#_n
      002911 F0               [24] 2083 	movx	@dptr,a
                                   2084 ;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002912 E5 10            [12] 2085 	mov	a,_bp
      002914 24 03            [12] 2086 	add	a,#0x03
      002916 F8               [12] 2087 	mov	r0,a
      002917 E6               [12] 2088 	mov	a,@r0
      002918 24 02            [12] 2089 	add	a,#_nu
      00291A FD               [12] 2090 	mov	r5,a
      00291B 08               [12] 2091 	inc	r0
      00291C E6               [12] 2092 	mov	a,@r0
      00291D 34 88            [12] 2093 	addc	a,#(_nu >> 8)
      00291F FE               [12] 2094 	mov	r6,a
      002920 BF 03 02         [24] 2095 	cjne	r7,#0x03,00374$
      002923 80 20            [24] 2096 	sjmp	00194$
      002925                       2097 00374$:
      002925 BF 02 19         [24] 2098 	cjne	r7,#0x02,00193$
      002928 A8 10            [24] 2099 	mov	r0,_bp
      00292A 08               [12] 2100 	inc	r0
      00292B EA               [12] 2101 	mov	a,r2
      00292C 26               [12] 2102 	add	a,@r0
      00292D FA               [12] 2103 	mov	r2,a
      00292E EB               [12] 2104 	mov	a,r3
      00292F 08               [12] 2105 	inc	r0
      002930 36               [12] 2106 	addc	a,@r0
      002931 FB               [12] 2107 	mov	r3,a
      002932 EA               [12] 2108 	mov	a,r2
      002933 24 02            [12] 2109 	add	a,#_u
      002935 FA               [12] 2110 	mov	r2,a
      002936 EB               [12] 2111 	mov	a,r3
      002937 34 84            [12] 2112 	addc	a,#(_u >> 8)
      002939 FB               [12] 2113 	mov	r3,a
      00293A 8A 82            [24] 2114 	mov	dpl,r2
      00293C 8B 83            [24] 2115 	mov	dph,r3
      00293E E0               [24] 2116 	movx	a,@dptr
      00293F 70 04            [24] 2117 	jnz	00194$
      002941                       2118 00193$:
                                   2119 ;	assignBit
      002941 C2 00            [12] 2120 	clr	b0
      002943 80 02            [24] 2121 	sjmp	00195$
      002945                       2122 00194$:
                                   2123 ;	assignBit
      002945 D2 00            [12] 2124 	setb	b0
      002947                       2125 00195$:
      002947 A2 00            [12] 2126 	mov	c,b0
      002949 E4               [12] 2127 	clr	a
      00294A 33               [12] 2128 	rlc	a
      00294B 8D 82            [24] 2129 	mov	dpl,r5
      00294D 8E 83            [24] 2130 	mov	dph,r6
      00294F F0               [24] 2131 	movx	@dptr,a
                                   2132 ;	life.c:185: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      002950 90 8C 04         [24] 2133 	mov	dptr,#_y
      002953 E0               [24] 2134 	movx	a,@dptr
      002954 FE               [12] 2135 	mov	r6,a
      002955 A3               [24] 2136 	inc	dptr
      002956 E0               [24] 2137 	movx	a,@dptr
      002957 C4               [12] 2138 	swap	a
      002958 23               [12] 2139 	rl	a
      002959 54 E0            [12] 2140 	anl	a,#0xe0
      00295B CE               [12] 2141 	xch	a,r6
      00295C C4               [12] 2142 	swap	a
      00295D 23               [12] 2143 	rl	a
      00295E CE               [12] 2144 	xch	a,r6
      00295F 6E               [12] 2145 	xrl	a,r6
      002960 CE               [12] 2146 	xch	a,r6
      002961 54 E0            [12] 2147 	anl	a,#0xe0
      002963 CE               [12] 2148 	xch	a,r6
      002964 6E               [12] 2149 	xrl	a,r6
      002965 FF               [12] 2150 	mov	r7,a
      002966 90 8C 02         [24] 2151 	mov	dptr,#_x
      002969 E0               [24] 2152 	movx	a,@dptr
      00296A FC               [12] 2153 	mov	r4,a
      00296B A3               [24] 2154 	inc	dptr
      00296C E0               [24] 2155 	movx	a,@dptr
      00296D FD               [12] 2156 	mov	r5,a
      00296E EC               [12] 2157 	mov	a,r4
      00296F 2E               [12] 2158 	add	a,r6
      002970 FE               [12] 2159 	mov	r6,a
      002971 ED               [12] 2160 	mov	a,r5
      002972 3F               [12] 2161 	addc	a,r7
      002973 FF               [12] 2162 	mov	r7,a
      002974 EE               [12] 2163 	mov	a,r6
      002975 24 02            [12] 2164 	add	a,#_pu
      002977 F5 82            [12] 2165 	mov	dpl,a
      002979 EF               [12] 2166 	mov	a,r7
      00297A 34 80            [12] 2167 	addc	a,#(_pu >> 8)
      00297C F5 83            [12] 2168 	mov	dph,a
      00297E E0               [24] 2169 	movx	a,@dptr
      00297F FD               [12] 2170 	mov	r5,a
      002980 EE               [12] 2171 	mov	a,r6
      002981 24 02            [12] 2172 	add	a,#_nu
      002983 F5 82            [12] 2173 	mov	dpl,a
      002985 EF               [12] 2174 	mov	a,r7
      002986 34 88            [12] 2175 	addc	a,#(_nu >> 8)
      002988 F5 83            [12] 2176 	mov	dph,a
      00298A E0               [24] 2177 	movx	a,@dptr
      00298B FF               [12] 2178 	mov	r7,a
      00298C ED               [12] 2179 	mov	a,r5
      00298D B5 07 02         [24] 2180 	cjne	a,ar7,00378$
      002990 80 05            [24] 2181 	sjmp	00144$
      002992                       2182 00378$:
      002992 90 8C 11         [24] 2183 	mov	dptr,#_cycle2
      002995 E4               [12] 2184 	clr	a
      002996 F0               [24] 2185 	movx	@dptr,a
      002997                       2186 00144$:
                                   2187 ;	life.c:186: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      002997 90 8C 04         [24] 2188 	mov	dptr,#_y
      00299A E0               [24] 2189 	movx	a,@dptr
      00299B FE               [12] 2190 	mov	r6,a
      00299C A3               [24] 2191 	inc	dptr
      00299D E0               [24] 2192 	movx	a,@dptr
      00299E C4               [12] 2193 	swap	a
      00299F 23               [12] 2194 	rl	a
      0029A0 54 E0            [12] 2195 	anl	a,#0xe0
      0029A2 CE               [12] 2196 	xch	a,r6
      0029A3 C4               [12] 2197 	swap	a
      0029A4 23               [12] 2198 	rl	a
      0029A5 CE               [12] 2199 	xch	a,r6
      0029A6 6E               [12] 2200 	xrl	a,r6
      0029A7 CE               [12] 2201 	xch	a,r6
      0029A8 54 E0            [12] 2202 	anl	a,#0xe0
      0029AA CE               [12] 2203 	xch	a,r6
      0029AB 6E               [12] 2204 	xrl	a,r6
      0029AC FF               [12] 2205 	mov	r7,a
      0029AD 90 8C 02         [24] 2206 	mov	dptr,#_x
      0029B0 E0               [24] 2207 	movx	a,@dptr
      0029B1 FC               [12] 2208 	mov	r4,a
      0029B2 A3               [24] 2209 	inc	dptr
      0029B3 E0               [24] 2210 	movx	a,@dptr
      0029B4 FD               [12] 2211 	mov	r5,a
      0029B5 EC               [12] 2212 	mov	a,r4
      0029B6 2E               [12] 2213 	add	a,r6
      0029B7 FE               [12] 2214 	mov	r6,a
      0029B8 ED               [12] 2215 	mov	a,r5
      0029B9 3F               [12] 2216 	addc	a,r7
      0029BA FF               [12] 2217 	mov	r7,a
      0029BB EE               [12] 2218 	mov	a,r6
      0029BC 24 02            [12] 2219 	add	a,#_u
      0029BE F5 82            [12] 2220 	mov	dpl,a
      0029C0 EF               [12] 2221 	mov	a,r7
      0029C1 34 84            [12] 2222 	addc	a,#(_u >> 8)
      0029C3 F5 83            [12] 2223 	mov	dph,a
      0029C5 E0               [24] 2224 	movx	a,@dptr
      0029C6 FD               [12] 2225 	mov	r5,a
      0029C7 EE               [12] 2226 	mov	a,r6
      0029C8 24 02            [12] 2227 	add	a,#_nu
      0029CA F5 82            [12] 2228 	mov	dpl,a
      0029CC EF               [12] 2229 	mov	a,r7
      0029CD 34 88            [12] 2230 	addc	a,#(_nu >> 8)
      0029CF F5 83            [12] 2231 	mov	dph,a
      0029D1 E0               [24] 2232 	movx	a,@dptr
      0029D2 FF               [12] 2233 	mov	r7,a
      0029D3 ED               [12] 2234 	mov	a,r5
      0029D4 B5 07 02         [24] 2235 	cjne	a,ar7,00379$
      0029D7 80 05            [24] 2236 	sjmp	00173$
      0029D9                       2237 00379$:
      0029D9 90 8C 10         [24] 2238 	mov	dptr,#_fixed
      0029DC E4               [12] 2239 	clr	a
      0029DD F0               [24] 2240 	movx	@dptr,a
      0029DE                       2241 00173$:
                                   2242 ;	life.c:161: for (x = 0; x < W; x++) {
      0029DE 90 8C 02         [24] 2243 	mov	dptr,#_x
      0029E1 E0               [24] 2244 	movx	a,@dptr
      0029E2 24 01            [12] 2245 	add	a,#0x01
      0029E4 F0               [24] 2246 	movx	@dptr,a
      0029E5 A3               [24] 2247 	inc	dptr
      0029E6 E0               [24] 2248 	movx	a,@dptr
      0029E7 34 00            [12] 2249 	addc	a,#0x00
      0029E9 F0               [24] 2250 	movx	@dptr,a
      0029EA 90 8C 02         [24] 2251 	mov	dptr,#_x
      0029ED E0               [24] 2252 	movx	a,@dptr
      0029EE FE               [12] 2253 	mov	r6,a
      0029EF A3               [24] 2254 	inc	dptr
      0029F0 E0               [24] 2255 	movx	a,@dptr
      0029F1 FF               [12] 2256 	mov	r7,a
      0029F2 C3               [12] 2257 	clr	c
      0029F3 EE               [12] 2258 	mov	a,r6
      0029F4 94 20            [12] 2259 	subb	a,#0x20
      0029F6 EF               [12] 2260 	mov	a,r7
      0029F7 64 80            [12] 2261 	xrl	a,#0x80
      0029F9 94 80            [12] 2262 	subb	a,#0x80
      0029FB 50 03            [24] 2263 	jnc	00380$
      0029FD 02 26 13         [24] 2264 	ljmp	00172$
      002A00                       2265 00380$:
                                   2266 ;	life.c:158: for (y = 0; y < H; y++) {
      002A00 90 8C 04         [24] 2267 	mov	dptr,#_y
      002A03 E0               [24] 2268 	movx	a,@dptr
      002A04 24 01            [12] 2269 	add	a,#0x01
      002A06 F0               [24] 2270 	movx	@dptr,a
      002A07 A3               [24] 2271 	inc	dptr
      002A08 E0               [24] 2272 	movx	a,@dptr
      002A09 34 00            [12] 2273 	addc	a,#0x00
      002A0B F0               [24] 2274 	movx	@dptr,a
      002A0C 90 8C 04         [24] 2275 	mov	dptr,#_y
      002A0F E0               [24] 2276 	movx	a,@dptr
      002A10 FE               [12] 2277 	mov	r6,a
      002A11 A3               [24] 2278 	inc	dptr
      002A12 E0               [24] 2279 	movx	a,@dptr
      002A13 FF               [12] 2280 	mov	r7,a
      002A14 C3               [12] 2281 	clr	c
      002A15 EE               [12] 2282 	mov	a,r6
      002A16 94 20            [12] 2283 	subb	a,#0x20
      002A18 EF               [12] 2284 	mov	a,r7
      002A19 64 80            [12] 2285 	xrl	a,#0x80
      002A1B 94 80            [12] 2286 	subb	a,#0x80
      002A1D 50 03            [24] 2287 	jnc	00381$
      002A1F 02 25 EA         [24] 2288 	ljmp	00174$
      002A22                       2289 00381$:
                                   2290 ;	life.c:190: memcpy(pu, u, sizeof (u));
      002A22 E4               [12] 2291 	clr	a
      002A23 C0 E0            [24] 2292 	push	acc
      002A25 74 04            [12] 2293 	mov	a,#0x04
      002A27 C0 E0            [24] 2294 	push	acc
      002A29 74 02            [12] 2295 	mov	a,#_u
      002A2B C0 E0            [24] 2296 	push	acc
      002A2D 74 84            [12] 2297 	mov	a,#(_u >> 8)
      002A2F C0 E0            [24] 2298 	push	acc
      002A31 E4               [12] 2299 	clr	a
      002A32 C0 E0            [24] 2300 	push	acc
      002A34 90 80 02         [24] 2301 	mov	dptr,#_pu
      002A37 75 F0 00         [24] 2302 	mov	b,#0x00
      002A3A 12 2B 00         [24] 2303 	lcall	___memcpy
      002A3D E5 81            [12] 2304 	mov	a,sp
      002A3F 24 FB            [12] 2305 	add	a,#0xfb
      002A41 F5 81            [12] 2306 	mov	sp,a
                                   2307 ;	life.c:191: memcpy(u, nu, sizeof (nu));
      002A43 E4               [12] 2308 	clr	a
      002A44 C0 E0            [24] 2309 	push	acc
      002A46 74 04            [12] 2310 	mov	a,#0x04
      002A48 C0 E0            [24] 2311 	push	acc
      002A4A 74 02            [12] 2312 	mov	a,#_nu
      002A4C C0 E0            [24] 2313 	push	acc
      002A4E 74 88            [12] 2314 	mov	a,#(_nu >> 8)
      002A50 C0 E0            [24] 2315 	push	acc
      002A52 E4               [12] 2316 	clr	a
      002A53 C0 E0            [24] 2317 	push	acc
      002A55 90 84 02         [24] 2318 	mov	dptr,#_u
      002A58 75 F0 00         [24] 2319 	mov	b,#0x00
      002A5B 12 2B 00         [24] 2320 	lcall	___memcpy
      002A5E E5 81            [12] 2321 	mov	a,sp
      002A60 24 FB            [12] 2322 	add	a,#0xfb
      002A62 F5 81            [12] 2323 	mov	sp,a
                                   2324 ;	life.c:225: if (fixed || cycle2) {
      002A64 90 8C 10         [24] 2325 	mov	dptr,#_fixed
      002A67 E0               [24] 2326 	movx	a,@dptr
      002A68 70 09            [24] 2327 	jnz	00106$
      002A6A 90 8C 11         [24] 2328 	mov	dptr,#_cycle2
      002A6D E0               [24] 2329 	movx	a,@dptr
      002A6E 70 03            [24] 2330 	jnz	00383$
      002A70 02 25 C6         [24] 2331 	ljmp	00181$
      002A73                       2332 00383$:
      002A73                       2333 00106$:
                                   2334 ;	life.c:226: printstr("DONE\r\n");
      002A73 7D 61            [12] 2335 	mov	r5,#___str_6
      002A75 7E 2D            [12] 2336 	mov	r6,#(___str_6 >> 8)
      002A77 7F 80            [12] 2337 	mov	r7,#0x80
                                   2338 ;	life.c:48: return;
      002A79                       2339 00177$:
                                   2340 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A79 8D 82            [24] 2341 	mov	dpl,r5
      002A7B 8E 83            [24] 2342 	mov	dph,r6
      002A7D 8F F0            [24] 2343 	mov	b,r7
      002A7F 12 2B FD         [24] 2344 	lcall	__gptrget
      002A82 FC               [12] 2345 	mov	r4,a
      002A83 60 10            [24] 2346 	jz	00151$
      002A85 7B 00            [12] 2347 	mov	r3,#0x00
      002A87 8C 82            [24] 2348 	mov	dpl,r4
      002A89 8B 83            [24] 2349 	mov	dph,r3
      002A8B 12 20 75         [24] 2350 	lcall	_putchar
      002A8E 0D               [12] 2351 	inc	r5
                                   2352 ;	life.c:226: printstr("DONE\r\n");
      002A8F BD 00 E7         [24] 2353 	cjne	r5,#0x00,00177$
      002A92 0E               [12] 2354 	inc	r6
      002A93 80 E4            [24] 2355 	sjmp	00177$
      002A95                       2356 00151$:
                                   2357 ;	life.c:227: (void)getchar();
      002A95 12 20 7A         [24] 2358 	lcall	_getchar
                                   2359 ;	life.c:228: break;
      002A98                       2360 00109$:
                                   2361 ;	life.c:232: if (i1) {
      002A98 90 80 01         [24] 2362 	mov	dptr,#_i1
      002A9B E0               [24] 2363 	movx	a,@dptr
      002A9C 60 25            [24] 2364 	jz	00187$
                                   2365 ;	life.c:233: printstr("BREAK\r\n");
      002A9E 7D 68            [12] 2366 	mov	r5,#___str_7
      002AA0 7E 2D            [12] 2367 	mov	r6,#(___str_7 >> 8)
      002AA2 7F 80            [12] 2368 	mov	r7,#0x80
                                   2369 ;	life.c:48: return;
      002AA4                       2370 00184$:
                                   2371 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AA4 8D 82            [24] 2372 	mov	dpl,r5
      002AA6 8E 83            [24] 2373 	mov	dph,r6
      002AA8 8F F0            [24] 2374 	mov	b,r7
      002AAA 12 2B FD         [24] 2375 	lcall	__gptrget
      002AAD FC               [12] 2376 	mov	r4,a
      002AAE 60 10            [24] 2377 	jz	00153$
      002AB0 7B 00            [12] 2378 	mov	r3,#0x00
      002AB2 8C 82            [24] 2379 	mov	dpl,r4
      002AB4 8B 83            [24] 2380 	mov	dph,r3
      002AB6 12 20 75         [24] 2381 	lcall	_putchar
      002AB9 0D               [12] 2382 	inc	r5
                                   2383 ;	life.c:233: printstr("BREAK\r\n");
      002ABA BD 00 E7         [24] 2384 	cjne	r5,#0x00,00184$
      002ABD 0E               [12] 2385 	inc	r6
      002ABE 80 E4            [24] 2386 	sjmp	00184$
      002AC0                       2387 00153$:
                                   2388 ;	life.c:234: (void)getchar();
      002AC0 12 20 7A         [24] 2389 	lcall	_getchar
      002AC3                       2390 00187$:
                                   2391 ;	life.c:203: for (i0 = 0; !i0; ) {
      002AC3 90 80 00         [24] 2392 	mov	dptr,#_i0
      002AC6 E0               [24] 2393 	movx	a,@dptr
      002AC7 70 03            [24] 2394 	jnz	00389$
      002AC9 02 23 2B         [24] 2395 	ljmp	00186$
      002ACC                       2396 00389$:
                                   2397 ;	life.c:238: EA = 0;
                                   2398 ;	assignBit
      002ACC C2 AF            [12] 2399 	clr	_EA
                                   2400 ;	life.c:240: printstr("TERM\r\n");
      002ACE 7D 70            [12] 2401 	mov	r5,#___str_8
      002AD0 7E 2D            [12] 2402 	mov	r6,#(___str_8 >> 8)
      002AD2 7F 80            [12] 2403 	mov	r7,#0x80
                                   2404 ;	life.c:48: return;
      002AD4                       2405 00189$:
                                   2406 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AD4 8D 82            [24] 2407 	mov	dpl,r5
      002AD6 8E 83            [24] 2408 	mov	dph,r6
      002AD8 8F F0            [24] 2409 	mov	b,r7
      002ADA 12 2B FD         [24] 2410 	lcall	__gptrget
      002ADD FC               [12] 2411 	mov	r4,a
      002ADE 60 10            [24] 2412 	jz	00155$
      002AE0 7B 00            [12] 2413 	mov	r3,#0x00
      002AE2 8C 82            [24] 2414 	mov	dpl,r4
      002AE4 8B 83            [24] 2415 	mov	dph,r3
      002AE6 12 20 75         [24] 2416 	lcall	_putchar
      002AE9 0D               [12] 2417 	inc	r5
                                   2418 ;	life.c:240: printstr("TERM\r\n");
      002AEA BD 00 E7         [24] 2419 	cjne	r5,#0x00,00189$
      002AED 0E               [12] 2420 	inc	r6
      002AEE 80 E4            [24] 2421 	sjmp	00189$
      002AF0                       2422 00155$:
                                   2423 ;	life.c:241: (void)getchar();
      002AF0 12 20 7A         [24] 2424 	lcall	_getchar
                                   2425 ;	life.c:245: __endasm;
      002AF3 02 00 00         [24] 2426 	ljmp	0
                                   2427 ;	life.c:246: }
      002AF6 85 10 81         [24] 2428 	mov	sp,_bp
      002AF9 D0 10            [24] 2429 	pop	_bp
      002AFB 22               [24] 2430 	ret
                                   2431 	.area CSEG    (CODE)
                                   2432 	.area CONST   (CODE)
      002D25                       2433 _digits:
      002D25 30                    2434 	.db #0x30	; 48	'0'
      002D26 31                    2435 	.db #0x31	; 49	'1'
      002D27 32                    2436 	.db #0x32	; 50	'2'
      002D28 33                    2437 	.db #0x33	; 51	'3'
      002D29 34                    2438 	.db #0x34	; 52	'4'
      002D2A 35                    2439 	.db #0x35	; 53	'5'
      002D2B 36                    2440 	.db #0x36	; 54	'6'
      002D2C 37                    2441 	.db #0x37	; 55	'7'
      002D2D 38                    2442 	.db #0x38	; 56	'8'
      002D2E 39                    2443 	.db #0x39	; 57	'9'
      002D2F 61                    2444 	.db #0x61	; 97	'a'
      002D30 62                    2445 	.db #0x62	; 98	'b'
      002D31 63                    2446 	.db #0x63	; 99	'c'
      002D32 64                    2447 	.db #0x64	; 100	'd'
      002D33 65                    2448 	.db #0x65	; 101	'e'
      002D34 66                    2449 	.db #0x66	; 102	'f'
                                   2450 	.area CONST   (CODE)
      002D35                       2451 ___str_0:
      002D35 1B                    2452 	.db 0x1b
      002D36 5B 32 4A              2453 	.ascii "[2J"
      002D39 1B                    2454 	.db 0x1b
      002D3A 5B 6D                 2455 	.ascii "[m"
      002D3C 00                    2456 	.db 0x00
                                   2457 	.area CSEG    (CODE)
                                   2458 	.area CONST   (CODE)
      002D3D                       2459 ___str_1:
      002D3D 0D                    2460 	.db 0x0d
      002D3E 0A                    2461 	.db 0x0a
      002D3F 00                    2462 	.db 0x00
                                   2463 	.area CSEG    (CODE)
                                   2464 	.area CONST   (CODE)
      002D40                       2465 ___str_2:
      002D40 4C 4F 41 44 20 3C     2466 	.ascii "LOAD <"
      002D46 00                    2467 	.db 0x00
                                   2468 	.area CSEG    (CODE)
                                   2469 	.area CONST   (CODE)
      002D47                       2470 ___str_3:
      002D47 3E                    2471 	.ascii ">"
      002D48 0D                    2472 	.db 0x0d
      002D49 0A                    2473 	.db 0x0a
      002D4A 00                    2474 	.db 0x00
                                   2475 	.area CSEG    (CODE)
      002AFC                       2476 _busy:
      002AFC 5C                    2477 	.db #0x5c	; 92
      002AFD 7C                    2478 	.db #0x7c	; 124
      002AFE 2F                    2479 	.db #0x2f	; 47
      002AFF 2D                    2480 	.db #0x2d	; 45
                                   2481 	.area CONST   (CODE)
      002D4B                       2482 ___str_4:
      002D4B 1B                    2483 	.db 0x1b
      002D4C 5B 32 4A              2484 	.ascii "[2J"
      002D4F 1B                    2485 	.db 0x1b
      002D50 5B 6D 49 4E 49 54     2486 	.ascii "[mINIT"
      002D56 0D                    2487 	.db 0x0d
      002D57 0A                    2488 	.db 0x0a
      002D58 00                    2489 	.db 0x00
                                   2490 	.area CSEG    (CODE)
                                   2491 	.area CONST   (CODE)
      002D59                       2492 ___str_5:
      002D59 52 45 41 44 59        2493 	.ascii "READY"
      002D5E 0D                    2494 	.db 0x0d
      002D5F 0A                    2495 	.db 0x0a
      002D60 00                    2496 	.db 0x00
                                   2497 	.area CSEG    (CODE)
                                   2498 	.area CONST   (CODE)
      002D61                       2499 ___str_6:
      002D61 44 4F 4E 45           2500 	.ascii "DONE"
      002D65 0D                    2501 	.db 0x0d
      002D66 0A                    2502 	.db 0x0a
      002D67 00                    2503 	.db 0x00
                                   2504 	.area CSEG    (CODE)
                                   2505 	.area CONST   (CODE)
      002D68                       2506 ___str_7:
      002D68 42 52 45 41 4B        2507 	.ascii "BREAK"
      002D6D 0D                    2508 	.db 0x0d
      002D6E 0A                    2509 	.db 0x0a
      002D6F 00                    2510 	.db 0x00
                                   2511 	.area CSEG    (CODE)
                                   2512 	.area CONST   (CODE)
      002D70                       2513 ___str_8:
      002D70 54 45 52 4D           2514 	.ascii "TERM"
      002D74 0D                    2515 	.db 0x0d
      002D75 0A                    2516 	.db 0x0a
      002D76 00                    2517 	.db 0x00
                                   2518 	.area CSEG    (CODE)
                                   2519 	.area XINIT   (CODE)
                                   2520 	.area CABS    (ABS,CODE)
