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
      0020B1 7D 47            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2D            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2C 0F         [24]  565 	lcall	__gptrget
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
      0020ED 24 37            [12]  597 	add	a,#_digits
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
      00210A 24 37            [12]  614 	add	a,#_digits
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
      002139 24 37            [12]  645 	add	a,#_digits
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
      002154 24 37            [12]  661 	add	a,#_digits
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
      002183 24 37            [12]  692 	add	a,#_digits
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
      0021A0 24 37            [12]  709 	add	a,#_digits
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
      0021CF 24 37            [12]  740 	add	a,#_digits
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
      0021EA 24 37            [12]  756 	add	a,#_digits
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
      0021FF 7D 4F            [12]  769 	mov	r5,#___str_1
      002201 7E 2D            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2C 0F         [24]  778 	lcall	__gptrget
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
      0022C9 7D 4F            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2D            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2C 0F         [24]  930 	lcall	__gptrget
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
      00232B                       1029 00191$:
                                   1030 ;	life.c:116: memset(u, 0, sizeof (u));
      00232B E4               [12] 1031 	clr	a
      00232C C0 E0            [24] 1032 	push	acc
      00232E 74 04            [12] 1033 	mov	a,#0x04
      002330 C0 E0            [24] 1034 	push	acc
      002332 E4               [12] 1035 	clr	a
      002333 C0 E0            [24] 1036 	push	acc
      002335 90 84 02         [24] 1037 	mov	dptr,#_u
      002338 75 F0 00         [24] 1038 	mov	b,#0x00
      00233B 12 2B A5         [24] 1039 	lcall	_memset
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
      002354 12 2B A5         [24] 1052 	lcall	_memset
      002357 15 81            [12] 1053 	dec	sp
      002359 15 81            [12] 1054 	dec	sp
      00235B 15 81            [12] 1055 	dec	sp
                                   1056 ;	life.c:206: printstr("\033[2J\033[mINIT\r\n");
      00235D 7D 5D            [12] 1057 	mov	r5,#___str_4
      00235F 7E 2D            [12] 1058 	mov	r6,#(___str_4 >> 8)
      002361 7F 80            [12] 1059 	mov	r7,#0x80
                                   1060 ;	life.c:48: return;
      002363                       1061 00162$:
                                   1062 ;	life.c:46: for (; *s; s++) putchar(*s);
      002363 8D 82            [24] 1063 	mov	dpl,r5
      002365 8E 83            [24] 1064 	mov	dph,r6
      002367 8F F0            [24] 1065 	mov	b,r7
      002369 12 2C 0F         [24] 1066 	lcall	__gptrget
      00236C FC               [12] 1067 	mov	r4,a
      00236D 60 10            [24] 1068 	jz	00104$
      00236F 7B 00            [12] 1069 	mov	r3,#0x00
      002371 8C 82            [24] 1070 	mov	dpl,r4
      002373 8B 83            [24] 1071 	mov	dph,r3
      002375 12 20 75         [24] 1072 	lcall	_putchar
      002378 0D               [12] 1073 	inc	r5
                                   1074 ;	life.c:207: while (1) {
      002379 BD 00 E7         [24] 1075 	cjne	r5,#0x00,00162$
      00237C 0E               [12] 1076 	inc	r6
      00237D 80 E4            [24] 1077 	sjmp	00162$
      00237F                       1078 00104$:
                                   1079 ;	life.c:208: c = getchar();
      00237F 12 20 7A         [24] 1080 	lcall	_getchar
      002382 AE 82            [24] 1081 	mov	r6,dpl
      002384 AF 83            [24] 1082 	mov	r7,dph
      002386 90 8C 0C         [24] 1083 	mov	dptr,#_c
      002389 EE               [12] 1084 	mov	a,r6
      00238A F0               [24] 1085 	movx	@dptr,a
      00238B EF               [12] 1086 	mov	a,r7
      00238C A3               [24] 1087 	inc	dptr
      00238D F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	life.c:209: if (c == (int)'L') break;
      00238E BE 4C EE         [24] 1090 	cjne	r6,#0x4c,00104$
      002391 BF 00 EB         [24] 1091 	cjne	r7,#0x00,00104$
                                   1092 ;	life.c:123: j = 0;
      002394 90 8C 0A         [24] 1093 	mov	dptr,#_j
      002397 E4               [12] 1094 	clr	a
      002398 F0               [24] 1095 	movx	@dptr,a
      002399 A3               [24] 1096 	inc	dptr
      00239A F0               [24] 1097 	movx	@dptr,a
                                   1098 ;	life.c:125: printstr("LOAD <");
      00239B 7D 52            [12] 1099 	mov	r5,#___str_2
      00239D 7E 2D            [12] 1100 	mov	r6,#(___str_2 >> 8)
      00239F 7F 80            [12] 1101 	mov	r7,#0x80
                                   1102 ;	life.c:48: return;
      0023A1                       1103 00165$:
                                   1104 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023A1 8D 82            [24] 1105 	mov	dpl,r5
      0023A3 8E 83            [24] 1106 	mov	dph,r6
      0023A5 8F F0            [24] 1107 	mov	b,r7
      0023A7 12 2C 0F         [24] 1108 	lcall	__gptrget
      0023AA FC               [12] 1109 	mov	r4,a
      0023AB 60 10            [24] 1110 	jz	00122$
      0023AD 7B 00            [12] 1111 	mov	r3,#0x00
      0023AF 8C 82            [24] 1112 	mov	dpl,r4
      0023B1 8B 83            [24] 1113 	mov	dph,r3
      0023B3 12 20 75         [24] 1114 	lcall	_putchar
      0023B6 0D               [12] 1115 	inc	r5
                                   1116 ;	life.c:125: printstr("LOAD <");
      0023B7 BD 00 E7         [24] 1117 	cjne	r5,#0x00,00165$
      0023BA 0E               [12] 1118 	inc	r6
      0023BB 80 E4            [24] 1119 	sjmp	00165$
      0023BD                       1120 00122$:
                                   1121 ;	life.c:127: for (y = 0; y < H; y++)
      0023BD 90 8C 04         [24] 1122 	mov	dptr,#_y
      0023C0 E4               [12] 1123 	clr	a
      0023C1 F0               [24] 1124 	movx	@dptr,a
      0023C2 A3               [24] 1125 	inc	dptr
      0023C3 F0               [24] 1126 	movx	@dptr,a
      0023C4                       1127 00169$:
                                   1128 ;	life.c:128: for (x = 0; x < W; x++) {
      0023C4 90 8C 02         [24] 1129 	mov	dptr,#_x
      0023C7 E4               [12] 1130 	clr	a
      0023C8 F0               [24] 1131 	movx	@dptr,a
      0023C9 A3               [24] 1132 	inc	dptr
      0023CA F0               [24] 1133 	movx	@dptr,a
      0023CB                       1134 00167$:
                                   1135 ;	life.c:129: c = getchar();
      0023CB 12 20 7A         [24] 1136 	lcall	_getchar
      0023CE AE 82            [24] 1137 	mov	r6,dpl
      0023D0 AF 83            [24] 1138 	mov	r7,dph
      0023D2 90 8C 0C         [24] 1139 	mov	dptr,#_c
      0023D5 EE               [12] 1140 	mov	a,r6
      0023D6 F0               [24] 1141 	movx	@dptr,a
      0023D7 EF               [12] 1142 	mov	a,r7
      0023D8 A3               [24] 1143 	inc	dptr
      0023D9 F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	life.c:130: if (c == (int)'0') {
      0023DA BE 30 41         [24] 1146 	cjne	r6,#0x30,00129$
      0023DD BF 00 3E         [24] 1147 	cjne	r7,#0x00,00129$
                                   1148 ;	life.c:131: u[A2D(W, y, x)] = 0;
      0023E0 90 8C 04         [24] 1149 	mov	dptr,#_y
      0023E3 E0               [24] 1150 	movx	a,@dptr
      0023E4 FC               [12] 1151 	mov	r4,a
      0023E5 A3               [24] 1152 	inc	dptr
      0023E6 E0               [24] 1153 	movx	a,@dptr
      0023E7 C4               [12] 1154 	swap	a
      0023E8 23               [12] 1155 	rl	a
      0023E9 54 E0            [12] 1156 	anl	a,#0xe0
      0023EB CC               [12] 1157 	xch	a,r4
      0023EC C4               [12] 1158 	swap	a
      0023ED 23               [12] 1159 	rl	a
      0023EE CC               [12] 1160 	xch	a,r4
      0023EF 6C               [12] 1161 	xrl	a,r4
      0023F0 CC               [12] 1162 	xch	a,r4
      0023F1 54 E0            [12] 1163 	anl	a,#0xe0
      0023F3 CC               [12] 1164 	xch	a,r4
      0023F4 6C               [12] 1165 	xrl	a,r4
      0023F5 FD               [12] 1166 	mov	r5,a
      0023F6 90 8C 02         [24] 1167 	mov	dptr,#_x
      0023F9 E0               [24] 1168 	movx	a,@dptr
      0023FA FA               [12] 1169 	mov	r2,a
      0023FB A3               [24] 1170 	inc	dptr
      0023FC E0               [24] 1171 	movx	a,@dptr
      0023FD FB               [12] 1172 	mov	r3,a
      0023FE EA               [12] 1173 	mov	a,r2
      0023FF 2C               [12] 1174 	add	a,r4
      002400 FC               [12] 1175 	mov	r4,a
      002401 EB               [12] 1176 	mov	a,r3
      002402 3D               [12] 1177 	addc	a,r5
      002403 FD               [12] 1178 	mov	r5,a
      002404 EC               [12] 1179 	mov	a,r4
      002405 24 02            [12] 1180 	add	a,#_u
      002407 F5 82            [12] 1181 	mov	dpl,a
      002409 ED               [12] 1182 	mov	a,r5
      00240A 34 84            [12] 1183 	addc	a,#(_u >> 8)
      00240C F5 83            [12] 1184 	mov	dph,a
      00240E E4               [12] 1185 	clr	a
      00240F F0               [24] 1186 	movx	@dptr,a
                                   1187 ;	life.c:132: j++;
      002410 90 8C 0A         [24] 1188 	mov	dptr,#_j
      002413 E0               [24] 1189 	movx	a,@dptr
      002414 24 01            [12] 1190 	add	a,#0x01
      002416 F0               [24] 1191 	movx	@dptr,a
      002417 A3               [24] 1192 	inc	dptr
      002418 E0               [24] 1193 	movx	a,@dptr
      002419 34 00            [12] 1194 	addc	a,#0x00
      00241B F0               [24] 1195 	movx	@dptr,a
      00241C 80 4D            [24] 1196 	sjmp	00168$
      00241E                       1197 00129$:
                                   1198 ;	life.c:133: } else if (c == (int)'1') {
      00241E BE 31 42         [24] 1199 	cjne	r6,#0x31,00127$
      002421 BF 00 3F         [24] 1200 	cjne	r7,#0x00,00127$
                                   1201 ;	life.c:134: u[A2D(W, y, x)] = 1;
      002424 90 8C 04         [24] 1202 	mov	dptr,#_y
      002427 E0               [24] 1203 	movx	a,@dptr
      002428 FC               [12] 1204 	mov	r4,a
      002429 A3               [24] 1205 	inc	dptr
      00242A E0               [24] 1206 	movx	a,@dptr
      00242B C4               [12] 1207 	swap	a
      00242C 23               [12] 1208 	rl	a
      00242D 54 E0            [12] 1209 	anl	a,#0xe0
      00242F CC               [12] 1210 	xch	a,r4
      002430 C4               [12] 1211 	swap	a
      002431 23               [12] 1212 	rl	a
      002432 CC               [12] 1213 	xch	a,r4
      002433 6C               [12] 1214 	xrl	a,r4
      002434 CC               [12] 1215 	xch	a,r4
      002435 54 E0            [12] 1216 	anl	a,#0xe0
      002437 CC               [12] 1217 	xch	a,r4
      002438 6C               [12] 1218 	xrl	a,r4
      002439 FD               [12] 1219 	mov	r5,a
      00243A 90 8C 02         [24] 1220 	mov	dptr,#_x
      00243D E0               [24] 1221 	movx	a,@dptr
      00243E FA               [12] 1222 	mov	r2,a
      00243F A3               [24] 1223 	inc	dptr
      002440 E0               [24] 1224 	movx	a,@dptr
      002441 FB               [12] 1225 	mov	r3,a
      002442 EA               [12] 1226 	mov	a,r2
      002443 2C               [12] 1227 	add	a,r4
      002444 FC               [12] 1228 	mov	r4,a
      002445 EB               [12] 1229 	mov	a,r3
      002446 3D               [12] 1230 	addc	a,r5
      002447 FD               [12] 1231 	mov	r5,a
      002448 EC               [12] 1232 	mov	a,r4
      002449 24 02            [12] 1233 	add	a,#_u
      00244B F5 82            [12] 1234 	mov	dpl,a
      00244D ED               [12] 1235 	mov	a,r5
      00244E 34 84            [12] 1236 	addc	a,#(_u >> 8)
      002450 F5 83            [12] 1237 	mov	dph,a
      002452 74 01            [12] 1238 	mov	a,#0x01
      002454 F0               [24] 1239 	movx	@dptr,a
                                   1240 ;	life.c:135: j++;
      002455 90 8C 0A         [24] 1241 	mov	dptr,#_j
      002458 E0               [24] 1242 	movx	a,@dptr
      002459 24 01            [12] 1243 	add	a,#0x01
      00245B F0               [24] 1244 	movx	@dptr,a
      00245C A3               [24] 1245 	inc	dptr
      00245D E0               [24] 1246 	movx	a,@dptr
      00245E 34 00            [12] 1247 	addc	a,#0x00
      002460 F0               [24] 1248 	movx	@dptr,a
      002461 80 08            [24] 1249 	sjmp	00168$
      002463                       1250 00127$:
                                   1251 ;	life.c:136: } else if (c == (int)'#') goto out;
      002463 BE 23 05         [24] 1252 	cjne	r6,#0x23,00374$
      002466 BF 00 02         [24] 1253 	cjne	r7,#0x00,00374$
      002469 80 44            [24] 1254 	sjmp	00140$
      00246B                       1255 00374$:
      00246B                       1256 00168$:
                                   1257 ;	life.c:128: for (x = 0; x < W; x++) {
      00246B 90 8C 02         [24] 1258 	mov	dptr,#_x
      00246E E0               [24] 1259 	movx	a,@dptr
      00246F 24 01            [12] 1260 	add	a,#0x01
      002471 F0               [24] 1261 	movx	@dptr,a
      002472 A3               [24] 1262 	inc	dptr
      002473 E0               [24] 1263 	movx	a,@dptr
      002474 34 00            [12] 1264 	addc	a,#0x00
      002476 F0               [24] 1265 	movx	@dptr,a
      002477 90 8C 02         [24] 1266 	mov	dptr,#_x
      00247A E0               [24] 1267 	movx	a,@dptr
      00247B FE               [12] 1268 	mov	r6,a
      00247C A3               [24] 1269 	inc	dptr
      00247D E0               [24] 1270 	movx	a,@dptr
      00247E FF               [12] 1271 	mov	r7,a
      00247F C3               [12] 1272 	clr	c
      002480 EE               [12] 1273 	mov	a,r6
      002481 94 20            [12] 1274 	subb	a,#0x20
      002483 EF               [12] 1275 	mov	a,r7
      002484 64 80            [12] 1276 	xrl	a,#0x80
      002486 94 80            [12] 1277 	subb	a,#0x80
      002488 50 03            [24] 1278 	jnc	00375$
      00248A 02 23 CB         [24] 1279 	ljmp	00167$
      00248D                       1280 00375$:
                                   1281 ;	life.c:127: for (y = 0; y < H; y++)
      00248D 90 8C 04         [24] 1282 	mov	dptr,#_y
      002490 E0               [24] 1283 	movx	a,@dptr
      002491 24 01            [12] 1284 	add	a,#0x01
      002493 F0               [24] 1285 	movx	@dptr,a
      002494 A3               [24] 1286 	inc	dptr
      002495 E0               [24] 1287 	movx	a,@dptr
      002496 34 00            [12] 1288 	addc	a,#0x00
      002498 F0               [24] 1289 	movx	@dptr,a
      002499 90 8C 04         [24] 1290 	mov	dptr,#_y
      00249C E0               [24] 1291 	movx	a,@dptr
      00249D FE               [12] 1292 	mov	r6,a
      00249E A3               [24] 1293 	inc	dptr
      00249F E0               [24] 1294 	movx	a,@dptr
      0024A0 FF               [12] 1295 	mov	r7,a
      0024A1 C3               [12] 1296 	clr	c
      0024A2 EE               [12] 1297 	mov	a,r6
      0024A3 94 20            [12] 1298 	subb	a,#0x20
      0024A5 EF               [12] 1299 	mov	a,r7
      0024A6 64 80            [12] 1300 	xrl	a,#0x80
      0024A8 94 80            [12] 1301 	subb	a,#0x80
      0024AA 50 03            [24] 1302 	jnc	00376$
      0024AC 02 23 C4         [24] 1303 	ljmp	00169$
      0024AF                       1304 00376$:
                                   1305 ;	life.c:139: out:
      0024AF                       1306 00140$:
                                   1307 ;	life.c:140: if (c != (int)'#')
      0024AF 90 8C 0C         [24] 1308 	mov	dptr,#_c
      0024B2 E0               [24] 1309 	movx	a,@dptr
      0024B3 FE               [12] 1310 	mov	r6,a
      0024B4 A3               [24] 1311 	inc	dptr
      0024B5 E0               [24] 1312 	movx	a,@dptr
      0024B6 FF               [12] 1313 	mov	r7,a
      0024B7 BE 23 05         [24] 1314 	cjne	r6,#0x23,00377$
      0024BA BF 00 02         [24] 1315 	cjne	r7,#0x00,00377$
      0024BD 80 15            [24] 1316 	sjmp	00139$
      0024BF                       1317 00377$:
                                   1318 ;	life.c:141: while (1) {
      0024BF                       1319 00136$:
                                   1320 ;	life.c:142: c = getchar();
      0024BF 12 20 7A         [24] 1321 	lcall	_getchar
      0024C2 AE 82            [24] 1322 	mov	r6,dpl
      0024C4 AF 83            [24] 1323 	mov	r7,dph
      0024C6 90 8C 0C         [24] 1324 	mov	dptr,#_c
      0024C9 EE               [12] 1325 	mov	a,r6
      0024CA F0               [24] 1326 	movx	@dptr,a
      0024CB EF               [12] 1327 	mov	a,r7
      0024CC A3               [24] 1328 	inc	dptr
      0024CD F0               [24] 1329 	movx	@dptr,a
                                   1330 ;	life.c:143: if (c == (int)'#') break;
      0024CE BE 23 EE         [24] 1331 	cjne	r6,#0x23,00136$
      0024D1 BF 00 EB         [24] 1332 	cjne	r7,#0x00,00136$
      0024D4                       1333 00139$:
                                   1334 ;	life.c:145: print16x(j);
      0024D4 90 8C 0A         [24] 1335 	mov	dptr,#_j
      0024D7 E0               [24] 1336 	movx	a,@dptr
      0024D8 FE               [12] 1337 	mov	r6,a
      0024D9 A3               [24] 1338 	inc	dptr
      0024DA E0               [24] 1339 	movx	a,@dptr
                                   1340 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0024DB 8E 04            [24] 1341 	mov	ar4,r6
      0024DD FD               [12] 1342 	mov	r5,a
      0024DE C4               [12] 1343 	swap	a
      0024DF 54 0F            [12] 1344 	anl	a,#0x0f
      0024E1 30 E3 02         [24] 1345 	jnb	acc.3,00380$
      0024E4 44 F0            [12] 1346 	orl	a,#0xf0
      0024E6                       1347 00380$:
      0024E6 FE               [12] 1348 	mov	r6,a
      0024E7 33               [12] 1349 	rlc	a
      0024E8 95 E0            [12] 1350 	subb	a,acc
      0024EA 53 06 0F         [24] 1351 	anl	ar6,#0x0f
      0024ED 7F 00            [12] 1352 	mov	r7,#0x00
      0024EF EE               [12] 1353 	mov	a,r6
      0024F0 24 37            [12] 1354 	add	a,#_digits
      0024F2 F5 82            [12] 1355 	mov	dpl,a
      0024F4 EF               [12] 1356 	mov	a,r7
      0024F5 34 2D            [12] 1357 	addc	a,#(_digits >> 8)
      0024F7 F5 83            [12] 1358 	mov	dph,a
      0024F9 E4               [12] 1359 	clr	a
      0024FA 93               [24] 1360 	movc	a,@a+dptr
      0024FB FF               [12] 1361 	mov	r7,a
      0024FC 7E 00            [12] 1362 	mov	r6,#0x00
      0024FE 8F 82            [24] 1363 	mov	dpl,r7
      002500 8E 83            [24] 1364 	mov	dph,r6
      002502 12 20 75         [24] 1365 	lcall	_putchar
                                   1366 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      002505 8D 07            [24] 1367 	mov	ar7,r5
      002507 53 07 0F         [24] 1368 	anl	ar7,#0x0f
      00250A 7E 00            [12] 1369 	mov	r6,#0x00
      00250C EF               [12] 1370 	mov	a,r7
      00250D 24 37            [12] 1371 	add	a,#_digits
      00250F F5 82            [12] 1372 	mov	dpl,a
      002511 EE               [12] 1373 	mov	a,r6
      002512 34 2D            [12] 1374 	addc	a,#(_digits >> 8)
      002514 F5 83            [12] 1375 	mov	dph,a
      002516 E4               [12] 1376 	clr	a
      002517 93               [24] 1377 	movc	a,@a+dptr
      002518 FF               [12] 1378 	mov	r7,a
      002519 7E 00            [12] 1379 	mov	r6,#0x00
      00251B 8F 82            [24] 1380 	mov	dpl,r7
      00251D 8E 83            [24] 1381 	mov	dph,r6
      00251F 12 20 75         [24] 1382 	lcall	_putchar
                                   1383 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      002522 8C 06            [24] 1384 	mov	ar6,r4
      002524 ED               [12] 1385 	mov	a,r5
      002525 C4               [12] 1386 	swap	a
      002526 CE               [12] 1387 	xch	a,r6
      002527 C4               [12] 1388 	swap	a
      002528 54 0F            [12] 1389 	anl	a,#0x0f
      00252A 6E               [12] 1390 	xrl	a,r6
      00252B CE               [12] 1391 	xch	a,r6
      00252C 54 0F            [12] 1392 	anl	a,#0x0f
      00252E CE               [12] 1393 	xch	a,r6
      00252F 6E               [12] 1394 	xrl	a,r6
      002530 CE               [12] 1395 	xch	a,r6
      002531 30 E3 02         [24] 1396 	jnb	acc.3,00381$
      002534 44 F0            [12] 1397 	orl	a,#0xf0
      002536                       1398 00381$:
      002536 53 06 0F         [24] 1399 	anl	ar6,#0x0f
      002539 7F 00            [12] 1400 	mov	r7,#0x00
      00253B EE               [12] 1401 	mov	a,r6
      00253C 24 37            [12] 1402 	add	a,#_digits
      00253E F5 82            [12] 1403 	mov	dpl,a
      002540 EF               [12] 1404 	mov	a,r7
      002541 34 2D            [12] 1405 	addc	a,#(_digits >> 8)
      002543 F5 83            [12] 1406 	mov	dph,a
      002545 E4               [12] 1407 	clr	a
      002546 93               [24] 1408 	movc	a,@a+dptr
      002547 FF               [12] 1409 	mov	r7,a
      002548 7E 00            [12] 1410 	mov	r6,#0x00
      00254A 8F 82            [24] 1411 	mov	dpl,r7
      00254C 8E 83            [24] 1412 	mov	dph,r6
      00254E 12 20 75         [24] 1413 	lcall	_putchar
                                   1414 ;	life.c:40: putchar(digits[a & 0xf]);
      002551 53 04 0F         [24] 1415 	anl	ar4,#0x0f
      002554 7D 00            [12] 1416 	mov	r5,#0x00
      002556 EC               [12] 1417 	mov	a,r4
      002557 24 37            [12] 1418 	add	a,#_digits
      002559 F5 82            [12] 1419 	mov	dpl,a
      00255B ED               [12] 1420 	mov	a,r5
      00255C 34 2D            [12] 1421 	addc	a,#(_digits >> 8)
      00255E F5 83            [12] 1422 	mov	dph,a
      002560 E4               [12] 1423 	clr	a
      002561 93               [24] 1424 	movc	a,@a+dptr
      002562 FF               [12] 1425 	mov	r7,a
      002563 7E 00            [12] 1426 	mov	r6,#0x00
      002565 8F 82            [24] 1427 	mov	dpl,r7
      002567 8E 83            [24] 1428 	mov	dph,r6
      002569 12 20 75         [24] 1429 	lcall	_putchar
                                   1430 ;	life.c:146: printstr(">\r\n");
      00256C 7D 59            [12] 1431 	mov	r5,#___str_3
      00256E 7E 2D            [12] 1432 	mov	r6,#(___str_3 >> 8)
      002570 7F 80            [12] 1433 	mov	r7,#0x80
                                   1434 ;	life.c:48: return;
      002572                       1435 00172$:
                                   1436 ;	life.c:46: for (; *s; s++) putchar(*s);
      002572 8D 82            [24] 1437 	mov	dpl,r5
      002574 8E 83            [24] 1438 	mov	dph,r6
      002576 8F F0            [24] 1439 	mov	b,r7
      002578 12 2C 0F         [24] 1440 	lcall	__gptrget
      00257B FC               [12] 1441 	mov	r4,a
      00257C 60 10            [24] 1442 	jz	00143$
      00257E 7B 00            [12] 1443 	mov	r3,#0x00
      002580 8C 82            [24] 1444 	mov	dpl,r4
      002582 8B 83            [24] 1445 	mov	dph,r3
      002584 12 20 75         [24] 1446 	lcall	_putchar
      002587 0D               [12] 1447 	inc	r5
                                   1448 ;	life.c:146: printstr(">\r\n");
      002588 BD 00 E7         [24] 1449 	cjne	r5,#0x00,00172$
      00258B 0E               [12] 1450 	inc	r6
      00258C 80 E4            [24] 1451 	sjmp	00172$
      00258E                       1452 00143$:
                                   1453 ;	life.c:213: show(0);
      00258E 75 82 00         [24] 1454 	mov	dpl,#0x00
      002591 12 20 A9         [24] 1455 	lcall	_show
                                   1456 ;	life.c:215: printstr("READY\r\n");
      002594 7D 6B            [12] 1457 	mov	r5,#___str_5
      002596 7E 2D            [12] 1458 	mov	r6,#(___str_5 >> 8)
      002598 7F 80            [12] 1459 	mov	r7,#0x80
                                   1460 ;	life.c:48: return;
      00259A                       1461 00175$:
                                   1462 ;	life.c:46: for (; *s; s++) putchar(*s);
      00259A 8D 82            [24] 1463 	mov	dpl,r5
      00259C 8E 83            [24] 1464 	mov	dph,r6
      00259E 8F F0            [24] 1465 	mov	b,r7
      0025A0 12 2C 0F         [24] 1466 	lcall	__gptrget
      0025A3 FC               [12] 1467 	mov	r4,a
      0025A4 60 10            [24] 1468 	jz	00109$
      0025A6 7B 00            [12] 1469 	mov	r3,#0x00
      0025A8 8C 82            [24] 1470 	mov	dpl,r4
      0025AA 8B 83            [24] 1471 	mov	dph,r3
      0025AC 12 20 75         [24] 1472 	lcall	_putchar
      0025AF 0D               [12] 1473 	inc	r5
                                   1474 ;	life.c:216: while (1) {
      0025B0 BD 00 E7         [24] 1475 	cjne	r5,#0x00,00175$
      0025B3 0E               [12] 1476 	inc	r6
      0025B4 80 E4            [24] 1477 	sjmp	00175$
      0025B6                       1478 00109$:
                                   1479 ;	life.c:217: c = getchar();
      0025B6 12 20 7A         [24] 1480 	lcall	_getchar
      0025B9 AE 82            [24] 1481 	mov	r6,dpl
      0025BB AF 83            [24] 1482 	mov	r7,dph
      0025BD 90 8C 0C         [24] 1483 	mov	dptr,#_c
      0025C0 EE               [12] 1484 	mov	a,r6
      0025C1 F0               [24] 1485 	movx	@dptr,a
      0025C2 EF               [12] 1486 	mov	a,r7
      0025C3 A3               [24] 1487 	inc	dptr
      0025C4 F0               [24] 1488 	movx	@dptr,a
                                   1489 ;	life.c:218: if (c == (int)'S') break;
      0025C5 BE 53 EE         [24] 1490 	cjne	r6,#0x53,00109$
      0025C8 BF 00 EB         [24] 1491 	cjne	r7,#0x00,00109$
                                   1492 ;	life.c:74: generation[0] = 0;
      0025CB 90 8C 12         [24] 1493 	mov	dptr,#_generation
      0025CE E4               [12] 1494 	clr	a
      0025CF F0               [24] 1495 	movx	@dptr,a
      0025D0 A3               [24] 1496 	inc	dptr
      0025D1 F0               [24] 1497 	movx	@dptr,a
                                   1498 ;	life.c:75: generation[1] = 0;
      0025D2 90 8C 14         [24] 1499 	mov	dptr,#(_generation + 0x0002)
      0025D5 F0               [24] 1500 	movx	@dptr,a
      0025D6 A3               [24] 1501 	inc	dptr
      0025D7 F0               [24] 1502 	movx	@dptr,a
                                   1503 ;	life.c:223: for (i1 = 0; !i0 && !i1; ) {
      0025D8                       1504 00186$:
      0025D8 90 80 00         [24] 1505 	mov	dptr,#_i0
      0025DB E0               [24] 1506 	movx	a,@dptr
      0025DC 60 03            [24] 1507 	jz	00388$
      0025DE 02 2A AA         [24] 1508 	ljmp	00114$
      0025E1                       1509 00388$:
                                   1510 ;	life.c:224: show(1);
      0025E1 75 82 01         [24] 1511 	mov	dpl,#0x01
      0025E4 12 20 A9         [24] 1512 	lcall	_show
                                   1513 ;	life.c:154: fixed = 1;
      0025E7 90 8C 10         [24] 1514 	mov	dptr,#_fixed
      0025EA 74 01            [12] 1515 	mov	a,#0x01
      0025EC F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	life.c:155: cycle2 = 1;
      0025ED 90 8C 11         [24] 1518 	mov	dptr,#_cycle2
      0025F0 F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	life.c:156: bstep = 0;
      0025F1 90 8C 0E         [24] 1521 	mov	dptr,#_bstep
      0025F4 E4               [12] 1522 	clr	a
      0025F5 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	life.c:158: for (y = 0; y < H; y++) {
      0025F6 90 8C 04         [24] 1525 	mov	dptr,#_y
      0025F9 F0               [24] 1526 	movx	@dptr,a
      0025FA A3               [24] 1527 	inc	dptr
      0025FB F0               [24] 1528 	movx	@dptr,a
      0025FC                       1529 00179$:
                                   1530 ;	life.c:159: putchar(busy[bstep]); putchar('\r');
      0025FC 90 8C 0E         [24] 1531 	mov	dptr,#_bstep
      0025FF E0               [24] 1532 	movx	a,@dptr
      002600 90 2B 0E         [24] 1533 	mov	dptr,#_busy
      002603 93               [24] 1534 	movc	a,@a+dptr
      002604 FF               [12] 1535 	mov	r7,a
      002605 7E 00            [12] 1536 	mov	r6,#0x00
      002607 8F 82            [24] 1537 	mov	dpl,r7
      002609 8E 83            [24] 1538 	mov	dph,r6
      00260B 12 20 75         [24] 1539 	lcall	_putchar
      00260E 90 00 0D         [24] 1540 	mov	dptr,#0x000d
      002611 12 20 75         [24] 1541 	lcall	_putchar
                                   1542 ;	life.c:160: bstep = (bstep + 1) & 3;
      002614 90 8C 0E         [24] 1543 	mov	dptr,#_bstep
      002617 E0               [24] 1544 	movx	a,@dptr
      002618 FF               [12] 1545 	mov	r7,a
      002619 0F               [12] 1546 	inc	r7
      00261A 74 03            [12] 1547 	mov	a,#0x03
      00261C 5F               [12] 1548 	anl	a,r7
      00261D F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	life.c:161: for (x = 0; x < W; x++) {
      00261E 90 8C 02         [24] 1551 	mov	dptr,#_x
      002621 E4               [12] 1552 	clr	a
      002622 F0               [24] 1553 	movx	@dptr,a
      002623 A3               [24] 1554 	inc	dptr
      002624 F0               [24] 1555 	movx	@dptr,a
      002625                       1556 00177$:
                                   1557 ;	life.c:162: n = -u[A2D(W, y, x)];
      002625 90 8C 04         [24] 1558 	mov	dptr,#_y
      002628 E0               [24] 1559 	movx	a,@dptr
      002629 FE               [12] 1560 	mov	r6,a
      00262A A3               [24] 1561 	inc	dptr
      00262B E0               [24] 1562 	movx	a,@dptr
      00262C FF               [12] 1563 	mov	r7,a
      00262D A8 10            [24] 1564 	mov	r0,_bp
      00262F 08               [12] 1565 	inc	r0
      002630 A6 06            [24] 1566 	mov	@r0,ar6
      002632 EF               [12] 1567 	mov	a,r7
      002633 C4               [12] 1568 	swap	a
      002634 23               [12] 1569 	rl	a
      002635 54 E0            [12] 1570 	anl	a,#0xe0
      002637 C6               [12] 1571 	xch	a,@r0
      002638 C4               [12] 1572 	swap	a
      002639 23               [12] 1573 	rl	a
      00263A C6               [12] 1574 	xch	a,@r0
      00263B 66               [12] 1575 	xrl	a,@r0
      00263C C6               [12] 1576 	xch	a,@r0
      00263D 54 E0            [12] 1577 	anl	a,#0xe0
      00263F C6               [12] 1578 	xch	a,@r0
      002640 66               [12] 1579 	xrl	a,@r0
      002641 08               [12] 1580 	inc	r0
      002642 F6               [12] 1581 	mov	@r0,a
      002643 90 8C 02         [24] 1582 	mov	dptr,#_x
      002646 E0               [24] 1583 	movx	a,@dptr
      002647 FA               [12] 1584 	mov	r2,a
      002648 A3               [24] 1585 	inc	dptr
      002649 E0               [24] 1586 	movx	a,@dptr
      00264A FB               [12] 1587 	mov	r3,a
      00264B A8 10            [24] 1588 	mov	r0,_bp
      00264D 08               [12] 1589 	inc	r0
      00264E E5 10            [12] 1590 	mov	a,_bp
      002650 24 03            [12] 1591 	add	a,#0x03
      002652 F9               [12] 1592 	mov	r1,a
      002653 EA               [12] 1593 	mov	a,r2
      002654 26               [12] 1594 	add	a,@r0
      002655 F7               [12] 1595 	mov	@r1,a
      002656 EB               [12] 1596 	mov	a,r3
      002657 08               [12] 1597 	inc	r0
      002658 36               [12] 1598 	addc	a,@r0
      002659 09               [12] 1599 	inc	r1
      00265A F7               [12] 1600 	mov	@r1,a
      00265B E5 10            [12] 1601 	mov	a,_bp
      00265D 24 03            [12] 1602 	add	a,#0x03
      00265F F8               [12] 1603 	mov	r0,a
      002660 E6               [12] 1604 	mov	a,@r0
      002661 24 02            [12] 1605 	add	a,#_u
      002663 F5 82            [12] 1606 	mov	dpl,a
      002665 08               [12] 1607 	inc	r0
      002666 E6               [12] 1608 	mov	a,@r0
      002667 34 84            [12] 1609 	addc	a,#(_u >> 8)
      002669 F5 83            [12] 1610 	mov	dph,a
      00266B E0               [24] 1611 	movx	a,@dptr
      00266C FD               [12] 1612 	mov	r5,a
      00266D E5 10            [12] 1613 	mov	a,_bp
      00266F 24 05            [12] 1614 	add	a,#0x05
      002671 F8               [12] 1615 	mov	r0,a
      002672 C3               [12] 1616 	clr	c
      002673 E4               [12] 1617 	clr	a
      002674 9D               [12] 1618 	subb	a,r5
      002675 F6               [12] 1619 	mov	@r0,a
                                   1620 ;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002676 74 1F            [12] 1621 	mov	a,#0x1f
      002678 2E               [12] 1622 	add	a,r6
      002679 FC               [12] 1623 	mov	r4,a
      00267A E4               [12] 1624 	clr	a
      00267B 3F               [12] 1625 	addc	a,r7
      00267C FD               [12] 1626 	mov	r5,a
      00267D C0 07            [24] 1627 	push	ar7
      00267F C0 06            [24] 1628 	push	ar6
      002681 C0 03            [24] 1629 	push	ar3
      002683 C0 02            [24] 1630 	push	ar2
      002685 74 20            [12] 1631 	mov	a,#0x20
      002687 C0 E0            [24] 1632 	push	acc
      002689 E4               [12] 1633 	clr	a
      00268A C0 E0            [24] 1634 	push	acc
      00268C 8C 82            [24] 1635 	mov	dpl,r4
      00268E 8D 83            [24] 1636 	mov	dph,r5
      002690 12 2C 2B         [24] 1637 	lcall	__modsint
      002693 AC 82            [24] 1638 	mov	r4,dpl
      002695 AD 83            [24] 1639 	mov	r5,dph
      002697 15 81            [12] 1640 	dec	sp
      002699 15 81            [12] 1641 	dec	sp
      00269B D0 02            [24] 1642 	pop	ar2
      00269D D0 03            [24] 1643 	pop	ar3
      00269F E5 10            [12] 1644 	mov	a,_bp
      0026A1 24 06            [12] 1645 	add	a,#0x06
      0026A3 F8               [12] 1646 	mov	r0,a
      0026A4 A6 04            [24] 1647 	mov	@r0,ar4
      0026A6 ED               [12] 1648 	mov	a,r5
      0026A7 C4               [12] 1649 	swap	a
      0026A8 23               [12] 1650 	rl	a
      0026A9 54 E0            [12] 1651 	anl	a,#0xe0
      0026AB C6               [12] 1652 	xch	a,@r0
      0026AC C4               [12] 1653 	swap	a
      0026AD 23               [12] 1654 	rl	a
      0026AE C6               [12] 1655 	xch	a,@r0
      0026AF 66               [12] 1656 	xrl	a,@r0
      0026B0 C6               [12] 1657 	xch	a,@r0
      0026B1 54 E0            [12] 1658 	anl	a,#0xe0
      0026B3 C6               [12] 1659 	xch	a,@r0
      0026B4 66               [12] 1660 	xrl	a,@r0
      0026B5 08               [12] 1661 	inc	r0
      0026B6 F6               [12] 1662 	mov	@r0,a
      0026B7 74 1F            [12] 1663 	mov	a,#0x1f
      0026B9 2A               [12] 1664 	add	a,r2
      0026BA FC               [12] 1665 	mov	r4,a
      0026BB E4               [12] 1666 	clr	a
      0026BC 3B               [12] 1667 	addc	a,r3
      0026BD FD               [12] 1668 	mov	r5,a
      0026BE C0 03            [24] 1669 	push	ar3
      0026C0 C0 02            [24] 1670 	push	ar2
      0026C2 74 20            [12] 1671 	mov	a,#0x20
      0026C4 C0 E0            [24] 1672 	push	acc
      0026C6 E4               [12] 1673 	clr	a
      0026C7 C0 E0            [24] 1674 	push	acc
      0026C9 8C 82            [24] 1675 	mov	dpl,r4
      0026CB 8D 83            [24] 1676 	mov	dph,r5
      0026CD 12 2C 2B         [24] 1677 	lcall	__modsint
      0026D0 C8               [12] 1678 	xch	a,r0
      0026D1 E5 10            [12] 1679 	mov	a,_bp
      0026D3 24 08            [12] 1680 	add	a,#0x08
      0026D5 C8               [12] 1681 	xch	a,r0
      0026D6 A6 82            [24] 1682 	mov	@r0,dpl
      0026D8 08               [12] 1683 	inc	r0
      0026D9 A6 83            [24] 1684 	mov	@r0,dph
      0026DB 15 81            [12] 1685 	dec	sp
      0026DD 15 81            [12] 1686 	dec	sp
      0026DF D0 02            [24] 1687 	pop	ar2
      0026E1 D0 03            [24] 1688 	pop	ar3
      0026E3 E5 10            [12] 1689 	mov	a,_bp
      0026E5 24 06            [12] 1690 	add	a,#0x06
      0026E7 F8               [12] 1691 	mov	r0,a
      0026E8 E5 10            [12] 1692 	mov	a,_bp
      0026EA 24 08            [12] 1693 	add	a,#0x08
      0026EC F9               [12] 1694 	mov	r1,a
      0026ED E7               [12] 1695 	mov	a,@r1
      0026EE 26               [12] 1696 	add	a,@r0
      0026EF FC               [12] 1697 	mov	r4,a
      0026F0 09               [12] 1698 	inc	r1
      0026F1 E7               [12] 1699 	mov	a,@r1
      0026F2 08               [12] 1700 	inc	r0
      0026F3 36               [12] 1701 	addc	a,@r0
      0026F4 FD               [12] 1702 	mov	r5,a
      0026F5 EC               [12] 1703 	mov	a,r4
      0026F6 24 02            [12] 1704 	add	a,#_u
      0026F8 F5 82            [12] 1705 	mov	dpl,a
      0026FA ED               [12] 1706 	mov	a,r5
      0026FB 34 84            [12] 1707 	addc	a,#(_u >> 8)
      0026FD F5 83            [12] 1708 	mov	dph,a
      0026FF E0               [24] 1709 	movx	a,@dptr
      002700 FD               [12] 1710 	mov	r5,a
      002701 E5 10            [12] 1711 	mov	a,_bp
      002703 24 05            [12] 1712 	add	a,#0x05
      002705 F8               [12] 1713 	mov	r0,a
      002706 ED               [12] 1714 	mov	a,r5
      002707 26               [12] 1715 	add	a,@r0
      002708 F6               [12] 1716 	mov	@r0,a
                                   1717 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002709 74 20            [12] 1718 	mov	a,#0x20
      00270B 2A               [12] 1719 	add	a,r2
      00270C FC               [12] 1720 	mov	r4,a
      00270D E4               [12] 1721 	clr	a
      00270E 3B               [12] 1722 	addc	a,r3
      00270F FD               [12] 1723 	mov	r5,a
      002710 C0 03            [24] 1724 	push	ar3
      002712 C0 02            [24] 1725 	push	ar2
      002714 74 20            [12] 1726 	mov	a,#0x20
      002716 C0 E0            [24] 1727 	push	acc
      002718 E4               [12] 1728 	clr	a
      002719 C0 E0            [24] 1729 	push	acc
      00271B 8C 82            [24] 1730 	mov	dpl,r4
      00271D 8D 83            [24] 1731 	mov	dph,r5
      00271F 12 2C 2B         [24] 1732 	lcall	__modsint
      002722 C8               [12] 1733 	xch	a,r0
      002723 E5 10            [12] 1734 	mov	a,_bp
      002725 24 0A            [12] 1735 	add	a,#0x0a
      002727 C8               [12] 1736 	xch	a,r0
      002728 A6 82            [24] 1737 	mov	@r0,dpl
      00272A 08               [12] 1738 	inc	r0
      00272B A6 83            [24] 1739 	mov	@r0,dph
      00272D 15 81            [12] 1740 	dec	sp
      00272F 15 81            [12] 1741 	dec	sp
      002731 D0 02            [24] 1742 	pop	ar2
      002733 D0 03            [24] 1743 	pop	ar3
      002735 E5 10            [12] 1744 	mov	a,_bp
      002737 24 06            [12] 1745 	add	a,#0x06
      002739 F8               [12] 1746 	mov	r0,a
      00273A E5 10            [12] 1747 	mov	a,_bp
      00273C 24 0A            [12] 1748 	add	a,#0x0a
      00273E F9               [12] 1749 	mov	r1,a
      00273F E7               [12] 1750 	mov	a,@r1
      002740 26               [12] 1751 	add	a,@r0
      002741 FC               [12] 1752 	mov	r4,a
      002742 09               [12] 1753 	inc	r1
      002743 E7               [12] 1754 	mov	a,@r1
      002744 08               [12] 1755 	inc	r0
      002745 36               [12] 1756 	addc	a,@r0
      002746 FD               [12] 1757 	mov	r5,a
      002747 EC               [12] 1758 	mov	a,r4
      002748 24 02            [12] 1759 	add	a,#_u
      00274A F5 82            [12] 1760 	mov	dpl,a
      00274C ED               [12] 1761 	mov	a,r5
      00274D 34 84            [12] 1762 	addc	a,#(_u >> 8)
      00274F F5 83            [12] 1763 	mov	dph,a
      002751 E0               [24] 1764 	movx	a,@dptr
      002752 FD               [12] 1765 	mov	r5,a
      002753 E5 10            [12] 1766 	mov	a,_bp
      002755 24 05            [12] 1767 	add	a,#0x05
      002757 F8               [12] 1768 	mov	r0,a
      002758 ED               [12] 1769 	mov	a,r5
      002759 26               [12] 1770 	add	a,@r0
      00275A F6               [12] 1771 	mov	@r0,a
                                   1772 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00275B 74 21            [12] 1773 	mov	a,#0x21
      00275D 2A               [12] 1774 	add	a,r2
      00275E FC               [12] 1775 	mov	r4,a
      00275F E4               [12] 1776 	clr	a
      002760 3B               [12] 1777 	addc	a,r3
      002761 FD               [12] 1778 	mov	r5,a
      002762 C0 03            [24] 1779 	push	ar3
      002764 C0 02            [24] 1780 	push	ar2
      002766 74 20            [12] 1781 	mov	a,#0x20
      002768 C0 E0            [24] 1782 	push	acc
      00276A E4               [12] 1783 	clr	a
      00276B C0 E0            [24] 1784 	push	acc
      00276D 8C 82            [24] 1785 	mov	dpl,r4
      00276F 8D 83            [24] 1786 	mov	dph,r5
      002771 12 2C 2B         [24] 1787 	lcall	__modsint
      002774 C8               [12] 1788 	xch	a,r0
      002775 E5 10            [12] 1789 	mov	a,_bp
      002777 24 0C            [12] 1790 	add	a,#0x0c
      002779 C8               [12] 1791 	xch	a,r0
      00277A A6 82            [24] 1792 	mov	@r0,dpl
      00277C 08               [12] 1793 	inc	r0
      00277D A6 83            [24] 1794 	mov	@r0,dph
      00277F 15 81            [12] 1795 	dec	sp
      002781 15 81            [12] 1796 	dec	sp
      002783 D0 02            [24] 1797 	pop	ar2
      002785 D0 03            [24] 1798 	pop	ar3
      002787 D0 06            [24] 1799 	pop	ar6
      002789 D0 07            [24] 1800 	pop	ar7
      00278B E5 10            [12] 1801 	mov	a,_bp
      00278D 24 06            [12] 1802 	add	a,#0x06
      00278F F8               [12] 1803 	mov	r0,a
      002790 E5 10            [12] 1804 	mov	a,_bp
      002792 24 0C            [12] 1805 	add	a,#0x0c
      002794 F9               [12] 1806 	mov	r1,a
      002795 E7               [12] 1807 	mov	a,@r1
      002796 26               [12] 1808 	add	a,@r0
      002797 FC               [12] 1809 	mov	r4,a
      002798 09               [12] 1810 	inc	r1
      002799 E7               [12] 1811 	mov	a,@r1
      00279A 08               [12] 1812 	inc	r0
      00279B 36               [12] 1813 	addc	a,@r0
      00279C FD               [12] 1814 	mov	r5,a
      00279D EC               [12] 1815 	mov	a,r4
      00279E 24 02            [12] 1816 	add	a,#_u
      0027A0 F5 82            [12] 1817 	mov	dpl,a
      0027A2 ED               [12] 1818 	mov	a,r5
      0027A3 34 84            [12] 1819 	addc	a,#(_u >> 8)
      0027A5 F5 83            [12] 1820 	mov	dph,a
      0027A7 E0               [24] 1821 	movx	a,@dptr
      0027A8 FD               [12] 1822 	mov	r5,a
      0027A9 E5 10            [12] 1823 	mov	a,_bp
      0027AB 24 05            [12] 1824 	add	a,#0x05
      0027AD F8               [12] 1825 	mov	r0,a
      0027AE E5 10            [12] 1826 	mov	a,_bp
      0027B0 24 06            [12] 1827 	add	a,#0x06
      0027B2 F9               [12] 1828 	mov	r1,a
      0027B3 ED               [12] 1829 	mov	a,r5
      0027B4 26               [12] 1830 	add	a,@r0
      0027B5 F7               [12] 1831 	mov	@r1,a
                                   1832 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027B6 74 20            [12] 1833 	mov	a,#0x20
      0027B8 2E               [12] 1834 	add	a,r6
      0027B9 FC               [12] 1835 	mov	r4,a
      0027BA E4               [12] 1836 	clr	a
      0027BB 3F               [12] 1837 	addc	a,r7
      0027BC FD               [12] 1838 	mov	r5,a
      0027BD C0 07            [24] 1839 	push	ar7
      0027BF C0 06            [24] 1840 	push	ar6
      0027C1 C0 03            [24] 1841 	push	ar3
      0027C3 C0 02            [24] 1842 	push	ar2
      0027C5 74 20            [12] 1843 	mov	a,#0x20
      0027C7 C0 E0            [24] 1844 	push	acc
      0027C9 E4               [12] 1845 	clr	a
      0027CA C0 E0            [24] 1846 	push	acc
      0027CC 8C 82            [24] 1847 	mov	dpl,r4
      0027CE 8D 83            [24] 1848 	mov	dph,r5
      0027D0 12 2C 2B         [24] 1849 	lcall	__modsint
      0027D3 AC 82            [24] 1850 	mov	r4,dpl
      0027D5 AD 83            [24] 1851 	mov	r5,dph
      0027D7 15 81            [12] 1852 	dec	sp
      0027D9 15 81            [12] 1853 	dec	sp
      0027DB D0 02            [24] 1854 	pop	ar2
      0027DD D0 03            [24] 1855 	pop	ar3
      0027DF D0 06            [24] 1856 	pop	ar6
      0027E1 D0 07            [24] 1857 	pop	ar7
      0027E3 E5 10            [12] 1858 	mov	a,_bp
      0027E5 24 0E            [12] 1859 	add	a,#0x0e
      0027E7 F8               [12] 1860 	mov	r0,a
      0027E8 A6 04            [24] 1861 	mov	@r0,ar4
      0027EA ED               [12] 1862 	mov	a,r5
      0027EB C4               [12] 1863 	swap	a
      0027EC 23               [12] 1864 	rl	a
      0027ED 54 E0            [12] 1865 	anl	a,#0xe0
      0027EF C6               [12] 1866 	xch	a,@r0
      0027F0 C4               [12] 1867 	swap	a
      0027F1 23               [12] 1868 	rl	a
      0027F2 C6               [12] 1869 	xch	a,@r0
      0027F3 66               [12] 1870 	xrl	a,@r0
      0027F4 C6               [12] 1871 	xch	a,@r0
      0027F5 54 E0            [12] 1872 	anl	a,#0xe0
      0027F7 C6               [12] 1873 	xch	a,@r0
      0027F8 66               [12] 1874 	xrl	a,@r0
      0027F9 08               [12] 1875 	inc	r0
      0027FA F6               [12] 1876 	mov	@r0,a
      0027FB E5 10            [12] 1877 	mov	a,_bp
      0027FD 24 0E            [12] 1878 	add	a,#0x0e
      0027FF F8               [12] 1879 	mov	r0,a
      002800 E5 10            [12] 1880 	mov	a,_bp
      002802 24 08            [12] 1881 	add	a,#0x08
      002804 F9               [12] 1882 	mov	r1,a
      002805 E7               [12] 1883 	mov	a,@r1
      002806 26               [12] 1884 	add	a,@r0
      002807 FC               [12] 1885 	mov	r4,a
      002808 09               [12] 1886 	inc	r1
      002809 E7               [12] 1887 	mov	a,@r1
      00280A 08               [12] 1888 	inc	r0
      00280B 36               [12] 1889 	addc	a,@r0
      00280C FD               [12] 1890 	mov	r5,a
      00280D EC               [12] 1891 	mov	a,r4
      00280E 24 02            [12] 1892 	add	a,#_u
      002810 F5 82            [12] 1893 	mov	dpl,a
      002812 ED               [12] 1894 	mov	a,r5
      002813 34 84            [12] 1895 	addc	a,#(_u >> 8)
      002815 F5 83            [12] 1896 	mov	dph,a
      002817 E0               [24] 1897 	movx	a,@dptr
      002818 FD               [12] 1898 	mov	r5,a
      002819 E5 10            [12] 1899 	mov	a,_bp
      00281B 24 06            [12] 1900 	add	a,#0x06
      00281D F8               [12] 1901 	mov	r0,a
      00281E E5 10            [12] 1902 	mov	a,_bp
      002820 24 06            [12] 1903 	add	a,#0x06
      002822 F9               [12] 1904 	mov	r1,a
      002823 ED               [12] 1905 	mov	a,r5
      002824 26               [12] 1906 	add	a,@r0
      002825 F7               [12] 1907 	mov	@r1,a
                                   1908 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002826 E5 10            [12] 1909 	mov	a,_bp
      002828 24 0E            [12] 1910 	add	a,#0x0e
      00282A F8               [12] 1911 	mov	r0,a
      00282B E5 10            [12] 1912 	mov	a,_bp
      00282D 24 0A            [12] 1913 	add	a,#0x0a
      00282F F9               [12] 1914 	mov	r1,a
      002830 E7               [12] 1915 	mov	a,@r1
      002831 26               [12] 1916 	add	a,@r0
      002832 FC               [12] 1917 	mov	r4,a
      002833 09               [12] 1918 	inc	r1
      002834 E7               [12] 1919 	mov	a,@r1
      002835 08               [12] 1920 	inc	r0
      002836 36               [12] 1921 	addc	a,@r0
      002837 FD               [12] 1922 	mov	r5,a
      002838 EC               [12] 1923 	mov	a,r4
      002839 24 02            [12] 1924 	add	a,#_u
      00283B F5 82            [12] 1925 	mov	dpl,a
      00283D ED               [12] 1926 	mov	a,r5
      00283E 34 84            [12] 1927 	addc	a,#(_u >> 8)
      002840 F5 83            [12] 1928 	mov	dph,a
      002842 E0               [24] 1929 	movx	a,@dptr
      002843 FD               [12] 1930 	mov	r5,a
      002844 E5 10            [12] 1931 	mov	a,_bp
      002846 24 06            [12] 1932 	add	a,#0x06
      002848 F8               [12] 1933 	mov	r0,a
      002849 E5 10            [12] 1934 	mov	a,_bp
      00284B 24 06            [12] 1935 	add	a,#0x06
      00284D F9               [12] 1936 	mov	r1,a
      00284E ED               [12] 1937 	mov	a,r5
      00284F 26               [12] 1938 	add	a,@r0
      002850 F7               [12] 1939 	mov	@r1,a
                                   1940 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002851 E5 10            [12] 1941 	mov	a,_bp
      002853 24 0E            [12] 1942 	add	a,#0x0e
      002855 F8               [12] 1943 	mov	r0,a
      002856 E5 10            [12] 1944 	mov	a,_bp
      002858 24 0C            [12] 1945 	add	a,#0x0c
      00285A F9               [12] 1946 	mov	r1,a
      00285B E7               [12] 1947 	mov	a,@r1
      00285C 26               [12] 1948 	add	a,@r0
      00285D FC               [12] 1949 	mov	r4,a
      00285E 09               [12] 1950 	inc	r1
      00285F E7               [12] 1951 	mov	a,@r1
      002860 08               [12] 1952 	inc	r0
      002861 36               [12] 1953 	addc	a,@r0
      002862 FD               [12] 1954 	mov	r5,a
      002863 EC               [12] 1955 	mov	a,r4
      002864 24 02            [12] 1956 	add	a,#_u
      002866 F5 82            [12] 1957 	mov	dpl,a
      002868 ED               [12] 1958 	mov	a,r5
      002869 34 84            [12] 1959 	addc	a,#(_u >> 8)
      00286B F5 83            [12] 1960 	mov	dph,a
      00286D E0               [24] 1961 	movx	a,@dptr
      00286E FD               [12] 1962 	mov	r5,a
      00286F E5 10            [12] 1963 	mov	a,_bp
      002871 24 06            [12] 1964 	add	a,#0x06
      002873 F8               [12] 1965 	mov	r0,a
      002874 E5 10            [12] 1966 	mov	a,_bp
      002876 24 0E            [12] 1967 	add	a,#0x0e
      002878 F9               [12] 1968 	mov	r1,a
      002879 ED               [12] 1969 	mov	a,r5
      00287A 26               [12] 1970 	add	a,@r0
      00287B F7               [12] 1971 	mov	@r1,a
                                   1972 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00287C 74 21            [12] 1973 	mov	a,#0x21
      00287E 2E               [12] 1974 	add	a,r6
      00287F FE               [12] 1975 	mov	r6,a
      002880 E4               [12] 1976 	clr	a
      002881 3F               [12] 1977 	addc	a,r7
      002882 FF               [12] 1978 	mov	r7,a
      002883 C0 03            [24] 1979 	push	ar3
      002885 C0 02            [24] 1980 	push	ar2
      002887 74 20            [12] 1981 	mov	a,#0x20
      002889 C0 E0            [24] 1982 	push	acc
      00288B E4               [12] 1983 	clr	a
      00288C C0 E0            [24] 1984 	push	acc
      00288E 8E 82            [24] 1985 	mov	dpl,r6
      002890 8F 83            [24] 1986 	mov	dph,r7
      002892 12 2C 2B         [24] 1987 	lcall	__modsint
      002895 AE 82            [24] 1988 	mov	r6,dpl
      002897 AF 83            [24] 1989 	mov	r7,dph
      002899 15 81            [12] 1990 	dec	sp
      00289B 15 81            [12] 1991 	dec	sp
      00289D D0 02            [24] 1992 	pop	ar2
      00289F D0 03            [24] 1993 	pop	ar3
      0028A1 EF               [12] 1994 	mov	a,r7
      0028A2 C4               [12] 1995 	swap	a
      0028A3 23               [12] 1996 	rl	a
      0028A4 54 E0            [12] 1997 	anl	a,#0xe0
      0028A6 CE               [12] 1998 	xch	a,r6
      0028A7 C4               [12] 1999 	swap	a
      0028A8 23               [12] 2000 	rl	a
      0028A9 CE               [12] 2001 	xch	a,r6
      0028AA 6E               [12] 2002 	xrl	a,r6
      0028AB CE               [12] 2003 	xch	a,r6
      0028AC 54 E0            [12] 2004 	anl	a,#0xe0
      0028AE CE               [12] 2005 	xch	a,r6
      0028AF 6E               [12] 2006 	xrl	a,r6
      0028B0 FF               [12] 2007 	mov	r7,a
      0028B1 E5 10            [12] 2008 	mov	a,_bp
      0028B3 24 08            [12] 2009 	add	a,#0x08
      0028B5 F8               [12] 2010 	mov	r0,a
      0028B6 E6               [12] 2011 	mov	a,@r0
      0028B7 2E               [12] 2012 	add	a,r6
      0028B8 FC               [12] 2013 	mov	r4,a
      0028B9 08               [12] 2014 	inc	r0
      0028BA E6               [12] 2015 	mov	a,@r0
      0028BB 3F               [12] 2016 	addc	a,r7
      0028BC FD               [12] 2017 	mov	r5,a
      0028BD EC               [12] 2018 	mov	a,r4
      0028BE 24 02            [12] 2019 	add	a,#_u
      0028C0 F5 82            [12] 2020 	mov	dpl,a
      0028C2 ED               [12] 2021 	mov	a,r5
      0028C3 34 84            [12] 2022 	addc	a,#(_u >> 8)
      0028C5 F5 83            [12] 2023 	mov	dph,a
      0028C7 E0               [24] 2024 	movx	a,@dptr
      0028C8 FD               [12] 2025 	mov	r5,a
      0028C9 E5 10            [12] 2026 	mov	a,_bp
      0028CB 24 0E            [12] 2027 	add	a,#0x0e
      0028CD F8               [12] 2028 	mov	r0,a
      0028CE E5 10            [12] 2029 	mov	a,_bp
      0028D0 24 0E            [12] 2030 	add	a,#0x0e
      0028D2 F9               [12] 2031 	mov	r1,a
      0028D3 ED               [12] 2032 	mov	a,r5
      0028D4 26               [12] 2033 	add	a,@r0
      0028D5 F7               [12] 2034 	mov	@r1,a
                                   2035 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028D6 E5 10            [12] 2036 	mov	a,_bp
      0028D8 24 0A            [12] 2037 	add	a,#0x0a
      0028DA F8               [12] 2038 	mov	r0,a
      0028DB E6               [12] 2039 	mov	a,@r0
      0028DC 2E               [12] 2040 	add	a,r6
      0028DD FC               [12] 2041 	mov	r4,a
      0028DE 08               [12] 2042 	inc	r0
      0028DF E6               [12] 2043 	mov	a,@r0
      0028E0 3F               [12] 2044 	addc	a,r7
      0028E1 FD               [12] 2045 	mov	r5,a
      0028E2 EC               [12] 2046 	mov	a,r4
      0028E3 24 02            [12] 2047 	add	a,#_u
      0028E5 F5 82            [12] 2048 	mov	dpl,a
      0028E7 ED               [12] 2049 	mov	a,r5
      0028E8 34 84            [12] 2050 	addc	a,#(_u >> 8)
      0028EA F5 83            [12] 2051 	mov	dph,a
      0028EC E0               [24] 2052 	movx	a,@dptr
      0028ED FD               [12] 2053 	mov	r5,a
      0028EE E5 10            [12] 2054 	mov	a,_bp
      0028F0 24 0E            [12] 2055 	add	a,#0x0e
      0028F2 F8               [12] 2056 	mov	r0,a
      0028F3 ED               [12] 2057 	mov	a,r5
      0028F4 26               [12] 2058 	add	a,@r0
      0028F5 FD               [12] 2059 	mov	r5,a
                                   2060 ;	life.c:180: y1 = 1; x1 = 1;
      0028F6 90 8C 08         [24] 2061 	mov	dptr,#_y1
      0028F9 74 01            [12] 2062 	mov	a,#0x01
      0028FB F0               [24] 2063 	movx	@dptr,a
      0028FC E4               [12] 2064 	clr	a
      0028FD A3               [24] 2065 	inc	dptr
      0028FE F0               [24] 2066 	movx	@dptr,a
      0028FF 90 8C 06         [24] 2067 	mov	dptr,#_x1
      002902 04               [12] 2068 	inc	a
      002903 F0               [24] 2069 	movx	@dptr,a
      002904 E4               [12] 2070 	clr	a
      002905 A3               [24] 2071 	inc	dptr
      002906 F0               [24] 2072 	movx	@dptr,a
                                   2073 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002907 E5 10            [12] 2074 	mov	a,_bp
      002909 24 0C            [12] 2075 	add	a,#0x0c
      00290B F8               [12] 2076 	mov	r0,a
      00290C E6               [12] 2077 	mov	a,@r0
      00290D 2E               [12] 2078 	add	a,r6
      00290E FE               [12] 2079 	mov	r6,a
      00290F 08               [12] 2080 	inc	r0
      002910 E6               [12] 2081 	mov	a,@r0
      002911 3F               [12] 2082 	addc	a,r7
      002912 FF               [12] 2083 	mov	r7,a
      002913 EE               [12] 2084 	mov	a,r6
      002914 24 02            [12] 2085 	add	a,#_u
      002916 F5 82            [12] 2086 	mov	dpl,a
      002918 EF               [12] 2087 	mov	a,r7
      002919 34 84            [12] 2088 	addc	a,#(_u >> 8)
      00291B F5 83            [12] 2089 	mov	dph,a
      00291D E0               [24] 2090 	movx	a,@dptr
      00291E 2D               [12] 2091 	add	a,r5
      00291F FF               [12] 2092 	mov	r7,a
      002920 90 8C 0F         [24] 2093 	mov	dptr,#_n
      002923 F0               [24] 2094 	movx	@dptr,a
                                   2095 ;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002924 E5 10            [12] 2096 	mov	a,_bp
      002926 24 03            [12] 2097 	add	a,#0x03
      002928 F8               [12] 2098 	mov	r0,a
      002929 E6               [12] 2099 	mov	a,@r0
      00292A 24 02            [12] 2100 	add	a,#_nu
      00292C FD               [12] 2101 	mov	r5,a
      00292D 08               [12] 2102 	inc	r0
      00292E E6               [12] 2103 	mov	a,@r0
      00292F 34 88            [12] 2104 	addc	a,#(_nu >> 8)
      002931 FE               [12] 2105 	mov	r6,a
      002932 BF 03 02         [24] 2106 	cjne	r7,#0x03,00389$
      002935 80 20            [24] 2107 	sjmp	00199$
      002937                       2108 00389$:
      002937 BF 02 19         [24] 2109 	cjne	r7,#0x02,00198$
      00293A A8 10            [24] 2110 	mov	r0,_bp
      00293C 08               [12] 2111 	inc	r0
      00293D EA               [12] 2112 	mov	a,r2
      00293E 26               [12] 2113 	add	a,@r0
      00293F FA               [12] 2114 	mov	r2,a
      002940 EB               [12] 2115 	mov	a,r3
      002941 08               [12] 2116 	inc	r0
      002942 36               [12] 2117 	addc	a,@r0
      002943 FB               [12] 2118 	mov	r3,a
      002944 EA               [12] 2119 	mov	a,r2
      002945 24 02            [12] 2120 	add	a,#_u
      002947 FA               [12] 2121 	mov	r2,a
      002948 EB               [12] 2122 	mov	a,r3
      002949 34 84            [12] 2123 	addc	a,#(_u >> 8)
      00294B FB               [12] 2124 	mov	r3,a
      00294C 8A 82            [24] 2125 	mov	dpl,r2
      00294E 8B 83            [24] 2126 	mov	dph,r3
      002950 E0               [24] 2127 	movx	a,@dptr
      002951 70 04            [24] 2128 	jnz	00199$
      002953                       2129 00198$:
                                   2130 ;	assignBit
      002953 C2 00            [12] 2131 	clr	b0
      002955 80 02            [24] 2132 	sjmp	00200$
      002957                       2133 00199$:
                                   2134 ;	assignBit
      002957 D2 00            [12] 2135 	setb	b0
      002959                       2136 00200$:
      002959 A2 00            [12] 2137 	mov	c,b0
      00295B E4               [12] 2138 	clr	a
      00295C 33               [12] 2139 	rlc	a
      00295D 8D 82            [24] 2140 	mov	dpl,r5
      00295F 8E 83            [24] 2141 	mov	dph,r6
      002961 F0               [24] 2142 	movx	@dptr,a
                                   2143 ;	life.c:185: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      002962 90 8C 04         [24] 2144 	mov	dptr,#_y
      002965 E0               [24] 2145 	movx	a,@dptr
      002966 FE               [12] 2146 	mov	r6,a
      002967 A3               [24] 2147 	inc	dptr
      002968 E0               [24] 2148 	movx	a,@dptr
      002969 C4               [12] 2149 	swap	a
      00296A 23               [12] 2150 	rl	a
      00296B 54 E0            [12] 2151 	anl	a,#0xe0
      00296D CE               [12] 2152 	xch	a,r6
      00296E C4               [12] 2153 	swap	a
      00296F 23               [12] 2154 	rl	a
      002970 CE               [12] 2155 	xch	a,r6
      002971 6E               [12] 2156 	xrl	a,r6
      002972 CE               [12] 2157 	xch	a,r6
      002973 54 E0            [12] 2158 	anl	a,#0xe0
      002975 CE               [12] 2159 	xch	a,r6
      002976 6E               [12] 2160 	xrl	a,r6
      002977 FF               [12] 2161 	mov	r7,a
      002978 90 8C 02         [24] 2162 	mov	dptr,#_x
      00297B E0               [24] 2163 	movx	a,@dptr
      00297C FC               [12] 2164 	mov	r4,a
      00297D A3               [24] 2165 	inc	dptr
      00297E E0               [24] 2166 	movx	a,@dptr
      00297F FD               [12] 2167 	mov	r5,a
      002980 EC               [12] 2168 	mov	a,r4
      002981 2E               [12] 2169 	add	a,r6
      002982 FE               [12] 2170 	mov	r6,a
      002983 ED               [12] 2171 	mov	a,r5
      002984 3F               [12] 2172 	addc	a,r7
      002985 FF               [12] 2173 	mov	r7,a
      002986 EE               [12] 2174 	mov	a,r6
      002987 24 02            [12] 2175 	add	a,#_pu
      002989 F5 82            [12] 2176 	mov	dpl,a
      00298B EF               [12] 2177 	mov	a,r7
      00298C 34 80            [12] 2178 	addc	a,#(_pu >> 8)
      00298E F5 83            [12] 2179 	mov	dph,a
      002990 E0               [24] 2180 	movx	a,@dptr
      002991 FD               [12] 2181 	mov	r5,a
      002992 EE               [12] 2182 	mov	a,r6
      002993 24 02            [12] 2183 	add	a,#_nu
      002995 F5 82            [12] 2184 	mov	dpl,a
      002997 EF               [12] 2185 	mov	a,r7
      002998 34 88            [12] 2186 	addc	a,#(_nu >> 8)
      00299A F5 83            [12] 2187 	mov	dph,a
      00299C E0               [24] 2188 	movx	a,@dptr
      00299D FF               [12] 2189 	mov	r7,a
      00299E ED               [12] 2190 	mov	a,r5
      00299F B5 07 02         [24] 2191 	cjne	a,ar7,00393$
      0029A2 80 05            [24] 2192 	sjmp	00149$
      0029A4                       2193 00393$:
      0029A4 90 8C 11         [24] 2194 	mov	dptr,#_cycle2
      0029A7 E4               [12] 2195 	clr	a
      0029A8 F0               [24] 2196 	movx	@dptr,a
      0029A9                       2197 00149$:
                                   2198 ;	life.c:186: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      0029A9 90 8C 04         [24] 2199 	mov	dptr,#_y
      0029AC E0               [24] 2200 	movx	a,@dptr
      0029AD FE               [12] 2201 	mov	r6,a
      0029AE A3               [24] 2202 	inc	dptr
      0029AF E0               [24] 2203 	movx	a,@dptr
      0029B0 C4               [12] 2204 	swap	a
      0029B1 23               [12] 2205 	rl	a
      0029B2 54 E0            [12] 2206 	anl	a,#0xe0
      0029B4 CE               [12] 2207 	xch	a,r6
      0029B5 C4               [12] 2208 	swap	a
      0029B6 23               [12] 2209 	rl	a
      0029B7 CE               [12] 2210 	xch	a,r6
      0029B8 6E               [12] 2211 	xrl	a,r6
      0029B9 CE               [12] 2212 	xch	a,r6
      0029BA 54 E0            [12] 2213 	anl	a,#0xe0
      0029BC CE               [12] 2214 	xch	a,r6
      0029BD 6E               [12] 2215 	xrl	a,r6
      0029BE FF               [12] 2216 	mov	r7,a
      0029BF 90 8C 02         [24] 2217 	mov	dptr,#_x
      0029C2 E0               [24] 2218 	movx	a,@dptr
      0029C3 FC               [12] 2219 	mov	r4,a
      0029C4 A3               [24] 2220 	inc	dptr
      0029C5 E0               [24] 2221 	movx	a,@dptr
      0029C6 FD               [12] 2222 	mov	r5,a
      0029C7 EC               [12] 2223 	mov	a,r4
      0029C8 2E               [12] 2224 	add	a,r6
      0029C9 FE               [12] 2225 	mov	r6,a
      0029CA ED               [12] 2226 	mov	a,r5
      0029CB 3F               [12] 2227 	addc	a,r7
      0029CC FF               [12] 2228 	mov	r7,a
      0029CD EE               [12] 2229 	mov	a,r6
      0029CE 24 02            [12] 2230 	add	a,#_u
      0029D0 F5 82            [12] 2231 	mov	dpl,a
      0029D2 EF               [12] 2232 	mov	a,r7
      0029D3 34 84            [12] 2233 	addc	a,#(_u >> 8)
      0029D5 F5 83            [12] 2234 	mov	dph,a
      0029D7 E0               [24] 2235 	movx	a,@dptr
      0029D8 FD               [12] 2236 	mov	r5,a
      0029D9 EE               [12] 2237 	mov	a,r6
      0029DA 24 02            [12] 2238 	add	a,#_nu
      0029DC F5 82            [12] 2239 	mov	dpl,a
      0029DE EF               [12] 2240 	mov	a,r7
      0029DF 34 88            [12] 2241 	addc	a,#(_nu >> 8)
      0029E1 F5 83            [12] 2242 	mov	dph,a
      0029E3 E0               [24] 2243 	movx	a,@dptr
      0029E4 FF               [12] 2244 	mov	r7,a
      0029E5 ED               [12] 2245 	mov	a,r5
      0029E6 B5 07 02         [24] 2246 	cjne	a,ar7,00394$
      0029E9 80 05            [24] 2247 	sjmp	00178$
      0029EB                       2248 00394$:
      0029EB 90 8C 10         [24] 2249 	mov	dptr,#_fixed
      0029EE E4               [12] 2250 	clr	a
      0029EF F0               [24] 2251 	movx	@dptr,a
      0029F0                       2252 00178$:
                                   2253 ;	life.c:161: for (x = 0; x < W; x++) {
      0029F0 90 8C 02         [24] 2254 	mov	dptr,#_x
      0029F3 E0               [24] 2255 	movx	a,@dptr
      0029F4 24 01            [12] 2256 	add	a,#0x01
      0029F6 F0               [24] 2257 	movx	@dptr,a
      0029F7 A3               [24] 2258 	inc	dptr
      0029F8 E0               [24] 2259 	movx	a,@dptr
      0029F9 34 00            [12] 2260 	addc	a,#0x00
      0029FB F0               [24] 2261 	movx	@dptr,a
      0029FC 90 8C 02         [24] 2262 	mov	dptr,#_x
      0029FF E0               [24] 2263 	movx	a,@dptr
      002A00 FE               [12] 2264 	mov	r6,a
      002A01 A3               [24] 2265 	inc	dptr
      002A02 E0               [24] 2266 	movx	a,@dptr
      002A03 FF               [12] 2267 	mov	r7,a
      002A04 C3               [12] 2268 	clr	c
      002A05 EE               [12] 2269 	mov	a,r6
      002A06 94 20            [12] 2270 	subb	a,#0x20
      002A08 EF               [12] 2271 	mov	a,r7
      002A09 64 80            [12] 2272 	xrl	a,#0x80
      002A0B 94 80            [12] 2273 	subb	a,#0x80
      002A0D 50 03            [24] 2274 	jnc	00395$
      002A0F 02 26 25         [24] 2275 	ljmp	00177$
      002A12                       2276 00395$:
                                   2277 ;	life.c:158: for (y = 0; y < H; y++) {
      002A12 90 8C 04         [24] 2278 	mov	dptr,#_y
      002A15 E0               [24] 2279 	movx	a,@dptr
      002A16 24 01            [12] 2280 	add	a,#0x01
      002A18 F0               [24] 2281 	movx	@dptr,a
      002A19 A3               [24] 2282 	inc	dptr
      002A1A E0               [24] 2283 	movx	a,@dptr
      002A1B 34 00            [12] 2284 	addc	a,#0x00
      002A1D F0               [24] 2285 	movx	@dptr,a
      002A1E 90 8C 04         [24] 2286 	mov	dptr,#_y
      002A21 E0               [24] 2287 	movx	a,@dptr
      002A22 FE               [12] 2288 	mov	r6,a
      002A23 A3               [24] 2289 	inc	dptr
      002A24 E0               [24] 2290 	movx	a,@dptr
      002A25 FF               [12] 2291 	mov	r7,a
      002A26 C3               [12] 2292 	clr	c
      002A27 EE               [12] 2293 	mov	a,r6
      002A28 94 20            [12] 2294 	subb	a,#0x20
      002A2A EF               [12] 2295 	mov	a,r7
      002A2B 64 80            [12] 2296 	xrl	a,#0x80
      002A2D 94 80            [12] 2297 	subb	a,#0x80
      002A2F 50 03            [24] 2298 	jnc	00396$
      002A31 02 25 FC         [24] 2299 	ljmp	00179$
      002A34                       2300 00396$:
                                   2301 ;	life.c:190: memcpy(pu, u, sizeof (u));
      002A34 E4               [12] 2302 	clr	a
      002A35 C0 E0            [24] 2303 	push	acc
      002A37 74 04            [12] 2304 	mov	a,#0x04
      002A39 C0 E0            [24] 2305 	push	acc
      002A3B 74 02            [12] 2306 	mov	a,#_u
      002A3D C0 E0            [24] 2307 	push	acc
      002A3F 74 84            [12] 2308 	mov	a,#(_u >> 8)
      002A41 C0 E0            [24] 2309 	push	acc
      002A43 E4               [12] 2310 	clr	a
      002A44 C0 E0            [24] 2311 	push	acc
      002A46 90 80 02         [24] 2312 	mov	dptr,#_pu
      002A49 75 F0 00         [24] 2313 	mov	b,#0x00
      002A4C 12 2B 12         [24] 2314 	lcall	___memcpy
      002A4F E5 81            [12] 2315 	mov	a,sp
      002A51 24 FB            [12] 2316 	add	a,#0xfb
      002A53 F5 81            [12] 2317 	mov	sp,a
                                   2318 ;	life.c:191: memcpy(u, nu, sizeof (nu));
      002A55 E4               [12] 2319 	clr	a
      002A56 C0 E0            [24] 2320 	push	acc
      002A58 74 04            [12] 2321 	mov	a,#0x04
      002A5A C0 E0            [24] 2322 	push	acc
      002A5C 74 02            [12] 2323 	mov	a,#_nu
      002A5E C0 E0            [24] 2324 	push	acc
      002A60 74 88            [12] 2325 	mov	a,#(_nu >> 8)
      002A62 C0 E0            [24] 2326 	push	acc
      002A64 E4               [12] 2327 	clr	a
      002A65 C0 E0            [24] 2328 	push	acc
      002A67 90 84 02         [24] 2329 	mov	dptr,#_u
      002A6A 75 F0 00         [24] 2330 	mov	b,#0x00
      002A6D 12 2B 12         [24] 2331 	lcall	___memcpy
      002A70 E5 81            [12] 2332 	mov	a,sp
      002A72 24 FB            [12] 2333 	add	a,#0xfb
      002A74 F5 81            [12] 2334 	mov	sp,a
                                   2335 ;	life.c:226: if (fixed || cycle2) {
      002A76 90 8C 10         [24] 2336 	mov	dptr,#_fixed
      002A79 E0               [24] 2337 	movx	a,@dptr
      002A7A 70 09            [24] 2338 	jnz	00111$
      002A7C 90 8C 11         [24] 2339 	mov	dptr,#_cycle2
      002A7F E0               [24] 2340 	movx	a,@dptr
      002A80 70 03            [24] 2341 	jnz	00398$
      002A82 02 25 D8         [24] 2342 	ljmp	00186$
      002A85                       2343 00398$:
      002A85                       2344 00111$:
                                   2345 ;	life.c:227: printstr("DONE\r\n");
      002A85 7D 73            [12] 2346 	mov	r5,#___str_6
      002A87 7E 2D            [12] 2347 	mov	r6,#(___str_6 >> 8)
      002A89 7F 80            [12] 2348 	mov	r7,#0x80
                                   2349 ;	life.c:48: return;
      002A8B                       2350 00182$:
                                   2351 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A8B 8D 82            [24] 2352 	mov	dpl,r5
      002A8D 8E 83            [24] 2353 	mov	dph,r6
      002A8F 8F F0            [24] 2354 	mov	b,r7
      002A91 12 2C 0F         [24] 2355 	lcall	__gptrget
      002A94 FC               [12] 2356 	mov	r4,a
      002A95 60 10            [24] 2357 	jz	00156$
      002A97 7B 00            [12] 2358 	mov	r3,#0x00
      002A99 8C 82            [24] 2359 	mov	dpl,r4
      002A9B 8B 83            [24] 2360 	mov	dph,r3
      002A9D 12 20 75         [24] 2361 	lcall	_putchar
      002AA0 0D               [12] 2362 	inc	r5
                                   2363 ;	life.c:227: printstr("DONE\r\n");
      002AA1 BD 00 E7         [24] 2364 	cjne	r5,#0x00,00182$
      002AA4 0E               [12] 2365 	inc	r6
      002AA5 80 E4            [24] 2366 	sjmp	00182$
      002AA7                       2367 00156$:
                                   2368 ;	life.c:228: (void)getchar();
      002AA7 12 20 7A         [24] 2369 	lcall	_getchar
                                   2370 ;	life.c:229: break;
      002AAA                       2371 00114$:
                                   2372 ;	life.c:233: if (i1) {
      002AAA 90 80 01         [24] 2373 	mov	dptr,#_i1
      002AAD E0               [24] 2374 	movx	a,@dptr
      002AAE 60 25            [24] 2375 	jz	00192$
                                   2376 ;	life.c:234: printstr("BREAK\r\n");
      002AB0 7D 7A            [12] 2377 	mov	r5,#___str_7
      002AB2 7E 2D            [12] 2378 	mov	r6,#(___str_7 >> 8)
      002AB4 7F 80            [12] 2379 	mov	r7,#0x80
                                   2380 ;	life.c:48: return;
      002AB6                       2381 00189$:
                                   2382 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AB6 8D 82            [24] 2383 	mov	dpl,r5
      002AB8 8E 83            [24] 2384 	mov	dph,r6
      002ABA 8F F0            [24] 2385 	mov	b,r7
      002ABC 12 2C 0F         [24] 2386 	lcall	__gptrget
      002ABF FC               [12] 2387 	mov	r4,a
      002AC0 60 10            [24] 2388 	jz	00158$
      002AC2 7B 00            [12] 2389 	mov	r3,#0x00
      002AC4 8C 82            [24] 2390 	mov	dpl,r4
      002AC6 8B 83            [24] 2391 	mov	dph,r3
      002AC8 12 20 75         [24] 2392 	lcall	_putchar
      002ACB 0D               [12] 2393 	inc	r5
                                   2394 ;	life.c:234: printstr("BREAK\r\n");
      002ACC BD 00 E7         [24] 2395 	cjne	r5,#0x00,00189$
      002ACF 0E               [12] 2396 	inc	r6
      002AD0 80 E4            [24] 2397 	sjmp	00189$
      002AD2                       2398 00158$:
                                   2399 ;	life.c:235: (void)getchar();
      002AD2 12 20 7A         [24] 2400 	lcall	_getchar
      002AD5                       2401 00192$:
                                   2402 ;	life.c:203: for (i0 = 0; !i0; ) {
      002AD5 90 80 00         [24] 2403 	mov	dptr,#_i0
      002AD8 E0               [24] 2404 	movx	a,@dptr
      002AD9 70 03            [24] 2405 	jnz	00404$
      002ADB 02 23 2B         [24] 2406 	ljmp	00191$
      002ADE                       2407 00404$:
                                   2408 ;	life.c:239: EA = 0;
                                   2409 ;	assignBit
      002ADE C2 AF            [12] 2410 	clr	_EA
                                   2411 ;	life.c:241: printstr("TERM\r\n");
      002AE0 7D 82            [12] 2412 	mov	r5,#___str_8
      002AE2 7E 2D            [12] 2413 	mov	r6,#(___str_8 >> 8)
      002AE4 7F 80            [12] 2414 	mov	r7,#0x80
                                   2415 ;	life.c:48: return;
      002AE6                       2416 00194$:
                                   2417 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AE6 8D 82            [24] 2418 	mov	dpl,r5
      002AE8 8E 83            [24] 2419 	mov	dph,r6
      002AEA 8F F0            [24] 2420 	mov	b,r7
      002AEC 12 2C 0F         [24] 2421 	lcall	__gptrget
      002AEF FC               [12] 2422 	mov	r4,a
      002AF0 60 10            [24] 2423 	jz	00160$
      002AF2 7B 00            [12] 2424 	mov	r3,#0x00
      002AF4 8C 82            [24] 2425 	mov	dpl,r4
      002AF6 8B 83            [24] 2426 	mov	dph,r3
      002AF8 12 20 75         [24] 2427 	lcall	_putchar
      002AFB 0D               [12] 2428 	inc	r5
                                   2429 ;	life.c:241: printstr("TERM\r\n");
      002AFC BD 00 E7         [24] 2430 	cjne	r5,#0x00,00194$
      002AFF 0E               [12] 2431 	inc	r6
      002B00 80 E4            [24] 2432 	sjmp	00194$
      002B02                       2433 00160$:
                                   2434 ;	life.c:242: (void)getchar();
      002B02 12 20 7A         [24] 2435 	lcall	_getchar
                                   2436 ;	life.c:246: __endasm;
      002B05 02 00 00         [24] 2437 	ljmp	0
                                   2438 ;	life.c:247: }
      002B08 85 10 81         [24] 2439 	mov	sp,_bp
      002B0B D0 10            [24] 2440 	pop	_bp
      002B0D 22               [24] 2441 	ret
                                   2442 	.area CSEG    (CODE)
                                   2443 	.area CONST   (CODE)
      002D37                       2444 _digits:
      002D37 30                    2445 	.db #0x30	; 48	'0'
      002D38 31                    2446 	.db #0x31	; 49	'1'
      002D39 32                    2447 	.db #0x32	; 50	'2'
      002D3A 33                    2448 	.db #0x33	; 51	'3'
      002D3B 34                    2449 	.db #0x34	; 52	'4'
      002D3C 35                    2450 	.db #0x35	; 53	'5'
      002D3D 36                    2451 	.db #0x36	; 54	'6'
      002D3E 37                    2452 	.db #0x37	; 55	'7'
      002D3F 38                    2453 	.db #0x38	; 56	'8'
      002D40 39                    2454 	.db #0x39	; 57	'9'
      002D41 61                    2455 	.db #0x61	; 97	'a'
      002D42 62                    2456 	.db #0x62	; 98	'b'
      002D43 63                    2457 	.db #0x63	; 99	'c'
      002D44 64                    2458 	.db #0x64	; 100	'd'
      002D45 65                    2459 	.db #0x65	; 101	'e'
      002D46 66                    2460 	.db #0x66	; 102	'f'
                                   2461 	.area CONST   (CODE)
      002D47                       2462 ___str_0:
      002D47 1B                    2463 	.db 0x1b
      002D48 5B 32 4A              2464 	.ascii "[2J"
      002D4B 1B                    2465 	.db 0x1b
      002D4C 5B 6D                 2466 	.ascii "[m"
      002D4E 00                    2467 	.db 0x00
                                   2468 	.area CSEG    (CODE)
                                   2469 	.area CONST   (CODE)
      002D4F                       2470 ___str_1:
      002D4F 0D                    2471 	.db 0x0d
      002D50 0A                    2472 	.db 0x0a
      002D51 00                    2473 	.db 0x00
                                   2474 	.area CSEG    (CODE)
                                   2475 	.area CONST   (CODE)
      002D52                       2476 ___str_2:
      002D52 4C 4F 41 44 20 3C     2477 	.ascii "LOAD <"
      002D58 00                    2478 	.db 0x00
                                   2479 	.area CSEG    (CODE)
                                   2480 	.area CONST   (CODE)
      002D59                       2481 ___str_3:
      002D59 3E                    2482 	.ascii ">"
      002D5A 0D                    2483 	.db 0x0d
      002D5B 0A                    2484 	.db 0x0a
      002D5C 00                    2485 	.db 0x00
                                   2486 	.area CSEG    (CODE)
      002B0E                       2487 _busy:
      002B0E 5C                    2488 	.db #0x5c	; 92
      002B0F 7C                    2489 	.db #0x7c	; 124
      002B10 2F                    2490 	.db #0x2f	; 47
      002B11 2D                    2491 	.db #0x2d	; 45
                                   2492 	.area CONST   (CODE)
      002D5D                       2493 ___str_4:
      002D5D 1B                    2494 	.db 0x1b
      002D5E 5B 32 4A              2495 	.ascii "[2J"
      002D61 1B                    2496 	.db 0x1b
      002D62 5B 6D 49 4E 49 54     2497 	.ascii "[mINIT"
      002D68 0D                    2498 	.db 0x0d
      002D69 0A                    2499 	.db 0x0a
      002D6A 00                    2500 	.db 0x00
                                   2501 	.area CSEG    (CODE)
                                   2502 	.area CONST   (CODE)
      002D6B                       2503 ___str_5:
      002D6B 52 45 41 44 59        2504 	.ascii "READY"
      002D70 0D                    2505 	.db 0x0d
      002D71 0A                    2506 	.db 0x0a
      002D72 00                    2507 	.db 0x00
                                   2508 	.area CSEG    (CODE)
                                   2509 	.area CONST   (CODE)
      002D73                       2510 ___str_6:
      002D73 44 4F 4E 45           2511 	.ascii "DONE"
      002D77 0D                    2512 	.db 0x0d
      002D78 0A                    2513 	.db 0x0a
      002D79 00                    2514 	.db 0x00
                                   2515 	.area CSEG    (CODE)
                                   2516 	.area CONST   (CODE)
      002D7A                       2517 ___str_7:
      002D7A 42 52 45 41 4B        2518 	.ascii "BREAK"
      002D7F 0D                    2519 	.db 0x0d
      002D80 0A                    2520 	.db 0x0a
      002D81 00                    2521 	.db 0x00
                                   2522 	.area CSEG    (CODE)
                                   2523 	.area CONST   (CODE)
      002D82                       2524 ___str_8:
      002D82 54 45 52 4D           2525 	.ascii "TERM"
      002D86 0D                    2526 	.db 0x0d
      002D87 0A                    2527 	.db 0x0a
      002D88 00                    2528 	.db 0x00
                                   2529 	.area CSEG    (CODE)
                                   2530 	.area XINIT   (CODE)
                                   2531 	.area CABS    (ABS,CODE)
