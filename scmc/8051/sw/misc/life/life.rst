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
      0020B1 7D 2C            [12]  556 	mov	r5,#___str_0
      0020B3 7E 2D            [12]  557 	mov	r6,#(___str_0 >> 8)
      0020B5 7F 80            [12]  558 	mov	r7,#0x80
                                    559 ;	life.c:48: return;
      0020B7                        560 00121$:
                                    561 ;	life.c:46: for (; *s; s++) putchar(*s);
      0020B7 8D 82            [24]  562 	mov	dpl,r5
      0020B9 8E 83            [24]  563 	mov	dph,r6
      0020BB 8F F0            [24]  564 	mov	b,r7
      0020BD 12 2B F4         [24]  565 	lcall	__gptrget
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
      0020ED 24 1C            [12]  597 	add	a,#_digits
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
      00210A 24 1C            [12]  614 	add	a,#_digits
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
      002139 24 1C            [12]  645 	add	a,#_digits
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
      002154 24 1C            [12]  661 	add	a,#_digits
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
      002183 24 1C            [12]  692 	add	a,#_digits
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
      0021A0 24 1C            [12]  709 	add	a,#_digits
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
      0021CF 24 1C            [12]  740 	add	a,#_digits
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
      0021EA 24 1C            [12]  756 	add	a,#_digits
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
      0021FF 7D 34            [12]  769 	mov	r5,#___str_1
      002201 7E 2D            [12]  770 	mov	r6,#(___str_1 >> 8)
      002203 7F 80            [12]  771 	mov	r7,#0x80
                                    772 ;	life.c:48: return;
      002205                        773 00124$:
                                    774 ;	life.c:46: for (; *s; s++) putchar(*s);
      002205 8D 82            [24]  775 	mov	dpl,r5
      002207 8E 83            [24]  776 	mov	dph,r6
      002209 8F F0            [24]  777 	mov	b,r7
      00220B 12 2B F4         [24]  778 	lcall	__gptrget
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
      0022C9 7D 34            [12]  921 	mov	r5,#___str_1
      0022CB 7E 2D            [12]  922 	mov	r6,#(___str_1 >> 8)
      0022CD 7F 80            [12]  923 	mov	r7,#0x80
                                    924 ;	life.c:48: return;
      0022CF                        925 00129$:
                                    926 ;	life.c:46: for (; *s; s++) putchar(*s);
      0022CF 8D 82            [24]  927 	mov	dpl,r5
      0022D1 8E 83            [24]  928 	mov	dph,r6
      0022D3 8F F0            [24]  929 	mov	b,r7
      0022D5 12 2B F4         [24]  930 	lcall	__gptrget
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
      002327                       1027 00181$:
                                   1028 ;	life.c:116: memset(u, 0, sizeof (u));
      002327 E4               [12] 1029 	clr	a
      002328 C0 E0            [24] 1030 	push	acc
      00232A 74 04            [12] 1031 	mov	a,#0x04
      00232C C0 E0            [24] 1032 	push	acc
      00232E E4               [12] 1033 	clr	a
      00232F C0 E0            [24] 1034 	push	acc
      002331 90 84 02         [24] 1035 	mov	dptr,#_u
      002334 75 F0 00         [24] 1036 	mov	b,#0x00
      002337 12 2B 8A         [24] 1037 	lcall	_memset
      00233A 15 81            [12] 1038 	dec	sp
      00233C 15 81            [12] 1039 	dec	sp
      00233E 15 81            [12] 1040 	dec	sp
                                   1041 ;	life.c:117: memset(pu, 0, sizeof (pu));
      002340 E4               [12] 1042 	clr	a
      002341 C0 E0            [24] 1043 	push	acc
      002343 74 04            [12] 1044 	mov	a,#0x04
      002345 C0 E0            [24] 1045 	push	acc
      002347 E4               [12] 1046 	clr	a
      002348 C0 E0            [24] 1047 	push	acc
      00234A 90 80 02         [24] 1048 	mov	dptr,#_pu
      00234D 75 F0 00         [24] 1049 	mov	b,#0x00
      002350 12 2B 8A         [24] 1050 	lcall	_memset
      002353 15 81            [12] 1051 	dec	sp
      002355 15 81            [12] 1052 	dec	sp
      002357 15 81            [12] 1053 	dec	sp
                                   1054 ;	life.c:205: printstr("\033[2J\033[mINIT\r\n");
      002359 7D 42            [12] 1055 	mov	r5,#___str_4
      00235B 7E 2D            [12] 1056 	mov	r6,#(___str_4 >> 8)
      00235D 7F 80            [12] 1057 	mov	r7,#0x80
                                   1058 ;	life.c:48: return;
      00235F                       1059 00152$:
                                   1060 ;	life.c:46: for (; *s; s++) putchar(*s);
      00235F 8D 82            [24] 1061 	mov	dpl,r5
      002361 8E 83            [24] 1062 	mov	dph,r6
      002363 8F F0            [24] 1063 	mov	b,r7
      002365 12 2B F4         [24] 1064 	lcall	__gptrget
      002368 FC               [12] 1065 	mov	r4,a
      002369 60 10            [24] 1066 	jz	00110$
      00236B 7B 00            [12] 1067 	mov	r3,#0x00
      00236D 8C 82            [24] 1068 	mov	dpl,r4
      00236F 8B 83            [24] 1069 	mov	dph,r3
      002371 12 20 75         [24] 1070 	lcall	_putchar
      002374 0D               [12] 1071 	inc	r5
                                   1072 ;	life.c:205: printstr("\033[2J\033[mINIT\r\n");
      002375 BD 00 E7         [24] 1073 	cjne	r5,#0x00,00152$
      002378 0E               [12] 1074 	inc	r6
      002379 80 E4            [24] 1075 	sjmp	00152$
      00237B                       1076 00110$:
                                   1077 ;	life.c:206: (void)getchar();
      00237B 12 20 7A         [24] 1078 	lcall	_getchar
                                   1079 ;	life.c:123: j = 0;
      00237E 90 8C 0A         [24] 1080 	mov	dptr,#_j
      002381 E4               [12] 1081 	clr	a
      002382 F0               [24] 1082 	movx	@dptr,a
      002383 A3               [24] 1083 	inc	dptr
      002384 F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	life.c:125: printstr("LOAD <");
      002385 7D 37            [12] 1086 	mov	r5,#___str_2
      002387 7E 2D            [12] 1087 	mov	r6,#(___str_2 >> 8)
      002389 7F 80            [12] 1088 	mov	r7,#0x80
                                   1089 ;	life.c:48: return;
      00238B                       1090 00155$:
                                   1091 ;	life.c:46: for (; *s; s++) putchar(*s);
      00238B 8D 82            [24] 1092 	mov	dpl,r5
      00238D 8E 83            [24] 1093 	mov	dph,r6
      00238F 8F F0            [24] 1094 	mov	b,r7
      002391 12 2B F4         [24] 1095 	lcall	__gptrget
      002394 FC               [12] 1096 	mov	r4,a
      002395 60 10            [24] 1097 	jz	00112$
      002397 7B 00            [12] 1098 	mov	r3,#0x00
      002399 8C 82            [24] 1099 	mov	dpl,r4
      00239B 8B 83            [24] 1100 	mov	dph,r3
      00239D 12 20 75         [24] 1101 	lcall	_putchar
      0023A0 0D               [12] 1102 	inc	r5
                                   1103 ;	life.c:125: printstr("LOAD <");
      0023A1 BD 00 E7         [24] 1104 	cjne	r5,#0x00,00155$
      0023A4 0E               [12] 1105 	inc	r6
      0023A5 80 E4            [24] 1106 	sjmp	00155$
      0023A7                       1107 00112$:
                                   1108 ;	life.c:127: for (y = 0; y < H; y++)
      0023A7 90 8C 04         [24] 1109 	mov	dptr,#_y
      0023AA E4               [12] 1110 	clr	a
      0023AB F0               [24] 1111 	movx	@dptr,a
      0023AC A3               [24] 1112 	inc	dptr
      0023AD F0               [24] 1113 	movx	@dptr,a
      0023AE                       1114 00159$:
                                   1115 ;	life.c:128: for (x = 0; x < W; x++) {
      0023AE 90 8C 02         [24] 1116 	mov	dptr,#_x
      0023B1 E4               [12] 1117 	clr	a
      0023B2 F0               [24] 1118 	movx	@dptr,a
      0023B3 A3               [24] 1119 	inc	dptr
      0023B4 F0               [24] 1120 	movx	@dptr,a
      0023B5                       1121 00157$:
                                   1122 ;	life.c:129: c = getchar();
      0023B5 12 20 7A         [24] 1123 	lcall	_getchar
      0023B8 AE 82            [24] 1124 	mov	r6,dpl
      0023BA AF 83            [24] 1125 	mov	r7,dph
      0023BC 90 8C 0C         [24] 1126 	mov	dptr,#_c
      0023BF EE               [12] 1127 	mov	a,r6
      0023C0 F0               [24] 1128 	movx	@dptr,a
      0023C1 EF               [12] 1129 	mov	a,r7
      0023C2 A3               [24] 1130 	inc	dptr
      0023C3 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	life.c:130: if (c == (int)'0') {
      0023C4 BE 30 41         [24] 1133 	cjne	r6,#0x30,00119$
      0023C7 BF 00 3E         [24] 1134 	cjne	r7,#0x00,00119$
                                   1135 ;	life.c:131: u[A2D(W, y, x)] = 0;
      0023CA 90 8C 04         [24] 1136 	mov	dptr,#_y
      0023CD E0               [24] 1137 	movx	a,@dptr
      0023CE FC               [12] 1138 	mov	r4,a
      0023CF A3               [24] 1139 	inc	dptr
      0023D0 E0               [24] 1140 	movx	a,@dptr
      0023D1 C4               [12] 1141 	swap	a
      0023D2 23               [12] 1142 	rl	a
      0023D3 54 E0            [12] 1143 	anl	a,#0xe0
      0023D5 CC               [12] 1144 	xch	a,r4
      0023D6 C4               [12] 1145 	swap	a
      0023D7 23               [12] 1146 	rl	a
      0023D8 CC               [12] 1147 	xch	a,r4
      0023D9 6C               [12] 1148 	xrl	a,r4
      0023DA CC               [12] 1149 	xch	a,r4
      0023DB 54 E0            [12] 1150 	anl	a,#0xe0
      0023DD CC               [12] 1151 	xch	a,r4
      0023DE 6C               [12] 1152 	xrl	a,r4
      0023DF FD               [12] 1153 	mov	r5,a
      0023E0 90 8C 02         [24] 1154 	mov	dptr,#_x
      0023E3 E0               [24] 1155 	movx	a,@dptr
      0023E4 FA               [12] 1156 	mov	r2,a
      0023E5 A3               [24] 1157 	inc	dptr
      0023E6 E0               [24] 1158 	movx	a,@dptr
      0023E7 FB               [12] 1159 	mov	r3,a
      0023E8 EA               [12] 1160 	mov	a,r2
      0023E9 2C               [12] 1161 	add	a,r4
      0023EA FC               [12] 1162 	mov	r4,a
      0023EB EB               [12] 1163 	mov	a,r3
      0023EC 3D               [12] 1164 	addc	a,r5
      0023ED FD               [12] 1165 	mov	r5,a
      0023EE EC               [12] 1166 	mov	a,r4
      0023EF 24 02            [12] 1167 	add	a,#_u
      0023F1 F5 82            [12] 1168 	mov	dpl,a
      0023F3 ED               [12] 1169 	mov	a,r5
      0023F4 34 84            [12] 1170 	addc	a,#(_u >> 8)
      0023F6 F5 83            [12] 1171 	mov	dph,a
      0023F8 E4               [12] 1172 	clr	a
      0023F9 F0               [24] 1173 	movx	@dptr,a
                                   1174 ;	life.c:132: j++;
      0023FA 90 8C 0A         [24] 1175 	mov	dptr,#_j
      0023FD E0               [24] 1176 	movx	a,@dptr
      0023FE 24 01            [12] 1177 	add	a,#0x01
      002400 F0               [24] 1178 	movx	@dptr,a
      002401 A3               [24] 1179 	inc	dptr
      002402 E0               [24] 1180 	movx	a,@dptr
      002403 34 00            [12] 1181 	addc	a,#0x00
      002405 F0               [24] 1182 	movx	@dptr,a
      002406 80 4D            [24] 1183 	sjmp	00158$
      002408                       1184 00119$:
                                   1185 ;	life.c:133: } else if (c == (int)'1') {
      002408 BE 31 42         [24] 1186 	cjne	r6,#0x31,00117$
      00240B BF 00 3F         [24] 1187 	cjne	r7,#0x00,00117$
                                   1188 ;	life.c:134: u[A2D(W, y, x)] = 1;
      00240E 90 8C 04         [24] 1189 	mov	dptr,#_y
      002411 E0               [24] 1190 	movx	a,@dptr
      002412 FC               [12] 1191 	mov	r4,a
      002413 A3               [24] 1192 	inc	dptr
      002414 E0               [24] 1193 	movx	a,@dptr
      002415 C4               [12] 1194 	swap	a
      002416 23               [12] 1195 	rl	a
      002417 54 E0            [12] 1196 	anl	a,#0xe0
      002419 CC               [12] 1197 	xch	a,r4
      00241A C4               [12] 1198 	swap	a
      00241B 23               [12] 1199 	rl	a
      00241C CC               [12] 1200 	xch	a,r4
      00241D 6C               [12] 1201 	xrl	a,r4
      00241E CC               [12] 1202 	xch	a,r4
      00241F 54 E0            [12] 1203 	anl	a,#0xe0
      002421 CC               [12] 1204 	xch	a,r4
      002422 6C               [12] 1205 	xrl	a,r4
      002423 FD               [12] 1206 	mov	r5,a
      002424 90 8C 02         [24] 1207 	mov	dptr,#_x
      002427 E0               [24] 1208 	movx	a,@dptr
      002428 FA               [12] 1209 	mov	r2,a
      002429 A3               [24] 1210 	inc	dptr
      00242A E0               [24] 1211 	movx	a,@dptr
      00242B FB               [12] 1212 	mov	r3,a
      00242C EA               [12] 1213 	mov	a,r2
      00242D 2C               [12] 1214 	add	a,r4
      00242E FC               [12] 1215 	mov	r4,a
      00242F EB               [12] 1216 	mov	a,r3
      002430 3D               [12] 1217 	addc	a,r5
      002431 FD               [12] 1218 	mov	r5,a
      002432 EC               [12] 1219 	mov	a,r4
      002433 24 02            [12] 1220 	add	a,#_u
      002435 F5 82            [12] 1221 	mov	dpl,a
      002437 ED               [12] 1222 	mov	a,r5
      002438 34 84            [12] 1223 	addc	a,#(_u >> 8)
      00243A F5 83            [12] 1224 	mov	dph,a
      00243C 74 01            [12] 1225 	mov	a,#0x01
      00243E F0               [24] 1226 	movx	@dptr,a
                                   1227 ;	life.c:135: j++;
      00243F 90 8C 0A         [24] 1228 	mov	dptr,#_j
      002442 E0               [24] 1229 	movx	a,@dptr
      002443 24 01            [12] 1230 	add	a,#0x01
      002445 F0               [24] 1231 	movx	@dptr,a
      002446 A3               [24] 1232 	inc	dptr
      002447 E0               [24] 1233 	movx	a,@dptr
      002448 34 00            [12] 1234 	addc	a,#0x00
      00244A F0               [24] 1235 	movx	@dptr,a
      00244B 80 08            [24] 1236 	sjmp	00158$
      00244D                       1237 00117$:
                                   1238 ;	life.c:136: } else if (c == (int)'#') goto out;
      00244D BE 23 05         [24] 1239 	cjne	r6,#0x23,00349$
      002450 BF 00 02         [24] 1240 	cjne	r7,#0x00,00349$
      002453 80 44            [24] 1241 	sjmp	00130$
      002455                       1242 00349$:
      002455                       1243 00158$:
                                   1244 ;	life.c:128: for (x = 0; x < W; x++) {
      002455 90 8C 02         [24] 1245 	mov	dptr,#_x
      002458 E0               [24] 1246 	movx	a,@dptr
      002459 24 01            [12] 1247 	add	a,#0x01
      00245B F0               [24] 1248 	movx	@dptr,a
      00245C A3               [24] 1249 	inc	dptr
      00245D E0               [24] 1250 	movx	a,@dptr
      00245E 34 00            [12] 1251 	addc	a,#0x00
      002460 F0               [24] 1252 	movx	@dptr,a
      002461 90 8C 02         [24] 1253 	mov	dptr,#_x
      002464 E0               [24] 1254 	movx	a,@dptr
      002465 FE               [12] 1255 	mov	r6,a
      002466 A3               [24] 1256 	inc	dptr
      002467 E0               [24] 1257 	movx	a,@dptr
      002468 FF               [12] 1258 	mov	r7,a
      002469 C3               [12] 1259 	clr	c
      00246A EE               [12] 1260 	mov	a,r6
      00246B 94 20            [12] 1261 	subb	a,#0x20
      00246D EF               [12] 1262 	mov	a,r7
      00246E 64 80            [12] 1263 	xrl	a,#0x80
      002470 94 80            [12] 1264 	subb	a,#0x80
      002472 50 03            [24] 1265 	jnc	00350$
      002474 02 23 B5         [24] 1266 	ljmp	00157$
      002477                       1267 00350$:
                                   1268 ;	life.c:127: for (y = 0; y < H; y++)
      002477 90 8C 04         [24] 1269 	mov	dptr,#_y
      00247A E0               [24] 1270 	movx	a,@dptr
      00247B 24 01            [12] 1271 	add	a,#0x01
      00247D F0               [24] 1272 	movx	@dptr,a
      00247E A3               [24] 1273 	inc	dptr
      00247F E0               [24] 1274 	movx	a,@dptr
      002480 34 00            [12] 1275 	addc	a,#0x00
      002482 F0               [24] 1276 	movx	@dptr,a
      002483 90 8C 04         [24] 1277 	mov	dptr,#_y
      002486 E0               [24] 1278 	movx	a,@dptr
      002487 FE               [12] 1279 	mov	r6,a
      002488 A3               [24] 1280 	inc	dptr
      002489 E0               [24] 1281 	movx	a,@dptr
      00248A FF               [12] 1282 	mov	r7,a
      00248B C3               [12] 1283 	clr	c
      00248C EE               [12] 1284 	mov	a,r6
      00248D 94 20            [12] 1285 	subb	a,#0x20
      00248F EF               [12] 1286 	mov	a,r7
      002490 64 80            [12] 1287 	xrl	a,#0x80
      002492 94 80            [12] 1288 	subb	a,#0x80
      002494 50 03            [24] 1289 	jnc	00351$
      002496 02 23 AE         [24] 1290 	ljmp	00159$
      002499                       1291 00351$:
                                   1292 ;	life.c:139: out:
      002499                       1293 00130$:
                                   1294 ;	life.c:140: if (c != (int)'#')
      002499 90 8C 0C         [24] 1295 	mov	dptr,#_c
      00249C E0               [24] 1296 	movx	a,@dptr
      00249D FE               [12] 1297 	mov	r6,a
      00249E A3               [24] 1298 	inc	dptr
      00249F E0               [24] 1299 	movx	a,@dptr
      0024A0 FF               [12] 1300 	mov	r7,a
      0024A1 BE 23 05         [24] 1301 	cjne	r6,#0x23,00352$
      0024A4 BF 00 02         [24] 1302 	cjne	r7,#0x00,00352$
      0024A7 80 15            [24] 1303 	sjmp	00129$
      0024A9                       1304 00352$:
                                   1305 ;	life.c:141: while (1) {
      0024A9                       1306 00126$:
                                   1307 ;	life.c:142: c = getchar();
      0024A9 12 20 7A         [24] 1308 	lcall	_getchar
      0024AC AE 82            [24] 1309 	mov	r6,dpl
      0024AE AF 83            [24] 1310 	mov	r7,dph
      0024B0 90 8C 0C         [24] 1311 	mov	dptr,#_c
      0024B3 EE               [12] 1312 	mov	a,r6
      0024B4 F0               [24] 1313 	movx	@dptr,a
      0024B5 EF               [12] 1314 	mov	a,r7
      0024B6 A3               [24] 1315 	inc	dptr
      0024B7 F0               [24] 1316 	movx	@dptr,a
                                   1317 ;	life.c:143: if (c == (int)'#') break;
      0024B8 BE 23 EE         [24] 1318 	cjne	r6,#0x23,00126$
      0024BB BF 00 EB         [24] 1319 	cjne	r7,#0x00,00126$
      0024BE                       1320 00129$:
                                   1321 ;	life.c:145: print16x(j);
      0024BE 90 8C 0A         [24] 1322 	mov	dptr,#_j
      0024C1 E0               [24] 1323 	movx	a,@dptr
      0024C2 FE               [12] 1324 	mov	r6,a
      0024C3 A3               [24] 1325 	inc	dptr
      0024C4 E0               [24] 1326 	movx	a,@dptr
                                   1327 ;	life.c:37: putchar(digits[(a >> 12) & 0xf]);
      0024C5 8E 04            [24] 1328 	mov	ar4,r6
      0024C7 FD               [12] 1329 	mov	r5,a
      0024C8 C4               [12] 1330 	swap	a
      0024C9 54 0F            [12] 1331 	anl	a,#0x0f
      0024CB 30 E3 02         [24] 1332 	jnb	acc.3,00355$
      0024CE 44 F0            [12] 1333 	orl	a,#0xf0
      0024D0                       1334 00355$:
      0024D0 FE               [12] 1335 	mov	r6,a
      0024D1 33               [12] 1336 	rlc	a
      0024D2 95 E0            [12] 1337 	subb	a,acc
      0024D4 53 06 0F         [24] 1338 	anl	ar6,#0x0f
      0024D7 7F 00            [12] 1339 	mov	r7,#0x00
      0024D9 EE               [12] 1340 	mov	a,r6
      0024DA 24 1C            [12] 1341 	add	a,#_digits
      0024DC F5 82            [12] 1342 	mov	dpl,a
      0024DE EF               [12] 1343 	mov	a,r7
      0024DF 34 2D            [12] 1344 	addc	a,#(_digits >> 8)
      0024E1 F5 83            [12] 1345 	mov	dph,a
      0024E3 E4               [12] 1346 	clr	a
      0024E4 93               [24] 1347 	movc	a,@a+dptr
      0024E5 FF               [12] 1348 	mov	r7,a
      0024E6 7E 00            [12] 1349 	mov	r6,#0x00
      0024E8 8F 82            [24] 1350 	mov	dpl,r7
      0024EA 8E 83            [24] 1351 	mov	dph,r6
      0024EC 12 20 75         [24] 1352 	lcall	_putchar
                                   1353 ;	life.c:38: putchar(digits[(a >> 8) & 0xf]);
      0024EF 8D 07            [24] 1354 	mov	ar7,r5
      0024F1 53 07 0F         [24] 1355 	anl	ar7,#0x0f
      0024F4 7E 00            [12] 1356 	mov	r6,#0x00
      0024F6 EF               [12] 1357 	mov	a,r7
      0024F7 24 1C            [12] 1358 	add	a,#_digits
      0024F9 F5 82            [12] 1359 	mov	dpl,a
      0024FB EE               [12] 1360 	mov	a,r6
      0024FC 34 2D            [12] 1361 	addc	a,#(_digits >> 8)
      0024FE F5 83            [12] 1362 	mov	dph,a
      002500 E4               [12] 1363 	clr	a
      002501 93               [24] 1364 	movc	a,@a+dptr
      002502 FF               [12] 1365 	mov	r7,a
      002503 7E 00            [12] 1366 	mov	r6,#0x00
      002505 8F 82            [24] 1367 	mov	dpl,r7
      002507 8E 83            [24] 1368 	mov	dph,r6
      002509 12 20 75         [24] 1369 	lcall	_putchar
                                   1370 ;	life.c:39: putchar(digits[(a >> 4) & 0xf]);
      00250C 8C 06            [24] 1371 	mov	ar6,r4
      00250E ED               [12] 1372 	mov	a,r5
      00250F C4               [12] 1373 	swap	a
      002510 CE               [12] 1374 	xch	a,r6
      002511 C4               [12] 1375 	swap	a
      002512 54 0F            [12] 1376 	anl	a,#0x0f
      002514 6E               [12] 1377 	xrl	a,r6
      002515 CE               [12] 1378 	xch	a,r6
      002516 54 0F            [12] 1379 	anl	a,#0x0f
      002518 CE               [12] 1380 	xch	a,r6
      002519 6E               [12] 1381 	xrl	a,r6
      00251A CE               [12] 1382 	xch	a,r6
      00251B 30 E3 02         [24] 1383 	jnb	acc.3,00356$
      00251E 44 F0            [12] 1384 	orl	a,#0xf0
      002520                       1385 00356$:
      002520 53 06 0F         [24] 1386 	anl	ar6,#0x0f
      002523 7F 00            [12] 1387 	mov	r7,#0x00
      002525 EE               [12] 1388 	mov	a,r6
      002526 24 1C            [12] 1389 	add	a,#_digits
      002528 F5 82            [12] 1390 	mov	dpl,a
      00252A EF               [12] 1391 	mov	a,r7
      00252B 34 2D            [12] 1392 	addc	a,#(_digits >> 8)
      00252D F5 83            [12] 1393 	mov	dph,a
      00252F E4               [12] 1394 	clr	a
      002530 93               [24] 1395 	movc	a,@a+dptr
      002531 FF               [12] 1396 	mov	r7,a
      002532 7E 00            [12] 1397 	mov	r6,#0x00
      002534 8F 82            [24] 1398 	mov	dpl,r7
      002536 8E 83            [24] 1399 	mov	dph,r6
      002538 12 20 75         [24] 1400 	lcall	_putchar
                                   1401 ;	life.c:40: putchar(digits[a & 0xf]);
      00253B 53 04 0F         [24] 1402 	anl	ar4,#0x0f
      00253E 7D 00            [12] 1403 	mov	r5,#0x00
      002540 EC               [12] 1404 	mov	a,r4
      002541 24 1C            [12] 1405 	add	a,#_digits
      002543 F5 82            [12] 1406 	mov	dpl,a
      002545 ED               [12] 1407 	mov	a,r5
      002546 34 2D            [12] 1408 	addc	a,#(_digits >> 8)
      002548 F5 83            [12] 1409 	mov	dph,a
      00254A E4               [12] 1410 	clr	a
      00254B 93               [24] 1411 	movc	a,@a+dptr
      00254C FF               [12] 1412 	mov	r7,a
      00254D 7E 00            [12] 1413 	mov	r6,#0x00
      00254F 8F 82            [24] 1414 	mov	dpl,r7
      002551 8E 83            [24] 1415 	mov	dph,r6
      002553 12 20 75         [24] 1416 	lcall	_putchar
                                   1417 ;	life.c:146: printstr(">\r\n");
      002556 7D 3E            [12] 1418 	mov	r5,#___str_3
      002558 7E 2D            [12] 1419 	mov	r6,#(___str_3 >> 8)
      00255A 7F 80            [12] 1420 	mov	r7,#0x80
                                   1421 ;	life.c:48: return;
      00255C                       1422 00162$:
                                   1423 ;	life.c:46: for (; *s; s++) putchar(*s);
      00255C 8D 82            [24] 1424 	mov	dpl,r5
      00255E 8E 83            [24] 1425 	mov	dph,r6
      002560 8F F0            [24] 1426 	mov	b,r7
      002562 12 2B F4         [24] 1427 	lcall	__gptrget
      002565 FC               [12] 1428 	mov	r4,a
      002566 60 10            [24] 1429 	jz	00133$
      002568 7B 00            [12] 1430 	mov	r3,#0x00
      00256A 8C 82            [24] 1431 	mov	dpl,r4
      00256C 8B 83            [24] 1432 	mov	dph,r3
      00256E 12 20 75         [24] 1433 	lcall	_putchar
      002571 0D               [12] 1434 	inc	r5
                                   1435 ;	life.c:146: printstr(">\r\n");
      002572 BD 00 E7         [24] 1436 	cjne	r5,#0x00,00162$
      002575 0E               [12] 1437 	inc	r6
      002576 80 E4            [24] 1438 	sjmp	00162$
      002578                       1439 00133$:
                                   1440 ;	life.c:209: show(0);
      002578 75 82 00         [24] 1441 	mov	dpl,#0x00
      00257B 12 20 A9         [24] 1442 	lcall	_show
                                   1443 ;	life.c:211: printstr("RDY\r\n");
      00257E 7D 50            [12] 1444 	mov	r5,#___str_5
      002580 7E 2D            [12] 1445 	mov	r6,#(___str_5 >> 8)
      002582 7F 80            [12] 1446 	mov	r7,#0x80
                                   1447 ;	life.c:48: return;
      002584                       1448 00165$:
                                   1449 ;	life.c:46: for (; *s; s++) putchar(*s);
      002584 8D 82            [24] 1450 	mov	dpl,r5
      002586 8E 83            [24] 1451 	mov	dph,r6
      002588 8F F0            [24] 1452 	mov	b,r7
      00258A 12 2B F4         [24] 1453 	lcall	__gptrget
      00258D FC               [12] 1454 	mov	r4,a
      00258E 60 10            [24] 1455 	jz	00136$
      002590 7B 00            [12] 1456 	mov	r3,#0x00
      002592 8C 82            [24] 1457 	mov	dpl,r4
      002594 8B 83            [24] 1458 	mov	dph,r3
      002596 12 20 75         [24] 1459 	lcall	_putchar
      002599 0D               [12] 1460 	inc	r5
                                   1461 ;	life.c:211: printstr("RDY\r\n");
      00259A BD 00 E7         [24] 1462 	cjne	r5,#0x00,00165$
      00259D 0E               [12] 1463 	inc	r6
      00259E 80 E4            [24] 1464 	sjmp	00165$
      0025A0                       1465 00136$:
                                   1466 ;	life.c:212: (void)getchar();
      0025A0 12 20 7A         [24] 1467 	lcall	_getchar
                                   1468 ;	life.c:74: generation[0] = 0;
      0025A3 90 8C 12         [24] 1469 	mov	dptr,#_generation
      0025A6 E4               [12] 1470 	clr	a
      0025A7 F0               [24] 1471 	movx	@dptr,a
      0025A8 A3               [24] 1472 	inc	dptr
      0025A9 F0               [24] 1473 	movx	@dptr,a
                                   1474 ;	life.c:75: generation[1] = 0;
      0025AA 90 8C 14         [24] 1475 	mov	dptr,#(_generation + 0x0002)
      0025AD F0               [24] 1476 	movx	@dptr,a
      0025AE A3               [24] 1477 	inc	dptr
      0025AF F0               [24] 1478 	movx	@dptr,a
                                   1479 ;	life.c:216: for (i1 = 0; !i0 && !i1; ) {
      0025B0 90 80 01         [24] 1480 	mov	dptr,#_i1
      0025B3 F0               [24] 1481 	movx	@dptr,a
      0025B4                       1482 00176$:
      0025B4 90 80 00         [24] 1483 	mov	dptr,#_i0
      0025B7 E0               [24] 1484 	movx	a,@dptr
      0025B8 60 03            [24] 1485 	jz	00361$
      0025BA 02 2A 8F         [24] 1486 	ljmp	00104$
      0025BD                       1487 00361$:
      0025BD 90 80 01         [24] 1488 	mov	dptr,#_i1
      0025C0 E0               [24] 1489 	movx	a,@dptr
      0025C1 60 03            [24] 1490 	jz	00362$
      0025C3 02 2A 8F         [24] 1491 	ljmp	00104$
      0025C6                       1492 00362$:
                                   1493 ;	life.c:217: show(1);
      0025C6 75 82 01         [24] 1494 	mov	dpl,#0x01
      0025C9 12 20 A9         [24] 1495 	lcall	_show
                                   1496 ;	life.c:154: fixed = 1;
      0025CC 90 8C 10         [24] 1497 	mov	dptr,#_fixed
      0025CF 74 01            [12] 1498 	mov	a,#0x01
      0025D1 F0               [24] 1499 	movx	@dptr,a
                                   1500 ;	life.c:155: cycle2 = 1;
      0025D2 90 8C 11         [24] 1501 	mov	dptr,#_cycle2
      0025D5 F0               [24] 1502 	movx	@dptr,a
                                   1503 ;	life.c:156: bstep = 0;
      0025D6 90 8C 0E         [24] 1504 	mov	dptr,#_bstep
      0025D9 E4               [12] 1505 	clr	a
      0025DA F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	life.c:158: for (y = 0; y < H; y++) {
      0025DB 90 8C 04         [24] 1508 	mov	dptr,#_y
      0025DE F0               [24] 1509 	movx	@dptr,a
      0025DF A3               [24] 1510 	inc	dptr
      0025E0 F0               [24] 1511 	movx	@dptr,a
      0025E1                       1512 00169$:
                                   1513 ;	life.c:159: putchar(busy[bstep]); putchar('\r');
      0025E1 90 8C 0E         [24] 1514 	mov	dptr,#_bstep
      0025E4 E0               [24] 1515 	movx	a,@dptr
      0025E5 90 2A F3         [24] 1516 	mov	dptr,#_busy
      0025E8 93               [24] 1517 	movc	a,@a+dptr
      0025E9 FF               [12] 1518 	mov	r7,a
      0025EA 7E 00            [12] 1519 	mov	r6,#0x00
      0025EC 8F 82            [24] 1520 	mov	dpl,r7
      0025EE 8E 83            [24] 1521 	mov	dph,r6
      0025F0 12 20 75         [24] 1522 	lcall	_putchar
      0025F3 90 00 0D         [24] 1523 	mov	dptr,#0x000d
      0025F6 12 20 75         [24] 1524 	lcall	_putchar
                                   1525 ;	life.c:160: bstep = (bstep + 1) & 3;
      0025F9 90 8C 0E         [24] 1526 	mov	dptr,#_bstep
      0025FC E0               [24] 1527 	movx	a,@dptr
      0025FD FF               [12] 1528 	mov	r7,a
      0025FE 0F               [12] 1529 	inc	r7
      0025FF 74 03            [12] 1530 	mov	a,#0x03
      002601 5F               [12] 1531 	anl	a,r7
      002602 F0               [24] 1532 	movx	@dptr,a
                                   1533 ;	life.c:161: for (x = 0; x < W; x++) {
      002603 90 8C 02         [24] 1534 	mov	dptr,#_x
      002606 E4               [12] 1535 	clr	a
      002607 F0               [24] 1536 	movx	@dptr,a
      002608 A3               [24] 1537 	inc	dptr
      002609 F0               [24] 1538 	movx	@dptr,a
      00260A                       1539 00167$:
                                   1540 ;	life.c:162: n = -u[A2D(W, y, x)];
      00260A 90 8C 04         [24] 1541 	mov	dptr,#_y
      00260D E0               [24] 1542 	movx	a,@dptr
      00260E FE               [12] 1543 	mov	r6,a
      00260F A3               [24] 1544 	inc	dptr
      002610 E0               [24] 1545 	movx	a,@dptr
      002611 FF               [12] 1546 	mov	r7,a
      002612 A8 10            [24] 1547 	mov	r0,_bp
      002614 08               [12] 1548 	inc	r0
      002615 A6 06            [24] 1549 	mov	@r0,ar6
      002617 EF               [12] 1550 	mov	a,r7
      002618 C4               [12] 1551 	swap	a
      002619 23               [12] 1552 	rl	a
      00261A 54 E0            [12] 1553 	anl	a,#0xe0
      00261C C6               [12] 1554 	xch	a,@r0
      00261D C4               [12] 1555 	swap	a
      00261E 23               [12] 1556 	rl	a
      00261F C6               [12] 1557 	xch	a,@r0
      002620 66               [12] 1558 	xrl	a,@r0
      002621 C6               [12] 1559 	xch	a,@r0
      002622 54 E0            [12] 1560 	anl	a,#0xe0
      002624 C6               [12] 1561 	xch	a,@r0
      002625 66               [12] 1562 	xrl	a,@r0
      002626 08               [12] 1563 	inc	r0
      002627 F6               [12] 1564 	mov	@r0,a
      002628 90 8C 02         [24] 1565 	mov	dptr,#_x
      00262B E0               [24] 1566 	movx	a,@dptr
      00262C FA               [12] 1567 	mov	r2,a
      00262D A3               [24] 1568 	inc	dptr
      00262E E0               [24] 1569 	movx	a,@dptr
      00262F FB               [12] 1570 	mov	r3,a
      002630 A8 10            [24] 1571 	mov	r0,_bp
      002632 08               [12] 1572 	inc	r0
      002633 E5 10            [12] 1573 	mov	a,_bp
      002635 24 03            [12] 1574 	add	a,#0x03
      002637 F9               [12] 1575 	mov	r1,a
      002638 EA               [12] 1576 	mov	a,r2
      002639 26               [12] 1577 	add	a,@r0
      00263A F7               [12] 1578 	mov	@r1,a
      00263B EB               [12] 1579 	mov	a,r3
      00263C 08               [12] 1580 	inc	r0
      00263D 36               [12] 1581 	addc	a,@r0
      00263E 09               [12] 1582 	inc	r1
      00263F F7               [12] 1583 	mov	@r1,a
      002640 E5 10            [12] 1584 	mov	a,_bp
      002642 24 03            [12] 1585 	add	a,#0x03
      002644 F8               [12] 1586 	mov	r0,a
      002645 E6               [12] 1587 	mov	a,@r0
      002646 24 02            [12] 1588 	add	a,#_u
      002648 F5 82            [12] 1589 	mov	dpl,a
      00264A 08               [12] 1590 	inc	r0
      00264B E6               [12] 1591 	mov	a,@r0
      00264C 34 84            [12] 1592 	addc	a,#(_u >> 8)
      00264E F5 83            [12] 1593 	mov	dph,a
      002650 E0               [24] 1594 	movx	a,@dptr
      002651 FD               [12] 1595 	mov	r5,a
      002652 E5 10            [12] 1596 	mov	a,_bp
      002654 24 05            [12] 1597 	add	a,#0x05
      002656 F8               [12] 1598 	mov	r0,a
      002657 C3               [12] 1599 	clr	c
      002658 E4               [12] 1600 	clr	a
      002659 9D               [12] 1601 	subb	a,r5
      00265A F6               [12] 1602 	mov	@r0,a
                                   1603 ;	life.c:165: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00265B 74 1F            [12] 1604 	mov	a,#0x1f
      00265D 2E               [12] 1605 	add	a,r6
      00265E FC               [12] 1606 	mov	r4,a
      00265F E4               [12] 1607 	clr	a
      002660 3F               [12] 1608 	addc	a,r7
      002661 FD               [12] 1609 	mov	r5,a
      002662 C0 07            [24] 1610 	push	ar7
      002664 C0 06            [24] 1611 	push	ar6
      002666 C0 03            [24] 1612 	push	ar3
      002668 C0 02            [24] 1613 	push	ar2
      00266A 74 20            [12] 1614 	mov	a,#0x20
      00266C C0 E0            [24] 1615 	push	acc
      00266E E4               [12] 1616 	clr	a
      00266F C0 E0            [24] 1617 	push	acc
      002671 8C 82            [24] 1618 	mov	dpl,r4
      002673 8D 83            [24] 1619 	mov	dph,r5
      002675 12 2C 10         [24] 1620 	lcall	__modsint
      002678 AC 82            [24] 1621 	mov	r4,dpl
      00267A AD 83            [24] 1622 	mov	r5,dph
      00267C 15 81            [12] 1623 	dec	sp
      00267E 15 81            [12] 1624 	dec	sp
      002680 D0 02            [24] 1625 	pop	ar2
      002682 D0 03            [24] 1626 	pop	ar3
      002684 E5 10            [12] 1627 	mov	a,_bp
      002686 24 06            [12] 1628 	add	a,#0x06
      002688 F8               [12] 1629 	mov	r0,a
      002689 A6 04            [24] 1630 	mov	@r0,ar4
      00268B ED               [12] 1631 	mov	a,r5
      00268C C4               [12] 1632 	swap	a
      00268D 23               [12] 1633 	rl	a
      00268E 54 E0            [12] 1634 	anl	a,#0xe0
      002690 C6               [12] 1635 	xch	a,@r0
      002691 C4               [12] 1636 	swap	a
      002692 23               [12] 1637 	rl	a
      002693 C6               [12] 1638 	xch	a,@r0
      002694 66               [12] 1639 	xrl	a,@r0
      002695 C6               [12] 1640 	xch	a,@r0
      002696 54 E0            [12] 1641 	anl	a,#0xe0
      002698 C6               [12] 1642 	xch	a,@r0
      002699 66               [12] 1643 	xrl	a,@r0
      00269A 08               [12] 1644 	inc	r0
      00269B F6               [12] 1645 	mov	@r0,a
      00269C 74 1F            [12] 1646 	mov	a,#0x1f
      00269E 2A               [12] 1647 	add	a,r2
      00269F FC               [12] 1648 	mov	r4,a
      0026A0 E4               [12] 1649 	clr	a
      0026A1 3B               [12] 1650 	addc	a,r3
      0026A2 FD               [12] 1651 	mov	r5,a
      0026A3 C0 03            [24] 1652 	push	ar3
      0026A5 C0 02            [24] 1653 	push	ar2
      0026A7 74 20            [12] 1654 	mov	a,#0x20
      0026A9 C0 E0            [24] 1655 	push	acc
      0026AB E4               [12] 1656 	clr	a
      0026AC C0 E0            [24] 1657 	push	acc
      0026AE 8C 82            [24] 1658 	mov	dpl,r4
      0026B0 8D 83            [24] 1659 	mov	dph,r5
      0026B2 12 2C 10         [24] 1660 	lcall	__modsint
      0026B5 C8               [12] 1661 	xch	a,r0
      0026B6 E5 10            [12] 1662 	mov	a,_bp
      0026B8 24 08            [12] 1663 	add	a,#0x08
      0026BA C8               [12] 1664 	xch	a,r0
      0026BB A6 82            [24] 1665 	mov	@r0,dpl
      0026BD 08               [12] 1666 	inc	r0
      0026BE A6 83            [24] 1667 	mov	@r0,dph
      0026C0 15 81            [12] 1668 	dec	sp
      0026C2 15 81            [12] 1669 	dec	sp
      0026C4 D0 02            [24] 1670 	pop	ar2
      0026C6 D0 03            [24] 1671 	pop	ar3
      0026C8 E5 10            [12] 1672 	mov	a,_bp
      0026CA 24 06            [12] 1673 	add	a,#0x06
      0026CC F8               [12] 1674 	mov	r0,a
      0026CD E5 10            [12] 1675 	mov	a,_bp
      0026CF 24 08            [12] 1676 	add	a,#0x08
      0026D1 F9               [12] 1677 	mov	r1,a
      0026D2 E7               [12] 1678 	mov	a,@r1
      0026D3 26               [12] 1679 	add	a,@r0
      0026D4 FC               [12] 1680 	mov	r4,a
      0026D5 09               [12] 1681 	inc	r1
      0026D6 E7               [12] 1682 	mov	a,@r1
      0026D7 08               [12] 1683 	inc	r0
      0026D8 36               [12] 1684 	addc	a,@r0
      0026D9 FD               [12] 1685 	mov	r5,a
      0026DA EC               [12] 1686 	mov	a,r4
      0026DB 24 02            [12] 1687 	add	a,#_u
      0026DD F5 82            [12] 1688 	mov	dpl,a
      0026DF ED               [12] 1689 	mov	a,r5
      0026E0 34 84            [12] 1690 	addc	a,#(_u >> 8)
      0026E2 F5 83            [12] 1691 	mov	dph,a
      0026E4 E0               [24] 1692 	movx	a,@dptr
      0026E5 FD               [12] 1693 	mov	r5,a
      0026E6 E5 10            [12] 1694 	mov	a,_bp
      0026E8 24 05            [12] 1695 	add	a,#0x05
      0026EA F8               [12] 1696 	mov	r0,a
      0026EB ED               [12] 1697 	mov	a,r5
      0026EC 26               [12] 1698 	add	a,@r0
      0026ED F6               [12] 1699 	mov	@r0,a
                                   1700 ;	life.c:167: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0026EE 74 20            [12] 1701 	mov	a,#0x20
      0026F0 2A               [12] 1702 	add	a,r2
      0026F1 FC               [12] 1703 	mov	r4,a
      0026F2 E4               [12] 1704 	clr	a
      0026F3 3B               [12] 1705 	addc	a,r3
      0026F4 FD               [12] 1706 	mov	r5,a
      0026F5 C0 03            [24] 1707 	push	ar3
      0026F7 C0 02            [24] 1708 	push	ar2
      0026F9 74 20            [12] 1709 	mov	a,#0x20
      0026FB C0 E0            [24] 1710 	push	acc
      0026FD E4               [12] 1711 	clr	a
      0026FE C0 E0            [24] 1712 	push	acc
      002700 8C 82            [24] 1713 	mov	dpl,r4
      002702 8D 83            [24] 1714 	mov	dph,r5
      002704 12 2C 10         [24] 1715 	lcall	__modsint
      002707 C8               [12] 1716 	xch	a,r0
      002708 E5 10            [12] 1717 	mov	a,_bp
      00270A 24 0A            [12] 1718 	add	a,#0x0a
      00270C C8               [12] 1719 	xch	a,r0
      00270D A6 82            [24] 1720 	mov	@r0,dpl
      00270F 08               [12] 1721 	inc	r0
      002710 A6 83            [24] 1722 	mov	@r0,dph
      002712 15 81            [12] 1723 	dec	sp
      002714 15 81            [12] 1724 	dec	sp
      002716 D0 02            [24] 1725 	pop	ar2
      002718 D0 03            [24] 1726 	pop	ar3
      00271A E5 10            [12] 1727 	mov	a,_bp
      00271C 24 06            [12] 1728 	add	a,#0x06
      00271E F8               [12] 1729 	mov	r0,a
      00271F E5 10            [12] 1730 	mov	a,_bp
      002721 24 0A            [12] 1731 	add	a,#0x0a
      002723 F9               [12] 1732 	mov	r1,a
      002724 E7               [12] 1733 	mov	a,@r1
      002725 26               [12] 1734 	add	a,@r0
      002726 FC               [12] 1735 	mov	r4,a
      002727 09               [12] 1736 	inc	r1
      002728 E7               [12] 1737 	mov	a,@r1
      002729 08               [12] 1738 	inc	r0
      00272A 36               [12] 1739 	addc	a,@r0
      00272B FD               [12] 1740 	mov	r5,a
      00272C EC               [12] 1741 	mov	a,r4
      00272D 24 02            [12] 1742 	add	a,#_u
      00272F F5 82            [12] 1743 	mov	dpl,a
      002731 ED               [12] 1744 	mov	a,r5
      002732 34 84            [12] 1745 	addc	a,#(_u >> 8)
      002734 F5 83            [12] 1746 	mov	dph,a
      002736 E0               [24] 1747 	movx	a,@dptr
      002737 FD               [12] 1748 	mov	r5,a
      002738 E5 10            [12] 1749 	mov	a,_bp
      00273A 24 05            [12] 1750 	add	a,#0x05
      00273C F8               [12] 1751 	mov	r0,a
      00273D ED               [12] 1752 	mov	a,r5
      00273E 26               [12] 1753 	add	a,@r0
      00273F F6               [12] 1754 	mov	@r0,a
                                   1755 ;	life.c:169: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002740 74 21            [12] 1756 	mov	a,#0x21
      002742 2A               [12] 1757 	add	a,r2
      002743 FC               [12] 1758 	mov	r4,a
      002744 E4               [12] 1759 	clr	a
      002745 3B               [12] 1760 	addc	a,r3
      002746 FD               [12] 1761 	mov	r5,a
      002747 C0 03            [24] 1762 	push	ar3
      002749 C0 02            [24] 1763 	push	ar2
      00274B 74 20            [12] 1764 	mov	a,#0x20
      00274D C0 E0            [24] 1765 	push	acc
      00274F E4               [12] 1766 	clr	a
      002750 C0 E0            [24] 1767 	push	acc
      002752 8C 82            [24] 1768 	mov	dpl,r4
      002754 8D 83            [24] 1769 	mov	dph,r5
      002756 12 2C 10         [24] 1770 	lcall	__modsint
      002759 C8               [12] 1771 	xch	a,r0
      00275A E5 10            [12] 1772 	mov	a,_bp
      00275C 24 0C            [12] 1773 	add	a,#0x0c
      00275E C8               [12] 1774 	xch	a,r0
      00275F A6 82            [24] 1775 	mov	@r0,dpl
      002761 08               [12] 1776 	inc	r0
      002762 A6 83            [24] 1777 	mov	@r0,dph
      002764 15 81            [12] 1778 	dec	sp
      002766 15 81            [12] 1779 	dec	sp
      002768 D0 02            [24] 1780 	pop	ar2
      00276A D0 03            [24] 1781 	pop	ar3
      00276C D0 06            [24] 1782 	pop	ar6
      00276E D0 07            [24] 1783 	pop	ar7
      002770 E5 10            [12] 1784 	mov	a,_bp
      002772 24 06            [12] 1785 	add	a,#0x06
      002774 F8               [12] 1786 	mov	r0,a
      002775 E5 10            [12] 1787 	mov	a,_bp
      002777 24 0C            [12] 1788 	add	a,#0x0c
      002779 F9               [12] 1789 	mov	r1,a
      00277A E7               [12] 1790 	mov	a,@r1
      00277B 26               [12] 1791 	add	a,@r0
      00277C FC               [12] 1792 	mov	r4,a
      00277D 09               [12] 1793 	inc	r1
      00277E E7               [12] 1794 	mov	a,@r1
      00277F 08               [12] 1795 	inc	r0
      002780 36               [12] 1796 	addc	a,@r0
      002781 FD               [12] 1797 	mov	r5,a
      002782 EC               [12] 1798 	mov	a,r4
      002783 24 02            [12] 1799 	add	a,#_u
      002785 F5 82            [12] 1800 	mov	dpl,a
      002787 ED               [12] 1801 	mov	a,r5
      002788 34 84            [12] 1802 	addc	a,#(_u >> 8)
      00278A F5 83            [12] 1803 	mov	dph,a
      00278C E0               [24] 1804 	movx	a,@dptr
      00278D FD               [12] 1805 	mov	r5,a
      00278E E5 10            [12] 1806 	mov	a,_bp
      002790 24 05            [12] 1807 	add	a,#0x05
      002792 F8               [12] 1808 	mov	r0,a
      002793 E5 10            [12] 1809 	mov	a,_bp
      002795 24 06            [12] 1810 	add	a,#0x06
      002797 F9               [12] 1811 	mov	r1,a
      002798 ED               [12] 1812 	mov	a,r5
      002799 26               [12] 1813 	add	a,@r0
      00279A F7               [12] 1814 	mov	@r1,a
                                   1815 ;	life.c:171: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00279B 74 20            [12] 1816 	mov	a,#0x20
      00279D 2E               [12] 1817 	add	a,r6
      00279E FC               [12] 1818 	mov	r4,a
      00279F E4               [12] 1819 	clr	a
      0027A0 3F               [12] 1820 	addc	a,r7
      0027A1 FD               [12] 1821 	mov	r5,a
      0027A2 C0 07            [24] 1822 	push	ar7
      0027A4 C0 06            [24] 1823 	push	ar6
      0027A6 C0 03            [24] 1824 	push	ar3
      0027A8 C0 02            [24] 1825 	push	ar2
      0027AA 74 20            [12] 1826 	mov	a,#0x20
      0027AC C0 E0            [24] 1827 	push	acc
      0027AE E4               [12] 1828 	clr	a
      0027AF C0 E0            [24] 1829 	push	acc
      0027B1 8C 82            [24] 1830 	mov	dpl,r4
      0027B3 8D 83            [24] 1831 	mov	dph,r5
      0027B5 12 2C 10         [24] 1832 	lcall	__modsint
      0027B8 AC 82            [24] 1833 	mov	r4,dpl
      0027BA AD 83            [24] 1834 	mov	r5,dph
      0027BC 15 81            [12] 1835 	dec	sp
      0027BE 15 81            [12] 1836 	dec	sp
      0027C0 D0 02            [24] 1837 	pop	ar2
      0027C2 D0 03            [24] 1838 	pop	ar3
      0027C4 D0 06            [24] 1839 	pop	ar6
      0027C6 D0 07            [24] 1840 	pop	ar7
      0027C8 E5 10            [12] 1841 	mov	a,_bp
      0027CA 24 0E            [12] 1842 	add	a,#0x0e
      0027CC F8               [12] 1843 	mov	r0,a
      0027CD A6 04            [24] 1844 	mov	@r0,ar4
      0027CF ED               [12] 1845 	mov	a,r5
      0027D0 C4               [12] 1846 	swap	a
      0027D1 23               [12] 1847 	rl	a
      0027D2 54 E0            [12] 1848 	anl	a,#0xe0
      0027D4 C6               [12] 1849 	xch	a,@r0
      0027D5 C4               [12] 1850 	swap	a
      0027D6 23               [12] 1851 	rl	a
      0027D7 C6               [12] 1852 	xch	a,@r0
      0027D8 66               [12] 1853 	xrl	a,@r0
      0027D9 C6               [12] 1854 	xch	a,@r0
      0027DA 54 E0            [12] 1855 	anl	a,#0xe0
      0027DC C6               [12] 1856 	xch	a,@r0
      0027DD 66               [12] 1857 	xrl	a,@r0
      0027DE 08               [12] 1858 	inc	r0
      0027DF F6               [12] 1859 	mov	@r0,a
      0027E0 E5 10            [12] 1860 	mov	a,_bp
      0027E2 24 0E            [12] 1861 	add	a,#0x0e
      0027E4 F8               [12] 1862 	mov	r0,a
      0027E5 E5 10            [12] 1863 	mov	a,_bp
      0027E7 24 08            [12] 1864 	add	a,#0x08
      0027E9 F9               [12] 1865 	mov	r1,a
      0027EA E7               [12] 1866 	mov	a,@r1
      0027EB 26               [12] 1867 	add	a,@r0
      0027EC FC               [12] 1868 	mov	r4,a
      0027ED 09               [12] 1869 	inc	r1
      0027EE E7               [12] 1870 	mov	a,@r1
      0027EF 08               [12] 1871 	inc	r0
      0027F0 36               [12] 1872 	addc	a,@r0
      0027F1 FD               [12] 1873 	mov	r5,a
      0027F2 EC               [12] 1874 	mov	a,r4
      0027F3 24 02            [12] 1875 	add	a,#_u
      0027F5 F5 82            [12] 1876 	mov	dpl,a
      0027F7 ED               [12] 1877 	mov	a,r5
      0027F8 34 84            [12] 1878 	addc	a,#(_u >> 8)
      0027FA F5 83            [12] 1879 	mov	dph,a
      0027FC E0               [24] 1880 	movx	a,@dptr
      0027FD FD               [12] 1881 	mov	r5,a
      0027FE E5 10            [12] 1882 	mov	a,_bp
      002800 24 06            [12] 1883 	add	a,#0x06
      002802 F8               [12] 1884 	mov	r0,a
      002803 E5 10            [12] 1885 	mov	a,_bp
      002805 24 06            [12] 1886 	add	a,#0x06
      002807 F9               [12] 1887 	mov	r1,a
      002808 ED               [12] 1888 	mov	a,r5
      002809 26               [12] 1889 	add	a,@r0
      00280A F7               [12] 1890 	mov	@r1,a
                                   1891 ;	life.c:173: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      00280B E5 10            [12] 1892 	mov	a,_bp
      00280D 24 0E            [12] 1893 	add	a,#0x0e
      00280F F8               [12] 1894 	mov	r0,a
      002810 E5 10            [12] 1895 	mov	a,_bp
      002812 24 0A            [12] 1896 	add	a,#0x0a
      002814 F9               [12] 1897 	mov	r1,a
      002815 E7               [12] 1898 	mov	a,@r1
      002816 26               [12] 1899 	add	a,@r0
      002817 FC               [12] 1900 	mov	r4,a
      002818 09               [12] 1901 	inc	r1
      002819 E7               [12] 1902 	mov	a,@r1
      00281A 08               [12] 1903 	inc	r0
      00281B 36               [12] 1904 	addc	a,@r0
      00281C FD               [12] 1905 	mov	r5,a
      00281D EC               [12] 1906 	mov	a,r4
      00281E 24 02            [12] 1907 	add	a,#_u
      002820 F5 82            [12] 1908 	mov	dpl,a
      002822 ED               [12] 1909 	mov	a,r5
      002823 34 84            [12] 1910 	addc	a,#(_u >> 8)
      002825 F5 83            [12] 1911 	mov	dph,a
      002827 E0               [24] 1912 	movx	a,@dptr
      002828 FD               [12] 1913 	mov	r5,a
      002829 E5 10            [12] 1914 	mov	a,_bp
      00282B 24 06            [12] 1915 	add	a,#0x06
      00282D F8               [12] 1916 	mov	r0,a
      00282E E5 10            [12] 1917 	mov	a,_bp
      002830 24 06            [12] 1918 	add	a,#0x06
      002832 F9               [12] 1919 	mov	r1,a
      002833 ED               [12] 1920 	mov	a,r5
      002834 26               [12] 1921 	add	a,@r0
      002835 F7               [12] 1922 	mov	@r1,a
                                   1923 ;	life.c:175: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002836 E5 10            [12] 1924 	mov	a,_bp
      002838 24 0E            [12] 1925 	add	a,#0x0e
      00283A F8               [12] 1926 	mov	r0,a
      00283B E5 10            [12] 1927 	mov	a,_bp
      00283D 24 0C            [12] 1928 	add	a,#0x0c
      00283F F9               [12] 1929 	mov	r1,a
      002840 E7               [12] 1930 	mov	a,@r1
      002841 26               [12] 1931 	add	a,@r0
      002842 FC               [12] 1932 	mov	r4,a
      002843 09               [12] 1933 	inc	r1
      002844 E7               [12] 1934 	mov	a,@r1
      002845 08               [12] 1935 	inc	r0
      002846 36               [12] 1936 	addc	a,@r0
      002847 FD               [12] 1937 	mov	r5,a
      002848 EC               [12] 1938 	mov	a,r4
      002849 24 02            [12] 1939 	add	a,#_u
      00284B F5 82            [12] 1940 	mov	dpl,a
      00284D ED               [12] 1941 	mov	a,r5
      00284E 34 84            [12] 1942 	addc	a,#(_u >> 8)
      002850 F5 83            [12] 1943 	mov	dph,a
      002852 E0               [24] 1944 	movx	a,@dptr
      002853 FD               [12] 1945 	mov	r5,a
      002854 E5 10            [12] 1946 	mov	a,_bp
      002856 24 06            [12] 1947 	add	a,#0x06
      002858 F8               [12] 1948 	mov	r0,a
      002859 E5 10            [12] 1949 	mov	a,_bp
      00285B 24 0E            [12] 1950 	add	a,#0x0e
      00285D F9               [12] 1951 	mov	r1,a
      00285E ED               [12] 1952 	mov	a,r5
      00285F 26               [12] 1953 	add	a,@r0
      002860 F7               [12] 1954 	mov	@r1,a
                                   1955 ;	life.c:177: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      002861 74 21            [12] 1956 	mov	a,#0x21
      002863 2E               [12] 1957 	add	a,r6
      002864 FE               [12] 1958 	mov	r6,a
      002865 E4               [12] 1959 	clr	a
      002866 3F               [12] 1960 	addc	a,r7
      002867 FF               [12] 1961 	mov	r7,a
      002868 C0 03            [24] 1962 	push	ar3
      00286A C0 02            [24] 1963 	push	ar2
      00286C 74 20            [12] 1964 	mov	a,#0x20
      00286E C0 E0            [24] 1965 	push	acc
      002870 E4               [12] 1966 	clr	a
      002871 C0 E0            [24] 1967 	push	acc
      002873 8E 82            [24] 1968 	mov	dpl,r6
      002875 8F 83            [24] 1969 	mov	dph,r7
      002877 12 2C 10         [24] 1970 	lcall	__modsint
      00287A AE 82            [24] 1971 	mov	r6,dpl
      00287C AF 83            [24] 1972 	mov	r7,dph
      00287E 15 81            [12] 1973 	dec	sp
      002880 15 81            [12] 1974 	dec	sp
      002882 D0 02            [24] 1975 	pop	ar2
      002884 D0 03            [24] 1976 	pop	ar3
      002886 EF               [12] 1977 	mov	a,r7
      002887 C4               [12] 1978 	swap	a
      002888 23               [12] 1979 	rl	a
      002889 54 E0            [12] 1980 	anl	a,#0xe0
      00288B CE               [12] 1981 	xch	a,r6
      00288C C4               [12] 1982 	swap	a
      00288D 23               [12] 1983 	rl	a
      00288E CE               [12] 1984 	xch	a,r6
      00288F 6E               [12] 1985 	xrl	a,r6
      002890 CE               [12] 1986 	xch	a,r6
      002891 54 E0            [12] 1987 	anl	a,#0xe0
      002893 CE               [12] 1988 	xch	a,r6
      002894 6E               [12] 1989 	xrl	a,r6
      002895 FF               [12] 1990 	mov	r7,a
      002896 E5 10            [12] 1991 	mov	a,_bp
      002898 24 08            [12] 1992 	add	a,#0x08
      00289A F8               [12] 1993 	mov	r0,a
      00289B E6               [12] 1994 	mov	a,@r0
      00289C 2E               [12] 1995 	add	a,r6
      00289D FC               [12] 1996 	mov	r4,a
      00289E 08               [12] 1997 	inc	r0
      00289F E6               [12] 1998 	mov	a,@r0
      0028A0 3F               [12] 1999 	addc	a,r7
      0028A1 FD               [12] 2000 	mov	r5,a
      0028A2 EC               [12] 2001 	mov	a,r4
      0028A3 24 02            [12] 2002 	add	a,#_u
      0028A5 F5 82            [12] 2003 	mov	dpl,a
      0028A7 ED               [12] 2004 	mov	a,r5
      0028A8 34 84            [12] 2005 	addc	a,#(_u >> 8)
      0028AA F5 83            [12] 2006 	mov	dph,a
      0028AC E0               [24] 2007 	movx	a,@dptr
      0028AD FD               [12] 2008 	mov	r5,a
      0028AE E5 10            [12] 2009 	mov	a,_bp
      0028B0 24 0E            [12] 2010 	add	a,#0x0e
      0028B2 F8               [12] 2011 	mov	r0,a
      0028B3 E5 10            [12] 2012 	mov	a,_bp
      0028B5 24 0E            [12] 2013 	add	a,#0x0e
      0028B7 F9               [12] 2014 	mov	r1,a
      0028B8 ED               [12] 2015 	mov	a,r5
      0028B9 26               [12] 2016 	add	a,@r0
      0028BA F7               [12] 2017 	mov	@r1,a
                                   2018 ;	life.c:179: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028BB E5 10            [12] 2019 	mov	a,_bp
      0028BD 24 0A            [12] 2020 	add	a,#0x0a
      0028BF F8               [12] 2021 	mov	r0,a
      0028C0 E6               [12] 2022 	mov	a,@r0
      0028C1 2E               [12] 2023 	add	a,r6
      0028C2 FC               [12] 2024 	mov	r4,a
      0028C3 08               [12] 2025 	inc	r0
      0028C4 E6               [12] 2026 	mov	a,@r0
      0028C5 3F               [12] 2027 	addc	a,r7
      0028C6 FD               [12] 2028 	mov	r5,a
      0028C7 EC               [12] 2029 	mov	a,r4
      0028C8 24 02            [12] 2030 	add	a,#_u
      0028CA F5 82            [12] 2031 	mov	dpl,a
      0028CC ED               [12] 2032 	mov	a,r5
      0028CD 34 84            [12] 2033 	addc	a,#(_u >> 8)
      0028CF F5 83            [12] 2034 	mov	dph,a
      0028D1 E0               [24] 2035 	movx	a,@dptr
      0028D2 FD               [12] 2036 	mov	r5,a
      0028D3 E5 10            [12] 2037 	mov	a,_bp
      0028D5 24 0E            [12] 2038 	add	a,#0x0e
      0028D7 F8               [12] 2039 	mov	r0,a
      0028D8 ED               [12] 2040 	mov	a,r5
      0028D9 26               [12] 2041 	add	a,@r0
      0028DA FD               [12] 2042 	mov	r5,a
                                   2043 ;	life.c:180: y1 = 1; x1 = 1;
      0028DB 90 8C 08         [24] 2044 	mov	dptr,#_y1
      0028DE 74 01            [12] 2045 	mov	a,#0x01
      0028E0 F0               [24] 2046 	movx	@dptr,a
      0028E1 E4               [12] 2047 	clr	a
      0028E2 A3               [24] 2048 	inc	dptr
      0028E3 F0               [24] 2049 	movx	@dptr,a
      0028E4 90 8C 06         [24] 2050 	mov	dptr,#_x1
      0028E7 04               [12] 2051 	inc	a
      0028E8 F0               [24] 2052 	movx	@dptr,a
      0028E9 E4               [12] 2053 	clr	a
      0028EA A3               [24] 2054 	inc	dptr
      0028EB F0               [24] 2055 	movx	@dptr,a
                                   2056 ;	life.c:181: n += u[A2D(W, (y + y1 + H) % H, (x + x1 + W) % W)];
      0028EC E5 10            [12] 2057 	mov	a,_bp
      0028EE 24 0C            [12] 2058 	add	a,#0x0c
      0028F0 F8               [12] 2059 	mov	r0,a
      0028F1 E6               [12] 2060 	mov	a,@r0
      0028F2 2E               [12] 2061 	add	a,r6
      0028F3 FE               [12] 2062 	mov	r6,a
      0028F4 08               [12] 2063 	inc	r0
      0028F5 E6               [12] 2064 	mov	a,@r0
      0028F6 3F               [12] 2065 	addc	a,r7
      0028F7 FF               [12] 2066 	mov	r7,a
      0028F8 EE               [12] 2067 	mov	a,r6
      0028F9 24 02            [12] 2068 	add	a,#_u
      0028FB F5 82            [12] 2069 	mov	dpl,a
      0028FD EF               [12] 2070 	mov	a,r7
      0028FE 34 84            [12] 2071 	addc	a,#(_u >> 8)
      002900 F5 83            [12] 2072 	mov	dph,a
      002902 E0               [24] 2073 	movx	a,@dptr
      002903 2D               [12] 2074 	add	a,r5
      002904 FF               [12] 2075 	mov	r7,a
      002905 90 8C 0F         [24] 2076 	mov	dptr,#_n
      002908 F0               [24] 2077 	movx	@dptr,a
                                   2078 ;	life.c:183: nu[A2D(W, y, x)] = (n == 3) || ((n == 2) && u[A2D(W, y, x)]);
      002909 E5 10            [12] 2079 	mov	a,_bp
      00290B 24 03            [12] 2080 	add	a,#0x03
      00290D F8               [12] 2081 	mov	r0,a
      00290E E6               [12] 2082 	mov	a,@r0
      00290F 24 02            [12] 2083 	add	a,#_nu
      002911 FD               [12] 2084 	mov	r5,a
      002912 08               [12] 2085 	inc	r0
      002913 E6               [12] 2086 	mov	a,@r0
      002914 34 88            [12] 2087 	addc	a,#(_nu >> 8)
      002916 FE               [12] 2088 	mov	r6,a
      002917 BF 03 02         [24] 2089 	cjne	r7,#0x03,00363$
      00291A 80 20            [24] 2090 	sjmp	00189$
      00291C                       2091 00363$:
      00291C BF 02 19         [24] 2092 	cjne	r7,#0x02,00188$
      00291F A8 10            [24] 2093 	mov	r0,_bp
      002921 08               [12] 2094 	inc	r0
      002922 EA               [12] 2095 	mov	a,r2
      002923 26               [12] 2096 	add	a,@r0
      002924 FA               [12] 2097 	mov	r2,a
      002925 EB               [12] 2098 	mov	a,r3
      002926 08               [12] 2099 	inc	r0
      002927 36               [12] 2100 	addc	a,@r0
      002928 FB               [12] 2101 	mov	r3,a
      002929 EA               [12] 2102 	mov	a,r2
      00292A 24 02            [12] 2103 	add	a,#_u
      00292C FA               [12] 2104 	mov	r2,a
      00292D EB               [12] 2105 	mov	a,r3
      00292E 34 84            [12] 2106 	addc	a,#(_u >> 8)
      002930 FB               [12] 2107 	mov	r3,a
      002931 8A 82            [24] 2108 	mov	dpl,r2
      002933 8B 83            [24] 2109 	mov	dph,r3
      002935 E0               [24] 2110 	movx	a,@dptr
      002936 70 04            [24] 2111 	jnz	00189$
      002938                       2112 00188$:
                                   2113 ;	assignBit
      002938 C2 00            [12] 2114 	clr	b0
      00293A 80 02            [24] 2115 	sjmp	00190$
      00293C                       2116 00189$:
                                   2117 ;	assignBit
      00293C D2 00            [12] 2118 	setb	b0
      00293E                       2119 00190$:
      00293E A2 00            [12] 2120 	mov	c,b0
      002940 E4               [12] 2121 	clr	a
      002941 33               [12] 2122 	rlc	a
      002942 8D 82            [24] 2123 	mov	dpl,r5
      002944 8E 83            [24] 2124 	mov	dph,r6
      002946 F0               [24] 2125 	movx	@dptr,a
                                   2126 ;	life.c:185: if (pu[A2D(W, y, x)] != nu[A2D(W, y, x)]) cycle2 = 0;
      002947 90 8C 04         [24] 2127 	mov	dptr,#_y
      00294A E0               [24] 2128 	movx	a,@dptr
      00294B FE               [12] 2129 	mov	r6,a
      00294C A3               [24] 2130 	inc	dptr
      00294D E0               [24] 2131 	movx	a,@dptr
      00294E C4               [12] 2132 	swap	a
      00294F 23               [12] 2133 	rl	a
      002950 54 E0            [12] 2134 	anl	a,#0xe0
      002952 CE               [12] 2135 	xch	a,r6
      002953 C4               [12] 2136 	swap	a
      002954 23               [12] 2137 	rl	a
      002955 CE               [12] 2138 	xch	a,r6
      002956 6E               [12] 2139 	xrl	a,r6
      002957 CE               [12] 2140 	xch	a,r6
      002958 54 E0            [12] 2141 	anl	a,#0xe0
      00295A CE               [12] 2142 	xch	a,r6
      00295B 6E               [12] 2143 	xrl	a,r6
      00295C FF               [12] 2144 	mov	r7,a
      00295D 90 8C 02         [24] 2145 	mov	dptr,#_x
      002960 E0               [24] 2146 	movx	a,@dptr
      002961 FC               [12] 2147 	mov	r4,a
      002962 A3               [24] 2148 	inc	dptr
      002963 E0               [24] 2149 	movx	a,@dptr
      002964 FD               [12] 2150 	mov	r5,a
      002965 EC               [12] 2151 	mov	a,r4
      002966 2E               [12] 2152 	add	a,r6
      002967 FE               [12] 2153 	mov	r6,a
      002968 ED               [12] 2154 	mov	a,r5
      002969 3F               [12] 2155 	addc	a,r7
      00296A FF               [12] 2156 	mov	r7,a
      00296B EE               [12] 2157 	mov	a,r6
      00296C 24 02            [12] 2158 	add	a,#_pu
      00296E F5 82            [12] 2159 	mov	dpl,a
      002970 EF               [12] 2160 	mov	a,r7
      002971 34 80            [12] 2161 	addc	a,#(_pu >> 8)
      002973 F5 83            [12] 2162 	mov	dph,a
      002975 E0               [24] 2163 	movx	a,@dptr
      002976 FD               [12] 2164 	mov	r5,a
      002977 EE               [12] 2165 	mov	a,r6
      002978 24 02            [12] 2166 	add	a,#_nu
      00297A F5 82            [12] 2167 	mov	dpl,a
      00297C EF               [12] 2168 	mov	a,r7
      00297D 34 88            [12] 2169 	addc	a,#(_nu >> 8)
      00297F F5 83            [12] 2170 	mov	dph,a
      002981 E0               [24] 2171 	movx	a,@dptr
      002982 FF               [12] 2172 	mov	r7,a
      002983 ED               [12] 2173 	mov	a,r5
      002984 B5 07 02         [24] 2174 	cjne	a,ar7,00367$
      002987 80 05            [24] 2175 	sjmp	00139$
      002989                       2176 00367$:
      002989 90 8C 11         [24] 2177 	mov	dptr,#_cycle2
      00298C E4               [12] 2178 	clr	a
      00298D F0               [24] 2179 	movx	@dptr,a
      00298E                       2180 00139$:
                                   2181 ;	life.c:186: if (u[A2D(W, y, x)] != nu[A2D(W, y, x)]) fixed = 0;
      00298E 90 8C 04         [24] 2182 	mov	dptr,#_y
      002991 E0               [24] 2183 	movx	a,@dptr
      002992 FE               [12] 2184 	mov	r6,a
      002993 A3               [24] 2185 	inc	dptr
      002994 E0               [24] 2186 	movx	a,@dptr
      002995 C4               [12] 2187 	swap	a
      002996 23               [12] 2188 	rl	a
      002997 54 E0            [12] 2189 	anl	a,#0xe0
      002999 CE               [12] 2190 	xch	a,r6
      00299A C4               [12] 2191 	swap	a
      00299B 23               [12] 2192 	rl	a
      00299C CE               [12] 2193 	xch	a,r6
      00299D 6E               [12] 2194 	xrl	a,r6
      00299E CE               [12] 2195 	xch	a,r6
      00299F 54 E0            [12] 2196 	anl	a,#0xe0
      0029A1 CE               [12] 2197 	xch	a,r6
      0029A2 6E               [12] 2198 	xrl	a,r6
      0029A3 FF               [12] 2199 	mov	r7,a
      0029A4 90 8C 02         [24] 2200 	mov	dptr,#_x
      0029A7 E0               [24] 2201 	movx	a,@dptr
      0029A8 FC               [12] 2202 	mov	r4,a
      0029A9 A3               [24] 2203 	inc	dptr
      0029AA E0               [24] 2204 	movx	a,@dptr
      0029AB FD               [12] 2205 	mov	r5,a
      0029AC EC               [12] 2206 	mov	a,r4
      0029AD 2E               [12] 2207 	add	a,r6
      0029AE FE               [12] 2208 	mov	r6,a
      0029AF ED               [12] 2209 	mov	a,r5
      0029B0 3F               [12] 2210 	addc	a,r7
      0029B1 FF               [12] 2211 	mov	r7,a
      0029B2 EE               [12] 2212 	mov	a,r6
      0029B3 24 02            [12] 2213 	add	a,#_u
      0029B5 F5 82            [12] 2214 	mov	dpl,a
      0029B7 EF               [12] 2215 	mov	a,r7
      0029B8 34 84            [12] 2216 	addc	a,#(_u >> 8)
      0029BA F5 83            [12] 2217 	mov	dph,a
      0029BC E0               [24] 2218 	movx	a,@dptr
      0029BD FD               [12] 2219 	mov	r5,a
      0029BE EE               [12] 2220 	mov	a,r6
      0029BF 24 02            [12] 2221 	add	a,#_nu
      0029C1 F5 82            [12] 2222 	mov	dpl,a
      0029C3 EF               [12] 2223 	mov	a,r7
      0029C4 34 88            [12] 2224 	addc	a,#(_nu >> 8)
      0029C6 F5 83            [12] 2225 	mov	dph,a
      0029C8 E0               [24] 2226 	movx	a,@dptr
      0029C9 FF               [12] 2227 	mov	r7,a
      0029CA ED               [12] 2228 	mov	a,r5
      0029CB B5 07 02         [24] 2229 	cjne	a,ar7,00368$
      0029CE 80 05            [24] 2230 	sjmp	00168$
      0029D0                       2231 00368$:
      0029D0 90 8C 10         [24] 2232 	mov	dptr,#_fixed
      0029D3 E4               [12] 2233 	clr	a
      0029D4 F0               [24] 2234 	movx	@dptr,a
      0029D5                       2235 00168$:
                                   2236 ;	life.c:161: for (x = 0; x < W; x++) {
      0029D5 90 8C 02         [24] 2237 	mov	dptr,#_x
      0029D8 E0               [24] 2238 	movx	a,@dptr
      0029D9 24 01            [12] 2239 	add	a,#0x01
      0029DB F0               [24] 2240 	movx	@dptr,a
      0029DC A3               [24] 2241 	inc	dptr
      0029DD E0               [24] 2242 	movx	a,@dptr
      0029DE 34 00            [12] 2243 	addc	a,#0x00
      0029E0 F0               [24] 2244 	movx	@dptr,a
      0029E1 90 8C 02         [24] 2245 	mov	dptr,#_x
      0029E4 E0               [24] 2246 	movx	a,@dptr
      0029E5 FE               [12] 2247 	mov	r6,a
      0029E6 A3               [24] 2248 	inc	dptr
      0029E7 E0               [24] 2249 	movx	a,@dptr
      0029E8 FF               [12] 2250 	mov	r7,a
      0029E9 C3               [12] 2251 	clr	c
      0029EA EE               [12] 2252 	mov	a,r6
      0029EB 94 20            [12] 2253 	subb	a,#0x20
      0029ED EF               [12] 2254 	mov	a,r7
      0029EE 64 80            [12] 2255 	xrl	a,#0x80
      0029F0 94 80            [12] 2256 	subb	a,#0x80
      0029F2 50 03            [24] 2257 	jnc	00369$
      0029F4 02 26 0A         [24] 2258 	ljmp	00167$
      0029F7                       2259 00369$:
                                   2260 ;	life.c:158: for (y = 0; y < H; y++) {
      0029F7 90 8C 04         [24] 2261 	mov	dptr,#_y
      0029FA E0               [24] 2262 	movx	a,@dptr
      0029FB 24 01            [12] 2263 	add	a,#0x01
      0029FD F0               [24] 2264 	movx	@dptr,a
      0029FE A3               [24] 2265 	inc	dptr
      0029FF E0               [24] 2266 	movx	a,@dptr
      002A00 34 00            [12] 2267 	addc	a,#0x00
      002A02 F0               [24] 2268 	movx	@dptr,a
      002A03 90 8C 04         [24] 2269 	mov	dptr,#_y
      002A06 E0               [24] 2270 	movx	a,@dptr
      002A07 FE               [12] 2271 	mov	r6,a
      002A08 A3               [24] 2272 	inc	dptr
      002A09 E0               [24] 2273 	movx	a,@dptr
      002A0A FF               [12] 2274 	mov	r7,a
      002A0B C3               [12] 2275 	clr	c
      002A0C EE               [12] 2276 	mov	a,r6
      002A0D 94 20            [12] 2277 	subb	a,#0x20
      002A0F EF               [12] 2278 	mov	a,r7
      002A10 64 80            [12] 2279 	xrl	a,#0x80
      002A12 94 80            [12] 2280 	subb	a,#0x80
      002A14 50 03            [24] 2281 	jnc	00370$
      002A16 02 25 E1         [24] 2282 	ljmp	00169$
      002A19                       2283 00370$:
                                   2284 ;	life.c:190: memcpy(pu, u, sizeof (u));
      002A19 E4               [12] 2285 	clr	a
      002A1A C0 E0            [24] 2286 	push	acc
      002A1C 74 04            [12] 2287 	mov	a,#0x04
      002A1E C0 E0            [24] 2288 	push	acc
      002A20 74 02            [12] 2289 	mov	a,#_u
      002A22 C0 E0            [24] 2290 	push	acc
      002A24 74 84            [12] 2291 	mov	a,#(_u >> 8)
      002A26 C0 E0            [24] 2292 	push	acc
      002A28 E4               [12] 2293 	clr	a
      002A29 C0 E0            [24] 2294 	push	acc
      002A2B 90 80 02         [24] 2295 	mov	dptr,#_pu
      002A2E 75 F0 00         [24] 2296 	mov	b,#0x00
      002A31 12 2A F7         [24] 2297 	lcall	___memcpy
      002A34 E5 81            [12] 2298 	mov	a,sp
      002A36 24 FB            [12] 2299 	add	a,#0xfb
      002A38 F5 81            [12] 2300 	mov	sp,a
                                   2301 ;	life.c:191: memcpy(u, nu, sizeof (nu));
      002A3A E4               [12] 2302 	clr	a
      002A3B C0 E0            [24] 2303 	push	acc
      002A3D 74 04            [12] 2304 	mov	a,#0x04
      002A3F C0 E0            [24] 2305 	push	acc
      002A41 74 02            [12] 2306 	mov	a,#_nu
      002A43 C0 E0            [24] 2307 	push	acc
      002A45 74 88            [12] 2308 	mov	a,#(_nu >> 8)
      002A47 C0 E0            [24] 2309 	push	acc
      002A49 E4               [12] 2310 	clr	a
      002A4A C0 E0            [24] 2311 	push	acc
      002A4C 90 84 02         [24] 2312 	mov	dptr,#_u
      002A4F 75 F0 00         [24] 2313 	mov	b,#0x00
      002A52 12 2A F7         [24] 2314 	lcall	___memcpy
      002A55 E5 81            [12] 2315 	mov	a,sp
      002A57 24 FB            [12] 2316 	add	a,#0xfb
      002A59 F5 81            [12] 2317 	mov	sp,a
                                   2318 ;	life.c:219: if (fixed || cycle2) {
      002A5B 90 8C 10         [24] 2319 	mov	dptr,#_fixed
      002A5E E0               [24] 2320 	movx	a,@dptr
      002A5F 70 09            [24] 2321 	jnz	00101$
      002A61 90 8C 11         [24] 2322 	mov	dptr,#_cycle2
      002A64 E0               [24] 2323 	movx	a,@dptr
      002A65 70 03            [24] 2324 	jnz	00372$
      002A67 02 25 B4         [24] 2325 	ljmp	00176$
      002A6A                       2326 00372$:
      002A6A                       2327 00101$:
                                   2328 ;	life.c:220: printstr("DONE\r\n");
      002A6A 7D 56            [12] 2329 	mov	r5,#___str_6
      002A6C 7E 2D            [12] 2330 	mov	r6,#(___str_6 >> 8)
      002A6E 7F 80            [12] 2331 	mov	r7,#0x80
                                   2332 ;	life.c:48: return;
      002A70                       2333 00172$:
                                   2334 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A70 8D 82            [24] 2335 	mov	dpl,r5
      002A72 8E 83            [24] 2336 	mov	dph,r6
      002A74 8F F0            [24] 2337 	mov	b,r7
      002A76 12 2B F4         [24] 2338 	lcall	__gptrget
      002A79 FC               [12] 2339 	mov	r4,a
      002A7A 60 10            [24] 2340 	jz	00146$
      002A7C 7B 00            [12] 2341 	mov	r3,#0x00
      002A7E 8C 82            [24] 2342 	mov	dpl,r4
      002A80 8B 83            [24] 2343 	mov	dph,r3
      002A82 12 20 75         [24] 2344 	lcall	_putchar
      002A85 0D               [12] 2345 	inc	r5
                                   2346 ;	life.c:220: printstr("DONE\r\n");
      002A86 BD 00 E7         [24] 2347 	cjne	r5,#0x00,00172$
      002A89 0E               [12] 2348 	inc	r6
      002A8A 80 E4            [24] 2349 	sjmp	00172$
      002A8C                       2350 00146$:
                                   2351 ;	life.c:221: (void)getchar();
      002A8C 12 20 7A         [24] 2352 	lcall	_getchar
                                   2353 ;	life.c:222: break;
      002A8F                       2354 00104$:
                                   2355 ;	life.c:226: if (i1) {
      002A8F 90 80 01         [24] 2356 	mov	dptr,#_i1
      002A92 E0               [24] 2357 	movx	a,@dptr
      002A93 60 25            [24] 2358 	jz	00182$
                                   2359 ;	life.c:227: printstr("BREAK\r\n");
      002A95 7D 5D            [12] 2360 	mov	r5,#___str_7
      002A97 7E 2D            [12] 2361 	mov	r6,#(___str_7 >> 8)
      002A99 7F 80            [12] 2362 	mov	r7,#0x80
                                   2363 ;	life.c:48: return;
      002A9B                       2364 00179$:
                                   2365 ;	life.c:46: for (; *s; s++) putchar(*s);
      002A9B 8D 82            [24] 2366 	mov	dpl,r5
      002A9D 8E 83            [24] 2367 	mov	dph,r6
      002A9F 8F F0            [24] 2368 	mov	b,r7
      002AA1 12 2B F4         [24] 2369 	lcall	__gptrget
      002AA4 FC               [12] 2370 	mov	r4,a
      002AA5 60 10            [24] 2371 	jz	00148$
      002AA7 7B 00            [12] 2372 	mov	r3,#0x00
      002AA9 8C 82            [24] 2373 	mov	dpl,r4
      002AAB 8B 83            [24] 2374 	mov	dph,r3
      002AAD 12 20 75         [24] 2375 	lcall	_putchar
      002AB0 0D               [12] 2376 	inc	r5
                                   2377 ;	life.c:227: printstr("BREAK\r\n");
      002AB1 BD 00 E7         [24] 2378 	cjne	r5,#0x00,00179$
      002AB4 0E               [12] 2379 	inc	r6
      002AB5 80 E4            [24] 2380 	sjmp	00179$
      002AB7                       2381 00148$:
                                   2382 ;	life.c:228: (void)getchar();
      002AB7 12 20 7A         [24] 2383 	lcall	_getchar
      002ABA                       2384 00182$:
                                   2385 ;	life.c:203: for (i0 = 0; !i0; ) {
      002ABA 90 80 00         [24] 2386 	mov	dptr,#_i0
      002ABD E0               [24] 2387 	movx	a,@dptr
      002ABE 70 03            [24] 2388 	jnz	00378$
      002AC0 02 23 27         [24] 2389 	ljmp	00181$
      002AC3                       2390 00378$:
                                   2391 ;	life.c:232: EA = 0;
                                   2392 ;	assignBit
      002AC3 C2 AF            [12] 2393 	clr	_EA
                                   2394 ;	life.c:234: printstr("TERM\r\n");
      002AC5 7D 65            [12] 2395 	mov	r5,#___str_8
      002AC7 7E 2D            [12] 2396 	mov	r6,#(___str_8 >> 8)
      002AC9 7F 80            [12] 2397 	mov	r7,#0x80
                                   2398 ;	life.c:48: return;
      002ACB                       2399 00184$:
                                   2400 ;	life.c:46: for (; *s; s++) putchar(*s);
      002ACB 8D 82            [24] 2401 	mov	dpl,r5
      002ACD 8E 83            [24] 2402 	mov	dph,r6
      002ACF 8F F0            [24] 2403 	mov	b,r7
      002AD1 12 2B F4         [24] 2404 	lcall	__gptrget
      002AD4 FC               [12] 2405 	mov	r4,a
      002AD5 60 10            [24] 2406 	jz	00150$
      002AD7 7B 00            [12] 2407 	mov	r3,#0x00
      002AD9 8C 82            [24] 2408 	mov	dpl,r4
      002ADB 8B 83            [24] 2409 	mov	dph,r3
      002ADD 12 20 75         [24] 2410 	lcall	_putchar
      002AE0 0D               [12] 2411 	inc	r5
                                   2412 ;	life.c:234: printstr("TERM\r\n");
      002AE1 BD 00 E7         [24] 2413 	cjne	r5,#0x00,00184$
      002AE4 0E               [12] 2414 	inc	r6
      002AE5 80 E4            [24] 2415 	sjmp	00184$
      002AE7                       2416 00150$:
                                   2417 ;	life.c:235: (void)getchar();
      002AE7 12 20 7A         [24] 2418 	lcall	_getchar
                                   2419 ;	life.c:239: __endasm;
      002AEA 02 00 00         [24] 2420 	ljmp	0
                                   2421 ;	life.c:240: }
      002AED 85 10 81         [24] 2422 	mov	sp,_bp
      002AF0 D0 10            [24] 2423 	pop	_bp
      002AF2 22               [24] 2424 	ret
                                   2425 	.area CSEG    (CODE)
                                   2426 	.area CONST   (CODE)
      002D1C                       2427 _digits:
      002D1C 30                    2428 	.db #0x30	; 48	'0'
      002D1D 31                    2429 	.db #0x31	; 49	'1'
      002D1E 32                    2430 	.db #0x32	; 50	'2'
      002D1F 33                    2431 	.db #0x33	; 51	'3'
      002D20 34                    2432 	.db #0x34	; 52	'4'
      002D21 35                    2433 	.db #0x35	; 53	'5'
      002D22 36                    2434 	.db #0x36	; 54	'6'
      002D23 37                    2435 	.db #0x37	; 55	'7'
      002D24 38                    2436 	.db #0x38	; 56	'8'
      002D25 39                    2437 	.db #0x39	; 57	'9'
      002D26 61                    2438 	.db #0x61	; 97	'a'
      002D27 62                    2439 	.db #0x62	; 98	'b'
      002D28 63                    2440 	.db #0x63	; 99	'c'
      002D29 64                    2441 	.db #0x64	; 100	'd'
      002D2A 65                    2442 	.db #0x65	; 101	'e'
      002D2B 66                    2443 	.db #0x66	; 102	'f'
                                   2444 	.area CONST   (CODE)
      002D2C                       2445 ___str_0:
      002D2C 1B                    2446 	.db 0x1b
      002D2D 5B 32 4A              2447 	.ascii "[2J"
      002D30 1B                    2448 	.db 0x1b
      002D31 5B 6D                 2449 	.ascii "[m"
      002D33 00                    2450 	.db 0x00
                                   2451 	.area CSEG    (CODE)
                                   2452 	.area CONST   (CODE)
      002D34                       2453 ___str_1:
      002D34 0D                    2454 	.db 0x0d
      002D35 0A                    2455 	.db 0x0a
      002D36 00                    2456 	.db 0x00
                                   2457 	.area CSEG    (CODE)
                                   2458 	.area CONST   (CODE)
      002D37                       2459 ___str_2:
      002D37 4C 4F 41 44 20 3C     2460 	.ascii "LOAD <"
      002D3D 00                    2461 	.db 0x00
                                   2462 	.area CSEG    (CODE)
                                   2463 	.area CONST   (CODE)
      002D3E                       2464 ___str_3:
      002D3E 3E                    2465 	.ascii ">"
      002D3F 0D                    2466 	.db 0x0d
      002D40 0A                    2467 	.db 0x0a
      002D41 00                    2468 	.db 0x00
                                   2469 	.area CSEG    (CODE)
      002AF3                       2470 _busy:
      002AF3 5C                    2471 	.db #0x5c	; 92
      002AF4 7C                    2472 	.db #0x7c	; 124
      002AF5 2F                    2473 	.db #0x2f	; 47
      002AF6 2D                    2474 	.db #0x2d	; 45
                                   2475 	.area CONST   (CODE)
      002D42                       2476 ___str_4:
      002D42 1B                    2477 	.db 0x1b
      002D43 5B 32 4A              2478 	.ascii "[2J"
      002D46 1B                    2479 	.db 0x1b
      002D47 5B 6D 49 4E 49 54     2480 	.ascii "[mINIT"
      002D4D 0D                    2481 	.db 0x0d
      002D4E 0A                    2482 	.db 0x0a
      002D4F 00                    2483 	.db 0x00
                                   2484 	.area CSEG    (CODE)
                                   2485 	.area CONST   (CODE)
      002D50                       2486 ___str_5:
      002D50 52 44 59              2487 	.ascii "RDY"
      002D53 0D                    2488 	.db 0x0d
      002D54 0A                    2489 	.db 0x0a
      002D55 00                    2490 	.db 0x00
                                   2491 	.area CSEG    (CODE)
                                   2492 	.area CONST   (CODE)
      002D56                       2493 ___str_6:
      002D56 44 4F 4E 45           2494 	.ascii "DONE"
      002D5A 0D                    2495 	.db 0x0d
      002D5B 0A                    2496 	.db 0x0a
      002D5C 00                    2497 	.db 0x00
                                   2498 	.area CSEG    (CODE)
                                   2499 	.area CONST   (CODE)
      002D5D                       2500 ___str_7:
      002D5D 42 52 45 41 4B        2501 	.ascii "BREAK"
      002D62 0D                    2502 	.db 0x0d
      002D63 0A                    2503 	.db 0x0a
      002D64 00                    2504 	.db 0x00
                                   2505 	.area CSEG    (CODE)
                                   2506 	.area CONST   (CODE)
      002D65                       2507 ___str_8:
      002D65 54 45 52 4D           2508 	.ascii "TERM"
      002D69 0D                    2509 	.db 0x0d
      002D6A 0A                    2510 	.db 0x0a
      002D6B 00                    2511 	.db 0x00
                                   2512 	.area CSEG    (CODE)
                                   2513 	.area XINIT   (CODE)
                                   2514 	.area CABS    (ABS,CODE)
