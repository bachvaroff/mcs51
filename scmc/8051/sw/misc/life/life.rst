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
      0020B1 7D 50            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2D            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2C 18         [24]  565 	lcall	__gptrget
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
      0020ED 24 40            [12]  597 	add	a,#_digits
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
      00210A 24 40            [12]  614 	add	a,#_digits
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
      002139 24 40            [12]  645 	add	a,#_digits
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
      002154 24 40            [12]  661 	add	a,#_digits
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
      002183 24 40            [12]  692 	add	a,#_digits
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
      0021A0 24 40            [12]  709 	add	a,#_digits
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
      0021CF 24 40            [12]  740 	add	a,#_digits
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
      0021EA 24 40            [12]  756 	add	a,#_digits
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
      0021FF 7D 58            [12]  769 	mov	r5,#___str_1
      002201 7E 2D            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2C 18         [24]  778 	lcall	__gptrget
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
      0022C9 7D 58            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2D            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2C 18         [24]  930 	lcall	__gptrget
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
      002327 90 80 01         [24] 1027 	mov	dptr,#_i1
      00232A F0               [24] 1028 	movx	@dptr,a
      00232B                       1029 00194$:
                                   1030 ;	life.c:204: printstr("\033[2J\033[mINIT\r\n");
      00232B 7D 66            [12] 1031 	mov	r5,#___str_4
      00232D 7E 2D            [12] 1032 	mov	r6,#(___str_4 >> 8)
      00232F 7F 80            [12] 1033 	mov	r7,#0x80
                                   1034 ;	life.c:48: return;
      002331                       1035 00165$:
                                   1036 ;	life.c:46: for (; *s; s++) putchar(*s);
      002331 8D 82            [24] 1037 	mov	dpl,r5
      002333 8E 83            [24] 1038 	mov	dph,r6
      002335 8F F0            [24] 1039 	mov	b,r7
      002337 12 2C 18         [24] 1040 	lcall	__gptrget
      00233A FC               [12] 1041 	mov	r4,a
      00233B 60 10            [24] 1042 	jz	00104$
      00233D 7B 00            [12] 1043 	mov	r3,#0x00
      00233F 8C 82            [24] 1044 	mov	dpl,r4
      002341 8B 83            [24] 1045 	mov	dph,r3
      002343 12 20 75         [24] 1046 	lcall	_putchar
      002346 0D               [12] 1047 	inc	r5
                                   1048 ;	life.c:205: while (1) {
      002347 BD 00 E7         [24] 1049 	cjne	r5,#0x00,00165$
      00234A 0E               [12] 1050 	inc	r6
      00234B 80 E4            [24] 1051 	sjmp	00165$
      00234D                       1052 00104$:
                                   1053 ;	life.c:206: c = getchar();
      00234D 12 20 7A         [24] 1054 	lcall	_getchar
      002350 AE 82            [24] 1055 	mov	r6,dpl
      002352 AF 83            [24] 1056 	mov	r7,dph
      002354 90 8C 0C         [24] 1057 	mov	dptr,#_c
      002357 EE               [12] 1058 	mov	a,r6
      002358 F0               [24] 1059 	movx	@dptr,a
      002359 EF               [12] 1060 	mov	a,r7
      00235A A3               [24] 1061 	inc	dptr
      00235B F0               [24] 1062 	movx	@dptr,a
                                   1063 ;	life.c:207: if (c == (int)'L') break;
      00235C BE 4C EE         [24] 1064 	cjne	r6,#0x4c,00104$
      00235F BF 00 EB         [24] 1065 	cjne	r7,#0x00,00104$
                                   1066 ;	life.c:210: reload:
      002362                       1067 00106$:
                                   1068 ;	life.c:116: memset(u, 0, sizeof (u));
      002362 E4               [12] 1069 	clr	a
      002363 C0 E0            [24] 1070 	push	acc
      002365 74 04            [12] 1071 	mov	a,#0x04
      002367 C0 E0            [24] 1072 	push	acc
      002369 E4               [12] 1073 	clr	a
      00236A C0 E0            [24] 1074 	push	acc
      00236C 90 84 02         [24] 1075 	mov	dptr,#_u
      00236F 75 F0 00         [24] 1076 	mov	b,#0x00
      002372 12 2B AE         [24] 1077 	lcall	_memset
      002375 15 81            [12] 1078 	dec	sp
      002377 15 81            [12] 1079 	dec	sp
      002379 15 81            [12] 1080 	dec	sp
                                   1081 ;	life.c:117: memset(pu, 0, sizeof (pu));
      00237B E4               [12] 1082 	clr	a
      00237C C0 E0            [24] 1083 	push	acc
      00237E 74 04            [12] 1084 	mov	a,#0x04
      002380 C0 E0            [24] 1085 	push	acc
      002382 E4               [12] 1086 	clr	a
      002383 C0 E0            [24] 1087 	push	acc
      002385 90 80 02         [24] 1088 	mov	dptr,#_pu
      002388 75 F0 00         [24] 1089 	mov	b,#0x00
      00238B 12 2B AE         [24] 1090 	lcall	_memset
      00238E 15 81            [12] 1091 	dec	sp
      002390 15 81            [12] 1092 	dec	sp
      002392 15 81            [12] 1093 	dec	sp
                                   1094 ;	life.c:123: j = 0;
      002394 90 8C 0A         [24] 1095 	mov	dptr,#_j
      002397 E4               [12] 1096 	clr	a
      002398 F0               [24] 1097 	movx	@dptr,a
      002399 A3               [24] 1098 	inc	dptr
      00239A F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	life.c:125: printstr("LOAD <");
      00239B 7D 5B            [12] 1101 	mov	r5,#___str_2
      00239D 7E 2D            [12] 1102 	mov	r6,#(___str_2 >> 8)
      00239F 7F 80            [12] 1103 	mov	r7,#0x80
                                   1104 ;	life.c:48: return;
      0023A1                       1105 00168$:
                                   1106 ;	life.c:46: for (; *s; s++) putchar(*s);
      0023A1 8D 82            [24] 1107 	mov	dpl,r5
      0023A3 8E 83            [24] 1108 	mov	dph,r6
      0023A5 8F F0            [24] 1109 	mov	b,r7
      0023A7 12 2C 18         [24] 1110 	lcall	__gptrget
      0023AA FC               [12] 1111 	mov	r4,a
      0023AB 60 10            [24] 1112 	jz	00125$
      0023AD 7B 00            [12] 1113 	mov	r3,#0x00
      0023AF 8C 82            [24] 1114 	mov	dpl,r4
      0023B1 8B 83            [24] 1115 	mov	dph,r3
      0023B3 12 20 75         [24] 1116 	lcall	_putchar
      0023B6 0D               [12] 1117 	inc	r5
                                   1118 ;	life.c:125: printstr("LOAD <");
      0023B7 BD 00 E7         [24] 1119 	cjne	r5,#0x00,00168$
      0023BA 0E               [12] 1120 	inc	r6
      0023BB 80 E4            [24] 1121 	sjmp	00168$
      0023BD                       1122 00125$:
                                   1123 ;	life.c:127: for (y = 0; y < H; y++)
      0023BD 90 8C 04         [24] 1124 	mov	dptr,#_y
      0023C0 E4               [12] 1125 	clr	a
      0023C1 F0               [24] 1126 	movx	@dptr,a
      0023C2 A3               [24] 1127 	inc	dptr
      0023C3 F0               [24] 1128 	movx	@dptr,a
      0023C4                       1129 00172$:
                                   1130 ;	life.c:128: for (x = 0; x < W; x++) {
      0023C4 90 8C 02         [24] 1131 	mov	dptr,#_x
      0023C7 E4               [12] 1132 	clr	a
      0023C8 F0               [24] 1133 	movx	@dptr,a
      0023C9 A3               [24] 1134 	inc	dptr
      0023CA F0               [24] 1135 	movx	@dptr,a
      0023CB                       1136 00170$:
                                   1137 ;	life.c:129: c = getchar();
      0023CB 12 20 7A         [24] 1138 	lcall	_getchar
      0023CE AE 82            [24] 1139 	mov	r6,dpl
      0023D0 AF 83            [24] 1140 	mov	r7,dph
      0023D2 90 8C 0C         [24] 1141 	mov	dptr,#_c
      0023D5 EE               [12] 1142 	mov	a,r6
      0023D6 F0               [24] 1143 	movx	@dptr,a
      0023D7 EF               [12] 1144 	mov	a,r7
      0023D8 A3               [24] 1145 	inc	dptr
      0023D9 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	life.c:130: if (c == (int)'0') {
      0023DA BE 30 41         [24] 1148 	cjne	r6,#0x30,00132$
      0023DD BF 00 3E         [24] 1149 	cjne	r7,#0x00,00132$
                                   1150 ;	life.c:131: u[A2D(W, y, x)] = 0;
      0023E0 90 8C 04         [24] 1151 	mov	dptr,#_y
      0023E3 E0               [24] 1152 	movx	a,@dptr
      0023E4 FC               [12] 1153 	mov	r4,a
      0023E5 A3               [24] 1154 	inc	dptr
      0023E6 E0               [24] 1155 	movx	a,@dptr
      0023E7 C4               [12] 1156 	swap	a
      0023E8 23               [12] 1157 	rl	a
      0023E9 54 E0            [12] 1158 	anl	a,#0xe0
      0023EB CC               [12] 1159 	xch	a,r4
      0023EC C4               [12] 1160 	swap	a
      0023ED 23               [12] 1161 	rl	a
      0023EE CC               [12] 1162 	xch	a,r4
      0023EF 6C               [12] 1163 	xrl	a,r4
      0023F0 CC               [12] 1164 	xch	a,r4
      0023F1 54 E0            [12] 1165 	anl	a,#0xe0
      0023F3 CC               [12] 1166 	xch	a,r4
      0023F4 6C               [12] 1167 	xrl	a,r4
      0023F5 FD               [12] 1168 	mov	r5,a
      0023F6 90 8C 02         [24] 1169 	mov	dptr,#_x
      0023F9 E0               [24] 1170 	movx	a,@dptr
      0023FA FA               [12] 1171 	mov	r2,a
      0023FB A3               [24] 1172 	inc	dptr
      0023FC E0               [24] 1173 	movx	a,@dptr
      0023FD FB               [12] 1174 	mov	r3,a
      0023FE EA               [12] 1175 	mov	a,r2
      0023FF 2C               [12] 1176 	add	a,r4
      002400 FC               [12] 1177 	mov	r4,a
      002401 EB               [12] 1178 	mov	a,r3
      002402 3D               [12] 1179 	addc	a,r5
      002403 FD               [12] 1180 	mov	r5,a
      002404 EC               [12] 1181 	mov	a,r4
      002405 24 02            [12] 1182 	add	a,#_u
      002407 F5 82            [12] 1183 	mov	dpl,a
      002409 ED               [12] 1184 	mov	a,r5
      00240A 34 84            [12] 1185 	addc	a,#(_u >> 8)
      00240C F5 83            [12] 1186 	mov	dph,a
      00240E E4               [12] 1187 	clr	a
      00240F F0               [24] 1188 	movx	@dptr,a
                                   1189 ;	life.c:132: j++;
      002410 90 8C 0A         [24] 1190 	mov	dptr,#_j
      002413 E0               [24] 1191 	movx	a,@dptr
      002414 24 01            [12] 1192 	add	a,#0x01
      002416 F0               [24] 1193 	movx	@dptr,a
      002417 A3               [24] 1194 	inc	dptr
      002418 E0               [24] 1195 	movx	a,@dptr
      002419 34 00            [12] 1196 	addc	a,#0x00
      00241B F0               [24] 1197 	movx	@dptr,a
      00241C 80 4D            [24] 1198 	sjmp	00171$
      00241E                       1199 00132$:
                                   1200 ;	life.c:133: } else if (c == (int)'1') {
      00241E BE 31 42         [24] 1201 	cjne	r6,#0x31,00130$
      002421 BF 00 3F         [24] 1202 	cjne	r7,#0x00,00130$
                                   1203 ;	life.c:134: u[A2D(W, y, x)] = 1;
      002424 90 8C 04         [24] 1204 	mov	dptr,#_y
      002427 E0               [24] 1205 	movx	a,@dptr
      002428 FC               [12] 1206 	mov	r4,a
      002429 A3               [24] 1207 	inc	dptr
      00242A E0               [24] 1208 	movx	a,@dptr
      00242B C4               [12] 1209 	swap	a
      00242C 23               [12] 1210 	rl	a
      00242D 54 E0            [12] 1211 	anl	a,#0xe0
      00242F CC               [12] 1212 	xch	a,r4
      002430 C4               [12] 1213 	swap	a
      002431 23               [12] 1214 	rl	a
      002432 CC               [12] 1215 	xch	a,r4
      002433 6C               [12] 1216 	xrl	a,r4
      002434 CC               [12] 1217 	xch	a,r4
      002435 54 E0            [12] 1218 	anl	a,#0xe0
      002437 CC               [12] 1219 	xch	a,r4
      002438 6C               [12] 1220 	xrl	a,r4
      002439 FD               [12] 1221 	mov	r5,a
      00243A 90 8C 02         [24] 1222 	mov	dptr,#_x
      00243D E0               [24] 1223 	movx	a,@dptr
      00243E FA               [12] 1224 	mov	r2,a
      00243F A3               [24] 1225 	inc	dptr
      002440 E0               [24] 1226 	movx	a,@dptr
      002441 FB               [12] 1227 	mov	r3,a
      002442 EA               [12] 1228 	mov	a,r2
      002443 2C               [12] 1229 	add	a,r4
      002444 FC               [12] 1230 	mov	r4,a
      002445 EB               [12] 1231 	mov	a,r3
      002446 3D               [12] 1232 	addc	a,r5
      002447 FD               [12] 1233 	mov	r5,a
      002448 EC               [12] 1234 	mov	a,r4
      002449 24 02            [12] 1235 	add	a,#_u
      00244B F5 82            [12] 1236 	mov	dpl,a
      00244D ED               [12] 1237 	mov	a,r5
      00244E 34 84            [12] 1238 	addc	a,#(_u >> 8)
      002450 F5 83            [12] 1239 	mov	dph,a
      002452 74 01            [12] 1240 	mov	a,#0x01
      002454 F0               [24] 1241 	movx	@dptr,a
                                   1242 ;	life.c:135: j++;
      002455 90 8C 0A         [24] 1243 	mov	dptr,#_j
      002458 E0               [24] 1244 	movx	a,@dptr
      002459 24 01            [12] 1245 	add	a,#0x01
      00245B F0               [24] 1246 	movx	@dptr,a
      00245C A3               [24] 1247 	inc	dptr
      00245D E0               [24] 1248 	movx	a,@dptr
      00245E 34 00            [12] 1249 	addc	a,#0x00
      002460 F0               [24] 1250 	movx	@dptr,a
      002461 80 08            [24] 1251 	sjmp	00171$
      002463                       1252 00130$:
                                   1253 ;	life.c:136: } else if (c == (int)'#') goto out;
      002463 BE 23 05         [24] 1254 	cjne	r6,#0x23,00381$
      002466 BF 00 02         [24] 1255 	cjne	r7,#0x00,00381$
      002469 80 44            [24] 1256 	sjmp	00143$
      00246B                       1257 00381$:
      00246B                       1258 00171$:
                                   1259 ;	life.c:128: for (x = 0; x < W; x++) {
      00246B 90 8C 02         [24] 1260 	mov	dptr,#_x
      00246E E0               [24] 1261 	movx	a,@dptr
      00246F 24 01            [12] 1262 	add	a,#0x01
      002471 F0               [24] 1263 	movx	@dptr,a
      002472 A3               [24] 1264 	inc	dptr
      002473 E0               [24] 1265 	movx	a,@dptr
      002474 34 00            [12] 1266 	addc	a,#0x00
      002476 F0               [24] 1267 	movx	@dptr,a
      002477 90 8C 02         [24] 1268 	mov	dptr,#_x
      00247A E0               [24] 1269 	movx	a,@dptr
      00247B FE               [12] 1270 	mov	r6,a
      00247C A3               [24] 1271 	inc	dptr
      00247D E0               [24] 1272 	movx	a,@dptr
      00247E FF               [12] 1273 	mov	r7,a
      00247F C3               [12] 1274 	clr	c
      002480 EE               [12] 1275 	mov	a,r6
      002481 94 20            [12] 1276 	subb	a,#0x20
      002483 EF               [12] 1277 	mov	a,r7
      002484 64 80            [12] 1278 	xrl	a,#0x80
      002486 94 80            [12] 1279 	subb	a,#0x80
      002488 50 03            [24] 1280 	jnc	00382$
      00248A 02 23 CB         [24] 1281 	ljmp	00170$
      00248D                       1282 00382$:
                                   1283 ;	life.c:127: for (y = 0; y < H; y++)
      00248D 90 8C 04         [24] 1284 	mov	dptr,#_y
      002490 E0               [24] 1285 	movx	a,@dptr
      002491 24 01            [12] 1286 	add	a,#0x01
      002493 F0               [24] 1287 	movx	@dptr,a
      002494 A3               [24] 1288 	inc	dptr
      002495 E0               [24] 1289 	movx	a,@dptr
      002496 34 00            [12] 1290 	addc	a,#0x00
      002498 F0               [24] 1291 	movx	@dptr,a
      002499 90 8C 04         [24] 1292 	mov	dptr,#_y
      00249C E0               [24] 1293 	movx	a,@dptr
      00249D FE               [12] 1294 	mov	r6,a
      00249E A3               [24] 1295 	inc	dptr
      00249F E0               [24] 1296 	movx	a,@dptr
      0024A0 FF               [12] 1297 	mov	r7,a
      0024A1 C3               [12] 1298 	clr	c
      0024A2 EE               [12] 1299 	mov	a,r6
      0024A3 94 20            [12] 1300 	subb	a,#0x20
      0024A5 EF               [12] 1301 	mov	a,r7
      0024A6 64 80            [12] 1302 	xrl	a,#0x80
      0024A8 94 80            [12] 1303 	subb	a,#0x80
      0024AA 50 03            [24] 1304 	jnc	00383$
      0024AC 02 23 C4         [24] 1305 	ljmp	00172$
      0024AF                       1306 00383$:
                                   1307 ;	life.c:139: out:
      0024AF                       1308 00143$:
                                   1309 ;	life.c:140: if (c != (int)'#')
      0024AF 90 8C 0C         [24] 1310 	mov	dptr,#_c
      0024B2 E0               [24] 1311 	movx	a,@dptr
      0024B3 FE               [12] 1312 	mov	r6,a
      0024B4 A3               [24] 1313 	inc	dptr
      0024B5 E0               [24] 1314 	movx	a,@dptr
      0024B6 FF               [12] 1315 	mov	r7,a
      0024B7 BE 23 05         [24] 1316 	cjne	r6,#0x23,00384$
      0024BA BF 00 02         [24] 1317 	cjne	r7,#0x00,00384$
      0024BD 80 15            [24] 1318 	sjmp	00142$
      0024BF                       1319 00384$:
                                   1320 ;	life.c:141: while (1) {
      0024BF                       1321 00139$:
                                   1322 ;	life.c:142: c = getchar();
      0024BF 12 20 7A         [24] 1323 	lcall	_getchar
      0024C2 AE 82            [24] 1324 	mov	r6,dpl
      0024C4 AF 83            [24] 1325 	mov	r7,dph
      0024C6 90 8C 0C         [24] 1326 	mov	dptr,#_c
      0024C9 EE               [12] 1327 	mov	a,r6
      0024CA F0               [24] 1328 	movx	@dptr,a
      0024CB EF               [12] 1329 	mov	a,r7
      0024CC A3               [24] 1330 	inc	dptr
      0024CD F0               [24] 1331 	movx	@dptr,a
                                   1332 ;	life.c:143: if (c == (int)'#') break;
      0024CE BE 23 EE         [24] 1333 	cjne	r6,#0x23,00139$
      0024D1 BF 00 EB         [24] 1334 	cjne	r7,#0x00,00139$
      0024D4                       1335 00142$:
                                   1336 ;	life.c:145: print16x(j);
      0024D4 90 8C 0A         [24] 1337 	mov	dptr,#_j
      0024D7 E0               [24] 1338 	movx	a,@dptr
      0024D8 FE               [12] 1339 	mov	r6,a
      0024D9 A3               [24] 1340 	inc	dptr
      0024DA E0               [24] 1341 	movx	a,@dptr
                                   1342 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0024DB 8E 04            [24] 1343 	mov	ar4,r6
      0024DD FD               [12] 1344 	mov	r5,a
      0024DE C4               [12] 1345 	swap	a
      0024DF 54 0F            [12] 1346 	anl	a,#0x0f
      0024E1 30 E3 02         [24] 1347 	jnb	acc.3,00387$
      0024E4 44 F0            [12] 1348 	orl	a,#0xf0
      0024E6                       1349 00387$:
      0024E6 FE               [12] 1350 	mov	r6,a
      0024E7 33               [12] 1351 	rlc	a
      0024E8 95 E0            [12] 1352 	subb	a,acc
      0024EA 53 06 0F         [24] 1353 	anl	ar6,#0x0f
      0024ED 7F 00            [12] 1354 	mov	r7,#0x00
      0024EF EE               [12] 1355 	mov	a,r6
      0024F0 24 40            [12] 1356 	add	a,#_digits
      0024F2 F5 82            [12] 1357 	mov	dpl,a
      0024F4 EF               [12] 1358 	mov	a,r7
      0024F5 34 2D            [12] 1359 	addc	a,#(_digits >> 8)
      0024F7 F5 83            [12] 1360 	mov	dph,a
      0024F9 E4               [12] 1361 	clr	a
      0024FA 93               [24] 1362 	movc	a,@a+dptr
      0024FB FF               [12] 1363 	mov	r7,a
      0024FC 7E 00            [12] 1364 	mov	r6,#0x00
      0024FE 8F 82            [24] 1365 	mov	dpl,r7
      002500 8E 83            [24] 1366 	mov	dph,r6
      002502 12 20 75         [24] 1367 	lcall	_putchar
                                   1368 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      002505 8D 07            [24] 1369 	mov	ar7,r5
      002507 53 07 0F         [24] 1370 	anl	ar7,#0x0f
      00250A 7E 00            [12] 1371 	mov	r6,#0x00
      00250C EF               [12] 1372 	mov	a,r7
      00250D 24 40            [12] 1373 	add	a,#_digits
      00250F F5 82            [12] 1374 	mov	dpl,a
      002511 EE               [12] 1375 	mov	a,r6
      002512 34 2D            [12] 1376 	addc	a,#(_digits >> 8)
      002514 F5 83            [12] 1377 	mov	dph,a
      002516 E4               [12] 1378 	clr	a
      002517 93               [24] 1379 	movc	a,@a+dptr
      002518 FF               [12] 1380 	mov	r7,a
      002519 7E 00            [12] 1381 	mov	r6,#0x00
      00251B 8F 82            [24] 1382 	mov	dpl,r7
      00251D 8E 83            [24] 1383 	mov	dph,r6
      00251F 12 20 75         [24] 1384 	lcall	_putchar
                                   1385 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      002522 8C 06            [24] 1386 	mov	ar6,r4
      002524 ED               [12] 1387 	mov	a,r5
      002525 C4               [12] 1388 	swap	a
      002526 CE               [12] 1389 	xch	a,r6
      002527 C4               [12] 1390 	swap	a
      002528 54 0F            [12] 1391 	anl	a,#0x0f
      00252A 6E               [12] 1392 	xrl	a,r6
      00252B CE               [12] 1393 	xch	a,r6
      00252C 54 0F            [12] 1394 	anl	a,#0x0f
      00252E CE               [12] 1395 	xch	a,r6
      00252F 6E               [12] 1396 	xrl	a,r6
      002530 CE               [12] 1397 	xch	a,r6
      002531 30 E3 02         [24] 1398 	jnb	acc.3,00388$
      002534 44 F0            [12] 1399 	orl	a,#0xf0
      002536                       1400 00388$:
      002536 53 06 0F         [24] 1401 	anl	ar6,#0x0f
      002539 7F 00            [12] 1402 	mov	r7,#0x00
      00253B EE               [12] 1403 	mov	a,r6
      00253C 24 40            [12] 1404 	add	a,#_digits
      00253E F5 82            [12] 1405 	mov	dpl,a
      002540 EF               [12] 1406 	mov	a,r7
      002541 34 2D            [12] 1407 	addc	a,#(_digits >> 8)
      002543 F5 83            [12] 1408 	mov	dph,a
      002545 E4               [12] 1409 	clr	a
      002546 93               [24] 1410 	movc	a,@a+dptr
      002547 FF               [12] 1411 	mov	r7,a
      002548 7E 00            [12] 1412 	mov	r6,#0x00
      00254A 8F 82            [24] 1413 	mov	dpl,r7
      00254C 8E 83            [24] 1414 	mov	dph,r6
      00254E 12 20 75         [24] 1415 	lcall	_putchar
                                   1416 ;	life.c:40: putchar(digits[a & 0xf]);
      002551 53 04 0F         [24] 1417 	anl	ar4,#0x0f
      002554 7D 00            [12] 1418 	mov	r5,#0x00
      002556 EC               [12] 1419 	mov	a,r4
      002557 24 40            [12] 1420 	add	a,#_digits
      002559 F5 82            [12] 1421 	mov	dpl,a
      00255B ED               [12] 1422 	mov	a,r5
      00255C 34 2D            [12] 1423 	addc	a,#(_digits >> 8)
      00255E F5 83            [12] 1424 	mov	dph,a
      002560 E4               [12] 1425 	clr	a
      002561 93               [24] 1426 	movc	a,@a+dptr
      002562 FF               [12] 1427 	mov	r7,a
      002563 7E 00            [12] 1428 	mov	r6,#0x00
      002565 8F 82            [24] 1429 	mov	dpl,r7
      002567 8E 83            [24] 1430 	mov	dph,r6
      002569 12 20 75         [24] 1431 	lcall	_putchar
                                   1432 ;	life.c:146: printstr(">\r\n");
      00256C 7D 62            [12] 1433 	mov	r5,#___str_3
      00256E 7E 2D            [12] 1434 	mov	r6,#(___str_3 >> 8)
      002570 7F 80            [12] 1435 	mov	r7,#0x80
                                   1436 ;	life.c:48: return;
      002572                       1437 00175$:
                                   1438 ;	life.c:46: for (; *s; s++) putchar(*s);
      002572 8D 82            [24] 1439 	mov	dpl,r5
      002574 8E 83            [24] 1440 	mov	dph,r6
      002576 8F F0            [24] 1441 	mov	b,r7
      002578 12 2C 18         [24] 1442 	lcall	__gptrget
      00257B FC               [12] 1443 	mov	r4,a
      00257C 60 10            [24] 1444 	jz	00146$
      00257E 7B 00            [12] 1445 	mov	r3,#0x00
      002580 8C 82            [24] 1446 	mov	dpl,r4
      002582 8B 83            [24] 1447 	mov	dph,r3
      002584 12 20 75         [24] 1448 	lcall	_putchar
      002587 0D               [12] 1449 	inc	r5
                                   1450 ;	life.c:146: printstr(">\r\n");
      002588 BD 00 E7         [24] 1451 	cjne	r5,#0x00,00175$
      00258B 0E               [12] 1452 	inc	r6
      00258C 80 E4            [24] 1453 	sjmp	00175$
      00258E                       1454 00146$:
                                   1455 ;	life.c:213: show(0);
      00258E 75 82 00         [24] 1456 	mov	dpl,#0x00
      002591 12 20 A9         [24] 1457 	lcall	_show
                                   1458 ;	life.c:215: printstr("READY\r\n");
      002594 7D 74            [12] 1459 	mov	r5,#___str_5
      002596 7E 2D            [12] 1460 	mov	r6,#(___str_5 >> 8)
      002598 7F 80            [12] 1461 	mov	r7,#0x80
                                   1462 ;	life.c:48: return;
      00259A                       1463 00178$:
                                   1464 ;	life.c:46: for (; *s; s++) putchar(*s);
      00259A 8D 82            [24] 1465 	mov	dpl,r5
      00259C 8E 83            [24] 1466 	mov	dph,r6
      00259E 8F F0            [24] 1467 	mov	b,r7
      0025A0 12 2C 18         [24] 1468 	lcall	__gptrget
      0025A3 FC               [12] 1469 	mov	r4,a
      0025A4 60 10            [24] 1470 	jz	00112$
      0025A6 7B 00            [12] 1471 	mov	r3,#0x00
      0025A8 8C 82            [24] 1472 	mov	dpl,r4
      0025AA 8B 83            [24] 1473 	mov	dph,r3
      0025AC 12 20 75         [24] 1474 	lcall	_putchar
      0025AF 0D               [12] 1475 	inc	r5
                                   1476 ;	life.c:216: while (1) {
      0025B0 BD 00 E7         [24] 1477 	cjne	r5,#0x00,00178$
      0025B3 0E               [12] 1478 	inc	r6
      0025B4 80 E4            [24] 1479 	sjmp	00178$
      0025B6                       1480 00112$:
                                   1481 ;	life.c:217: c = getchar();
      0025B6 12 20 7A         [24] 1482 	lcall	_getchar
      0025B9 AE 82            [24] 1483 	mov	r6,dpl
      0025BB AF 83            [24] 1484 	mov	r7,dph
      0025BD 90 8C 0C         [24] 1485 	mov	dptr,#_c
      0025C0 EE               [12] 1486 	mov	a,r6
      0025C1 F0               [24] 1487 	movx	@dptr,a
      0025C2 EF               [12] 1488 	mov	a,r7
      0025C3 A3               [24] 1489 	inc	dptr
      0025C4 F0               [24] 1490 	movx	@dptr,a
                                   1491 ;	life.c:218: if (c == (int)'L') goto reload;
      0025C5 BE 4C 06         [24] 1492 	cjne	r6,#0x4c,00393$
      0025C8 BF 00 03         [24] 1493 	cjne	r7,#0x00,00393$
      0025CB 02 23 62         [24] 1494 	ljmp	00106$
      0025CE                       1495 00393$:
                                   1496 ;	life.c:219: if (c == (int)'S') break;
      0025CE BE 53 E5         [24] 1497 	cjne	r6,#0x53,00112$
      0025D1 BF 00 E2         [24] 1498 	cjne	r7,#0x00,00112$
                                   1499 ;	life.c:74: generation[0] = 0;
      0025D4 90 8C 12         [24] 1500 	mov	dptr,#_generation
      0025D7 E4               [12] 1501 	clr	a
      0025D8 F0               [24] 1502 	movx	@dptr,a
      0025D9 A3               [24] 1503 	inc	dptr
      0025DA F0               [24] 1504 	movx	@dptr,a
                                   1505 ;	life.c:75: generation[1] = 0;
      0025DB 90 8C 14         [24] 1506 	mov	dptr,#(_generation + 0x0002)
      0025DE F0               [24] 1507 	movx	@dptr,a
      0025DF A3               [24] 1508 	inc	dptr
      0025E0 F0               [24] 1509 	movx	@dptr,a
                                   1510 ;	life.c:224: for (i1 = 0; !i0 && !i1; ) {
      0025E1                       1511 00189$:
      0025E1 90 80 00         [24] 1512 	mov	dptr,#_i0
      0025E4 E0               [24] 1513 	movx	a,@dptr
      0025E5 60 03            [24] 1514 	jz	00396$
      0025E7 02 2A B3         [24] 1515 	ljmp	00117$
      0025EA                       1516 00396$:
                                   1517 ;	life.c:225: show(1);
      0025EA 75 82 01         [24] 1518 	mov	dpl,#0x01
      0025ED 12 20 A9         [24] 1519 	lcall	_show
                                   1520 ;	life.c:154: fixed = 1;
      0025F0 90 8C 10         [24] 1521 	mov	dptr,#_fixed
      0025F3 74 01            [12] 1522 	mov	a,#0x01
      0025F5 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	life.c:155: cycle2 = 1;
      0025F6 90 8C 11         [24] 1525 	mov	dptr,#_cycle2
      0025F9 F0               [24] 1526 	movx	@dptr,a
                                   1527 ;	life.c:156: bstep = 0;
      0025FA 90 8C 0E         [24] 1528 	mov	dptr,#_bstep
      0025FD E4               [12] 1529 	clr	a
      0025FE F0               [24] 1530 	movx	@dptr,a
                                   1531 ;	life.c:158: for (y = 0; y < H; y++) {
      0025FF 90 8C 04         [24] 1532 	mov	dptr,#_y
      002602 F0               [24] 1533 	movx	@dptr,a
      002603 A3               [24] 1534 	inc	dptr
      002604 F0               [24] 1535 	movx	@dptr,a
      002605                       1536 00182$:
                                   1537 ;	life.c:159: putchar(busy[bstep]); putchar('\r');
      002605 90 8C 0E         [24] 1538 	mov	dptr,#_bstep
      002608 E0               [24] 1539 	movx	a,@dptr
      002609 90 2B 17         [24] 1540 	mov	dptr,#_busy
      00260C 93               [24] 1541 	movc	a,@a+dptr
      00260D FF               [12] 1542 	mov	r7,a
      00260E 7E 00            [12] 1543 	mov	r6,#0x00
      002610 8F 82            [24] 1544 	mov	dpl,r7
      002612 8E 83            [24] 1545 	mov	dph,r6
      002614 12 20 75         [24] 1546 	lcall	_putchar
      002617 90 00 0D         [24] 1547 	mov	dptr,#0x000d
      00261A 12 20 75         [24] 1548 	lcall	_putchar
                                   1549 ;	life.c:160: bstep = (bstep + 1) & 3;
      00261D 90 8C 0E         [24] 1550 	mov	dptr,#_bstep
      002620 E0               [24] 1551 	movx	a,@dptr
      002621 FF               [12] 1552 	mov	r7,a
      002622 0F               [12] 1553 	inc	r7
      002623 74 03            [12] 1554 	mov	a,#0x03
      002625 5F               [12] 1555 	anl	a,r7
      002626 F0               [24] 1556 	movx	@dptr,a
                                   1557 ;	life.c:161: for (x = 0; x < W; x++) {
      002627 90 8C 02         [24] 1558 	mov	dptr,#_x
      00262A E4               [12] 1559 	clr	a
      00262B F0               [24] 1560 	movx	@dptr,a
      00262C A3               [24] 1561 	inc	dptr
      00262D F0               [24] 1562 	movx	@dptr,a
      00262E                       1563 00180$:
                                   1564 ;	life.c:162: n = -u[A2D(W, y, x)];
      00262E 90 8C 04         [24] 1565 	mov	dptr,#_y
      002631 E0               [24] 1566 	movx	a,@dptr
      002632 FE               [12] 1567 	mov	r6,a
      002633 A3               [24] 1568 	inc	dptr
      002634 E0               [24] 1569 	movx	a,@dptr
      002635 FF               [12] 1570 	mov	r7,a
      002636 A8 10            [24] 1571 	mov	r0,_bp
      002638 08               [12] 1572 	inc	r0
      002639 A6 06            [24] 1573 	mov	@r0,ar6
      00263B EF               [12] 1574 	mov	a,r7
      00263C C4               [12] 1575 	swap	a
      00263D 23               [12] 1576 	rl	a
      00263E 54 E0            [12] 1577 	anl	a,#0xe0
      002640 C6               [12] 1578 	xch	a,@r0
      002641 C4               [12] 1579 	swap	a
      002642 23               [12] 1580 	rl	a
      002643 C6               [12] 1581 	xch	a,@r0
      002644 66               [12] 1582 	xrl	a,@r0
      002645 C6               [12] 1583 	xch	a,@r0
      002646 54 E0            [12] 1584 	anl	a,#0xe0
      002648 C6               [12] 1585 	xch	a,@r0
      002649 66               [12] 1586 	xrl	a,@r0
      00264A 08               [12] 1587 	inc	r0
      00264B F6               [12] 1588 	mov	@r0,a
      00264C 90 8C 02         [24] 1589 	mov	dptr,#_x
      00264F E0               [24] 1590 	movx	a,@dptr
      002650 FA               [12] 1591 	mov	r2,a
      002651 A3               [24] 1592 	inc	dptr
      002652 E0               [24] 1593 	movx	a,@dptr
      002653 FB               [12] 1594 	mov	r3,a
      002654 A8 10            [24] 1595 	mov	r0,_bp
      002656 08               [12] 1596 	inc	r0
      002657 E5 10            [12] 1597 	mov	a,_bp
      002659 24 03            [12] 1598 	add	a,#0x03
      00265B F9               [12] 1599 	mov	r1,a
      00265C EA               [12] 1600 	mov	a,r2
      00265D 26               [12] 1601 	add	a,@r0
      00265E F7               [12] 1602 	mov	@r1,a
      00265F EB               [12] 1603 	mov	a,r3
      002660 08               [12] 1604 	inc	r0
      002661 36               [12] 1605 	addc	a,@r0
      002662 09               [12] 1606 	inc	r1
      002663 F7               [12] 1607 	mov	@r1,a
      002664 E5 10            [12] 1608 	mov	a,_bp
      002666 24 03            [12] 1609 	add	a,#0x03
      002668 F8               [12] 1610 	mov	r0,a
      002669 E6               [12] 1611 	mov	a,@r0
      00266A 24 02            [12] 1612 	add	a,#_u
      00266C F5 82            [12] 1613 	mov	dpl,a
      00266E 08               [12] 1614 	inc	r0
      00266F E6               [12] 1615 	mov	a,@r0
      002670 34 84            [12] 1616 	addc	a,#(_u >> 8)
      002672 F5 83            [12] 1617 	mov	dph,a
      002674 E0               [24] 1618 	movx	a,@dptr
      002675 FD               [12] 1619 	mov	r5,a
      002676 E5 10            [12] 1620 	mov	a,_bp
      002678 24 05            [12] 1621 	add	a,#0x05
      00267A F8               [12] 1622 	mov	r0,a
      00267B C3               [12] 1623 	clr	c
      00267C E4               [12] 1624 	clr	a
      00267D 9D               [12] 1625 	subb	a,r5
      00267E F6               [12] 1626 	mov	@r0,a
                                   1627 ;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00267F 74 1F            [12] 1628 	mov	a,#0x1f
      002681 2E               [12] 1629 	add	a,r6
      002682 FC               [12] 1630 	mov	r4,a
      002683 E4               [12] 1631 	clr	a
      002684 3F               [12] 1632 	addc	a,r7
      002685 FD               [12] 1633 	mov	r5,a
      002686 C0 07            [24] 1634 	push	ar7
      002688 C0 06            [24] 1635 	push	ar6
      00268A C0 03            [24] 1636 	push	ar3
      00268C C0 02            [24] 1637 	push	ar2
      00268E 74 20            [12] 1638 	mov	a,#0x20
      002690 C0 E0            [24] 1639 	push	acc
      002692 E4               [12] 1640 	clr	a
      002693 C0 E0            [24] 1641 	push	acc
      002695 8C 82            [24] 1642 	mov	dpl,r4
      002697 8D 83            [24] 1643 	mov	dph,r5
      002699 12 2C 34         [24] 1644 	lcall	__modsint
      00269C AC 82            [24] 1645 	mov	r4,dpl
      00269E AD 83            [24] 1646 	mov	r5,dph
      0026A0 15 81            [12] 1647 	dec	sp
      0026A2 15 81            [12] 1648 	dec	sp
      0026A4 D0 02            [24] 1649 	pop	ar2
      0026A6 D0 03            [24] 1650 	pop	ar3
      0026A8 E5 10            [12] 1651 	mov	a,_bp
      0026AA 24 06            [12] 1652 	add	a,#0x06
      0026AC F8               [12] 1653 	mov	r0,a
      0026AD A6 04            [24] 1654 	mov	@r0,ar4
      0026AF ED               [12] 1655 	mov	a,r5
      0026B0 C4               [12] 1656 	swap	a
      0026B1 23               [12] 1657 	rl	a
      0026B2 54 E0            [12] 1658 	anl	a,#0xe0
      0026B4 C6               [12] 1659 	xch	a,@r0
      0026B5 C4               [12] 1660 	swap	a
      0026B6 23               [12] 1661 	rl	a
      0026B7 C6               [12] 1662 	xch	a,@r0
      0026B8 66               [12] 1663 	xrl	a,@r0
      0026B9 C6               [12] 1664 	xch	a,@r0
      0026BA 54 E0            [12] 1665 	anl	a,#0xe0
      0026BC C6               [12] 1666 	xch	a,@r0
      0026BD 66               [12] 1667 	xrl	a,@r0
      0026BE 08               [12] 1668 	inc	r0
      0026BF F6               [12] 1669 	mov	@r0,a
      0026C0 74 1F            [12] 1670 	mov	a,#0x1f
      0026C2 2A               [12] 1671 	add	a,r2
      0026C3 FC               [12] 1672 	mov	r4,a
      0026C4 E4               [12] 1673 	clr	a
      0026C5 3B               [12] 1674 	addc	a,r3
      0026C6 FD               [12] 1675 	mov	r5,a
      0026C7 C0 03            [24] 1676 	push	ar3
      0026C9 C0 02            [24] 1677 	push	ar2
      0026CB 74 20            [12] 1678 	mov	a,#0x20
      0026CD C0 E0            [24] 1679 	push	acc
      0026CF E4               [12] 1680 	clr	a
      0026D0 C0 E0            [24] 1681 	push	acc
      0026D2 8C 82            [24] 1682 	mov	dpl,r4
      0026D4 8D 83            [24] 1683 	mov	dph,r5
      0026D6 12 2C 34         [24] 1684 	lcall	__modsint
      0026D9 C8               [12] 1685 	xch	a,r0
      0026DA E5 10            [12] 1686 	mov	a,_bp
      0026DC 24 08            [12] 1687 	add	a,#0x08
      0026DE C8               [12] 1688 	xch	a,r0
      0026DF A6 82            [24] 1689 	mov	@r0,dpl
      0026E1 08               [12] 1690 	inc	r0
      0026E2 A6 83            [24] 1691 	mov	@r0,dph
      0026E4 15 81            [12] 1692 	dec	sp
      0026E6 15 81            [12] 1693 	dec	sp
      0026E8 D0 02            [24] 1694 	pop	ar2
      0026EA D0 03            [24] 1695 	pop	ar3
      0026EC E5 10            [12] 1696 	mov	a,_bp
      0026EE 24 06            [12] 1697 	add	a,#0x06
      0026F0 F8               [12] 1698 	mov	r0,a
      0026F1 E5 10            [12] 1699 	mov	a,_bp
      0026F3 24 08            [12] 1700 	add	a,#0x08
      0026F5 F9               [12] 1701 	mov	r1,a
      0026F6 E7               [12] 1702 	mov	a,@r1
      0026F7 26               [12] 1703 	add	a,@r0
      0026F8 FC               [12] 1704 	mov	r4,a
      0026F9 09               [12] 1705 	inc	r1
      0026FA E7               [12] 1706 	mov	a,@r1
      0026FB 08               [12] 1707 	inc	r0
      0026FC 36               [12] 1708 	addc	a,@r0
      0026FD FD               [12] 1709 	mov	r5,a
      0026FE EC               [12] 1710 	mov	a,r4
      0026FF 24 02            [12] 1711 	add	a,#_u
      002701 F5 82            [12] 1712 	mov	dpl,a
      002703 ED               [12] 1713 	mov	a,r5
      002704 34 84            [12] 1714 	addc	a,#(_u >> 8)
      002706 F5 83            [12] 1715 	mov	dph,a
      002708 E0               [24] 1716 	movx	a,@dptr
      002709 FD               [12] 1717 	mov	r5,a
      00270A E5 10            [12] 1718 	mov	a,_bp
      00270C 24 05            [12] 1719 	add	a,#0x05
      00270E F8               [12] 1720 	mov	r0,a
      00270F ED               [12] 1721 	mov	a,r5
      002710 26               [12] 1722 	add	a,@r0
      002711 F6               [12] 1723 	mov	@r0,a
                                   1724 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002712 74 20            [12] 1725 	mov	a,#0x20
      002714 2A               [12] 1726 	add	a,r2
      002715 FC               [12] 1727 	mov	r4,a
      002716 E4               [12] 1728 	clr	a
      002717 3B               [12] 1729 	addc	a,r3
      002718 FD               [12] 1730 	mov	r5,a
      002719 C0 03            [24] 1731 	push	ar3
      00271B C0 02            [24] 1732 	push	ar2
      00271D 74 20            [12] 1733 	mov	a,#0x20
      00271F C0 E0            [24] 1734 	push	acc
      002721 E4               [12] 1735 	clr	a
      002722 C0 E0            [24] 1736 	push	acc
      002724 8C 82            [24] 1737 	mov	dpl,r4
      002726 8D 83            [24] 1738 	mov	dph,r5
      002728 12 2C 34         [24] 1739 	lcall	__modsint
      00272B C8               [12] 1740 	xch	a,r0
      00272C E5 10            [12] 1741 	mov	a,_bp
      00272E 24 0A            [12] 1742 	add	a,#0x0a
      002730 C8               [12] 1743 	xch	a,r0
      002731 A6 82            [24] 1744 	mov	@r0,dpl
      002733 08               [12] 1745 	inc	r0
      002734 A6 83            [24] 1746 	mov	@r0,dph
      002736 15 81            [12] 1747 	dec	sp
      002738 15 81            [12] 1748 	dec	sp
      00273A D0 02            [24] 1749 	pop	ar2
      00273C D0 03            [24] 1750 	pop	ar3
      00273E E5 10            [12] 1751 	mov	a,_bp
      002740 24 06            [12] 1752 	add	a,#0x06
      002742 F8               [12] 1753 	mov	r0,a
      002743 E5 10            [12] 1754 	mov	a,_bp
      002745 24 0A            [12] 1755 	add	a,#0x0a
      002747 F9               [12] 1756 	mov	r1,a
      002748 E7               [12] 1757 	mov	a,@r1
      002749 26               [12] 1758 	add	a,@r0
      00274A FC               [12] 1759 	mov	r4,a
      00274B 09               [12] 1760 	inc	r1
      00274C E7               [12] 1761 	mov	a,@r1
      00274D 08               [12] 1762 	inc	r0
      00274E 36               [12] 1763 	addc	a,@r0
      00274F FD               [12] 1764 	mov	r5,a
      002750 EC               [12] 1765 	mov	a,r4
      002751 24 02            [12] 1766 	add	a,#_u
      002753 F5 82            [12] 1767 	mov	dpl,a
      002755 ED               [12] 1768 	mov	a,r5
      002756 34 84            [12] 1769 	addc	a,#(_u >> 8)
      002758 F5 83            [12] 1770 	mov	dph,a
      00275A E0               [24] 1771 	movx	a,@dptr
      00275B FD               [12] 1772 	mov	r5,a
      00275C E5 10            [12] 1773 	mov	a,_bp
      00275E 24 05            [12] 1774 	add	a,#0x05
      002760 F8               [12] 1775 	mov	r0,a
      002761 ED               [12] 1776 	mov	a,r5
      002762 26               [12] 1777 	add	a,@r0
      002763 F6               [12] 1778 	mov	@r0,a
                                   1779 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002764 74 21            [12] 1780 	mov	a,#0x21
      002766 2A               [12] 1781 	add	a,r2
      002767 FC               [12] 1782 	mov	r4,a
      002768 E4               [12] 1783 	clr	a
      002769 3B               [12] 1784 	addc	a,r3
      00276A FD               [12] 1785 	mov	r5,a
      00276B C0 03            [24] 1786 	push	ar3
      00276D C0 02            [24] 1787 	push	ar2
      00276F 74 20            [12] 1788 	mov	a,#0x20
      002771 C0 E0            [24] 1789 	push	acc
      002773 E4               [12] 1790 	clr	a
      002774 C0 E0            [24] 1791 	push	acc
      002776 8C 82            [24] 1792 	mov	dpl,r4
      002778 8D 83            [24] 1793 	mov	dph,r5
      00277A 12 2C 34         [24] 1794 	lcall	__modsint
      00277D C8               [12] 1795 	xch	a,r0
      00277E E5 10            [12] 1796 	mov	a,_bp
      002780 24 0C            [12] 1797 	add	a,#0x0c
      002782 C8               [12] 1798 	xch	a,r0
      002783 A6 82            [24] 1799 	mov	@r0,dpl
      002785 08               [12] 1800 	inc	r0
      002786 A6 83            [24] 1801 	mov	@r0,dph
      002788 15 81            [12] 1802 	dec	sp
      00278A 15 81            [12] 1803 	dec	sp
      00278C D0 02            [24] 1804 	pop	ar2
      00278E D0 03            [24] 1805 	pop	ar3
      002790 D0 06            [24] 1806 	pop	ar6
      002792 D0 07            [24] 1807 	pop	ar7
      002794 E5 10            [12] 1808 	mov	a,_bp
      002796 24 06            [12] 1809 	add	a,#0x06
      002798 F8               [12] 1810 	mov	r0,a
      002799 E5 10            [12] 1811 	mov	a,_bp
      00279B 24 0C            [12] 1812 	add	a,#0x0c
      00279D F9               [12] 1813 	mov	r1,a
      00279E E7               [12] 1814 	mov	a,@r1
      00279F 26               [12] 1815 	add	a,@r0
      0027A0 FC               [12] 1816 	mov	r4,a
      0027A1 09               [12] 1817 	inc	r1
      0027A2 E7               [12] 1818 	mov	a,@r1
      0027A3 08               [12] 1819 	inc	r0
      0027A4 36               [12] 1820 	addc	a,@r0
      0027A5 FD               [12] 1821 	mov	r5,a
      0027A6 EC               [12] 1822 	mov	a,r4
      0027A7 24 02            [12] 1823 	add	a,#_u
      0027A9 F5 82            [12] 1824 	mov	dpl,a
      0027AB ED               [12] 1825 	mov	a,r5
      0027AC 34 84            [12] 1826 	addc	a,#(_u >> 8)
      0027AE F5 83            [12] 1827 	mov	dph,a
      0027B0 E0               [24] 1828 	movx	a,@dptr
      0027B1 FD               [12] 1829 	mov	r5,a
      0027B2 E5 10            [12] 1830 	mov	a,_bp
      0027B4 24 05            [12] 1831 	add	a,#0x05
      0027B6 F8               [12] 1832 	mov	r0,a
      0027B7 E5 10            [12] 1833 	mov	a,_bp
      0027B9 24 06            [12] 1834 	add	a,#0x06
      0027BB F9               [12] 1835 	mov	r1,a
      0027BC ED               [12] 1836 	mov	a,r5
      0027BD 26               [12] 1837 	add	a,@r0
      0027BE F7               [12] 1838 	mov	@r1,a
                                   1839 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0027BF 74 20            [12] 1840 	mov	a,#0x20
      0027C1 2E               [12] 1841 	add	a,r6
      0027C2 FC               [12] 1842 	mov	r4,a
      0027C3 E4               [12] 1843 	clr	a
      0027C4 3F               [12] 1844 	addc	a,r7
      0027C5 FD               [12] 1845 	mov	r5,a
      0027C6 C0 07            [24] 1846 	push	ar7
      0027C8 C0 06            [24] 1847 	push	ar6
      0027CA C0 03            [24] 1848 	push	ar3
      0027CC C0 02            [24] 1849 	push	ar2
      0027CE 74 20            [12] 1850 	mov	a,#0x20
      0027D0 C0 E0            [24] 1851 	push	acc
      0027D2 E4               [12] 1852 	clr	a
      0027D3 C0 E0            [24] 1853 	push	acc
      0027D5 8C 82            [24] 1854 	mov	dpl,r4
      0027D7 8D 83            [24] 1855 	mov	dph,r5
      0027D9 12 2C 34         [24] 1856 	lcall	__modsint
      0027DC AC 82            [24] 1857 	mov	r4,dpl
      0027DE AD 83            [24] 1858 	mov	r5,dph
      0027E0 15 81            [12] 1859 	dec	sp
      0027E2 15 81            [12] 1860 	dec	sp
      0027E4 D0 02            [24] 1861 	pop	ar2
      0027E6 D0 03            [24] 1862 	pop	ar3
      0027E8 D0 06            [24] 1863 	pop	ar6
      0027EA D0 07            [24] 1864 	pop	ar7
      0027EC E5 10            [12] 1865 	mov	a,_bp
      0027EE 24 0E            [12] 1866 	add	a,#0x0e
      0027F0 F8               [12] 1867 	mov	r0,a
      0027F1 A6 04            [24] 1868 	mov	@r0,ar4
      0027F3 ED               [12] 1869 	mov	a,r5
      0027F4 C4               [12] 1870 	swap	a
      0027F5 23               [12] 1871 	rl	a
      0027F6 54 E0            [12] 1872 	anl	a,#0xe0
      0027F8 C6               [12] 1873 	xch	a,@r0
      0027F9 C4               [12] 1874 	swap	a
      0027FA 23               [12] 1875 	rl	a
      0027FB C6               [12] 1876 	xch	a,@r0
      0027FC 66               [12] 1877 	xrl	a,@r0
      0027FD C6               [12] 1878 	xch	a,@r0
      0027FE 54 E0            [12] 1879 	anl	a,#0xe0
      002800 C6               [12] 1880 	xch	a,@r0
      002801 66               [12] 1881 	xrl	a,@r0
      002802 08               [12] 1882 	inc	r0
      002803 F6               [12] 1883 	mov	@r0,a
      002804 E5 10            [12] 1884 	mov	a,_bp
      002806 24 0E            [12] 1885 	add	a,#0x0e
      002808 F8               [12] 1886 	mov	r0,a
      002809 E5 10            [12] 1887 	mov	a,_bp
      00280B 24 08            [12] 1888 	add	a,#0x08
      00280D F9               [12] 1889 	mov	r1,a
      00280E E7               [12] 1890 	mov	a,@r1
      00280F 26               [12] 1891 	add	a,@r0
      002810 FC               [12] 1892 	mov	r4,a
      002811 09               [12] 1893 	inc	r1
      002812 E7               [12] 1894 	mov	a,@r1
      002813 08               [12] 1895 	inc	r0
      002814 36               [12] 1896 	addc	a,@r0
      002815 FD               [12] 1897 	mov	r5,a
      002816 EC               [12] 1898 	mov	a,r4
      002817 24 02            [12] 1899 	add	a,#_u
      002819 F5 82            [12] 1900 	mov	dpl,a
      00281B ED               [12] 1901 	mov	a,r5
      00281C 34 84            [12] 1902 	addc	a,#(_u >> 8)
      00281E F5 83            [12] 1903 	mov	dph,a
      002820 E0               [24] 1904 	movx	a,@dptr
      002821 FD               [12] 1905 	mov	r5,a
      002822 E5 10            [12] 1906 	mov	a,_bp
      002824 24 06            [12] 1907 	add	a,#0x06
      002826 F8               [12] 1908 	mov	r0,a
      002827 E5 10            [12] 1909 	mov	a,_bp
      002829 24 06            [12] 1910 	add	a,#0x06
      00282B F9               [12] 1911 	mov	r1,a
      00282C ED               [12] 1912 	mov	a,r5
      00282D 26               [12] 1913 	add	a,@r0
      00282E F7               [12] 1914 	mov	@r1,a
                                   1915 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00282F E5 10            [12] 1916 	mov	a,_bp
      002831 24 0E            [12] 1917 	add	a,#0x0e
      002833 F8               [12] 1918 	mov	r0,a
      002834 E5 10            [12] 1919 	mov	a,_bp
      002836 24 0A            [12] 1920 	add	a,#0x0a
      002838 F9               [12] 1921 	mov	r1,a
      002839 E7               [12] 1922 	mov	a,@r1
      00283A 26               [12] 1923 	add	a,@r0
      00283B FC               [12] 1924 	mov	r4,a
      00283C 09               [12] 1925 	inc	r1
      00283D E7               [12] 1926 	mov	a,@r1
      00283E 08               [12] 1927 	inc	r0
      00283F 36               [12] 1928 	addc	a,@r0
      002840 FD               [12] 1929 	mov	r5,a
      002841 EC               [12] 1930 	mov	a,r4
      002842 24 02            [12] 1931 	add	a,#_u
      002844 F5 82            [12] 1932 	mov	dpl,a
      002846 ED               [12] 1933 	mov	a,r5
      002847 34 84            [12] 1934 	addc	a,#(_u >> 8)
      002849 F5 83            [12] 1935 	mov	dph,a
      00284B E0               [24] 1936 	movx	a,@dptr
      00284C FD               [12] 1937 	mov	r5,a
      00284D E5 10            [12] 1938 	mov	a,_bp
      00284F 24 06            [12] 1939 	add	a,#0x06
      002851 F8               [12] 1940 	mov	r0,a
      002852 E5 10            [12] 1941 	mov	a,_bp
      002854 24 06            [12] 1942 	add	a,#0x06
      002856 F9               [12] 1943 	mov	r1,a
      002857 ED               [12] 1944 	mov	a,r5
      002858 26               [12] 1945 	add	a,@r0
      002859 F7               [12] 1946 	mov	@r1,a
                                   1947 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00285A E5 10            [12] 1948 	mov	a,_bp
      00285C 24 0E            [12] 1949 	add	a,#0x0e
      00285E F8               [12] 1950 	mov	r0,a
      00285F E5 10            [12] 1951 	mov	a,_bp
      002861 24 0C            [12] 1952 	add	a,#0x0c
      002863 F9               [12] 1953 	mov	r1,a
      002864 E7               [12] 1954 	mov	a,@r1
      002865 26               [12] 1955 	add	a,@r0
      002866 FC               [12] 1956 	mov	r4,a
      002867 09               [12] 1957 	inc	r1
      002868 E7               [12] 1958 	mov	a,@r1
      002869 08               [12] 1959 	inc	r0
      00286A 36               [12] 1960 	addc	a,@r0
      00286B FD               [12] 1961 	mov	r5,a
      00286C EC               [12] 1962 	mov	a,r4
      00286D 24 02            [12] 1963 	add	a,#_u
      00286F F5 82            [12] 1964 	mov	dpl,a
      002871 ED               [12] 1965 	mov	a,r5
      002872 34 84            [12] 1966 	addc	a,#(_u >> 8)
      002874 F5 83            [12] 1967 	mov	dph,a
      002876 E0               [24] 1968 	movx	a,@dptr
      002877 FD               [12] 1969 	mov	r5,a
      002878 E5 10            [12] 1970 	mov	a,_bp
      00287A 24 06            [12] 1971 	add	a,#0x06
      00287C F8               [12] 1972 	mov	r0,a
      00287D E5 10            [12] 1973 	mov	a,_bp
      00287F 24 0E            [12] 1974 	add	a,#0x0e
      002881 F9               [12] 1975 	mov	r1,a
      002882 ED               [12] 1976 	mov	a,r5
      002883 26               [12] 1977 	add	a,@r0
      002884 F7               [12] 1978 	mov	@r1,a
                                   1979 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002885 74 21            [12] 1980 	mov	a,#0x21
      002887 2E               [12] 1981 	add	a,r6
      002888 FE               [12] 1982 	mov	r6,a
      002889 E4               [12] 1983 	clr	a
      00288A 3F               [12] 1984 	addc	a,r7
      00288B FF               [12] 1985 	mov	r7,a
      00288C C0 03            [24] 1986 	push	ar3
      00288E C0 02            [24] 1987 	push	ar2
      002890 74 20            [12] 1988 	mov	a,#0x20
      002892 C0 E0            [24] 1989 	push	acc
      002894 E4               [12] 1990 	clr	a
      002895 C0 E0            [24] 1991 	push	acc
      002897 8E 82            [24] 1992 	mov	dpl,r6
      002899 8F 83            [24] 1993 	mov	dph,r7
      00289B 12 2C 34         [24] 1994 	lcall	__modsint
      00289E AE 82            [24] 1995 	mov	r6,dpl
      0028A0 AF 83            [24] 1996 	mov	r7,dph
      0028A2 15 81            [12] 1997 	dec	sp
      0028A4 15 81            [12] 1998 	dec	sp
      0028A6 D0 02            [24] 1999 	pop	ar2
      0028A8 D0 03            [24] 2000 	pop	ar3
      0028AA EF               [12] 2001 	mov	a,r7
      0028AB C4               [12] 2002 	swap	a
      0028AC 23               [12] 2003 	rl	a
      0028AD 54 E0            [12] 2004 	anl	a,#0xe0
      0028AF CE               [12] 2005 	xch	a,r6
      0028B0 C4               [12] 2006 	swap	a
      0028B1 23               [12] 2007 	rl	a
      0028B2 CE               [12] 2008 	xch	a,r6
      0028B3 6E               [12] 2009 	xrl	a,r6
      0028B4 CE               [12] 2010 	xch	a,r6
      0028B5 54 E0            [12] 2011 	anl	a,#0xe0
      0028B7 CE               [12] 2012 	xch	a,r6
      0028B8 6E               [12] 2013 	xrl	a,r6
      0028B9 FF               [12] 2014 	mov	r7,a
      0028BA E5 10            [12] 2015 	mov	a,_bp
      0028BC 24 08            [12] 2016 	add	a,#0x08
      0028BE F8               [12] 2017 	mov	r0,a
      0028BF E6               [12] 2018 	mov	a,@r0
      0028C0 2E               [12] 2019 	add	a,r6
      0028C1 FC               [12] 2020 	mov	r4,a
      0028C2 08               [12] 2021 	inc	r0
      0028C3 E6               [12] 2022 	mov	a,@r0
      0028C4 3F               [12] 2023 	addc	a,r7
      0028C5 FD               [12] 2024 	mov	r5,a
      0028C6 EC               [12] 2025 	mov	a,r4
      0028C7 24 02            [12] 2026 	add	a,#_u
      0028C9 F5 82            [12] 2027 	mov	dpl,a
      0028CB ED               [12] 2028 	mov	a,r5
      0028CC 34 84            [12] 2029 	addc	a,#(_u >> 8)
      0028CE F5 83            [12] 2030 	mov	dph,a
      0028D0 E0               [24] 2031 	movx	a,@dptr
      0028D1 FD               [12] 2032 	mov	r5,a
      0028D2 E5 10            [12] 2033 	mov	a,_bp
      0028D4 24 0E            [12] 2034 	add	a,#0x0e
      0028D6 F8               [12] 2035 	mov	r0,a
      0028D7 E5 10            [12] 2036 	mov	a,_bp
      0028D9 24 0E            [12] 2037 	add	a,#0x0e
      0028DB F9               [12] 2038 	mov	r1,a
      0028DC ED               [12] 2039 	mov	a,r5
      0028DD 26               [12] 2040 	add	a,@r0
      0028DE F7               [12] 2041 	mov	@r1,a
                                   2042 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028DF E5 10            [12] 2043 	mov	a,_bp
      0028E1 24 0A            [12] 2044 	add	a,#0x0a
      0028E3 F8               [12] 2045 	mov	r0,a
      0028E4 E6               [12] 2046 	mov	a,@r0
      0028E5 2E               [12] 2047 	add	a,r6
      0028E6 FC               [12] 2048 	mov	r4,a
      0028E7 08               [12] 2049 	inc	r0
      0028E8 E6               [12] 2050 	mov	a,@r0
      0028E9 3F               [12] 2051 	addc	a,r7
      0028EA FD               [12] 2052 	mov	r5,a
      0028EB EC               [12] 2053 	mov	a,r4
      0028EC 24 02            [12] 2054 	add	a,#_u
      0028EE F5 82            [12] 2055 	mov	dpl,a
      0028F0 ED               [12] 2056 	mov	a,r5
      0028F1 34 84            [12] 2057 	addc	a,#(_u >> 8)
      0028F3 F5 83            [12] 2058 	mov	dph,a
      0028F5 E0               [24] 2059 	movx	a,@dptr
      0028F6 FD               [12] 2060 	mov	r5,a
      0028F7 E5 10            [12] 2061 	mov	a,_bp
      0028F9 24 0E            [12] 2062 	add	a,#0x0e
      0028FB F8               [12] 2063 	mov	r0,a
      0028FC ED               [12] 2064 	mov	a,r5
      0028FD 26               [12] 2065 	add	a,@r0
      0028FE FD               [12] 2066 	mov	r5,a
                                   2067 ;	life.c:180: y1 = 1; x1 = 1;
      0028FF 90 8C 08         [24] 2068 	mov	dptr,#_y1
      002902 74 01            [12] 2069 	mov	a,#0x01
      002904 F0               [24] 2070 	movx	@dptr,a
      002905 E4               [12] 2071 	clr	a
      002906 A3               [24] 2072 	inc	dptr
      002907 F0               [24] 2073 	movx	@dptr,a
      002908 90 8C 06         [24] 2074 	mov	dptr,#_x1
      00290B 04               [12] 2075 	inc	a
      00290C F0               [24] 2076 	movx	@dptr,a
      00290D E4               [12] 2077 	clr	a
      00290E A3               [24] 2078 	inc	dptr
      00290F F0               [24] 2079 	movx	@dptr,a
                                   2080 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002910 E5 10            [12] 2081 	mov	a,_bp
      002912 24 0C            [12] 2082 	add	a,#0x0c
      002914 F8               [12] 2083 	mov	r0,a
      002915 E6               [12] 2084 	mov	a,@r0
      002916 2E               [12] 2085 	add	a,r6
      002917 FE               [12] 2086 	mov	r6,a
      002918 08               [12] 2087 	inc	r0
      002919 E6               [12] 2088 	mov	a,@r0
      00291A 3F               [12] 2089 	addc	a,r7
      00291B FF               [12] 2090 	mov	r7,a
      00291C EE               [12] 2091 	mov	a,r6
      00291D 24 02            [12] 2092 	add	a,#_u
      00291F F5 82            [12] 2093 	mov	dpl,a
      002921 EF               [12] 2094 	mov	a,r7
      002922 34 84            [12] 2095 	addc	a,#(_u >> 8)
      002924 F5 83            [12] 2096 	mov	dph,a
      002926 E0               [24] 2097 	movx	a,@dptr
      002927 2D               [12] 2098 	add	a,r5
      002928 FF               [12] 2099 	mov	r7,a
      002929 90 8C 0F         [24] 2100 	mov	dptr,#_n
      00292C F0               [24] 2101 	movx	@dptr,a
                                   2102 ;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      00292D E5 10            [12] 2103 	mov	a,_bp
      00292F 24 03            [12] 2104 	add	a,#0x03
      002931 F8               [12] 2105 	mov	r0,a
      002932 E6               [12] 2106 	mov	a,@r0
      002933 24 02            [12] 2107 	add	a,#_nu
      002935 FD               [12] 2108 	mov	r5,a
      002936 08               [12] 2109 	inc	r0
      002937 E6               [12] 2110 	mov	a,@r0
      002938 34 88            [12] 2111 	addc	a,#(_nu >> 8)
      00293A FE               [12] 2112 	mov	r6,a
      00293B BF 03 02         [24] 2113 	cjne	r7,#0x03,00397$
      00293E 80 20            [24] 2114 	sjmp	00202$
      002940                       2115 00397$:
      002940 BF 02 19         [24] 2116 	cjne	r7,#0x02,00201$
      002943 A8 10            [24] 2117 	mov	r0,_bp
      002945 08               [12] 2118 	inc	r0
      002946 EA               [12] 2119 	mov	a,r2
      002947 26               [12] 2120 	add	a,@r0
      002948 FA               [12] 2121 	mov	r2,a
      002949 EB               [12] 2122 	mov	a,r3
      00294A 08               [12] 2123 	inc	r0
      00294B 36               [12] 2124 	addc	a,@r0
      00294C FB               [12] 2125 	mov	r3,a
      00294D EA               [12] 2126 	mov	a,r2
      00294E 24 02            [12] 2127 	add	a,#_u
      002950 FA               [12] 2128 	mov	r2,a
      002951 EB               [12] 2129 	mov	a,r3
      002952 34 84            [12] 2130 	addc	a,#(_u >> 8)
      002954 FB               [12] 2131 	mov	r3,a
      002955 8A 82            [24] 2132 	mov	dpl,r2
      002957 8B 83            [24] 2133 	mov	dph,r3
      002959 E0               [24] 2134 	movx	a,@dptr
      00295A 70 04            [24] 2135 	jnz	00202$
      00295C                       2136 00201$:
                                   2137 ;	assignBit
      00295C C2 00            [12] 2138 	clr	b0
      00295E 80 02            [24] 2139 	sjmp	00203$
      002960                       2140 00202$:
                                   2141 ;	assignBit
      002960 D2 00            [12] 2142 	setb	b0
      002962                       2143 00203$:
      002962 A2 00            [12] 2144 	mov	c,b0
      002964 E4               [12] 2145 	clr	a
      002965 33               [12] 2146 	rlc	a
      002966 8D 82            [24] 2147 	mov	dpl,r5
      002968 8E 83            [24] 2148 	mov	dph,r6
      00296A F0               [24] 2149 	movx	@dptr,a
                                   2150 ;	life.c:185: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      00296B 90 8C 04         [24] 2151 	mov	dptr,#_y
      00296E E0               [24] 2152 	movx	a,@dptr
      00296F FE               [12] 2153 	mov	r6,a
      002970 A3               [24] 2154 	inc	dptr
      002971 E0               [24] 2155 	movx	a,@dptr
      002972 C4               [12] 2156 	swap	a
      002973 23               [12] 2157 	rl	a
      002974 54 E0            [12] 2158 	anl	a,#0xe0
      002976 CE               [12] 2159 	xch	a,r6
      002977 C4               [12] 2160 	swap	a
      002978 23               [12] 2161 	rl	a
      002979 CE               [12] 2162 	xch	a,r6
      00297A 6E               [12] 2163 	xrl	a,r6
      00297B CE               [12] 2164 	xch	a,r6
      00297C 54 E0            [12] 2165 	anl	a,#0xe0
      00297E CE               [12] 2166 	xch	a,r6
      00297F 6E               [12] 2167 	xrl	a,r6
      002980 FF               [12] 2168 	mov	r7,a
      002981 90 8C 02         [24] 2169 	mov	dptr,#_x
      002984 E0               [24] 2170 	movx	a,@dptr
      002985 FC               [12] 2171 	mov	r4,a
      002986 A3               [24] 2172 	inc	dptr
      002987 E0               [24] 2173 	movx	a,@dptr
      002988 FD               [12] 2174 	mov	r5,a
      002989 EC               [12] 2175 	mov	a,r4
      00298A 2E               [12] 2176 	add	a,r6
      00298B FE               [12] 2177 	mov	r6,a
      00298C ED               [12] 2178 	mov	a,r5
      00298D 3F               [12] 2179 	addc	a,r7
      00298E FF               [12] 2180 	mov	r7,a
      00298F EE               [12] 2181 	mov	a,r6
      002990 24 02            [12] 2182 	add	a,#_pu
      002992 F5 82            [12] 2183 	mov	dpl,a
      002994 EF               [12] 2184 	mov	a,r7
      002995 34 80            [12] 2185 	addc	a,#(_pu >> 8)
      002997 F5 83            [12] 2186 	mov	dph,a
      002999 E0               [24] 2187 	movx	a,@dptr
      00299A FD               [12] 2188 	mov	r5,a
      00299B EE               [12] 2189 	mov	a,r6
      00299C 24 02            [12] 2190 	add	a,#_nu
      00299E F5 82            [12] 2191 	mov	dpl,a
      0029A0 EF               [12] 2192 	mov	a,r7
      0029A1 34 88            [12] 2193 	addc	a,#(_nu >> 8)
      0029A3 F5 83            [12] 2194 	mov	dph,a
      0029A5 E0               [24] 2195 	movx	a,@dptr
      0029A6 FF               [12] 2196 	mov	r7,a
      0029A7 ED               [12] 2197 	mov	a,r5
      0029A8 B5 07 02         [24] 2198 	cjne	a,ar7,00401$
      0029AB 80 05            [24] 2199 	sjmp	00152$
      0029AD                       2200 00401$:
      0029AD 90 8C 11         [24] 2201 	mov	dptr,#_cycle2
      0029B0 E4               [12] 2202 	clr	a
      0029B1 F0               [24] 2203 	movx	@dptr,a
      0029B2                       2204 00152$:
                                   2205 ;	life.c:186: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      0029B2 90 8C 04         [24] 2206 	mov	dptr,#_y
      0029B5 E0               [24] 2207 	movx	a,@dptr
      0029B6 FE               [12] 2208 	mov	r6,a
      0029B7 A3               [24] 2209 	inc	dptr
      0029B8 E0               [24] 2210 	movx	a,@dptr
      0029B9 C4               [12] 2211 	swap	a
      0029BA 23               [12] 2212 	rl	a
      0029BB 54 E0            [12] 2213 	anl	a,#0xe0
      0029BD CE               [12] 2214 	xch	a,r6
      0029BE C4               [12] 2215 	swap	a
      0029BF 23               [12] 2216 	rl	a
      0029C0 CE               [12] 2217 	xch	a,r6
      0029C1 6E               [12] 2218 	xrl	a,r6
      0029C2 CE               [12] 2219 	xch	a,r6
      0029C3 54 E0            [12] 2220 	anl	a,#0xe0
      0029C5 CE               [12] 2221 	xch	a,r6
      0029C6 6E               [12] 2222 	xrl	a,r6
      0029C7 FF               [12] 2223 	mov	r7,a
      0029C8 90 8C 02         [24] 2224 	mov	dptr,#_x
      0029CB E0               [24] 2225 	movx	a,@dptr
      0029CC FC               [12] 2226 	mov	r4,a
      0029CD A3               [24] 2227 	inc	dptr
      0029CE E0               [24] 2228 	movx	a,@dptr
      0029CF FD               [12] 2229 	mov	r5,a
      0029D0 EC               [12] 2230 	mov	a,r4
      0029D1 2E               [12] 2231 	add	a,r6
      0029D2 FE               [12] 2232 	mov	r6,a
      0029D3 ED               [12] 2233 	mov	a,r5
      0029D4 3F               [12] 2234 	addc	a,r7
      0029D5 FF               [12] 2235 	mov	r7,a
      0029D6 EE               [12] 2236 	mov	a,r6
      0029D7 24 02            [12] 2237 	add	a,#_u
      0029D9 F5 82            [12] 2238 	mov	dpl,a
      0029DB EF               [12] 2239 	mov	a,r7
      0029DC 34 84            [12] 2240 	addc	a,#(_u >> 8)
      0029DE F5 83            [12] 2241 	mov	dph,a
      0029E0 E0               [24] 2242 	movx	a,@dptr
      0029E1 FD               [12] 2243 	mov	r5,a
      0029E2 EE               [12] 2244 	mov	a,r6
      0029E3 24 02            [12] 2245 	add	a,#_nu
      0029E5 F5 82            [12] 2246 	mov	dpl,a
      0029E7 EF               [12] 2247 	mov	a,r7
      0029E8 34 88            [12] 2248 	addc	a,#(_nu >> 8)
      0029EA F5 83            [12] 2249 	mov	dph,a
      0029EC E0               [24] 2250 	movx	a,@dptr
      0029ED FF               [12] 2251 	mov	r7,a
      0029EE ED               [12] 2252 	mov	a,r5
      0029EF B5 07 02         [24] 2253 	cjne	a,ar7,00402$
      0029F2 80 05            [24] 2254 	sjmp	00181$
      0029F4                       2255 00402$:
      0029F4 90 8C 10         [24] 2256 	mov	dptr,#_fixed
      0029F7 E4               [12] 2257 	clr	a
      0029F8 F0               [24] 2258 	movx	@dptr,a
      0029F9                       2259 00181$:
                                   2260 ;	life.c:161: for (x = 0; x < W; x++) {
      0029F9 90 8C 02         [24] 2261 	mov	dptr,#_x
      0029FC E0               [24] 2262 	movx	a,@dptr
      0029FD 24 01            [12] 2263 	add	a,#0x01
      0029FF F0               [24] 2264 	movx	@dptr,a
      002A00 A3               [24] 2265 	inc	dptr
      002A01 E0               [24] 2266 	movx	a,@dptr
      002A02 34 00            [12] 2267 	addc	a,#0x00
      002A04 F0               [24] 2268 	movx	@dptr,a
      002A05 90 8C 02         [24] 2269 	mov	dptr,#_x
      002A08 E0               [24] 2270 	movx	a,@dptr
      002A09 FE               [12] 2271 	mov	r6,a
      002A0A A3               [24] 2272 	inc	dptr
      002A0B E0               [24] 2273 	movx	a,@dptr
      002A0C FF               [12] 2274 	mov	r7,a
      002A0D C3               [12] 2275 	clr	c
      002A0E EE               [12] 2276 	mov	a,r6
      002A0F 94 20            [12] 2277 	subb	a,#0x20
      002A11 EF               [12] 2278 	mov	a,r7
      002A12 64 80            [12] 2279 	xrl	a,#0x80
      002A14 94 80            [12] 2280 	subb	a,#0x80
      002A16 50 03            [24] 2281 	jnc	00403$
      002A18 02 26 2E         [24] 2282 	ljmp	00180$
      002A1B                       2283 00403$:
                                   2284 ;	life.c:158: for (y = 0; y < H; y++) {
      002A1B 90 8C 04         [24] 2285 	mov	dptr,#_y
      002A1E E0               [24] 2286 	movx	a,@dptr
      002A1F 24 01            [12] 2287 	add	a,#0x01
      002A21 F0               [24] 2288 	movx	@dptr,a
      002A22 A3               [24] 2289 	inc	dptr
      002A23 E0               [24] 2290 	movx	a,@dptr
      002A24 34 00            [12] 2291 	addc	a,#0x00
      002A26 F0               [24] 2292 	movx	@dptr,a
      002A27 90 8C 04         [24] 2293 	mov	dptr,#_y
      002A2A E0               [24] 2294 	movx	a,@dptr
      002A2B FE               [12] 2295 	mov	r6,a
      002A2C A3               [24] 2296 	inc	dptr
      002A2D E0               [24] 2297 	movx	a,@dptr
      002A2E FF               [12] 2298 	mov	r7,a
      002A2F C3               [12] 2299 	clr	c
      002A30 EE               [12] 2300 	mov	a,r6
      002A31 94 20            [12] 2301 	subb	a,#0x20
      002A33 EF               [12] 2302 	mov	a,r7
      002A34 64 80            [12] 2303 	xrl	a,#0x80
      002A36 94 80            [12] 2304 	subb	a,#0x80
      002A38 50 03            [24] 2305 	jnc	00404$
      002A3A 02 26 05         [24] 2306 	ljmp	00182$
      002A3D                       2307 00404$:
                                   2308 ;	life.c:190: memcpy(pu, u, sizeof (u));
      002A3D E4               [12] 2309 	clr	a
      002A3E C0 E0            [24] 2310 	push	acc
      002A40 74 04            [12] 2311 	mov	a,#0x04
      002A42 C0 E0            [24] 2312 	push	acc
      002A44 74 02            [12] 2313 	mov	a,#_u
      002A46 C0 E0            [24] 2314 	push	acc
      002A48 74 84            [12] 2315 	mov	a,#(_u >> 8)
      002A4A C0 E0            [24] 2316 	push	acc
      002A4C E4               [12] 2317 	clr	a
      002A4D C0 E0            [24] 2318 	push	acc
      002A4F 90 80 02         [24] 2319 	mov	dptr,#_pu
      002A52 75 F0 00         [24] 2320 	mov	b,#0x00
      002A55 12 2B 1B         [24] 2321 	lcall	___memcpy
      002A58 E5 81            [12] 2322 	mov	a,sp
      002A5A 24 FB            [12] 2323 	add	a,#0xfb
      002A5C F5 81            [12] 2324 	mov	sp,a
                                   2325 ;	life.c:191: memcpy(u, nu, sizeof (nu));
      002A5E E4               [12] 2326 	clr	a
      002A5F C0 E0            [24] 2327 	push	acc
      002A61 74 04            [12] 2328 	mov	a,#0x04
      002A63 C0 E0            [24] 2329 	push	acc
      002A65 74 02            [12] 2330 	mov	a,#_nu
      002A67 C0 E0            [24] 2331 	push	acc
      002A69 74 88            [12] 2332 	mov	a,#(_nu >> 8)
      002A6B C0 E0            [24] 2333 	push	acc
      002A6D E4               [12] 2334 	clr	a
      002A6E C0 E0            [24] 2335 	push	acc
      002A70 90 84 02         [24] 2336 	mov	dptr,#_u
      002A73 75 F0 00         [24] 2337 	mov	b,#0x00
      002A76 12 2B 1B         [24] 2338 	lcall	___memcpy
      002A79 E5 81            [12] 2339 	mov	a,sp
      002A7B 24 FB            [12] 2340 	add	a,#0xfb
      002A7D F5 81            [12] 2341 	mov	sp,a
                                   2342 ;	life.c:227: if (fixed || cycle2) {
      002A7F 90 8C 10         [24] 2343 	mov	dptr,#_fixed
      002A82 E0               [24] 2344 	movx	a,@dptr
      002A83 70 09            [24] 2345 	jnz	00114$
      002A85 90 8C 11         [24] 2346 	mov	dptr,#_cycle2
      002A88 E0               [24] 2347 	movx	a,@dptr
      002A89 70 03            [24] 2348 	jnz	00406$
      002A8B 02 25 E1         [24] 2349 	ljmp	00189$
      002A8E                       2350 00406$:
      002A8E                       2351 00114$:
                                   2352 ;	life.c:228: printstr("DONE\r\n");
      002A8E 7D 7C            [12] 2353 	mov	r5,#___str_6
      002A90 7E 2D            [12] 2354 	mov	r6,#(___str_6 >> 8)
      002A92 7F 80            [12] 2355 	mov	r7,#0x80
                                   2356 ;	life.c:48: return;
      002A94                       2357 00185$:
                                   2358 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A94 8D 82            [24] 2359 	mov	dpl,r5
      002A96 8E 83            [24] 2360 	mov	dph,r6
      002A98 8F F0            [24] 2361 	mov	b,r7
      002A9A 12 2C 18         [24] 2362 	lcall	__gptrget
      002A9D FC               [12] 2363 	mov	r4,a
      002A9E 60 10            [24] 2364 	jz	00159$
      002AA0 7B 00            [12] 2365 	mov	r3,#0x00
      002AA2 8C 82            [24] 2366 	mov	dpl,r4
      002AA4 8B 83            [24] 2367 	mov	dph,r3
      002AA6 12 20 75         [24] 2368 	lcall	_putchar
      002AA9 0D               [12] 2369 	inc	r5
                                   2370 ;	life.c:228: printstr("DONE\r\n");
      002AAA BD 00 E7         [24] 2371 	cjne	r5,#0x00,00185$
      002AAD 0E               [12] 2372 	inc	r6
      002AAE 80 E4            [24] 2373 	sjmp	00185$
      002AB0                       2374 00159$:
                                   2375 ;	life.c:229: (void)getchar();
      002AB0 12 20 7A         [24] 2376 	lcall	_getchar
                                   2377 ;	life.c:230: break;
      002AB3                       2378 00117$:
                                   2379 ;	life.c:234: if (i1) {
      002AB3 90 80 01         [24] 2380 	mov	dptr,#_i1
      002AB6 E0               [24] 2381 	movx	a,@dptr
      002AB7 60 25            [24] 2382 	jz	00195$
                                   2383 ;	life.c:235: printstr("BREAK\r\n");
      002AB9 7D 83            [12] 2384 	mov	r5,#___str_7
      002ABB 7E 2D            [12] 2385 	mov	r6,#(___str_7 >> 8)
      002ABD 7F 80            [12] 2386 	mov	r7,#0x80
                                   2387 ;	life.c:48: return;
      002ABF                       2388 00192$:
                                   2389 ;	life.c:46: for (; *s; s++) putchar(*s);
      002ABF 8D 82            [24] 2390 	mov	dpl,r5
      002AC1 8E 83            [24] 2391 	mov	dph,r6
      002AC3 8F F0            [24] 2392 	mov	b,r7
      002AC5 12 2C 18         [24] 2393 	lcall	__gptrget
      002AC8 FC               [12] 2394 	mov	r4,a
      002AC9 60 10            [24] 2395 	jz	00161$
      002ACB 7B 00            [12] 2396 	mov	r3,#0x00
      002ACD 8C 82            [24] 2397 	mov	dpl,r4
      002ACF 8B 83            [24] 2398 	mov	dph,r3
      002AD1 12 20 75         [24] 2399 	lcall	_putchar
      002AD4 0D               [12] 2400 	inc	r5
                                   2401 ;	life.c:235: printstr("BREAK\r\n");
      002AD5 BD 00 E7         [24] 2402 	cjne	r5,#0x00,00192$
      002AD8 0E               [12] 2403 	inc	r6
      002AD9 80 E4            [24] 2404 	sjmp	00192$
      002ADB                       2405 00161$:
                                   2406 ;	life.c:236: (void)getchar();
      002ADB 12 20 7A         [24] 2407 	lcall	_getchar
      002ADE                       2408 00195$:
                                   2409 ;	life.c:203: for (i0 = 0; !i0; ) {		
      002ADE 90 80 00         [24] 2410 	mov	dptr,#_i0
      002AE1 E0               [24] 2411 	movx	a,@dptr
      002AE2 70 03            [24] 2412 	jnz	00412$
      002AE4 02 23 2B         [24] 2413 	ljmp	00194$
      002AE7                       2414 00412$:
                                   2415 ;	life.c:240: EA = 0;
                                   2416 ;	assignBit
      002AE7 C2 AF            [12] 2417 	clr	_EA
                                   2418 ;	life.c:242: printstr("TERM\r\n");
      002AE9 7D 8B            [12] 2419 	mov	r5,#___str_8
      002AEB 7E 2D            [12] 2420 	mov	r6,#(___str_8 >> 8)
      002AED 7F 80            [12] 2421 	mov	r7,#0x80
                                   2422 ;	life.c:48: return;
      002AEF                       2423 00197$:
                                   2424 ;	life.c:46: for (; *s; s++) putchar(*s);
      002AEF 8D 82            [24] 2425 	mov	dpl,r5
      002AF1 8E 83            [24] 2426 	mov	dph,r6
      002AF3 8F F0            [24] 2427 	mov	b,r7
      002AF5 12 2C 18         [24] 2428 	lcall	__gptrget
      002AF8 FC               [12] 2429 	mov	r4,a
      002AF9 60 10            [24] 2430 	jz	00163$
      002AFB 7B 00            [12] 2431 	mov	r3,#0x00
      002AFD 8C 82            [24] 2432 	mov	dpl,r4
      002AFF 8B 83            [24] 2433 	mov	dph,r3
      002B01 12 20 75         [24] 2434 	lcall	_putchar
      002B04 0D               [12] 2435 	inc	r5
                                   2436 ;	life.c:242: printstr("TERM\r\n");
      002B05 BD 00 E7         [24] 2437 	cjne	r5,#0x00,00197$
      002B08 0E               [12] 2438 	inc	r6
      002B09 80 E4            [24] 2439 	sjmp	00197$
      002B0B                       2440 00163$:
                                   2441 ;	life.c:243: (void)getchar();
      002B0B 12 20 7A         [24] 2442 	lcall	_getchar
                                   2443 ;	life.c:247: __endasm;
      002B0E 02 00 00         [24] 2444 	ljmp	0
                                   2445 ;	life.c:248: }
      002B11 85 10 81         [24] 2446 	mov	sp,_bp
      002B14 D0 10            [24] 2447 	pop	_bp
      002B16 22               [24] 2448 	ret
                                   2449 	.area CSEG    (CODE)
                                   2450 	.area CONST   (CODE)
      002D40                       2451 _digits:
      002D40 30                    2452 	.db #0x30	; 48	'0'
      002D41 31                    2453 	.db #0x31	; 49	'1'
      002D42 32                    2454 	.db #0x32	; 50	'2'
      002D43 33                    2455 	.db #0x33	; 51	'3'
      002D44 34                    2456 	.db #0x34	; 52	'4'
      002D45 35                    2457 	.db #0x35	; 53	'5'
      002D46 36                    2458 	.db #0x36	; 54	'6'
      002D47 37                    2459 	.db #0x37	; 55	'7'
      002D48 38                    2460 	.db #0x38	; 56	'8'
      002D49 39                    2461 	.db #0x39	; 57	'9'
      002D4A 61                    2462 	.db #0x61	; 97	'a'
      002D4B 62                    2463 	.db #0x62	; 98	'b'
      002D4C 63                    2464 	.db #0x63	; 99	'c'
      002D4D 64                    2465 	.db #0x64	; 100	'd'
      002D4E 65                    2466 	.db #0x65	; 101	'e'
      002D4F 66                    2467 	.db #0x66	; 102	'f'
                                   2468 	.area CONST   (CODE)
      002D50                       2469 ___str_0:
      002D50 1B                    2470 	.db 0x1b
      002D51 5B 32 4A              2471 	.ascii "[2J"
      002D54 1B                    2472 	.db 0x1b
      002D55 5B 6D                 2473 	.ascii "[m"
      002D57 00                    2474 	.db 0x00
                                   2475 	.area CSEG    (CODE)
                                   2476 	.area CONST   (CODE)
      002D58                       2477 ___str_1:
      002D58 0D                    2478 	.db 0x0d
      002D59 0A                    2479 	.db 0x0a
      002D5A 00                    2480 	.db 0x00
                                   2481 	.area CSEG    (CODE)
                                   2482 	.area CONST   (CODE)
      002D5B                       2483 ___str_2:
      002D5B 4C 4F 41 44 20 3C     2484 	.ascii "LOAD <"
      002D61 00                    2485 	.db 0x00
                                   2486 	.area CSEG    (CODE)
                                   2487 	.area CONST   (CODE)
      002D62                       2488 ___str_3:
      002D62 3E                    2489 	.ascii ">"
      002D63 0D                    2490 	.db 0x0d
      002D64 0A                    2491 	.db 0x0a
      002D65 00                    2492 	.db 0x00
                                   2493 	.area CSEG    (CODE)
      002B17                       2494 _busy:
      002B17 5C                    2495 	.db #0x5c	; 92
      002B18 7C                    2496 	.db #0x7c	; 124
      002B19 2F                    2497 	.db #0x2f	; 47
      002B1A 2D                    2498 	.db #0x2d	; 45
                                   2499 	.area CONST   (CODE)
      002D66                       2500 ___str_4:
      002D66 1B                    2501 	.db 0x1b
      002D67 5B 32 4A              2502 	.ascii "[2J"
      002D6A 1B                    2503 	.db 0x1b
      002D6B 5B 6D 49 4E 49 54     2504 	.ascii "[mINIT"
      002D71 0D                    2505 	.db 0x0d
      002D72 0A                    2506 	.db 0x0a
      002D73 00                    2507 	.db 0x00
                                   2508 	.area CSEG    (CODE)
                                   2509 	.area CONST   (CODE)
      002D74                       2510 ___str_5:
      002D74 52 45 41 44 59        2511 	.ascii "READY"
      002D79 0D                    2512 	.db 0x0d
      002D7A 0A                    2513 	.db 0x0a
      002D7B 00                    2514 	.db 0x00
                                   2515 	.area CSEG    (CODE)
                                   2516 	.area CONST   (CODE)
      002D7C                       2517 ___str_6:
      002D7C 44 4F 4E 45           2518 	.ascii "DONE"
      002D80 0D                    2519 	.db 0x0d
      002D81 0A                    2520 	.db 0x0a
      002D82 00                    2521 	.db 0x00
                                   2522 	.area CSEG    (CODE)
                                   2523 	.area CONST   (CODE)
      002D83                       2524 ___str_7:
      002D83 42 52 45 41 4B        2525 	.ascii "BREAK"
      002D88 0D                    2526 	.db 0x0d
      002D89 0A                    2527 	.db 0x0a
      002D8A 00                    2528 	.db 0x00
                                   2529 	.area CSEG    (CODE)
                                   2530 	.area CONST   (CODE)
      002D8B                       2531 ___str_8:
      002D8B 54 45 52 4D           2532 	.ascii "TERM"
      002D8F 0D                    2533 	.db 0x0d
      002D90 0A                    2534 	.db 0x0a
      002D91 00                    2535 	.db 0x00
                                   2536 	.area CSEG    (CODE)
                                   2537 	.area XINIT   (CODE)
                                   2538 	.area CABS    (ABS,CODE)
