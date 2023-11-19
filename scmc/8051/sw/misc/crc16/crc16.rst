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
      002003 02 20 73         [24]  373 	ljmp	_int0
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
      002006 02 20 7F         [24]  395 	ljmp	_main
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
                                    406 ;	crc16.c:8: int putchar(int c) __naked {
                                    407 ;	-----------------------------------------
                                    408 ;	 function putchar
                                    409 ;	-----------------------------------------
      002065                        410 _putchar:
                                    411 ;	naked function: no prologue.
                                    412 ;	crc16.c:13: __endasm;
      002065 E5 82            [12]  413 	mov	a, dpl
      002067 02 00 30         [24]  414 	ljmp	0x0030
                                    415 ;	crc16.c:14: }
                                    416 ;	naked function: no epilogue.
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'getchar'
                                    419 ;------------------------------------------------------------
                                    420 ;	crc16.c:16: int getchar(void) __naked {
                                    421 ;	-----------------------------------------
                                    422 ;	 function getchar
                                    423 ;	-----------------------------------------
      00206A                        424 _getchar:
                                    425 ;	naked function: no prologue.
                                    426 ;	crc16.c:22: __endasm;
      00206A 12 00 32         [24]  427 	lcall	0x0032
      00206D F5 82            [12]  428 	mov	dpl, a
      00206F 75 83 00         [24]  429 	mov	dph, #0
      002072 22               [24]  430 	ret
                                    431 ;	crc16.c:23: }
                                    432 ;	naked function: no epilogue.
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'int0'
                                    435 ;------------------------------------------------------------
                                    436 ;	crc16.c:46: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    437 ;	-----------------------------------------
                                    438 ;	 function int0
                                    439 ;	-----------------------------------------
      002073                        440 _int0:
                           00000F   441 	ar7 = 0x0f
                           00000E   442 	ar6 = 0x0e
                           00000D   443 	ar5 = 0x0d
                           00000C   444 	ar4 = 0x0c
                           00000B   445 	ar3 = 0x0b
                           00000A   446 	ar2 = 0x0a
                           000009   447 	ar1 = 0x09
                           000008   448 	ar0 = 0x08
      002073 C0 D0            [24]  449 	push	psw
      002075 75 D0 08         [24]  450 	mov	psw,#0x08
                                    451 ;	crc16.c:47: intr = 1u;
      002078 78 11            [12]  452 	mov	r0,#_intr
      00207A 76 01            [12]  453 	mov	@r0,#0x01
                                    454 ;	crc16.c:48: }
      00207C D0 D0            [24]  455 	pop	psw
      00207E 32               [24]  456 	reti
                                    457 ;	eliminated unneeded push/pop dpl
                                    458 ;	eliminated unneeded push/pop dph
                                    459 ;	eliminated unneeded push/pop b
                                    460 ;	eliminated unneeded push/pop acc
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'main'
                                    463 ;------------------------------------------------------------
                                    464 ;	crc16.c:57: void main(void) {
                                    465 ;	-----------------------------------------
                                    466 ;	 function main
                                    467 ;	-----------------------------------------
      00207F                        468 _main:
                           000007   469 	ar7 = 0x07
                           000006   470 	ar6 = 0x06
                           000005   471 	ar5 = 0x05
                           000004   472 	ar4 = 0x04
                           000003   473 	ar3 = 0x03
                           000002   474 	ar2 = 0x02
                           000001   475 	ar1 = 0x01
                           000000   476 	ar0 = 0x00
                                    477 ;	crc16.c:58: intr = 0u;
      00207F 78 11            [12]  478 	mov	r0,#_intr
      002081 76 00            [12]  479 	mov	@r0,#0x00
                                    480 ;	crc16.c:60: IT0 = 1;
                                    481 ;	assignBit
      002083 D2 88            [12]  482 	setb	_IT0
                                    483 ;	crc16.c:61: EX0 = 1;	
                                    484 ;	assignBit
      002085 D2 A8            [12]  485 	setb	_EX0
                                    486 ;	crc16.c:62: EA = 1;
                                    487 ;	assignBit
      002087 D2 AF            [12]  488 	setb	_EA
                                    489 ;	crc16.c:64: while (!intr) {
      002089                        490 00131$:
      002089 78 11            [12]  491 	mov	r0,#_intr
      00208B E6               [12]  492 	mov	a,@r0
      00208C 60 03            [24]  493 	jz	00210$
      00208E 02 22 EB         [24]  494 	ljmp	00133$
      002091                        495 00210$:
                                    496 ;	crc16.c:65: base = (pxd_uint8_t)0x0u;
      002091 78 12            [12]  497 	mov	r0,#_base
      002093 E4               [12]  498 	clr	a
      002094 F6               [12]  499 	mov	@r0,a
      002095 08               [12]  500 	inc	r0
      002096 F6               [12]  501 	mov	@r0,a
                                    502 ;	crc16.c:66: len = TLEN;
      002097 78 16            [12]  503 	mov	r0,#_len
      002099 76 FF            [12]  504 	mov	@r0,#0xff
      00209B 08               [12]  505 	inc	r0
      00209C 76 FF            [12]  506 	mov	@r0,#0xff
                                    507 ;	crc16.c:67: printf("COMPLETE base=%p ", base);
      00209E 78 12            [12]  508 	mov	r0,#_base
      0020A0 86 05            [24]  509 	mov	ar5,@r0
      0020A2 08               [12]  510 	inc	r0
      0020A3 86 06            [24]  511 	mov	ar6,@r0
      0020A5 7F 00            [12]  512 	mov	r7,#0x00
      0020A7 C0 05            [24]  513 	push	ar5
      0020A9 C0 06            [24]  514 	push	ar6
      0020AB C0 07            [24]  515 	push	ar7
      0020AD 74 19            [12]  516 	mov	a,#___str_0
      0020AF C0 E0            [24]  517 	push	acc
      0020B1 74 36            [12]  518 	mov	a,#(___str_0 >> 8)
      0020B3 C0 E0            [24]  519 	push	acc
      0020B5 74 80            [12]  520 	mov	a,#0x80
      0020B7 C0 E0            [24]  521 	push	acc
      0020B9 12 23 35         [24]  522 	lcall	_printf
      0020BC E5 81            [12]  523 	mov	a,sp
      0020BE 24 FA            [12]  524 	add	a,#0xfa
      0020C0 F5 81            [12]  525 	mov	sp,a
                                    526 ;	crc16.c:68: printf("len=0x%04x ", len);
      0020C2 78 16            [12]  527 	mov	r0,#_len
      0020C4 E6               [12]  528 	mov	a,@r0
      0020C5 C0 E0            [24]  529 	push	acc
      0020C7 08               [12]  530 	inc	r0
      0020C8 E6               [12]  531 	mov	a,@r0
      0020C9 C0 E0            [24]  532 	push	acc
      0020CB 74 2B            [12]  533 	mov	a,#___str_1
      0020CD C0 E0            [24]  534 	push	acc
      0020CF 74 36            [12]  535 	mov	a,#(___str_1 >> 8)
      0020D1 C0 E0            [24]  536 	push	acc
      0020D3 74 80            [12]  537 	mov	a,#0x80
      0020D5 C0 E0            [24]  538 	push	acc
      0020D7 12 23 35         [24]  539 	lcall	_printf
      0020DA E5 81            [12]  540 	mov	a,sp
      0020DC 24 FB            [12]  541 	add	a,#0xfb
      0020DE F5 81            [12]  542 	mov	sp,a
                                    543 ;	crc16.c:69: CCRCB_INIT(crc);
      0020E0 78 1A            [12]  544 	mov	r0,#_crc
      0020E2 76 FF            [12]  545 	mov	@r0,#0xff
      0020E4 08               [12]  546 	inc	r0
      0020E5 76 FF            [12]  547 	mov	@r0,#0xff
                                    548 ;	crc16.c:70: for (off = 0u; off < len; off++)
      0020E7 78 18            [12]  549 	mov	r0,#_off
      0020E9 E4               [12]  550 	clr	a
      0020EA F6               [12]  551 	mov	@r0,a
      0020EB 08               [12]  552 	inc	r0
      0020EC F6               [12]  553 	mov	@r0,a
      0020ED                        554 00137$:
      0020ED 78 18            [12]  555 	mov	r0,#_off
      0020EF 79 16            [12]  556 	mov	r1,#_len
      0020F1 C3               [12]  557 	clr	c
      0020F2 E6               [12]  558 	mov	a,@r0
      0020F3 97               [12]  559 	subb	a,@r1
      0020F4 08               [12]  560 	inc	r0
      0020F5 E6               [12]  561 	mov	a,@r0
      0020F6 09               [12]  562 	inc	r1
      0020F7 97               [12]  563 	subb	a,@r1
      0020F8 50 6F            [24]  564 	jnc	00109$
                                    565 ;	crc16.c:71: CCRCB(crc, base[off], bitp);
      0020FA 78 1C            [12]  566 	mov	r0,#_bitp
      0020FC 76 80            [12]  567 	mov	@r0,#0x80
      0020FE                        568 00134$:
      0020FE 78 1B            [12]  569 	mov	r0,#(_crc + 1)
      002100 E6               [12]  570 	mov	a,@r0
      002101 23               [12]  571 	rl	a
      002102 54 01            [12]  572 	anl	a,#0x01
      002104 FE               [12]  573 	mov	r6,a
      002105 7F 00            [12]  574 	mov	r7,#0x00
      002107 78 12            [12]  575 	mov	r0,#_base
      002109 79 18            [12]  576 	mov	r1,#_off
      00210B E7               [12]  577 	mov	a,@r1
      00210C 26               [12]  578 	add	a,@r0
      00210D F5 82            [12]  579 	mov	dpl,a
      00210F 09               [12]  580 	inc	r1
      002110 E7               [12]  581 	mov	a,@r1
      002111 08               [12]  582 	inc	r0
      002112 36               [12]  583 	addc	a,@r0
      002113 F5 83            [12]  584 	mov	dph,a
      002115 E0               [24]  585 	movx	a,@dptr
      002116 FD               [12]  586 	mov	r5,a
      002117 78 1C            [12]  587 	mov	r0,#_bitp
      002119 E6               [12]  588 	mov	a,@r0
      00211A 52 05            [12]  589 	anl	ar5,a
      00211C ED               [12]  590 	mov	a,r5
      00211D B4 01 00         [24]  591 	cjne	a,#0x01,00212$
      002120                        592 00212$:
      002120 B3               [12]  593 	cpl	c
      002121 92 00            [24]  594 	mov	b0,c
      002123 E4               [12]  595 	clr	a
      002124 33               [12]  596 	rlc	a
      002125 FC               [12]  597 	mov	r4,a
      002126 7D 00            [12]  598 	mov	r5,#0x00
      002128 62 06            [12]  599 	xrl	ar6,a
      00212A ED               [12]  600 	mov	a,r5
      00212B 62 07            [12]  601 	xrl	ar7,a
      00212D EE               [12]  602 	mov	a,r6
      00212E 4F               [12]  603 	orl	a,r7
      00212F 60 12            [24]  604 	jz	00146$
      002131 78 1A            [12]  605 	mov	r0,#_crc
      002133 E6               [12]  606 	mov	a,@r0
      002134 25 E0            [12]  607 	add	a,acc
      002136 FE               [12]  608 	mov	r6,a
      002137 08               [12]  609 	inc	r0
      002138 E6               [12]  610 	mov	a,@r0
      002139 33               [12]  611 	rlc	a
      00213A FF               [12]  612 	mov	r7,a
      00213B 63 06 21         [24]  613 	xrl	ar6,#0x21
      00213E 63 07 10         [24]  614 	xrl	ar7,#0x10
      002141 80 0A            [24]  615 	sjmp	00147$
      002143                        616 00146$:
      002143 78 1A            [12]  617 	mov	r0,#_crc
      002145 E6               [12]  618 	mov	a,@r0
      002146 25 E0            [12]  619 	add	a,acc
      002148 FE               [12]  620 	mov	r6,a
      002149 08               [12]  621 	inc	r0
      00214A E6               [12]  622 	mov	a,@r0
      00214B 33               [12]  623 	rlc	a
      00214C FF               [12]  624 	mov	r7,a
      00214D                        625 00147$:
      00214D 78 1A            [12]  626 	mov	r0,#_crc
      00214F A6 06            [24]  627 	mov	@r0,ar6
      002151 08               [12]  628 	inc	r0
      002152 A6 07            [24]  629 	mov	@r0,ar7
      002154 78 1C            [12]  630 	mov	r0,#_bitp
      002156 E6               [12]  631 	mov	a,@r0
      002157 C3               [12]  632 	clr	c
      002158 13               [12]  633 	rrc	a
      002159 F6               [12]  634 	mov	@r0,a
      00215A 78 1C            [12]  635 	mov	r0,#_bitp
      00215C E6               [12]  636 	mov	a,@r0
      00215D 70 9F            [24]  637 	jnz	00134$
                                    638 ;	crc16.c:70: for (off = 0u; off < len; off++)
      00215F 78 18            [12]  639 	mov	r0,#_off
      002161 06               [12]  640 	inc	@r0
      002162 B6 00 02         [24]  641 	cjne	@r0,#0x00,00215$
      002165 08               [12]  642 	inc	r0
      002166 06               [12]  643 	inc	@r0
      002167                        644 00215$:
                                    645 ;	crc16.c:72: CCRCB_FINISH(crc);
      002167 80 84            [24]  646 	sjmp	00137$
      002169                        647 00109$:
      002169 78 1A            [12]  648 	mov	r0,#_crc
      00216B 86 06            [24]  649 	mov	ar6,@r0
      00216D 08               [12]  650 	inc	r0
      00216E 86 07            [24]  651 	mov	ar7,@r0
      002170 78 1A            [12]  652 	mov	r0,#_crc
      002172 A6 06            [24]  653 	mov	@r0,ar6
      002174 08               [12]  654 	inc	r0
      002175 A6 07            [24]  655 	mov	@r0,ar7
                                    656 ;	crc16.c:73: printf("CRC16=0x%04x\r\n", crc);
      002177 78 1A            [12]  657 	mov	r0,#_crc
      002179 E6               [12]  658 	mov	a,@r0
      00217A C0 E0            [24]  659 	push	acc
      00217C 08               [12]  660 	inc	r0
      00217D E6               [12]  661 	mov	a,@r0
      00217E C0 E0            [24]  662 	push	acc
      002180 74 37            [12]  663 	mov	a,#___str_2
      002182 C0 E0            [24]  664 	push	acc
      002184 74 36            [12]  665 	mov	a,#(___str_2 >> 8)
      002186 C0 E0            [24]  666 	push	acc
      002188 74 80            [12]  667 	mov	a,#0x80
      00218A C0 E0            [24]  668 	push	acc
      00218C 12 23 35         [24]  669 	lcall	_printf
      00218F E5 81            [12]  670 	mov	a,sp
      002191 24 FB            [12]  671 	add	a,#0xfb
      002193 F5 81            [12]  672 	mov	sp,a
                                    673 ;	crc16.c:75: len = PLEN;
      002195 78 16            [12]  674 	mov	r0,#_len
      002197 76 00            [12]  675 	mov	@r0,#0x00
      002199 08               [12]  676 	inc	r0
      00219A 76 20            [12]  677 	mov	@r0,#0x20
                                    678 ;	crc16.c:76: while (1) {
      00219C                        679 00129$:
                                    680 ;	crc16.c:77: printf("PARTIAL base=%p ", base);
      00219C 78 12            [12]  681 	mov	r0,#_base
      00219E 86 05            [24]  682 	mov	ar5,@r0
      0021A0 08               [12]  683 	inc	r0
      0021A1 86 06            [24]  684 	mov	ar6,@r0
      0021A3 7F 00            [12]  685 	mov	r7,#0x00
      0021A5 C0 05            [24]  686 	push	ar5
      0021A7 C0 06            [24]  687 	push	ar6
      0021A9 C0 07            [24]  688 	push	ar7
      0021AB 74 46            [12]  689 	mov	a,#___str_3
      0021AD C0 E0            [24]  690 	push	acc
      0021AF 74 36            [12]  691 	mov	a,#(___str_3 >> 8)
      0021B1 C0 E0            [24]  692 	push	acc
      0021B3 74 80            [12]  693 	mov	a,#0x80
      0021B5 C0 E0            [24]  694 	push	acc
      0021B7 12 23 35         [24]  695 	lcall	_printf
      0021BA E5 81            [12]  696 	mov	a,sp
      0021BC 24 FA            [12]  697 	add	a,#0xfa
      0021BE F5 81            [12]  698 	mov	sp,a
                                    699 ;	crc16.c:78: printf("len=0x%04x ", len);
      0021C0 78 16            [12]  700 	mov	r0,#_len
      0021C2 E6               [12]  701 	mov	a,@r0
      0021C3 C0 E0            [24]  702 	push	acc
      0021C5 08               [12]  703 	inc	r0
      0021C6 E6               [12]  704 	mov	a,@r0
      0021C7 C0 E0            [24]  705 	push	acc
      0021C9 74 2B            [12]  706 	mov	a,#___str_1
      0021CB C0 E0            [24]  707 	push	acc
      0021CD 74 36            [12]  708 	mov	a,#(___str_1 >> 8)
      0021CF C0 E0            [24]  709 	push	acc
      0021D1 74 80            [12]  710 	mov	a,#0x80
      0021D3 C0 E0            [24]  711 	push	acc
      0021D5 12 23 35         [24]  712 	lcall	_printf
      0021D8 E5 81            [12]  713 	mov	a,sp
      0021DA 24 FB            [12]  714 	add	a,#0xfb
      0021DC F5 81            [12]  715 	mov	sp,a
                                    716 ;	crc16.c:79: CCRCB_INIT(crc);
      0021DE 78 1A            [12]  717 	mov	r0,#_crc
      0021E0 76 FF            [12]  718 	mov	@r0,#0xff
      0021E2 08               [12]  719 	inc	r0
      0021E3 76 FF            [12]  720 	mov	@r0,#0xff
                                    721 ;	crc16.c:80: for (off = 0u; off < len; off++)
      0021E5 78 18            [12]  722 	mov	r0,#_off
      0021E7 E4               [12]  723 	clr	a
      0021E8 F6               [12]  724 	mov	@r0,a
      0021E9 08               [12]  725 	inc	r0
      0021EA F6               [12]  726 	mov	@r0,a
      0021EB                        727 00142$:
      0021EB 78 18            [12]  728 	mov	r0,#_off
      0021ED 79 16            [12]  729 	mov	r1,#_len
      0021EF C3               [12]  730 	clr	c
      0021F0 E6               [12]  731 	mov	a,@r0
      0021F1 97               [12]  732 	subb	a,@r1
      0021F2 08               [12]  733 	inc	r0
      0021F3 E6               [12]  734 	mov	a,@r0
      0021F4 09               [12]  735 	inc	r1
      0021F5 97               [12]  736 	subb	a,@r1
      0021F6 50 6F            [24]  737 	jnc	00120$
                                    738 ;	crc16.c:81: CCRCB(crc, base[off], bitp);
      0021F8 78 1C            [12]  739 	mov	r0,#_bitp
      0021FA 76 80            [12]  740 	mov	@r0,#0x80
      0021FC                        741 00139$:
      0021FC 78 1B            [12]  742 	mov	r0,#(_crc + 1)
      0021FE E6               [12]  743 	mov	a,@r0
      0021FF 23               [12]  744 	rl	a
      002200 54 01            [12]  745 	anl	a,#0x01
      002202 FE               [12]  746 	mov	r6,a
      002203 7F 00            [12]  747 	mov	r7,#0x00
      002205 78 12            [12]  748 	mov	r0,#_base
      002207 79 18            [12]  749 	mov	r1,#_off
      002209 E7               [12]  750 	mov	a,@r1
      00220A 26               [12]  751 	add	a,@r0
      00220B F5 82            [12]  752 	mov	dpl,a
      00220D 09               [12]  753 	inc	r1
      00220E E7               [12]  754 	mov	a,@r1
      00220F 08               [12]  755 	inc	r0
      002210 36               [12]  756 	addc	a,@r0
      002211 F5 83            [12]  757 	mov	dph,a
      002213 E0               [24]  758 	movx	a,@dptr
      002214 FD               [12]  759 	mov	r5,a
      002215 78 1C            [12]  760 	mov	r0,#_bitp
      002217 E6               [12]  761 	mov	a,@r0
      002218 52 05            [12]  762 	anl	ar5,a
      00221A ED               [12]  763 	mov	a,r5
      00221B B4 01 00         [24]  764 	cjne	a,#0x01,00217$
      00221E                        765 00217$:
      00221E B3               [12]  766 	cpl	c
      00221F 92 00            [24]  767 	mov	b0,c
      002221 E4               [12]  768 	clr	a
      002222 33               [12]  769 	rlc	a
      002223 FC               [12]  770 	mov	r4,a
      002224 7D 00            [12]  771 	mov	r5,#0x00
      002226 62 06            [12]  772 	xrl	ar6,a
      002228 ED               [12]  773 	mov	a,r5
      002229 62 07            [12]  774 	xrl	ar7,a
      00222B EE               [12]  775 	mov	a,r6
      00222C 4F               [12]  776 	orl	a,r7
      00222D 60 12            [24]  777 	jz	00148$
      00222F 78 1A            [12]  778 	mov	r0,#_crc
      002231 E6               [12]  779 	mov	a,@r0
      002232 25 E0            [12]  780 	add	a,acc
      002234 FE               [12]  781 	mov	r6,a
      002235 08               [12]  782 	inc	r0
      002236 E6               [12]  783 	mov	a,@r0
      002237 33               [12]  784 	rlc	a
      002238 FF               [12]  785 	mov	r7,a
      002239 63 06 21         [24]  786 	xrl	ar6,#0x21
      00223C 63 07 10         [24]  787 	xrl	ar7,#0x10
      00223F 80 0A            [24]  788 	sjmp	00149$
      002241                        789 00148$:
      002241 78 1A            [12]  790 	mov	r0,#_crc
      002243 E6               [12]  791 	mov	a,@r0
      002244 25 E0            [12]  792 	add	a,acc
      002246 FE               [12]  793 	mov	r6,a
      002247 08               [12]  794 	inc	r0
      002248 E6               [12]  795 	mov	a,@r0
      002249 33               [12]  796 	rlc	a
      00224A FF               [12]  797 	mov	r7,a
      00224B                        798 00149$:
      00224B 78 1A            [12]  799 	mov	r0,#_crc
      00224D A6 06            [24]  800 	mov	@r0,ar6
      00224F 08               [12]  801 	inc	r0
      002250 A6 07            [24]  802 	mov	@r0,ar7
      002252 78 1C            [12]  803 	mov	r0,#_bitp
      002254 E6               [12]  804 	mov	a,@r0
      002255 C3               [12]  805 	clr	c
      002256 13               [12]  806 	rrc	a
      002257 F6               [12]  807 	mov	@r0,a
      002258 78 1C            [12]  808 	mov	r0,#_bitp
      00225A E6               [12]  809 	mov	a,@r0
      00225B 70 9F            [24]  810 	jnz	00139$
                                    811 ;	crc16.c:80: for (off = 0u; off < len; off++)
      00225D 78 18            [12]  812 	mov	r0,#_off
      00225F 06               [12]  813 	inc	@r0
      002260 B6 00 02         [24]  814 	cjne	@r0,#0x00,00220$
      002263 08               [12]  815 	inc	r0
      002264 06               [12]  816 	inc	@r0
      002265                        817 00220$:
                                    818 ;	crc16.c:82: CCRCB_FINISH(crc);
      002265 80 84            [24]  819 	sjmp	00142$
      002267                        820 00120$:
      002267 78 1A            [12]  821 	mov	r0,#_crc
      002269 86 06            [24]  822 	mov	ar6,@r0
      00226B 08               [12]  823 	inc	r0
      00226C 86 07            [24]  824 	mov	ar7,@r0
      00226E 78 1A            [12]  825 	mov	r0,#_crc
      002270 A6 06            [24]  826 	mov	@r0,ar6
      002272 08               [12]  827 	inc	r0
      002273 A6 07            [24]  828 	mov	@r0,ar7
                                    829 ;	crc16.c:83: printf("CRC16=0x%04x\r\n", crc);
      002275 78 1A            [12]  830 	mov	r0,#_crc
      002277 E6               [12]  831 	mov	a,@r0
      002278 C0 E0            [24]  832 	push	acc
      00227A 08               [12]  833 	inc	r0
      00227B E6               [12]  834 	mov	a,@r0
      00227C C0 E0            [24]  835 	push	acc
      00227E 74 37            [12]  836 	mov	a,#___str_2
      002280 C0 E0            [24]  837 	push	acc
      002282 74 36            [12]  838 	mov	a,#(___str_2 >> 8)
      002284 C0 E0            [24]  839 	push	acc
      002286 74 80            [12]  840 	mov	a,#0x80
      002288 C0 E0            [24]  841 	push	acc
      00228A 12 23 35         [24]  842 	lcall	_printf
      00228D E5 81            [12]  843 	mov	a,sp
      00228F 24 FB            [12]  844 	add	a,#0xfb
      002291 F5 81            [12]  845 	mov	sp,a
                                    846 ;	crc16.c:85: if (intr) {
      002293 78 11            [12]  847 	mov	r0,#_intr
      002295 E6               [12]  848 	mov	a,@r0
      002296 60 1A            [24]  849 	jz	00124$
                                    850 ;	crc16.c:86: EA = 0;
                                    851 ;	assignBit
      002298 C2 AF            [12]  852 	clr	_EA
                                    853 ;	crc16.c:87: printf("interrupted\n");
      00229A 74 57            [12]  854 	mov	a,#___str_4
      00229C C0 E0            [24]  855 	push	acc
      00229E 74 36            [12]  856 	mov	a,#(___str_4 >> 8)
      0022A0 C0 E0            [24]  857 	push	acc
      0022A2 74 80            [12]  858 	mov	a,#0x80
      0022A4 C0 E0            [24]  859 	push	acc
      0022A6 12 23 35         [24]  860 	lcall	_printf
      0022A9 15 81            [12]  861 	dec	sp
      0022AB 15 81            [12]  862 	dec	sp
      0022AD 15 81            [12]  863 	dec	sp
                                    864 ;	crc16.c:88: break;
      0022AF 02 20 89         [24]  865 	ljmp	00131$
      0022B2                        866 00124$:
                                    867 ;	crc16.c:91: t = base + (len >> 1);
      0022B2 78 16            [12]  868 	mov	r0,#_len
      0022B4 86 06            [24]  869 	mov	ar6,@r0
      0022B6 08               [12]  870 	inc	r0
      0022B7 E6               [12]  871 	mov	a,@r0
      0022B8 C3               [12]  872 	clr	c
      0022B9 13               [12]  873 	rrc	a
      0022BA CE               [12]  874 	xch	a,r6
      0022BB 13               [12]  875 	rrc	a
      0022BC CE               [12]  876 	xch	a,r6
      0022BD FF               [12]  877 	mov	r7,a
      0022BE 78 12            [12]  878 	mov	r0,#_base
      0022C0 EE               [12]  879 	mov	a,r6
      0022C1 26               [12]  880 	add	a,@r0
      0022C2 FE               [12]  881 	mov	r6,a
      0022C3 EF               [12]  882 	mov	a,r7
      0022C4 08               [12]  883 	inc	r0
      0022C5 36               [12]  884 	addc	a,@r0
      0022C6 FF               [12]  885 	mov	r7,a
      0022C7 78 14            [12]  886 	mov	r0,#_t
      0022C9 A6 06            [24]  887 	mov	@r0,ar6
      0022CB 08               [12]  888 	inc	r0
      0022CC A6 07            [24]  889 	mov	@r0,ar7
                                    890 ;	crc16.c:92: if (t < base) break;
      0022CE 78 14            [12]  891 	mov	r0,#_t
      0022D0 79 12            [12]  892 	mov	r1,#_base
      0022D2 C3               [12]  893 	clr	c
      0022D3 E6               [12]  894 	mov	a,@r0
      0022D4 97               [12]  895 	subb	a,@r1
      0022D5 08               [12]  896 	inc	r0
      0022D6 E6               [12]  897 	mov	a,@r0
      0022D7 09               [12]  898 	inc	r1
      0022D8 97               [12]  899 	subb	a,@r1
      0022D9 50 03            [24]  900 	jnc	00222$
      0022DB 02 20 89         [24]  901 	ljmp	00131$
      0022DE                        902 00222$:
                                    903 ;	crc16.c:93: else base = t;
      0022DE 78 14            [12]  904 	mov	r0,#_t
      0022E0 79 12            [12]  905 	mov	r1,#_base
      0022E2 E6               [12]  906 	mov	a,@r0
      0022E3 F7               [12]  907 	mov	@r1,a
      0022E4 08               [12]  908 	inc	r0
      0022E5 09               [12]  909 	inc	r1
      0022E6 E6               [12]  910 	mov	a,@r0
      0022E7 F7               [12]  911 	mov	@r1,a
      0022E8 02 21 9C         [24]  912 	ljmp	00129$
      0022EB                        913 00133$:
                                    914 ;	crc16.c:97: PCON |= 2;
      0022EB 43 87 02         [24]  915 	orl	_PCON,#0x02
                                    916 ;	crc16.c:99: return;
                                    917 ;	crc16.c:100: }
      0022EE 22               [24]  918 	ret
                                    919 	.area CSEG    (CODE)
                                    920 	.area CONST   (CODE)
                                    921 	.area CONST   (CODE)
      003619                        922 ___str_0:
      003619 43 4F 4D 50 4C 45 54   923 	.ascii "COMPLETE base=%p "
             45 20 62 61 73 65 3D
             25 70 20
      00362A 00                     924 	.db 0x00
                                    925 	.area CSEG    (CODE)
                                    926 	.area CONST   (CODE)
      00362B                        927 ___str_1:
      00362B 6C 65 6E 3D 30 78 25   928 	.ascii "len=0x%04x "
             30 34 78 20
      003636 00                     929 	.db 0x00
                                    930 	.area CSEG    (CODE)
                                    931 	.area CONST   (CODE)
      003637                        932 ___str_2:
      003637 43 52 43 31 36 3D 30   933 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      003643 0D                     934 	.db 0x0d
      003644 0A                     935 	.db 0x0a
      003645 00                     936 	.db 0x00
                                    937 	.area CSEG    (CODE)
                                    938 	.area CONST   (CODE)
      003646                        939 ___str_3:
      003646 50 41 52 54 49 41 4C   940 	.ascii "PARTIAL base=%p "
             20 62 61 73 65 3D 25
             70 20
      003656 00                     941 	.db 0x00
                                    942 	.area CSEG    (CODE)
                                    943 	.area CONST   (CODE)
      003657                        944 ___str_4:
      003657 69 6E 74 65 72 72 75   945 	.ascii "interrupted"
             70 74 65 64
      003662 0A                     946 	.db 0x0a
      003663 00                     947 	.db 0x00
                                    948 	.area CSEG    (CODE)
                                    949 	.area XINIT   (CODE)
                                    950 	.area CABS    (ABS,CODE)
