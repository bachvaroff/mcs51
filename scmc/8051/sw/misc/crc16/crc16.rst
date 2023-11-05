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
      000011                        312 _intr::
      000011                        313 	.ds 1
                                    314 ;--------------------------------------------------------
                                    315 ; absolute internal ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area IABS    (ABS,DATA)
                                    318 	.area IABS    (ABS,DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; bit data
                                    321 ;--------------------------------------------------------
                                    322 	.area BSEG    (BIT)
                                    323 ;--------------------------------------------------------
                                    324 ; paged external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area PSEG    (PAG,XDATA)
                                    327 ;--------------------------------------------------------
                                    328 ; external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XSEG    (XDATA)
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
      002006 02 20 7F         [24]  377 	ljmp	_main
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
      002073 C0 D0            [24]  431 	push	psw
      002075 75 D0 08         [24]  432 	mov	psw,#0x08
                                    433 ;	crc16.c:47: intr = 1u;
      002078 78 11            [12]  434 	mov	r0,#_intr
      00207A 76 01            [12]  435 	mov	@r0,#0x01
                                    436 ;	crc16.c:48: }
      00207C D0 D0            [24]  437 	pop	psw
      00207E 32               [24]  438 	reti
                                    439 ;	eliminated unneeded push/pop dpl
                                    440 ;	eliminated unneeded push/pop dph
                                    441 ;	eliminated unneeded push/pop b
                                    442 ;	eliminated unneeded push/pop acc
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'main'
                                    445 ;------------------------------------------------------------
                                    446 ;base                      Allocated to stack - _bp +1
                                    447 ;t                         Allocated to stack - _bp +3
                                    448 ;len                       Allocated to registers 
                                    449 ;off                       Allocated to stack - _bp +5
                                    450 ;crc                       Allocated to registers r6 r7 
                                    451 ;bitp                      Allocated to registers r3 
                                    452 ;------------------------------------------------------------
                                    453 ;	crc16.c:53: void main(void) {
                                    454 ;	-----------------------------------------
                                    455 ;	 function main
                                    456 ;	-----------------------------------------
      00207F                        457 _main:
                           000007   458 	ar7 = 0x07
                           000006   459 	ar6 = 0x06
                           000005   460 	ar5 = 0x05
                           000004   461 	ar4 = 0x04
                           000003   462 	ar3 = 0x03
                           000002   463 	ar2 = 0x02
                           000001   464 	ar1 = 0x01
                           000000   465 	ar0 = 0x00
      00207F C0 10            [24]  466 	push	_bp
      002081 E5 81            [12]  467 	mov	a,sp
      002083 F5 10            [12]  468 	mov	_bp,a
      002085 24 06            [12]  469 	add	a,#0x06
      002087 F5 81            [12]  470 	mov	sp,a
                                    471 ;	crc16.c:58: intr = 0u;
      002089 78 11            [12]  472 	mov	r0,#_intr
      00208B 76 00            [12]  473 	mov	@r0,#0x00
                                    474 ;	crc16.c:60: IT0 = 1;
                                    475 ;	assignBit
      00208D D2 88            [12]  476 	setb	_IT0
                                    477 ;	crc16.c:61: EX0 = 1;	
                                    478 ;	assignBit
      00208F D2 A8            [12]  479 	setb	_EX0
                                    480 ;	crc16.c:62: EA = 1;
                                    481 ;	assignBit
      002091 D2 AF            [12]  482 	setb	_EA
                                    483 ;	crc16.c:64: while (!intr) {
      002093                        484 00131$:
      002093 78 11            [12]  485 	mov	r0,#_intr
      002095 E6               [12]  486 	mov	a,@r0
      002096 60 03            [24]  487 	jz	00227$
      002098 02 22 A0         [24]  488 	ljmp	00133$
      00209B                        489 00227$:
                                    490 ;	crc16.c:65: base = (pxd_uint8_t)0x0u;
      00209B A8 10            [24]  491 	mov	r0,_bp
      00209D 08               [12]  492 	inc	r0
      00209E E4               [12]  493 	clr	a
      00209F F6               [12]  494 	mov	@r0,a
      0020A0 08               [12]  495 	inc	r0
      0020A1 F6               [12]  496 	mov	@r0,a
                                    497 ;	crc16.c:67: printf("COMPLETE base=0x%04x ", (unsigned int)base);
      0020A2 A8 10            [24]  498 	mov	r0,_bp
      0020A4 08               [12]  499 	inc	r0
      0020A5 86 06            [24]  500 	mov	ar6,@r0
      0020A7 08               [12]  501 	inc	r0
      0020A8 86 07            [24]  502 	mov	ar7,@r0
      0020AA C0 06            [24]  503 	push	ar6
      0020AC C0 07            [24]  504 	push	ar7
      0020AE 74 D3            [12]  505 	mov	a,#___str_0
      0020B0 C0 E0            [24]  506 	push	acc
      0020B2 74 35            [12]  507 	mov	a,#(___str_0 >> 8)
      0020B4 C0 E0            [24]  508 	push	acc
      0020B6 74 80            [12]  509 	mov	a,#0x80
      0020B8 C0 E0            [24]  510 	push	acc
      0020BA 12 22 EF         [24]  511 	lcall	_printf
      0020BD E5 81            [12]  512 	mov	a,sp
      0020BF 24 FB            [12]  513 	add	a,#0xfb
      0020C1 F5 81            [12]  514 	mov	sp,a
                                    515 ;	crc16.c:68: printf("len=0x%04x ", len);
      0020C3 74 FF            [12]  516 	mov	a,#0xff
      0020C5 C0 E0            [24]  517 	push	acc
      0020C7 C0 E0            [24]  518 	push	acc
      0020C9 74 E9            [12]  519 	mov	a,#___str_1
      0020CB C0 E0            [24]  520 	push	acc
      0020CD 74 35            [12]  521 	mov	a,#(___str_1 >> 8)
      0020CF C0 E0            [24]  522 	push	acc
      0020D1 74 80            [12]  523 	mov	a,#0x80
      0020D3 C0 E0            [24]  524 	push	acc
      0020D5 12 22 EF         [24]  525 	lcall	_printf
      0020D8 E5 81            [12]  526 	mov	a,sp
      0020DA 24 FB            [12]  527 	add	a,#0xfb
      0020DC F5 81            [12]  528 	mov	sp,a
                                    529 ;	crc16.c:69: CCRCB_INIT(crc);
      0020DE 7E FF            [12]  530 	mov	r6,#0xff
      0020E0 7F FF            [12]  531 	mov	r7,#0xff
                                    532 ;	crc16.c:70: for (off = 0u; off < len; off++)
      0020E2 E5 10            [12]  533 	mov	a,_bp
      0020E4 24 05            [12]  534 	add	a,#0x05
      0020E6 F8               [12]  535 	mov	r0,a
      0020E7 E4               [12]  536 	clr	a
      0020E8 F6               [12]  537 	mov	@r0,a
      0020E9 08               [12]  538 	inc	r0
      0020EA F6               [12]  539 	mov	@r0,a
      0020EB                        540 00137$:
      0020EB E5 10            [12]  541 	mov	a,_bp
      0020ED 24 05            [12]  542 	add	a,#0x05
      0020EF F8               [12]  543 	mov	r0,a
      0020F0 C3               [12]  544 	clr	c
      0020F1 E6               [12]  545 	mov	a,@r0
      0020F2 94 FF            [12]  546 	subb	a,#0xff
      0020F4 08               [12]  547 	inc	r0
      0020F5 E6               [12]  548 	mov	a,@r0
      0020F6 94 FF            [12]  549 	subb	a,#0xff
      0020F8 50 65            [24]  550 	jnc	00109$
                                    551 ;	crc16.c:71: CCRCB(crc, base[off], bitp);
      0020FA 7B 80            [12]  552 	mov	r3,#0x80
      0020FC                        553 00134$:
      0020FC EF               [12]  554 	mov	a,r7
      0020FD 23               [12]  555 	rl	a
      0020FE 54 01            [12]  556 	anl	a,#0x01
      002100 FA               [12]  557 	mov	r2,a
      002101 7D 00            [12]  558 	mov	r5,#0x00
      002103 A8 10            [24]  559 	mov	r0,_bp
      002105 08               [12]  560 	inc	r0
      002106 E5 10            [12]  561 	mov	a,_bp
      002108 24 05            [12]  562 	add	a,#0x05
      00210A F9               [12]  563 	mov	r1,a
      00210B E7               [12]  564 	mov	a,@r1
      00210C 26               [12]  565 	add	a,@r0
      00210D F5 82            [12]  566 	mov	dpl,a
      00210F 09               [12]  567 	inc	r1
      002110 E7               [12]  568 	mov	a,@r1
      002111 08               [12]  569 	inc	r0
      002112 36               [12]  570 	addc	a,@r0
      002113 F5 83            [12]  571 	mov	dph,a
      002115 E0               [24]  572 	movx	a,@dptr
      002116 FC               [12]  573 	mov	r4,a
      002117 EB               [12]  574 	mov	a,r3
      002118 52 04            [12]  575 	anl	ar4,a
      00211A EC               [12]  576 	mov	a,r4
      00211B B4 01 00         [24]  577 	cjne	a,#0x01,00229$
      00211E                        578 00229$:
      00211E B3               [12]  579 	cpl	c
      00211F 92 00            [24]  580 	mov	b0,c
      002121 C0 03            [24]  581 	push	ar3
      002123 A2 00            [12]  582 	mov	c,b0
      002125 E4               [12]  583 	clr	a
      002126 33               [12]  584 	rlc	a
      002127 7C 00            [12]  585 	mov	r4,#0x00
      002129 62 02            [12]  586 	xrl	ar2,a
      00212B EC               [12]  587 	mov	a,r4
      00212C 62 05            [12]  588 	xrl	ar5,a
      00212E D0 03            [24]  589 	pop	ar3
      002130 EA               [12]  590 	mov	a,r2
      002131 4D               [12]  591 	orl	a,r5
      002132 60 0E            [24]  592 	jz	00146$
      002134 EE               [12]  593 	mov	a,r6
      002135 2E               [12]  594 	add	a,r6
      002136 FC               [12]  595 	mov	r4,a
      002137 EF               [12]  596 	mov	a,r7
      002138 33               [12]  597 	rlc	a
      002139 FD               [12]  598 	mov	r5,a
      00213A 63 04 21         [24]  599 	xrl	ar4,#0x21
      00213D 63 05 10         [24]  600 	xrl	ar5,#0x10
      002140 80 06            [24]  601 	sjmp	00147$
      002142                        602 00146$:
      002142 EE               [12]  603 	mov	a,r6
      002143 2E               [12]  604 	add	a,r6
      002144 FC               [12]  605 	mov	r4,a
      002145 EF               [12]  606 	mov	a,r7
      002146 33               [12]  607 	rlc	a
      002147 FD               [12]  608 	mov	r5,a
      002148                        609 00147$:
      002148 8C 06            [24]  610 	mov	ar6,r4
      00214A 8D 07            [24]  611 	mov	ar7,r5
      00214C EB               [12]  612 	mov	a,r3
      00214D C3               [12]  613 	clr	c
      00214E 13               [12]  614 	rrc	a
      00214F FB               [12]  615 	mov	r3,a
      002150 70 AA            [24]  616 	jnz	00134$
                                    617 ;	crc16.c:70: for (off = 0u; off < len; off++)
      002152 E5 10            [12]  618 	mov	a,_bp
      002154 24 05            [12]  619 	add	a,#0x05
      002156 F8               [12]  620 	mov	r0,a
      002157 06               [12]  621 	inc	@r0
      002158 B6 00 02         [24]  622 	cjne	@r0,#0x00,00232$
      00215B 08               [12]  623 	inc	r0
      00215C 06               [12]  624 	inc	@r0
      00215D                        625 00232$:
                                    626 ;	crc16.c:72: CCRCB_FINISH(crc);
      00215D 80 8C            [24]  627 	sjmp	00137$
      00215F                        628 00109$:
                                    629 ;	crc16.c:73: printf("CRC16=0x%04x\r\n", crc);
      00215F C0 06            [24]  630 	push	ar6
      002161 C0 07            [24]  631 	push	ar7
      002163 74 F5            [12]  632 	mov	a,#___str_2
      002165 C0 E0            [24]  633 	push	acc
      002167 74 35            [12]  634 	mov	a,#(___str_2 >> 8)
      002169 C0 E0            [24]  635 	push	acc
      00216B 74 80            [12]  636 	mov	a,#0x80
      00216D C0 E0            [24]  637 	push	acc
      00216F 12 22 EF         [24]  638 	lcall	_printf
      002172 E5 81            [12]  639 	mov	a,sp
      002174 24 FB            [12]  640 	add	a,#0xfb
      002176 F5 81            [12]  641 	mov	sp,a
                                    642 ;	crc16.c:76: while (1) {
      002178                        643 00129$:
                                    644 ;	crc16.c:77: printf("PARTIAL base=0x%04x ", (unsigned int)base);
      002178 A8 10            [24]  645 	mov	r0,_bp
      00217A 08               [12]  646 	inc	r0
      00217B 86 06            [24]  647 	mov	ar6,@r0
      00217D 08               [12]  648 	inc	r0
      00217E 86 07            [24]  649 	mov	ar7,@r0
      002180 C0 06            [24]  650 	push	ar6
      002182 C0 07            [24]  651 	push	ar7
      002184 74 04            [12]  652 	mov	a,#___str_3
      002186 C0 E0            [24]  653 	push	acc
      002188 74 36            [12]  654 	mov	a,#(___str_3 >> 8)
      00218A C0 E0            [24]  655 	push	acc
      00218C 74 80            [12]  656 	mov	a,#0x80
      00218E C0 E0            [24]  657 	push	acc
      002190 12 22 EF         [24]  658 	lcall	_printf
      002193 E5 81            [12]  659 	mov	a,sp
      002195 24 FB            [12]  660 	add	a,#0xfb
      002197 F5 81            [12]  661 	mov	sp,a
                                    662 ;	crc16.c:78: printf("len=0x%04x ", len);
      002199 E4               [12]  663 	clr	a
      00219A C0 E0            [24]  664 	push	acc
      00219C 74 20            [12]  665 	mov	a,#0x20
      00219E C0 E0            [24]  666 	push	acc
      0021A0 74 E9            [12]  667 	mov	a,#___str_1
      0021A2 C0 E0            [24]  668 	push	acc
      0021A4 74 35            [12]  669 	mov	a,#(___str_1 >> 8)
      0021A6 C0 E0            [24]  670 	push	acc
      0021A8 74 80            [12]  671 	mov	a,#0x80
      0021AA C0 E0            [24]  672 	push	acc
      0021AC 12 22 EF         [24]  673 	lcall	_printf
      0021AF E5 81            [12]  674 	mov	a,sp
      0021B1 24 FB            [12]  675 	add	a,#0xfb
      0021B3 F5 81            [12]  676 	mov	sp,a
                                    677 ;	crc16.c:79: CCRCB_INIT(crc);
      0021B5 7E FF            [12]  678 	mov	r6,#0xff
      0021B7 7F FF            [12]  679 	mov	r7,#0xff
                                    680 ;	crc16.c:80: for (off = 0u; off < len; off++)
      0021B9 E5 10            [12]  681 	mov	a,_bp
      0021BB 24 05            [12]  682 	add	a,#0x05
      0021BD F8               [12]  683 	mov	r0,a
      0021BE E4               [12]  684 	clr	a
      0021BF F6               [12]  685 	mov	@r0,a
      0021C0 08               [12]  686 	inc	r0
      0021C1 F6               [12]  687 	mov	@r0,a
      0021C2                        688 00142$:
      0021C2 E5 10            [12]  689 	mov	a,_bp
      0021C4 24 05            [12]  690 	add	a,#0x05
      0021C6 F8               [12]  691 	mov	r0,a
      0021C7 C3               [12]  692 	clr	c
      0021C8 08               [12]  693 	inc	r0
      0021C9 E6               [12]  694 	mov	a,@r0
      0021CA 94 20            [12]  695 	subb	a,#0x20
      0021CC 50 65            [24]  696 	jnc	00120$
                                    697 ;	crc16.c:81: CCRCB(crc, base[off], bitp);
      0021CE 7B 80            [12]  698 	mov	r3,#0x80
      0021D0                        699 00139$:
      0021D0 EF               [12]  700 	mov	a,r7
      0021D1 23               [12]  701 	rl	a
      0021D2 54 01            [12]  702 	anl	a,#0x01
      0021D4 FA               [12]  703 	mov	r2,a
      0021D5 7D 00            [12]  704 	mov	r5,#0x00
      0021D7 A8 10            [24]  705 	mov	r0,_bp
      0021D9 08               [12]  706 	inc	r0
      0021DA E5 10            [12]  707 	mov	a,_bp
      0021DC 24 05            [12]  708 	add	a,#0x05
      0021DE F9               [12]  709 	mov	r1,a
      0021DF E7               [12]  710 	mov	a,@r1
      0021E0 26               [12]  711 	add	a,@r0
      0021E1 F5 82            [12]  712 	mov	dpl,a
      0021E3 09               [12]  713 	inc	r1
      0021E4 E7               [12]  714 	mov	a,@r1
      0021E5 08               [12]  715 	inc	r0
      0021E6 36               [12]  716 	addc	a,@r0
      0021E7 F5 83            [12]  717 	mov	dph,a
      0021E9 E0               [24]  718 	movx	a,@dptr
      0021EA FC               [12]  719 	mov	r4,a
      0021EB EB               [12]  720 	mov	a,r3
      0021EC 52 04            [12]  721 	anl	ar4,a
      0021EE EC               [12]  722 	mov	a,r4
      0021EF B4 01 00         [24]  723 	cjne	a,#0x01,00234$
      0021F2                        724 00234$:
      0021F2 B3               [12]  725 	cpl	c
      0021F3 92 00            [24]  726 	mov	b0,c
      0021F5 C0 03            [24]  727 	push	ar3
      0021F7 A2 00            [12]  728 	mov	c,b0
      0021F9 E4               [12]  729 	clr	a
      0021FA 33               [12]  730 	rlc	a
      0021FB 7C 00            [12]  731 	mov	r4,#0x00
      0021FD 62 02            [12]  732 	xrl	ar2,a
      0021FF EC               [12]  733 	mov	a,r4
      002200 62 05            [12]  734 	xrl	ar5,a
      002202 D0 03            [24]  735 	pop	ar3
      002204 EA               [12]  736 	mov	a,r2
      002205 4D               [12]  737 	orl	a,r5
      002206 60 0E            [24]  738 	jz	00148$
      002208 EE               [12]  739 	mov	a,r6
      002209 2E               [12]  740 	add	a,r6
      00220A FC               [12]  741 	mov	r4,a
      00220B EF               [12]  742 	mov	a,r7
      00220C 33               [12]  743 	rlc	a
      00220D FD               [12]  744 	mov	r5,a
      00220E 63 04 21         [24]  745 	xrl	ar4,#0x21
      002211 63 05 10         [24]  746 	xrl	ar5,#0x10
      002214 80 06            [24]  747 	sjmp	00149$
      002216                        748 00148$:
      002216 EE               [12]  749 	mov	a,r6
      002217 2E               [12]  750 	add	a,r6
      002218 FC               [12]  751 	mov	r4,a
      002219 EF               [12]  752 	mov	a,r7
      00221A 33               [12]  753 	rlc	a
      00221B FD               [12]  754 	mov	r5,a
      00221C                        755 00149$:
      00221C 8C 06            [24]  756 	mov	ar6,r4
      00221E 8D 07            [24]  757 	mov	ar7,r5
      002220 EB               [12]  758 	mov	a,r3
      002221 C3               [12]  759 	clr	c
      002222 13               [12]  760 	rrc	a
      002223 FB               [12]  761 	mov	r3,a
      002224 70 AA            [24]  762 	jnz	00139$
                                    763 ;	crc16.c:80: for (off = 0u; off < len; off++)
      002226 E5 10            [12]  764 	mov	a,_bp
      002228 24 05            [12]  765 	add	a,#0x05
      00222A F8               [12]  766 	mov	r0,a
      00222B 06               [12]  767 	inc	@r0
      00222C B6 00 02         [24]  768 	cjne	@r0,#0x00,00237$
      00222F 08               [12]  769 	inc	r0
      002230 06               [12]  770 	inc	@r0
      002231                        771 00237$:
                                    772 ;	crc16.c:82: CCRCB_FINISH(crc);
      002231 80 8F            [24]  773 	sjmp	00142$
      002233                        774 00120$:
                                    775 ;	crc16.c:83: printf("CRC16=0x%04x\r\n", crc);
      002233 C0 06            [24]  776 	push	ar6
      002235 C0 07            [24]  777 	push	ar7
      002237 74 F5            [12]  778 	mov	a,#___str_2
      002239 C0 E0            [24]  779 	push	acc
      00223B 74 35            [12]  780 	mov	a,#(___str_2 >> 8)
      00223D C0 E0            [24]  781 	push	acc
      00223F 74 80            [12]  782 	mov	a,#0x80
      002241 C0 E0            [24]  783 	push	acc
      002243 12 22 EF         [24]  784 	lcall	_printf
      002246 E5 81            [12]  785 	mov	a,sp
      002248 24 FB            [12]  786 	add	a,#0xfb
      00224A F5 81            [12]  787 	mov	sp,a
                                    788 ;	crc16.c:85: if (intr) {
      00224C 78 11            [12]  789 	mov	r0,#_intr
      00224E E6               [12]  790 	mov	a,@r0
      00224F 60 1A            [24]  791 	jz	00124$
                                    792 ;	crc16.c:86: EA = 0;
                                    793 ;	assignBit
      002251 C2 AF            [12]  794 	clr	_EA
                                    795 ;	crc16.c:87: printf("interrupted\n");
      002253 74 19            [12]  796 	mov	a,#___str_4
      002255 C0 E0            [24]  797 	push	acc
      002257 74 36            [12]  798 	mov	a,#(___str_4 >> 8)
      002259 C0 E0            [24]  799 	push	acc
      00225B 74 80            [12]  800 	mov	a,#0x80
      00225D C0 E0            [24]  801 	push	acc
      00225F 12 22 EF         [24]  802 	lcall	_printf
      002262 15 81            [12]  803 	dec	sp
      002264 15 81            [12]  804 	dec	sp
      002266 15 81            [12]  805 	dec	sp
                                    806 ;	crc16.c:88: break;
      002268 02 20 93         [24]  807 	ljmp	00131$
      00226B                        808 00124$:
                                    809 ;	crc16.c:91: t = base + (len >> 1);
      00226B A8 10            [24]  810 	mov	r0,_bp
      00226D 08               [12]  811 	inc	r0
      00226E E5 10            [12]  812 	mov	a,_bp
      002270 24 03            [12]  813 	add	a,#0x03
      002272 F9               [12]  814 	mov	r1,a
      002273 E6               [12]  815 	mov	a,@r0
      002274 F7               [12]  816 	mov	@r1,a
      002275 74 10            [12]  817 	mov	a,#0x10
      002277 08               [12]  818 	inc	r0
      002278 26               [12]  819 	add	a,@r0
      002279 09               [12]  820 	inc	r1
      00227A F7               [12]  821 	mov	@r1,a
                                    822 ;	crc16.c:92: if (t < base) break;
      00227B E5 10            [12]  823 	mov	a,_bp
      00227D 24 03            [12]  824 	add	a,#0x03
      00227F F8               [12]  825 	mov	r0,a
      002280 A9 10            [24]  826 	mov	r1,_bp
      002282 09               [12]  827 	inc	r1
      002283 C3               [12]  828 	clr	c
      002284 E6               [12]  829 	mov	a,@r0
      002285 97               [12]  830 	subb	a,@r1
      002286 08               [12]  831 	inc	r0
      002287 E6               [12]  832 	mov	a,@r0
      002288 09               [12]  833 	inc	r1
      002289 97               [12]  834 	subb	a,@r1
      00228A 50 03            [24]  835 	jnc	00239$
      00228C 02 20 93         [24]  836 	ljmp	00131$
      00228F                        837 00239$:
                                    838 ;	crc16.c:93: else base = t;
      00228F E5 10            [12]  839 	mov	a,_bp
      002291 24 03            [12]  840 	add	a,#0x03
      002293 F8               [12]  841 	mov	r0,a
      002294 A9 10            [24]  842 	mov	r1,_bp
      002296 09               [12]  843 	inc	r1
      002297 E6               [12]  844 	mov	a,@r0
      002298 F7               [12]  845 	mov	@r1,a
      002299 08               [12]  846 	inc	r0
      00229A 09               [12]  847 	inc	r1
      00229B E6               [12]  848 	mov	a,@r0
      00229C F7               [12]  849 	mov	@r1,a
      00229D 02 21 78         [24]  850 	ljmp	00129$
      0022A0                        851 00133$:
                                    852 ;	crc16.c:97: PCON |= 2;
      0022A0 43 87 02         [24]  853 	orl	_PCON,#0x02
                                    854 ;	crc16.c:99: return;
                                    855 ;	crc16.c:100: }
      0022A3 85 10 81         [24]  856 	mov	sp,_bp
      0022A6 D0 10            [24]  857 	pop	_bp
      0022A8 22               [24]  858 	ret
                                    859 	.area CSEG    (CODE)
                                    860 	.area CONST   (CODE)
                                    861 	.area CONST   (CODE)
      0035D3                        862 ___str_0:
      0035D3 43 4F 4D 50 4C 45 54   863 	.ascii "COMPLETE base=0x%04x "
             45 20 62 61 73 65 3D
             30 78 25 30 34 78 20
      0035E8 00                     864 	.db 0x00
                                    865 	.area CSEG    (CODE)
                                    866 	.area CONST   (CODE)
      0035E9                        867 ___str_1:
      0035E9 6C 65 6E 3D 30 78 25   868 	.ascii "len=0x%04x "
             30 34 78 20
      0035F4 00                     869 	.db 0x00
                                    870 	.area CSEG    (CODE)
                                    871 	.area CONST   (CODE)
      0035F5                        872 ___str_2:
      0035F5 43 52 43 31 36 3D 30   873 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      003601 0D                     874 	.db 0x0d
      003602 0A                     875 	.db 0x0a
      003603 00                     876 	.db 0x00
                                    877 	.area CSEG    (CODE)
                                    878 	.area CONST   (CODE)
      003604                        879 ___str_3:
      003604 50 41 52 54 49 41 4C   880 	.ascii "PARTIAL base=0x%04x "
             20 62 61 73 65 3D 30
             78 25 30 34 78 20
      003618 00                     881 	.db 0x00
                                    882 	.area CSEG    (CODE)
                                    883 	.area CONST   (CODE)
      003619                        884 ___str_4:
      003619 69 6E 74 65 72 72 75   885 	.ascii "interrupted"
             70 74 65 64
      003624 0A                     886 	.db 0x0a
      003625 00                     887 	.db 0x00
                                    888 	.area CSEG    (CODE)
                                    889 	.area XINIT   (CODE)
                                    890 	.area CABS    (ABS,CODE)
