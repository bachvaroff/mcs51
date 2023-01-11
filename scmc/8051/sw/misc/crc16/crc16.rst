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
                                    137 	.globl _intr
                                    138 	.globl _putchar
                                    139 	.globl _getchar
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000C8   163 _T2CON	=	0x00c8
                           0000C9   164 _T2MOD	=	0x00c9
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000E0   171 _A	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000090   202 _T2	=	0x0090
                           000091   203 _T2EX	=	0x0091
                           000098   204 _RI	=	0x0098
                           000099   205 _TI	=	0x0099
                           00009A   206 _RB8	=	0x009a
                           00009B   207 _TB8	=	0x009b
                           00009C   208 _REN	=	0x009c
                           00009D   209 _SM2	=	0x009d
                           00009E   210 _SM1	=	0x009e
                           00009F   211 _SM0	=	0x009f
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 _P2_3	=	0x00a3
                           0000A4   216 _P2_4	=	0x00a4
                           0000A5   217 _P2_5	=	0x00a5
                           0000A6   218 _P2_6	=	0x00a6
                           0000A7   219 _P2_7	=	0x00a7
                           0000A8   220 _EX0	=	0x00a8
                           0000A9   221 _ET0	=	0x00a9
                           0000AA   222 _EX1	=	0x00aa
                           0000AB   223 _ET1	=	0x00ab
                           0000AC   224 _ES	=	0x00ac
                           0000AD   225 _ET2	=	0x00ad
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                           0000D0   265 _P	=	0x00d0
                           0000D1   266 _FL	=	0x00d1
                           0000D2   267 _OV	=	0x00d2
                           0000D3   268 _RS0	=	0x00d3
                           0000D4   269 _RS1	=	0x00d4
                           0000D5   270 _F0	=	0x00d5
                           0000D6   271 _AC	=	0x00d6
                           0000D7   272 _CY	=	0x00d7
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable register banks
                                    275 ;--------------------------------------------------------
                                    276 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        277 	.ds 8
                                    278 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable bit register bank
                                    282 ;--------------------------------------------------------
                                    283 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        284 bits:
      000020                        285 	.ds 1
                           008000   286 	b0 = bits[0]
                           008100   287 	b1 = bits[1]
                           008200   288 	b2 = bits[2]
                           008300   289 	b3 = bits[3]
                           008400   290 	b4 = bits[4]
                           008500   291 	b5 = bits[5]
                           008600   292 	b6 = bits[6]
                           008700   293 	b7 = bits[7]
                                    294 ;--------------------------------------------------------
                                    295 ; internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area DSEG    (DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; overlayable items in internal ram 
                                    300 ;--------------------------------------------------------
                                    301 ;--------------------------------------------------------
                                    302 ; Stack segment in internal ram 
                                    303 ;--------------------------------------------------------
                                    304 	.area	SSEG
      000021                        305 __start__stack:
      000021                        306 	.ds	1
                                    307 
                                    308 ;--------------------------------------------------------
                                    309 ; indirectly addressable internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area ISEG    (DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; absolute internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area IABS    (ABS,DATA)
                                    316 	.area IABS    (ABS,DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; bit data
                                    319 ;--------------------------------------------------------
                                    320 	.area BSEG    (BIT)
                                    321 ;--------------------------------------------------------
                                    322 ; paged external ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area PSEG    (PAG,XDATA)
                                    325 ;--------------------------------------------------------
                                    326 ; external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XSEG    (XDATA)
      008000                        329 _intr::
      008000                        330 	.ds 2
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
                                    339 	.area HOME    (CODE)
                                    340 	.area GSINIT0 (CODE)
                                    341 	.area GSINIT1 (CODE)
                                    342 	.area GSINIT2 (CODE)
                                    343 	.area GSINIT3 (CODE)
                                    344 	.area GSINIT4 (CODE)
                                    345 	.area GSINIT5 (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.area GSFINAL (CODE)
                                    348 	.area CSEG    (CODE)
                                    349 ;--------------------------------------------------------
                                    350 ; interrupt vector 
                                    351 ;--------------------------------------------------------
                                    352 	.area HOME    (CODE)
      002000                        353 __interrupt_vect:
      002000 02 20 37         [24]  354 	ljmp	__sdcc_gsinit_startup
      002003 02 20 9F         [24]  355 	ljmp	_int0
                                    356 ;--------------------------------------------------------
                                    357 ; global & static initialisations
                                    358 ;--------------------------------------------------------
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT  (CODE)
                                    361 	.area GSFINAL (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.globl __sdcc_gsinit_startup
                                    364 	.globl __sdcc_program_startup
                                    365 	.globl __start__stack
                                    366 	.globl __mcs51_genXINIT
                                    367 	.globl __mcs51_genXRAMCLEAR
                                    368 	.globl __mcs51_genRAMCLEAR
                                    369 	.area GSFINAL (CODE)
      002090 02 20 06         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002006                        376 __sdcc_program_startup:
      002006 02 20 B5         [24]  377 	ljmp	_main
                                    378 ;	return from main will return to caller
                                    379 ;--------------------------------------------------------
                                    380 ; code
                                    381 ;--------------------------------------------------------
                                    382 	.area CSEG    (CODE)
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'putchar'
                                    385 ;------------------------------------------------------------
                                    386 ;c                         Allocated to registers 
                                    387 ;------------------------------------------------------------
                                    388 ;	crc16.c:7: int putchar(int c) __naked {
                                    389 ;	-----------------------------------------
                                    390 ;	 function putchar
                                    391 ;	-----------------------------------------
      002093                        392 _putchar:
                                    393 ;	naked function: no prologue.
                                    394 ;	crc16.c:12: __endasm;
      002093 E5 82            [12]  395 	mov	a, dpl
      002095 02 00 30         [24]  396 	ljmp	0x0030
                                    397 ;	crc16.c:13: }
                                    398 ;	naked function: no epilogue.
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'getchar'
                                    401 ;------------------------------------------------------------
                                    402 ;	crc16.c:15: int getchar(void) __naked {
                                    403 ;	-----------------------------------------
                                    404 ;	 function getchar
                                    405 ;	-----------------------------------------
      002098                        406 _getchar:
                                    407 ;	naked function: no prologue.
                                    408 ;	crc16.c:20: __endasm;
      002098 12 00 32         [24]  409 	lcall	0x0032
      00209B C2 83            [12]  410 	clr	dph
      00209D F5 82            [12]  411 	mov	dpl, a
                                    412 ;	crc16.c:21: }
                                    413 ;	naked function: no epilogue.
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'int0'
                                    416 ;------------------------------------------------------------
                                    417 ;	crc16.c:42: void int0(void) __interrupt 0 __using 1 {
                                    418 ;	-----------------------------------------
                                    419 ;	 function int0
                                    420 ;	-----------------------------------------
      00209F                        421 _int0:
                           00000F   422 	ar7 = 0x0f
                           00000E   423 	ar6 = 0x0e
                           00000D   424 	ar5 = 0x0d
                           00000C   425 	ar4 = 0x0c
                           00000B   426 	ar3 = 0x0b
                           00000A   427 	ar2 = 0x0a
                           000009   428 	ar1 = 0x09
                           000008   429 	ar0 = 0x08
      00209F C0 E0            [24]  430 	push	acc
      0020A1 C0 82            [24]  431 	push	dpl
      0020A3 C0 83            [24]  432 	push	dph
                                    433 ;	crc16.c:43: intr = 1;
      0020A5 90 80 00         [24]  434 	mov	dptr,#_intr
      0020A8 74 01            [12]  435 	mov	a,#0x01
      0020AA F0               [24]  436 	movx	@dptr,a
      0020AB E4               [12]  437 	clr	a
      0020AC A3               [24]  438 	inc	dptr
      0020AD F0               [24]  439 	movx	@dptr,a
                                    440 ;	crc16.c:44: }
      0020AE D0 83            [24]  441 	pop	dph
      0020B0 D0 82            [24]  442 	pop	dpl
      0020B2 D0 E0            [24]  443 	pop	acc
      0020B4 32               [24]  444 	reti
                                    445 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    446 ;	eliminated unneeded push/pop psw
                                    447 ;	eliminated unneeded push/pop b
                                    448 ;------------------------------------------------------------
                                    449 ;Allocation info for local variables in function 'main'
                                    450 ;------------------------------------------------------------
                                    451 ;base                      Allocated to stack - _bp +1
                                    452 ;t                         Allocated to registers r5 r6 r7 
                                    453 ;len                       Allocated to registers 
                                    454 ;off                       Allocated to stack - _bp +4
                                    455 ;crc                       Allocated to stack - _bp +6
                                    456 ;bitp                      Allocated to stack - _bp +8
                                    457 ;------------------------------------------------------------
                                    458 ;	crc16.c:49: void main(void) {
                                    459 ;	-----------------------------------------
                                    460 ;	 function main
                                    461 ;	-----------------------------------------
      0020B5                        462 _main:
                           000007   463 	ar7 = 0x07
                           000006   464 	ar6 = 0x06
                           000005   465 	ar5 = 0x05
                           000004   466 	ar4 = 0x04
                           000003   467 	ar3 = 0x03
                           000002   468 	ar2 = 0x02
                           000001   469 	ar1 = 0x01
                           000000   470 	ar0 = 0x00
      0020B5 C0 10            [24]  471 	push	_bp
      0020B7 E5 81            [12]  472 	mov	a,sp
      0020B9 F5 10            [12]  473 	mov	_bp,a
      0020BB 24 08            [12]  474 	add	a,#0x08
      0020BD F5 81            [12]  475 	mov	sp,a
                                    476 ;	crc16.c:54: intr = 0;
      0020BF 90 80 00         [24]  477 	mov	dptr,#_intr
      0020C2 E4               [12]  478 	clr	a
      0020C3 F0               [24]  479 	movx	@dptr,a
      0020C4 A3               [24]  480 	inc	dptr
      0020C5 F0               [24]  481 	movx	@dptr,a
                                    482 ;	crc16.c:56: IT0 = 1;
                                    483 ;	assignBit
      0020C6 D2 88            [12]  484 	setb	_IT0
                                    485 ;	crc16.c:57: EX0 = 1;	
                                    486 ;	assignBit
      0020C8 D2 A8            [12]  487 	setb	_EX0
                                    488 ;	crc16.c:58: EA = 1;
                                    489 ;	assignBit
      0020CA D2 AF            [12]  490 	setb	_EA
                                    491 ;	crc16.c:60: while (!intr) {
      0020CC                        492 00131$:
      0020CC 90 80 00         [24]  493 	mov	dptr,#_intr
      0020CF E0               [24]  494 	movx	a,@dptr
      0020D0 F5 F0            [12]  495 	mov	b,a
      0020D2 A3               [24]  496 	inc	dptr
      0020D3 E0               [24]  497 	movx	a,@dptr
      0020D4 45 F0            [12]  498 	orl	a,b
      0020D6 60 03            [24]  499 	jz	00227$
      0020D8 02 00 00         [24]  500 	ljmp	0
      0020DB                        501 00227$:
                                    502 ;	crc16.c:61: base = (unsigned char *)0x0u;
      0020DB A8 10            [24]  503 	mov	r0,_bp
      0020DD 08               [12]  504 	inc	r0
      0020DE E4               [12]  505 	clr	a
      0020DF F6               [12]  506 	mov	@r0,a
      0020E0 08               [12]  507 	inc	r0
      0020E1 F6               [12]  508 	mov	@r0,a
      0020E2 08               [12]  509 	inc	r0
      0020E3 76 00            [12]  510 	mov	@r0,#0x00
                                    511 ;	crc16.c:63: printf("COMPLETE base=0x%04x ", (unsigned int)base);
      0020E5 C0 E0            [24]  512 	push	acc
      0020E7 C0 E0            [24]  513 	push	acc
      0020E9 74 70            [12]  514 	mov	a,#___str_0
      0020EB C0 E0            [24]  515 	push	acc
      0020ED 74 36            [12]  516 	mov	a,#(___str_0 >> 8)
      0020EF C0 E0            [24]  517 	push	acc
      0020F1 74 80            [12]  518 	mov	a,#0x80
      0020F3 C0 E0            [24]  519 	push	acc
      0020F5 12 23 8C         [24]  520 	lcall	_printf
      0020F8 E5 81            [12]  521 	mov	a,sp
      0020FA 24 FB            [12]  522 	add	a,#0xfb
      0020FC F5 81            [12]  523 	mov	sp,a
                                    524 ;	crc16.c:64: printf("len=0x%04x ", len);
      0020FE 74 FF            [12]  525 	mov	a,#0xff
      002100 C0 E0            [24]  526 	push	acc
      002102 C0 E0            [24]  527 	push	acc
      002104 74 86            [12]  528 	mov	a,#___str_1
      002106 C0 E0            [24]  529 	push	acc
      002108 74 36            [12]  530 	mov	a,#(___str_1 >> 8)
      00210A C0 E0            [24]  531 	push	acc
      00210C 74 80            [12]  532 	mov	a,#0x80
      00210E C0 E0            [24]  533 	push	acc
      002110 12 23 8C         [24]  534 	lcall	_printf
      002113 E5 81            [12]  535 	mov	a,sp
      002115 24 FB            [12]  536 	add	a,#0xfb
      002117 F5 81            [12]  537 	mov	sp,a
                                    538 ;	crc16.c:65: CCRCB_INIT(crc);
      002119 7B FF            [12]  539 	mov	r3,#0xff
      00211B 7C FF            [12]  540 	mov	r4,#0xff
                                    541 ;	crc16.c:66: for (off = 0u; off < len; off++)
      00211D E5 10            [12]  542 	mov	a,_bp
      00211F 24 04            [12]  543 	add	a,#0x04
      002121 F8               [12]  544 	mov	r0,a
      002122 E4               [12]  545 	clr	a
      002123 F6               [12]  546 	mov	@r0,a
      002124 08               [12]  547 	inc	r0
      002125 F6               [12]  548 	mov	@r0,a
      002126                        549 00137$:
      002126 E5 10            [12]  550 	mov	a,_bp
      002128 24 04            [12]  551 	add	a,#0x04
      00212A F8               [12]  552 	mov	r0,a
      00212B C3               [12]  553 	clr	c
      00212C E6               [12]  554 	mov	a,@r0
      00212D 94 FF            [12]  555 	subb	a,#0xff
      00212F 08               [12]  556 	inc	r0
      002130 E6               [12]  557 	mov	a,@r0
      002131 94 FF            [12]  558 	subb	a,#0xff
      002133 50 69            [24]  559 	jnc	00109$
                                    560 ;	crc16.c:67: CCRCB(crc, base[off], bitp);
      002135 7E 80            [12]  561 	mov	r6,#0x80
      002137                        562 00134$:
      002137 EC               [12]  563 	mov	a,r4
      002138 23               [12]  564 	rl	a
      002139 54 01            [12]  565 	anl	a,#0x01
      00213B FD               [12]  566 	mov	r5,a
      00213C 7F 00            [12]  567 	mov	r7,#0x00
      00213E C0 03            [24]  568 	push	ar3
      002140 C0 04            [24]  569 	push	ar4
      002142 E5 10            [12]  570 	mov	a,_bp
      002144 24 04            [12]  571 	add	a,#0x04
      002146 F8               [12]  572 	mov	r0,a
      002147 86 02            [24]  573 	mov	ar2,@r0
      002149 08               [12]  574 	inc	r0
      00214A 86 03            [24]  575 	mov	ar3,@r0
      00214C 7C 00            [12]  576 	mov	r4,#0x00
      00214E 8A 82            [24]  577 	mov	dpl,r2
      002150 8B 83            [24]  578 	mov	dph,r3
      002152 8C F0            [24]  579 	mov	b,r4
      002154 12 23 C5         [24]  580 	lcall	__gptrget
      002157 FA               [12]  581 	mov	r2,a
      002158 EE               [12]  582 	mov	a,r6
      002159 52 02            [12]  583 	anl	ar2,a
      00215B EA               [12]  584 	mov	a,r2
      00215C B4 01 00         [24]  585 	cjne	a,#0x01,00229$
      00215F                        586 00229$:
      00215F B3               [12]  587 	cpl	c
      002160 92 00            [24]  588 	mov	b0,c
      002162 E4               [12]  589 	clr	a
      002163 33               [12]  590 	rlc	a
      002164 7C 00            [12]  591 	mov	r4,#0x00
      002166 62 05            [12]  592 	xrl	ar5,a
      002168 EC               [12]  593 	mov	a,r4
      002169 62 07            [12]  594 	xrl	ar7,a
      00216B D0 04            [24]  595 	pop	ar4
      00216D D0 03            [24]  596 	pop	ar3
      00216F ED               [12]  597 	mov	a,r5
      002170 4F               [12]  598 	orl	a,r7
      002171 60 0E            [24]  599 	jz	00146$
      002173 EB               [12]  600 	mov	a,r3
      002174 2B               [12]  601 	add	a,r3
      002175 FD               [12]  602 	mov	r5,a
      002176 EC               [12]  603 	mov	a,r4
      002177 33               [12]  604 	rlc	a
      002178 FF               [12]  605 	mov	r7,a
      002179 63 05 21         [24]  606 	xrl	ar5,#0x21
      00217C 63 07 10         [24]  607 	xrl	ar7,#0x10
      00217F 80 06            [24]  608 	sjmp	00147$
      002181                        609 00146$:
      002181 EB               [12]  610 	mov	a,r3
      002182 2B               [12]  611 	add	a,r3
      002183 FD               [12]  612 	mov	r5,a
      002184 EC               [12]  613 	mov	a,r4
      002185 33               [12]  614 	rlc	a
      002186 FF               [12]  615 	mov	r7,a
      002187                        616 00147$:
      002187 8D 03            [24]  617 	mov	ar3,r5
      002189 8F 04            [24]  618 	mov	ar4,r7
      00218B EE               [12]  619 	mov	a,r6
      00218C C3               [12]  620 	clr	c
      00218D 13               [12]  621 	rrc	a
      00218E FE               [12]  622 	mov	r6,a
      00218F 70 A6            [24]  623 	jnz	00134$
                                    624 ;	crc16.c:66: for (off = 0u; off < len; off++)
      002191 E5 10            [12]  625 	mov	a,_bp
      002193 24 04            [12]  626 	add	a,#0x04
      002195 F8               [12]  627 	mov	r0,a
      002196 06               [12]  628 	inc	@r0
      002197 B6 00 02         [24]  629 	cjne	@r0,#0x00,00232$
      00219A 08               [12]  630 	inc	r0
      00219B 06               [12]  631 	inc	@r0
      00219C                        632 00232$:
                                    633 ;	crc16.c:68: CCRCB_FINISH(crc);
      00219C 80 88            [24]  634 	sjmp	00137$
      00219E                        635 00109$:
                                    636 ;	crc16.c:69: printf("CRC16=0x%04x\n\r", crc);
      00219E C0 03            [24]  637 	push	ar3
      0021A0 C0 04            [24]  638 	push	ar4
      0021A2 74 92            [12]  639 	mov	a,#___str_2
      0021A4 C0 E0            [24]  640 	push	acc
      0021A6 74 36            [12]  641 	mov	a,#(___str_2 >> 8)
      0021A8 C0 E0            [24]  642 	push	acc
      0021AA 74 80            [12]  643 	mov	a,#0x80
      0021AC C0 E0            [24]  644 	push	acc
      0021AE 12 23 8C         [24]  645 	lcall	_printf
      0021B1 E5 81            [12]  646 	mov	a,sp
      0021B3 24 FB            [12]  647 	add	a,#0xfb
      0021B5 F5 81            [12]  648 	mov	sp,a
                                    649 ;	crc16.c:72: while (1) {
      0021B7                        650 00129$:
                                    651 ;	crc16.c:73: printf("PARTIAL base=0x%04x ", (unsigned int)base);
      0021B7 A8 10            [24]  652 	mov	r0,_bp
      0021B9 08               [12]  653 	inc	r0
      0021BA 86 05            [24]  654 	mov	ar5,@r0
      0021BC 08               [12]  655 	inc	r0
      0021BD 86 06            [24]  656 	mov	ar6,@r0
      0021BF C0 05            [24]  657 	push	ar5
      0021C1 C0 06            [24]  658 	push	ar6
      0021C3 74 A1            [12]  659 	mov	a,#___str_3
      0021C5 C0 E0            [24]  660 	push	acc
      0021C7 74 36            [12]  661 	mov	a,#(___str_3 >> 8)
      0021C9 C0 E0            [24]  662 	push	acc
      0021CB 74 80            [12]  663 	mov	a,#0x80
      0021CD C0 E0            [24]  664 	push	acc
      0021CF 12 23 8C         [24]  665 	lcall	_printf
      0021D2 E5 81            [12]  666 	mov	a,sp
      0021D4 24 FB            [12]  667 	add	a,#0xfb
      0021D6 F5 81            [12]  668 	mov	sp,a
                                    669 ;	crc16.c:74: printf("len=0x%04x ", len);
      0021D8 E4               [12]  670 	clr	a
      0021D9 C0 E0            [24]  671 	push	acc
      0021DB 74 20            [12]  672 	mov	a,#0x20
      0021DD C0 E0            [24]  673 	push	acc
      0021DF 74 86            [12]  674 	mov	a,#___str_1
      0021E1 C0 E0            [24]  675 	push	acc
      0021E3 74 36            [12]  676 	mov	a,#(___str_1 >> 8)
      0021E5 C0 E0            [24]  677 	push	acc
      0021E7 74 80            [12]  678 	mov	a,#0x80
      0021E9 C0 E0            [24]  679 	push	acc
      0021EB 12 23 8C         [24]  680 	lcall	_printf
      0021EE E5 81            [12]  681 	mov	a,sp
      0021F0 24 FB            [12]  682 	add	a,#0xfb
      0021F2 F5 81            [12]  683 	mov	sp,a
                                    684 ;	crc16.c:75: CCRCB_INIT(crc);
      0021F4 E5 10            [12]  685 	mov	a,_bp
      0021F6 24 06            [12]  686 	add	a,#0x06
      0021F8 F8               [12]  687 	mov	r0,a
      0021F9 76 FF            [12]  688 	mov	@r0,#0xff
      0021FB 08               [12]  689 	inc	r0
      0021FC 76 FF            [12]  690 	mov	@r0,#0xff
                                    691 ;	crc16.c:76: for (off = 0u; off < len; off++)
      0021FE E5 10            [12]  692 	mov	a,_bp
      002200 24 04            [12]  693 	add	a,#0x04
      002202 F8               [12]  694 	mov	r0,a
      002203 E4               [12]  695 	clr	a
      002204 F6               [12]  696 	mov	@r0,a
      002205 08               [12]  697 	inc	r0
      002206 F6               [12]  698 	mov	@r0,a
      002207                        699 00142$:
      002207 E5 10            [12]  700 	mov	a,_bp
      002209 24 04            [12]  701 	add	a,#0x04
      00220B F8               [12]  702 	mov	r0,a
      00220C C3               [12]  703 	clr	c
      00220D 08               [12]  704 	inc	r0
      00220E E6               [12]  705 	mov	a,@r0
      00220F 94 20            [12]  706 	subb	a,#0x20
      002211 40 03            [24]  707 	jc	00233$
      002213 02 22 BC         [24]  708 	ljmp	00120$
      002216                        709 00233$:
                                    710 ;	crc16.c:77: CCRCB(crc, base[off], bitp);
      002216 E5 10            [12]  711 	mov	a,_bp
      002218 24 08            [12]  712 	add	a,#0x08
      00221A F8               [12]  713 	mov	r0,a
      00221B 76 80            [12]  714 	mov	@r0,#0x80
      00221D A8 10            [24]  715 	mov	r0,_bp
      00221F 08               [12]  716 	inc	r0
      002220 E5 10            [12]  717 	mov	a,_bp
      002222 24 04            [12]  718 	add	a,#0x04
      002224 F9               [12]  719 	mov	r1,a
      002225 E7               [12]  720 	mov	a,@r1
      002226 26               [12]  721 	add	a,@r0
      002227 FA               [12]  722 	mov	r2,a
      002228 09               [12]  723 	inc	r1
      002229 E7               [12]  724 	mov	a,@r1
      00222A 08               [12]  725 	inc	r0
      00222B 36               [12]  726 	addc	a,@r0
      00222C FC               [12]  727 	mov	r4,a
      00222D 08               [12]  728 	inc	r0
      00222E 86 05            [24]  729 	mov	ar5,@r0
      002230                        730 00139$:
      002230 E5 10            [12]  731 	mov	a,_bp
      002232 24 06            [12]  732 	add	a,#0x06
      002234 F8               [12]  733 	mov	r0,a
      002235 08               [12]  734 	inc	r0
      002236 E6               [12]  735 	mov	a,@r0
      002237 23               [12]  736 	rl	a
      002238 54 01            [12]  737 	anl	a,#0x01
      00223A FB               [12]  738 	mov	r3,a
      00223B 7F 00            [12]  739 	mov	r7,#0x00
      00223D 8A 82            [24]  740 	mov	dpl,r2
      00223F 8C 83            [24]  741 	mov	dph,r4
      002241 8D F0            [24]  742 	mov	b,r5
      002243 12 23 C5         [24]  743 	lcall	__gptrget
      002246 FE               [12]  744 	mov	r6,a
      002247 E5 10            [12]  745 	mov	a,_bp
      002249 24 08            [12]  746 	add	a,#0x08
      00224B F8               [12]  747 	mov	r0,a
      00224C E6               [12]  748 	mov	a,@r0
      00224D 52 06            [12]  749 	anl	ar6,a
      00224F EE               [12]  750 	mov	a,r6
      002250 B4 01 00         [24]  751 	cjne	a,#0x01,00234$
      002253                        752 00234$:
      002253 B3               [12]  753 	cpl	c
      002254 92 00            [24]  754 	mov	b0,c
      002256 C0 02            [24]  755 	push	ar2
      002258 C0 04            [24]  756 	push	ar4
      00225A C0 05            [24]  757 	push	ar5
      00225C A2 00            [12]  758 	mov	c,b0
      00225E E4               [12]  759 	clr	a
      00225F 33               [12]  760 	rlc	a
      002260 7E 00            [12]  761 	mov	r6,#0x00
      002262 62 03            [12]  762 	xrl	ar3,a
      002264 EE               [12]  763 	mov	a,r6
      002265 62 07            [12]  764 	xrl	ar7,a
      002267 D0 05            [24]  765 	pop	ar5
      002269 D0 04            [24]  766 	pop	ar4
      00226B D0 02            [24]  767 	pop	ar2
      00226D EB               [12]  768 	mov	a,r3
      00226E 4F               [12]  769 	orl	a,r7
      00226F 60 15            [24]  770 	jz	00148$
      002271 E5 10            [12]  771 	mov	a,_bp
      002273 24 06            [12]  772 	add	a,#0x06
      002275 F8               [12]  773 	mov	r0,a
      002276 E6               [12]  774 	mov	a,@r0
      002277 25 E0            [12]  775 	add	a,acc
      002279 FE               [12]  776 	mov	r6,a
      00227A 08               [12]  777 	inc	r0
      00227B E6               [12]  778 	mov	a,@r0
      00227C 33               [12]  779 	rlc	a
      00227D FF               [12]  780 	mov	r7,a
      00227E 63 06 21         [24]  781 	xrl	ar6,#0x21
      002281 63 07 10         [24]  782 	xrl	ar7,#0x10
      002284 80 0D            [24]  783 	sjmp	00149$
      002286                        784 00148$:
      002286 E5 10            [12]  785 	mov	a,_bp
      002288 24 06            [12]  786 	add	a,#0x06
      00228A F8               [12]  787 	mov	r0,a
      00228B E6               [12]  788 	mov	a,@r0
      00228C 25 E0            [12]  789 	add	a,acc
      00228E FE               [12]  790 	mov	r6,a
      00228F 08               [12]  791 	inc	r0
      002290 E6               [12]  792 	mov	a,@r0
      002291 33               [12]  793 	rlc	a
      002292 FF               [12]  794 	mov	r7,a
      002293                        795 00149$:
      002293 E5 10            [12]  796 	mov	a,_bp
      002295 24 06            [12]  797 	add	a,#0x06
      002297 F8               [12]  798 	mov	r0,a
      002298 A6 06            [24]  799 	mov	@r0,ar6
      00229A 08               [12]  800 	inc	r0
      00229B A6 07            [24]  801 	mov	@r0,ar7
      00229D E5 10            [12]  802 	mov	a,_bp
      00229F 24 08            [12]  803 	add	a,#0x08
      0022A1 F8               [12]  804 	mov	r0,a
      0022A2 E6               [12]  805 	mov	a,@r0
      0022A3 C3               [12]  806 	clr	c
      0022A4 13               [12]  807 	rrc	a
      0022A5 F6               [12]  808 	mov	@r0,a
      0022A6 E5 10            [12]  809 	mov	a,_bp
      0022A8 24 08            [12]  810 	add	a,#0x08
      0022AA F8               [12]  811 	mov	r0,a
      0022AB E6               [12]  812 	mov	a,@r0
      0022AC 70 82            [24]  813 	jnz	00139$
                                    814 ;	crc16.c:76: for (off = 0u; off < len; off++)
      0022AE E5 10            [12]  815 	mov	a,_bp
      0022B0 24 04            [12]  816 	add	a,#0x04
      0022B2 F8               [12]  817 	mov	r0,a
      0022B3 06               [12]  818 	inc	@r0
      0022B4 B6 00 02         [24]  819 	cjne	@r0,#0x00,00237$
      0022B7 08               [12]  820 	inc	r0
      0022B8 06               [12]  821 	inc	@r0
      0022B9                        822 00237$:
      0022B9 02 22 07         [24]  823 	ljmp	00142$
                                    824 ;	crc16.c:78: CCRCB_FINISH(crc);
      0022BC                        825 00120$:
                                    826 ;	crc16.c:79: printf("CRC16=0x%04x\n\r", crc);
      0022BC E5 10            [12]  827 	mov	a,_bp
      0022BE 24 06            [12]  828 	add	a,#0x06
      0022C0 F8               [12]  829 	mov	r0,a
      0022C1 E6               [12]  830 	mov	a,@r0
      0022C2 C0 E0            [24]  831 	push	acc
      0022C4 08               [12]  832 	inc	r0
      0022C5 E6               [12]  833 	mov	a,@r0
      0022C6 C0 E0            [24]  834 	push	acc
      0022C8 74 92            [12]  835 	mov	a,#___str_2
      0022CA C0 E0            [24]  836 	push	acc
      0022CC 74 36            [12]  837 	mov	a,#(___str_2 >> 8)
      0022CE C0 E0            [24]  838 	push	acc
      0022D0 74 80            [12]  839 	mov	a,#0x80
      0022D2 C0 E0            [24]  840 	push	acc
      0022D4 12 23 8C         [24]  841 	lcall	_printf
      0022D7 E5 81            [12]  842 	mov	a,sp
      0022D9 24 FB            [12]  843 	add	a,#0xfb
      0022DB F5 81            [12]  844 	mov	sp,a
                                    845 ;	crc16.c:81: if (intr) {
      0022DD 90 80 00         [24]  846 	mov	dptr,#_intr
      0022E0 E0               [24]  847 	movx	a,@dptr
      0022E1 F5 F0            [12]  848 	mov	b,a
      0022E3 A3               [24]  849 	inc	dptr
      0022E4 E0               [24]  850 	movx	a,@dptr
      0022E5 45 F0            [12]  851 	orl	a,b
      0022E7 60 1A            [24]  852 	jz	00124$
                                    853 ;	crc16.c:82: EA = 0;
                                    854 ;	assignBit
      0022E9 C2 AF            [12]  855 	clr	_EA
                                    856 ;	crc16.c:83: printf("interrupted\n");
      0022EB 74 B6            [12]  857 	mov	a,#___str_4
      0022ED C0 E0            [24]  858 	push	acc
      0022EF 74 36            [12]  859 	mov	a,#(___str_4 >> 8)
      0022F1 C0 E0            [24]  860 	push	acc
      0022F3 74 80            [12]  861 	mov	a,#0x80
      0022F5 C0 E0            [24]  862 	push	acc
      0022F7 12 23 8C         [24]  863 	lcall	_printf
      0022FA 15 81            [12]  864 	dec	sp
      0022FC 15 81            [12]  865 	dec	sp
      0022FE 15 81            [12]  866 	dec	sp
                                    867 ;	crc16.c:84: break;
      002300 02 20 CC         [24]  868 	ljmp	00131$
      002303                        869 00124$:
                                    870 ;	crc16.c:87: t = base + (len >> 1);
      002303 A8 10            [24]  871 	mov	r0,_bp
      002305 08               [12]  872 	inc	r0
      002306 86 05            [24]  873 	mov	ar5,@r0
      002308 74 10            [12]  874 	mov	a,#0x10
      00230A 08               [12]  875 	inc	r0
      00230B 26               [12]  876 	add	a,@r0
      00230C FE               [12]  877 	mov	r6,a
      00230D 08               [12]  878 	inc	r0
      00230E 86 07            [24]  879 	mov	ar7,@r0
                                    880 ;	crc16.c:88: if (t < base) break;
      002310 A8 10            [24]  881 	mov	r0,_bp
      002312 08               [12]  882 	inc	r0
      002313 E6               [12]  883 	mov	a,@r0
      002314 C0 E0            [24]  884 	push	acc
      002316 08               [12]  885 	inc	r0
      002317 E6               [12]  886 	mov	a,@r0
      002318 C0 E0            [24]  887 	push	acc
      00231A 08               [12]  888 	inc	r0
      00231B E6               [12]  889 	mov	a,@r0
      00231C C0 E0            [24]  890 	push	acc
      00231E 8D 82            [24]  891 	mov	dpl,r5
      002320 8E 83            [24]  892 	mov	dph,r6
      002322 8F F0            [24]  893 	mov	b,r7
      002324 12 20 09         [24]  894 	lcall	___gptr_cmp
      002327 15 81            [12]  895 	dec	sp
      002329 15 81            [12]  896 	dec	sp
      00232B 15 81            [12]  897 	dec	sp
      00232D 50 03            [24]  898 	jnc	00239$
      00232F 02 20 CC         [24]  899 	ljmp	00131$
      002332                        900 00239$:
                                    901 ;	crc16.c:89: else base = t;
      002332 A8 10            [24]  902 	mov	r0,_bp
      002334 08               [12]  903 	inc	r0
      002335 A6 05            [24]  904 	mov	@r0,ar5
      002337 08               [12]  905 	inc	r0
      002338 A6 06            [24]  906 	mov	@r0,ar6
      00233A 08               [12]  907 	inc	r0
      00233B A6 07            [24]  908 	mov	@r0,ar7
                                    909 ;	crc16.c:96: __endasm;
      00233D 02 21 B7         [24]  910 	ljmp	00129$
                                    911 ;	crc16.c:101: }
      002340 85 10 81         [24]  912 	mov	sp,_bp
      002343 D0 10            [24]  913 	pop	_bp
      002345 22               [24]  914 	ret
                                    915 	.area CSEG    (CODE)
                                    916 	.area CONST   (CODE)
                                    917 	.area CONST   (CODE)
      003670                        918 ___str_0:
      003670 43 4F 4D 50 4C 45 54   919 	.ascii "COMPLETE base=0x%04x "
             45 20 62 61 73 65 3D
             30 78 25 30 34 78 20
      003685 00                     920 	.db 0x00
                                    921 	.area CSEG    (CODE)
                                    922 	.area CONST   (CODE)
      003686                        923 ___str_1:
      003686 6C 65 6E 3D 30 78 25   924 	.ascii "len=0x%04x "
             30 34 78 20
      003691 00                     925 	.db 0x00
                                    926 	.area CSEG    (CODE)
                                    927 	.area CONST   (CODE)
      003692                        928 ___str_2:
      003692 43 52 43 31 36 3D 30   929 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      00369E 0A                     930 	.db 0x0a
      00369F 0D                     931 	.db 0x0d
      0036A0 00                     932 	.db 0x00
                                    933 	.area CSEG    (CODE)
                                    934 	.area CONST   (CODE)
      0036A1                        935 ___str_3:
      0036A1 50 41 52 54 49 41 4C   936 	.ascii "PARTIAL base=0x%04x "
             20 62 61 73 65 3D 30
             78 25 30 34 78 20
      0036B5 00                     937 	.db 0x00
                                    938 	.area CSEG    (CODE)
                                    939 	.area CONST   (CODE)
      0036B6                        940 ___str_4:
      0036B6 69 6E 74 65 72 72 75   941 	.ascii "interrupted"
             70 74 65 64
      0036C1 0A                     942 	.db 0x0a
      0036C2 00                     943 	.db 0x00
                                    944 	.area CSEG    (CODE)
                                    945 	.area XINIT   (CODE)
                                    946 	.area CABS    (ABS,CODE)
