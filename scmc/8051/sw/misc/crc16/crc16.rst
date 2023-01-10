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
      002000 02 20 09         [24]  354 	ljmp	__sdcc_gsinit_startup
      002003 02 20 72         [24]  355 	ljmp	_int0
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
      002062 02 20 06         [24]  370 	ljmp	__sdcc_program_startup
                                    371 ;--------------------------------------------------------
                                    372 ; Home
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
                                    375 	.area HOME    (CODE)
      002006                        376 __sdcc_program_startup:
      002006 02 20 88         [24]  377 	ljmp	_main
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
      002065                        392 _putchar:
                                    393 ;	naked function: no prologue.
                                    394 ;	crc16.c:12: __endasm;
      002065 E5 82            [12]  395 	mov	a, dpl
      002067 02 00 30         [24]  396 	ljmp	0x0030
                                    397 ;	crc16.c:13: }
                                    398 ;	naked function: no epilogue.
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'getchar'
                                    401 ;------------------------------------------------------------
                                    402 ;	crc16.c:15: int getchar(void) {
                                    403 ;	-----------------------------------------
                                    404 ;	 function getchar
                                    405 ;	-----------------------------------------
      00206A                        406 _getchar:
                           000007   407 	ar7 = 0x07
                           000006   408 	ar6 = 0x06
                           000005   409 	ar5 = 0x05
                           000004   410 	ar4 = 0x04
                           000003   411 	ar3 = 0x03
                           000002   412 	ar2 = 0x02
                           000001   413 	ar1 = 0x01
                           000000   414 	ar0 = 0x00
                                    415 ;	crc16.c:20: __endasm;
      00206A 12 00 32         [24]  416 	lcall	0x0032
      00206D C2 83            [12]  417 	clr	dph
      00206F F5 82            [12]  418 	mov	dpl, a
                                    419 ;	crc16.c:21: }
      002071 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'int0'
                                    423 ;------------------------------------------------------------
                                    424 ;	crc16.c:42: void int0(void) __interrupt 0 __using 1 {
                                    425 ;	-----------------------------------------
                                    426 ;	 function int0
                                    427 ;	-----------------------------------------
      002072                        428 _int0:
                           00000F   429 	ar7 = 0x0f
                           00000E   430 	ar6 = 0x0e
                           00000D   431 	ar5 = 0x0d
                           00000C   432 	ar4 = 0x0c
                           00000B   433 	ar3 = 0x0b
                           00000A   434 	ar2 = 0x0a
                           000009   435 	ar1 = 0x09
                           000008   436 	ar0 = 0x08
      002072 C0 E0            [24]  437 	push	acc
      002074 C0 82            [24]  438 	push	dpl
      002076 C0 83            [24]  439 	push	dph
                                    440 ;	crc16.c:43: intr = 1;
      002078 90 80 00         [24]  441 	mov	dptr,#_intr
      00207B 74 01            [12]  442 	mov	a,#0x01
      00207D F0               [24]  443 	movx	@dptr,a
      00207E E4               [12]  444 	clr	a
      00207F A3               [24]  445 	inc	dptr
      002080 F0               [24]  446 	movx	@dptr,a
                                    447 ;	crc16.c:44: }
      002081 D0 83            [24]  448 	pop	dph
      002083 D0 82            [24]  449 	pop	dpl
      002085 D0 E0            [24]  450 	pop	acc
      002087 32               [24]  451 	reti
                                    452 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    453 ;	eliminated unneeded push/pop psw
                                    454 ;	eliminated unneeded push/pop b
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'main'
                                    457 ;------------------------------------------------------------
                                    458 ;base                      Allocated to stack - _bp +1
                                    459 ;len                       Allocated to registers 
                                    460 ;off                       Allocated to stack - _bp +4
                                    461 ;crc                       Allocated to stack - _bp +6
                                    462 ;bitp                      Allocated to stack - _bp +8
                                    463 ;------------------------------------------------------------
                                    464 ;	crc16.c:48: void main(void) {
                                    465 ;	-----------------------------------------
                                    466 ;	 function main
                                    467 ;	-----------------------------------------
      002088                        468 _main:
                           000007   469 	ar7 = 0x07
                           000006   470 	ar6 = 0x06
                           000005   471 	ar5 = 0x05
                           000004   472 	ar4 = 0x04
                           000003   473 	ar3 = 0x03
                           000002   474 	ar2 = 0x02
                           000001   475 	ar1 = 0x01
                           000000   476 	ar0 = 0x00
      002088 C0 10            [24]  477 	push	_bp
      00208A E5 81            [12]  478 	mov	a,sp
      00208C F5 10            [12]  479 	mov	_bp,a
      00208E 24 08            [12]  480 	add	a,#0x08
      002090 F5 81            [12]  481 	mov	sp,a
                                    482 ;	crc16.c:53: intr = 0;
      002092 90 80 00         [24]  483 	mov	dptr,#_intr
      002095 E4               [12]  484 	clr	a
      002096 F0               [24]  485 	movx	@dptr,a
      002097 A3               [24]  486 	inc	dptr
      002098 F0               [24]  487 	movx	@dptr,a
                                    488 ;	crc16.c:55: IT0 = 1;
                                    489 ;	assignBit
      002099 D2 88            [12]  490 	setb	_IT0
                                    491 ;	crc16.c:56: EX0 = 1;
                                    492 ;	assignBit
      00209B D2 A8            [12]  493 	setb	_EX0
                                    494 ;	crc16.c:57: EA = 1;
                                    495 ;	assignBit
      00209D D2 AF            [12]  496 	setb	_EA
                                    497 ;	crc16.c:59: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      00209F A8 10            [24]  498 	mov	r0,_bp
      0020A1 08               [12]  499 	inc	r0
      0020A2 E4               [12]  500 	clr	a
      0020A3 F6               [12]  501 	mov	@r0,a
      0020A4 08               [12]  502 	inc	r0
      0020A5 F6               [12]  503 	mov	@r0,a
      0020A6 08               [12]  504 	inc	r0
      0020A7 76 00            [12]  505 	mov	@r0,#0x00
      0020A9                        506 00120$:
                                    507 ;	crc16.c:60: printf("base=0x%04x ", (unsigned int)base);
      0020A9 A8 10            [24]  508 	mov	r0,_bp
      0020AB 08               [12]  509 	inc	r0
      0020AC 86 03            [24]  510 	mov	ar3,@r0
      0020AE 08               [12]  511 	inc	r0
      0020AF 86 04            [24]  512 	mov	ar4,@r0
      0020B1 C0 03            [24]  513 	push	ar3
      0020B3 C0 04            [24]  514 	push	ar4
      0020B5 74 33            [12]  515 	mov	a,#___str_0
      0020B7 C0 E0            [24]  516 	push	acc
      0020B9 74 35            [12]  517 	mov	a,#(___str_0 >> 8)
      0020BB C0 E0            [24]  518 	push	acc
      0020BD 74 80            [12]  519 	mov	a,#0x80
      0020BF C0 E0            [24]  520 	push	acc
      0020C1 12 22 4F         [24]  521 	lcall	_printf
      0020C4 E5 81            [12]  522 	mov	a,sp
      0020C6 24 FB            [12]  523 	add	a,#0xfb
      0020C8 F5 81            [12]  524 	mov	sp,a
                                    525 ;	crc16.c:61: printf("len=0x%04x ", len);
      0020CA E4               [12]  526 	clr	a
      0020CB C0 E0            [24]  527 	push	acc
      0020CD 74 20            [12]  528 	mov	a,#0x20
      0020CF C0 E0            [24]  529 	push	acc
      0020D1 74 40            [12]  530 	mov	a,#___str_1
      0020D3 C0 E0            [24]  531 	push	acc
      0020D5 74 35            [12]  532 	mov	a,#(___str_1 >> 8)
      0020D7 C0 E0            [24]  533 	push	acc
      0020D9 74 80            [12]  534 	mov	a,#0x80
      0020DB C0 E0            [24]  535 	push	acc
      0020DD 12 22 4F         [24]  536 	lcall	_printf
      0020E0 E5 81            [12]  537 	mov	a,sp
      0020E2 24 FB            [12]  538 	add	a,#0xfb
      0020E4 F5 81            [12]  539 	mov	sp,a
                                    540 ;	crc16.c:62: CCRCB_INIT(crc);
      0020E6 E5 10            [12]  541 	mov	a,_bp
      0020E8 24 06            [12]  542 	add	a,#0x06
      0020EA F8               [12]  543 	mov	r0,a
      0020EB 76 FF            [12]  544 	mov	@r0,#0xff
      0020ED 08               [12]  545 	inc	r0
      0020EE 76 FF            [12]  546 	mov	@r0,#0xff
                                    547 ;	crc16.c:63: for (off = 0u; off < len; off++)
      0020F0 E5 10            [12]  548 	mov	a,_bp
      0020F2 24 04            [12]  549 	add	a,#0x04
      0020F4 F8               [12]  550 	mov	r0,a
      0020F5 E4               [12]  551 	clr	a
      0020F6 F6               [12]  552 	mov	@r0,a
      0020F7 08               [12]  553 	inc	r0
      0020F8 F6               [12]  554 	mov	@r0,a
      0020F9                        555 00118$:
      0020F9 E5 10            [12]  556 	mov	a,_bp
      0020FB 24 04            [12]  557 	add	a,#0x04
      0020FD F8               [12]  558 	mov	r0,a
      0020FE C3               [12]  559 	clr	c
      0020FF 08               [12]  560 	inc	r0
      002100 E6               [12]  561 	mov	a,@r0
      002101 94 20            [12]  562 	subb	a,#0x20
      002103 40 03            [24]  563 	jc	00157$
      002105 02 21 AF         [24]  564 	ljmp	00109$
      002108                        565 00157$:
                                    566 ;	crc16.c:64: CCRCB(crc, base[off], bitp);
      002108 E5 10            [12]  567 	mov	a,_bp
      00210A 24 08            [12]  568 	add	a,#0x08
      00210C F8               [12]  569 	mov	r0,a
      00210D 76 80            [12]  570 	mov	@r0,#0x80
      00210F A8 10            [24]  571 	mov	r0,_bp
      002111 08               [12]  572 	inc	r0
      002112 E5 10            [12]  573 	mov	a,_bp
      002114 24 04            [12]  574 	add	a,#0x04
      002116 F9               [12]  575 	mov	r1,a
      002117 E7               [12]  576 	mov	a,@r1
      002118 26               [12]  577 	add	a,@r0
      002119 FA               [12]  578 	mov	r2,a
      00211A 09               [12]  579 	inc	r1
      00211B E7               [12]  580 	mov	a,@r1
      00211C 08               [12]  581 	inc	r0
      00211D 36               [12]  582 	addc	a,@r0
      00211E FD               [12]  583 	mov	r5,a
      00211F 08               [12]  584 	inc	r0
      002120 86 07            [24]  585 	mov	ar7,@r0
      002122                        586 00115$:
      002122 E5 10            [12]  587 	mov	a,_bp
      002124 24 06            [12]  588 	add	a,#0x06
      002126 F8               [12]  589 	mov	r0,a
      002127 08               [12]  590 	inc	r0
      002128 E6               [12]  591 	mov	a,@r0
      002129 23               [12]  592 	rl	a
      00212A 54 01            [12]  593 	anl	a,#0x01
      00212C FC               [12]  594 	mov	r4,a
      00212D 7E 00            [12]  595 	mov	r6,#0x00
      00212F 8A 82            [24]  596 	mov	dpl,r2
      002131 8D 83            [24]  597 	mov	dph,r5
      002133 8F F0            [24]  598 	mov	b,r7
      002135 12 22 88         [24]  599 	lcall	__gptrget
      002138 FB               [12]  600 	mov	r3,a
      002139 E5 10            [12]  601 	mov	a,_bp
      00213B 24 08            [12]  602 	add	a,#0x08
      00213D F8               [12]  603 	mov	r0,a
      00213E E6               [12]  604 	mov	a,@r0
      00213F 52 03            [12]  605 	anl	ar3,a
      002141 EB               [12]  606 	mov	a,r3
      002142 B4 01 00         [24]  607 	cjne	a,#0x01,00158$
      002145                        608 00158$:
      002145 B3               [12]  609 	cpl	c
      002146 92 00            [24]  610 	mov	b0,c
      002148 C0 02            [24]  611 	push	ar2
      00214A C0 05            [24]  612 	push	ar5
      00214C C0 07            [24]  613 	push	ar7
      00214E A2 00            [12]  614 	mov	c,b0
      002150 E4               [12]  615 	clr	a
      002151 33               [12]  616 	rlc	a
      002152 FB               [12]  617 	mov	r3,a
      002153 7F 00            [12]  618 	mov	r7,#0x00
      002155 62 04            [12]  619 	xrl	ar4,a
      002157 EF               [12]  620 	mov	a,r7
      002158 62 06            [12]  621 	xrl	ar6,a
      00215A D0 07            [24]  622 	pop	ar7
      00215C D0 05            [24]  623 	pop	ar5
      00215E D0 02            [24]  624 	pop	ar2
      002160 EC               [12]  625 	mov	a,r4
      002161 4E               [12]  626 	orl	a,r6
      002162 60 15            [24]  627 	jz	00124$
      002164 E5 10            [12]  628 	mov	a,_bp
      002166 24 06            [12]  629 	add	a,#0x06
      002168 F8               [12]  630 	mov	r0,a
      002169 E6               [12]  631 	mov	a,@r0
      00216A 25 E0            [12]  632 	add	a,acc
      00216C FE               [12]  633 	mov	r6,a
      00216D 08               [12]  634 	inc	r0
      00216E E6               [12]  635 	mov	a,@r0
      00216F 33               [12]  636 	rlc	a
      002170 FC               [12]  637 	mov	r4,a
      002171 63 06 21         [24]  638 	xrl	ar6,#0x21
      002174 63 04 10         [24]  639 	xrl	ar4,#0x10
      002177 80 0D            [24]  640 	sjmp	00125$
      002179                        641 00124$:
      002179 E5 10            [12]  642 	mov	a,_bp
      00217B 24 06            [12]  643 	add	a,#0x06
      00217D F8               [12]  644 	mov	r0,a
      00217E E6               [12]  645 	mov	a,@r0
      00217F 25 E0            [12]  646 	add	a,acc
      002181 FE               [12]  647 	mov	r6,a
      002182 08               [12]  648 	inc	r0
      002183 E6               [12]  649 	mov	a,@r0
      002184 33               [12]  650 	rlc	a
      002185 FC               [12]  651 	mov	r4,a
      002186                        652 00125$:
      002186 E5 10            [12]  653 	mov	a,_bp
      002188 24 06            [12]  654 	add	a,#0x06
      00218A F8               [12]  655 	mov	r0,a
      00218B A6 06            [24]  656 	mov	@r0,ar6
      00218D 08               [12]  657 	inc	r0
      00218E A6 04            [24]  658 	mov	@r0,ar4
      002190 E5 10            [12]  659 	mov	a,_bp
      002192 24 08            [12]  660 	add	a,#0x08
      002194 F8               [12]  661 	mov	r0,a
      002195 E6               [12]  662 	mov	a,@r0
      002196 C3               [12]  663 	clr	c
      002197 13               [12]  664 	rrc	a
      002198 F6               [12]  665 	mov	@r0,a
      002199 E5 10            [12]  666 	mov	a,_bp
      00219B 24 08            [12]  667 	add	a,#0x08
      00219D F8               [12]  668 	mov	r0,a
      00219E E6               [12]  669 	mov	a,@r0
      00219F 70 81            [24]  670 	jnz	00115$
                                    671 ;	crc16.c:63: for (off = 0u; off < len; off++)
      0021A1 E5 10            [12]  672 	mov	a,_bp
      0021A3 24 04            [12]  673 	add	a,#0x04
      0021A5 F8               [12]  674 	mov	r0,a
      0021A6 06               [12]  675 	inc	@r0
      0021A7 B6 00 02         [24]  676 	cjne	@r0,#0x00,00161$
      0021AA 08               [12]  677 	inc	r0
      0021AB 06               [12]  678 	inc	@r0
      0021AC                        679 00161$:
      0021AC 02 20 F9         [24]  680 	ljmp	00118$
                                    681 ;	crc16.c:65: CCRCB_FINISH(crc);
      0021AF                        682 00109$:
                                    683 ;	crc16.c:66: printf("CRC16=0x%04x\n\r", crc);
      0021AF E5 10            [12]  684 	mov	a,_bp
      0021B1 24 06            [12]  685 	add	a,#0x06
      0021B3 F8               [12]  686 	mov	r0,a
      0021B4 E6               [12]  687 	mov	a,@r0
      0021B5 C0 E0            [24]  688 	push	acc
      0021B7 08               [12]  689 	inc	r0
      0021B8 E6               [12]  690 	mov	a,@r0
      0021B9 C0 E0            [24]  691 	push	acc
      0021BB 74 4C            [12]  692 	mov	a,#___str_2
      0021BD C0 E0            [24]  693 	push	acc
      0021BF 74 35            [12]  694 	mov	a,#(___str_2 >> 8)
      0021C1 C0 E0            [24]  695 	push	acc
      0021C3 74 80            [12]  696 	mov	a,#0x80
      0021C5 C0 E0            [24]  697 	push	acc
      0021C7 12 22 4F         [24]  698 	lcall	_printf
      0021CA E5 81            [12]  699 	mov	a,sp
      0021CC 24 FB            [12]  700 	add	a,#0xfb
      0021CE F5 81            [12]  701 	mov	sp,a
                                    702 ;	crc16.c:68: if (intr) {
      0021D0 90 80 00         [24]  703 	mov	dptr,#_intr
      0021D3 E0               [24]  704 	movx	a,@dptr
      0021D4 F5 F0            [12]  705 	mov	b,a
      0021D6 A3               [24]  706 	inc	dptr
      0021D7 E0               [24]  707 	movx	a,@dptr
      0021D8 45 F0            [12]  708 	orl	a,b
      0021DA 60 19            [24]  709 	jz	00121$
                                    710 ;	crc16.c:69: EA = 0;
                                    711 ;	assignBit
      0021DC C2 AF            [12]  712 	clr	_EA
                                    713 ;	crc16.c:70: printf("interrupted\n");
      0021DE 74 5B            [12]  714 	mov	a,#___str_3
      0021E0 C0 E0            [24]  715 	push	acc
      0021E2 74 35            [12]  716 	mov	a,#(___str_3 >> 8)
      0021E4 C0 E0            [24]  717 	push	acc
      0021E6 74 80            [12]  718 	mov	a,#0x80
      0021E8 C0 E0            [24]  719 	push	acc
      0021EA 12 22 4F         [24]  720 	lcall	_printf
      0021ED 15 81            [12]  721 	dec	sp
      0021EF 15 81            [12]  722 	dec	sp
      0021F1 15 81            [12]  723 	dec	sp
                                    724 ;	crc16.c:71: break;
      0021F3 80 0B            [24]  725 	sjmp	00114$
      0021F5                        726 00121$:
                                    727 ;	crc16.c:59: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      0021F5 A8 10            [24]  728 	mov	r0,_bp
      0021F7 08               [12]  729 	inc	r0
      0021F8 74 10            [12]  730 	mov	a,#0x10
      0021FA 08               [12]  731 	inc	r0
      0021FB 26               [12]  732 	add	a,@r0
      0021FC F6               [12]  733 	mov	@r0,a
      0021FD 02 20 A9         [24]  734 	ljmp	00120$
      002200                        735 00114$:
                                    736 ;	crc16.c:78: __endasm;
      002200 02 00 00         [24]  737 	ljmp	0
                                    738 ;	crc16.c:83: }
      002203 85 10 81         [24]  739 	mov	sp,_bp
      002206 D0 10            [24]  740 	pop	_bp
      002208 22               [24]  741 	ret
                                    742 	.area CSEG    (CODE)
                                    743 	.area CONST   (CODE)
                                    744 	.area CONST   (CODE)
      003533                        745 ___str_0:
      003533 62 61 73 65 3D 30 78   746 	.ascii "base=0x%04x "
             25 30 34 78 20
      00353F 00                     747 	.db 0x00
                                    748 	.area CSEG    (CODE)
                                    749 	.area CONST   (CODE)
      003540                        750 ___str_1:
      003540 6C 65 6E 3D 30 78 25   751 	.ascii "len=0x%04x "
             30 34 78 20
      00354B 00                     752 	.db 0x00
                                    753 	.area CSEG    (CODE)
                                    754 	.area CONST   (CODE)
      00354C                        755 ___str_2:
      00354C 43 52 43 31 36 3D 30   756 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      003558 0A                     757 	.db 0x0a
      003559 0D                     758 	.db 0x0d
      00355A 00                     759 	.db 0x00
                                    760 	.area CSEG    (CODE)
                                    761 	.area CONST   (CODE)
      00355B                        762 ___str_3:
      00355B 69 6E 74 65 72 72 75   763 	.ascii "interrupted"
             70 74 65 64
      003566 0A                     764 	.db 0x0a
      003567 00                     765 	.db 0x00
                                    766 	.area CSEG    (CODE)
                                    767 	.area XINIT   (CODE)
                                    768 	.area CABS    (ABS,CODE)
