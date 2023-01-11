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
                                     12 	.globl _evolve
                                     13 	.globl _show
                                     14 	.globl _printgen
                                     15 	.globl _updategen
                                     16 	.globl _cleargen
                                     17 	.globl _int1
                                     18 	.globl _int0
                                     19 	.globl _printf
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _FL
                                     27 	.globl _P
                                     28 	.globl _TF2
                                     29 	.globl _EXF2
                                     30 	.globl _RCLK
                                     31 	.globl _TCLK
                                     32 	.globl _EXEN2
                                     33 	.globl _TR2
                                     34 	.globl _C_T2
                                     35 	.globl _CP_RL2
                                     36 	.globl _T2CON_7
                                     37 	.globl _T2CON_6
                                     38 	.globl _T2CON_5
                                     39 	.globl _T2CON_4
                                     40 	.globl _T2CON_3
                                     41 	.globl _T2CON_2
                                     42 	.globl _T2CON_1
                                     43 	.globl _T2CON_0
                                     44 	.globl _PT2
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ET2
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _T2EX
                                     90 	.globl _T2
                                     91 	.globl _P1_7
                                     92 	.globl _P1_6
                                     93 	.globl _P1_5
                                     94 	.globl _P1_4
                                     95 	.globl _P1_3
                                     96 	.globl _P1_2
                                     97 	.globl _P1_1
                                     98 	.globl _P1_0
                                     99 	.globl _TF1
                                    100 	.globl _TR1
                                    101 	.globl _TF0
                                    102 	.globl _TR0
                                    103 	.globl _IE1
                                    104 	.globl _IT1
                                    105 	.globl _IE0
                                    106 	.globl _IT0
                                    107 	.globl _P0_7
                                    108 	.globl _P0_6
                                    109 	.globl _P0_5
                                    110 	.globl _P0_4
                                    111 	.globl _P0_3
                                    112 	.globl _P0_2
                                    113 	.globl _P0_1
                                    114 	.globl _P0_0
                                    115 	.globl _B
                                    116 	.globl _A
                                    117 	.globl _ACC
                                    118 	.globl _PSW
                                    119 	.globl _TH2
                                    120 	.globl _TL2
                                    121 	.globl _RCAP2H
                                    122 	.globl _RCAP2L
                                    123 	.globl _T2MOD
                                    124 	.globl _T2CON
                                    125 	.globl _IP
                                    126 	.globl _P3
                                    127 	.globl _IE
                                    128 	.globl _P2
                                    129 	.globl _SBUF
                                    130 	.globl _SCON
                                    131 	.globl _P1
                                    132 	.globl _TH1
                                    133 	.globl _TH0
                                    134 	.globl _TL1
                                    135 	.globl _TL0
                                    136 	.globl _TMOD
                                    137 	.globl _TCON
                                    138 	.globl _PCON
                                    139 	.globl _DPH
                                    140 	.globl _DPL
                                    141 	.globl _SP
                                    142 	.globl _P0
                                    143 	.globl _c
                                    144 	.globl _fixed
                                    145 	.globl _j
                                    146 	.globl _generation
                                    147 	.globl _n
                                    148 	.globl _y1
                                    149 	.globl _x1
                                    150 	.globl _y
                                    151 	.globl _x
                                    152 	.globl _nu
                                    153 	.globl _u
                                    154 	.globl _i1
                                    155 	.globl _i0
                                    156 	.globl _putchar
                                    157 	.globl _getchar
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
      008000                        348 	.ds 2
      008002                        349 _i1::
      008002                        350 	.ds 2
      008004                        351 _u::
      008004                        352 	.ds 1024
      008404                        353 _nu::
      008404                        354 	.ds 1024
      008804                        355 _x::
      008804                        356 	.ds 2
      008806                        357 _y::
      008806                        358 	.ds 2
      008808                        359 _x1::
      008808                        360 	.ds 2
      00880A                        361 _y1::
      00880A                        362 	.ds 2
      00880C                        363 _n::
      00880C                        364 	.ds 2
      00880E                        365 _generation::
      00880E                        366 	.ds 8
      008816                        367 _j::
      008816                        368 	.ds 2
      008818                        369 _fixed::
      008818                        370 	.ds 2
      00881A                        371 _c::
      00881A                        372 	.ds 2
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
      002003 02 20 82         [24]  397 	ljmp	_int0
      002006                        398 	.ds	5
      00200B 32               [24]  399 	reti
      00200C                        400 	.ds	7
      002013 02 20 98         [24]  401 	ljmp	_int1
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
      002016 02 25 D8         [24]  423 	ljmp	_main
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
                                    434 ;	life.c:7: int putchar(int c) __naked {
                                    435 ;	-----------------------------------------
                                    436 ;	 function putchar
                                    437 ;	-----------------------------------------
      002075                        438 _putchar:
                                    439 ;	naked function: no prologue.
                                    440 ;	life.c:12: __endasm;
      002075 E5 82            [12]  441 	mov	a, dpl
      002077 02 00 30         [24]  442 	ljmp	0x0030
                                    443 ;	life.c:13: }
                                    444 ;	naked function: no epilogue.
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'getchar'
                                    447 ;------------------------------------------------------------
                                    448 ;	life.c:15: int getchar(void) {
                                    449 ;	-----------------------------------------
                                    450 ;	 function getchar
                                    451 ;	-----------------------------------------
      00207A                        452 _getchar:
                           000007   453 	ar7 = 0x07
                           000006   454 	ar6 = 0x06
                           000005   455 	ar5 = 0x05
                           000004   456 	ar4 = 0x04
                           000003   457 	ar3 = 0x03
                           000002   458 	ar2 = 0x02
                           000001   459 	ar1 = 0x01
                           000000   460 	ar0 = 0x00
                                    461 ;	life.c:20: __endasm;
      00207A 12 00 32         [24]  462 	lcall	0x0032
      00207D C2 83            [12]  463 	clr	dph
      00207F F5 82            [12]  464 	mov	dpl, a
                                    465 ;	life.c:21: }
      002081 22               [24]  466 	ret
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'int0'
                                    469 ;------------------------------------------------------------
                                    470 ;	life.c:32: void int0(void) __interrupt 0 __using 1 {
                                    471 ;	-----------------------------------------
                                    472 ;	 function int0
                                    473 ;	-----------------------------------------
      002082                        474 _int0:
                           00000F   475 	ar7 = 0x0f
                           00000E   476 	ar6 = 0x0e
                           00000D   477 	ar5 = 0x0d
                           00000C   478 	ar4 = 0x0c
                           00000B   479 	ar3 = 0x0b
                           00000A   480 	ar2 = 0x0a
                           000009   481 	ar1 = 0x09
                           000008   482 	ar0 = 0x08
      002082 C0 E0            [24]  483 	push	acc
      002084 C0 82            [24]  484 	push	dpl
      002086 C0 83            [24]  485 	push	dph
                                    486 ;	life.c:33: i0 = 1;
      002088 90 80 00         [24]  487 	mov	dptr,#_i0
      00208B 74 01            [12]  488 	mov	a,#0x01
      00208D F0               [24]  489 	movx	@dptr,a
      00208E E4               [12]  490 	clr	a
      00208F A3               [24]  491 	inc	dptr
      002090 F0               [24]  492 	movx	@dptr,a
                                    493 ;	life.c:34: }
      002091 D0 83            [24]  494 	pop	dph
      002093 D0 82            [24]  495 	pop	dpl
      002095 D0 E0            [24]  496 	pop	acc
      002097 32               [24]  497 	reti
                                    498 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    499 ;	eliminated unneeded push/pop psw
                                    500 ;	eliminated unneeded push/pop b
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'int1'
                                    503 ;------------------------------------------------------------
                                    504 ;	life.c:37: void int1(void) __interrupt 2 __using 1 {
                                    505 ;	-----------------------------------------
                                    506 ;	 function int1
                                    507 ;	-----------------------------------------
      002098                        508 _int1:
      002098 C0 E0            [24]  509 	push	acc
      00209A C0 82            [24]  510 	push	dpl
      00209C C0 83            [24]  511 	push	dph
                                    512 ;	life.c:38: i1 = 1;
      00209E 90 80 02         [24]  513 	mov	dptr,#_i1
      0020A1 74 01            [12]  514 	mov	a,#0x01
      0020A3 F0               [24]  515 	movx	@dptr,a
      0020A4 E4               [12]  516 	clr	a
      0020A5 A3               [24]  517 	inc	dptr
      0020A6 F0               [24]  518 	movx	@dptr,a
                                    519 ;	life.c:39: }
      0020A7 D0 83            [24]  520 	pop	dph
      0020A9 D0 82            [24]  521 	pop	dpl
      0020AB D0 E0            [24]  522 	pop	acc
      0020AD 32               [24]  523 	reti
                                    524 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    525 ;	eliminated unneeded push/pop psw
                                    526 ;	eliminated unneeded push/pop b
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'cleargen'
                                    529 ;------------------------------------------------------------
                                    530 ;	life.c:41: void cleargen(void) {	
                                    531 ;	-----------------------------------------
                                    532 ;	 function cleargen
                                    533 ;	-----------------------------------------
      0020AE                        534 _cleargen:
                           000007   535 	ar7 = 0x07
                           000006   536 	ar6 = 0x06
                           000005   537 	ar5 = 0x05
                           000004   538 	ar4 = 0x04
                           000003   539 	ar3 = 0x03
                           000002   540 	ar2 = 0x02
                           000001   541 	ar1 = 0x01
                           000000   542 	ar0 = 0x00
                                    543 ;	life.c:42: for (j = 0; j < 4; j++)
      0020AE 90 88 16         [24]  544 	mov	dptr,#_j
      0020B1 E4               [12]  545 	clr	a
      0020B2 F0               [24]  546 	movx	@dptr,a
      0020B3 A3               [24]  547 	inc	dptr
      0020B4 F0               [24]  548 	movx	@dptr,a
      0020B5                        549 00102$:
                                    550 ;	life.c:43: generation[j] = 0;
      0020B5 90 88 16         [24]  551 	mov	dptr,#_j
      0020B8 E0               [24]  552 	movx	a,@dptr
      0020B9 FE               [12]  553 	mov	r6,a
      0020BA A3               [24]  554 	inc	dptr
      0020BB E0               [24]  555 	movx	a,@dptr
      0020BC FF               [12]  556 	mov	r7,a
      0020BD EE               [12]  557 	mov	a,r6
      0020BE 2E               [12]  558 	add	a,r6
      0020BF FE               [12]  559 	mov	r6,a
      0020C0 EF               [12]  560 	mov	a,r7
      0020C1 33               [12]  561 	rlc	a
      0020C2 FF               [12]  562 	mov	r7,a
      0020C3 EE               [12]  563 	mov	a,r6
      0020C4 24 0E            [12]  564 	add	a,#_generation
      0020C6 F5 82            [12]  565 	mov	dpl,a
      0020C8 EF               [12]  566 	mov	a,r7
      0020C9 34 88            [12]  567 	addc	a,#(_generation >> 8)
      0020CB F5 83            [12]  568 	mov	dph,a
      0020CD E4               [12]  569 	clr	a
      0020CE F0               [24]  570 	movx	@dptr,a
      0020CF A3               [24]  571 	inc	dptr
      0020D0 F0               [24]  572 	movx	@dptr,a
                                    573 ;	life.c:42: for (j = 0; j < 4; j++)
      0020D1 90 88 16         [24]  574 	mov	dptr,#_j
      0020D4 E0               [24]  575 	movx	a,@dptr
      0020D5 24 01            [12]  576 	add	a,#0x01
      0020D7 F0               [24]  577 	movx	@dptr,a
      0020D8 A3               [24]  578 	inc	dptr
      0020D9 E0               [24]  579 	movx	a,@dptr
      0020DA 34 00            [12]  580 	addc	a,#0x00
      0020DC F0               [24]  581 	movx	@dptr,a
      0020DD 90 88 16         [24]  582 	mov	dptr,#_j
      0020E0 E0               [24]  583 	movx	a,@dptr
      0020E1 FE               [12]  584 	mov	r6,a
      0020E2 A3               [24]  585 	inc	dptr
      0020E3 E0               [24]  586 	movx	a,@dptr
      0020E4 FF               [12]  587 	mov	r7,a
      0020E5 C3               [12]  588 	clr	c
      0020E6 EE               [12]  589 	mov	a,r6
      0020E7 94 04            [12]  590 	subb	a,#0x04
      0020E9 EF               [12]  591 	mov	a,r7
      0020EA 64 80            [12]  592 	xrl	a,#0x80
      0020EC 94 80            [12]  593 	subb	a,#0x80
      0020EE 40 C5            [24]  594 	jc	00102$
                                    595 ;	life.c:45: return;
                                    596 ;	life.c:46: }
      0020F0 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'updategen'
                                    600 ;------------------------------------------------------------
                                    601 ;	life.c:48: void updategen(void) {	
                                    602 ;	-----------------------------------------
                                    603 ;	 function updategen
                                    604 ;	-----------------------------------------
      0020F1                        605 _updategen:
                                    606 ;	life.c:49: for (j = 0; j < 4; j++) {
      0020F1 90 88 16         [24]  607 	mov	dptr,#_j
      0020F4 E4               [12]  608 	clr	a
      0020F5 F0               [24]  609 	movx	@dptr,a
      0020F6 A3               [24]  610 	inc	dptr
      0020F7 F0               [24]  611 	movx	@dptr,a
      0020F8                        612 00104$:
                                    613 ;	life.c:50: generation[j]++;
      0020F8 90 88 16         [24]  614 	mov	dptr,#_j
      0020FB E0               [24]  615 	movx	a,@dptr
      0020FC FE               [12]  616 	mov	r6,a
      0020FD A3               [24]  617 	inc	dptr
      0020FE E0               [24]  618 	movx	a,@dptr
      0020FF FF               [12]  619 	mov	r7,a
      002100 EE               [12]  620 	mov	a,r6
      002101 2E               [12]  621 	add	a,r6
      002102 FE               [12]  622 	mov	r6,a
      002103 EF               [12]  623 	mov	a,r7
      002104 33               [12]  624 	rlc	a
      002105 FF               [12]  625 	mov	r7,a
      002106 EE               [12]  626 	mov	a,r6
      002107 24 0E            [12]  627 	add	a,#_generation
      002109 FE               [12]  628 	mov	r6,a
      00210A EF               [12]  629 	mov	a,r7
      00210B 34 88            [12]  630 	addc	a,#(_generation >> 8)
      00210D FF               [12]  631 	mov	r7,a
      00210E 8E 82            [24]  632 	mov	dpl,r6
      002110 8F 83            [24]  633 	mov	dph,r7
      002112 E0               [24]  634 	movx	a,@dptr
      002113 FC               [12]  635 	mov	r4,a
      002114 A3               [24]  636 	inc	dptr
      002115 E0               [24]  637 	movx	a,@dptr
      002116 FD               [12]  638 	mov	r5,a
      002117 0C               [12]  639 	inc	r4
      002118 BC 00 01         [24]  640 	cjne	r4,#0x00,00116$
      00211B 0D               [12]  641 	inc	r5
      00211C                        642 00116$:
      00211C 8E 82            [24]  643 	mov	dpl,r6
      00211E 8F 83            [24]  644 	mov	dph,r7
      002120 EC               [12]  645 	mov	a,r4
      002121 F0               [24]  646 	movx	@dptr,a
      002122 ED               [12]  647 	mov	a,r5
      002123 A3               [24]  648 	inc	dptr
      002124 F0               [24]  649 	movx	@dptr,a
                                    650 ;	life.c:51: if (generation[j]) break;
      002125 90 88 16         [24]  651 	mov	dptr,#_j
      002128 E0               [24]  652 	movx	a,@dptr
      002129 FE               [12]  653 	mov	r6,a
      00212A A3               [24]  654 	inc	dptr
      00212B E0               [24]  655 	movx	a,@dptr
      00212C FF               [12]  656 	mov	r7,a
      00212D EE               [12]  657 	mov	a,r6
      00212E 2E               [12]  658 	add	a,r6
      00212F FC               [12]  659 	mov	r4,a
      002130 EF               [12]  660 	mov	a,r7
      002131 33               [12]  661 	rlc	a
      002132 FD               [12]  662 	mov	r5,a
      002133 EC               [12]  663 	mov	a,r4
      002134 24 0E            [12]  664 	add	a,#_generation
      002136 F5 82            [12]  665 	mov	dpl,a
      002138 ED               [12]  666 	mov	a,r5
      002139 34 88            [12]  667 	addc	a,#(_generation >> 8)
      00213B F5 83            [12]  668 	mov	dph,a
      00213D E0               [24]  669 	movx	a,@dptr
      00213E FC               [12]  670 	mov	r4,a
      00213F A3               [24]  671 	inc	dptr
      002140 E0               [24]  672 	movx	a,@dptr
      002141 4C               [12]  673 	orl	a,r4
      002142 70 1E            [24]  674 	jnz	00103$
                                    675 ;	life.c:49: for (j = 0; j < 4; j++) {
      002144 90 88 16         [24]  676 	mov	dptr,#_j
      002147 74 01            [12]  677 	mov	a,#0x01
      002149 2E               [12]  678 	add	a,r6
      00214A F0               [24]  679 	movx	@dptr,a
      00214B E4               [12]  680 	clr	a
      00214C 3F               [12]  681 	addc	a,r7
      00214D A3               [24]  682 	inc	dptr
      00214E F0               [24]  683 	movx	@dptr,a
      00214F 90 88 16         [24]  684 	mov	dptr,#_j
      002152 E0               [24]  685 	movx	a,@dptr
      002153 FE               [12]  686 	mov	r6,a
      002154 A3               [24]  687 	inc	dptr
      002155 E0               [24]  688 	movx	a,@dptr
      002156 FF               [12]  689 	mov	r7,a
      002157 C3               [12]  690 	clr	c
      002158 EE               [12]  691 	mov	a,r6
      002159 94 04            [12]  692 	subb	a,#0x04
      00215B EF               [12]  693 	mov	a,r7
      00215C 64 80            [12]  694 	xrl	a,#0x80
      00215E 94 80            [12]  695 	subb	a,#0x80
      002160 40 96            [24]  696 	jc	00104$
      002162                        697 00103$:
                                    698 ;	life.c:54: return;
                                    699 ;	life.c:55: }
      002162 22               [24]  700 	ret
                                    701 ;------------------------------------------------------------
                                    702 ;Allocation info for local variables in function 'printgen'
                                    703 ;------------------------------------------------------------
                                    704 ;	life.c:57: void printgen(void) {
                                    705 ;	-----------------------------------------
                                    706 ;	 function printgen
                                    707 ;	-----------------------------------------
      002163                        708 _printgen:
                                    709 ;	life.c:58: for (j = 0; j < 4; j++) {
      002163 90 88 16         [24]  710 	mov	dptr,#_j
      002166 E4               [12]  711 	clr	a
      002167 F0               [24]  712 	movx	@dptr,a
      002168 A3               [24]  713 	inc	dptr
      002169 F0               [24]  714 	movx	@dptr,a
      00216A                        715 00104$:
                                    716 ;	life.c:59: printf("%04x", generation[3 - j]);
      00216A 90 88 16         [24]  717 	mov	dptr,#_j
      00216D E0               [24]  718 	movx	a,@dptr
      00216E FE               [12]  719 	mov	r6,a
      00216F A3               [24]  720 	inc	dptr
      002170 E0               [24]  721 	movx	a,@dptr
      002171 74 03            [12]  722 	mov	a,#0x03
      002173 C3               [12]  723 	clr	c
      002174 9E               [12]  724 	subb	a,r6
      002175 FE               [12]  725 	mov	r6,a
      002176 C2 D5            [12]  726 	clr	F0
      002178 75 F0 02         [24]  727 	mov	b,#0x02
      00217B EE               [12]  728 	mov	a,r6
      00217C 30 E7 04         [24]  729 	jnb	acc.7,00116$
      00217F B2 D5            [12]  730 	cpl	F0
      002181 F4               [12]  731 	cpl	a
      002182 04               [12]  732 	inc	a
      002183                        733 00116$:
      002183 A4               [48]  734 	mul	ab
      002184 30 D5 0A         [24]  735 	jnb	F0,00117$
      002187 F4               [12]  736 	cpl	a
      002188 24 01            [12]  737 	add	a,#0x01
      00218A C5 F0            [12]  738 	xch	a,b
      00218C F4               [12]  739 	cpl	a
      00218D 34 00            [12]  740 	addc	a,#0x00
      00218F C5 F0            [12]  741 	xch	a,b
      002191                        742 00117$:
      002191 24 0E            [12]  743 	add	a,#_generation
      002193 F5 82            [12]  744 	mov	dpl,a
      002195 74 88            [12]  745 	mov	a,#(_generation >> 8)
      002197 35 F0            [12]  746 	addc	a,b
      002199 F5 83            [12]  747 	mov	dph,a
      00219B E0               [24]  748 	movx	a,@dptr
      00219C FE               [12]  749 	mov	r6,a
      00219D A3               [24]  750 	inc	dptr
      00219E E0               [24]  751 	movx	a,@dptr
      00219F FF               [12]  752 	mov	r7,a
      0021A0 C0 06            [24]  753 	push	ar6
      0021A2 C0 07            [24]  754 	push	ar7
      0021A4 74 A6            [12]  755 	mov	a,#___str_0
      0021A6 C0 E0            [24]  756 	push	acc
      0021A8 74 3B            [12]  757 	mov	a,#(___str_0 >> 8)
      0021AA C0 E0            [24]  758 	push	acc
      0021AC 74 80            [12]  759 	mov	a,#0x80
      0021AE C0 E0            [24]  760 	push	acc
      0021B0 12 27 D5         [24]  761 	lcall	_printf
      0021B3 E5 81            [12]  762 	mov	a,sp
      0021B5 24 FB            [12]  763 	add	a,#0xfb
      0021B7 F5 81            [12]  764 	mov	sp,a
                                    765 ;	life.c:60: if (j < 3) putchar(' ');
      0021B9 90 88 16         [24]  766 	mov	dptr,#_j
      0021BC E0               [24]  767 	movx	a,@dptr
      0021BD FE               [12]  768 	mov	r6,a
      0021BE A3               [24]  769 	inc	dptr
      0021BF E0               [24]  770 	movx	a,@dptr
      0021C0 FF               [12]  771 	mov	r7,a
      0021C1 C3               [12]  772 	clr	c
      0021C2 EE               [12]  773 	mov	a,r6
      0021C3 94 03            [12]  774 	subb	a,#0x03
      0021C5 EF               [12]  775 	mov	a,r7
      0021C6 64 80            [12]  776 	xrl	a,#0x80
      0021C8 94 80            [12]  777 	subb	a,#0x80
      0021CA 50 06            [24]  778 	jnc	00105$
      0021CC 90 00 20         [24]  779 	mov	dptr,#0x0020
      0021CF 12 20 75         [24]  780 	lcall	_putchar
      0021D2                        781 00105$:
                                    782 ;	life.c:58: for (j = 0; j < 4; j++) {
      0021D2 90 88 16         [24]  783 	mov	dptr,#_j
      0021D5 E0               [24]  784 	movx	a,@dptr
      0021D6 24 01            [12]  785 	add	a,#0x01
      0021D8 F0               [24]  786 	movx	@dptr,a
      0021D9 A3               [24]  787 	inc	dptr
      0021DA E0               [24]  788 	movx	a,@dptr
      0021DB 34 00            [12]  789 	addc	a,#0x00
      0021DD F0               [24]  790 	movx	@dptr,a
      0021DE 90 88 16         [24]  791 	mov	dptr,#_j
      0021E1 E0               [24]  792 	movx	a,@dptr
      0021E2 FE               [12]  793 	mov	r6,a
      0021E3 A3               [24]  794 	inc	dptr
      0021E4 E0               [24]  795 	movx	a,@dptr
      0021E5 FF               [12]  796 	mov	r7,a
      0021E6 C3               [12]  797 	clr	c
      0021E7 EE               [12]  798 	mov	a,r6
      0021E8 94 04            [12]  799 	subb	a,#0x04
      0021EA EF               [12]  800 	mov	a,r7
      0021EB 64 80            [12]  801 	xrl	a,#0x80
      0021ED 94 80            [12]  802 	subb	a,#0x80
      0021EF 50 03            [24]  803 	jnc	00119$
      0021F1 02 21 6A         [24]  804 	ljmp	00104$
      0021F4                        805 00119$:
                                    806 ;	life.c:62: }
      0021F4 22               [24]  807 	ret
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'show'
                                    810 ;------------------------------------------------------------
                                    811 ;	life.c:64: void show(void) {
                                    812 ;	-----------------------------------------
                                    813 ;	 function show
                                    814 ;	-----------------------------------------
      0021F5                        815 _show:
                                    816 ;	life.c:65: printf("\033[2J\033[m");
      0021F5 74 AB            [12]  817 	mov	a,#___str_1
      0021F7 C0 E0            [24]  818 	push	acc
      0021F9 74 3B            [12]  819 	mov	a,#(___str_1 >> 8)
      0021FB C0 E0            [24]  820 	push	acc
      0021FD 74 80            [12]  821 	mov	a,#0x80
      0021FF C0 E0            [24]  822 	push	acc
      002201 12 27 D5         [24]  823 	lcall	_printf
      002204 15 81            [12]  824 	dec	sp
      002206 15 81            [12]  825 	dec	sp
      002208 15 81            [12]  826 	dec	sp
                                    827 ;	life.c:66: printgen();
      00220A 12 21 63         [24]  828 	lcall	_printgen
                                    829 ;	life.c:67: printf("\r\n");
      00220D 74 B3            [12]  830 	mov	a,#___str_2
      00220F C0 E0            [24]  831 	push	acc
      002211 74 3B            [12]  832 	mov	a,#(___str_2 >> 8)
      002213 C0 E0            [24]  833 	push	acc
      002215 74 80            [12]  834 	mov	a,#0x80
      002217 C0 E0            [24]  835 	push	acc
      002219 12 27 D5         [24]  836 	lcall	_printf
      00221C 15 81            [12]  837 	dec	sp
      00221E 15 81            [12]  838 	dec	sp
      002220 15 81            [12]  839 	dec	sp
                                    840 ;	life.c:68: updategen();
      002222 12 20 F1         [24]  841 	lcall	_updategen
                                    842 ;	life.c:70: for (y = 0; y < H; y++) {
      002225 90 88 06         [24]  843 	mov	dptr,#_y
      002228 E4               [12]  844 	clr	a
      002229 F0               [24]  845 	movx	@dptr,a
      00222A A3               [24]  846 	inc	dptr
      00222B F0               [24]  847 	movx	@dptr,a
      00222C                        848 00108$:
                                    849 ;	life.c:71: for (x = 0; x < W; x++)
      00222C 90 88 04         [24]  850 	mov	dptr,#_x
      00222F E4               [12]  851 	clr	a
      002230 F0               [24]  852 	movx	@dptr,a
      002231 A3               [24]  853 	inc	dptr
      002232 F0               [24]  854 	movx	@dptr,a
      002233                        855 00106$:
                                    856 ;	life.c:72: if (u[y][x]) printf("\033[01m[]\033[m");
      002233 90 88 06         [24]  857 	mov	dptr,#_y
      002236 E0               [24]  858 	movx	a,@dptr
      002237 FE               [12]  859 	mov	r6,a
      002238 A3               [24]  860 	inc	dptr
      002239 E0               [24]  861 	movx	a,@dptr
      00223A C4               [12]  862 	swap	a
      00223B 23               [12]  863 	rl	a
      00223C 54 E0            [12]  864 	anl	a,#0xe0
      00223E CE               [12]  865 	xch	a,r6
      00223F C4               [12]  866 	swap	a
      002240 23               [12]  867 	rl	a
      002241 CE               [12]  868 	xch	a,r6
      002242 6E               [12]  869 	xrl	a,r6
      002243 CE               [12]  870 	xch	a,r6
      002244 54 E0            [12]  871 	anl	a,#0xe0
      002246 CE               [12]  872 	xch	a,r6
      002247 6E               [12]  873 	xrl	a,r6
      002248 FF               [12]  874 	mov	r7,a
      002249 EE               [12]  875 	mov	a,r6
      00224A 24 04            [12]  876 	add	a,#_u
      00224C FE               [12]  877 	mov	r6,a
      00224D EF               [12]  878 	mov	a,r7
      00224E 34 80            [12]  879 	addc	a,#(_u >> 8)
      002250 FF               [12]  880 	mov	r7,a
      002251 90 88 04         [24]  881 	mov	dptr,#_x
      002254 E0               [24]  882 	movx	a,@dptr
      002255 FC               [12]  883 	mov	r4,a
      002256 A3               [24]  884 	inc	dptr
      002257 E0               [24]  885 	movx	a,@dptr
      002258 FD               [12]  886 	mov	r5,a
      002259 EC               [12]  887 	mov	a,r4
      00225A 2E               [12]  888 	add	a,r6
      00225B FE               [12]  889 	mov	r6,a
      00225C ED               [12]  890 	mov	a,r5
      00225D 3F               [12]  891 	addc	a,r7
      00225E FF               [12]  892 	mov	r7,a
      00225F 8E 82            [24]  893 	mov	dpl,r6
      002261 8F 83            [24]  894 	mov	dph,r7
      002263 E0               [24]  895 	movx	a,@dptr
      002264 60 17            [24]  896 	jz	00102$
      002266 74 B6            [12]  897 	mov	a,#___str_3
      002268 C0 E0            [24]  898 	push	acc
      00226A 74 3B            [12]  899 	mov	a,#(___str_3 >> 8)
      00226C C0 E0            [24]  900 	push	acc
      00226E 74 80            [12]  901 	mov	a,#0x80
      002270 C0 E0            [24]  902 	push	acc
      002272 12 27 D5         [24]  903 	lcall	_printf
      002275 15 81            [12]  904 	dec	sp
      002277 15 81            [12]  905 	dec	sp
      002279 15 81            [12]  906 	dec	sp
      00227B 80 15            [24]  907 	sjmp	00107$
      00227D                        908 00102$:
                                    909 ;	life.c:73: else printf("--");
      00227D 74 C1            [12]  910 	mov	a,#___str_4
      00227F C0 E0            [24]  911 	push	acc
      002281 74 3B            [12]  912 	mov	a,#(___str_4 >> 8)
      002283 C0 E0            [24]  913 	push	acc
      002285 74 80            [12]  914 	mov	a,#0x80
      002287 C0 E0            [24]  915 	push	acc
      002289 12 27 D5         [24]  916 	lcall	_printf
      00228C 15 81            [12]  917 	dec	sp
      00228E 15 81            [12]  918 	dec	sp
      002290 15 81            [12]  919 	dec	sp
      002292                        920 00107$:
                                    921 ;	life.c:71: for (x = 0; x < W; x++)
      002292 90 88 04         [24]  922 	mov	dptr,#_x
      002295 E0               [24]  923 	movx	a,@dptr
      002296 24 01            [12]  924 	add	a,#0x01
      002298 F0               [24]  925 	movx	@dptr,a
      002299 A3               [24]  926 	inc	dptr
      00229A E0               [24]  927 	movx	a,@dptr
      00229B 34 00            [12]  928 	addc	a,#0x00
      00229D F0               [24]  929 	movx	@dptr,a
      00229E 90 88 04         [24]  930 	mov	dptr,#_x
      0022A1 E0               [24]  931 	movx	a,@dptr
      0022A2 FE               [12]  932 	mov	r6,a
      0022A3 A3               [24]  933 	inc	dptr
      0022A4 E0               [24]  934 	movx	a,@dptr
      0022A5 FF               [12]  935 	mov	r7,a
      0022A6 C3               [12]  936 	clr	c
      0022A7 EE               [12]  937 	mov	a,r6
      0022A8 94 20            [12]  938 	subb	a,#0x20
      0022AA EF               [12]  939 	mov	a,r7
      0022AB 64 80            [12]  940 	xrl	a,#0x80
      0022AD 94 80            [12]  941 	subb	a,#0x80
      0022AF 50 03            [24]  942 	jnc	00133$
      0022B1 02 22 33         [24]  943 	ljmp	00106$
      0022B4                        944 00133$:
                                    945 ;	life.c:74: printf("\r\n");
      0022B4 74 B3            [12]  946 	mov	a,#___str_2
      0022B6 C0 E0            [24]  947 	push	acc
      0022B8 74 3B            [12]  948 	mov	a,#(___str_2 >> 8)
      0022BA C0 E0            [24]  949 	push	acc
      0022BC 74 80            [12]  950 	mov	a,#0x80
      0022BE C0 E0            [24]  951 	push	acc
      0022C0 12 27 D5         [24]  952 	lcall	_printf
      0022C3 15 81            [12]  953 	dec	sp
      0022C5 15 81            [12]  954 	dec	sp
      0022C7 15 81            [12]  955 	dec	sp
                                    956 ;	life.c:70: for (y = 0; y < H; y++) {
      0022C9 90 88 06         [24]  957 	mov	dptr,#_y
      0022CC E0               [24]  958 	movx	a,@dptr
      0022CD 24 01            [12]  959 	add	a,#0x01
      0022CF F0               [24]  960 	movx	@dptr,a
      0022D0 A3               [24]  961 	inc	dptr
      0022D1 E0               [24]  962 	movx	a,@dptr
      0022D2 34 00            [12]  963 	addc	a,#0x00
      0022D4 F0               [24]  964 	movx	@dptr,a
      0022D5 90 88 06         [24]  965 	mov	dptr,#_y
      0022D8 E0               [24]  966 	movx	a,@dptr
      0022D9 FE               [12]  967 	mov	r6,a
      0022DA A3               [24]  968 	inc	dptr
      0022DB E0               [24]  969 	movx	a,@dptr
      0022DC FF               [12]  970 	mov	r7,a
      0022DD C3               [12]  971 	clr	c
      0022DE EE               [12]  972 	mov	a,r6
      0022DF 94 20            [12]  973 	subb	a,#0x20
      0022E1 EF               [12]  974 	mov	a,r7
      0022E2 64 80            [12]  975 	xrl	a,#0x80
      0022E4 94 80            [12]  976 	subb	a,#0x80
      0022E6 50 03            [24]  977 	jnc	00134$
      0022E8 02 22 2C         [24]  978 	ljmp	00108$
      0022EB                        979 00134$:
                                    980 ;	life.c:77: return;
                                    981 ;	life.c:78: }
      0022EB 22               [24]  982 	ret
                                    983 ;------------------------------------------------------------
                                    984 ;Allocation info for local variables in function 'evolve'
                                    985 ;------------------------------------------------------------
                                    986 ;	life.c:80: void evolve(void) {
                                    987 ;	-----------------------------------------
                                    988 ;	 function evolve
                                    989 ;	-----------------------------------------
      0022EC                        990 _evolve:
                                    991 ;	life.c:81: fixed = 1;
      0022EC 90 88 18         [24]  992 	mov	dptr,#_fixed
      0022EF 74 01            [12]  993 	mov	a,#0x01
      0022F1 F0               [24]  994 	movx	@dptr,a
      0022F2 E4               [12]  995 	clr	a
      0022F3 A3               [24]  996 	inc	dptr
      0022F4 F0               [24]  997 	movx	@dptr,a
                                    998 ;	life.c:83: for (y = 0; y < H; y++) {
      0022F5 90 88 06         [24]  999 	mov	dptr,#_y
      0022F8 F0               [24] 1000 	movx	@dptr,a
      0022F9 A3               [24] 1001 	inc	dptr
      0022FA F0               [24] 1002 	movx	@dptr,a
      0022FB                       1003 00121$:
                                   1004 ;	life.c:84: for (x = 0; x < W; x++) {
      0022FB 90 88 04         [24] 1005 	mov	dptr,#_x
      0022FE E4               [12] 1006 	clr	a
      0022FF F0               [24] 1007 	movx	@dptr,a
      002300 A3               [24] 1008 	inc	dptr
      002301 F0               [24] 1009 	movx	@dptr,a
      002302                       1010 00119$:
                                   1011 ;	life.c:85: n = 0;
      002302 90 88 0C         [24] 1012 	mov	dptr,#_n
      002305 E4               [12] 1013 	clr	a
      002306 F0               [24] 1014 	movx	@dptr,a
      002307 A3               [24] 1015 	inc	dptr
      002308 F0               [24] 1016 	movx	@dptr,a
                                   1017 ;	life.c:86: for (y1 = y - 1; y1 <= y + 1; y1++)
      002309 90 88 06         [24] 1018 	mov	dptr,#_y
      00230C E0               [24] 1019 	movx	a,@dptr
      00230D FE               [12] 1020 	mov	r6,a
      00230E A3               [24] 1021 	inc	dptr
      00230F E0               [24] 1022 	movx	a,@dptr
      002310 FF               [12] 1023 	mov	r7,a
      002311 1E               [12] 1024 	dec	r6
      002312 BE FF 01         [24] 1025 	cjne	r6,#0xff,00203$
      002315 1F               [12] 1026 	dec	r7
      002316                       1027 00203$:
      002316 90 88 0A         [24] 1028 	mov	dptr,#_y1
      002319 EE               [12] 1029 	mov	a,r6
      00231A F0               [24] 1030 	movx	@dptr,a
      00231B EF               [12] 1031 	mov	a,r7
      00231C A3               [24] 1032 	inc	dptr
      00231D F0               [24] 1033 	movx	@dptr,a
      00231E                       1034 00117$:
      00231E 90 88 06         [24] 1035 	mov	dptr,#_y
      002321 E0               [24] 1036 	movx	a,@dptr
      002322 FE               [12] 1037 	mov	r6,a
      002323 A3               [24] 1038 	inc	dptr
      002324 E0               [24] 1039 	movx	a,@dptr
      002325 FF               [12] 1040 	mov	r7,a
      002326 74 01            [12] 1041 	mov	a,#0x01
      002328 2E               [12] 1042 	add	a,r6
      002329 FC               [12] 1043 	mov	r4,a
      00232A E4               [12] 1044 	clr	a
      00232B 3F               [12] 1045 	addc	a,r7
      00232C FD               [12] 1046 	mov	r5,a
      00232D 90 88 0A         [24] 1047 	mov	dptr,#_y1
      002330 E0               [24] 1048 	movx	a,@dptr
      002331 FA               [12] 1049 	mov	r2,a
      002332 A3               [24] 1050 	inc	dptr
      002333 E0               [24] 1051 	movx	a,@dptr
      002334 FB               [12] 1052 	mov	r3,a
      002335 C3               [12] 1053 	clr	c
      002336 EC               [12] 1054 	mov	a,r4
      002337 9A               [12] 1055 	subb	a,r2
      002338 ED               [12] 1056 	mov	a,r5
      002339 64 80            [12] 1057 	xrl	a,#0x80
      00233B 8B F0            [24] 1058 	mov	b,r3
      00233D 63 F0 80         [24] 1059 	xrl	b,#0x80
      002340 95 F0            [12] 1060 	subb	a,b
      002342 50 03            [24] 1061 	jnc	00204$
      002344 02 24 24         [24] 1062 	ljmp	00104$
      002347                       1063 00204$:
                                   1064 ;	life.c:87: for (x1 = x - 1; x1 <= x + 1; x1++)
      002347 90 88 04         [24] 1065 	mov	dptr,#_x
      00234A E0               [24] 1066 	movx	a,@dptr
      00234B FC               [12] 1067 	mov	r4,a
      00234C A3               [24] 1068 	inc	dptr
      00234D E0               [24] 1069 	movx	a,@dptr
      00234E FD               [12] 1070 	mov	r5,a
      00234F 1C               [12] 1071 	dec	r4
      002350 BC FF 01         [24] 1072 	cjne	r4,#0xff,00205$
      002353 1D               [12] 1073 	dec	r5
      002354                       1074 00205$:
      002354 90 88 08         [24] 1075 	mov	dptr,#_x1
      002357 EC               [12] 1076 	mov	a,r4
      002358 F0               [24] 1077 	movx	@dptr,a
      002359 ED               [12] 1078 	mov	a,r5
      00235A A3               [24] 1079 	inc	dptr
      00235B F0               [24] 1080 	movx	@dptr,a
      00235C                       1081 00114$:
      00235C 90 88 04         [24] 1082 	mov	dptr,#_x
      00235F E0               [24] 1083 	movx	a,@dptr
      002360 FC               [12] 1084 	mov	r4,a
      002361 A3               [24] 1085 	inc	dptr
      002362 E0               [24] 1086 	movx	a,@dptr
      002363 FD               [12] 1087 	mov	r5,a
      002364 0C               [12] 1088 	inc	r4
      002365 BC 00 01         [24] 1089 	cjne	r4,#0x00,00206$
      002368 0D               [12] 1090 	inc	r5
      002369                       1091 00206$:
      002369 90 88 08         [24] 1092 	mov	dptr,#_x1
      00236C E0               [24] 1093 	movx	a,@dptr
      00236D FA               [12] 1094 	mov	r2,a
      00236E A3               [24] 1095 	inc	dptr
      00236F E0               [24] 1096 	movx	a,@dptr
      002370 FB               [12] 1097 	mov	r3,a
      002371 C3               [12] 1098 	clr	c
      002372 EC               [12] 1099 	mov	a,r4
      002373 9A               [12] 1100 	subb	a,r2
      002374 ED               [12] 1101 	mov	a,r5
      002375 64 80            [12] 1102 	xrl	a,#0x80
      002377 8B F0            [24] 1103 	mov	b,r3
      002379 63 F0 80         [24] 1104 	xrl	b,#0x80
      00237C 95 F0            [12] 1105 	subb	a,b
      00237E 50 03            [24] 1106 	jnc	00207$
      002380 02 24 15         [24] 1107 	ljmp	00118$
      002383                       1108 00207$:
                                   1109 ;	life.c:88: if (u[(y1 + H) % H][(x1 + W) % W])
      002383 90 88 0A         [24] 1110 	mov	dptr,#_y1
      002386 E0               [24] 1111 	movx	a,@dptr
      002387 FC               [12] 1112 	mov	r4,a
      002388 A3               [24] 1113 	inc	dptr
      002389 E0               [24] 1114 	movx	a,@dptr
      00238A FD               [12] 1115 	mov	r5,a
      00238B 74 20            [12] 1116 	mov	a,#0x20
      00238D 2C               [12] 1117 	add	a,r4
      00238E FC               [12] 1118 	mov	r4,a
      00238F E4               [12] 1119 	clr	a
      002390 3D               [12] 1120 	addc	a,r5
      002391 FD               [12] 1121 	mov	r5,a
      002392 C0 03            [24] 1122 	push	ar3
      002394 C0 02            [24] 1123 	push	ar2
      002396 74 20            [12] 1124 	mov	a,#0x20
      002398 C0 E0            [24] 1125 	push	acc
      00239A E4               [12] 1126 	clr	a
      00239B C0 E0            [24] 1127 	push	acc
      00239D 8C 82            [24] 1128 	mov	dpl,r4
      00239F 8D 83            [24] 1129 	mov	dph,r5
      0023A1 12 28 0E         [24] 1130 	lcall	__modsint
      0023A4 AC 82            [24] 1131 	mov	r4,dpl
      0023A6 AD 83            [24] 1132 	mov	r5,dph
      0023A8 15 81            [12] 1133 	dec	sp
      0023AA 15 81            [12] 1134 	dec	sp
      0023AC D0 02            [24] 1135 	pop	ar2
      0023AE D0 03            [24] 1136 	pop	ar3
      0023B0 ED               [12] 1137 	mov	a,r5
      0023B1 C4               [12] 1138 	swap	a
      0023B2 23               [12] 1139 	rl	a
      0023B3 54 E0            [12] 1140 	anl	a,#0xe0
      0023B5 CC               [12] 1141 	xch	a,r4
      0023B6 C4               [12] 1142 	swap	a
      0023B7 23               [12] 1143 	rl	a
      0023B8 CC               [12] 1144 	xch	a,r4
      0023B9 6C               [12] 1145 	xrl	a,r4
      0023BA CC               [12] 1146 	xch	a,r4
      0023BB 54 E0            [12] 1147 	anl	a,#0xe0
      0023BD CC               [12] 1148 	xch	a,r4
      0023BE 6C               [12] 1149 	xrl	a,r4
      0023BF FD               [12] 1150 	mov	r5,a
      0023C0 EC               [12] 1151 	mov	a,r4
      0023C1 24 04            [12] 1152 	add	a,#_u
      0023C3 FC               [12] 1153 	mov	r4,a
      0023C4 ED               [12] 1154 	mov	a,r5
      0023C5 34 80            [12] 1155 	addc	a,#(_u >> 8)
      0023C7 FD               [12] 1156 	mov	r5,a
      0023C8 74 20            [12] 1157 	mov	a,#0x20
      0023CA 2A               [12] 1158 	add	a,r2
      0023CB FA               [12] 1159 	mov	r2,a
      0023CC E4               [12] 1160 	clr	a
      0023CD 3B               [12] 1161 	addc	a,r3
      0023CE FB               [12] 1162 	mov	r3,a
      0023CF C0 05            [24] 1163 	push	ar5
      0023D1 C0 04            [24] 1164 	push	ar4
      0023D3 74 20            [12] 1165 	mov	a,#0x20
      0023D5 C0 E0            [24] 1166 	push	acc
      0023D7 E4               [12] 1167 	clr	a
      0023D8 C0 E0            [24] 1168 	push	acc
      0023DA 8A 82            [24] 1169 	mov	dpl,r2
      0023DC 8B 83            [24] 1170 	mov	dph,r3
      0023DE 12 28 0E         [24] 1171 	lcall	__modsint
      0023E1 AA 82            [24] 1172 	mov	r2,dpl
      0023E3 AB 83            [24] 1173 	mov	r3,dph
      0023E5 15 81            [12] 1174 	dec	sp
      0023E7 15 81            [12] 1175 	dec	sp
      0023E9 D0 04            [24] 1176 	pop	ar4
      0023EB D0 05            [24] 1177 	pop	ar5
      0023ED EA               [12] 1178 	mov	a,r2
      0023EE 2C               [12] 1179 	add	a,r4
      0023EF FC               [12] 1180 	mov	r4,a
      0023F0 EB               [12] 1181 	mov	a,r3
      0023F1 3D               [12] 1182 	addc	a,r5
      0023F2 FD               [12] 1183 	mov	r5,a
      0023F3 8C 82            [24] 1184 	mov	dpl,r4
      0023F5 8D 83            [24] 1185 	mov	dph,r5
      0023F7 E0               [24] 1186 	movx	a,@dptr
      0023F8 60 0C            [24] 1187 	jz	00115$
                                   1188 ;	life.c:89: n++;
      0023FA 90 88 0C         [24] 1189 	mov	dptr,#_n
      0023FD E0               [24] 1190 	movx	a,@dptr
      0023FE 24 01            [12] 1191 	add	a,#0x01
      002400 F0               [24] 1192 	movx	@dptr,a
      002401 A3               [24] 1193 	inc	dptr
      002402 E0               [24] 1194 	movx	a,@dptr
      002403 34 00            [12] 1195 	addc	a,#0x00
      002405 F0               [24] 1196 	movx	@dptr,a
      002406                       1197 00115$:
                                   1198 ;	life.c:87: for (x1 = x - 1; x1 <= x + 1; x1++)
      002406 90 88 08         [24] 1199 	mov	dptr,#_x1
      002409 E0               [24] 1200 	movx	a,@dptr
      00240A 24 01            [12] 1201 	add	a,#0x01
      00240C F0               [24] 1202 	movx	@dptr,a
      00240D A3               [24] 1203 	inc	dptr
      00240E E0               [24] 1204 	movx	a,@dptr
      00240F 34 00            [12] 1205 	addc	a,#0x00
      002411 F0               [24] 1206 	movx	@dptr,a
      002412 02 23 5C         [24] 1207 	ljmp	00114$
      002415                       1208 00118$:
                                   1209 ;	life.c:86: for (y1 = y - 1; y1 <= y + 1; y1++)
      002415 90 88 0A         [24] 1210 	mov	dptr,#_y1
      002418 E0               [24] 1211 	movx	a,@dptr
      002419 24 01            [12] 1212 	add	a,#0x01
      00241B F0               [24] 1213 	movx	@dptr,a
      00241C A3               [24] 1214 	inc	dptr
      00241D E0               [24] 1215 	movx	a,@dptr
      00241E 34 00            [12] 1216 	addc	a,#0x00
      002420 F0               [24] 1217 	movx	@dptr,a
      002421 02 23 1E         [24] 1218 	ljmp	00117$
      002424                       1219 00104$:
                                   1220 ;	life.c:91: if (u[y][x]) n--;
      002424 EF               [12] 1221 	mov	a,r7
      002425 C4               [12] 1222 	swap	a
      002426 23               [12] 1223 	rl	a
      002427 54 E0            [12] 1224 	anl	a,#0xe0
      002429 CE               [12] 1225 	xch	a,r6
      00242A C4               [12] 1226 	swap	a
      00242B 23               [12] 1227 	rl	a
      00242C CE               [12] 1228 	xch	a,r6
      00242D 6E               [12] 1229 	xrl	a,r6
      00242E CE               [12] 1230 	xch	a,r6
      00242F 54 E0            [12] 1231 	anl	a,#0xe0
      002431 CE               [12] 1232 	xch	a,r6
      002432 6E               [12] 1233 	xrl	a,r6
      002433 FF               [12] 1234 	mov	r7,a
      002434 EE               [12] 1235 	mov	a,r6
      002435 24 04            [12] 1236 	add	a,#_u
      002437 FE               [12] 1237 	mov	r6,a
      002438 EF               [12] 1238 	mov	a,r7
      002439 34 80            [12] 1239 	addc	a,#(_u >> 8)
      00243B FF               [12] 1240 	mov	r7,a
      00243C 90 88 04         [24] 1241 	mov	dptr,#_x
      00243F E0               [24] 1242 	movx	a,@dptr
      002440 FC               [12] 1243 	mov	r4,a
      002441 A3               [24] 1244 	inc	dptr
      002442 E0               [24] 1245 	movx	a,@dptr
      002443 FD               [12] 1246 	mov	r5,a
      002444 EC               [12] 1247 	mov	a,r4
      002445 2E               [12] 1248 	add	a,r6
      002446 FE               [12] 1249 	mov	r6,a
      002447 ED               [12] 1250 	mov	a,r5
      002448 3F               [12] 1251 	addc	a,r7
      002449 FF               [12] 1252 	mov	r7,a
      00244A 8E 82            [24] 1253 	mov	dpl,r6
      00244C 8F 83            [24] 1254 	mov	dph,r7
      00244E E0               [24] 1255 	movx	a,@dptr
      00244F 60 14            [24] 1256 	jz	00106$
      002451 90 88 0C         [24] 1257 	mov	dptr,#_n
      002454 E0               [24] 1258 	movx	a,@dptr
      002455 24 FF            [12] 1259 	add	a,#0xff
      002457 FE               [12] 1260 	mov	r6,a
      002458 A3               [24] 1261 	inc	dptr
      002459 E0               [24] 1262 	movx	a,@dptr
      00245A 34 FF            [12] 1263 	addc	a,#0xff
      00245C FF               [12] 1264 	mov	r7,a
      00245D 90 88 0C         [24] 1265 	mov	dptr,#_n
      002460 EE               [12] 1266 	mov	a,r6
      002461 F0               [24] 1267 	movx	@dptr,a
      002462 EF               [12] 1268 	mov	a,r7
      002463 A3               [24] 1269 	inc	dptr
      002464 F0               [24] 1270 	movx	@dptr,a
      002465                       1271 00106$:
                                   1272 ;	life.c:92: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      002465 90 88 06         [24] 1273 	mov	dptr,#_y
      002468 E0               [24] 1274 	movx	a,@dptr
      002469 FE               [12] 1275 	mov	r6,a
      00246A A3               [24] 1276 	inc	dptr
      00246B E0               [24] 1277 	movx	a,@dptr
      00246C C4               [12] 1278 	swap	a
      00246D 23               [12] 1279 	rl	a
      00246E 54 E0            [12] 1280 	anl	a,#0xe0
      002470 CE               [12] 1281 	xch	a,r6
      002471 C4               [12] 1282 	swap	a
      002472 23               [12] 1283 	rl	a
      002473 CE               [12] 1284 	xch	a,r6
      002474 6E               [12] 1285 	xrl	a,r6
      002475 CE               [12] 1286 	xch	a,r6
      002476 54 E0            [12] 1287 	anl	a,#0xe0
      002478 CE               [12] 1288 	xch	a,r6
      002479 6E               [12] 1289 	xrl	a,r6
      00247A FF               [12] 1290 	mov	r7,a
      00247B EE               [12] 1291 	mov	a,r6
      00247C 24 04            [12] 1292 	add	a,#_nu
      00247E FC               [12] 1293 	mov	r4,a
      00247F EF               [12] 1294 	mov	a,r7
      002480 34 84            [12] 1295 	addc	a,#(_nu >> 8)
      002482 FD               [12] 1296 	mov	r5,a
      002483 90 88 04         [24] 1297 	mov	dptr,#_x
      002486 E0               [24] 1298 	movx	a,@dptr
      002487 FA               [12] 1299 	mov	r2,a
      002488 A3               [24] 1300 	inc	dptr
      002489 E0               [24] 1301 	movx	a,@dptr
      00248A FB               [12] 1302 	mov	r3,a
      00248B EA               [12] 1303 	mov	a,r2
      00248C 2C               [12] 1304 	add	a,r4
      00248D FC               [12] 1305 	mov	r4,a
      00248E EB               [12] 1306 	mov	a,r3
      00248F 3D               [12] 1307 	addc	a,r5
      002490 FD               [12] 1308 	mov	r5,a
      002491 90 88 0C         [24] 1309 	mov	dptr,#_n
      002494 E0               [24] 1310 	movx	a,@dptr
      002495 F8               [12] 1311 	mov	r0,a
      002496 A3               [24] 1312 	inc	dptr
      002497 E0               [24] 1313 	movx	a,@dptr
      002498 F9               [12] 1314 	mov	r1,a
      002499 B8 03 05         [24] 1315 	cjne	r0,#0x03,00210$
      00249C B9 00 02         [24] 1316 	cjne	r1,#0x00,00210$
      00249F 80 1F            [24] 1317 	sjmp	00130$
      0024A1                       1318 00210$:
      0024A1 B8 02 18         [24] 1319 	cjne	r0,#0x02,00129$
      0024A4 B9 00 15         [24] 1320 	cjne	r1,#0x00,00129$
      0024A7 EE               [12] 1321 	mov	a,r6
      0024A8 24 04            [12] 1322 	add	a,#_u
      0024AA FE               [12] 1323 	mov	r6,a
      0024AB EF               [12] 1324 	mov	a,r7
      0024AC 34 80            [12] 1325 	addc	a,#(_u >> 8)
      0024AE FF               [12] 1326 	mov	r7,a
      0024AF EA               [12] 1327 	mov	a,r2
      0024B0 2E               [12] 1328 	add	a,r6
      0024B1 FA               [12] 1329 	mov	r2,a
      0024B2 EB               [12] 1330 	mov	a,r3
      0024B3 3F               [12] 1331 	addc	a,r7
      0024B4 FB               [12] 1332 	mov	r3,a
      0024B5 8A 82            [24] 1333 	mov	dpl,r2
      0024B7 8B 83            [24] 1334 	mov	dph,r3
      0024B9 E0               [24] 1335 	movx	a,@dptr
      0024BA 70 04            [24] 1336 	jnz	00130$
      0024BC                       1337 00129$:
                                   1338 ;	assignBit
      0024BC C2 00            [12] 1339 	clr	b0
      0024BE 80 02            [24] 1340 	sjmp	00131$
      0024C0                       1341 00130$:
                                   1342 ;	assignBit
      0024C0 D2 00            [12] 1343 	setb	b0
      0024C2                       1344 00131$:
      0024C2 A2 00            [12] 1345 	mov	c,b0
      0024C4 E4               [12] 1346 	clr	a
      0024C5 33               [12] 1347 	rlc	a
      0024C6 8C 82            [24] 1348 	mov	dpl,r4
      0024C8 8D 83            [24] 1349 	mov	dph,r5
      0024CA F0               [24] 1350 	movx	@dptr,a
                                   1351 ;	life.c:84: for (x = 0; x < W; x++) {
      0024CB 90 88 04         [24] 1352 	mov	dptr,#_x
      0024CE E0               [24] 1353 	movx	a,@dptr
      0024CF 24 01            [12] 1354 	add	a,#0x01
      0024D1 F0               [24] 1355 	movx	@dptr,a
      0024D2 A3               [24] 1356 	inc	dptr
      0024D3 E0               [24] 1357 	movx	a,@dptr
      0024D4 34 00            [12] 1358 	addc	a,#0x00
      0024D6 F0               [24] 1359 	movx	@dptr,a
      0024D7 90 88 04         [24] 1360 	mov	dptr,#_x
      0024DA E0               [24] 1361 	movx	a,@dptr
      0024DB FE               [12] 1362 	mov	r6,a
      0024DC A3               [24] 1363 	inc	dptr
      0024DD E0               [24] 1364 	movx	a,@dptr
      0024DE FF               [12] 1365 	mov	r7,a
      0024DF C3               [12] 1366 	clr	c
      0024E0 EE               [12] 1367 	mov	a,r6
      0024E1 94 20            [12] 1368 	subb	a,#0x20
      0024E3 EF               [12] 1369 	mov	a,r7
      0024E4 64 80            [12] 1370 	xrl	a,#0x80
      0024E6 94 80            [12] 1371 	subb	a,#0x80
      0024E8 50 03            [24] 1372 	jnc	00214$
      0024EA 02 23 02         [24] 1373 	ljmp	00119$
      0024ED                       1374 00214$:
                                   1375 ;	life.c:83: for (y = 0; y < H; y++) {
      0024ED 90 88 06         [24] 1376 	mov	dptr,#_y
      0024F0 E0               [24] 1377 	movx	a,@dptr
      0024F1 24 01            [12] 1378 	add	a,#0x01
      0024F3 F0               [24] 1379 	movx	@dptr,a
      0024F4 A3               [24] 1380 	inc	dptr
      0024F5 E0               [24] 1381 	movx	a,@dptr
      0024F6 34 00            [12] 1382 	addc	a,#0x00
      0024F8 F0               [24] 1383 	movx	@dptr,a
      0024F9 90 88 06         [24] 1384 	mov	dptr,#_y
      0024FC E0               [24] 1385 	movx	a,@dptr
      0024FD FE               [12] 1386 	mov	r6,a
      0024FE A3               [24] 1387 	inc	dptr
      0024FF E0               [24] 1388 	movx	a,@dptr
      002500 FF               [12] 1389 	mov	r7,a
      002501 C3               [12] 1390 	clr	c
      002502 EE               [12] 1391 	mov	a,r6
      002503 94 20            [12] 1392 	subb	a,#0x20
      002505 EF               [12] 1393 	mov	a,r7
      002506 64 80            [12] 1394 	xrl	a,#0x80
      002508 94 80            [12] 1395 	subb	a,#0x80
      00250A 50 03            [24] 1396 	jnc	00215$
      00250C 02 22 FB         [24] 1397 	ljmp	00121$
      00250F                       1398 00215$:
                                   1399 ;	life.c:96: for (y = 0; y < H; y++)
      00250F 90 88 06         [24] 1400 	mov	dptr,#_y
      002512 E4               [12] 1401 	clr	a
      002513 F0               [24] 1402 	movx	@dptr,a
      002514 A3               [24] 1403 	inc	dptr
      002515 F0               [24] 1404 	movx	@dptr,a
      002516                       1405 00125$:
                                   1406 ;	life.c:97: for (x = 0; x < W; x++)
      002516 90 88 04         [24] 1407 	mov	dptr,#_x
      002519 E4               [12] 1408 	clr	a
      00251A F0               [24] 1409 	movx	@dptr,a
      00251B A3               [24] 1410 	inc	dptr
      00251C F0               [24] 1411 	movx	@dptr,a
      00251D                       1412 00123$:
                                   1413 ;	life.c:98: if (u[y][x] != nu[y][x]) {
      00251D 90 88 06         [24] 1414 	mov	dptr,#_y
      002520 E0               [24] 1415 	movx	a,@dptr
      002521 FE               [12] 1416 	mov	r6,a
      002522 A3               [24] 1417 	inc	dptr
      002523 E0               [24] 1418 	movx	a,@dptr
      002524 C4               [12] 1419 	swap	a
      002525 23               [12] 1420 	rl	a
      002526 54 E0            [12] 1421 	anl	a,#0xe0
      002528 CE               [12] 1422 	xch	a,r6
      002529 C4               [12] 1423 	swap	a
      00252A 23               [12] 1424 	rl	a
      00252B CE               [12] 1425 	xch	a,r6
      00252C 6E               [12] 1426 	xrl	a,r6
      00252D CE               [12] 1427 	xch	a,r6
      00252E 54 E0            [12] 1428 	anl	a,#0xe0
      002530 CE               [12] 1429 	xch	a,r6
      002531 6E               [12] 1430 	xrl	a,r6
      002532 FF               [12] 1431 	mov	r7,a
      002533 EE               [12] 1432 	mov	a,r6
      002534 24 04            [12] 1433 	add	a,#_u
      002536 FC               [12] 1434 	mov	r4,a
      002537 EF               [12] 1435 	mov	a,r7
      002538 34 80            [12] 1436 	addc	a,#(_u >> 8)
      00253A FD               [12] 1437 	mov	r5,a
      00253B 90 88 04         [24] 1438 	mov	dptr,#_x
      00253E E0               [24] 1439 	movx	a,@dptr
      00253F FA               [12] 1440 	mov	r2,a
      002540 A3               [24] 1441 	inc	dptr
      002541 E0               [24] 1442 	movx	a,@dptr
      002542 FB               [12] 1443 	mov	r3,a
      002543 EA               [12] 1444 	mov	a,r2
      002544 2C               [12] 1445 	add	a,r4
      002545 F5 82            [12] 1446 	mov	dpl,a
      002547 EB               [12] 1447 	mov	a,r3
      002548 3D               [12] 1448 	addc	a,r5
      002549 F5 83            [12] 1449 	mov	dph,a
      00254B EE               [12] 1450 	mov	a,r6
      00254C 24 04            [12] 1451 	add	a,#_nu
      00254E FC               [12] 1452 	mov	r4,a
      00254F EF               [12] 1453 	mov	a,r7
      002550 34 84            [12] 1454 	addc	a,#(_nu >> 8)
      002552 FD               [12] 1455 	mov	r5,a
      002553 EA               [12] 1456 	mov	a,r2
      002554 2C               [12] 1457 	add	a,r4
      002555 FC               [12] 1458 	mov	r4,a
      002556 EB               [12] 1459 	mov	a,r3
      002557 3D               [12] 1460 	addc	a,r5
      002558 FD               [12] 1461 	mov	r5,a
      002559 E0               [24] 1462 	movx	a,@dptr
      00255A F9               [12] 1463 	mov	r1,a
      00255B 8C 82            [24] 1464 	mov	dpl,r4
      00255D 8D 83            [24] 1465 	mov	dph,r5
      00255F E0               [24] 1466 	movx	a,@dptr
      002560 FC               [12] 1467 	mov	r4,a
      002561 E9               [12] 1468 	mov	a,r1
      002562 B5 04 02         [24] 1469 	cjne	a,ar4,00216$
      002565 80 2C            [24] 1470 	sjmp	00124$
      002567                       1471 00216$:
                                   1472 ;	life.c:99: u[y][x] = nu[y][x];
      002567 EE               [12] 1473 	mov	a,r6
      002568 24 04            [12] 1474 	add	a,#_u
      00256A FC               [12] 1475 	mov	r4,a
      00256B EF               [12] 1476 	mov	a,r7
      00256C 34 80            [12] 1477 	addc	a,#(_u >> 8)
      00256E FD               [12] 1478 	mov	r5,a
      00256F EA               [12] 1479 	mov	a,r2
      002570 2C               [12] 1480 	add	a,r4
      002571 FC               [12] 1481 	mov	r4,a
      002572 EB               [12] 1482 	mov	a,r3
      002573 3D               [12] 1483 	addc	a,r5
      002574 FD               [12] 1484 	mov	r5,a
      002575 EE               [12] 1485 	mov	a,r6
      002576 24 04            [12] 1486 	add	a,#_nu
      002578 FE               [12] 1487 	mov	r6,a
      002579 EF               [12] 1488 	mov	a,r7
      00257A 34 84            [12] 1489 	addc	a,#(_nu >> 8)
      00257C FF               [12] 1490 	mov	r7,a
      00257D EA               [12] 1491 	mov	a,r2
      00257E 2E               [12] 1492 	add	a,r6
      00257F F5 82            [12] 1493 	mov	dpl,a
      002581 EB               [12] 1494 	mov	a,r3
      002582 3F               [12] 1495 	addc	a,r7
      002583 F5 83            [12] 1496 	mov	dph,a
      002585 E0               [24] 1497 	movx	a,@dptr
      002586 FF               [12] 1498 	mov	r7,a
      002587 8C 82            [24] 1499 	mov	dpl,r4
      002589 8D 83            [24] 1500 	mov	dph,r5
      00258B F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	life.c:100: fixed = 0;
      00258C 90 88 18         [24] 1503 	mov	dptr,#_fixed
      00258F E4               [12] 1504 	clr	a
      002590 F0               [24] 1505 	movx	@dptr,a
      002591 A3               [24] 1506 	inc	dptr
      002592 F0               [24] 1507 	movx	@dptr,a
      002593                       1508 00124$:
                                   1509 ;	life.c:97: for (x = 0; x < W; x++)
      002593 90 88 04         [24] 1510 	mov	dptr,#_x
      002596 E0               [24] 1511 	movx	a,@dptr
      002597 24 01            [12] 1512 	add	a,#0x01
      002599 F0               [24] 1513 	movx	@dptr,a
      00259A A3               [24] 1514 	inc	dptr
      00259B E0               [24] 1515 	movx	a,@dptr
      00259C 34 00            [12] 1516 	addc	a,#0x00
      00259E F0               [24] 1517 	movx	@dptr,a
      00259F 90 88 04         [24] 1518 	mov	dptr,#_x
      0025A2 E0               [24] 1519 	movx	a,@dptr
      0025A3 FE               [12] 1520 	mov	r6,a
      0025A4 A3               [24] 1521 	inc	dptr
      0025A5 E0               [24] 1522 	movx	a,@dptr
      0025A6 FF               [12] 1523 	mov	r7,a
      0025A7 C3               [12] 1524 	clr	c
      0025A8 EE               [12] 1525 	mov	a,r6
      0025A9 94 20            [12] 1526 	subb	a,#0x20
      0025AB EF               [12] 1527 	mov	a,r7
      0025AC 64 80            [12] 1528 	xrl	a,#0x80
      0025AE 94 80            [12] 1529 	subb	a,#0x80
      0025B0 50 03            [24] 1530 	jnc	00217$
      0025B2 02 25 1D         [24] 1531 	ljmp	00123$
      0025B5                       1532 00217$:
                                   1533 ;	life.c:96: for (y = 0; y < H; y++)
      0025B5 90 88 06         [24] 1534 	mov	dptr,#_y
      0025B8 E0               [24] 1535 	movx	a,@dptr
      0025B9 24 01            [12] 1536 	add	a,#0x01
      0025BB F0               [24] 1537 	movx	@dptr,a
      0025BC A3               [24] 1538 	inc	dptr
      0025BD E0               [24] 1539 	movx	a,@dptr
      0025BE 34 00            [12] 1540 	addc	a,#0x00
      0025C0 F0               [24] 1541 	movx	@dptr,a
      0025C1 90 88 06         [24] 1542 	mov	dptr,#_y
      0025C4 E0               [24] 1543 	movx	a,@dptr
      0025C5 FE               [12] 1544 	mov	r6,a
      0025C6 A3               [24] 1545 	inc	dptr
      0025C7 E0               [24] 1546 	movx	a,@dptr
      0025C8 FF               [12] 1547 	mov	r7,a
      0025C9 C3               [12] 1548 	clr	c
      0025CA EE               [12] 1549 	mov	a,r6
      0025CB 94 20            [12] 1550 	subb	a,#0x20
      0025CD EF               [12] 1551 	mov	a,r7
      0025CE 64 80            [12] 1552 	xrl	a,#0x80
      0025D0 94 80            [12] 1553 	subb	a,#0x80
      0025D2 50 03            [24] 1554 	jnc	00218$
      0025D4 02 25 16         [24] 1555 	ljmp	00125$
      0025D7                       1556 00218$:
                                   1557 ;	life.c:103: return;
                                   1558 ;	life.c:104: }
      0025D7 22               [24] 1559 	ret
                                   1560 ;------------------------------------------------------------
                                   1561 ;Allocation info for local variables in function 'main'
                                   1562 ;------------------------------------------------------------
                                   1563 ;	life.c:106: void main(void) {
                                   1564 ;	-----------------------------------------
                                   1565 ;	 function main
                                   1566 ;	-----------------------------------------
      0025D8                       1567 _main:
                                   1568 ;	life.c:107: i0 = i1 = 0;
      0025D8 90 80 02         [24] 1569 	mov	dptr,#_i1
      0025DB E4               [12] 1570 	clr	a
      0025DC F0               [24] 1571 	movx	@dptr,a
      0025DD A3               [24] 1572 	inc	dptr
      0025DE F0               [24] 1573 	movx	@dptr,a
      0025DF 90 80 00         [24] 1574 	mov	dptr,#_i0
      0025E2 F0               [24] 1575 	movx	@dptr,a
      0025E3 A3               [24] 1576 	inc	dptr
      0025E4 F0               [24] 1577 	movx	@dptr,a
                                   1578 ;	life.c:109: IT0 = 1;
                                   1579 ;	assignBit
      0025E5 D2 88            [12] 1580 	setb	_IT0
                                   1581 ;	life.c:110: IT1 = 1;
                                   1582 ;	assignBit
      0025E7 D2 8A            [12] 1583 	setb	_IT1
                                   1584 ;	life.c:111: EX0 = 1;
                                   1585 ;	assignBit
      0025E9 D2 A8            [12] 1586 	setb	_EX0
                                   1587 ;	life.c:112: EX1 = 1;
                                   1588 ;	assignBit
      0025EB D2 AA            [12] 1589 	setb	_EX1
                                   1590 ;	life.c:113: EA = 1;
                                   1591 ;	assignBit
      0025ED D2 AF            [12] 1592 	setb	_EA
                                   1593 ;	life.c:115: while (!i0) {
      0025EF                       1594 00112$:
      0025EF 90 80 00         [24] 1595 	mov	dptr,#_i0
      0025F2 E0               [24] 1596 	movx	a,@dptr
      0025F3 F5 F0            [12] 1597 	mov	b,a
      0025F5 A3               [24] 1598 	inc	dptr
      0025F6 E0               [24] 1599 	movx	a,@dptr
      0025F7 45 F0            [12] 1600 	orl	a,b
      0025F9 60 03            [24] 1601 	jz	00175$
      0025FB 02 27 71         [24] 1602 	ljmp	00114$
      0025FE                       1603 00175$:
                                   1604 ;	life.c:116: printf("\033[2J\033[mINIT\n\r");
      0025FE 74 C4            [12] 1605 	mov	a,#___str_5
      002600 C0 E0            [24] 1606 	push	acc
      002602 74 3B            [12] 1607 	mov	a,#(___str_5 >> 8)
      002604 C0 E0            [24] 1608 	push	acc
      002606 74 80            [12] 1609 	mov	a,#0x80
      002608 C0 E0            [24] 1610 	push	acc
      00260A 12 27 D5         [24] 1611 	lcall	_printf
      00260D 15 81            [12] 1612 	dec	sp
      00260F 15 81            [12] 1613 	dec	sp
      002611 15 81            [12] 1614 	dec	sp
                                   1615 ;	life.c:117: for (y = 0; y < H; y++)
      002613 90 88 06         [24] 1616 	mov	dptr,#_y
      002616 E4               [12] 1617 	clr	a
      002617 F0               [24] 1618 	movx	@dptr,a
      002618 A3               [24] 1619 	inc	dptr
      002619 F0               [24] 1620 	movx	@dptr,a
      00261A                       1621 00117$:
                                   1622 ;	life.c:118: for (x = 0; x < W; x++) {
      00261A 90 88 04         [24] 1623 	mov	dptr,#_x
      00261D E4               [12] 1624 	clr	a
      00261E F0               [24] 1625 	movx	@dptr,a
      00261F A3               [24] 1626 	inc	dptr
      002620 F0               [24] 1627 	movx	@dptr,a
      002621                       1628 00115$:
                                   1629 ;	life.c:119: c = getchar();
      002621 12 20 7A         [24] 1630 	lcall	_getchar
      002624 AE 82            [24] 1631 	mov	r6,dpl
      002626 AF 83            [24] 1632 	mov	r7,dph
      002628 90 88 1A         [24] 1633 	mov	dptr,#_c
      00262B EE               [12] 1634 	mov	a,r6
      00262C F0               [24] 1635 	movx	@dptr,a
      00262D EF               [12] 1636 	mov	a,r7
      00262E A3               [24] 1637 	inc	dptr
      00262F F0               [24] 1638 	movx	@dptr,a
                                   1639 ;	life.c:120: u[y][x] = c & 1;
      002630 90 88 06         [24] 1640 	mov	dptr,#_y
      002633 E0               [24] 1641 	movx	a,@dptr
      002634 FC               [12] 1642 	mov	r4,a
      002635 A3               [24] 1643 	inc	dptr
      002636 E0               [24] 1644 	movx	a,@dptr
      002637 C4               [12] 1645 	swap	a
      002638 23               [12] 1646 	rl	a
      002639 54 E0            [12] 1647 	anl	a,#0xe0
      00263B CC               [12] 1648 	xch	a,r4
      00263C C4               [12] 1649 	swap	a
      00263D 23               [12] 1650 	rl	a
      00263E CC               [12] 1651 	xch	a,r4
      00263F 6C               [12] 1652 	xrl	a,r4
      002640 CC               [12] 1653 	xch	a,r4
      002641 54 E0            [12] 1654 	anl	a,#0xe0
      002643 CC               [12] 1655 	xch	a,r4
      002644 6C               [12] 1656 	xrl	a,r4
      002645 FD               [12] 1657 	mov	r5,a
      002646 EC               [12] 1658 	mov	a,r4
      002647 24 04            [12] 1659 	add	a,#_u
      002649 FC               [12] 1660 	mov	r4,a
      00264A ED               [12] 1661 	mov	a,r5
      00264B 34 80            [12] 1662 	addc	a,#(_u >> 8)
      00264D FD               [12] 1663 	mov	r5,a
      00264E 90 88 04         [24] 1664 	mov	dptr,#_x
      002651 E0               [24] 1665 	movx	a,@dptr
      002652 FA               [12] 1666 	mov	r2,a
      002653 A3               [24] 1667 	inc	dptr
      002654 E0               [24] 1668 	movx	a,@dptr
      002655 FB               [12] 1669 	mov	r3,a
      002656 EA               [12] 1670 	mov	a,r2
      002657 2C               [12] 1671 	add	a,r4
      002658 F5 82            [12] 1672 	mov	dpl,a
      00265A EB               [12] 1673 	mov	a,r3
      00265B 3D               [12] 1674 	addc	a,r5
      00265C F5 83            [12] 1675 	mov	dph,a
      00265E 53 06 01         [24] 1676 	anl	ar6,#0x01
      002661 EE               [12] 1677 	mov	a,r6
      002662 F0               [24] 1678 	movx	@dptr,a
                                   1679 ;	life.c:118: for (x = 0; x < W; x++) {
      002663 90 88 04         [24] 1680 	mov	dptr,#_x
      002666 E0               [24] 1681 	movx	a,@dptr
      002667 24 01            [12] 1682 	add	a,#0x01
      002669 F0               [24] 1683 	movx	@dptr,a
      00266A A3               [24] 1684 	inc	dptr
      00266B E0               [24] 1685 	movx	a,@dptr
      00266C 34 00            [12] 1686 	addc	a,#0x00
      00266E F0               [24] 1687 	movx	@dptr,a
      00266F 90 88 04         [24] 1688 	mov	dptr,#_x
      002672 E0               [24] 1689 	movx	a,@dptr
      002673 FE               [12] 1690 	mov	r6,a
      002674 A3               [24] 1691 	inc	dptr
      002675 E0               [24] 1692 	movx	a,@dptr
      002676 FF               [12] 1693 	mov	r7,a
      002677 C3               [12] 1694 	clr	c
      002678 EE               [12] 1695 	mov	a,r6
      002679 94 20            [12] 1696 	subb	a,#0x20
      00267B EF               [12] 1697 	mov	a,r7
      00267C 64 80            [12] 1698 	xrl	a,#0x80
      00267E 94 80            [12] 1699 	subb	a,#0x80
      002680 40 9F            [24] 1700 	jc	00115$
                                   1701 ;	life.c:117: for (y = 0; y < H; y++)
      002682 90 88 06         [24] 1702 	mov	dptr,#_y
      002685 E0               [24] 1703 	movx	a,@dptr
      002686 24 01            [12] 1704 	add	a,#0x01
      002688 F0               [24] 1705 	movx	@dptr,a
      002689 A3               [24] 1706 	inc	dptr
      00268A E0               [24] 1707 	movx	a,@dptr
      00268B 34 00            [12] 1708 	addc	a,#0x00
      00268D F0               [24] 1709 	movx	@dptr,a
      00268E 90 88 06         [24] 1710 	mov	dptr,#_y
      002691 E0               [24] 1711 	movx	a,@dptr
      002692 FE               [12] 1712 	mov	r6,a
      002693 A3               [24] 1713 	inc	dptr
      002694 E0               [24] 1714 	movx	a,@dptr
      002695 FF               [12] 1715 	mov	r7,a
      002696 C3               [12] 1716 	clr	c
      002697 EE               [12] 1717 	mov	a,r6
      002698 94 20            [12] 1718 	subb	a,#0x20
      00269A EF               [12] 1719 	mov	a,r7
      00269B 64 80            [12] 1720 	xrl	a,#0x80
      00269D 94 80            [12] 1721 	subb	a,#0x80
      00269F 50 03            [24] 1722 	jnc	00177$
      0026A1 02 26 1A         [24] 1723 	ljmp	00117$
      0026A4                       1724 00177$:
                                   1725 ;	life.c:122: printf("RDY\n\r");
      0026A4 74 D2            [12] 1726 	mov	a,#___str_6
      0026A6 C0 E0            [24] 1727 	push	acc
      0026A8 74 3B            [12] 1728 	mov	a,#(___str_6 >> 8)
      0026AA C0 E0            [24] 1729 	push	acc
      0026AC 74 80            [12] 1730 	mov	a,#0x80
      0026AE C0 E0            [24] 1731 	push	acc
      0026B0 12 27 D5         [24] 1732 	lcall	_printf
      0026B3 15 81            [12] 1733 	dec	sp
      0026B5 15 81            [12] 1734 	dec	sp
      0026B7 15 81            [12] 1735 	dec	sp
                                   1736 ;	life.c:123: (void)getchar();
      0026B9 12 20 7A         [24] 1737 	lcall	_getchar
                                   1738 ;	life.c:125: for (x = 0; x < 4; x++)
      0026BC 90 88 04         [24] 1739 	mov	dptr,#_x
      0026BF E4               [12] 1740 	clr	a
      0026C0 F0               [24] 1741 	movx	@dptr,a
      0026C1 A3               [24] 1742 	inc	dptr
      0026C2 F0               [24] 1743 	movx	@dptr,a
      0026C3                       1744 00119$:
                                   1745 ;	life.c:126: generation[x] = 0;
      0026C3 90 88 04         [24] 1746 	mov	dptr,#_x
      0026C6 E0               [24] 1747 	movx	a,@dptr
      0026C7 FE               [12] 1748 	mov	r6,a
      0026C8 A3               [24] 1749 	inc	dptr
      0026C9 E0               [24] 1750 	movx	a,@dptr
      0026CA FF               [12] 1751 	mov	r7,a
      0026CB EE               [12] 1752 	mov	a,r6
      0026CC 2E               [12] 1753 	add	a,r6
      0026CD FE               [12] 1754 	mov	r6,a
      0026CE EF               [12] 1755 	mov	a,r7
      0026CF 33               [12] 1756 	rlc	a
      0026D0 FF               [12] 1757 	mov	r7,a
      0026D1 EE               [12] 1758 	mov	a,r6
      0026D2 24 0E            [12] 1759 	add	a,#_generation
      0026D4 F5 82            [12] 1760 	mov	dpl,a
      0026D6 EF               [12] 1761 	mov	a,r7
      0026D7 34 88            [12] 1762 	addc	a,#(_generation >> 8)
      0026D9 F5 83            [12] 1763 	mov	dph,a
      0026DB E4               [12] 1764 	clr	a
      0026DC F0               [24] 1765 	movx	@dptr,a
      0026DD A3               [24] 1766 	inc	dptr
      0026DE F0               [24] 1767 	movx	@dptr,a
                                   1768 ;	life.c:125: for (x = 0; x < 4; x++)
      0026DF 90 88 04         [24] 1769 	mov	dptr,#_x
      0026E2 E0               [24] 1770 	movx	a,@dptr
      0026E3 24 01            [12] 1771 	add	a,#0x01
      0026E5 F0               [24] 1772 	movx	@dptr,a
      0026E6 A3               [24] 1773 	inc	dptr
      0026E7 E0               [24] 1774 	movx	a,@dptr
      0026E8 34 00            [12] 1775 	addc	a,#0x00
      0026EA F0               [24] 1776 	movx	@dptr,a
      0026EB 90 88 04         [24] 1777 	mov	dptr,#_x
      0026EE E0               [24] 1778 	movx	a,@dptr
      0026EF FE               [12] 1779 	mov	r6,a
      0026F0 A3               [24] 1780 	inc	dptr
      0026F1 E0               [24] 1781 	movx	a,@dptr
      0026F2 FF               [12] 1782 	mov	r7,a
      0026F3 C3               [12] 1783 	clr	c
      0026F4 EE               [12] 1784 	mov	a,r6
      0026F5 94 04            [12] 1785 	subb	a,#0x04
      0026F7 EF               [12] 1786 	mov	a,r7
      0026F8 64 80            [12] 1787 	xrl	a,#0x80
      0026FA 94 80            [12] 1788 	subb	a,#0x80
      0026FC 40 C5            [24] 1789 	jc	00119$
                                   1790 ;	life.c:128: i1 = 0;
      0026FE 90 80 02         [24] 1791 	mov	dptr,#_i1
      002701 E4               [12] 1792 	clr	a
      002702 F0               [24] 1793 	movx	@dptr,a
      002703 A3               [24] 1794 	inc	dptr
      002704 F0               [24] 1795 	movx	@dptr,a
                                   1796 ;	life.c:129: while (!i0 && !i1) {
      002705                       1797 00107$:
      002705 90 80 00         [24] 1798 	mov	dptr,#_i0
      002708 E0               [24] 1799 	movx	a,@dptr
      002709 F5 F0            [12] 1800 	mov	b,a
      00270B A3               [24] 1801 	inc	dptr
      00270C E0               [24] 1802 	movx	a,@dptr
      00270D 45 F0            [12] 1803 	orl	a,b
      00270F 70 36            [24] 1804 	jnz	00109$
      002711 90 80 02         [24] 1805 	mov	dptr,#_i1
      002714 E0               [24] 1806 	movx	a,@dptr
      002715 F5 F0            [12] 1807 	mov	b,a
      002717 A3               [24] 1808 	inc	dptr
      002718 E0               [24] 1809 	movx	a,@dptr
      002719 45 F0            [12] 1810 	orl	a,b
      00271B 70 2A            [24] 1811 	jnz	00109$
                                   1812 ;	life.c:130: show();
      00271D 12 21 F5         [24] 1813 	lcall	_show
                                   1814 ;	life.c:131: evolve();
      002720 12 22 EC         [24] 1815 	lcall	_evolve
                                   1816 ;	life.c:132: if (fixed) {
      002723 90 88 18         [24] 1817 	mov	dptr,#_fixed
      002726 E0               [24] 1818 	movx	a,@dptr
      002727 F5 F0            [12] 1819 	mov	b,a
      002729 A3               [24] 1820 	inc	dptr
      00272A E0               [24] 1821 	movx	a,@dptr
      00272B 45 F0            [12] 1822 	orl	a,b
      00272D 60 D6            [24] 1823 	jz	00107$
                                   1824 ;	life.c:133: printf("DONE\n\r");
      00272F 74 D8            [12] 1825 	mov	a,#___str_7
      002731 C0 E0            [24] 1826 	push	acc
      002733 74 3B            [12] 1827 	mov	a,#(___str_7 >> 8)
      002735 C0 E0            [24] 1828 	push	acc
      002737 74 80            [12] 1829 	mov	a,#0x80
      002739 C0 E0            [24] 1830 	push	acc
      00273B 12 27 D5         [24] 1831 	lcall	_printf
      00273E 15 81            [12] 1832 	dec	sp
      002740 15 81            [12] 1833 	dec	sp
      002742 15 81            [12] 1834 	dec	sp
                                   1835 ;	life.c:134: (void)getchar();
      002744 12 20 7A         [24] 1836 	lcall	_getchar
                                   1837 ;	life.c:135: break;
      002747                       1838 00109$:
                                   1839 ;	life.c:138: if (i1) {
      002747 90 80 02         [24] 1840 	mov	dptr,#_i1
      00274A E0               [24] 1841 	movx	a,@dptr
      00274B F5 F0            [12] 1842 	mov	b,a
      00274D A3               [24] 1843 	inc	dptr
      00274E E0               [24] 1844 	movx	a,@dptr
      00274F 45 F0            [12] 1845 	orl	a,b
      002751 70 03            [24] 1846 	jnz	00182$
      002753 02 25 EF         [24] 1847 	ljmp	00112$
      002756                       1848 00182$:
                                   1849 ;	life.c:139: printf("BREAK\n\r");
      002756 74 DF            [12] 1850 	mov	a,#___str_8
      002758 C0 E0            [24] 1851 	push	acc
      00275A 74 3B            [12] 1852 	mov	a,#(___str_8 >> 8)
      00275C C0 E0            [24] 1853 	push	acc
      00275E 74 80            [12] 1854 	mov	a,#0x80
      002760 C0 E0            [24] 1855 	push	acc
      002762 12 27 D5         [24] 1856 	lcall	_printf
      002765 15 81            [12] 1857 	dec	sp
      002767 15 81            [12] 1858 	dec	sp
      002769 15 81            [12] 1859 	dec	sp
                                   1860 ;	life.c:140: (void)getchar();
      00276B 12 20 7A         [24] 1861 	lcall	_getchar
      00276E 02 25 EF         [24] 1862 	ljmp	00112$
      002771                       1863 00114$:
                                   1864 ;	life.c:144: EA = 0;
                                   1865 ;	assignBit
      002771 C2 AF            [12] 1866 	clr	_EA
                                   1867 ;	life.c:146: printf("TERM\n\r");
      002773 74 E7            [12] 1868 	mov	a,#___str_9
      002775 C0 E0            [24] 1869 	push	acc
      002777 74 3B            [12] 1870 	mov	a,#(___str_9 >> 8)
      002779 C0 E0            [24] 1871 	push	acc
      00277B 74 80            [12] 1872 	mov	a,#0x80
      00277D C0 E0            [24] 1873 	push	acc
      00277F 12 27 D5         [24] 1874 	lcall	_printf
      002782 15 81            [12] 1875 	dec	sp
      002784 15 81            [12] 1876 	dec	sp
      002786 15 81            [12] 1877 	dec	sp
                                   1878 ;	life.c:147: (void)getchar();
      002788 12 20 7A         [24] 1879 	lcall	_getchar
                                   1880 ;	life.c:151: __endasm;
      00278B 02 00 00         [24] 1881 	ljmp	0
                                   1882 ;	life.c:152: }
      00278E 22               [24] 1883 	ret
                                   1884 	.area CSEG    (CODE)
                                   1885 	.area CONST   (CODE)
                                   1886 	.area CONST   (CODE)
      003BA6                       1887 ___str_0:
      003BA6 25 30 34 78           1888 	.ascii "%04x"
      003BAA 00                    1889 	.db 0x00
                                   1890 	.area CSEG    (CODE)
                                   1891 	.area CONST   (CODE)
      003BAB                       1892 ___str_1:
      003BAB 1B                    1893 	.db 0x1b
      003BAC 5B 32 4A              1894 	.ascii "[2J"
      003BAF 1B                    1895 	.db 0x1b
      003BB0 5B 6D                 1896 	.ascii "[m"
      003BB2 00                    1897 	.db 0x00
                                   1898 	.area CSEG    (CODE)
                                   1899 	.area CONST   (CODE)
      003BB3                       1900 ___str_2:
      003BB3 0D                    1901 	.db 0x0d
      003BB4 0A                    1902 	.db 0x0a
      003BB5 00                    1903 	.db 0x00
                                   1904 	.area CSEG    (CODE)
                                   1905 	.area CONST   (CODE)
      003BB6                       1906 ___str_3:
      003BB6 1B                    1907 	.db 0x1b
      003BB7 5B 30 31 6D 5B 5D     1908 	.ascii "[01m[]"
      003BBD 1B                    1909 	.db 0x1b
      003BBE 5B 6D                 1910 	.ascii "[m"
      003BC0 00                    1911 	.db 0x00
                                   1912 	.area CSEG    (CODE)
                                   1913 	.area CONST   (CODE)
      003BC1                       1914 ___str_4:
      003BC1 2D 2D                 1915 	.ascii "--"
      003BC3 00                    1916 	.db 0x00
                                   1917 	.area CSEG    (CODE)
                                   1918 	.area CONST   (CODE)
      003BC4                       1919 ___str_5:
      003BC4 1B                    1920 	.db 0x1b
      003BC5 5B 32 4A              1921 	.ascii "[2J"
      003BC8 1B                    1922 	.db 0x1b
      003BC9 5B 6D 49 4E 49 54     1923 	.ascii "[mINIT"
      003BCF 0A                    1924 	.db 0x0a
      003BD0 0D                    1925 	.db 0x0d
      003BD1 00                    1926 	.db 0x00
                                   1927 	.area CSEG    (CODE)
                                   1928 	.area CONST   (CODE)
      003BD2                       1929 ___str_6:
      003BD2 52 44 59              1930 	.ascii "RDY"
      003BD5 0A                    1931 	.db 0x0a
      003BD6 0D                    1932 	.db 0x0d
      003BD7 00                    1933 	.db 0x00
                                   1934 	.area CSEG    (CODE)
                                   1935 	.area CONST   (CODE)
      003BD8                       1936 ___str_7:
      003BD8 44 4F 4E 45           1937 	.ascii "DONE"
      003BDC 0A                    1938 	.db 0x0a
      003BDD 0D                    1939 	.db 0x0d
      003BDE 00                    1940 	.db 0x00
                                   1941 	.area CSEG    (CODE)
                                   1942 	.area CONST   (CODE)
      003BDF                       1943 ___str_8:
      003BDF 42 52 45 41 4B        1944 	.ascii "BREAK"
      003BE4 0A                    1945 	.db 0x0a
      003BE5 0D                    1946 	.db 0x0d
      003BE6 00                    1947 	.db 0x00
                                   1948 	.area CSEG    (CODE)
                                   1949 	.area CONST   (CODE)
      003BE7                       1950 ___str_9:
      003BE7 54 45 52 4D           1951 	.ascii "TERM"
      003BEB 0A                    1952 	.db 0x0a
      003BEC 0D                    1953 	.db 0x0d
      003BED 00                    1954 	.db 0x00
                                   1955 	.area CSEG    (CODE)
                                   1956 	.area XINIT   (CODE)
                                   1957 	.area CABS    (ABS,CODE)
