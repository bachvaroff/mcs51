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
                                     14 	.globl _printf
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _FL
                                     22 	.globl _P
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _C_T2
                                     30 	.globl _CP_RL2
                                     31 	.globl _T2CON_7
                                     32 	.globl _T2CON_6
                                     33 	.globl _T2CON_5
                                     34 	.globl _T2CON_4
                                     35 	.globl _T2CON_3
                                     36 	.globl _T2CON_2
                                     37 	.globl _T2CON_1
                                     38 	.globl _T2CON_0
                                     39 	.globl _PT2
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ET2
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _T2EX
                                     85 	.globl _T2
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _B
                                    111 	.globl _A
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2MOD
                                    119 	.globl _T2CON
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _c
                                    139 	.globl _fixed
                                    140 	.globl _j
                                    141 	.globl _generation
                                    142 	.globl _n
                                    143 	.globl _y1
                                    144 	.globl _x1
                                    145 	.globl _y
                                    146 	.globl _x
                                    147 	.globl _nu
                                    148 	.globl _u
                                    149 	.globl _i1
                                    150 	.globl _i0
                                    151 	.globl _putchar
                                    152 	.globl _getchar
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0	=	0x0080
                           000081   159 _SP	=	0x0081
                           000082   160 _DPL	=	0x0082
                           000083   161 _DPH	=	0x0083
                           000087   162 _PCON	=	0x0087
                           000088   163 _TCON	=	0x0088
                           000089   164 _TMOD	=	0x0089
                           00008A   165 _TL0	=	0x008a
                           00008B   166 _TL1	=	0x008b
                           00008C   167 _TH0	=	0x008c
                           00008D   168 _TH1	=	0x008d
                           000090   169 _P1	=	0x0090
                           000098   170 _SCON	=	0x0098
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 _IE	=	0x00a8
                           0000B0   174 _P3	=	0x00b0
                           0000B8   175 _IP	=	0x00b8
                           0000C8   176 _T2CON	=	0x00c8
                           0000C9   177 _T2MOD	=	0x00c9
                           0000CA   178 _RCAP2L	=	0x00ca
                           0000CB   179 _RCAP2H	=	0x00cb
                           0000CC   180 _TL2	=	0x00cc
                           0000CD   181 _TH2	=	0x00cd
                           0000D0   182 _PSW	=	0x00d0
                           0000E0   183 _ACC	=	0x00e0
                           0000E0   184 _A	=	0x00e0
                           0000F0   185 _B	=	0x00f0
                                    186 ;--------------------------------------------------------
                                    187 ; special function bits
                                    188 ;--------------------------------------------------------
                                    189 	.area RSEG    (ABS,DATA)
      000000                        190 	.org 0x0000
                           000080   191 _P0_0	=	0x0080
                           000081   192 _P0_1	=	0x0081
                           000082   193 _P0_2	=	0x0082
                           000083   194 _P0_3	=	0x0083
                           000084   195 _P0_4	=	0x0084
                           000085   196 _P0_5	=	0x0085
                           000086   197 _P0_6	=	0x0086
                           000087   198 _P0_7	=	0x0087
                           000088   199 _IT0	=	0x0088
                           000089   200 _IE0	=	0x0089
                           00008A   201 _IT1	=	0x008a
                           00008B   202 _IE1	=	0x008b
                           00008C   203 _TR0	=	0x008c
                           00008D   204 _TF0	=	0x008d
                           00008E   205 _TR1	=	0x008e
                           00008F   206 _TF1	=	0x008f
                           000090   207 _P1_0	=	0x0090
                           000091   208 _P1_1	=	0x0091
                           000092   209 _P1_2	=	0x0092
                           000093   210 _P1_3	=	0x0093
                           000094   211 _P1_4	=	0x0094
                           000095   212 _P1_5	=	0x0095
                           000096   213 _P1_6	=	0x0096
                           000097   214 _P1_7	=	0x0097
                           000090   215 _T2	=	0x0090
                           000091   216 _T2EX	=	0x0091
                           000098   217 _RI	=	0x0098
                           000099   218 _TI	=	0x0099
                           00009A   219 _RB8	=	0x009a
                           00009B   220 _TB8	=	0x009b
                           00009C   221 _REN	=	0x009c
                           00009D   222 _SM2	=	0x009d
                           00009E   223 _SM1	=	0x009e
                           00009F   224 _SM0	=	0x009f
                           0000A0   225 _P2_0	=	0x00a0
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 _P2_2	=	0x00a2
                           0000A3   228 _P2_3	=	0x00a3
                           0000A4   229 _P2_4	=	0x00a4
                           0000A5   230 _P2_5	=	0x00a5
                           0000A6   231 _P2_6	=	0x00a6
                           0000A7   232 _P2_7	=	0x00a7
                           0000A8   233 _EX0	=	0x00a8
                           0000A9   234 _ET0	=	0x00a9
                           0000AA   235 _EX1	=	0x00aa
                           0000AB   236 _ET1	=	0x00ab
                           0000AC   237 _ES	=	0x00ac
                           0000AD   238 _ET2	=	0x00ad
                           0000AF   239 _EA	=	0x00af
                           0000B0   240 _P3_0	=	0x00b0
                           0000B1   241 _P3_1	=	0x00b1
                           0000B2   242 _P3_2	=	0x00b2
                           0000B3   243 _P3_3	=	0x00b3
                           0000B4   244 _P3_4	=	0x00b4
                           0000B5   245 _P3_5	=	0x00b5
                           0000B6   246 _P3_6	=	0x00b6
                           0000B7   247 _P3_7	=	0x00b7
                           0000B0   248 _RXD	=	0x00b0
                           0000B1   249 _TXD	=	0x00b1
                           0000B2   250 _INT0	=	0x00b2
                           0000B3   251 _INT1	=	0x00b3
                           0000B4   252 _T0	=	0x00b4
                           0000B5   253 _T1	=	0x00b5
                           0000B6   254 _WR	=	0x00b6
                           0000B7   255 _RD	=	0x00b7
                           0000B8   256 _PX0	=	0x00b8
                           0000B9   257 _PT0	=	0x00b9
                           0000BA   258 _PX1	=	0x00ba
                           0000BB   259 _PT1	=	0x00bb
                           0000BC   260 _PS	=	0x00bc
                           0000BD   261 _PT2	=	0x00bd
                           0000C8   262 _T2CON_0	=	0x00c8
                           0000C9   263 _T2CON_1	=	0x00c9
                           0000CA   264 _T2CON_2	=	0x00ca
                           0000CB   265 _T2CON_3	=	0x00cb
                           0000CC   266 _T2CON_4	=	0x00cc
                           0000CD   267 _T2CON_5	=	0x00cd
                           0000CE   268 _T2CON_6	=	0x00ce
                           0000CF   269 _T2CON_7	=	0x00cf
                           0000C8   270 _CP_RL2	=	0x00c8
                           0000C9   271 _C_T2	=	0x00c9
                           0000CA   272 _TR2	=	0x00ca
                           0000CB   273 _EXEN2	=	0x00cb
                           0000CC   274 _TCLK	=	0x00cc
                           0000CD   275 _RCLK	=	0x00cd
                           0000CE   276 _EXF2	=	0x00ce
                           0000CF   277 _TF2	=	0x00cf
                           0000D0   278 _P	=	0x00d0
                           0000D1   279 _FL	=	0x00d1
                           0000D2   280 _OV	=	0x00d2
                           0000D3   281 _RS0	=	0x00d3
                           0000D4   282 _RS1	=	0x00d4
                           0000D5   283 _F0	=	0x00d5
                           0000D6   284 _AC	=	0x00d6
                           0000D7   285 _CY	=	0x00d7
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable register banks
                                    288 ;--------------------------------------------------------
                                    289 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        290 	.ds 8
                                    291 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        292 	.ds 8
                                    293 ;--------------------------------------------------------
                                    294 ; overlayable bit register bank
                                    295 ;--------------------------------------------------------
                                    296 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        297 bits:
      000020                        298 	.ds 1
                           008000   299 	b0 = bits[0]
                           008100   300 	b1 = bits[1]
                           008200   301 	b2 = bits[2]
                           008300   302 	b3 = bits[3]
                           008400   303 	b4 = bits[4]
                           008500   304 	b5 = bits[5]
                           008600   305 	b6 = bits[6]
                           008700   306 	b7 = bits[7]
                                    307 ;--------------------------------------------------------
                                    308 ; internal ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area DSEG    (DATA)
                                    311 ;--------------------------------------------------------
                                    312 ; overlayable items in internal ram 
                                    313 ;--------------------------------------------------------
                                    314 ;--------------------------------------------------------
                                    315 ; Stack segment in internal ram 
                                    316 ;--------------------------------------------------------
                                    317 	.area	SSEG
      000021                        318 __start__stack:
      000021                        319 	.ds	1
                                    320 
                                    321 ;--------------------------------------------------------
                                    322 ; indirectly addressable internal ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area ISEG    (DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; absolute internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area IABS    (ABS,DATA)
                                    329 	.area IABS    (ABS,DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; bit data
                                    332 ;--------------------------------------------------------
                                    333 	.area BSEG    (BIT)
                                    334 ;--------------------------------------------------------
                                    335 ; paged external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area PSEG    (PAG,XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XSEG    (XDATA)
      008000                        342 _i0::
      008000                        343 	.ds 2
      008002                        344 _i1::
      008002                        345 	.ds 2
      008004                        346 _u::
      008004                        347 	.ds 1024
      008404                        348 _nu::
      008404                        349 	.ds 1024
      008804                        350 _x::
      008804                        351 	.ds 2
      008806                        352 _y::
      008806                        353 	.ds 2
      008808                        354 _x1::
      008808                        355 	.ds 2
      00880A                        356 _y1::
      00880A                        357 	.ds 2
      00880C                        358 _n::
      00880C                        359 	.ds 2
      00880E                        360 _generation::
      00880E                        361 	.ds 8
      008816                        362 _j::
      008816                        363 	.ds 2
      008818                        364 _fixed::
      008818                        365 	.ds 2
      00881A                        366 _c::
      00881A                        367 	.ds 2
                                    368 ;--------------------------------------------------------
                                    369 ; absolute external ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XABS    (ABS,XDATA)
                                    372 ;--------------------------------------------------------
                                    373 ; external initialized ram data
                                    374 ;--------------------------------------------------------
                                    375 	.area XISEG   (XDATA)
                                    376 	.area HOME    (CODE)
                                    377 	.area GSINIT0 (CODE)
                                    378 	.area GSINIT1 (CODE)
                                    379 	.area GSINIT2 (CODE)
                                    380 	.area GSINIT3 (CODE)
                                    381 	.area GSINIT4 (CODE)
                                    382 	.area GSINIT5 (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area CSEG    (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; interrupt vector 
                                    388 ;--------------------------------------------------------
                                    389 	.area HOME    (CODE)
      002000                        390 __interrupt_vect:
      002000 02 20 19         [24]  391 	ljmp	__sdcc_gsinit_startup
      002003 02 20 82         [24]  392 	ljmp	_int0
      002006                        393 	.ds	5
      00200B 32               [24]  394 	reti
      00200C                        395 	.ds	7
      002013 02 20 98         [24]  396 	ljmp	_int1
                                    397 ;--------------------------------------------------------
                                    398 ; global & static initialisations
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
                                    401 	.area GSINIT  (CODE)
                                    402 	.area GSFINAL (CODE)
                                    403 	.area GSINIT  (CODE)
                                    404 	.globl __sdcc_gsinit_startup
                                    405 	.globl __sdcc_program_startup
                                    406 	.globl __start__stack
                                    407 	.globl __mcs51_genXINIT
                                    408 	.globl __mcs51_genXRAMCLEAR
                                    409 	.globl __mcs51_genRAMCLEAR
                                    410 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  411 	ljmp	__sdcc_program_startup
                                    412 ;--------------------------------------------------------
                                    413 ; Home
                                    414 ;--------------------------------------------------------
                                    415 	.area HOME    (CODE)
                                    416 	.area HOME    (CODE)
      002016                        417 __sdcc_program_startup:
      002016 02 20 AE         [24]  418 	ljmp	_main
                                    419 ;	return from main will return to caller
                                    420 ;--------------------------------------------------------
                                    421 ; code
                                    422 ;--------------------------------------------------------
                                    423 	.area CSEG    (CODE)
                                    424 ;------------------------------------------------------------
                                    425 ;Allocation info for local variables in function 'putchar'
                                    426 ;------------------------------------------------------------
                                    427 ;c                         Allocated to registers 
                                    428 ;------------------------------------------------------------
                                    429 ;	life.c:7: int putchar(int c) __naked {
                                    430 ;	-----------------------------------------
                                    431 ;	 function putchar
                                    432 ;	-----------------------------------------
      002075                        433 _putchar:
                                    434 ;	naked function: no prologue.
                                    435 ;	life.c:12: __endasm;
      002075 E5 82            [12]  436 	mov	a, dpl
      002077 02 00 30         [24]  437 	ljmp	0x0030
                                    438 ;	life.c:13: }
                                    439 ;	naked function: no epilogue.
                                    440 ;------------------------------------------------------------
                                    441 ;Allocation info for local variables in function 'getchar'
                                    442 ;------------------------------------------------------------
                                    443 ;	life.c:15: int getchar(void) {
                                    444 ;	-----------------------------------------
                                    445 ;	 function getchar
                                    446 ;	-----------------------------------------
      00207A                        447 _getchar:
                           000007   448 	ar7 = 0x07
                           000006   449 	ar6 = 0x06
                           000005   450 	ar5 = 0x05
                           000004   451 	ar4 = 0x04
                           000003   452 	ar3 = 0x03
                           000002   453 	ar2 = 0x02
                           000001   454 	ar1 = 0x01
                           000000   455 	ar0 = 0x00
                                    456 ;	life.c:20: __endasm;
      00207A 12 00 32         [24]  457 	lcall	0x0032
      00207D C2 83            [12]  458 	clr	dph
      00207F F5 82            [12]  459 	mov	dpl, a
                                    460 ;	life.c:21: }
      002081 22               [24]  461 	ret
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'int0'
                                    464 ;------------------------------------------------------------
                                    465 ;	life.c:32: void int0(void) __interrupt 0 __using 1 {
                                    466 ;	-----------------------------------------
                                    467 ;	 function int0
                                    468 ;	-----------------------------------------
      002082                        469 _int0:
                           00000F   470 	ar7 = 0x0f
                           00000E   471 	ar6 = 0x0e
                           00000D   472 	ar5 = 0x0d
                           00000C   473 	ar4 = 0x0c
                           00000B   474 	ar3 = 0x0b
                           00000A   475 	ar2 = 0x0a
                           000009   476 	ar1 = 0x09
                           000008   477 	ar0 = 0x08
      002082 C0 E0            [24]  478 	push	acc
      002084 C0 82            [24]  479 	push	dpl
      002086 C0 83            [24]  480 	push	dph
                                    481 ;	life.c:33: i0 = 1;
      002088 90 80 00         [24]  482 	mov	dptr,#_i0
      00208B 74 01            [12]  483 	mov	a,#0x01
      00208D F0               [24]  484 	movx	@dptr,a
      00208E E4               [12]  485 	clr	a
      00208F A3               [24]  486 	inc	dptr
      002090 F0               [24]  487 	movx	@dptr,a
                                    488 ;	life.c:34: }
      002091 D0 83            [24]  489 	pop	dph
      002093 D0 82            [24]  490 	pop	dpl
      002095 D0 E0            [24]  491 	pop	acc
      002097 32               [24]  492 	reti
                                    493 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    494 ;	eliminated unneeded push/pop psw
                                    495 ;	eliminated unneeded push/pop b
                                    496 ;------------------------------------------------------------
                                    497 ;Allocation info for local variables in function 'int1'
                                    498 ;------------------------------------------------------------
                                    499 ;	life.c:37: void int1(void) __interrupt 2 __using 1 {
                                    500 ;	-----------------------------------------
                                    501 ;	 function int1
                                    502 ;	-----------------------------------------
      002098                        503 _int1:
      002098 C0 E0            [24]  504 	push	acc
      00209A C0 82            [24]  505 	push	dpl
      00209C C0 83            [24]  506 	push	dph
                                    507 ;	life.c:38: i1 = 1;
      00209E 90 80 02         [24]  508 	mov	dptr,#_i1
      0020A1 74 01            [12]  509 	mov	a,#0x01
      0020A3 F0               [24]  510 	movx	@dptr,a
      0020A4 E4               [12]  511 	clr	a
      0020A5 A3               [24]  512 	inc	dptr
      0020A6 F0               [24]  513 	movx	@dptr,a
                                    514 ;	life.c:39: }
      0020A7 D0 83            [24]  515 	pop	dph
      0020A9 D0 82            [24]  516 	pop	dpl
      0020AB D0 E0            [24]  517 	pop	acc
      0020AD 32               [24]  518 	reti
                                    519 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    520 ;	eliminated unneeded push/pop psw
                                    521 ;	eliminated unneeded push/pop b
                                    522 ;------------------------------------------------------------
                                    523 ;Allocation info for local variables in function 'main'
                                    524 ;------------------------------------------------------------
                                    525 ;	life.c:108: void main(void) {
                                    526 ;	-----------------------------------------
                                    527 ;	 function main
                                    528 ;	-----------------------------------------
      0020AE                        529 _main:
                           000007   530 	ar7 = 0x07
                           000006   531 	ar6 = 0x06
                           000005   532 	ar5 = 0x05
                           000004   533 	ar4 = 0x04
                           000003   534 	ar3 = 0x03
                           000002   535 	ar2 = 0x02
                           000001   536 	ar1 = 0x01
                           000000   537 	ar0 = 0x00
                                    538 ;	life.c:109: i0 = i1 = 0;
      0020AE 90 80 02         [24]  539 	mov	dptr,#_i1
      0020B1 E4               [12]  540 	clr	a
      0020B2 F0               [24]  541 	movx	@dptr,a
      0020B3 A3               [24]  542 	inc	dptr
      0020B4 F0               [24]  543 	movx	@dptr,a
      0020B5 90 80 00         [24]  544 	mov	dptr,#_i0
      0020B8 F0               [24]  545 	movx	@dptr,a
      0020B9 A3               [24]  546 	inc	dptr
      0020BA F0               [24]  547 	movx	@dptr,a
                                    548 ;	life.c:111: IT0 = 1;
                                    549 ;	assignBit
      0020BB D2 88            [12]  550 	setb	_IT0
                                    551 ;	life.c:112: IT1 = 1;
                                    552 ;	assignBit
      0020BD D2 8A            [12]  553 	setb	_IT1
                                    554 ;	life.c:113: EX0 = 1;
                                    555 ;	assignBit
      0020BF D2 A8            [12]  556 	setb	_EX0
                                    557 ;	life.c:114: EX1 = 1;
                                    558 ;	assignBit
      0020C1 D2 AA            [12]  559 	setb	_EX1
                                    560 ;	life.c:115: EA = 1;
                                    561 ;	assignBit
      0020C3 D2 AF            [12]  562 	setb	_EA
                                    563 ;	life.c:117: while (!i0) {
      0020C5                        564 00111$:
      0020C5 90 80 00         [24]  565 	mov	dptr,#_i0
      0020C8 E0               [24]  566 	movx	a,@dptr
      0020C9 F5 F0            [12]  567 	mov	b,a
      0020CB A3               [24]  568 	inc	dptr
      0020CC E0               [24]  569 	movx	a,@dptr
      0020CD 45 F0            [12]  570 	orl	a,b
      0020CF 60 03            [24]  571 	jz	00339$
      0020D1 02 27 28         [24]  572 	ljmp	00113$
      0020D4                        573 00339$:
                                    574 ;	life.c:118: printf("\033[2J\033[mINIT\n\r");
      0020D4 74 7B            [12]  575 	mov	a,#___str_5
      0020D6 C0 E0            [24]  576 	push	acc
      0020D8 74 3B            [12]  577 	mov	a,#(___str_5 >> 8)
      0020DA C0 E0            [24]  578 	push	acc
      0020DC 74 80            [12]  579 	mov	a,#0x80
      0020DE C0 E0            [24]  580 	push	acc
      0020E0 12 27 8C         [24]  581 	lcall	_printf
      0020E3 15 81            [12]  582 	dec	sp
      0020E5 15 81            [12]  583 	dec	sp
      0020E7 15 81            [12]  584 	dec	sp
                                    585 ;	life.c:119: for (y = 0; y < H; y++)
      0020E9 90 88 06         [24]  586 	mov	dptr,#_y
      0020EC E4               [12]  587 	clr	a
      0020ED F0               [24]  588 	movx	@dptr,a
      0020EE A3               [24]  589 	inc	dptr
      0020EF F0               [24]  590 	movx	@dptr,a
      0020F0                        591 00145$:
                                    592 ;	life.c:120: for (x = 0; x < W; x++) {
      0020F0 90 88 04         [24]  593 	mov	dptr,#_x
      0020F3 E4               [12]  594 	clr	a
      0020F4 F0               [24]  595 	movx	@dptr,a
      0020F5 A3               [24]  596 	inc	dptr
      0020F6 F0               [24]  597 	movx	@dptr,a
      0020F7                        598 00143$:
                                    599 ;	life.c:121: c = getchar();
      0020F7 12 20 7A         [24]  600 	lcall	_getchar
      0020FA AE 82            [24]  601 	mov	r6,dpl
      0020FC AF 83            [24]  602 	mov	r7,dph
      0020FE 90 88 1A         [24]  603 	mov	dptr,#_c
      002101 EE               [12]  604 	mov	a,r6
      002102 F0               [24]  605 	movx	@dptr,a
      002103 EF               [12]  606 	mov	a,r7
      002104 A3               [24]  607 	inc	dptr
      002105 F0               [24]  608 	movx	@dptr,a
                                    609 ;	life.c:122: u[y][x] = c & 1;
      002106 90 88 06         [24]  610 	mov	dptr,#_y
      002109 E0               [24]  611 	movx	a,@dptr
      00210A FC               [12]  612 	mov	r4,a
      00210B A3               [24]  613 	inc	dptr
      00210C E0               [24]  614 	movx	a,@dptr
      00210D C4               [12]  615 	swap	a
      00210E 23               [12]  616 	rl	a
      00210F 54 E0            [12]  617 	anl	a,#0xe0
      002111 CC               [12]  618 	xch	a,r4
      002112 C4               [12]  619 	swap	a
      002113 23               [12]  620 	rl	a
      002114 CC               [12]  621 	xch	a,r4
      002115 6C               [12]  622 	xrl	a,r4
      002116 CC               [12]  623 	xch	a,r4
      002117 54 E0            [12]  624 	anl	a,#0xe0
      002119 CC               [12]  625 	xch	a,r4
      00211A 6C               [12]  626 	xrl	a,r4
      00211B FD               [12]  627 	mov	r5,a
      00211C EC               [12]  628 	mov	a,r4
      00211D 24 04            [12]  629 	add	a,#_u
      00211F FC               [12]  630 	mov	r4,a
      002120 ED               [12]  631 	mov	a,r5
      002121 34 80            [12]  632 	addc	a,#(_u >> 8)
      002123 FD               [12]  633 	mov	r5,a
      002124 90 88 04         [24]  634 	mov	dptr,#_x
      002127 E0               [24]  635 	movx	a,@dptr
      002128 FA               [12]  636 	mov	r2,a
      002129 A3               [24]  637 	inc	dptr
      00212A E0               [24]  638 	movx	a,@dptr
      00212B FB               [12]  639 	mov	r3,a
      00212C EA               [12]  640 	mov	a,r2
      00212D 2C               [12]  641 	add	a,r4
      00212E F5 82            [12]  642 	mov	dpl,a
      002130 EB               [12]  643 	mov	a,r3
      002131 3D               [12]  644 	addc	a,r5
      002132 F5 83            [12]  645 	mov	dph,a
      002134 53 06 01         [24]  646 	anl	ar6,#0x01
      002137 EE               [12]  647 	mov	a,r6
      002138 F0               [24]  648 	movx	@dptr,a
                                    649 ;	life.c:120: for (x = 0; x < W; x++) {
      002139 90 88 04         [24]  650 	mov	dptr,#_x
      00213C E0               [24]  651 	movx	a,@dptr
      00213D 24 01            [12]  652 	add	a,#0x01
      00213F F0               [24]  653 	movx	@dptr,a
      002140 A3               [24]  654 	inc	dptr
      002141 E0               [24]  655 	movx	a,@dptr
      002142 34 00            [12]  656 	addc	a,#0x00
      002144 F0               [24]  657 	movx	@dptr,a
      002145 90 88 04         [24]  658 	mov	dptr,#_x
      002148 E0               [24]  659 	movx	a,@dptr
      002149 FE               [12]  660 	mov	r6,a
      00214A A3               [24]  661 	inc	dptr
      00214B E0               [24]  662 	movx	a,@dptr
      00214C FF               [12]  663 	mov	r7,a
      00214D C3               [12]  664 	clr	c
      00214E EE               [12]  665 	mov	a,r6
      00214F 94 20            [12]  666 	subb	a,#0x20
      002151 EF               [12]  667 	mov	a,r7
      002152 64 80            [12]  668 	xrl	a,#0x80
      002154 94 80            [12]  669 	subb	a,#0x80
      002156 40 9F            [24]  670 	jc	00143$
                                    671 ;	life.c:119: for (y = 0; y < H; y++)
      002158 90 88 06         [24]  672 	mov	dptr,#_y
      00215B E0               [24]  673 	movx	a,@dptr
      00215C 24 01            [12]  674 	add	a,#0x01
      00215E F0               [24]  675 	movx	@dptr,a
      00215F A3               [24]  676 	inc	dptr
      002160 E0               [24]  677 	movx	a,@dptr
      002161 34 00            [12]  678 	addc	a,#0x00
      002163 F0               [24]  679 	movx	@dptr,a
      002164 90 88 06         [24]  680 	mov	dptr,#_y
      002167 E0               [24]  681 	movx	a,@dptr
      002168 FE               [12]  682 	mov	r6,a
      002169 A3               [24]  683 	inc	dptr
      00216A E0               [24]  684 	movx	a,@dptr
      00216B FF               [12]  685 	mov	r7,a
      00216C C3               [12]  686 	clr	c
      00216D EE               [12]  687 	mov	a,r6
      00216E 94 20            [12]  688 	subb	a,#0x20
      002170 EF               [12]  689 	mov	a,r7
      002171 64 80            [12]  690 	xrl	a,#0x80
      002173 94 80            [12]  691 	subb	a,#0x80
      002175 50 03            [24]  692 	jnc	00341$
      002177 02 20 F0         [24]  693 	ljmp	00145$
      00217A                        694 00341$:
                                    695 ;	life.c:124: printf("RDY\n\r");
      00217A 74 89            [12]  696 	mov	a,#___str_6
      00217C C0 E0            [24]  697 	push	acc
      00217E 74 3B            [12]  698 	mov	a,#(___str_6 >> 8)
      002180 C0 E0            [24]  699 	push	acc
      002182 74 80            [12]  700 	mov	a,#0x80
      002184 C0 E0            [24]  701 	push	acc
      002186 12 27 8C         [24]  702 	lcall	_printf
      002189 15 81            [12]  703 	dec	sp
      00218B 15 81            [12]  704 	dec	sp
      00218D 15 81            [12]  705 	dec	sp
                                    706 ;	life.c:125: (void)getchar();
      00218F 12 20 7A         [24]  707 	lcall	_getchar
                                    708 ;	life.c:42: for (j = 0; j < 4; j++)
      002192 90 88 16         [24]  709 	mov	dptr,#_j
      002195 E4               [12]  710 	clr	a
      002196 F0               [24]  711 	movx	@dptr,a
      002197 A3               [24]  712 	inc	dptr
      002198 F0               [24]  713 	movx	@dptr,a
      002199                        714 00147$:
                                    715 ;	life.c:43: generation[j] = 0;
      002199 90 88 16         [24]  716 	mov	dptr,#_j
      00219C E0               [24]  717 	movx	a,@dptr
      00219D FE               [12]  718 	mov	r6,a
      00219E A3               [24]  719 	inc	dptr
      00219F E0               [24]  720 	movx	a,@dptr
      0021A0 FF               [12]  721 	mov	r7,a
      0021A1 EE               [12]  722 	mov	a,r6
      0021A2 2E               [12]  723 	add	a,r6
      0021A3 FE               [12]  724 	mov	r6,a
      0021A4 EF               [12]  725 	mov	a,r7
      0021A5 33               [12]  726 	rlc	a
      0021A6 FF               [12]  727 	mov	r7,a
      0021A7 EE               [12]  728 	mov	a,r6
      0021A8 24 0E            [12]  729 	add	a,#_generation
      0021AA F5 82            [12]  730 	mov	dpl,a
      0021AC EF               [12]  731 	mov	a,r7
      0021AD 34 88            [12]  732 	addc	a,#(_generation >> 8)
      0021AF F5 83            [12]  733 	mov	dph,a
      0021B1 E4               [12]  734 	clr	a
      0021B2 F0               [24]  735 	movx	@dptr,a
      0021B3 A3               [24]  736 	inc	dptr
      0021B4 F0               [24]  737 	movx	@dptr,a
                                    738 ;	life.c:42: for (j = 0; j < 4; j++)
      0021B5 90 88 16         [24]  739 	mov	dptr,#_j
      0021B8 E0               [24]  740 	movx	a,@dptr
      0021B9 24 01            [12]  741 	add	a,#0x01
      0021BB F0               [24]  742 	movx	@dptr,a
      0021BC A3               [24]  743 	inc	dptr
      0021BD E0               [24]  744 	movx	a,@dptr
      0021BE 34 00            [12]  745 	addc	a,#0x00
      0021C0 F0               [24]  746 	movx	@dptr,a
      0021C1 90 88 16         [24]  747 	mov	dptr,#_j
      0021C4 E0               [24]  748 	movx	a,@dptr
      0021C5 FE               [12]  749 	mov	r6,a
      0021C6 A3               [24]  750 	inc	dptr
      0021C7 E0               [24]  751 	movx	a,@dptr
      0021C8 FF               [12]  752 	mov	r7,a
      0021C9 C3               [12]  753 	clr	c
      0021CA EE               [12]  754 	mov	a,r6
      0021CB 94 04            [12]  755 	subb	a,#0x04
      0021CD EF               [12]  756 	mov	a,r7
      0021CE 64 80            [12]  757 	xrl	a,#0x80
      0021D0 94 80            [12]  758 	subb	a,#0x80
      0021D2 40 C5            [24]  759 	jc	00147$
                                    760 ;	life.c:129: i1 = 0;
      0021D4 90 80 02         [24]  761 	mov	dptr,#_i1
      0021D7 E4               [12]  762 	clr	a
      0021D8 F0               [24]  763 	movx	@dptr,a
      0021D9 A3               [24]  764 	inc	dptr
      0021DA F0               [24]  765 	movx	@dptr,a
                                    766 ;	life.c:130: while (!i0 && !i1) {
      0021DB                        767 00106$:
      0021DB 90 80 00         [24]  768 	mov	dptr,#_i0
      0021DE E0               [24]  769 	movx	a,@dptr
      0021DF F5 F0            [12]  770 	mov	b,a
      0021E1 A3               [24]  771 	inc	dptr
      0021E2 E0               [24]  772 	movx	a,@dptr
      0021E3 45 F0            [12]  773 	orl	a,b
      0021E5 60 03            [24]  774 	jz	00343$
      0021E7 02 26 FE         [24]  775 	ljmp	00108$
      0021EA                        776 00343$:
      0021EA 90 80 02         [24]  777 	mov	dptr,#_i1
      0021ED E0               [24]  778 	movx	a,@dptr
      0021EE F5 F0            [12]  779 	mov	b,a
      0021F0 A3               [24]  780 	inc	dptr
      0021F1 E0               [24]  781 	movx	a,@dptr
      0021F2 45 F0            [12]  782 	orl	a,b
      0021F4 60 03            [24]  783 	jz	00344$
      0021F6 02 26 FE         [24]  784 	ljmp	00108$
      0021F9                        785 00344$:
                                    786 ;	life.c:67: printf("\033[2J\033[m");
      0021F9 74 62            [12]  787 	mov	a,#___str_1
      0021FB C0 E0            [24]  788 	push	acc
      0021FD 74 3B            [12]  789 	mov	a,#(___str_1 >> 8)
      0021FF C0 E0            [24]  790 	push	acc
      002201 74 80            [12]  791 	mov	a,#0x80
      002203 C0 E0            [24]  792 	push	acc
      002205 12 27 8C         [24]  793 	lcall	_printf
      002208 15 81            [12]  794 	dec	sp
      00220A 15 81            [12]  795 	dec	sp
      00220C 15 81            [12]  796 	dec	sp
                                    797 ;	life.c:58: for (j = 0; j < 4; j++) {
      00220E 90 88 16         [24]  798 	mov	dptr,#_j
      002211 E4               [12]  799 	clr	a
      002212 F0               [24]  800 	movx	@dptr,a
      002213 A3               [24]  801 	inc	dptr
      002214 F0               [24]  802 	movx	@dptr,a
      002215                        803 00149$:
                                    804 ;	life.c:59: printf("%04x", generation[3 - j]);
      002215 90 88 16         [24]  805 	mov	dptr,#_j
      002218 E0               [24]  806 	movx	a,@dptr
      002219 FE               [12]  807 	mov	r6,a
      00221A A3               [24]  808 	inc	dptr
      00221B E0               [24]  809 	movx	a,@dptr
      00221C 74 03            [12]  810 	mov	a,#0x03
      00221E C3               [12]  811 	clr	c
      00221F 9E               [12]  812 	subb	a,r6
      002220 FE               [12]  813 	mov	r6,a
      002221 C2 D5            [12]  814 	clr	F0
      002223 75 F0 02         [24]  815 	mov	b,#0x02
      002226 EE               [12]  816 	mov	a,r6
      002227 30 E7 04         [24]  817 	jnb	acc.7,00345$
      00222A B2 D5            [12]  818 	cpl	F0
      00222C F4               [12]  819 	cpl	a
      00222D 04               [12]  820 	inc	a
      00222E                        821 00345$:
      00222E A4               [48]  822 	mul	ab
      00222F 30 D5 0A         [24]  823 	jnb	F0,00346$
      002232 F4               [12]  824 	cpl	a
      002233 24 01            [12]  825 	add	a,#0x01
      002235 C5 F0            [12]  826 	xch	a,b
      002237 F4               [12]  827 	cpl	a
      002238 34 00            [12]  828 	addc	a,#0x00
      00223A C5 F0            [12]  829 	xch	a,b
      00223C                        830 00346$:
      00223C 24 0E            [12]  831 	add	a,#_generation
      00223E F5 82            [12]  832 	mov	dpl,a
      002240 74 88            [12]  833 	mov	a,#(_generation >> 8)
      002242 35 F0            [12]  834 	addc	a,b
      002244 F5 83            [12]  835 	mov	dph,a
      002246 E0               [24]  836 	movx	a,@dptr
      002247 FE               [12]  837 	mov	r6,a
      002248 A3               [24]  838 	inc	dptr
      002249 E0               [24]  839 	movx	a,@dptr
      00224A FF               [12]  840 	mov	r7,a
      00224B C0 06            [24]  841 	push	ar6
      00224D C0 07            [24]  842 	push	ar7
      00224F 74 5D            [12]  843 	mov	a,#___str_0
      002251 C0 E0            [24]  844 	push	acc
      002253 74 3B            [12]  845 	mov	a,#(___str_0 >> 8)
      002255 C0 E0            [24]  846 	push	acc
      002257 74 80            [12]  847 	mov	a,#0x80
      002259 C0 E0            [24]  848 	push	acc
      00225B 12 27 8C         [24]  849 	lcall	_printf
      00225E E5 81            [12]  850 	mov	a,sp
      002260 24 FB            [12]  851 	add	a,#0xfb
      002262 F5 81            [12]  852 	mov	sp,a
                                    853 ;	life.c:60: if (j < 3) putchar(' ');
      002264 90 88 16         [24]  854 	mov	dptr,#_j
      002267 E0               [24]  855 	movx	a,@dptr
      002268 FE               [12]  856 	mov	r6,a
      002269 A3               [24]  857 	inc	dptr
      00226A E0               [24]  858 	movx	a,@dptr
      00226B FF               [12]  859 	mov	r7,a
      00226C C3               [12]  860 	clr	c
      00226D EE               [12]  861 	mov	a,r6
      00226E 94 03            [12]  862 	subb	a,#0x03
      002270 EF               [12]  863 	mov	a,r7
      002271 64 80            [12]  864 	xrl	a,#0x80
      002273 94 80            [12]  865 	subb	a,#0x80
      002275 50 06            [24]  866 	jnc	00150$
      002277 90 00 20         [24]  867 	mov	dptr,#0x0020
      00227A 12 20 75         [24]  868 	lcall	_putchar
      00227D                        869 00150$:
                                    870 ;	life.c:58: for (j = 0; j < 4; j++) {
      00227D 90 88 16         [24]  871 	mov	dptr,#_j
      002280 E0               [24]  872 	movx	a,@dptr
      002281 24 01            [12]  873 	add	a,#0x01
      002283 F0               [24]  874 	movx	@dptr,a
      002284 A3               [24]  875 	inc	dptr
      002285 E0               [24]  876 	movx	a,@dptr
      002286 34 00            [12]  877 	addc	a,#0x00
      002288 F0               [24]  878 	movx	@dptr,a
      002289 90 88 16         [24]  879 	mov	dptr,#_j
      00228C E0               [24]  880 	movx	a,@dptr
      00228D FE               [12]  881 	mov	r6,a
      00228E A3               [24]  882 	inc	dptr
      00228F E0               [24]  883 	movx	a,@dptr
      002290 FF               [12]  884 	mov	r7,a
      002291 C3               [12]  885 	clr	c
      002292 EE               [12]  886 	mov	a,r6
      002293 94 04            [12]  887 	subb	a,#0x04
      002295 EF               [12]  888 	mov	a,r7
      002296 64 80            [12]  889 	xrl	a,#0x80
      002298 94 80            [12]  890 	subb	a,#0x80
      00229A 50 03            [24]  891 	jnc	00348$
      00229C 02 22 15         [24]  892 	ljmp	00149$
      00229F                        893 00348$:
                                    894 ;	life.c:69: printf("\r\n");
      00229F 74 6A            [12]  895 	mov	a,#___str_2
      0022A1 C0 E0            [24]  896 	push	acc
      0022A3 74 3B            [12]  897 	mov	a,#(___str_2 >> 8)
      0022A5 C0 E0            [24]  898 	push	acc
      0022A7 74 80            [12]  899 	mov	a,#0x80
      0022A9 C0 E0            [24]  900 	push	acc
      0022AB 12 27 8C         [24]  901 	lcall	_printf
      0022AE 15 81            [12]  902 	dec	sp
      0022B0 15 81            [12]  903 	dec	sp
      0022B2 15 81            [12]  904 	dec	sp
                                    905 ;	life.c:49: for (j = 0; j < 4; j++) {
      0022B4 90 88 16         [24]  906 	mov	dptr,#_j
      0022B7 E4               [12]  907 	clr	a
      0022B8 F0               [24]  908 	movx	@dptr,a
      0022B9 A3               [24]  909 	inc	dptr
      0022BA F0               [24]  910 	movx	@dptr,a
      0022BB                        911 00151$:
                                    912 ;	life.c:50: generation[j]++;
      0022BB 90 88 16         [24]  913 	mov	dptr,#_j
      0022BE E0               [24]  914 	movx	a,@dptr
      0022BF FE               [12]  915 	mov	r6,a
      0022C0 A3               [24]  916 	inc	dptr
      0022C1 E0               [24]  917 	movx	a,@dptr
      0022C2 FF               [12]  918 	mov	r7,a
      0022C3 EE               [12]  919 	mov	a,r6
      0022C4 2E               [12]  920 	add	a,r6
      0022C5 FE               [12]  921 	mov	r6,a
      0022C6 EF               [12]  922 	mov	a,r7
      0022C7 33               [12]  923 	rlc	a
      0022C8 FF               [12]  924 	mov	r7,a
      0022C9 EE               [12]  925 	mov	a,r6
      0022CA 24 0E            [12]  926 	add	a,#_generation
      0022CC FE               [12]  927 	mov	r6,a
      0022CD EF               [12]  928 	mov	a,r7
      0022CE 34 88            [12]  929 	addc	a,#(_generation >> 8)
      0022D0 FF               [12]  930 	mov	r7,a
      0022D1 8E 82            [24]  931 	mov	dpl,r6
      0022D3 8F 83            [24]  932 	mov	dph,r7
      0022D5 E0               [24]  933 	movx	a,@dptr
      0022D6 FC               [12]  934 	mov	r4,a
      0022D7 A3               [24]  935 	inc	dptr
      0022D8 E0               [24]  936 	movx	a,@dptr
      0022D9 FD               [12]  937 	mov	r5,a
      0022DA 0C               [12]  938 	inc	r4
      0022DB BC 00 01         [24]  939 	cjne	r4,#0x00,00349$
      0022DE 0D               [12]  940 	inc	r5
      0022DF                        941 00349$:
      0022DF 8E 82            [24]  942 	mov	dpl,r6
      0022E1 8F 83            [24]  943 	mov	dph,r7
      0022E3 EC               [12]  944 	mov	a,r4
      0022E4 F0               [24]  945 	movx	@dptr,a
      0022E5 ED               [12]  946 	mov	a,r5
      0022E6 A3               [24]  947 	inc	dptr
      0022E7 F0               [24]  948 	movx	@dptr,a
                                    949 ;	life.c:51: if (generation[j]) break;
      0022E8 90 88 16         [24]  950 	mov	dptr,#_j
      0022EB E0               [24]  951 	movx	a,@dptr
      0022EC FE               [12]  952 	mov	r6,a
      0022ED A3               [24]  953 	inc	dptr
      0022EE E0               [24]  954 	movx	a,@dptr
      0022EF FF               [12]  955 	mov	r7,a
      0022F0 EE               [12]  956 	mov	a,r6
      0022F1 2E               [12]  957 	add	a,r6
      0022F2 FC               [12]  958 	mov	r4,a
      0022F3 EF               [12]  959 	mov	a,r7
      0022F4 33               [12]  960 	rlc	a
      0022F5 FD               [12]  961 	mov	r5,a
      0022F6 EC               [12]  962 	mov	a,r4
      0022F7 24 0E            [12]  963 	add	a,#_generation
      0022F9 F5 82            [12]  964 	mov	dpl,a
      0022FB ED               [12]  965 	mov	a,r5
      0022FC 34 88            [12]  966 	addc	a,#(_generation >> 8)
      0022FE F5 83            [12]  967 	mov	dph,a
      002300 E0               [24]  968 	movx	a,@dptr
      002301 FC               [12]  969 	mov	r4,a
      002302 A3               [24]  970 	inc	dptr
      002303 E0               [24]  971 	movx	a,@dptr
      002304 FD               [12]  972 	mov	r5,a
      002305 4C               [12]  973 	orl	a,r4
      002306 70 1E            [24]  974 	jnz	00123$
                                    975 ;	life.c:49: for (j = 0; j < 4; j++) {
      002308 90 88 16         [24]  976 	mov	dptr,#_j
      00230B 74 01            [12]  977 	mov	a,#0x01
      00230D 2E               [12]  978 	add	a,r6
      00230E F0               [24]  979 	movx	@dptr,a
      00230F E4               [12]  980 	clr	a
      002310 3F               [12]  981 	addc	a,r7
      002311 A3               [24]  982 	inc	dptr
      002312 F0               [24]  983 	movx	@dptr,a
      002313 90 88 16         [24]  984 	mov	dptr,#_j
      002316 E0               [24]  985 	movx	a,@dptr
      002317 FE               [12]  986 	mov	r6,a
      002318 A3               [24]  987 	inc	dptr
      002319 E0               [24]  988 	movx	a,@dptr
      00231A FF               [12]  989 	mov	r7,a
      00231B C3               [12]  990 	clr	c
      00231C EE               [12]  991 	mov	a,r6
      00231D 94 04            [12]  992 	subb	a,#0x04
      00231F EF               [12]  993 	mov	a,r7
      002320 64 80            [12]  994 	xrl	a,#0x80
      002322 94 80            [12]  995 	subb	a,#0x80
      002324 40 95            [24]  996 	jc	00151$
                                    997 ;	life.c:70: updategen();
      002326                        998 00123$:
                                    999 ;	life.c:72: for (x = 0; x < W; x++) {
      002326 90 88 04         [24] 1000 	mov	dptr,#_x
      002329 E4               [12] 1001 	clr	a
      00232A F0               [24] 1002 	movx	@dptr,a
      00232B A3               [24] 1003 	inc	dptr
      00232C F0               [24] 1004 	movx	@dptr,a
      00232D                       1005 00155$:
                                   1006 ;	life.c:73: for (y = 0; y < H; y++)
      00232D 90 88 06         [24] 1007 	mov	dptr,#_y
      002330 E4               [12] 1008 	clr	a
      002331 F0               [24] 1009 	movx	@dptr,a
      002332 A3               [24] 1010 	inc	dptr
      002333 F0               [24] 1011 	movx	@dptr,a
      002334                       1012 00153$:
                                   1013 ;	life.c:74: if (u[y][x]) printf("\033[01m[]\033[m");
      002334 90 88 06         [24] 1014 	mov	dptr,#_y
      002337 E0               [24] 1015 	movx	a,@dptr
      002338 FE               [12] 1016 	mov	r6,a
      002339 A3               [24] 1017 	inc	dptr
      00233A E0               [24] 1018 	movx	a,@dptr
      00233B C4               [12] 1019 	swap	a
      00233C 23               [12] 1020 	rl	a
      00233D 54 E0            [12] 1021 	anl	a,#0xe0
      00233F CE               [12] 1022 	xch	a,r6
      002340 C4               [12] 1023 	swap	a
      002341 23               [12] 1024 	rl	a
      002342 CE               [12] 1025 	xch	a,r6
      002343 6E               [12] 1026 	xrl	a,r6
      002344 CE               [12] 1027 	xch	a,r6
      002345 54 E0            [12] 1028 	anl	a,#0xe0
      002347 CE               [12] 1029 	xch	a,r6
      002348 6E               [12] 1030 	xrl	a,r6
      002349 FF               [12] 1031 	mov	r7,a
      00234A EE               [12] 1032 	mov	a,r6
      00234B 24 04            [12] 1033 	add	a,#_u
      00234D FE               [12] 1034 	mov	r6,a
      00234E EF               [12] 1035 	mov	a,r7
      00234F 34 80            [12] 1036 	addc	a,#(_u >> 8)
      002351 FF               [12] 1037 	mov	r7,a
      002352 90 88 04         [24] 1038 	mov	dptr,#_x
      002355 E0               [24] 1039 	movx	a,@dptr
      002356 FC               [12] 1040 	mov	r4,a
      002357 A3               [24] 1041 	inc	dptr
      002358 E0               [24] 1042 	movx	a,@dptr
      002359 FD               [12] 1043 	mov	r5,a
      00235A EC               [12] 1044 	mov	a,r4
      00235B 2E               [12] 1045 	add	a,r6
      00235C FE               [12] 1046 	mov	r6,a
      00235D ED               [12] 1047 	mov	a,r5
      00235E 3F               [12] 1048 	addc	a,r7
      00235F FF               [12] 1049 	mov	r7,a
      002360 8E 82            [24] 1050 	mov	dpl,r6
      002362 8F 83            [24] 1051 	mov	dph,r7
      002364 E0               [24] 1052 	movx	a,@dptr
      002365 60 17            [24] 1053 	jz	00125$
      002367 74 6D            [12] 1054 	mov	a,#___str_3
      002369 C0 E0            [24] 1055 	push	acc
      00236B 74 3B            [12] 1056 	mov	a,#(___str_3 >> 8)
      00236D C0 E0            [24] 1057 	push	acc
      00236F 74 80            [12] 1058 	mov	a,#0x80
      002371 C0 E0            [24] 1059 	push	acc
      002373 12 27 8C         [24] 1060 	lcall	_printf
      002376 15 81            [12] 1061 	dec	sp
      002378 15 81            [12] 1062 	dec	sp
      00237A 15 81            [12] 1063 	dec	sp
      00237C 80 15            [24] 1064 	sjmp	00154$
      00237E                       1065 00125$:
                                   1066 ;	life.c:75: else printf("--");
      00237E 74 78            [12] 1067 	mov	a,#___str_4
      002380 C0 E0            [24] 1068 	push	acc
      002382 74 3B            [12] 1069 	mov	a,#(___str_4 >> 8)
      002384 C0 E0            [24] 1070 	push	acc
      002386 74 80            [12] 1071 	mov	a,#0x80
      002388 C0 E0            [24] 1072 	push	acc
      00238A 12 27 8C         [24] 1073 	lcall	_printf
      00238D 15 81            [12] 1074 	dec	sp
      00238F 15 81            [12] 1075 	dec	sp
      002391 15 81            [12] 1076 	dec	sp
      002393                       1077 00154$:
                                   1078 ;	life.c:73: for (y = 0; y < H; y++)
      002393 90 88 06         [24] 1079 	mov	dptr,#_y
      002396 E0               [24] 1080 	movx	a,@dptr
      002397 24 01            [12] 1081 	add	a,#0x01
      002399 F0               [24] 1082 	movx	@dptr,a
      00239A A3               [24] 1083 	inc	dptr
      00239B E0               [24] 1084 	movx	a,@dptr
      00239C 34 00            [12] 1085 	addc	a,#0x00
      00239E F0               [24] 1086 	movx	@dptr,a
      00239F 90 88 06         [24] 1087 	mov	dptr,#_y
      0023A2 E0               [24] 1088 	movx	a,@dptr
      0023A3 FE               [12] 1089 	mov	r6,a
      0023A4 A3               [24] 1090 	inc	dptr
      0023A5 E0               [24] 1091 	movx	a,@dptr
      0023A6 FF               [12] 1092 	mov	r7,a
      0023A7 C3               [12] 1093 	clr	c
      0023A8 EE               [12] 1094 	mov	a,r6
      0023A9 94 20            [12] 1095 	subb	a,#0x20
      0023AB EF               [12] 1096 	mov	a,r7
      0023AC 64 80            [12] 1097 	xrl	a,#0x80
      0023AE 94 80            [12] 1098 	subb	a,#0x80
      0023B0 50 03            [24] 1099 	jnc	00353$
      0023B2 02 23 34         [24] 1100 	ljmp	00153$
      0023B5                       1101 00353$:
                                   1102 ;	life.c:76: printf("\r\n");
      0023B5 74 6A            [12] 1103 	mov	a,#___str_2
      0023B7 C0 E0            [24] 1104 	push	acc
      0023B9 74 3B            [12] 1105 	mov	a,#(___str_2 >> 8)
      0023BB C0 E0            [24] 1106 	push	acc
      0023BD 74 80            [12] 1107 	mov	a,#0x80
      0023BF C0 E0            [24] 1108 	push	acc
      0023C1 12 27 8C         [24] 1109 	lcall	_printf
      0023C4 15 81            [12] 1110 	dec	sp
      0023C6 15 81            [12] 1111 	dec	sp
      0023C8 15 81            [12] 1112 	dec	sp
                                   1113 ;	life.c:72: for (x = 0; x < W; x++) {
      0023CA 90 88 04         [24] 1114 	mov	dptr,#_x
      0023CD E0               [24] 1115 	movx	a,@dptr
      0023CE 24 01            [12] 1116 	add	a,#0x01
      0023D0 F0               [24] 1117 	movx	@dptr,a
      0023D1 A3               [24] 1118 	inc	dptr
      0023D2 E0               [24] 1119 	movx	a,@dptr
      0023D3 34 00            [12] 1120 	addc	a,#0x00
      0023D5 F0               [24] 1121 	movx	@dptr,a
      0023D6 90 88 04         [24] 1122 	mov	dptr,#_x
      0023D9 E0               [24] 1123 	movx	a,@dptr
      0023DA FE               [12] 1124 	mov	r6,a
      0023DB A3               [24] 1125 	inc	dptr
      0023DC E0               [24] 1126 	movx	a,@dptr
      0023DD FF               [12] 1127 	mov	r7,a
      0023DE C3               [12] 1128 	clr	c
      0023DF EE               [12] 1129 	mov	a,r6
      0023E0 94 20            [12] 1130 	subb	a,#0x20
      0023E2 EF               [12] 1131 	mov	a,r7
      0023E3 64 80            [12] 1132 	xrl	a,#0x80
      0023E5 94 80            [12] 1133 	subb	a,#0x80
      0023E7 50 03            [24] 1134 	jnc	00354$
      0023E9 02 23 2D         [24] 1135 	ljmp	00155$
      0023EC                       1136 00354$:
                                   1137 ;	life.c:83: fixed = 1;
      0023EC 90 88 18         [24] 1138 	mov	dptr,#_fixed
      0023EF 74 01            [12] 1139 	mov	a,#0x01
      0023F1 F0               [24] 1140 	movx	@dptr,a
      0023F2 E4               [12] 1141 	clr	a
      0023F3 A3               [24] 1142 	inc	dptr
      0023F4 F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	life.c:85: for (y = 0; y < H; y++) {
      0023F5 90 88 06         [24] 1145 	mov	dptr,#_y
      0023F8 F0               [24] 1146 	movx	@dptr,a
      0023F9 A3               [24] 1147 	inc	dptr
      0023FA F0               [24] 1148 	movx	@dptr,a
      0023FB                       1149 00165$:
                                   1150 ;	life.c:86: for (x = 0; x < W; x++) {
      0023FB 90 88 04         [24] 1151 	mov	dptr,#_x
      0023FE E4               [12] 1152 	clr	a
      0023FF F0               [24] 1153 	movx	@dptr,a
      002400 A3               [24] 1154 	inc	dptr
      002401 F0               [24] 1155 	movx	@dptr,a
      002402                       1156 00163$:
                                   1157 ;	life.c:87: n = 0;
      002402 90 88 0C         [24] 1158 	mov	dptr,#_n
      002405 E4               [12] 1159 	clr	a
      002406 F0               [24] 1160 	movx	@dptr,a
      002407 A3               [24] 1161 	inc	dptr
      002408 F0               [24] 1162 	movx	@dptr,a
                                   1163 ;	life.c:88: for (y1 = y - 1; y1 <= y + 1; y1++)
      002409 90 88 06         [24] 1164 	mov	dptr,#_y
      00240C E0               [24] 1165 	movx	a,@dptr
      00240D FE               [12] 1166 	mov	r6,a
      00240E A3               [24] 1167 	inc	dptr
      00240F E0               [24] 1168 	movx	a,@dptr
      002410 FF               [12] 1169 	mov	r7,a
      002411 1E               [12] 1170 	dec	r6
      002412 BE FF 01         [24] 1171 	cjne	r6,#0xff,00355$
      002415 1F               [12] 1172 	dec	r7
      002416                       1173 00355$:
      002416 90 88 0A         [24] 1174 	mov	dptr,#_y1
      002419 EE               [12] 1175 	mov	a,r6
      00241A F0               [24] 1176 	movx	@dptr,a
      00241B EF               [12] 1177 	mov	a,r7
      00241C A3               [24] 1178 	inc	dptr
      00241D F0               [24] 1179 	movx	@dptr,a
      00241E                       1180 00161$:
      00241E 90 88 06         [24] 1181 	mov	dptr,#_y
      002421 E0               [24] 1182 	movx	a,@dptr
      002422 FE               [12] 1183 	mov	r6,a
      002423 A3               [24] 1184 	inc	dptr
      002424 E0               [24] 1185 	movx	a,@dptr
      002425 FF               [12] 1186 	mov	r7,a
      002426 74 01            [12] 1187 	mov	a,#0x01
      002428 2E               [12] 1188 	add	a,r6
      002429 FC               [12] 1189 	mov	r4,a
      00242A E4               [12] 1190 	clr	a
      00242B 3F               [12] 1191 	addc	a,r7
      00242C FD               [12] 1192 	mov	r5,a
      00242D 90 88 0A         [24] 1193 	mov	dptr,#_y1
      002430 E0               [24] 1194 	movx	a,@dptr
      002431 FA               [12] 1195 	mov	r2,a
      002432 A3               [24] 1196 	inc	dptr
      002433 E0               [24] 1197 	movx	a,@dptr
      002434 FB               [12] 1198 	mov	r3,a
      002435 C3               [12] 1199 	clr	c
      002436 EC               [12] 1200 	mov	a,r4
      002437 9A               [12] 1201 	subb	a,r2
      002438 ED               [12] 1202 	mov	a,r5
      002439 64 80            [12] 1203 	xrl	a,#0x80
      00243B 8B F0            [24] 1204 	mov	b,r3
      00243D 63 F0 80         [24] 1205 	xrl	b,#0x80
      002440 95 F0            [12] 1206 	subb	a,b
      002442 50 03            [24] 1207 	jnc	00356$
      002444 02 25 24         [24] 1208 	ljmp	00133$
      002447                       1209 00356$:
                                   1210 ;	life.c:89: for (x1 = x - 1; x1 <= x + 1; x1++)
      002447 90 88 04         [24] 1211 	mov	dptr,#_x
      00244A E0               [24] 1212 	movx	a,@dptr
      00244B FC               [12] 1213 	mov	r4,a
      00244C A3               [24] 1214 	inc	dptr
      00244D E0               [24] 1215 	movx	a,@dptr
      00244E FD               [12] 1216 	mov	r5,a
      00244F 1C               [12] 1217 	dec	r4
      002450 BC FF 01         [24] 1218 	cjne	r4,#0xff,00357$
      002453 1D               [12] 1219 	dec	r5
      002454                       1220 00357$:
      002454 90 88 08         [24] 1221 	mov	dptr,#_x1
      002457 EC               [12] 1222 	mov	a,r4
      002458 F0               [24] 1223 	movx	@dptr,a
      002459 ED               [12] 1224 	mov	a,r5
      00245A A3               [24] 1225 	inc	dptr
      00245B F0               [24] 1226 	movx	@dptr,a
      00245C                       1227 00158$:
      00245C 90 88 04         [24] 1228 	mov	dptr,#_x
      00245F E0               [24] 1229 	movx	a,@dptr
      002460 FC               [12] 1230 	mov	r4,a
      002461 A3               [24] 1231 	inc	dptr
      002462 E0               [24] 1232 	movx	a,@dptr
      002463 FD               [12] 1233 	mov	r5,a
      002464 0C               [12] 1234 	inc	r4
      002465 BC 00 01         [24] 1235 	cjne	r4,#0x00,00358$
      002468 0D               [12] 1236 	inc	r5
      002469                       1237 00358$:
      002469 90 88 08         [24] 1238 	mov	dptr,#_x1
      00246C E0               [24] 1239 	movx	a,@dptr
      00246D FA               [12] 1240 	mov	r2,a
      00246E A3               [24] 1241 	inc	dptr
      00246F E0               [24] 1242 	movx	a,@dptr
      002470 FB               [12] 1243 	mov	r3,a
      002471 C3               [12] 1244 	clr	c
      002472 EC               [12] 1245 	mov	a,r4
      002473 9A               [12] 1246 	subb	a,r2
      002474 ED               [12] 1247 	mov	a,r5
      002475 64 80            [12] 1248 	xrl	a,#0x80
      002477 8B F0            [24] 1249 	mov	b,r3
      002479 63 F0 80         [24] 1250 	xrl	b,#0x80
      00247C 95 F0            [12] 1251 	subb	a,b
      00247E 50 03            [24] 1252 	jnc	00359$
      002480 02 25 15         [24] 1253 	ljmp	00162$
      002483                       1254 00359$:
                                   1255 ;	life.c:90: if (u[(y1 + H) % H][(x1 + W) % W])
      002483 90 88 0A         [24] 1256 	mov	dptr,#_y1
      002486 E0               [24] 1257 	movx	a,@dptr
      002487 FC               [12] 1258 	mov	r4,a
      002488 A3               [24] 1259 	inc	dptr
      002489 E0               [24] 1260 	movx	a,@dptr
      00248A FD               [12] 1261 	mov	r5,a
      00248B 74 20            [12] 1262 	mov	a,#0x20
      00248D 2C               [12] 1263 	add	a,r4
      00248E FC               [12] 1264 	mov	r4,a
      00248F E4               [12] 1265 	clr	a
      002490 3D               [12] 1266 	addc	a,r5
      002491 FD               [12] 1267 	mov	r5,a
      002492 C0 03            [24] 1268 	push	ar3
      002494 C0 02            [24] 1269 	push	ar2
      002496 74 20            [12] 1270 	mov	a,#0x20
      002498 C0 E0            [24] 1271 	push	acc
      00249A E4               [12] 1272 	clr	a
      00249B C0 E0            [24] 1273 	push	acc
      00249D 8C 82            [24] 1274 	mov	dpl,r4
      00249F 8D 83            [24] 1275 	mov	dph,r5
      0024A1 12 27 C5         [24] 1276 	lcall	__modsint
      0024A4 AC 82            [24] 1277 	mov	r4,dpl
      0024A6 AD 83            [24] 1278 	mov	r5,dph
      0024A8 15 81            [12] 1279 	dec	sp
      0024AA 15 81            [12] 1280 	dec	sp
      0024AC D0 02            [24] 1281 	pop	ar2
      0024AE D0 03            [24] 1282 	pop	ar3
      0024B0 ED               [12] 1283 	mov	a,r5
      0024B1 C4               [12] 1284 	swap	a
      0024B2 23               [12] 1285 	rl	a
      0024B3 54 E0            [12] 1286 	anl	a,#0xe0
      0024B5 CC               [12] 1287 	xch	a,r4
      0024B6 C4               [12] 1288 	swap	a
      0024B7 23               [12] 1289 	rl	a
      0024B8 CC               [12] 1290 	xch	a,r4
      0024B9 6C               [12] 1291 	xrl	a,r4
      0024BA CC               [12] 1292 	xch	a,r4
      0024BB 54 E0            [12] 1293 	anl	a,#0xe0
      0024BD CC               [12] 1294 	xch	a,r4
      0024BE 6C               [12] 1295 	xrl	a,r4
      0024BF FD               [12] 1296 	mov	r5,a
      0024C0 EC               [12] 1297 	mov	a,r4
      0024C1 24 04            [12] 1298 	add	a,#_u
      0024C3 FC               [12] 1299 	mov	r4,a
      0024C4 ED               [12] 1300 	mov	a,r5
      0024C5 34 80            [12] 1301 	addc	a,#(_u >> 8)
      0024C7 FD               [12] 1302 	mov	r5,a
      0024C8 74 20            [12] 1303 	mov	a,#0x20
      0024CA 2A               [12] 1304 	add	a,r2
      0024CB FA               [12] 1305 	mov	r2,a
      0024CC E4               [12] 1306 	clr	a
      0024CD 3B               [12] 1307 	addc	a,r3
      0024CE FB               [12] 1308 	mov	r3,a
      0024CF C0 05            [24] 1309 	push	ar5
      0024D1 C0 04            [24] 1310 	push	ar4
      0024D3 74 20            [12] 1311 	mov	a,#0x20
      0024D5 C0 E0            [24] 1312 	push	acc
      0024D7 E4               [12] 1313 	clr	a
      0024D8 C0 E0            [24] 1314 	push	acc
      0024DA 8A 82            [24] 1315 	mov	dpl,r2
      0024DC 8B 83            [24] 1316 	mov	dph,r3
      0024DE 12 27 C5         [24] 1317 	lcall	__modsint
      0024E1 AA 82            [24] 1318 	mov	r2,dpl
      0024E3 AB 83            [24] 1319 	mov	r3,dph
      0024E5 15 81            [12] 1320 	dec	sp
      0024E7 15 81            [12] 1321 	dec	sp
      0024E9 D0 04            [24] 1322 	pop	ar4
      0024EB D0 05            [24] 1323 	pop	ar5
      0024ED EA               [12] 1324 	mov	a,r2
      0024EE 2C               [12] 1325 	add	a,r4
      0024EF FC               [12] 1326 	mov	r4,a
      0024F0 EB               [12] 1327 	mov	a,r3
      0024F1 3D               [12] 1328 	addc	a,r5
      0024F2 FD               [12] 1329 	mov	r5,a
      0024F3 8C 82            [24] 1330 	mov	dpl,r4
      0024F5 8D 83            [24] 1331 	mov	dph,r5
      0024F7 E0               [24] 1332 	movx	a,@dptr
      0024F8 60 0C            [24] 1333 	jz	00159$
                                   1334 ;	life.c:91: n++;
      0024FA 90 88 0C         [24] 1335 	mov	dptr,#_n
      0024FD E0               [24] 1336 	movx	a,@dptr
      0024FE 24 01            [12] 1337 	add	a,#0x01
      002500 F0               [24] 1338 	movx	@dptr,a
      002501 A3               [24] 1339 	inc	dptr
      002502 E0               [24] 1340 	movx	a,@dptr
      002503 34 00            [12] 1341 	addc	a,#0x00
      002505 F0               [24] 1342 	movx	@dptr,a
      002506                       1343 00159$:
                                   1344 ;	life.c:89: for (x1 = x - 1; x1 <= x + 1; x1++)
      002506 90 88 08         [24] 1345 	mov	dptr,#_x1
      002509 E0               [24] 1346 	movx	a,@dptr
      00250A 24 01            [12] 1347 	add	a,#0x01
      00250C F0               [24] 1348 	movx	@dptr,a
      00250D A3               [24] 1349 	inc	dptr
      00250E E0               [24] 1350 	movx	a,@dptr
      00250F 34 00            [12] 1351 	addc	a,#0x00
      002511 F0               [24] 1352 	movx	@dptr,a
      002512 02 24 5C         [24] 1353 	ljmp	00158$
      002515                       1354 00162$:
                                   1355 ;	life.c:88: for (y1 = y - 1; y1 <= y + 1; y1++)
      002515 90 88 0A         [24] 1356 	mov	dptr,#_y1
      002518 E0               [24] 1357 	movx	a,@dptr
      002519 24 01            [12] 1358 	add	a,#0x01
      00251B F0               [24] 1359 	movx	@dptr,a
      00251C A3               [24] 1360 	inc	dptr
      00251D E0               [24] 1361 	movx	a,@dptr
      00251E 34 00            [12] 1362 	addc	a,#0x00
      002520 F0               [24] 1363 	movx	@dptr,a
      002521 02 24 1E         [24] 1364 	ljmp	00161$
      002524                       1365 00133$:
                                   1366 ;	life.c:93: if (u[y][x]) n--;
      002524 EF               [12] 1367 	mov	a,r7
      002525 C4               [12] 1368 	swap	a
      002526 23               [12] 1369 	rl	a
      002527 54 E0            [12] 1370 	anl	a,#0xe0
      002529 CE               [12] 1371 	xch	a,r6
      00252A C4               [12] 1372 	swap	a
      00252B 23               [12] 1373 	rl	a
      00252C CE               [12] 1374 	xch	a,r6
      00252D 6E               [12] 1375 	xrl	a,r6
      00252E CE               [12] 1376 	xch	a,r6
      00252F 54 E0            [12] 1377 	anl	a,#0xe0
      002531 CE               [12] 1378 	xch	a,r6
      002532 6E               [12] 1379 	xrl	a,r6
      002533 FF               [12] 1380 	mov	r7,a
      002534 EE               [12] 1381 	mov	a,r6
      002535 24 04            [12] 1382 	add	a,#_u
      002537 FE               [12] 1383 	mov	r6,a
      002538 EF               [12] 1384 	mov	a,r7
      002539 34 80            [12] 1385 	addc	a,#(_u >> 8)
      00253B FF               [12] 1386 	mov	r7,a
      00253C 90 88 04         [24] 1387 	mov	dptr,#_x
      00253F E0               [24] 1388 	movx	a,@dptr
      002540 FC               [12] 1389 	mov	r4,a
      002541 A3               [24] 1390 	inc	dptr
      002542 E0               [24] 1391 	movx	a,@dptr
      002543 FD               [12] 1392 	mov	r5,a
      002544 EC               [12] 1393 	mov	a,r4
      002545 2E               [12] 1394 	add	a,r6
      002546 FE               [12] 1395 	mov	r6,a
      002547 ED               [12] 1396 	mov	a,r5
      002548 3F               [12] 1397 	addc	a,r7
      002549 FF               [12] 1398 	mov	r7,a
      00254A 8E 82            [24] 1399 	mov	dpl,r6
      00254C 8F 83            [24] 1400 	mov	dph,r7
      00254E E0               [24] 1401 	movx	a,@dptr
      00254F 60 14            [24] 1402 	jz	00135$
      002551 90 88 0C         [24] 1403 	mov	dptr,#_n
      002554 E0               [24] 1404 	movx	a,@dptr
      002555 24 FF            [12] 1405 	add	a,#0xff
      002557 FE               [12] 1406 	mov	r6,a
      002558 A3               [24] 1407 	inc	dptr
      002559 E0               [24] 1408 	movx	a,@dptr
      00255A 34 FF            [12] 1409 	addc	a,#0xff
      00255C FF               [12] 1410 	mov	r7,a
      00255D 90 88 0C         [24] 1411 	mov	dptr,#_n
      002560 EE               [12] 1412 	mov	a,r6
      002561 F0               [24] 1413 	movx	@dptr,a
      002562 EF               [12] 1414 	mov	a,r7
      002563 A3               [24] 1415 	inc	dptr
      002564 F0               [24] 1416 	movx	@dptr,a
      002565                       1417 00135$:
                                   1418 ;	life.c:94: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      002565 90 88 06         [24] 1419 	mov	dptr,#_y
      002568 E0               [24] 1420 	movx	a,@dptr
      002569 FE               [12] 1421 	mov	r6,a
      00256A A3               [24] 1422 	inc	dptr
      00256B E0               [24] 1423 	movx	a,@dptr
      00256C C4               [12] 1424 	swap	a
      00256D 23               [12] 1425 	rl	a
      00256E 54 E0            [12] 1426 	anl	a,#0xe0
      002570 CE               [12] 1427 	xch	a,r6
      002571 C4               [12] 1428 	swap	a
      002572 23               [12] 1429 	rl	a
      002573 CE               [12] 1430 	xch	a,r6
      002574 6E               [12] 1431 	xrl	a,r6
      002575 CE               [12] 1432 	xch	a,r6
      002576 54 E0            [12] 1433 	anl	a,#0xe0
      002578 CE               [12] 1434 	xch	a,r6
      002579 6E               [12] 1435 	xrl	a,r6
      00257A FF               [12] 1436 	mov	r7,a
      00257B EE               [12] 1437 	mov	a,r6
      00257C 24 04            [12] 1438 	add	a,#_nu
      00257E FC               [12] 1439 	mov	r4,a
      00257F EF               [12] 1440 	mov	a,r7
      002580 34 84            [12] 1441 	addc	a,#(_nu >> 8)
      002582 FD               [12] 1442 	mov	r5,a
      002583 90 88 04         [24] 1443 	mov	dptr,#_x
      002586 E0               [24] 1444 	movx	a,@dptr
      002587 FA               [12] 1445 	mov	r2,a
      002588 A3               [24] 1446 	inc	dptr
      002589 E0               [24] 1447 	movx	a,@dptr
      00258A FB               [12] 1448 	mov	r3,a
      00258B EA               [12] 1449 	mov	a,r2
      00258C 2C               [12] 1450 	add	a,r4
      00258D FC               [12] 1451 	mov	r4,a
      00258E EB               [12] 1452 	mov	a,r3
      00258F 3D               [12] 1453 	addc	a,r5
      002590 FD               [12] 1454 	mov	r5,a
      002591 90 88 0C         [24] 1455 	mov	dptr,#_n
      002594 E0               [24] 1456 	movx	a,@dptr
      002595 F8               [12] 1457 	mov	r0,a
      002596 A3               [24] 1458 	inc	dptr
      002597 E0               [24] 1459 	movx	a,@dptr
      002598 F9               [12] 1460 	mov	r1,a
      002599 B8 03 05         [24] 1461 	cjne	r0,#0x03,00362$
      00259C B9 00 02         [24] 1462 	cjne	r1,#0x00,00362$
      00259F 80 1F            [24] 1463 	sjmp	00174$
      0025A1                       1464 00362$:
      0025A1 B8 02 18         [24] 1465 	cjne	r0,#0x02,00173$
      0025A4 B9 00 15         [24] 1466 	cjne	r1,#0x00,00173$
      0025A7 EE               [12] 1467 	mov	a,r6
      0025A8 24 04            [12] 1468 	add	a,#_u
      0025AA FE               [12] 1469 	mov	r6,a
      0025AB EF               [12] 1470 	mov	a,r7
      0025AC 34 80            [12] 1471 	addc	a,#(_u >> 8)
      0025AE FF               [12] 1472 	mov	r7,a
      0025AF EA               [12] 1473 	mov	a,r2
      0025B0 2E               [12] 1474 	add	a,r6
      0025B1 FA               [12] 1475 	mov	r2,a
      0025B2 EB               [12] 1476 	mov	a,r3
      0025B3 3F               [12] 1477 	addc	a,r7
      0025B4 FB               [12] 1478 	mov	r3,a
      0025B5 8A 82            [24] 1479 	mov	dpl,r2
      0025B7 8B 83            [24] 1480 	mov	dph,r3
      0025B9 E0               [24] 1481 	movx	a,@dptr
      0025BA 70 04            [24] 1482 	jnz	00174$
      0025BC                       1483 00173$:
                                   1484 ;	assignBit
      0025BC C2 00            [12] 1485 	clr	b0
      0025BE 80 02            [24] 1486 	sjmp	00175$
      0025C0                       1487 00174$:
                                   1488 ;	assignBit
      0025C0 D2 00            [12] 1489 	setb	b0
      0025C2                       1490 00175$:
      0025C2 A2 00            [12] 1491 	mov	c,b0
      0025C4 E4               [12] 1492 	clr	a
      0025C5 33               [12] 1493 	rlc	a
      0025C6 8C 82            [24] 1494 	mov	dpl,r4
      0025C8 8D 83            [24] 1495 	mov	dph,r5
      0025CA F0               [24] 1496 	movx	@dptr,a
                                   1497 ;	life.c:86: for (x = 0; x < W; x++) {
      0025CB 90 88 04         [24] 1498 	mov	dptr,#_x
      0025CE E0               [24] 1499 	movx	a,@dptr
      0025CF 24 01            [12] 1500 	add	a,#0x01
      0025D1 F0               [24] 1501 	movx	@dptr,a
      0025D2 A3               [24] 1502 	inc	dptr
      0025D3 E0               [24] 1503 	movx	a,@dptr
      0025D4 34 00            [12] 1504 	addc	a,#0x00
      0025D6 F0               [24] 1505 	movx	@dptr,a
      0025D7 90 88 04         [24] 1506 	mov	dptr,#_x
      0025DA E0               [24] 1507 	movx	a,@dptr
      0025DB FE               [12] 1508 	mov	r6,a
      0025DC A3               [24] 1509 	inc	dptr
      0025DD E0               [24] 1510 	movx	a,@dptr
      0025DE FF               [12] 1511 	mov	r7,a
      0025DF C3               [12] 1512 	clr	c
      0025E0 EE               [12] 1513 	mov	a,r6
      0025E1 94 20            [12] 1514 	subb	a,#0x20
      0025E3 EF               [12] 1515 	mov	a,r7
      0025E4 64 80            [12] 1516 	xrl	a,#0x80
      0025E6 94 80            [12] 1517 	subb	a,#0x80
      0025E8 50 03            [24] 1518 	jnc	00366$
      0025EA 02 24 02         [24] 1519 	ljmp	00163$
      0025ED                       1520 00366$:
                                   1521 ;	life.c:85: for (y = 0; y < H; y++) {
      0025ED 90 88 06         [24] 1522 	mov	dptr,#_y
      0025F0 E0               [24] 1523 	movx	a,@dptr
      0025F1 24 01            [12] 1524 	add	a,#0x01
      0025F3 F0               [24] 1525 	movx	@dptr,a
      0025F4 A3               [24] 1526 	inc	dptr
      0025F5 E0               [24] 1527 	movx	a,@dptr
      0025F6 34 00            [12] 1528 	addc	a,#0x00
      0025F8 F0               [24] 1529 	movx	@dptr,a
      0025F9 90 88 06         [24] 1530 	mov	dptr,#_y
      0025FC E0               [24] 1531 	movx	a,@dptr
      0025FD FE               [12] 1532 	mov	r6,a
      0025FE A3               [24] 1533 	inc	dptr
      0025FF E0               [24] 1534 	movx	a,@dptr
      002600 FF               [12] 1535 	mov	r7,a
      002601 C3               [12] 1536 	clr	c
      002602 EE               [12] 1537 	mov	a,r6
      002603 94 20            [12] 1538 	subb	a,#0x20
      002605 EF               [12] 1539 	mov	a,r7
      002606 64 80            [12] 1540 	xrl	a,#0x80
      002608 94 80            [12] 1541 	subb	a,#0x80
      00260A 50 03            [24] 1542 	jnc	00367$
      00260C 02 23 FB         [24] 1543 	ljmp	00165$
      00260F                       1544 00367$:
                                   1545 ;	life.c:98: for (y = 0; y < H; y++)
      00260F 90 88 06         [24] 1546 	mov	dptr,#_y
      002612 E4               [12] 1547 	clr	a
      002613 F0               [24] 1548 	movx	@dptr,a
      002614 A3               [24] 1549 	inc	dptr
      002615 F0               [24] 1550 	movx	@dptr,a
      002616                       1551 00169$:
                                   1552 ;	life.c:99: for (x = 0; x < W; x++)
      002616 90 88 04         [24] 1553 	mov	dptr,#_x
      002619 E4               [12] 1554 	clr	a
      00261A F0               [24] 1555 	movx	@dptr,a
      00261B A3               [24] 1556 	inc	dptr
      00261C F0               [24] 1557 	movx	@dptr,a
      00261D                       1558 00167$:
                                   1559 ;	life.c:100: if (u[y][x] != nu[y][x]) {
      00261D 90 88 06         [24] 1560 	mov	dptr,#_y
      002620 E0               [24] 1561 	movx	a,@dptr
      002621 FE               [12] 1562 	mov	r6,a
      002622 A3               [24] 1563 	inc	dptr
      002623 E0               [24] 1564 	movx	a,@dptr
      002624 C4               [12] 1565 	swap	a
      002625 23               [12] 1566 	rl	a
      002626 54 E0            [12] 1567 	anl	a,#0xe0
      002628 CE               [12] 1568 	xch	a,r6
      002629 C4               [12] 1569 	swap	a
      00262A 23               [12] 1570 	rl	a
      00262B CE               [12] 1571 	xch	a,r6
      00262C 6E               [12] 1572 	xrl	a,r6
      00262D CE               [12] 1573 	xch	a,r6
      00262E 54 E0            [12] 1574 	anl	a,#0xe0
      002630 CE               [12] 1575 	xch	a,r6
      002631 6E               [12] 1576 	xrl	a,r6
      002632 FF               [12] 1577 	mov	r7,a
      002633 EE               [12] 1578 	mov	a,r6
      002634 24 04            [12] 1579 	add	a,#_u
      002636 FC               [12] 1580 	mov	r4,a
      002637 EF               [12] 1581 	mov	a,r7
      002638 34 80            [12] 1582 	addc	a,#(_u >> 8)
      00263A FD               [12] 1583 	mov	r5,a
      00263B 90 88 04         [24] 1584 	mov	dptr,#_x
      00263E E0               [24] 1585 	movx	a,@dptr
      00263F FA               [12] 1586 	mov	r2,a
      002640 A3               [24] 1587 	inc	dptr
      002641 E0               [24] 1588 	movx	a,@dptr
      002642 FB               [12] 1589 	mov	r3,a
      002643 EA               [12] 1590 	mov	a,r2
      002644 2C               [12] 1591 	add	a,r4
      002645 F5 82            [12] 1592 	mov	dpl,a
      002647 EB               [12] 1593 	mov	a,r3
      002648 3D               [12] 1594 	addc	a,r5
      002649 F5 83            [12] 1595 	mov	dph,a
      00264B EE               [12] 1596 	mov	a,r6
      00264C 24 04            [12] 1597 	add	a,#_nu
      00264E FC               [12] 1598 	mov	r4,a
      00264F EF               [12] 1599 	mov	a,r7
      002650 34 84            [12] 1600 	addc	a,#(_nu >> 8)
      002652 FD               [12] 1601 	mov	r5,a
      002653 EA               [12] 1602 	mov	a,r2
      002654 2C               [12] 1603 	add	a,r4
      002655 FC               [12] 1604 	mov	r4,a
      002656 EB               [12] 1605 	mov	a,r3
      002657 3D               [12] 1606 	addc	a,r5
      002658 FD               [12] 1607 	mov	r5,a
      002659 E0               [24] 1608 	movx	a,@dptr
      00265A F9               [12] 1609 	mov	r1,a
      00265B 8C 82            [24] 1610 	mov	dpl,r4
      00265D 8D 83            [24] 1611 	mov	dph,r5
      00265F E0               [24] 1612 	movx	a,@dptr
      002660 FC               [12] 1613 	mov	r4,a
      002661 E9               [12] 1614 	mov	a,r1
      002662 B5 04 02         [24] 1615 	cjne	a,ar4,00368$
      002665 80 2C            [24] 1616 	sjmp	00168$
      002667                       1617 00368$:
                                   1618 ;	life.c:101: u[y][x] = nu[y][x];
      002667 EE               [12] 1619 	mov	a,r6
      002668 24 04            [12] 1620 	add	a,#_u
      00266A FC               [12] 1621 	mov	r4,a
      00266B EF               [12] 1622 	mov	a,r7
      00266C 34 80            [12] 1623 	addc	a,#(_u >> 8)
      00266E FD               [12] 1624 	mov	r5,a
      00266F EA               [12] 1625 	mov	a,r2
      002670 2C               [12] 1626 	add	a,r4
      002671 FC               [12] 1627 	mov	r4,a
      002672 EB               [12] 1628 	mov	a,r3
      002673 3D               [12] 1629 	addc	a,r5
      002674 FD               [12] 1630 	mov	r5,a
      002675 EE               [12] 1631 	mov	a,r6
      002676 24 04            [12] 1632 	add	a,#_nu
      002678 FE               [12] 1633 	mov	r6,a
      002679 EF               [12] 1634 	mov	a,r7
      00267A 34 84            [12] 1635 	addc	a,#(_nu >> 8)
      00267C FF               [12] 1636 	mov	r7,a
      00267D EA               [12] 1637 	mov	a,r2
      00267E 2E               [12] 1638 	add	a,r6
      00267F F5 82            [12] 1639 	mov	dpl,a
      002681 EB               [12] 1640 	mov	a,r3
      002682 3F               [12] 1641 	addc	a,r7
      002683 F5 83            [12] 1642 	mov	dph,a
      002685 E0               [24] 1643 	movx	a,@dptr
      002686 FF               [12] 1644 	mov	r7,a
      002687 8C 82            [24] 1645 	mov	dpl,r4
      002689 8D 83            [24] 1646 	mov	dph,r5
      00268B F0               [24] 1647 	movx	@dptr,a
                                   1648 ;	life.c:102: fixed = 0;
      00268C 90 88 18         [24] 1649 	mov	dptr,#_fixed
      00268F E4               [12] 1650 	clr	a
      002690 F0               [24] 1651 	movx	@dptr,a
      002691 A3               [24] 1652 	inc	dptr
      002692 F0               [24] 1653 	movx	@dptr,a
      002693                       1654 00168$:
                                   1655 ;	life.c:99: for (x = 0; x < W; x++)
      002693 90 88 04         [24] 1656 	mov	dptr,#_x
      002696 E0               [24] 1657 	movx	a,@dptr
      002697 24 01            [12] 1658 	add	a,#0x01
      002699 F0               [24] 1659 	movx	@dptr,a
      00269A A3               [24] 1660 	inc	dptr
      00269B E0               [24] 1661 	movx	a,@dptr
      00269C 34 00            [12] 1662 	addc	a,#0x00
      00269E F0               [24] 1663 	movx	@dptr,a
      00269F 90 88 04         [24] 1664 	mov	dptr,#_x
      0026A2 E0               [24] 1665 	movx	a,@dptr
      0026A3 FE               [12] 1666 	mov	r6,a
      0026A4 A3               [24] 1667 	inc	dptr
      0026A5 E0               [24] 1668 	movx	a,@dptr
      0026A6 FF               [12] 1669 	mov	r7,a
      0026A7 C3               [12] 1670 	clr	c
      0026A8 EE               [12] 1671 	mov	a,r6
      0026A9 94 20            [12] 1672 	subb	a,#0x20
      0026AB EF               [12] 1673 	mov	a,r7
      0026AC 64 80            [12] 1674 	xrl	a,#0x80
      0026AE 94 80            [12] 1675 	subb	a,#0x80
      0026B0 50 03            [24] 1676 	jnc	00369$
      0026B2 02 26 1D         [24] 1677 	ljmp	00167$
      0026B5                       1678 00369$:
                                   1679 ;	life.c:98: for (y = 0; y < H; y++)
      0026B5 90 88 06         [24] 1680 	mov	dptr,#_y
      0026B8 E0               [24] 1681 	movx	a,@dptr
      0026B9 24 01            [12] 1682 	add	a,#0x01
      0026BB F0               [24] 1683 	movx	@dptr,a
      0026BC A3               [24] 1684 	inc	dptr
      0026BD E0               [24] 1685 	movx	a,@dptr
      0026BE 34 00            [12] 1686 	addc	a,#0x00
      0026C0 F0               [24] 1687 	movx	@dptr,a
      0026C1 90 88 06         [24] 1688 	mov	dptr,#_y
      0026C4 E0               [24] 1689 	movx	a,@dptr
      0026C5 FE               [12] 1690 	mov	r6,a
      0026C6 A3               [24] 1691 	inc	dptr
      0026C7 E0               [24] 1692 	movx	a,@dptr
      0026C8 FF               [12] 1693 	mov	r7,a
      0026C9 C3               [12] 1694 	clr	c
      0026CA EE               [12] 1695 	mov	a,r6
      0026CB 94 20            [12] 1696 	subb	a,#0x20
      0026CD EF               [12] 1697 	mov	a,r7
      0026CE 64 80            [12] 1698 	xrl	a,#0x80
      0026D0 94 80            [12] 1699 	subb	a,#0x80
      0026D2 50 03            [24] 1700 	jnc	00370$
      0026D4 02 26 16         [24] 1701 	ljmp	00169$
      0026D7                       1702 00370$:
                                   1703 ;	life.c:133: if (fixed) {
      0026D7 90 88 18         [24] 1704 	mov	dptr,#_fixed
      0026DA E0               [24] 1705 	movx	a,@dptr
      0026DB F5 F0            [12] 1706 	mov	b,a
      0026DD A3               [24] 1707 	inc	dptr
      0026DE E0               [24] 1708 	movx	a,@dptr
      0026DF 45 F0            [12] 1709 	orl	a,b
      0026E1 70 03            [24] 1710 	jnz	00371$
      0026E3 02 21 DB         [24] 1711 	ljmp	00106$
      0026E6                       1712 00371$:
                                   1713 ;	life.c:134: printf("DONE\n\r");
      0026E6 74 8F            [12] 1714 	mov	a,#___str_7
      0026E8 C0 E0            [24] 1715 	push	acc
      0026EA 74 3B            [12] 1716 	mov	a,#(___str_7 >> 8)
      0026EC C0 E0            [24] 1717 	push	acc
      0026EE 74 80            [12] 1718 	mov	a,#0x80
      0026F0 C0 E0            [24] 1719 	push	acc
      0026F2 12 27 8C         [24] 1720 	lcall	_printf
      0026F5 15 81            [12] 1721 	dec	sp
      0026F7 15 81            [12] 1722 	dec	sp
      0026F9 15 81            [12] 1723 	dec	sp
                                   1724 ;	life.c:135: (void)getchar();
      0026FB 12 20 7A         [24] 1725 	lcall	_getchar
                                   1726 ;	life.c:136: break;
      0026FE                       1727 00108$:
                                   1728 ;	life.c:139: if (i1) {
      0026FE 90 80 02         [24] 1729 	mov	dptr,#_i1
      002701 E0               [24] 1730 	movx	a,@dptr
      002702 F5 F0            [12] 1731 	mov	b,a
      002704 A3               [24] 1732 	inc	dptr
      002705 E0               [24] 1733 	movx	a,@dptr
      002706 45 F0            [12] 1734 	orl	a,b
      002708 70 03            [24] 1735 	jnz	00372$
      00270A 02 20 C5         [24] 1736 	ljmp	00111$
      00270D                       1737 00372$:
                                   1738 ;	life.c:140: printf("BREAK\n\r");
      00270D 74 96            [12] 1739 	mov	a,#___str_8
      00270F C0 E0            [24] 1740 	push	acc
      002711 74 3B            [12] 1741 	mov	a,#(___str_8 >> 8)
      002713 C0 E0            [24] 1742 	push	acc
      002715 74 80            [12] 1743 	mov	a,#0x80
      002717 C0 E0            [24] 1744 	push	acc
      002719 12 27 8C         [24] 1745 	lcall	_printf
      00271C 15 81            [12] 1746 	dec	sp
      00271E 15 81            [12] 1747 	dec	sp
      002720 15 81            [12] 1748 	dec	sp
                                   1749 ;	life.c:141: (void)getchar();
      002722 12 20 7A         [24] 1750 	lcall	_getchar
      002725 02 20 C5         [24] 1751 	ljmp	00111$
      002728                       1752 00113$:
                                   1753 ;	life.c:145: EA = 0;
                                   1754 ;	assignBit
      002728 C2 AF            [12] 1755 	clr	_EA
                                   1756 ;	life.c:147: printf("TERM\n\r");
      00272A 74 9E            [12] 1757 	mov	a,#___str_9
      00272C C0 E0            [24] 1758 	push	acc
      00272E 74 3B            [12] 1759 	mov	a,#(___str_9 >> 8)
      002730 C0 E0            [24] 1760 	push	acc
      002732 74 80            [12] 1761 	mov	a,#0x80
      002734 C0 E0            [24] 1762 	push	acc
      002736 12 27 8C         [24] 1763 	lcall	_printf
      002739 15 81            [12] 1764 	dec	sp
      00273B 15 81            [12] 1765 	dec	sp
      00273D 15 81            [12] 1766 	dec	sp
                                   1767 ;	life.c:148: (void)getchar();
      00273F 12 20 7A         [24] 1768 	lcall	_getchar
                                   1769 ;	life.c:152: __endasm;
      002742 02 00 00         [24] 1770 	ljmp	0
                                   1771 ;	life.c:153: }
      002745 22               [24] 1772 	ret
                                   1773 	.area CSEG    (CODE)
                                   1774 	.area CONST   (CODE)
                                   1775 	.area CONST   (CODE)
      003B5D                       1776 ___str_0:
      003B5D 25 30 34 78           1777 	.ascii "%04x"
      003B61 00                    1778 	.db 0x00
                                   1779 	.area CSEG    (CODE)
                                   1780 	.area CONST   (CODE)
      003B62                       1781 ___str_1:
      003B62 1B                    1782 	.db 0x1b
      003B63 5B 32 4A              1783 	.ascii "[2J"
      003B66 1B                    1784 	.db 0x1b
      003B67 5B 6D                 1785 	.ascii "[m"
      003B69 00                    1786 	.db 0x00
                                   1787 	.area CSEG    (CODE)
                                   1788 	.area CONST   (CODE)
      003B6A                       1789 ___str_2:
      003B6A 0D                    1790 	.db 0x0d
      003B6B 0A                    1791 	.db 0x0a
      003B6C 00                    1792 	.db 0x00
                                   1793 	.area CSEG    (CODE)
                                   1794 	.area CONST   (CODE)
      003B6D                       1795 ___str_3:
      003B6D 1B                    1796 	.db 0x1b
      003B6E 5B 30 31 6D 5B 5D     1797 	.ascii "[01m[]"
      003B74 1B                    1798 	.db 0x1b
      003B75 5B 6D                 1799 	.ascii "[m"
      003B77 00                    1800 	.db 0x00
                                   1801 	.area CSEG    (CODE)
                                   1802 	.area CONST   (CODE)
      003B78                       1803 ___str_4:
      003B78 2D 2D                 1804 	.ascii "--"
      003B7A 00                    1805 	.db 0x00
                                   1806 	.area CSEG    (CODE)
                                   1807 	.area CONST   (CODE)
      003B7B                       1808 ___str_5:
      003B7B 1B                    1809 	.db 0x1b
      003B7C 5B 32 4A              1810 	.ascii "[2J"
      003B7F 1B                    1811 	.db 0x1b
      003B80 5B 6D 49 4E 49 54     1812 	.ascii "[mINIT"
      003B86 0A                    1813 	.db 0x0a
      003B87 0D                    1814 	.db 0x0d
      003B88 00                    1815 	.db 0x00
                                   1816 	.area CSEG    (CODE)
                                   1817 	.area CONST   (CODE)
      003B89                       1818 ___str_6:
      003B89 52 44 59              1819 	.ascii "RDY"
      003B8C 0A                    1820 	.db 0x0a
      003B8D 0D                    1821 	.db 0x0d
      003B8E 00                    1822 	.db 0x00
                                   1823 	.area CSEG    (CODE)
                                   1824 	.area CONST   (CODE)
      003B8F                       1825 ___str_7:
      003B8F 44 4F 4E 45           1826 	.ascii "DONE"
      003B93 0A                    1827 	.db 0x0a
      003B94 0D                    1828 	.db 0x0d
      003B95 00                    1829 	.db 0x00
                                   1830 	.area CSEG    (CODE)
                                   1831 	.area CONST   (CODE)
      003B96                       1832 ___str_8:
      003B96 42 52 45 41 4B        1833 	.ascii "BREAK"
      003B9B 0A                    1834 	.db 0x0a
      003B9C 0D                    1835 	.db 0x0d
      003B9D 00                    1836 	.db 0x00
                                   1837 	.area CSEG    (CODE)
                                   1838 	.area CONST   (CODE)
      003B9E                       1839 ___str_9:
      003B9E 54 45 52 4D           1840 	.ascii "TERM"
      003BA2 0A                    1841 	.db 0x0a
      003BA3 0D                    1842 	.db 0x0d
      003BA4 00                    1843 	.db 0x00
                                   1844 	.area CSEG    (CODE)
                                   1845 	.area XINIT   (CODE)
                                   1846 	.area CABS    (ABS,CODE)
