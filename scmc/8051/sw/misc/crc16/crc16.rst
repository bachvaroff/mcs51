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
      002003 02 20 A0         [24]  355 	ljmp	_int0
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
      002006 02 20 B6         [24]  377 	ljmp	_main
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
                                    402 ;	crc16.c:15: int getchar(void) {
                                    403 ;	-----------------------------------------
                                    404 ;	 function getchar
                                    405 ;	-----------------------------------------
      002098                        406 _getchar:
                           000007   407 	ar7 = 0x07
                           000006   408 	ar6 = 0x06
                           000005   409 	ar5 = 0x05
                           000004   410 	ar4 = 0x04
                           000003   411 	ar3 = 0x03
                           000002   412 	ar2 = 0x02
                           000001   413 	ar1 = 0x01
                           000000   414 	ar0 = 0x00
                                    415 ;	crc16.c:20: __endasm;
      002098 12 00 32         [24]  416 	lcall	0x0032
      00209B C2 83            [12]  417 	clr	dph
      00209D F5 82            [12]  418 	mov	dpl, a
                                    419 ;	crc16.c:21: }
      00209F 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'int0'
                                    423 ;------------------------------------------------------------
                                    424 ;	crc16.c:42: void int0(void) __interrupt 0 __using 1 {
                                    425 ;	-----------------------------------------
                                    426 ;	 function int0
                                    427 ;	-----------------------------------------
      0020A0                        428 _int0:
                           00000F   429 	ar7 = 0x0f
                           00000E   430 	ar6 = 0x0e
                           00000D   431 	ar5 = 0x0d
                           00000C   432 	ar4 = 0x0c
                           00000B   433 	ar3 = 0x0b
                           00000A   434 	ar2 = 0x0a
                           000009   435 	ar1 = 0x09
                           000008   436 	ar0 = 0x08
      0020A0 C0 E0            [24]  437 	push	acc
      0020A2 C0 82            [24]  438 	push	dpl
      0020A4 C0 83            [24]  439 	push	dph
                                    440 ;	crc16.c:43: intr = 1;
      0020A6 90 80 00         [24]  441 	mov	dptr,#_intr
      0020A9 74 01            [12]  442 	mov	a,#0x01
      0020AB F0               [24]  443 	movx	@dptr,a
      0020AC E4               [12]  444 	clr	a
      0020AD A3               [24]  445 	inc	dptr
      0020AE F0               [24]  446 	movx	@dptr,a
                                    447 ;	crc16.c:44: }
      0020AF D0 83            [24]  448 	pop	dph
      0020B1 D0 82            [24]  449 	pop	dpl
      0020B3 D0 E0            [24]  450 	pop	acc
      0020B5 32               [24]  451 	reti
                                    452 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    453 ;	eliminated unneeded push/pop psw
                                    454 ;	eliminated unneeded push/pop b
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'main'
                                    457 ;------------------------------------------------------------
                                    458 ;base                      Allocated to stack - _bp +1
                                    459 ;t                         Allocated to registers r5 r6 r7 
                                    460 ;len                       Allocated to registers 
                                    461 ;off                       Allocated to stack - _bp +4
                                    462 ;crc                       Allocated to stack - _bp +6
                                    463 ;bitp                      Allocated to stack - _bp +8
                                    464 ;------------------------------------------------------------
                                    465 ;	crc16.c:49: void main(void) {
                                    466 ;	-----------------------------------------
                                    467 ;	 function main
                                    468 ;	-----------------------------------------
      0020B6                        469 _main:
                           000007   470 	ar7 = 0x07
                           000006   471 	ar6 = 0x06
                           000005   472 	ar5 = 0x05
                           000004   473 	ar4 = 0x04
                           000003   474 	ar3 = 0x03
                           000002   475 	ar2 = 0x02
                           000001   476 	ar1 = 0x01
                           000000   477 	ar0 = 0x00
      0020B6 C0 10            [24]  478 	push	_bp
      0020B8 E5 81            [12]  479 	mov	a,sp
      0020BA F5 10            [12]  480 	mov	_bp,a
      0020BC 24 08            [12]  481 	add	a,#0x08
      0020BE F5 81            [12]  482 	mov	sp,a
                                    483 ;	crc16.c:54: intr = 0;
      0020C0 90 80 00         [24]  484 	mov	dptr,#_intr
      0020C3 E4               [12]  485 	clr	a
      0020C4 F0               [24]  486 	movx	@dptr,a
      0020C5 A3               [24]  487 	inc	dptr
      0020C6 F0               [24]  488 	movx	@dptr,a
                                    489 ;	crc16.c:56: IT0 = 1;
                                    490 ;	assignBit
      0020C7 D2 88            [12]  491 	setb	_IT0
                                    492 ;	crc16.c:57: EX0 = 1;	
                                    493 ;	assignBit
      0020C9 D2 A8            [12]  494 	setb	_EX0
                                    495 ;	crc16.c:58: EA = 1;
                                    496 ;	assignBit
      0020CB D2 AF            [12]  497 	setb	_EA
                                    498 ;	crc16.c:60: while (!intr) {
      0020CD                        499 00131$:
      0020CD 90 80 00         [24]  500 	mov	dptr,#_intr
      0020D0 E0               [24]  501 	movx	a,@dptr
      0020D1 F5 F0            [12]  502 	mov	b,a
      0020D3 A3               [24]  503 	inc	dptr
      0020D4 E0               [24]  504 	movx	a,@dptr
      0020D5 45 F0            [12]  505 	orl	a,b
      0020D7 60 03            [24]  506 	jz	00227$
      0020D9 02 00 00         [24]  507 	ljmp	0
      0020DC                        508 00227$:
                                    509 ;	crc16.c:61: base = (unsigned char *)0x0u;
      0020DC A8 10            [24]  510 	mov	r0,_bp
      0020DE 08               [12]  511 	inc	r0
      0020DF E4               [12]  512 	clr	a
      0020E0 F6               [12]  513 	mov	@r0,a
      0020E1 08               [12]  514 	inc	r0
      0020E2 F6               [12]  515 	mov	@r0,a
      0020E3 08               [12]  516 	inc	r0
      0020E4 76 00            [12]  517 	mov	@r0,#0x00
                                    518 ;	crc16.c:63: printf("COMPLETE base=0x%04x ", (unsigned int)base);
      0020E6 C0 E0            [24]  519 	push	acc
      0020E8 C0 E0            [24]  520 	push	acc
      0020EA 74 71            [12]  521 	mov	a,#___str_0
      0020EC C0 E0            [24]  522 	push	acc
      0020EE 74 36            [12]  523 	mov	a,#(___str_0 >> 8)
      0020F0 C0 E0            [24]  524 	push	acc
      0020F2 74 80            [12]  525 	mov	a,#0x80
      0020F4 C0 E0            [24]  526 	push	acc
      0020F6 12 23 8D         [24]  527 	lcall	_printf
      0020F9 E5 81            [12]  528 	mov	a,sp
      0020FB 24 FB            [12]  529 	add	a,#0xfb
      0020FD F5 81            [12]  530 	mov	sp,a
                                    531 ;	crc16.c:64: printf("len=0x%04x ", len);
      0020FF 74 FF            [12]  532 	mov	a,#0xff
      002101 C0 E0            [24]  533 	push	acc
      002103 C0 E0            [24]  534 	push	acc
      002105 74 87            [12]  535 	mov	a,#___str_1
      002107 C0 E0            [24]  536 	push	acc
      002109 74 36            [12]  537 	mov	a,#(___str_1 >> 8)
      00210B C0 E0            [24]  538 	push	acc
      00210D 74 80            [12]  539 	mov	a,#0x80
      00210F C0 E0            [24]  540 	push	acc
      002111 12 23 8D         [24]  541 	lcall	_printf
      002114 E5 81            [12]  542 	mov	a,sp
      002116 24 FB            [12]  543 	add	a,#0xfb
      002118 F5 81            [12]  544 	mov	sp,a
                                    545 ;	crc16.c:65: CCRCB_INIT(crc);
      00211A 7B FF            [12]  546 	mov	r3,#0xff
      00211C 7C FF            [12]  547 	mov	r4,#0xff
                                    548 ;	crc16.c:66: for (off = 0u; off < len; off++)
      00211E E5 10            [12]  549 	mov	a,_bp
      002120 24 04            [12]  550 	add	a,#0x04
      002122 F8               [12]  551 	mov	r0,a
      002123 E4               [12]  552 	clr	a
      002124 F6               [12]  553 	mov	@r0,a
      002125 08               [12]  554 	inc	r0
      002126 F6               [12]  555 	mov	@r0,a
      002127                        556 00137$:
      002127 E5 10            [12]  557 	mov	a,_bp
      002129 24 04            [12]  558 	add	a,#0x04
      00212B F8               [12]  559 	mov	r0,a
      00212C C3               [12]  560 	clr	c
      00212D E6               [12]  561 	mov	a,@r0
      00212E 94 FF            [12]  562 	subb	a,#0xff
      002130 08               [12]  563 	inc	r0
      002131 E6               [12]  564 	mov	a,@r0
      002132 94 FF            [12]  565 	subb	a,#0xff
      002134 50 69            [24]  566 	jnc	00109$
                                    567 ;	crc16.c:67: CCRCB(crc, base[off], bitp);
      002136 7E 80            [12]  568 	mov	r6,#0x80
      002138                        569 00134$:
      002138 EC               [12]  570 	mov	a,r4
      002139 23               [12]  571 	rl	a
      00213A 54 01            [12]  572 	anl	a,#0x01
      00213C FD               [12]  573 	mov	r5,a
      00213D 7F 00            [12]  574 	mov	r7,#0x00
      00213F C0 03            [24]  575 	push	ar3
      002141 C0 04            [24]  576 	push	ar4
      002143 E5 10            [12]  577 	mov	a,_bp
      002145 24 04            [12]  578 	add	a,#0x04
      002147 F8               [12]  579 	mov	r0,a
      002148 86 02            [24]  580 	mov	ar2,@r0
      00214A 08               [12]  581 	inc	r0
      00214B 86 03            [24]  582 	mov	ar3,@r0
      00214D 7C 00            [12]  583 	mov	r4,#0x00
      00214F 8A 82            [24]  584 	mov	dpl,r2
      002151 8B 83            [24]  585 	mov	dph,r3
      002153 8C F0            [24]  586 	mov	b,r4
      002155 12 23 C6         [24]  587 	lcall	__gptrget
      002158 FA               [12]  588 	mov	r2,a
      002159 EE               [12]  589 	mov	a,r6
      00215A 52 02            [12]  590 	anl	ar2,a
      00215C EA               [12]  591 	mov	a,r2
      00215D B4 01 00         [24]  592 	cjne	a,#0x01,00229$
      002160                        593 00229$:
      002160 B3               [12]  594 	cpl	c
      002161 92 00            [24]  595 	mov	b0,c
      002163 E4               [12]  596 	clr	a
      002164 33               [12]  597 	rlc	a
      002165 7C 00            [12]  598 	mov	r4,#0x00
      002167 62 05            [12]  599 	xrl	ar5,a
      002169 EC               [12]  600 	mov	a,r4
      00216A 62 07            [12]  601 	xrl	ar7,a
      00216C D0 04            [24]  602 	pop	ar4
      00216E D0 03            [24]  603 	pop	ar3
      002170 ED               [12]  604 	mov	a,r5
      002171 4F               [12]  605 	orl	a,r7
      002172 60 0E            [24]  606 	jz	00146$
      002174 EB               [12]  607 	mov	a,r3
      002175 2B               [12]  608 	add	a,r3
      002176 FD               [12]  609 	mov	r5,a
      002177 EC               [12]  610 	mov	a,r4
      002178 33               [12]  611 	rlc	a
      002179 FF               [12]  612 	mov	r7,a
      00217A 63 05 21         [24]  613 	xrl	ar5,#0x21
      00217D 63 07 10         [24]  614 	xrl	ar7,#0x10
      002180 80 06            [24]  615 	sjmp	00147$
      002182                        616 00146$:
      002182 EB               [12]  617 	mov	a,r3
      002183 2B               [12]  618 	add	a,r3
      002184 FD               [12]  619 	mov	r5,a
      002185 EC               [12]  620 	mov	a,r4
      002186 33               [12]  621 	rlc	a
      002187 FF               [12]  622 	mov	r7,a
      002188                        623 00147$:
      002188 8D 03            [24]  624 	mov	ar3,r5
      00218A 8F 04            [24]  625 	mov	ar4,r7
      00218C EE               [12]  626 	mov	a,r6
      00218D C3               [12]  627 	clr	c
      00218E 13               [12]  628 	rrc	a
      00218F FE               [12]  629 	mov	r6,a
      002190 70 A6            [24]  630 	jnz	00134$
                                    631 ;	crc16.c:66: for (off = 0u; off < len; off++)
      002192 E5 10            [12]  632 	mov	a,_bp
      002194 24 04            [12]  633 	add	a,#0x04
      002196 F8               [12]  634 	mov	r0,a
      002197 06               [12]  635 	inc	@r0
      002198 B6 00 02         [24]  636 	cjne	@r0,#0x00,00232$
      00219B 08               [12]  637 	inc	r0
      00219C 06               [12]  638 	inc	@r0
      00219D                        639 00232$:
                                    640 ;	crc16.c:68: CCRCB_FINISH(crc);
      00219D 80 88            [24]  641 	sjmp	00137$
      00219F                        642 00109$:
                                    643 ;	crc16.c:69: printf("CRC16=0x%04x\r\n", crc);
      00219F C0 03            [24]  644 	push	ar3
      0021A1 C0 04            [24]  645 	push	ar4
      0021A3 74 93            [12]  646 	mov	a,#___str_2
      0021A5 C0 E0            [24]  647 	push	acc
      0021A7 74 36            [12]  648 	mov	a,#(___str_2 >> 8)
      0021A9 C0 E0            [24]  649 	push	acc
      0021AB 74 80            [12]  650 	mov	a,#0x80
      0021AD C0 E0            [24]  651 	push	acc
      0021AF 12 23 8D         [24]  652 	lcall	_printf
      0021B2 E5 81            [12]  653 	mov	a,sp
      0021B4 24 FB            [12]  654 	add	a,#0xfb
      0021B6 F5 81            [12]  655 	mov	sp,a
                                    656 ;	crc16.c:72: while (1) {
      0021B8                        657 00129$:
                                    658 ;	crc16.c:73: printf("PARTIAL base=0x%04x ", (unsigned int)base);
      0021B8 A8 10            [24]  659 	mov	r0,_bp
      0021BA 08               [12]  660 	inc	r0
      0021BB 86 05            [24]  661 	mov	ar5,@r0
      0021BD 08               [12]  662 	inc	r0
      0021BE 86 06            [24]  663 	mov	ar6,@r0
      0021C0 C0 05            [24]  664 	push	ar5
      0021C2 C0 06            [24]  665 	push	ar6
      0021C4 74 A2            [12]  666 	mov	a,#___str_3
      0021C6 C0 E0            [24]  667 	push	acc
      0021C8 74 36            [12]  668 	mov	a,#(___str_3 >> 8)
      0021CA C0 E0            [24]  669 	push	acc
      0021CC 74 80            [12]  670 	mov	a,#0x80
      0021CE C0 E0            [24]  671 	push	acc
      0021D0 12 23 8D         [24]  672 	lcall	_printf
      0021D3 E5 81            [12]  673 	mov	a,sp
      0021D5 24 FB            [12]  674 	add	a,#0xfb
      0021D7 F5 81            [12]  675 	mov	sp,a
                                    676 ;	crc16.c:74: printf("len=0x%04x ", len);
      0021D9 E4               [12]  677 	clr	a
      0021DA C0 E0            [24]  678 	push	acc
      0021DC 74 20            [12]  679 	mov	a,#0x20
      0021DE C0 E0            [24]  680 	push	acc
      0021E0 74 87            [12]  681 	mov	a,#___str_1
      0021E2 C0 E0            [24]  682 	push	acc
      0021E4 74 36            [12]  683 	mov	a,#(___str_1 >> 8)
      0021E6 C0 E0            [24]  684 	push	acc
      0021E8 74 80            [12]  685 	mov	a,#0x80
      0021EA C0 E0            [24]  686 	push	acc
      0021EC 12 23 8D         [24]  687 	lcall	_printf
      0021EF E5 81            [12]  688 	mov	a,sp
      0021F1 24 FB            [12]  689 	add	a,#0xfb
      0021F3 F5 81            [12]  690 	mov	sp,a
                                    691 ;	crc16.c:75: CCRCB_INIT(crc);
      0021F5 E5 10            [12]  692 	mov	a,_bp
      0021F7 24 06            [12]  693 	add	a,#0x06
      0021F9 F8               [12]  694 	mov	r0,a
      0021FA 76 FF            [12]  695 	mov	@r0,#0xff
      0021FC 08               [12]  696 	inc	r0
      0021FD 76 FF            [12]  697 	mov	@r0,#0xff
                                    698 ;	crc16.c:76: for (off = 0u; off < len; off++)
      0021FF E5 10            [12]  699 	mov	a,_bp
      002201 24 04            [12]  700 	add	a,#0x04
      002203 F8               [12]  701 	mov	r0,a
      002204 E4               [12]  702 	clr	a
      002205 F6               [12]  703 	mov	@r0,a
      002206 08               [12]  704 	inc	r0
      002207 F6               [12]  705 	mov	@r0,a
      002208                        706 00142$:
      002208 E5 10            [12]  707 	mov	a,_bp
      00220A 24 04            [12]  708 	add	a,#0x04
      00220C F8               [12]  709 	mov	r0,a
      00220D C3               [12]  710 	clr	c
      00220E 08               [12]  711 	inc	r0
      00220F E6               [12]  712 	mov	a,@r0
      002210 94 20            [12]  713 	subb	a,#0x20
      002212 40 03            [24]  714 	jc	00233$
      002214 02 22 BD         [24]  715 	ljmp	00120$
      002217                        716 00233$:
                                    717 ;	crc16.c:77: CCRCB(crc, base[off], bitp);
      002217 E5 10            [12]  718 	mov	a,_bp
      002219 24 08            [12]  719 	add	a,#0x08
      00221B F8               [12]  720 	mov	r0,a
      00221C 76 80            [12]  721 	mov	@r0,#0x80
      00221E A8 10            [24]  722 	mov	r0,_bp
      002220 08               [12]  723 	inc	r0
      002221 E5 10            [12]  724 	mov	a,_bp
      002223 24 04            [12]  725 	add	a,#0x04
      002225 F9               [12]  726 	mov	r1,a
      002226 E7               [12]  727 	mov	a,@r1
      002227 26               [12]  728 	add	a,@r0
      002228 FA               [12]  729 	mov	r2,a
      002229 09               [12]  730 	inc	r1
      00222A E7               [12]  731 	mov	a,@r1
      00222B 08               [12]  732 	inc	r0
      00222C 36               [12]  733 	addc	a,@r0
      00222D FC               [12]  734 	mov	r4,a
      00222E 08               [12]  735 	inc	r0
      00222F 86 05            [24]  736 	mov	ar5,@r0
      002231                        737 00139$:
      002231 E5 10            [12]  738 	mov	a,_bp
      002233 24 06            [12]  739 	add	a,#0x06
      002235 F8               [12]  740 	mov	r0,a
      002236 08               [12]  741 	inc	r0
      002237 E6               [12]  742 	mov	a,@r0
      002238 23               [12]  743 	rl	a
      002239 54 01            [12]  744 	anl	a,#0x01
      00223B FB               [12]  745 	mov	r3,a
      00223C 7F 00            [12]  746 	mov	r7,#0x00
      00223E 8A 82            [24]  747 	mov	dpl,r2
      002240 8C 83            [24]  748 	mov	dph,r4
      002242 8D F0            [24]  749 	mov	b,r5
      002244 12 23 C6         [24]  750 	lcall	__gptrget
      002247 FE               [12]  751 	mov	r6,a
      002248 E5 10            [12]  752 	mov	a,_bp
      00224A 24 08            [12]  753 	add	a,#0x08
      00224C F8               [12]  754 	mov	r0,a
      00224D E6               [12]  755 	mov	a,@r0
      00224E 52 06            [12]  756 	anl	ar6,a
      002250 EE               [12]  757 	mov	a,r6
      002251 B4 01 00         [24]  758 	cjne	a,#0x01,00234$
      002254                        759 00234$:
      002254 B3               [12]  760 	cpl	c
      002255 92 00            [24]  761 	mov	b0,c
      002257 C0 02            [24]  762 	push	ar2
      002259 C0 04            [24]  763 	push	ar4
      00225B C0 05            [24]  764 	push	ar5
      00225D A2 00            [12]  765 	mov	c,b0
      00225F E4               [12]  766 	clr	a
      002260 33               [12]  767 	rlc	a
      002261 7E 00            [12]  768 	mov	r6,#0x00
      002263 62 03            [12]  769 	xrl	ar3,a
      002265 EE               [12]  770 	mov	a,r6
      002266 62 07            [12]  771 	xrl	ar7,a
      002268 D0 05            [24]  772 	pop	ar5
      00226A D0 04            [24]  773 	pop	ar4
      00226C D0 02            [24]  774 	pop	ar2
      00226E EB               [12]  775 	mov	a,r3
      00226F 4F               [12]  776 	orl	a,r7
      002270 60 15            [24]  777 	jz	00148$
      002272 E5 10            [12]  778 	mov	a,_bp
      002274 24 06            [12]  779 	add	a,#0x06
      002276 F8               [12]  780 	mov	r0,a
      002277 E6               [12]  781 	mov	a,@r0
      002278 25 E0            [12]  782 	add	a,acc
      00227A FE               [12]  783 	mov	r6,a
      00227B 08               [12]  784 	inc	r0
      00227C E6               [12]  785 	mov	a,@r0
      00227D 33               [12]  786 	rlc	a
      00227E FF               [12]  787 	mov	r7,a
      00227F 63 06 21         [24]  788 	xrl	ar6,#0x21
      002282 63 07 10         [24]  789 	xrl	ar7,#0x10
      002285 80 0D            [24]  790 	sjmp	00149$
      002287                        791 00148$:
      002287 E5 10            [12]  792 	mov	a,_bp
      002289 24 06            [12]  793 	add	a,#0x06
      00228B F8               [12]  794 	mov	r0,a
      00228C E6               [12]  795 	mov	a,@r0
      00228D 25 E0            [12]  796 	add	a,acc
      00228F FE               [12]  797 	mov	r6,a
      002290 08               [12]  798 	inc	r0
      002291 E6               [12]  799 	mov	a,@r0
      002292 33               [12]  800 	rlc	a
      002293 FF               [12]  801 	mov	r7,a
      002294                        802 00149$:
      002294 E5 10            [12]  803 	mov	a,_bp
      002296 24 06            [12]  804 	add	a,#0x06
      002298 F8               [12]  805 	mov	r0,a
      002299 A6 06            [24]  806 	mov	@r0,ar6
      00229B 08               [12]  807 	inc	r0
      00229C A6 07            [24]  808 	mov	@r0,ar7
      00229E E5 10            [12]  809 	mov	a,_bp
      0022A0 24 08            [12]  810 	add	a,#0x08
      0022A2 F8               [12]  811 	mov	r0,a
      0022A3 E6               [12]  812 	mov	a,@r0
      0022A4 C3               [12]  813 	clr	c
      0022A5 13               [12]  814 	rrc	a
      0022A6 F6               [12]  815 	mov	@r0,a
      0022A7 E5 10            [12]  816 	mov	a,_bp
      0022A9 24 08            [12]  817 	add	a,#0x08
      0022AB F8               [12]  818 	mov	r0,a
      0022AC E6               [12]  819 	mov	a,@r0
      0022AD 70 82            [24]  820 	jnz	00139$
                                    821 ;	crc16.c:76: for (off = 0u; off < len; off++)
      0022AF E5 10            [12]  822 	mov	a,_bp
      0022B1 24 04            [12]  823 	add	a,#0x04
      0022B3 F8               [12]  824 	mov	r0,a
      0022B4 06               [12]  825 	inc	@r0
      0022B5 B6 00 02         [24]  826 	cjne	@r0,#0x00,00237$
      0022B8 08               [12]  827 	inc	r0
      0022B9 06               [12]  828 	inc	@r0
      0022BA                        829 00237$:
      0022BA 02 22 08         [24]  830 	ljmp	00142$
                                    831 ;	crc16.c:78: CCRCB_FINISH(crc);
      0022BD                        832 00120$:
                                    833 ;	crc16.c:79: printf("CRC16=0x%04x\r\n", crc);
      0022BD E5 10            [12]  834 	mov	a,_bp
      0022BF 24 06            [12]  835 	add	a,#0x06
      0022C1 F8               [12]  836 	mov	r0,a
      0022C2 E6               [12]  837 	mov	a,@r0
      0022C3 C0 E0            [24]  838 	push	acc
      0022C5 08               [12]  839 	inc	r0
      0022C6 E6               [12]  840 	mov	a,@r0
      0022C7 C0 E0            [24]  841 	push	acc
      0022C9 74 93            [12]  842 	mov	a,#___str_2
      0022CB C0 E0            [24]  843 	push	acc
      0022CD 74 36            [12]  844 	mov	a,#(___str_2 >> 8)
      0022CF C0 E0            [24]  845 	push	acc
      0022D1 74 80            [12]  846 	mov	a,#0x80
      0022D3 C0 E0            [24]  847 	push	acc
      0022D5 12 23 8D         [24]  848 	lcall	_printf
      0022D8 E5 81            [12]  849 	mov	a,sp
      0022DA 24 FB            [12]  850 	add	a,#0xfb
      0022DC F5 81            [12]  851 	mov	sp,a
                                    852 ;	crc16.c:81: if (intr) {
      0022DE 90 80 00         [24]  853 	mov	dptr,#_intr
      0022E1 E0               [24]  854 	movx	a,@dptr
      0022E2 F5 F0            [12]  855 	mov	b,a
      0022E4 A3               [24]  856 	inc	dptr
      0022E5 E0               [24]  857 	movx	a,@dptr
      0022E6 45 F0            [12]  858 	orl	a,b
      0022E8 60 1A            [24]  859 	jz	00124$
                                    860 ;	crc16.c:82: EA = 0;
                                    861 ;	assignBit
      0022EA C2 AF            [12]  862 	clr	_EA
                                    863 ;	crc16.c:83: printf("interrupted\n");
      0022EC 74 B7            [12]  864 	mov	a,#___str_4
      0022EE C0 E0            [24]  865 	push	acc
      0022F0 74 36            [12]  866 	mov	a,#(___str_4 >> 8)
      0022F2 C0 E0            [24]  867 	push	acc
      0022F4 74 80            [12]  868 	mov	a,#0x80
      0022F6 C0 E0            [24]  869 	push	acc
      0022F8 12 23 8D         [24]  870 	lcall	_printf
      0022FB 15 81            [12]  871 	dec	sp
      0022FD 15 81            [12]  872 	dec	sp
      0022FF 15 81            [12]  873 	dec	sp
                                    874 ;	crc16.c:84: break;
      002301 02 20 CD         [24]  875 	ljmp	00131$
      002304                        876 00124$:
                                    877 ;	crc16.c:87: t = base + (len >> 1);
      002304 A8 10            [24]  878 	mov	r0,_bp
      002306 08               [12]  879 	inc	r0
      002307 86 05            [24]  880 	mov	ar5,@r0
      002309 74 10            [12]  881 	mov	a,#0x10
      00230B 08               [12]  882 	inc	r0
      00230C 26               [12]  883 	add	a,@r0
      00230D FE               [12]  884 	mov	r6,a
      00230E 08               [12]  885 	inc	r0
      00230F 86 07            [24]  886 	mov	ar7,@r0
                                    887 ;	crc16.c:88: if (t < base) break;
      002311 A8 10            [24]  888 	mov	r0,_bp
      002313 08               [12]  889 	inc	r0
      002314 E6               [12]  890 	mov	a,@r0
      002315 C0 E0            [24]  891 	push	acc
      002317 08               [12]  892 	inc	r0
      002318 E6               [12]  893 	mov	a,@r0
      002319 C0 E0            [24]  894 	push	acc
      00231B 08               [12]  895 	inc	r0
      00231C E6               [12]  896 	mov	a,@r0
      00231D C0 E0            [24]  897 	push	acc
      00231F 8D 82            [24]  898 	mov	dpl,r5
      002321 8E 83            [24]  899 	mov	dph,r6
      002323 8F F0            [24]  900 	mov	b,r7
      002325 12 20 09         [24]  901 	lcall	___gptr_cmp
      002328 15 81            [12]  902 	dec	sp
      00232A 15 81            [12]  903 	dec	sp
      00232C 15 81            [12]  904 	dec	sp
      00232E 50 03            [24]  905 	jnc	00239$
      002330 02 20 CD         [24]  906 	ljmp	00131$
      002333                        907 00239$:
                                    908 ;	crc16.c:89: else base = t;
      002333 A8 10            [24]  909 	mov	r0,_bp
      002335 08               [12]  910 	inc	r0
      002336 A6 05            [24]  911 	mov	@r0,ar5
      002338 08               [12]  912 	inc	r0
      002339 A6 06            [24]  913 	mov	@r0,ar6
      00233B 08               [12]  914 	inc	r0
      00233C A6 07            [24]  915 	mov	@r0,ar7
                                    916 ;	crc16.c:96: __endasm;
      00233E 02 21 B8         [24]  917 	ljmp	00129$
                                    918 ;	crc16.c:101: }
      002341 85 10 81         [24]  919 	mov	sp,_bp
      002344 D0 10            [24]  920 	pop	_bp
      002346 22               [24]  921 	ret
                                    922 	.area CSEG    (CODE)
                                    923 	.area CONST   (CODE)
                                    924 	.area CONST   (CODE)
      003671                        925 ___str_0:
      003671 43 4F 4D 50 4C 45 54   926 	.ascii "COMPLETE base=0x%04x "
             45 20 62 61 73 65 3D
             30 78 25 30 34 78 20
      003686 00                     927 	.db 0x00
                                    928 	.area CSEG    (CODE)
                                    929 	.area CONST   (CODE)
      003687                        930 ___str_1:
      003687 6C 65 6E 3D 30 78 25   931 	.ascii "len=0x%04x "
             30 34 78 20
      003692 00                     932 	.db 0x00
                                    933 	.area CSEG    (CODE)
                                    934 	.area CONST   (CODE)
      003693                        935 ___str_2:
      003693 43 52 43 31 36 3D 30   936 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      00369F 0D                     937 	.db 0x0d
      0036A0 0A                     938 	.db 0x0a
      0036A1 00                     939 	.db 0x00
                                    940 	.area CSEG    (CODE)
                                    941 	.area CONST   (CODE)
      0036A2                        942 ___str_3:
      0036A2 50 41 52 54 49 41 4C   943 	.ascii "PARTIAL base=0x%04x "
             20 62 61 73 65 3D 30
             78 25 30 34 78 20
      0036B6 00                     944 	.db 0x00
                                    945 	.area CSEG    (CODE)
                                    946 	.area CONST   (CODE)
      0036B7                        947 ___str_4:
      0036B7 69 6E 74 65 72 72 75   948 	.ascii "interrupted"
             70 74 65 64
      0036C2 0A                     949 	.db 0x0a
      0036C3 00                     950 	.db 0x00
                                    951 	.area CSEG    (CODE)
                                    952 	.area XINIT   (CODE)
                                    953 	.area CABS    (ABS,CODE)
