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
      002003 02 20 A1         [24]  355 	ljmp	_int0
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
      002006 02 20 B7         [24]  377 	ljmp	_main
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
                                    408 ;	crc16.c:21: __endasm;
      002098 12 00 32         [24]  409 	lcall	0x0032
      00209B F5 82            [12]  410 	mov	dpl, a
      00209D 75 83 00         [24]  411 	mov	dph, #0
      0020A0 22               [24]  412 	ret
                                    413 ;	crc16.c:22: }
                                    414 ;	naked function: no epilogue.
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'int0'
                                    417 ;------------------------------------------------------------
                                    418 ;	crc16.c:43: void int0(void) __interrupt 0 __using 1 {
                                    419 ;	-----------------------------------------
                                    420 ;	 function int0
                                    421 ;	-----------------------------------------
      0020A1                        422 _int0:
                           00000F   423 	ar7 = 0x0f
                           00000E   424 	ar6 = 0x0e
                           00000D   425 	ar5 = 0x0d
                           00000C   426 	ar4 = 0x0c
                           00000B   427 	ar3 = 0x0b
                           00000A   428 	ar2 = 0x0a
                           000009   429 	ar1 = 0x09
                           000008   430 	ar0 = 0x08
      0020A1 C0 E0            [24]  431 	push	acc
      0020A3 C0 82            [24]  432 	push	dpl
      0020A5 C0 83            [24]  433 	push	dph
                                    434 ;	crc16.c:44: intr = 1;
      0020A7 90 80 00         [24]  435 	mov	dptr,#_intr
      0020AA 74 01            [12]  436 	mov	a,#0x01
      0020AC F0               [24]  437 	movx	@dptr,a
      0020AD E4               [12]  438 	clr	a
      0020AE A3               [24]  439 	inc	dptr
      0020AF F0               [24]  440 	movx	@dptr,a
                                    441 ;	crc16.c:45: }
      0020B0 D0 83            [24]  442 	pop	dph
      0020B2 D0 82            [24]  443 	pop	dpl
      0020B4 D0 E0            [24]  444 	pop	acc
      0020B6 32               [24]  445 	reti
                                    446 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    447 ;	eliminated unneeded push/pop psw
                                    448 ;	eliminated unneeded push/pop b
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'main'
                                    451 ;------------------------------------------------------------
                                    452 ;base                      Allocated to stack - _bp +1
                                    453 ;t                         Allocated to registers r5 r6 r7 
                                    454 ;len                       Allocated to registers 
                                    455 ;off                       Allocated to stack - _bp +4
                                    456 ;crc                       Allocated to stack - _bp +6
                                    457 ;bitp                      Allocated to stack - _bp +8
                                    458 ;------------------------------------------------------------
                                    459 ;	crc16.c:50: void main(void) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function main
                                    462 ;	-----------------------------------------
      0020B7                        463 _main:
                           000007   464 	ar7 = 0x07
                           000006   465 	ar6 = 0x06
                           000005   466 	ar5 = 0x05
                           000004   467 	ar4 = 0x04
                           000003   468 	ar3 = 0x03
                           000002   469 	ar2 = 0x02
                           000001   470 	ar1 = 0x01
                           000000   471 	ar0 = 0x00
      0020B7 C0 10            [24]  472 	push	_bp
      0020B9 E5 81            [12]  473 	mov	a,sp
      0020BB F5 10            [12]  474 	mov	_bp,a
      0020BD 24 08            [12]  475 	add	a,#0x08
      0020BF F5 81            [12]  476 	mov	sp,a
                                    477 ;	crc16.c:55: intr = 0;
      0020C1 90 80 00         [24]  478 	mov	dptr,#_intr
      0020C4 E4               [12]  479 	clr	a
      0020C5 F0               [24]  480 	movx	@dptr,a
      0020C6 A3               [24]  481 	inc	dptr
      0020C7 F0               [24]  482 	movx	@dptr,a
                                    483 ;	crc16.c:57: IT0 = 1;
                                    484 ;	assignBit
      0020C8 D2 88            [12]  485 	setb	_IT0
                                    486 ;	crc16.c:58: EX0 = 1;	
                                    487 ;	assignBit
      0020CA D2 A8            [12]  488 	setb	_EX0
                                    489 ;	crc16.c:59: EA = 1;
                                    490 ;	assignBit
      0020CC D2 AF            [12]  491 	setb	_EA
                                    492 ;	crc16.c:61: while (!intr) {
      0020CE                        493 00131$:
      0020CE 90 80 00         [24]  494 	mov	dptr,#_intr
      0020D1 E0               [24]  495 	movx	a,@dptr
      0020D2 F5 F0            [12]  496 	mov	b,a
      0020D4 A3               [24]  497 	inc	dptr
      0020D5 E0               [24]  498 	movx	a,@dptr
      0020D6 45 F0            [12]  499 	orl	a,b
      0020D8 60 03            [24]  500 	jz	00227$
      0020DA 02 00 00         [24]  501 	ljmp	0
      0020DD                        502 00227$:
                                    503 ;	crc16.c:62: base = (unsigned char *)0x0u;
      0020DD A8 10            [24]  504 	mov	r0,_bp
      0020DF 08               [12]  505 	inc	r0
      0020E0 E4               [12]  506 	clr	a
      0020E1 F6               [12]  507 	mov	@r0,a
      0020E2 08               [12]  508 	inc	r0
      0020E3 F6               [12]  509 	mov	@r0,a
      0020E4 08               [12]  510 	inc	r0
      0020E5 76 00            [12]  511 	mov	@r0,#0x00
                                    512 ;	crc16.c:64: printf("COMPLETE base=0x%04x ", (unsigned int)base);
      0020E7 C0 E0            [24]  513 	push	acc
      0020E9 C0 E0            [24]  514 	push	acc
      0020EB 74 72            [12]  515 	mov	a,#___str_0
      0020ED C0 E0            [24]  516 	push	acc
      0020EF 74 36            [12]  517 	mov	a,#(___str_0 >> 8)
      0020F1 C0 E0            [24]  518 	push	acc
      0020F3 74 80            [12]  519 	mov	a,#0x80
      0020F5 C0 E0            [24]  520 	push	acc
      0020F7 12 23 8E         [24]  521 	lcall	_printf
      0020FA E5 81            [12]  522 	mov	a,sp
      0020FC 24 FB            [12]  523 	add	a,#0xfb
      0020FE F5 81            [12]  524 	mov	sp,a
                                    525 ;	crc16.c:65: printf("len=0x%04x ", len);
      002100 74 FF            [12]  526 	mov	a,#0xff
      002102 C0 E0            [24]  527 	push	acc
      002104 C0 E0            [24]  528 	push	acc
      002106 74 88            [12]  529 	mov	a,#___str_1
      002108 C0 E0            [24]  530 	push	acc
      00210A 74 36            [12]  531 	mov	a,#(___str_1 >> 8)
      00210C C0 E0            [24]  532 	push	acc
      00210E 74 80            [12]  533 	mov	a,#0x80
      002110 C0 E0            [24]  534 	push	acc
      002112 12 23 8E         [24]  535 	lcall	_printf
      002115 E5 81            [12]  536 	mov	a,sp
      002117 24 FB            [12]  537 	add	a,#0xfb
      002119 F5 81            [12]  538 	mov	sp,a
                                    539 ;	crc16.c:66: CCRCB_INIT(crc);
      00211B 7B FF            [12]  540 	mov	r3,#0xff
      00211D 7C FF            [12]  541 	mov	r4,#0xff
                                    542 ;	crc16.c:67: for (off = 0u; off < len; off++)
      00211F E5 10            [12]  543 	mov	a,_bp
      002121 24 04            [12]  544 	add	a,#0x04
      002123 F8               [12]  545 	mov	r0,a
      002124 E4               [12]  546 	clr	a
      002125 F6               [12]  547 	mov	@r0,a
      002126 08               [12]  548 	inc	r0
      002127 F6               [12]  549 	mov	@r0,a
      002128                        550 00137$:
      002128 E5 10            [12]  551 	mov	a,_bp
      00212A 24 04            [12]  552 	add	a,#0x04
      00212C F8               [12]  553 	mov	r0,a
      00212D C3               [12]  554 	clr	c
      00212E E6               [12]  555 	mov	a,@r0
      00212F 94 FF            [12]  556 	subb	a,#0xff
      002131 08               [12]  557 	inc	r0
      002132 E6               [12]  558 	mov	a,@r0
      002133 94 FF            [12]  559 	subb	a,#0xff
      002135 50 69            [24]  560 	jnc	00109$
                                    561 ;	crc16.c:68: CCRCB(crc, base[off], bitp);
      002137 7E 80            [12]  562 	mov	r6,#0x80
      002139                        563 00134$:
      002139 EC               [12]  564 	mov	a,r4
      00213A 23               [12]  565 	rl	a
      00213B 54 01            [12]  566 	anl	a,#0x01
      00213D FD               [12]  567 	mov	r5,a
      00213E 7F 00            [12]  568 	mov	r7,#0x00
      002140 C0 03            [24]  569 	push	ar3
      002142 C0 04            [24]  570 	push	ar4
      002144 E5 10            [12]  571 	mov	a,_bp
      002146 24 04            [12]  572 	add	a,#0x04
      002148 F8               [12]  573 	mov	r0,a
      002149 86 02            [24]  574 	mov	ar2,@r0
      00214B 08               [12]  575 	inc	r0
      00214C 86 03            [24]  576 	mov	ar3,@r0
      00214E 7C 00            [12]  577 	mov	r4,#0x00
      002150 8A 82            [24]  578 	mov	dpl,r2
      002152 8B 83            [24]  579 	mov	dph,r3
      002154 8C F0            [24]  580 	mov	b,r4
      002156 12 23 C7         [24]  581 	lcall	__gptrget
      002159 FA               [12]  582 	mov	r2,a
      00215A EE               [12]  583 	mov	a,r6
      00215B 52 02            [12]  584 	anl	ar2,a
      00215D EA               [12]  585 	mov	a,r2
      00215E B4 01 00         [24]  586 	cjne	a,#0x01,00229$
      002161                        587 00229$:
      002161 B3               [12]  588 	cpl	c
      002162 92 00            [24]  589 	mov	b0,c
      002164 E4               [12]  590 	clr	a
      002165 33               [12]  591 	rlc	a
      002166 7C 00            [12]  592 	mov	r4,#0x00
      002168 62 05            [12]  593 	xrl	ar5,a
      00216A EC               [12]  594 	mov	a,r4
      00216B 62 07            [12]  595 	xrl	ar7,a
      00216D D0 04            [24]  596 	pop	ar4
      00216F D0 03            [24]  597 	pop	ar3
      002171 ED               [12]  598 	mov	a,r5
      002172 4F               [12]  599 	orl	a,r7
      002173 60 0E            [24]  600 	jz	00146$
      002175 EB               [12]  601 	mov	a,r3
      002176 2B               [12]  602 	add	a,r3
      002177 FD               [12]  603 	mov	r5,a
      002178 EC               [12]  604 	mov	a,r4
      002179 33               [12]  605 	rlc	a
      00217A FF               [12]  606 	mov	r7,a
      00217B 63 05 21         [24]  607 	xrl	ar5,#0x21
      00217E 63 07 10         [24]  608 	xrl	ar7,#0x10
      002181 80 06            [24]  609 	sjmp	00147$
      002183                        610 00146$:
      002183 EB               [12]  611 	mov	a,r3
      002184 2B               [12]  612 	add	a,r3
      002185 FD               [12]  613 	mov	r5,a
      002186 EC               [12]  614 	mov	a,r4
      002187 33               [12]  615 	rlc	a
      002188 FF               [12]  616 	mov	r7,a
      002189                        617 00147$:
      002189 8D 03            [24]  618 	mov	ar3,r5
      00218B 8F 04            [24]  619 	mov	ar4,r7
      00218D EE               [12]  620 	mov	a,r6
      00218E C3               [12]  621 	clr	c
      00218F 13               [12]  622 	rrc	a
      002190 FE               [12]  623 	mov	r6,a
      002191 70 A6            [24]  624 	jnz	00134$
                                    625 ;	crc16.c:67: for (off = 0u; off < len; off++)
      002193 E5 10            [12]  626 	mov	a,_bp
      002195 24 04            [12]  627 	add	a,#0x04
      002197 F8               [12]  628 	mov	r0,a
      002198 06               [12]  629 	inc	@r0
      002199 B6 00 02         [24]  630 	cjne	@r0,#0x00,00232$
      00219C 08               [12]  631 	inc	r0
      00219D 06               [12]  632 	inc	@r0
      00219E                        633 00232$:
                                    634 ;	crc16.c:69: CCRCB_FINISH(crc);
      00219E 80 88            [24]  635 	sjmp	00137$
      0021A0                        636 00109$:
                                    637 ;	crc16.c:70: printf("CRC16=0x%04x\r\n", crc);
      0021A0 C0 03            [24]  638 	push	ar3
      0021A2 C0 04            [24]  639 	push	ar4
      0021A4 74 94            [12]  640 	mov	a,#___str_2
      0021A6 C0 E0            [24]  641 	push	acc
      0021A8 74 36            [12]  642 	mov	a,#(___str_2 >> 8)
      0021AA C0 E0            [24]  643 	push	acc
      0021AC 74 80            [12]  644 	mov	a,#0x80
      0021AE C0 E0            [24]  645 	push	acc
      0021B0 12 23 8E         [24]  646 	lcall	_printf
      0021B3 E5 81            [12]  647 	mov	a,sp
      0021B5 24 FB            [12]  648 	add	a,#0xfb
      0021B7 F5 81            [12]  649 	mov	sp,a
                                    650 ;	crc16.c:73: while (1) {
      0021B9                        651 00129$:
                                    652 ;	crc16.c:74: printf("PARTIAL base=0x%04x ", (unsigned int)base);
      0021B9 A8 10            [24]  653 	mov	r0,_bp
      0021BB 08               [12]  654 	inc	r0
      0021BC 86 05            [24]  655 	mov	ar5,@r0
      0021BE 08               [12]  656 	inc	r0
      0021BF 86 06            [24]  657 	mov	ar6,@r0
      0021C1 C0 05            [24]  658 	push	ar5
      0021C3 C0 06            [24]  659 	push	ar6
      0021C5 74 A3            [12]  660 	mov	a,#___str_3
      0021C7 C0 E0            [24]  661 	push	acc
      0021C9 74 36            [12]  662 	mov	a,#(___str_3 >> 8)
      0021CB C0 E0            [24]  663 	push	acc
      0021CD 74 80            [12]  664 	mov	a,#0x80
      0021CF C0 E0            [24]  665 	push	acc
      0021D1 12 23 8E         [24]  666 	lcall	_printf
      0021D4 E5 81            [12]  667 	mov	a,sp
      0021D6 24 FB            [12]  668 	add	a,#0xfb
      0021D8 F5 81            [12]  669 	mov	sp,a
                                    670 ;	crc16.c:75: printf("len=0x%04x ", len);
      0021DA E4               [12]  671 	clr	a
      0021DB C0 E0            [24]  672 	push	acc
      0021DD 74 20            [12]  673 	mov	a,#0x20
      0021DF C0 E0            [24]  674 	push	acc
      0021E1 74 88            [12]  675 	mov	a,#___str_1
      0021E3 C0 E0            [24]  676 	push	acc
      0021E5 74 36            [12]  677 	mov	a,#(___str_1 >> 8)
      0021E7 C0 E0            [24]  678 	push	acc
      0021E9 74 80            [12]  679 	mov	a,#0x80
      0021EB C0 E0            [24]  680 	push	acc
      0021ED 12 23 8E         [24]  681 	lcall	_printf
      0021F0 E5 81            [12]  682 	mov	a,sp
      0021F2 24 FB            [12]  683 	add	a,#0xfb
      0021F4 F5 81            [12]  684 	mov	sp,a
                                    685 ;	crc16.c:76: CCRCB_INIT(crc);
      0021F6 E5 10            [12]  686 	mov	a,_bp
      0021F8 24 06            [12]  687 	add	a,#0x06
      0021FA F8               [12]  688 	mov	r0,a
      0021FB 76 FF            [12]  689 	mov	@r0,#0xff
      0021FD 08               [12]  690 	inc	r0
      0021FE 76 FF            [12]  691 	mov	@r0,#0xff
                                    692 ;	crc16.c:77: for (off = 0u; off < len; off++)
      002200 E5 10            [12]  693 	mov	a,_bp
      002202 24 04            [12]  694 	add	a,#0x04
      002204 F8               [12]  695 	mov	r0,a
      002205 E4               [12]  696 	clr	a
      002206 F6               [12]  697 	mov	@r0,a
      002207 08               [12]  698 	inc	r0
      002208 F6               [12]  699 	mov	@r0,a
      002209                        700 00142$:
      002209 E5 10            [12]  701 	mov	a,_bp
      00220B 24 04            [12]  702 	add	a,#0x04
      00220D F8               [12]  703 	mov	r0,a
      00220E C3               [12]  704 	clr	c
      00220F 08               [12]  705 	inc	r0
      002210 E6               [12]  706 	mov	a,@r0
      002211 94 20            [12]  707 	subb	a,#0x20
      002213 40 03            [24]  708 	jc	00233$
      002215 02 22 BE         [24]  709 	ljmp	00120$
      002218                        710 00233$:
                                    711 ;	crc16.c:78: CCRCB(crc, base[off], bitp);
      002218 E5 10            [12]  712 	mov	a,_bp
      00221A 24 08            [12]  713 	add	a,#0x08
      00221C F8               [12]  714 	mov	r0,a
      00221D 76 80            [12]  715 	mov	@r0,#0x80
      00221F A8 10            [24]  716 	mov	r0,_bp
      002221 08               [12]  717 	inc	r0
      002222 E5 10            [12]  718 	mov	a,_bp
      002224 24 04            [12]  719 	add	a,#0x04
      002226 F9               [12]  720 	mov	r1,a
      002227 E7               [12]  721 	mov	a,@r1
      002228 26               [12]  722 	add	a,@r0
      002229 FA               [12]  723 	mov	r2,a
      00222A 09               [12]  724 	inc	r1
      00222B E7               [12]  725 	mov	a,@r1
      00222C 08               [12]  726 	inc	r0
      00222D 36               [12]  727 	addc	a,@r0
      00222E FC               [12]  728 	mov	r4,a
      00222F 08               [12]  729 	inc	r0
      002230 86 05            [24]  730 	mov	ar5,@r0
      002232                        731 00139$:
      002232 E5 10            [12]  732 	mov	a,_bp
      002234 24 06            [12]  733 	add	a,#0x06
      002236 F8               [12]  734 	mov	r0,a
      002237 08               [12]  735 	inc	r0
      002238 E6               [12]  736 	mov	a,@r0
      002239 23               [12]  737 	rl	a
      00223A 54 01            [12]  738 	anl	a,#0x01
      00223C FB               [12]  739 	mov	r3,a
      00223D 7F 00            [12]  740 	mov	r7,#0x00
      00223F 8A 82            [24]  741 	mov	dpl,r2
      002241 8C 83            [24]  742 	mov	dph,r4
      002243 8D F0            [24]  743 	mov	b,r5
      002245 12 23 C7         [24]  744 	lcall	__gptrget
      002248 FE               [12]  745 	mov	r6,a
      002249 E5 10            [12]  746 	mov	a,_bp
      00224B 24 08            [12]  747 	add	a,#0x08
      00224D F8               [12]  748 	mov	r0,a
      00224E E6               [12]  749 	mov	a,@r0
      00224F 52 06            [12]  750 	anl	ar6,a
      002251 EE               [12]  751 	mov	a,r6
      002252 B4 01 00         [24]  752 	cjne	a,#0x01,00234$
      002255                        753 00234$:
      002255 B3               [12]  754 	cpl	c
      002256 92 00            [24]  755 	mov	b0,c
      002258 C0 02            [24]  756 	push	ar2
      00225A C0 04            [24]  757 	push	ar4
      00225C C0 05            [24]  758 	push	ar5
      00225E A2 00            [12]  759 	mov	c,b0
      002260 E4               [12]  760 	clr	a
      002261 33               [12]  761 	rlc	a
      002262 7E 00            [12]  762 	mov	r6,#0x00
      002264 62 03            [12]  763 	xrl	ar3,a
      002266 EE               [12]  764 	mov	a,r6
      002267 62 07            [12]  765 	xrl	ar7,a
      002269 D0 05            [24]  766 	pop	ar5
      00226B D0 04            [24]  767 	pop	ar4
      00226D D0 02            [24]  768 	pop	ar2
      00226F EB               [12]  769 	mov	a,r3
      002270 4F               [12]  770 	orl	a,r7
      002271 60 15            [24]  771 	jz	00148$
      002273 E5 10            [12]  772 	mov	a,_bp
      002275 24 06            [12]  773 	add	a,#0x06
      002277 F8               [12]  774 	mov	r0,a
      002278 E6               [12]  775 	mov	a,@r0
      002279 25 E0            [12]  776 	add	a,acc
      00227B FE               [12]  777 	mov	r6,a
      00227C 08               [12]  778 	inc	r0
      00227D E6               [12]  779 	mov	a,@r0
      00227E 33               [12]  780 	rlc	a
      00227F FF               [12]  781 	mov	r7,a
      002280 63 06 21         [24]  782 	xrl	ar6,#0x21
      002283 63 07 10         [24]  783 	xrl	ar7,#0x10
      002286 80 0D            [24]  784 	sjmp	00149$
      002288                        785 00148$:
      002288 E5 10            [12]  786 	mov	a,_bp
      00228A 24 06            [12]  787 	add	a,#0x06
      00228C F8               [12]  788 	mov	r0,a
      00228D E6               [12]  789 	mov	a,@r0
      00228E 25 E0            [12]  790 	add	a,acc
      002290 FE               [12]  791 	mov	r6,a
      002291 08               [12]  792 	inc	r0
      002292 E6               [12]  793 	mov	a,@r0
      002293 33               [12]  794 	rlc	a
      002294 FF               [12]  795 	mov	r7,a
      002295                        796 00149$:
      002295 E5 10            [12]  797 	mov	a,_bp
      002297 24 06            [12]  798 	add	a,#0x06
      002299 F8               [12]  799 	mov	r0,a
      00229A A6 06            [24]  800 	mov	@r0,ar6
      00229C 08               [12]  801 	inc	r0
      00229D A6 07            [24]  802 	mov	@r0,ar7
      00229F E5 10            [12]  803 	mov	a,_bp
      0022A1 24 08            [12]  804 	add	a,#0x08
      0022A3 F8               [12]  805 	mov	r0,a
      0022A4 E6               [12]  806 	mov	a,@r0
      0022A5 C3               [12]  807 	clr	c
      0022A6 13               [12]  808 	rrc	a
      0022A7 F6               [12]  809 	mov	@r0,a
      0022A8 E5 10            [12]  810 	mov	a,_bp
      0022AA 24 08            [12]  811 	add	a,#0x08
      0022AC F8               [12]  812 	mov	r0,a
      0022AD E6               [12]  813 	mov	a,@r0
      0022AE 70 82            [24]  814 	jnz	00139$
                                    815 ;	crc16.c:77: for (off = 0u; off < len; off++)
      0022B0 E5 10            [12]  816 	mov	a,_bp
      0022B2 24 04            [12]  817 	add	a,#0x04
      0022B4 F8               [12]  818 	mov	r0,a
      0022B5 06               [12]  819 	inc	@r0
      0022B6 B6 00 02         [24]  820 	cjne	@r0,#0x00,00237$
      0022B9 08               [12]  821 	inc	r0
      0022BA 06               [12]  822 	inc	@r0
      0022BB                        823 00237$:
      0022BB 02 22 09         [24]  824 	ljmp	00142$
                                    825 ;	crc16.c:79: CCRCB_FINISH(crc);
      0022BE                        826 00120$:
                                    827 ;	crc16.c:80: printf("CRC16=0x%04x\r\n", crc);
      0022BE E5 10            [12]  828 	mov	a,_bp
      0022C0 24 06            [12]  829 	add	a,#0x06
      0022C2 F8               [12]  830 	mov	r0,a
      0022C3 E6               [12]  831 	mov	a,@r0
      0022C4 C0 E0            [24]  832 	push	acc
      0022C6 08               [12]  833 	inc	r0
      0022C7 E6               [12]  834 	mov	a,@r0
      0022C8 C0 E0            [24]  835 	push	acc
      0022CA 74 94            [12]  836 	mov	a,#___str_2
      0022CC C0 E0            [24]  837 	push	acc
      0022CE 74 36            [12]  838 	mov	a,#(___str_2 >> 8)
      0022D0 C0 E0            [24]  839 	push	acc
      0022D2 74 80            [12]  840 	mov	a,#0x80
      0022D4 C0 E0            [24]  841 	push	acc
      0022D6 12 23 8E         [24]  842 	lcall	_printf
      0022D9 E5 81            [12]  843 	mov	a,sp
      0022DB 24 FB            [12]  844 	add	a,#0xfb
      0022DD F5 81            [12]  845 	mov	sp,a
                                    846 ;	crc16.c:82: if (intr) {
      0022DF 90 80 00         [24]  847 	mov	dptr,#_intr
      0022E2 E0               [24]  848 	movx	a,@dptr
      0022E3 F5 F0            [12]  849 	mov	b,a
      0022E5 A3               [24]  850 	inc	dptr
      0022E6 E0               [24]  851 	movx	a,@dptr
      0022E7 45 F0            [12]  852 	orl	a,b
      0022E9 60 1A            [24]  853 	jz	00124$
                                    854 ;	crc16.c:83: EA = 0;
                                    855 ;	assignBit
      0022EB C2 AF            [12]  856 	clr	_EA
                                    857 ;	crc16.c:84: printf("interrupted\n");
      0022ED 74 B8            [12]  858 	mov	a,#___str_4
      0022EF C0 E0            [24]  859 	push	acc
      0022F1 74 36            [12]  860 	mov	a,#(___str_4 >> 8)
      0022F3 C0 E0            [24]  861 	push	acc
      0022F5 74 80            [12]  862 	mov	a,#0x80
      0022F7 C0 E0            [24]  863 	push	acc
      0022F9 12 23 8E         [24]  864 	lcall	_printf
      0022FC 15 81            [12]  865 	dec	sp
      0022FE 15 81            [12]  866 	dec	sp
      002300 15 81            [12]  867 	dec	sp
                                    868 ;	crc16.c:85: break;
      002302 02 20 CE         [24]  869 	ljmp	00131$
      002305                        870 00124$:
                                    871 ;	crc16.c:88: t = base + (len >> 1);
      002305 A8 10            [24]  872 	mov	r0,_bp
      002307 08               [12]  873 	inc	r0
      002308 86 05            [24]  874 	mov	ar5,@r0
      00230A 74 10            [12]  875 	mov	a,#0x10
      00230C 08               [12]  876 	inc	r0
      00230D 26               [12]  877 	add	a,@r0
      00230E FE               [12]  878 	mov	r6,a
      00230F 08               [12]  879 	inc	r0
      002310 86 07            [24]  880 	mov	ar7,@r0
                                    881 ;	crc16.c:89: if (t < base) break;
      002312 A8 10            [24]  882 	mov	r0,_bp
      002314 08               [12]  883 	inc	r0
      002315 E6               [12]  884 	mov	a,@r0
      002316 C0 E0            [24]  885 	push	acc
      002318 08               [12]  886 	inc	r0
      002319 E6               [12]  887 	mov	a,@r0
      00231A C0 E0            [24]  888 	push	acc
      00231C 08               [12]  889 	inc	r0
      00231D E6               [12]  890 	mov	a,@r0
      00231E C0 E0            [24]  891 	push	acc
      002320 8D 82            [24]  892 	mov	dpl,r5
      002322 8E 83            [24]  893 	mov	dph,r6
      002324 8F F0            [24]  894 	mov	b,r7
      002326 12 20 09         [24]  895 	lcall	___gptr_cmp
      002329 15 81            [12]  896 	dec	sp
      00232B 15 81            [12]  897 	dec	sp
      00232D 15 81            [12]  898 	dec	sp
      00232F 50 03            [24]  899 	jnc	00239$
      002331 02 20 CE         [24]  900 	ljmp	00131$
      002334                        901 00239$:
                                    902 ;	crc16.c:90: else base = t;
      002334 A8 10            [24]  903 	mov	r0,_bp
      002336 08               [12]  904 	inc	r0
      002337 A6 05            [24]  905 	mov	@r0,ar5
      002339 08               [12]  906 	inc	r0
      00233A A6 06            [24]  907 	mov	@r0,ar6
      00233C 08               [12]  908 	inc	r0
      00233D A6 07            [24]  909 	mov	@r0,ar7
                                    910 ;	crc16.c:97: __endasm;
      00233F 02 21 B9         [24]  911 	ljmp	00129$
                                    912 ;	crc16.c:102: }
      002342 85 10 81         [24]  913 	mov	sp,_bp
      002345 D0 10            [24]  914 	pop	_bp
      002347 22               [24]  915 	ret
                                    916 	.area CSEG    (CODE)
                                    917 	.area CONST   (CODE)
                                    918 	.area CONST   (CODE)
      003672                        919 ___str_0:
      003672 43 4F 4D 50 4C 45 54   920 	.ascii "COMPLETE base=0x%04x "
             45 20 62 61 73 65 3D
             30 78 25 30 34 78 20
      003687 00                     921 	.db 0x00
                                    922 	.area CSEG    (CODE)
                                    923 	.area CONST   (CODE)
      003688                        924 ___str_1:
      003688 6C 65 6E 3D 30 78 25   925 	.ascii "len=0x%04x "
             30 34 78 20
      003693 00                     926 	.db 0x00
                                    927 	.area CSEG    (CODE)
                                    928 	.area CONST   (CODE)
      003694                        929 ___str_2:
      003694 43 52 43 31 36 3D 30   930 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      0036A0 0D                     931 	.db 0x0d
      0036A1 0A                     932 	.db 0x0a
      0036A2 00                     933 	.db 0x00
                                    934 	.area CSEG    (CODE)
                                    935 	.area CONST   (CODE)
      0036A3                        936 ___str_3:
      0036A3 50 41 52 54 49 41 4C   937 	.ascii "PARTIAL base=0x%04x "
             20 62 61 73 65 3D 30
             78 25 30 34 78 20
      0036B7 00                     938 	.db 0x00
                                    939 	.area CSEG    (CODE)
                                    940 	.area CONST   (CODE)
      0036B8                        941 ___str_4:
      0036B8 69 6E 74 65 72 72 75   942 	.ascii "interrupted"
             70 74 65 64
      0036C3 0A                     943 	.db 0x0a
      0036C4 00                     944 	.db 0x00
                                    945 	.area CSEG    (CODE)
                                    946 	.area XINIT   (CODE)
                                    947 	.area CABS    (ABS,CODE)
