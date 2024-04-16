                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module crc16
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _printf
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _FL
                                     21 	.globl _P
                                     22 	.globl _TF2
                                     23 	.globl _EXF2
                                     24 	.globl _RCLK
                                     25 	.globl _TCLK
                                     26 	.globl _EXEN2
                                     27 	.globl _TR2
                                     28 	.globl _C_T2
                                     29 	.globl _CP_RL2
                                     30 	.globl _T2CON_7
                                     31 	.globl _T2CON_6
                                     32 	.globl _T2CON_5
                                     33 	.globl _T2CON_4
                                     34 	.globl _T2CON_3
                                     35 	.globl _T2CON_2
                                     36 	.globl _T2CON_1
                                     37 	.globl _T2CON_0
                                     38 	.globl _PT2
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ET2
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _T2EX
                                     84 	.globl _T2
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _B
                                    110 	.globl _A
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _TH2
                                    114 	.globl _TL2
                                    115 	.globl _RCAP2H
                                    116 	.globl _RCAP2L
                                    117 	.globl _T2MOD
                                    118 	.globl _T2CON
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 	.globl _bitp
                                    138 	.globl _crc
                                    139 	.globl _off
                                    140 	.globl _len
                                    141 	.globl _t
                                    142 	.globl _base
                                    143 	.globl _intr
                                    144 	.globl _putchar
                                    145 	.globl _getchar
                                    146 ;--------------------------------------------------------
                                    147 ; special function registers
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0	=	0x0080
                           000081   152 _SP	=	0x0081
                           000082   153 _DPL	=	0x0082
                           000083   154 _DPH	=	0x0083
                           000087   155 _PCON	=	0x0087
                           000088   156 _TCON	=	0x0088
                           000089   157 _TMOD	=	0x0089
                           00008A   158 _TL0	=	0x008a
                           00008B   159 _TL1	=	0x008b
                           00008C   160 _TH0	=	0x008c
                           00008D   161 _TH1	=	0x008d
                           000090   162 _P1	=	0x0090
                           000098   163 _SCON	=	0x0098
                           000099   164 _SBUF	=	0x0099
                           0000A0   165 _P2	=	0x00a0
                           0000A8   166 _IE	=	0x00a8
                           0000B0   167 _P3	=	0x00b0
                           0000B8   168 _IP	=	0x00b8
                           0000C8   169 _T2CON	=	0x00c8
                           0000C9   170 _T2MOD	=	0x00c9
                           0000CA   171 _RCAP2L	=	0x00ca
                           0000CB   172 _RCAP2H	=	0x00cb
                           0000CC   173 _TL2	=	0x00cc
                           0000CD   174 _TH2	=	0x00cd
                           0000D0   175 _PSW	=	0x00d0
                           0000E0   176 _ACC	=	0x00e0
                           0000E0   177 _A	=	0x00e0
                           0000F0   178 _B	=	0x00f0
                                    179 ;--------------------------------------------------------
                                    180 ; special function bits
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000090   208 _T2	=	0x0090
                           000091   209 _T2EX	=	0x0091
                           000098   210 _RI	=	0x0098
                           000099   211 _TI	=	0x0099
                           00009A   212 _RB8	=	0x009a
                           00009B   213 _TB8	=	0x009b
                           00009C   214 _REN	=	0x009c
                           00009D   215 _SM2	=	0x009d
                           00009E   216 _SM1	=	0x009e
                           00009F   217 _SM0	=	0x009f
                           0000A0   218 _P2_0	=	0x00a0
                           0000A1   219 _P2_1	=	0x00a1
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 _P2_4	=	0x00a4
                           0000A5   223 _P2_5	=	0x00a5
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 _P2_7	=	0x00a7
                           0000A8   226 _EX0	=	0x00a8
                           0000A9   227 _ET0	=	0x00a9
                           0000AA   228 _EX1	=	0x00aa
                           0000AB   229 _ET1	=	0x00ab
                           0000AC   230 _ES	=	0x00ac
                           0000AD   231 _ET2	=	0x00ad
                           0000AF   232 _EA	=	0x00af
                           0000B0   233 _P3_0	=	0x00b0
                           0000B1   234 _P3_1	=	0x00b1
                           0000B2   235 _P3_2	=	0x00b2
                           0000B3   236 _P3_3	=	0x00b3
                           0000B4   237 _P3_4	=	0x00b4
                           0000B5   238 _P3_5	=	0x00b5
                           0000B6   239 _P3_6	=	0x00b6
                           0000B7   240 _P3_7	=	0x00b7
                           0000B0   241 _RXD	=	0x00b0
                           0000B1   242 _TXD	=	0x00b1
                           0000B2   243 _INT0	=	0x00b2
                           0000B3   244 _INT1	=	0x00b3
                           0000B4   245 _T0	=	0x00b4
                           0000B5   246 _T1	=	0x00b5
                           0000B6   247 _WR	=	0x00b6
                           0000B7   248 _RD	=	0x00b7
                           0000B8   249 _PX0	=	0x00b8
                           0000B9   250 _PT0	=	0x00b9
                           0000BA   251 _PX1	=	0x00ba
                           0000BB   252 _PT1	=	0x00bb
                           0000BC   253 _PS	=	0x00bc
                           0000BD   254 _PT2	=	0x00bd
                           0000C8   255 _T2CON_0	=	0x00c8
                           0000C9   256 _T2CON_1	=	0x00c9
                           0000CA   257 _T2CON_2	=	0x00ca
                           0000CB   258 _T2CON_3	=	0x00cb
                           0000CC   259 _T2CON_4	=	0x00cc
                           0000CD   260 _T2CON_5	=	0x00cd
                           0000CE   261 _T2CON_6	=	0x00ce
                           0000CF   262 _T2CON_7	=	0x00cf
                           0000C8   263 _CP_RL2	=	0x00c8
                           0000C9   264 _C_T2	=	0x00c9
                           0000CA   265 _TR2	=	0x00ca
                           0000CB   266 _EXEN2	=	0x00cb
                           0000CC   267 _TCLK	=	0x00cc
                           0000CD   268 _RCLK	=	0x00cd
                           0000CE   269 _EXF2	=	0x00ce
                           0000CF   270 _TF2	=	0x00cf
                           0000D0   271 _P	=	0x00d0
                           0000D1   272 _FL	=	0x00d1
                           0000D2   273 _OV	=	0x00d2
                           0000D3   274 _RS0	=	0x00d3
                           0000D4   275 _RS1	=	0x00d4
                           0000D5   276 _F0	=	0x00d5
                           0000D6   277 _AC	=	0x00d6
                           0000D7   278 _CY	=	0x00d7
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable register banks
                                    281 ;--------------------------------------------------------
                                    282 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        283 	.ds 8
                                    284 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        285 	.ds 8
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable bit register bank
                                    288 ;--------------------------------------------------------
                                    289 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        290 bits:
      000020                        291 	.ds 1
                           008000   292 	b0 = bits[0]
                           008100   293 	b1 = bits[1]
                           008200   294 	b2 = bits[2]
                           008300   295 	b3 = bits[3]
                           008400   296 	b4 = bits[4]
                           008500   297 	b5 = bits[5]
                           008600   298 	b6 = bits[6]
                           008700   299 	b7 = bits[7]
                                    300 ;--------------------------------------------------------
                                    301 ; internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area DSEG    (DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; overlayable items in internal ram 
                                    306 ;--------------------------------------------------------
                                    307 ;--------------------------------------------------------
                                    308 ; Stack segment in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 	.area	SSEG
      000021                        311 __start__stack:
      000021                        312 	.ds	1
                                    313 
                                    314 ;--------------------------------------------------------
                                    315 ; indirectly addressable internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area ISEG    (DATA)
      000011                        318 _intr::
      000011                        319 	.ds 1
      000012                        320 _base::
      000012                        321 	.ds 2
      000014                        322 _t::
      000014                        323 	.ds 2
      000016                        324 _len::
      000016                        325 	.ds 2
      000018                        326 _off::
      000018                        327 	.ds 2
      00001A                        328 _crc::
      00001A                        329 	.ds 2
      00001C                        330 _bitp::
      00001C                        331 	.ds 1
                                    332 ;--------------------------------------------------------
                                    333 ; absolute internal ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area IABS    (ABS,DATA)
                                    336 	.area IABS    (ABS,DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; bit data
                                    339 ;--------------------------------------------------------
                                    340 	.area BSEG    (BIT)
                                    341 ;--------------------------------------------------------
                                    342 ; paged external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area PSEG    (PAG,XDATA)
                                    345 ;--------------------------------------------------------
                                    346 ; external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area XSEG    (XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; absolute external ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XABS    (ABS,XDATA)
                                    353 ;--------------------------------------------------------
                                    354 ; external initialized ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area XISEG   (XDATA)
                                    357 	.area HOME    (CODE)
                                    358 	.area GSINIT0 (CODE)
                                    359 	.area GSINIT1 (CODE)
                                    360 	.area GSINIT2 (CODE)
                                    361 	.area GSINIT3 (CODE)
                                    362 	.area GSINIT4 (CODE)
                                    363 	.area GSINIT5 (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.area GSFINAL (CODE)
                                    366 	.area CSEG    (CODE)
                                    367 ;--------------------------------------------------------
                                    368 ; interrupt vector 
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
      002000                        371 __interrupt_vect:
      002000 02 20 09         [24]  372 	ljmp	__sdcc_gsinit_startup
      002003 02 20 7B         [24]  373 	ljmp	_int0
                                    374 ;--------------------------------------------------------
                                    375 ; global & static initialisations
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 	.area GSFINAL (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 	.globl __sdcc_gsinit_startup
                                    382 	.globl __sdcc_program_startup
                                    383 	.globl __start__stack
                                    384 	.globl __mcs51_genXINIT
                                    385 	.globl __mcs51_genXRAMCLEAR
                                    386 	.globl __mcs51_genRAMCLEAR
                                    387 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  388 	ljmp	__sdcc_program_startup
                                    389 ;--------------------------------------------------------
                                    390 ; Home
                                    391 ;--------------------------------------------------------
                                    392 	.area HOME    (CODE)
                                    393 	.area HOME    (CODE)
      002006                        394 __sdcc_program_startup:
      002006 02 20 87         [24]  395 	ljmp	_main
                                    396 ;	return from main will return to caller
                                    397 ;--------------------------------------------------------
                                    398 ; code
                                    399 ;--------------------------------------------------------
                                    400 	.area CSEG    (CODE)
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'putchar'
                                    403 ;------------------------------------------------------------
                                    404 ;c                         Allocated to registers 
                                    405 ;------------------------------------------------------------
                                    406 ;	crc16.c:6: int putchar(int c) __naked {
                                    407 ;	-----------------------------------------
                                    408 ;	 function putchar
                                    409 ;	-----------------------------------------
      002065                        410 _putchar:
                                    411 ;	naked function: no prologue.
                                    412 ;	crc16.c:13: __endasm;
      002065 C0 E0            [24]  413 	push	acc
      002067 E5 82            [12]  414 	mov	a, dpl
      002069 12 00 3C         [24]  415 	lcall	0x003c
      00206C D0 E0            [24]  416 	pop	acc
                                    417 ;	crc16.c:14: }
                                    418 ;	naked function: no epilogue.
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'getchar'
                                    421 ;------------------------------------------------------------
                                    422 ;	crc16.c:16: int getchar(void) __naked {
                                    423 ;	-----------------------------------------
                                    424 ;	 function getchar
                                    425 ;	-----------------------------------------
      00206E                        426 _getchar:
                                    427 ;	naked function: no prologue.
                                    428 ;	crc16.c:24: __endasm;
      00206E C0 E0            [24]  429 	push	acc
      002070 12 00 36         [24]  430 	lcall	0x0036
      002073 F5 82            [12]  431 	mov	dpl, a
      002075 75 83 00         [24]  432 	mov	dph, #0
      002078 D0 E0            [24]  433 	pop	acc
      00207A 22               [24]  434 	ret
                                    435 ;	crc16.c:25: }
                                    436 ;	naked function: no epilogue.
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'int0'
                                    439 ;------------------------------------------------------------
                                    440 ;	crc16.c:48: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    441 ;	-----------------------------------------
                                    442 ;	 function int0
                                    443 ;	-----------------------------------------
      00207B                        444 _int0:
                           00000F   445 	ar7 = 0x0f
                           00000E   446 	ar6 = 0x0e
                           00000D   447 	ar5 = 0x0d
                           00000C   448 	ar4 = 0x0c
                           00000B   449 	ar3 = 0x0b
                           00000A   450 	ar2 = 0x0a
                           000009   451 	ar1 = 0x09
                           000008   452 	ar0 = 0x08
      00207B C0 D0            [24]  453 	push	psw
      00207D 75 D0 08         [24]  454 	mov	psw,#0x08
                                    455 ;	crc16.c:49: intr = 1u;
      002080 78 11            [12]  456 	mov	r0,#_intr
      002082 76 01            [12]  457 	mov	@r0,#0x01
                                    458 ;	crc16.c:50: }
      002084 D0 D0            [24]  459 	pop	psw
      002086 32               [24]  460 	reti
                                    461 ;	eliminated unneeded push/pop dpl
                                    462 ;	eliminated unneeded push/pop dph
                                    463 ;	eliminated unneeded push/pop b
                                    464 ;	eliminated unneeded push/pop acc
                                    465 ;------------------------------------------------------------
                                    466 ;Allocation info for local variables in function 'main'
                                    467 ;------------------------------------------------------------
                                    468 ;	crc16.c:59: void main(void) {
                                    469 ;	-----------------------------------------
                                    470 ;	 function main
                                    471 ;	-----------------------------------------
      002087                        472 _main:
                           000007   473 	ar7 = 0x07
                           000006   474 	ar6 = 0x06
                           000005   475 	ar5 = 0x05
                           000004   476 	ar4 = 0x04
                           000003   477 	ar3 = 0x03
                           000002   478 	ar2 = 0x02
                           000001   479 	ar1 = 0x01
                           000000   480 	ar0 = 0x00
                                    481 ;	crc16.c:60: intr = 0u;
      002087 78 11            [12]  482 	mov	r0,#_intr
      002089 76 00            [12]  483 	mov	@r0,#0x00
                                    484 ;	crc16.c:62: IT0 = 1;
                                    485 ;	assignBit
      00208B D2 88            [12]  486 	setb	_IT0
                                    487 ;	crc16.c:63: EX0 = 1;	
                                    488 ;	assignBit
      00208D D2 A8            [12]  489 	setb	_EX0
                                    490 ;	crc16.c:64: EA = 1;
                                    491 ;	assignBit
      00208F D2 AF            [12]  492 	setb	_EA
                                    493 ;	crc16.c:66: while (!intr) {
      002091                        494 00131$:
      002091 78 11            [12]  495 	mov	r0,#_intr
      002093 E6               [12]  496 	mov	a,@r0
      002094 60 03            [24]  497 	jz	00210$
      002096 02 22 F3         [24]  498 	ljmp	00133$
      002099                        499 00210$:
                                    500 ;	crc16.c:67: base = (pxd_uint8_t)0x0u;
      002099 78 12            [12]  501 	mov	r0,#_base
      00209B E4               [12]  502 	clr	a
      00209C F6               [12]  503 	mov	@r0,a
      00209D 08               [12]  504 	inc	r0
      00209E F6               [12]  505 	mov	@r0,a
                                    506 ;	crc16.c:68: len = TLEN;
      00209F 78 16            [12]  507 	mov	r0,#_len
      0020A1 76 FF            [12]  508 	mov	@r0,#0xff
      0020A3 08               [12]  509 	inc	r0
      0020A4 76 FF            [12]  510 	mov	@r0,#0xff
                                    511 ;	crc16.c:69: printf("COMPLETE base=%p ", base);
      0020A6 78 12            [12]  512 	mov	r0,#_base
      0020A8 86 05            [24]  513 	mov	ar5,@r0
      0020AA 08               [12]  514 	inc	r0
      0020AB 86 06            [24]  515 	mov	ar6,@r0
      0020AD 7F 00            [12]  516 	mov	r7,#0x00
      0020AF C0 05            [24]  517 	push	ar5
      0020B1 C0 06            [24]  518 	push	ar6
      0020B3 C0 07            [24]  519 	push	ar7
      0020B5 74 21            [12]  520 	mov	a,#___str_0
      0020B7 C0 E0            [24]  521 	push	acc
      0020B9 74 36            [12]  522 	mov	a,#(___str_0 >> 8)
      0020BB C0 E0            [24]  523 	push	acc
      0020BD 74 80            [12]  524 	mov	a,#0x80
      0020BF C0 E0            [24]  525 	push	acc
      0020C1 12 23 3D         [24]  526 	lcall	_printf
      0020C4 E5 81            [12]  527 	mov	a,sp
      0020C6 24 FA            [12]  528 	add	a,#0xfa
      0020C8 F5 81            [12]  529 	mov	sp,a
                                    530 ;	crc16.c:70: printf("len=0x%04x ", len);
      0020CA 78 16            [12]  531 	mov	r0,#_len
      0020CC E6               [12]  532 	mov	a,@r0
      0020CD C0 E0            [24]  533 	push	acc
      0020CF 08               [12]  534 	inc	r0
      0020D0 E6               [12]  535 	mov	a,@r0
      0020D1 C0 E0            [24]  536 	push	acc
      0020D3 74 33            [12]  537 	mov	a,#___str_1
      0020D5 C0 E0            [24]  538 	push	acc
      0020D7 74 36            [12]  539 	mov	a,#(___str_1 >> 8)
      0020D9 C0 E0            [24]  540 	push	acc
      0020DB 74 80            [12]  541 	mov	a,#0x80
      0020DD C0 E0            [24]  542 	push	acc
      0020DF 12 23 3D         [24]  543 	lcall	_printf
      0020E2 E5 81            [12]  544 	mov	a,sp
      0020E4 24 FB            [12]  545 	add	a,#0xfb
      0020E6 F5 81            [12]  546 	mov	sp,a
                                    547 ;	crc16.c:71: CCRCB_INIT(crc);
      0020E8 78 1A            [12]  548 	mov	r0,#_crc
      0020EA 76 FF            [12]  549 	mov	@r0,#0xff
      0020EC 08               [12]  550 	inc	r0
      0020ED 76 FF            [12]  551 	mov	@r0,#0xff
                                    552 ;	crc16.c:72: for (off = 0u; off < len; off++)
      0020EF 78 18            [12]  553 	mov	r0,#_off
      0020F1 E4               [12]  554 	clr	a
      0020F2 F6               [12]  555 	mov	@r0,a
      0020F3 08               [12]  556 	inc	r0
      0020F4 F6               [12]  557 	mov	@r0,a
      0020F5                        558 00137$:
      0020F5 78 18            [12]  559 	mov	r0,#_off
      0020F7 79 16            [12]  560 	mov	r1,#_len
      0020F9 C3               [12]  561 	clr	c
      0020FA E6               [12]  562 	mov	a,@r0
      0020FB 97               [12]  563 	subb	a,@r1
      0020FC 08               [12]  564 	inc	r0
      0020FD E6               [12]  565 	mov	a,@r0
      0020FE 09               [12]  566 	inc	r1
      0020FF 97               [12]  567 	subb	a,@r1
      002100 50 6F            [24]  568 	jnc	00109$
                                    569 ;	crc16.c:73: CCRCB(crc, base[off], bitp);
      002102 78 1C            [12]  570 	mov	r0,#_bitp
      002104 76 80            [12]  571 	mov	@r0,#0x80
      002106                        572 00134$:
      002106 78 1B            [12]  573 	mov	r0,#(_crc + 1)
      002108 E6               [12]  574 	mov	a,@r0
      002109 23               [12]  575 	rl	a
      00210A 54 01            [12]  576 	anl	a,#0x01
      00210C FE               [12]  577 	mov	r6,a
      00210D 7F 00            [12]  578 	mov	r7,#0x00
      00210F 78 12            [12]  579 	mov	r0,#_base
      002111 79 18            [12]  580 	mov	r1,#_off
      002113 E7               [12]  581 	mov	a,@r1
      002114 26               [12]  582 	add	a,@r0
      002115 F5 82            [12]  583 	mov	dpl,a
      002117 09               [12]  584 	inc	r1
      002118 E7               [12]  585 	mov	a,@r1
      002119 08               [12]  586 	inc	r0
      00211A 36               [12]  587 	addc	a,@r0
      00211B F5 83            [12]  588 	mov	dph,a
      00211D E0               [24]  589 	movx	a,@dptr
      00211E FD               [12]  590 	mov	r5,a
      00211F 78 1C            [12]  591 	mov	r0,#_bitp
      002121 E6               [12]  592 	mov	a,@r0
      002122 52 05            [12]  593 	anl	ar5,a
      002124 ED               [12]  594 	mov	a,r5
      002125 B4 01 00         [24]  595 	cjne	a,#0x01,00212$
      002128                        596 00212$:
      002128 B3               [12]  597 	cpl	c
      002129 92 00            [24]  598 	mov	b0,c
      00212B E4               [12]  599 	clr	a
      00212C 33               [12]  600 	rlc	a
      00212D FC               [12]  601 	mov	r4,a
      00212E 7D 00            [12]  602 	mov	r5,#0x00
      002130 62 06            [12]  603 	xrl	ar6,a
      002132 ED               [12]  604 	mov	a,r5
      002133 62 07            [12]  605 	xrl	ar7,a
      002135 EE               [12]  606 	mov	a,r6
      002136 4F               [12]  607 	orl	a,r7
      002137 60 12            [24]  608 	jz	00146$
      002139 78 1A            [12]  609 	mov	r0,#_crc
      00213B E6               [12]  610 	mov	a,@r0
      00213C 25 E0            [12]  611 	add	a,acc
      00213E FE               [12]  612 	mov	r6,a
      00213F 08               [12]  613 	inc	r0
      002140 E6               [12]  614 	mov	a,@r0
      002141 33               [12]  615 	rlc	a
      002142 FF               [12]  616 	mov	r7,a
      002143 63 06 21         [24]  617 	xrl	ar6,#0x21
      002146 63 07 10         [24]  618 	xrl	ar7,#0x10
      002149 80 0A            [24]  619 	sjmp	00147$
      00214B                        620 00146$:
      00214B 78 1A            [12]  621 	mov	r0,#_crc
      00214D E6               [12]  622 	mov	a,@r0
      00214E 25 E0            [12]  623 	add	a,acc
      002150 FE               [12]  624 	mov	r6,a
      002151 08               [12]  625 	inc	r0
      002152 E6               [12]  626 	mov	a,@r0
      002153 33               [12]  627 	rlc	a
      002154 FF               [12]  628 	mov	r7,a
      002155                        629 00147$:
      002155 78 1A            [12]  630 	mov	r0,#_crc
      002157 A6 06            [24]  631 	mov	@r0,ar6
      002159 08               [12]  632 	inc	r0
      00215A A6 07            [24]  633 	mov	@r0,ar7
      00215C 78 1C            [12]  634 	mov	r0,#_bitp
      00215E E6               [12]  635 	mov	a,@r0
      00215F C3               [12]  636 	clr	c
      002160 13               [12]  637 	rrc	a
      002161 F6               [12]  638 	mov	@r0,a
      002162 78 1C            [12]  639 	mov	r0,#_bitp
      002164 E6               [12]  640 	mov	a,@r0
      002165 70 9F            [24]  641 	jnz	00134$
                                    642 ;	crc16.c:72: for (off = 0u; off < len; off++)
      002167 78 18            [12]  643 	mov	r0,#_off
      002169 06               [12]  644 	inc	@r0
      00216A B6 00 02         [24]  645 	cjne	@r0,#0x00,00215$
      00216D 08               [12]  646 	inc	r0
      00216E 06               [12]  647 	inc	@r0
      00216F                        648 00215$:
                                    649 ;	crc16.c:74: CCRCB_FINISH(crc);
      00216F 80 84            [24]  650 	sjmp	00137$
      002171                        651 00109$:
      002171 78 1A            [12]  652 	mov	r0,#_crc
      002173 86 06            [24]  653 	mov	ar6,@r0
      002175 08               [12]  654 	inc	r0
      002176 86 07            [24]  655 	mov	ar7,@r0
      002178 78 1A            [12]  656 	mov	r0,#_crc
      00217A A6 06            [24]  657 	mov	@r0,ar6
      00217C 08               [12]  658 	inc	r0
      00217D A6 07            [24]  659 	mov	@r0,ar7
                                    660 ;	crc16.c:75: printf("CRC16=0x%04x\r\n", crc);
      00217F 78 1A            [12]  661 	mov	r0,#_crc
      002181 E6               [12]  662 	mov	a,@r0
      002182 C0 E0            [24]  663 	push	acc
      002184 08               [12]  664 	inc	r0
      002185 E6               [12]  665 	mov	a,@r0
      002186 C0 E0            [24]  666 	push	acc
      002188 74 3F            [12]  667 	mov	a,#___str_2
      00218A C0 E0            [24]  668 	push	acc
      00218C 74 36            [12]  669 	mov	a,#(___str_2 >> 8)
      00218E C0 E0            [24]  670 	push	acc
      002190 74 80            [12]  671 	mov	a,#0x80
      002192 C0 E0            [24]  672 	push	acc
      002194 12 23 3D         [24]  673 	lcall	_printf
      002197 E5 81            [12]  674 	mov	a,sp
      002199 24 FB            [12]  675 	add	a,#0xfb
      00219B F5 81            [12]  676 	mov	sp,a
                                    677 ;	crc16.c:77: len = PLEN;
      00219D 78 16            [12]  678 	mov	r0,#_len
      00219F 76 00            [12]  679 	mov	@r0,#0x00
      0021A1 08               [12]  680 	inc	r0
      0021A2 76 20            [12]  681 	mov	@r0,#0x20
                                    682 ;	crc16.c:78: while (1) {
      0021A4                        683 00129$:
                                    684 ;	crc16.c:79: printf("PARTIAL base=%p ", base);
      0021A4 78 12            [12]  685 	mov	r0,#_base
      0021A6 86 05            [24]  686 	mov	ar5,@r0
      0021A8 08               [12]  687 	inc	r0
      0021A9 86 06            [24]  688 	mov	ar6,@r0
      0021AB 7F 00            [12]  689 	mov	r7,#0x00
      0021AD C0 05            [24]  690 	push	ar5
      0021AF C0 06            [24]  691 	push	ar6
      0021B1 C0 07            [24]  692 	push	ar7
      0021B3 74 4E            [12]  693 	mov	a,#___str_3
      0021B5 C0 E0            [24]  694 	push	acc
      0021B7 74 36            [12]  695 	mov	a,#(___str_3 >> 8)
      0021B9 C0 E0            [24]  696 	push	acc
      0021BB 74 80            [12]  697 	mov	a,#0x80
      0021BD C0 E0            [24]  698 	push	acc
      0021BF 12 23 3D         [24]  699 	lcall	_printf
      0021C2 E5 81            [12]  700 	mov	a,sp
      0021C4 24 FA            [12]  701 	add	a,#0xfa
      0021C6 F5 81            [12]  702 	mov	sp,a
                                    703 ;	crc16.c:80: printf("len=0x%04x ", len);
      0021C8 78 16            [12]  704 	mov	r0,#_len
      0021CA E6               [12]  705 	mov	a,@r0
      0021CB C0 E0            [24]  706 	push	acc
      0021CD 08               [12]  707 	inc	r0
      0021CE E6               [12]  708 	mov	a,@r0
      0021CF C0 E0            [24]  709 	push	acc
      0021D1 74 33            [12]  710 	mov	a,#___str_1
      0021D3 C0 E0            [24]  711 	push	acc
      0021D5 74 36            [12]  712 	mov	a,#(___str_1 >> 8)
      0021D7 C0 E0            [24]  713 	push	acc
      0021D9 74 80            [12]  714 	mov	a,#0x80
      0021DB C0 E0            [24]  715 	push	acc
      0021DD 12 23 3D         [24]  716 	lcall	_printf
      0021E0 E5 81            [12]  717 	mov	a,sp
      0021E2 24 FB            [12]  718 	add	a,#0xfb
      0021E4 F5 81            [12]  719 	mov	sp,a
                                    720 ;	crc16.c:81: CCRCB_INIT(crc);
      0021E6 78 1A            [12]  721 	mov	r0,#_crc
      0021E8 76 FF            [12]  722 	mov	@r0,#0xff
      0021EA 08               [12]  723 	inc	r0
      0021EB 76 FF            [12]  724 	mov	@r0,#0xff
                                    725 ;	crc16.c:82: for (off = 0u; off < len; off++)
      0021ED 78 18            [12]  726 	mov	r0,#_off
      0021EF E4               [12]  727 	clr	a
      0021F0 F6               [12]  728 	mov	@r0,a
      0021F1 08               [12]  729 	inc	r0
      0021F2 F6               [12]  730 	mov	@r0,a
      0021F3                        731 00142$:
      0021F3 78 18            [12]  732 	mov	r0,#_off
      0021F5 79 16            [12]  733 	mov	r1,#_len
      0021F7 C3               [12]  734 	clr	c
      0021F8 E6               [12]  735 	mov	a,@r0
      0021F9 97               [12]  736 	subb	a,@r1
      0021FA 08               [12]  737 	inc	r0
      0021FB E6               [12]  738 	mov	a,@r0
      0021FC 09               [12]  739 	inc	r1
      0021FD 97               [12]  740 	subb	a,@r1
      0021FE 50 6F            [24]  741 	jnc	00120$
                                    742 ;	crc16.c:83: CCRCB(crc, base[off], bitp);
      002200 78 1C            [12]  743 	mov	r0,#_bitp
      002202 76 80            [12]  744 	mov	@r0,#0x80
      002204                        745 00139$:
      002204 78 1B            [12]  746 	mov	r0,#(_crc + 1)
      002206 E6               [12]  747 	mov	a,@r0
      002207 23               [12]  748 	rl	a
      002208 54 01            [12]  749 	anl	a,#0x01
      00220A FE               [12]  750 	mov	r6,a
      00220B 7F 00            [12]  751 	mov	r7,#0x00
      00220D 78 12            [12]  752 	mov	r0,#_base
      00220F 79 18            [12]  753 	mov	r1,#_off
      002211 E7               [12]  754 	mov	a,@r1
      002212 26               [12]  755 	add	a,@r0
      002213 F5 82            [12]  756 	mov	dpl,a
      002215 09               [12]  757 	inc	r1
      002216 E7               [12]  758 	mov	a,@r1
      002217 08               [12]  759 	inc	r0
      002218 36               [12]  760 	addc	a,@r0
      002219 F5 83            [12]  761 	mov	dph,a
      00221B E0               [24]  762 	movx	a,@dptr
      00221C FD               [12]  763 	mov	r5,a
      00221D 78 1C            [12]  764 	mov	r0,#_bitp
      00221F E6               [12]  765 	mov	a,@r0
      002220 52 05            [12]  766 	anl	ar5,a
      002222 ED               [12]  767 	mov	a,r5
      002223 B4 01 00         [24]  768 	cjne	a,#0x01,00217$
      002226                        769 00217$:
      002226 B3               [12]  770 	cpl	c
      002227 92 00            [24]  771 	mov	b0,c
      002229 E4               [12]  772 	clr	a
      00222A 33               [12]  773 	rlc	a
      00222B FC               [12]  774 	mov	r4,a
      00222C 7D 00            [12]  775 	mov	r5,#0x00
      00222E 62 06            [12]  776 	xrl	ar6,a
      002230 ED               [12]  777 	mov	a,r5
      002231 62 07            [12]  778 	xrl	ar7,a
      002233 EE               [12]  779 	mov	a,r6
      002234 4F               [12]  780 	orl	a,r7
      002235 60 12            [24]  781 	jz	00148$
      002237 78 1A            [12]  782 	mov	r0,#_crc
      002239 E6               [12]  783 	mov	a,@r0
      00223A 25 E0            [12]  784 	add	a,acc
      00223C FE               [12]  785 	mov	r6,a
      00223D 08               [12]  786 	inc	r0
      00223E E6               [12]  787 	mov	a,@r0
      00223F 33               [12]  788 	rlc	a
      002240 FF               [12]  789 	mov	r7,a
      002241 63 06 21         [24]  790 	xrl	ar6,#0x21
      002244 63 07 10         [24]  791 	xrl	ar7,#0x10
      002247 80 0A            [24]  792 	sjmp	00149$
      002249                        793 00148$:
      002249 78 1A            [12]  794 	mov	r0,#_crc
      00224B E6               [12]  795 	mov	a,@r0
      00224C 25 E0            [12]  796 	add	a,acc
      00224E FE               [12]  797 	mov	r6,a
      00224F 08               [12]  798 	inc	r0
      002250 E6               [12]  799 	mov	a,@r0
      002251 33               [12]  800 	rlc	a
      002252 FF               [12]  801 	mov	r7,a
      002253                        802 00149$:
      002253 78 1A            [12]  803 	mov	r0,#_crc
      002255 A6 06            [24]  804 	mov	@r0,ar6
      002257 08               [12]  805 	inc	r0
      002258 A6 07            [24]  806 	mov	@r0,ar7
      00225A 78 1C            [12]  807 	mov	r0,#_bitp
      00225C E6               [12]  808 	mov	a,@r0
      00225D C3               [12]  809 	clr	c
      00225E 13               [12]  810 	rrc	a
      00225F F6               [12]  811 	mov	@r0,a
      002260 78 1C            [12]  812 	mov	r0,#_bitp
      002262 E6               [12]  813 	mov	a,@r0
      002263 70 9F            [24]  814 	jnz	00139$
                                    815 ;	crc16.c:82: for (off = 0u; off < len; off++)
      002265 78 18            [12]  816 	mov	r0,#_off
      002267 06               [12]  817 	inc	@r0
      002268 B6 00 02         [24]  818 	cjne	@r0,#0x00,00220$
      00226B 08               [12]  819 	inc	r0
      00226C 06               [12]  820 	inc	@r0
      00226D                        821 00220$:
                                    822 ;	crc16.c:84: CCRCB_FINISH(crc);
      00226D 80 84            [24]  823 	sjmp	00142$
      00226F                        824 00120$:
      00226F 78 1A            [12]  825 	mov	r0,#_crc
      002271 86 06            [24]  826 	mov	ar6,@r0
      002273 08               [12]  827 	inc	r0
      002274 86 07            [24]  828 	mov	ar7,@r0
      002276 78 1A            [12]  829 	mov	r0,#_crc
      002278 A6 06            [24]  830 	mov	@r0,ar6
      00227A 08               [12]  831 	inc	r0
      00227B A6 07            [24]  832 	mov	@r0,ar7
                                    833 ;	crc16.c:85: printf("CRC16=0x%04x\r\n", crc);
      00227D 78 1A            [12]  834 	mov	r0,#_crc
      00227F E6               [12]  835 	mov	a,@r0
      002280 C0 E0            [24]  836 	push	acc
      002282 08               [12]  837 	inc	r0
      002283 E6               [12]  838 	mov	a,@r0
      002284 C0 E0            [24]  839 	push	acc
      002286 74 3F            [12]  840 	mov	a,#___str_2
      002288 C0 E0            [24]  841 	push	acc
      00228A 74 36            [12]  842 	mov	a,#(___str_2 >> 8)
      00228C C0 E0            [24]  843 	push	acc
      00228E 74 80            [12]  844 	mov	a,#0x80
      002290 C0 E0            [24]  845 	push	acc
      002292 12 23 3D         [24]  846 	lcall	_printf
      002295 E5 81            [12]  847 	mov	a,sp
      002297 24 FB            [12]  848 	add	a,#0xfb
      002299 F5 81            [12]  849 	mov	sp,a
                                    850 ;	crc16.c:87: if (intr) {
      00229B 78 11            [12]  851 	mov	r0,#_intr
      00229D E6               [12]  852 	mov	a,@r0
      00229E 60 1A            [24]  853 	jz	00124$
                                    854 ;	crc16.c:88: EA = 0;
                                    855 ;	assignBit
      0022A0 C2 AF            [12]  856 	clr	_EA
                                    857 ;	crc16.c:89: printf("interrupted\n");
      0022A2 74 5F            [12]  858 	mov	a,#___str_4
      0022A4 C0 E0            [24]  859 	push	acc
      0022A6 74 36            [12]  860 	mov	a,#(___str_4 >> 8)
      0022A8 C0 E0            [24]  861 	push	acc
      0022AA 74 80            [12]  862 	mov	a,#0x80
      0022AC C0 E0            [24]  863 	push	acc
      0022AE 12 23 3D         [24]  864 	lcall	_printf
      0022B1 15 81            [12]  865 	dec	sp
      0022B3 15 81            [12]  866 	dec	sp
      0022B5 15 81            [12]  867 	dec	sp
                                    868 ;	crc16.c:90: break;
      0022B7 02 20 91         [24]  869 	ljmp	00131$
      0022BA                        870 00124$:
                                    871 ;	crc16.c:93: t = base + (len >> 1);
      0022BA 78 16            [12]  872 	mov	r0,#_len
      0022BC 86 06            [24]  873 	mov	ar6,@r0
      0022BE 08               [12]  874 	inc	r0
      0022BF E6               [12]  875 	mov	a,@r0
      0022C0 C3               [12]  876 	clr	c
      0022C1 13               [12]  877 	rrc	a
      0022C2 CE               [12]  878 	xch	a,r6
      0022C3 13               [12]  879 	rrc	a
      0022C4 CE               [12]  880 	xch	a,r6
      0022C5 FF               [12]  881 	mov	r7,a
      0022C6 78 12            [12]  882 	mov	r0,#_base
      0022C8 EE               [12]  883 	mov	a,r6
      0022C9 26               [12]  884 	add	a,@r0
      0022CA FE               [12]  885 	mov	r6,a
      0022CB EF               [12]  886 	mov	a,r7
      0022CC 08               [12]  887 	inc	r0
      0022CD 36               [12]  888 	addc	a,@r0
      0022CE FF               [12]  889 	mov	r7,a
      0022CF 78 14            [12]  890 	mov	r0,#_t
      0022D1 A6 06            [24]  891 	mov	@r0,ar6
      0022D3 08               [12]  892 	inc	r0
      0022D4 A6 07            [24]  893 	mov	@r0,ar7
                                    894 ;	crc16.c:94: if (t < base) break;
      0022D6 78 14            [12]  895 	mov	r0,#_t
      0022D8 79 12            [12]  896 	mov	r1,#_base
      0022DA C3               [12]  897 	clr	c
      0022DB E6               [12]  898 	mov	a,@r0
      0022DC 97               [12]  899 	subb	a,@r1
      0022DD 08               [12]  900 	inc	r0
      0022DE E6               [12]  901 	mov	a,@r0
      0022DF 09               [12]  902 	inc	r1
      0022E0 97               [12]  903 	subb	a,@r1
      0022E1 50 03            [24]  904 	jnc	00222$
      0022E3 02 20 91         [24]  905 	ljmp	00131$
      0022E6                        906 00222$:
                                    907 ;	crc16.c:95: else base = t;
      0022E6 78 14            [12]  908 	mov	r0,#_t
      0022E8 79 12            [12]  909 	mov	r1,#_base
      0022EA E6               [12]  910 	mov	a,@r0
      0022EB F7               [12]  911 	mov	@r1,a
      0022EC 08               [12]  912 	inc	r0
      0022ED 09               [12]  913 	inc	r1
      0022EE E6               [12]  914 	mov	a,@r0
      0022EF F7               [12]  915 	mov	@r1,a
      0022F0 02 21 A4         [24]  916 	ljmp	00129$
      0022F3                        917 00133$:
                                    918 ;	crc16.c:99: PCON |= 2;
      0022F3 43 87 02         [24]  919 	orl	_PCON,#0x02
                                    920 ;	crc16.c:101: return;
                                    921 ;	crc16.c:102: }
      0022F6 22               [24]  922 	ret
                                    923 	.area CSEG    (CODE)
                                    924 	.area CONST   (CODE)
                                    925 	.area CONST   (CODE)
      003621                        926 ___str_0:
      003621 43 4F 4D 50 4C 45 54   927 	.ascii "COMPLETE base=%p "
             45 20 62 61 73 65 3D
             25 70 20
      003632 00                     928 	.db 0x00
                                    929 	.area CSEG    (CODE)
                                    930 	.area CONST   (CODE)
      003633                        931 ___str_1:
      003633 6C 65 6E 3D 30 78 25   932 	.ascii "len=0x%04x "
             30 34 78 20
      00363E 00                     933 	.db 0x00
                                    934 	.area CSEG    (CODE)
                                    935 	.area CONST   (CODE)
      00363F                        936 ___str_2:
      00363F 43 52 43 31 36 3D 30   937 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      00364B 0D                     938 	.db 0x0d
      00364C 0A                     939 	.db 0x0a
      00364D 00                     940 	.db 0x00
                                    941 	.area CSEG    (CODE)
                                    942 	.area CONST   (CODE)
      00364E                        943 ___str_3:
      00364E 50 41 52 54 49 41 4C   944 	.ascii "PARTIAL base=%p "
             20 62 61 73 65 3D 25
             70 20
      00365E 00                     945 	.db 0x00
                                    946 	.area CSEG    (CODE)
                                    947 	.area CONST   (CODE)
      00365F                        948 ___str_4:
      00365F 69 6E 74 65 72 72 75   949 	.ascii "interrupted"
             70 74 65 64
      00366A 0A                     950 	.db 0x0a
      00366B 00                     951 	.db 0x00
                                    952 	.area CSEG    (CODE)
                                    953 	.area XINIT   (CODE)
                                    954 	.area CABS    (ABS,CODE)
