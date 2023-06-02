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
      002003 02 20 73         [24]  355 	ljmp	_int0
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
      002006 02 20 89         [24]  377 	ljmp	_main
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
                                    388 ;	crc16.c:8: int putchar(int c) __naked {
                                    389 ;	-----------------------------------------
                                    390 ;	 function putchar
                                    391 ;	-----------------------------------------
      002065                        392 _putchar:
                                    393 ;	naked function: no prologue.
                                    394 ;	crc16.c:13: __endasm;
      002065 E5 82            [12]  395 	mov	a, dpl
      002067 02 00 30         [24]  396 	ljmp	0x0030
                                    397 ;	crc16.c:14: }
                                    398 ;	naked function: no epilogue.
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'getchar'
                                    401 ;------------------------------------------------------------
                                    402 ;	crc16.c:16: int getchar(void) __naked {
                                    403 ;	-----------------------------------------
                                    404 ;	 function getchar
                                    405 ;	-----------------------------------------
      00206A                        406 _getchar:
                                    407 ;	naked function: no prologue.
                                    408 ;	crc16.c:22: __endasm;
      00206A 12 00 32         [24]  409 	lcall	0x0032
      00206D F5 82            [12]  410 	mov	dpl, a
      00206F 75 83 00         [24]  411 	mov	dph, #0
      002072 22               [24]  412 	ret
                                    413 ;	crc16.c:23: }
                                    414 ;	naked function: no epilogue.
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'int0'
                                    417 ;------------------------------------------------------------
                                    418 ;	crc16.c:46: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    419 ;	-----------------------------------------
                                    420 ;	 function int0
                                    421 ;	-----------------------------------------
      002073                        422 _int0:
                           00000F   423 	ar7 = 0x0f
                           00000E   424 	ar6 = 0x0e
                           00000D   425 	ar5 = 0x0d
                           00000C   426 	ar4 = 0x0c
                           00000B   427 	ar3 = 0x0b
                           00000A   428 	ar2 = 0x0a
                           000009   429 	ar1 = 0x09
                           000008   430 	ar0 = 0x08
      002073 C0 E0            [24]  431 	push	acc
      002075 C0 82            [24]  432 	push	dpl
      002077 C0 83            [24]  433 	push	dph
                                    434 ;	crc16.c:47: intr = 1;
      002079 90 80 00         [24]  435 	mov	dptr,#_intr
      00207C 74 01            [12]  436 	mov	a,#0x01
      00207E F0               [24]  437 	movx	@dptr,a
      00207F E4               [12]  438 	clr	a
      002080 A3               [24]  439 	inc	dptr
      002081 F0               [24]  440 	movx	@dptr,a
                                    441 ;	crc16.c:48: }
      002082 D0 83            [24]  442 	pop	dph
      002084 D0 82            [24]  443 	pop	dpl
      002086 D0 E0            [24]  444 	pop	acc
      002088 32               [24]  445 	reti
                                    446 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    447 ;	eliminated unneeded push/pop psw
                                    448 ;	eliminated unneeded push/pop b
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'main'
                                    451 ;------------------------------------------------------------
                                    452 ;base                      Allocated to stack - _bp +1
                                    453 ;t                         Allocated to stack - _bp +3
                                    454 ;len                       Allocated to registers 
                                    455 ;off                       Allocated to stack - _bp +5
                                    456 ;crc                       Allocated to registers r6 r7 
                                    457 ;bitp                      Allocated to registers r3 
                                    458 ;------------------------------------------------------------
                                    459 ;	crc16.c:53: void main(void) {
                                    460 ;	-----------------------------------------
                                    461 ;	 function main
                                    462 ;	-----------------------------------------
      002089                        463 _main:
                           000007   464 	ar7 = 0x07
                           000006   465 	ar6 = 0x06
                           000005   466 	ar5 = 0x05
                           000004   467 	ar4 = 0x04
                           000003   468 	ar3 = 0x03
                           000002   469 	ar2 = 0x02
                           000001   470 	ar1 = 0x01
                           000000   471 	ar0 = 0x00
      002089 C0 10            [24]  472 	push	_bp
      00208B E5 81            [12]  473 	mov	a,sp
      00208D F5 10            [12]  474 	mov	_bp,a
      00208F 24 06            [12]  475 	add	a,#0x06
      002091 F5 81            [12]  476 	mov	sp,a
                                    477 ;	crc16.c:58: intr = 0;
      002093 90 80 00         [24]  478 	mov	dptr,#_intr
      002096 E4               [12]  479 	clr	a
      002097 F0               [24]  480 	movx	@dptr,a
      002098 A3               [24]  481 	inc	dptr
      002099 F0               [24]  482 	movx	@dptr,a
                                    483 ;	crc16.c:60: IT0 = 1;
                                    484 ;	assignBit
      00209A D2 88            [12]  485 	setb	_IT0
                                    486 ;	crc16.c:61: EX0 = 1;	
                                    487 ;	assignBit
      00209C D2 A8            [12]  488 	setb	_EX0
                                    489 ;	crc16.c:62: EA = 1;
                                    490 ;	assignBit
      00209E D2 AF            [12]  491 	setb	_EA
                                    492 ;	crc16.c:64: while (!intr) {
      0020A0                        493 00131$:
      0020A0 90 80 00         [24]  494 	mov	dptr,#_intr
      0020A3 E0               [24]  495 	movx	a,@dptr
      0020A4 F5 F0            [12]  496 	mov	b,a
      0020A6 A3               [24]  497 	inc	dptr
      0020A7 E0               [24]  498 	movx	a,@dptr
      0020A8 45 F0            [12]  499 	orl	a,b
      0020AA 60 03            [24]  500 	jz	00227$
      0020AC 02 00 00         [24]  501 	ljmp	0
      0020AF                        502 00227$:
                                    503 ;	crc16.c:65: base = (ppd_uint8_t)0x0u;
      0020AF A8 10            [24]  504 	mov	r0,_bp
      0020B1 08               [12]  505 	inc	r0
      0020B2 E4               [12]  506 	clr	a
      0020B3 F6               [12]  507 	mov	@r0,a
      0020B4 08               [12]  508 	inc	r0
      0020B5 F6               [12]  509 	mov	@r0,a
                                    510 ;	crc16.c:67: printf("COMPLETE base=0x%04x ", (unsigned int)base);
      0020B6 A8 10            [24]  511 	mov	r0,_bp
      0020B8 08               [12]  512 	inc	r0
      0020B9 86 06            [24]  513 	mov	ar6,@r0
      0020BB 08               [12]  514 	inc	r0
      0020BC 86 07            [24]  515 	mov	ar7,@r0
      0020BE C0 06            [24]  516 	push	ar6
      0020C0 C0 07            [24]  517 	push	ar7
      0020C2 74 EB            [12]  518 	mov	a,#___str_0
      0020C4 C0 E0            [24]  519 	push	acc
      0020C6 74 35            [12]  520 	mov	a,#(___str_0 >> 8)
      0020C8 C0 E0            [24]  521 	push	acc
      0020CA 74 80            [12]  522 	mov	a,#0x80
      0020CC C0 E0            [24]  523 	push	acc
      0020CE 12 23 07         [24]  524 	lcall	_printf
      0020D1 E5 81            [12]  525 	mov	a,sp
      0020D3 24 FB            [12]  526 	add	a,#0xfb
      0020D5 F5 81            [12]  527 	mov	sp,a
                                    528 ;	crc16.c:68: printf("len=0x%04x ", len);
      0020D7 74 FF            [12]  529 	mov	a,#0xff
      0020D9 C0 E0            [24]  530 	push	acc
      0020DB C0 E0            [24]  531 	push	acc
      0020DD 74 01            [12]  532 	mov	a,#___str_1
      0020DF C0 E0            [24]  533 	push	acc
      0020E1 74 36            [12]  534 	mov	a,#(___str_1 >> 8)
      0020E3 C0 E0            [24]  535 	push	acc
      0020E5 74 80            [12]  536 	mov	a,#0x80
      0020E7 C0 E0            [24]  537 	push	acc
      0020E9 12 23 07         [24]  538 	lcall	_printf
      0020EC E5 81            [12]  539 	mov	a,sp
      0020EE 24 FB            [12]  540 	add	a,#0xfb
      0020F0 F5 81            [12]  541 	mov	sp,a
                                    542 ;	crc16.c:69: CCRCB_INIT(crc);
      0020F2 7E FF            [12]  543 	mov	r6,#0xff
      0020F4 7F FF            [12]  544 	mov	r7,#0xff
                                    545 ;	crc16.c:70: for (off = 0u; off < len; off++)
      0020F6 E5 10            [12]  546 	mov	a,_bp
      0020F8 24 05            [12]  547 	add	a,#0x05
      0020FA F8               [12]  548 	mov	r0,a
      0020FB E4               [12]  549 	clr	a
      0020FC F6               [12]  550 	mov	@r0,a
      0020FD 08               [12]  551 	inc	r0
      0020FE F6               [12]  552 	mov	@r0,a
      0020FF                        553 00137$:
      0020FF E5 10            [12]  554 	mov	a,_bp
      002101 24 05            [12]  555 	add	a,#0x05
      002103 F8               [12]  556 	mov	r0,a
      002104 C3               [12]  557 	clr	c
      002105 E6               [12]  558 	mov	a,@r0
      002106 94 FF            [12]  559 	subb	a,#0xff
      002108 08               [12]  560 	inc	r0
      002109 E6               [12]  561 	mov	a,@r0
      00210A 94 FF            [12]  562 	subb	a,#0xff
      00210C 50 65            [24]  563 	jnc	00109$
                                    564 ;	crc16.c:71: CCRCB(crc, base[off], bitp);
      00210E 7B 80            [12]  565 	mov	r3,#0x80
      002110                        566 00134$:
      002110 EF               [12]  567 	mov	a,r7
      002111 23               [12]  568 	rl	a
      002112 54 01            [12]  569 	anl	a,#0x01
      002114 FA               [12]  570 	mov	r2,a
      002115 7D 00            [12]  571 	mov	r5,#0x00
      002117 A8 10            [24]  572 	mov	r0,_bp
      002119 08               [12]  573 	inc	r0
      00211A E5 10            [12]  574 	mov	a,_bp
      00211C 24 05            [12]  575 	add	a,#0x05
      00211E F9               [12]  576 	mov	r1,a
      00211F E7               [12]  577 	mov	a,@r1
      002120 26               [12]  578 	add	a,@r0
      002121 F5 82            [12]  579 	mov	dpl,a
      002123 09               [12]  580 	inc	r1
      002124 E7               [12]  581 	mov	a,@r1
      002125 08               [12]  582 	inc	r0
      002126 36               [12]  583 	addc	a,@r0
      002127 F5 83            [12]  584 	mov	dph,a
      002129 E0               [24]  585 	movx	a,@dptr
      00212A FC               [12]  586 	mov	r4,a
      00212B EB               [12]  587 	mov	a,r3
      00212C 52 04            [12]  588 	anl	ar4,a
      00212E EC               [12]  589 	mov	a,r4
      00212F B4 01 00         [24]  590 	cjne	a,#0x01,00229$
      002132                        591 00229$:
      002132 B3               [12]  592 	cpl	c
      002133 92 00            [24]  593 	mov	b0,c
      002135 C0 03            [24]  594 	push	ar3
      002137 A2 00            [12]  595 	mov	c,b0
      002139 E4               [12]  596 	clr	a
      00213A 33               [12]  597 	rlc	a
      00213B 7C 00            [12]  598 	mov	r4,#0x00
      00213D 62 02            [12]  599 	xrl	ar2,a
      00213F EC               [12]  600 	mov	a,r4
      002140 62 05            [12]  601 	xrl	ar5,a
      002142 D0 03            [24]  602 	pop	ar3
      002144 EA               [12]  603 	mov	a,r2
      002145 4D               [12]  604 	orl	a,r5
      002146 60 0E            [24]  605 	jz	00146$
      002148 EE               [12]  606 	mov	a,r6
      002149 2E               [12]  607 	add	a,r6
      00214A FC               [12]  608 	mov	r4,a
      00214B EF               [12]  609 	mov	a,r7
      00214C 33               [12]  610 	rlc	a
      00214D FD               [12]  611 	mov	r5,a
      00214E 63 04 21         [24]  612 	xrl	ar4,#0x21
      002151 63 05 10         [24]  613 	xrl	ar5,#0x10
      002154 80 06            [24]  614 	sjmp	00147$
      002156                        615 00146$:
      002156 EE               [12]  616 	mov	a,r6
      002157 2E               [12]  617 	add	a,r6
      002158 FC               [12]  618 	mov	r4,a
      002159 EF               [12]  619 	mov	a,r7
      00215A 33               [12]  620 	rlc	a
      00215B FD               [12]  621 	mov	r5,a
      00215C                        622 00147$:
      00215C 8C 06            [24]  623 	mov	ar6,r4
      00215E 8D 07            [24]  624 	mov	ar7,r5
      002160 EB               [12]  625 	mov	a,r3
      002161 C3               [12]  626 	clr	c
      002162 13               [12]  627 	rrc	a
      002163 FB               [12]  628 	mov	r3,a
      002164 70 AA            [24]  629 	jnz	00134$
                                    630 ;	crc16.c:70: for (off = 0u; off < len; off++)
      002166 E5 10            [12]  631 	mov	a,_bp
      002168 24 05            [12]  632 	add	a,#0x05
      00216A F8               [12]  633 	mov	r0,a
      00216B 06               [12]  634 	inc	@r0
      00216C B6 00 02         [24]  635 	cjne	@r0,#0x00,00232$
      00216F 08               [12]  636 	inc	r0
      002170 06               [12]  637 	inc	@r0
      002171                        638 00232$:
                                    639 ;	crc16.c:72: CCRCB_FINISH(crc);
      002171 80 8C            [24]  640 	sjmp	00137$
      002173                        641 00109$:
                                    642 ;	crc16.c:73: printf("CRC16=0x%04x\r\n", crc);
      002173 C0 06            [24]  643 	push	ar6
      002175 C0 07            [24]  644 	push	ar7
      002177 74 0D            [12]  645 	mov	a,#___str_2
      002179 C0 E0            [24]  646 	push	acc
      00217B 74 36            [12]  647 	mov	a,#(___str_2 >> 8)
      00217D C0 E0            [24]  648 	push	acc
      00217F 74 80            [12]  649 	mov	a,#0x80
      002181 C0 E0            [24]  650 	push	acc
      002183 12 23 07         [24]  651 	lcall	_printf
      002186 E5 81            [12]  652 	mov	a,sp
      002188 24 FB            [12]  653 	add	a,#0xfb
      00218A F5 81            [12]  654 	mov	sp,a
                                    655 ;	crc16.c:76: while (1) {
      00218C                        656 00129$:
                                    657 ;	crc16.c:77: printf("PARTIAL base=0x%04x ", (unsigned int)base);
      00218C A8 10            [24]  658 	mov	r0,_bp
      00218E 08               [12]  659 	inc	r0
      00218F 86 06            [24]  660 	mov	ar6,@r0
      002191 08               [12]  661 	inc	r0
      002192 86 07            [24]  662 	mov	ar7,@r0
      002194 C0 06            [24]  663 	push	ar6
      002196 C0 07            [24]  664 	push	ar7
      002198 74 1C            [12]  665 	mov	a,#___str_3
      00219A C0 E0            [24]  666 	push	acc
      00219C 74 36            [12]  667 	mov	a,#(___str_3 >> 8)
      00219E C0 E0            [24]  668 	push	acc
      0021A0 74 80            [12]  669 	mov	a,#0x80
      0021A2 C0 E0            [24]  670 	push	acc
      0021A4 12 23 07         [24]  671 	lcall	_printf
      0021A7 E5 81            [12]  672 	mov	a,sp
      0021A9 24 FB            [12]  673 	add	a,#0xfb
      0021AB F5 81            [12]  674 	mov	sp,a
                                    675 ;	crc16.c:78: printf("len=0x%04x ", len);
      0021AD E4               [12]  676 	clr	a
      0021AE C0 E0            [24]  677 	push	acc
      0021B0 74 20            [12]  678 	mov	a,#0x20
      0021B2 C0 E0            [24]  679 	push	acc
      0021B4 74 01            [12]  680 	mov	a,#___str_1
      0021B6 C0 E0            [24]  681 	push	acc
      0021B8 74 36            [12]  682 	mov	a,#(___str_1 >> 8)
      0021BA C0 E0            [24]  683 	push	acc
      0021BC 74 80            [12]  684 	mov	a,#0x80
      0021BE C0 E0            [24]  685 	push	acc
      0021C0 12 23 07         [24]  686 	lcall	_printf
      0021C3 E5 81            [12]  687 	mov	a,sp
      0021C5 24 FB            [12]  688 	add	a,#0xfb
      0021C7 F5 81            [12]  689 	mov	sp,a
                                    690 ;	crc16.c:79: CCRCB_INIT(crc);
      0021C9 7E FF            [12]  691 	mov	r6,#0xff
      0021CB 7F FF            [12]  692 	mov	r7,#0xff
                                    693 ;	crc16.c:80: for (off = 0u; off < len; off++)
      0021CD E5 10            [12]  694 	mov	a,_bp
      0021CF 24 05            [12]  695 	add	a,#0x05
      0021D1 F8               [12]  696 	mov	r0,a
      0021D2 E4               [12]  697 	clr	a
      0021D3 F6               [12]  698 	mov	@r0,a
      0021D4 08               [12]  699 	inc	r0
      0021D5 F6               [12]  700 	mov	@r0,a
      0021D6                        701 00142$:
      0021D6 E5 10            [12]  702 	mov	a,_bp
      0021D8 24 05            [12]  703 	add	a,#0x05
      0021DA F8               [12]  704 	mov	r0,a
      0021DB C3               [12]  705 	clr	c
      0021DC 08               [12]  706 	inc	r0
      0021DD E6               [12]  707 	mov	a,@r0
      0021DE 94 20            [12]  708 	subb	a,#0x20
      0021E0 50 65            [24]  709 	jnc	00120$
                                    710 ;	crc16.c:81: CCRCB(crc, base[off], bitp);
      0021E2 7B 80            [12]  711 	mov	r3,#0x80
      0021E4                        712 00139$:
      0021E4 EF               [12]  713 	mov	a,r7
      0021E5 23               [12]  714 	rl	a
      0021E6 54 01            [12]  715 	anl	a,#0x01
      0021E8 FA               [12]  716 	mov	r2,a
      0021E9 7D 00            [12]  717 	mov	r5,#0x00
      0021EB A8 10            [24]  718 	mov	r0,_bp
      0021ED 08               [12]  719 	inc	r0
      0021EE E5 10            [12]  720 	mov	a,_bp
      0021F0 24 05            [12]  721 	add	a,#0x05
      0021F2 F9               [12]  722 	mov	r1,a
      0021F3 E7               [12]  723 	mov	a,@r1
      0021F4 26               [12]  724 	add	a,@r0
      0021F5 F5 82            [12]  725 	mov	dpl,a
      0021F7 09               [12]  726 	inc	r1
      0021F8 E7               [12]  727 	mov	a,@r1
      0021F9 08               [12]  728 	inc	r0
      0021FA 36               [12]  729 	addc	a,@r0
      0021FB F5 83            [12]  730 	mov	dph,a
      0021FD E0               [24]  731 	movx	a,@dptr
      0021FE FC               [12]  732 	mov	r4,a
      0021FF EB               [12]  733 	mov	a,r3
      002200 52 04            [12]  734 	anl	ar4,a
      002202 EC               [12]  735 	mov	a,r4
      002203 B4 01 00         [24]  736 	cjne	a,#0x01,00234$
      002206                        737 00234$:
      002206 B3               [12]  738 	cpl	c
      002207 92 00            [24]  739 	mov	b0,c
      002209 C0 03            [24]  740 	push	ar3
      00220B A2 00            [12]  741 	mov	c,b0
      00220D E4               [12]  742 	clr	a
      00220E 33               [12]  743 	rlc	a
      00220F 7C 00            [12]  744 	mov	r4,#0x00
      002211 62 02            [12]  745 	xrl	ar2,a
      002213 EC               [12]  746 	mov	a,r4
      002214 62 05            [12]  747 	xrl	ar5,a
      002216 D0 03            [24]  748 	pop	ar3
      002218 EA               [12]  749 	mov	a,r2
      002219 4D               [12]  750 	orl	a,r5
      00221A 60 0E            [24]  751 	jz	00148$
      00221C EE               [12]  752 	mov	a,r6
      00221D 2E               [12]  753 	add	a,r6
      00221E FC               [12]  754 	mov	r4,a
      00221F EF               [12]  755 	mov	a,r7
      002220 33               [12]  756 	rlc	a
      002221 FD               [12]  757 	mov	r5,a
      002222 63 04 21         [24]  758 	xrl	ar4,#0x21
      002225 63 05 10         [24]  759 	xrl	ar5,#0x10
      002228 80 06            [24]  760 	sjmp	00149$
      00222A                        761 00148$:
      00222A EE               [12]  762 	mov	a,r6
      00222B 2E               [12]  763 	add	a,r6
      00222C FC               [12]  764 	mov	r4,a
      00222D EF               [12]  765 	mov	a,r7
      00222E 33               [12]  766 	rlc	a
      00222F FD               [12]  767 	mov	r5,a
      002230                        768 00149$:
      002230 8C 06            [24]  769 	mov	ar6,r4
      002232 8D 07            [24]  770 	mov	ar7,r5
      002234 EB               [12]  771 	mov	a,r3
      002235 C3               [12]  772 	clr	c
      002236 13               [12]  773 	rrc	a
      002237 FB               [12]  774 	mov	r3,a
      002238 70 AA            [24]  775 	jnz	00139$
                                    776 ;	crc16.c:80: for (off = 0u; off < len; off++)
      00223A E5 10            [12]  777 	mov	a,_bp
      00223C 24 05            [12]  778 	add	a,#0x05
      00223E F8               [12]  779 	mov	r0,a
      00223F 06               [12]  780 	inc	@r0
      002240 B6 00 02         [24]  781 	cjne	@r0,#0x00,00237$
      002243 08               [12]  782 	inc	r0
      002244 06               [12]  783 	inc	@r0
      002245                        784 00237$:
                                    785 ;	crc16.c:82: CCRCB_FINISH(crc);
      002245 80 8F            [24]  786 	sjmp	00142$
      002247                        787 00120$:
                                    788 ;	crc16.c:83: printf("CRC16=0x%04x\r\n", crc);
      002247 C0 06            [24]  789 	push	ar6
      002249 C0 07            [24]  790 	push	ar7
      00224B 74 0D            [12]  791 	mov	a,#___str_2
      00224D C0 E0            [24]  792 	push	acc
      00224F 74 36            [12]  793 	mov	a,#(___str_2 >> 8)
      002251 C0 E0            [24]  794 	push	acc
      002253 74 80            [12]  795 	mov	a,#0x80
      002255 C0 E0            [24]  796 	push	acc
      002257 12 23 07         [24]  797 	lcall	_printf
      00225A E5 81            [12]  798 	mov	a,sp
      00225C 24 FB            [12]  799 	add	a,#0xfb
      00225E F5 81            [12]  800 	mov	sp,a
                                    801 ;	crc16.c:85: if (intr) {
      002260 90 80 00         [24]  802 	mov	dptr,#_intr
      002263 E0               [24]  803 	movx	a,@dptr
      002264 F5 F0            [12]  804 	mov	b,a
      002266 A3               [24]  805 	inc	dptr
      002267 E0               [24]  806 	movx	a,@dptr
      002268 45 F0            [12]  807 	orl	a,b
      00226A 60 1A            [24]  808 	jz	00124$
                                    809 ;	crc16.c:86: EA = 0;
                                    810 ;	assignBit
      00226C C2 AF            [12]  811 	clr	_EA
                                    812 ;	crc16.c:87: printf("interrupted\n");
      00226E 74 31            [12]  813 	mov	a,#___str_4
      002270 C0 E0            [24]  814 	push	acc
      002272 74 36            [12]  815 	mov	a,#(___str_4 >> 8)
      002274 C0 E0            [24]  816 	push	acc
      002276 74 80            [12]  817 	mov	a,#0x80
      002278 C0 E0            [24]  818 	push	acc
      00227A 12 23 07         [24]  819 	lcall	_printf
      00227D 15 81            [12]  820 	dec	sp
      00227F 15 81            [12]  821 	dec	sp
      002281 15 81            [12]  822 	dec	sp
                                    823 ;	crc16.c:88: break;
      002283 02 20 A0         [24]  824 	ljmp	00131$
      002286                        825 00124$:
                                    826 ;	crc16.c:91: t = base + (len >> 1);
      002286 A8 10            [24]  827 	mov	r0,_bp
      002288 08               [12]  828 	inc	r0
      002289 E5 10            [12]  829 	mov	a,_bp
      00228B 24 03            [12]  830 	add	a,#0x03
      00228D F9               [12]  831 	mov	r1,a
      00228E E6               [12]  832 	mov	a,@r0
      00228F F7               [12]  833 	mov	@r1,a
      002290 74 10            [12]  834 	mov	a,#0x10
      002292 08               [12]  835 	inc	r0
      002293 26               [12]  836 	add	a,@r0
      002294 09               [12]  837 	inc	r1
      002295 F7               [12]  838 	mov	@r1,a
                                    839 ;	crc16.c:92: if (t < base) break;
      002296 E5 10            [12]  840 	mov	a,_bp
      002298 24 03            [12]  841 	add	a,#0x03
      00229A F8               [12]  842 	mov	r0,a
      00229B A9 10            [24]  843 	mov	r1,_bp
      00229D 09               [12]  844 	inc	r1
      00229E C3               [12]  845 	clr	c
      00229F E6               [12]  846 	mov	a,@r0
      0022A0 97               [12]  847 	subb	a,@r1
      0022A1 08               [12]  848 	inc	r0
      0022A2 E6               [12]  849 	mov	a,@r0
      0022A3 09               [12]  850 	inc	r1
      0022A4 97               [12]  851 	subb	a,@r1
      0022A5 50 03            [24]  852 	jnc	00239$
      0022A7 02 20 A0         [24]  853 	ljmp	00131$
      0022AA                        854 00239$:
                                    855 ;	crc16.c:93: else base = t;
      0022AA E5 10            [12]  856 	mov	a,_bp
      0022AC 24 03            [12]  857 	add	a,#0x03
      0022AE F8               [12]  858 	mov	r0,a
      0022AF A9 10            [24]  859 	mov	r1,_bp
      0022B1 09               [12]  860 	inc	r1
      0022B2 E6               [12]  861 	mov	a,@r0
      0022B3 F7               [12]  862 	mov	@r1,a
      0022B4 08               [12]  863 	inc	r0
      0022B5 09               [12]  864 	inc	r1
      0022B6 E6               [12]  865 	mov	a,@r0
      0022B7 F7               [12]  866 	mov	@r1,a
                                    867 ;	crc16.c:100: __endasm;
      0022B8 02 21 8C         [24]  868 	ljmp	00129$
                                    869 ;	crc16.c:105: }
      0022BB 85 10 81         [24]  870 	mov	sp,_bp
      0022BE D0 10            [24]  871 	pop	_bp
      0022C0 22               [24]  872 	ret
                                    873 	.area CSEG    (CODE)
                                    874 	.area CONST   (CODE)
                                    875 	.area CONST   (CODE)
      0035EB                        876 ___str_0:
      0035EB 43 4F 4D 50 4C 45 54   877 	.ascii "COMPLETE base=0x%04x "
             45 20 62 61 73 65 3D
             30 78 25 30 34 78 20
      003600 00                     878 	.db 0x00
                                    879 	.area CSEG    (CODE)
                                    880 	.area CONST   (CODE)
      003601                        881 ___str_1:
      003601 6C 65 6E 3D 30 78 25   882 	.ascii "len=0x%04x "
             30 34 78 20
      00360C 00                     883 	.db 0x00
                                    884 	.area CSEG    (CODE)
                                    885 	.area CONST   (CODE)
      00360D                        886 ___str_2:
      00360D 43 52 43 31 36 3D 30   887 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      003619 0D                     888 	.db 0x0d
      00361A 0A                     889 	.db 0x0a
      00361B 00                     890 	.db 0x00
                                    891 	.area CSEG    (CODE)
                                    892 	.area CONST   (CODE)
      00361C                        893 ___str_3:
      00361C 50 41 52 54 49 41 4C   894 	.ascii "PARTIAL base=0x%04x "
             20 62 61 73 65 3D 30
             78 25 30 34 78 20
      003630 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
      003631                        898 ___str_4:
      003631 69 6E 74 65 72 72 75   899 	.ascii "interrupted"
             70 74 65 64
      00363C 0A                     900 	.db 0x0a
      00363D 00                     901 	.db 0x00
                                    902 	.area CSEG    (CODE)
                                    903 	.area XINIT   (CODE)
                                    904 	.area CABS    (ABS,CODE)
