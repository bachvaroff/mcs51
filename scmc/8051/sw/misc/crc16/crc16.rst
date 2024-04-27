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
                                    144 ;--------------------------------------------------------
                                    145 ; special function registers
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0	=	0x0080
                           000081   150 _SP	=	0x0081
                           000082   151 _DPL	=	0x0082
                           000083   152 _DPH	=	0x0083
                           000087   153 _PCON	=	0x0087
                           000088   154 _TCON	=	0x0088
                           000089   155 _TMOD	=	0x0089
                           00008A   156 _TL0	=	0x008a
                           00008B   157 _TL1	=	0x008b
                           00008C   158 _TH0	=	0x008c
                           00008D   159 _TH1	=	0x008d
                           000090   160 _P1	=	0x0090
                           000098   161 _SCON	=	0x0098
                           000099   162 _SBUF	=	0x0099
                           0000A0   163 _P2	=	0x00a0
                           0000A8   164 _IE	=	0x00a8
                           0000B0   165 _P3	=	0x00b0
                           0000B8   166 _IP	=	0x00b8
                           0000C8   167 _T2CON	=	0x00c8
                           0000C9   168 _T2MOD	=	0x00c9
                           0000CA   169 _RCAP2L	=	0x00ca
                           0000CB   170 _RCAP2H	=	0x00cb
                           0000CC   171 _TL2	=	0x00cc
                           0000CD   172 _TH2	=	0x00cd
                           0000D0   173 _PSW	=	0x00d0
                           0000E0   174 _ACC	=	0x00e0
                           0000E0   175 _A	=	0x00e0
                           0000F0   176 _B	=	0x00f0
                                    177 ;--------------------------------------------------------
                                    178 ; special function bits
                                    179 ;--------------------------------------------------------
                                    180 	.area RSEG    (ABS,DATA)
      000000                        181 	.org 0x0000
                           000080   182 _P0_0	=	0x0080
                           000081   183 _P0_1	=	0x0081
                           000082   184 _P0_2	=	0x0082
                           000083   185 _P0_3	=	0x0083
                           000084   186 _P0_4	=	0x0084
                           000085   187 _P0_5	=	0x0085
                           000086   188 _P0_6	=	0x0086
                           000087   189 _P0_7	=	0x0087
                           000088   190 _IT0	=	0x0088
                           000089   191 _IE0	=	0x0089
                           00008A   192 _IT1	=	0x008a
                           00008B   193 _IE1	=	0x008b
                           00008C   194 _TR0	=	0x008c
                           00008D   195 _TF0	=	0x008d
                           00008E   196 _TR1	=	0x008e
                           00008F   197 _TF1	=	0x008f
                           000090   198 _P1_0	=	0x0090
                           000091   199 _P1_1	=	0x0091
                           000092   200 _P1_2	=	0x0092
                           000093   201 _P1_3	=	0x0093
                           000094   202 _P1_4	=	0x0094
                           000095   203 _P1_5	=	0x0095
                           000096   204 _P1_6	=	0x0096
                           000097   205 _P1_7	=	0x0097
                           000090   206 _T2	=	0x0090
                           000091   207 _T2EX	=	0x0091
                           000098   208 _RI	=	0x0098
                           000099   209 _TI	=	0x0099
                           00009A   210 _RB8	=	0x009a
                           00009B   211 _TB8	=	0x009b
                           00009C   212 _REN	=	0x009c
                           00009D   213 _SM2	=	0x009d
                           00009E   214 _SM1	=	0x009e
                           00009F   215 _SM0	=	0x009f
                           0000A0   216 _P2_0	=	0x00a0
                           0000A1   217 _P2_1	=	0x00a1
                           0000A2   218 _P2_2	=	0x00a2
                           0000A3   219 _P2_3	=	0x00a3
                           0000A4   220 _P2_4	=	0x00a4
                           0000A5   221 _P2_5	=	0x00a5
                           0000A6   222 _P2_6	=	0x00a6
                           0000A7   223 _P2_7	=	0x00a7
                           0000A8   224 _EX0	=	0x00a8
                           0000A9   225 _ET0	=	0x00a9
                           0000AA   226 _EX1	=	0x00aa
                           0000AB   227 _ET1	=	0x00ab
                           0000AC   228 _ES	=	0x00ac
                           0000AD   229 _ET2	=	0x00ad
                           0000AF   230 _EA	=	0x00af
                           0000B0   231 _P3_0	=	0x00b0
                           0000B1   232 _P3_1	=	0x00b1
                           0000B2   233 _P3_2	=	0x00b2
                           0000B3   234 _P3_3	=	0x00b3
                           0000B4   235 _P3_4	=	0x00b4
                           0000B5   236 _P3_5	=	0x00b5
                           0000B6   237 _P3_6	=	0x00b6
                           0000B7   238 _P3_7	=	0x00b7
                           0000B0   239 _RXD	=	0x00b0
                           0000B1   240 _TXD	=	0x00b1
                           0000B2   241 _INT0	=	0x00b2
                           0000B3   242 _INT1	=	0x00b3
                           0000B4   243 _T0	=	0x00b4
                           0000B5   244 _T1	=	0x00b5
                           0000B6   245 _WR	=	0x00b6
                           0000B7   246 _RD	=	0x00b7
                           0000B8   247 _PX0	=	0x00b8
                           0000B9   248 _PT0	=	0x00b9
                           0000BA   249 _PX1	=	0x00ba
                           0000BB   250 _PT1	=	0x00bb
                           0000BC   251 _PS	=	0x00bc
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                           0000D0   269 _P	=	0x00d0
                           0000D1   270 _FL	=	0x00d1
                           0000D2   271 _OV	=	0x00d2
                           0000D3   272 _RS0	=	0x00d3
                           0000D4   273 _RS1	=	0x00d4
                           0000D5   274 _F0	=	0x00d5
                           0000D6   275 _AC	=	0x00d6
                           0000D7   276 _CY	=	0x00d7
                                    277 ;--------------------------------------------------------
                                    278 ; overlayable register banks
                                    279 ;--------------------------------------------------------
                                    280 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        281 	.ds 8
                                    282 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        283 	.ds 8
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable bit register bank
                                    286 ;--------------------------------------------------------
                                    287 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        288 bits:
      000020                        289 	.ds 1
                           008000   290 	b0 = bits[0]
                           008100   291 	b1 = bits[1]
                           008200   292 	b2 = bits[2]
                           008300   293 	b3 = bits[3]
                           008400   294 	b4 = bits[4]
                           008500   295 	b5 = bits[5]
                           008600   296 	b6 = bits[6]
                           008700   297 	b7 = bits[7]
                                    298 ;--------------------------------------------------------
                                    299 ; internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area DSEG    (DATA)
                                    302 ;--------------------------------------------------------
                                    303 ; overlayable items in internal ram 
                                    304 ;--------------------------------------------------------
                                    305 ;--------------------------------------------------------
                                    306 ; Stack segment in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 	.area	SSEG
      000031                        309 __start__stack:
      000031                        310 	.ds	1
                                    311 
                                    312 ;--------------------------------------------------------
                                    313 ; indirectly addressable internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area ISEG    (DATA)
      000011                        316 _intr::
      000011                        317 	.ds 1
      000012                        318 _base::
      000012                        319 	.ds 2
      000014                        320 _t::
      000014                        321 	.ds 2
      000016                        322 _len::
      000016                        323 	.ds 2
      000018                        324 _off::
      000018                        325 	.ds 2
      00001A                        326 _crc::
      00001A                        327 	.ds 2
      00001C                        328 _bitp::
      00001C                        329 	.ds 1
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
                                    347 ;--------------------------------------------------------
                                    348 ; absolute external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area XABS    (ABS,XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; external initialized ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XISEG   (XDATA)
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT0 (CODE)
                                    357 	.area GSINIT1 (CODE)
                                    358 	.area GSINIT2 (CODE)
                                    359 	.area GSINIT3 (CODE)
                                    360 	.area GSINIT4 (CODE)
                                    361 	.area GSINIT5 (CODE)
                                    362 	.area GSINIT  (CODE)
                                    363 	.area GSFINAL (CODE)
                                    364 	.area CSEG    (CODE)
                                    365 ;--------------------------------------------------------
                                    366 ; interrupt vector 
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
      002000                        369 __interrupt_vect:
      002000 02 20 09         [24]  370 	ljmp	__sdcc_gsinit_startup
      002003 02 20 A5         [24]  371 	ljmp	_int0
                                    372 ;--------------------------------------------------------
                                    373 ; global & static initialisations
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 	.globl __sdcc_gsinit_startup
                                    380 	.globl __sdcc_program_startup
                                    381 	.globl __start__stack
                                    382 	.globl __mcs51_genXINIT
                                    383 	.globl __mcs51_genXRAMCLEAR
                                    384 	.globl __mcs51_genRAMCLEAR
                                    385 	.area GSFINAL (CODE)
      0020A2 02 20 06         [24]  386 	ljmp	__sdcc_program_startup
                                    387 ;--------------------------------------------------------
                                    388 ; Home
                                    389 ;--------------------------------------------------------
                                    390 	.area HOME    (CODE)
                                    391 	.area HOME    (CODE)
      002006                        392 __sdcc_program_startup:
      002006 02 20 B1         [24]  393 	ljmp	_main
                                    394 ;	return from main will return to caller
                                    395 ;--------------------------------------------------------
                                    396 ; code
                                    397 ;--------------------------------------------------------
                                    398 	.area CSEG    (CODE)
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'int0'
                                    401 ;------------------------------------------------------------
                                    402 ;	crc16.c:28: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    403 ;	-----------------------------------------
                                    404 ;	 function int0
                                    405 ;	-----------------------------------------
      0020A5                        406 _int0:
                           00000F   407 	ar7 = 0x0f
                           00000E   408 	ar6 = 0x0e
                           00000D   409 	ar5 = 0x0d
                           00000C   410 	ar4 = 0x0c
                           00000B   411 	ar3 = 0x0b
                           00000A   412 	ar2 = 0x0a
                           000009   413 	ar1 = 0x09
                           000008   414 	ar0 = 0x08
      0020A5 C0 D0            [24]  415 	push	psw
      0020A7 75 D0 08         [24]  416 	mov	psw,#0x08
                                    417 ;	crc16.c:29: intr = 1u;
      0020AA 78 11            [12]  418 	mov	r0,#_intr
      0020AC 76 01            [12]  419 	mov	@r0,#0x01
                                    420 ;	crc16.c:30: }
      0020AE D0 D0            [24]  421 	pop	psw
      0020B0 32               [24]  422 	reti
                                    423 ;	eliminated unneeded push/pop dpl
                                    424 ;	eliminated unneeded push/pop dph
                                    425 ;	eliminated unneeded push/pop b
                                    426 ;	eliminated unneeded push/pop acc
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'main'
                                    429 ;------------------------------------------------------------
                                    430 ;	crc16.c:39: void main(void) {
                                    431 ;	-----------------------------------------
                                    432 ;	 function main
                                    433 ;	-----------------------------------------
      0020B1                        434 _main:
                           000007   435 	ar7 = 0x07
                           000006   436 	ar6 = 0x06
                           000005   437 	ar5 = 0x05
                           000004   438 	ar4 = 0x04
                           000003   439 	ar3 = 0x03
                           000002   440 	ar2 = 0x02
                           000001   441 	ar1 = 0x01
                           000000   442 	ar0 = 0x00
                                    443 ;	crc16.c:40: intr = 0u;
      0020B1 78 11            [12]  444 	mov	r0,#_intr
      0020B3 76 00            [12]  445 	mov	@r0,#0x00
                                    446 ;	crc16.c:42: IT0 = 1;
                                    447 ;	assignBit
      0020B5 D2 88            [12]  448 	setb	_IT0
                                    449 ;	crc16.c:43: EX0 = 1;	
                                    450 ;	assignBit
      0020B7 D2 A8            [12]  451 	setb	_EX0
                                    452 ;	crc16.c:44: EA = 1;
                                    453 ;	assignBit
      0020B9 D2 AF            [12]  454 	setb	_EA
                                    455 ;	crc16.c:46: while (!intr) {
      0020BB                        456 00131$:
      0020BB 78 11            [12]  457 	mov	r0,#_intr
      0020BD E6               [12]  458 	mov	a,@r0
      0020BE 60 03            [24]  459 	jz	00210$
      0020C0 02 23 1D         [24]  460 	ljmp	00133$
      0020C3                        461 00210$:
                                    462 ;	crc16.c:47: base = (pxd_uint8_t)0x0u;
      0020C3 78 12            [12]  463 	mov	r0,#_base
      0020C5 E4               [12]  464 	clr	a
      0020C6 F6               [12]  465 	mov	@r0,a
      0020C7 08               [12]  466 	inc	r0
      0020C8 F6               [12]  467 	mov	@r0,a
                                    468 ;	crc16.c:48: len = TLEN;
      0020C9 78 16            [12]  469 	mov	r0,#_len
      0020CB 76 FF            [12]  470 	mov	@r0,#0xff
      0020CD 08               [12]  471 	inc	r0
      0020CE 76 FF            [12]  472 	mov	@r0,#0xff
                                    473 ;	crc16.c:49: printf("COMPLETE base=%p ", base);
      0020D0 78 12            [12]  474 	mov	r0,#_base
      0020D2 86 05            [24]  475 	mov	ar5,@r0
      0020D4 08               [12]  476 	inc	r0
      0020D5 86 06            [24]  477 	mov	ar6,@r0
      0020D7 7F 00            [12]  478 	mov	r7,#0x00
      0020D9 C0 05            [24]  479 	push	ar5
      0020DB C0 06            [24]  480 	push	ar6
      0020DD C0 07            [24]  481 	push	ar7
      0020DF 74 20            [12]  482 	mov	a,#___str_0
      0020E1 C0 E0            [24]  483 	push	acc
      0020E3 74 39            [12]  484 	mov	a,#(___str_0 >> 8)
      0020E5 C0 E0            [24]  485 	push	acc
      0020E7 74 80            [12]  486 	mov	a,#0x80
      0020E9 C0 E0            [24]  487 	push	acc
      0020EB 12 23 67         [24]  488 	lcall	_printf
      0020EE E5 81            [12]  489 	mov	a,sp
      0020F0 24 FA            [12]  490 	add	a,#0xfa
      0020F2 F5 81            [12]  491 	mov	sp,a
                                    492 ;	crc16.c:50: printf("len=0x%04x ", len);
      0020F4 78 16            [12]  493 	mov	r0,#_len
      0020F6 E6               [12]  494 	mov	a,@r0
      0020F7 C0 E0            [24]  495 	push	acc
      0020F9 08               [12]  496 	inc	r0
      0020FA E6               [12]  497 	mov	a,@r0
      0020FB C0 E0            [24]  498 	push	acc
      0020FD 74 32            [12]  499 	mov	a,#___str_1
      0020FF C0 E0            [24]  500 	push	acc
      002101 74 39            [12]  501 	mov	a,#(___str_1 >> 8)
      002103 C0 E0            [24]  502 	push	acc
      002105 74 80            [12]  503 	mov	a,#0x80
      002107 C0 E0            [24]  504 	push	acc
      002109 12 23 67         [24]  505 	lcall	_printf
      00210C E5 81            [12]  506 	mov	a,sp
      00210E 24 FB            [12]  507 	add	a,#0xfb
      002110 F5 81            [12]  508 	mov	sp,a
                                    509 ;	crc16.c:51: CCRCB_INIT(crc);
      002112 78 1A            [12]  510 	mov	r0,#_crc
      002114 76 FF            [12]  511 	mov	@r0,#0xff
      002116 08               [12]  512 	inc	r0
      002117 76 FF            [12]  513 	mov	@r0,#0xff
                                    514 ;	crc16.c:52: for (off = 0u; off < len; off++)
      002119 78 18            [12]  515 	mov	r0,#_off
      00211B E4               [12]  516 	clr	a
      00211C F6               [12]  517 	mov	@r0,a
      00211D 08               [12]  518 	inc	r0
      00211E F6               [12]  519 	mov	@r0,a
      00211F                        520 00137$:
      00211F 78 18            [12]  521 	mov	r0,#_off
      002121 79 16            [12]  522 	mov	r1,#_len
      002123 C3               [12]  523 	clr	c
      002124 E6               [12]  524 	mov	a,@r0
      002125 97               [12]  525 	subb	a,@r1
      002126 08               [12]  526 	inc	r0
      002127 E6               [12]  527 	mov	a,@r0
      002128 09               [12]  528 	inc	r1
      002129 97               [12]  529 	subb	a,@r1
      00212A 50 6F            [24]  530 	jnc	00109$
                                    531 ;	crc16.c:53: CCRCB(crc, base[off], bitp);
      00212C 78 1C            [12]  532 	mov	r0,#_bitp
      00212E 76 80            [12]  533 	mov	@r0,#0x80
      002130                        534 00134$:
      002130 78 1B            [12]  535 	mov	r0,#(_crc + 1)
      002132 E6               [12]  536 	mov	a,@r0
      002133 23               [12]  537 	rl	a
      002134 54 01            [12]  538 	anl	a,#0x01
      002136 FE               [12]  539 	mov	r6,a
      002137 7F 00            [12]  540 	mov	r7,#0x00
      002139 78 12            [12]  541 	mov	r0,#_base
      00213B 79 18            [12]  542 	mov	r1,#_off
      00213D E7               [12]  543 	mov	a,@r1
      00213E 26               [12]  544 	add	a,@r0
      00213F F5 82            [12]  545 	mov	dpl,a
      002141 09               [12]  546 	inc	r1
      002142 E7               [12]  547 	mov	a,@r1
      002143 08               [12]  548 	inc	r0
      002144 36               [12]  549 	addc	a,@r0
      002145 F5 83            [12]  550 	mov	dph,a
      002147 E0               [24]  551 	movx	a,@dptr
      002148 FD               [12]  552 	mov	r5,a
      002149 78 1C            [12]  553 	mov	r0,#_bitp
      00214B E6               [12]  554 	mov	a,@r0
      00214C 52 05            [12]  555 	anl	ar5,a
      00214E ED               [12]  556 	mov	a,r5
      00214F B4 01 00         [24]  557 	cjne	a,#0x01,00212$
      002152                        558 00212$:
      002152 B3               [12]  559 	cpl	c
      002153 92 00            [24]  560 	mov	b0,c
      002155 E4               [12]  561 	clr	a
      002156 33               [12]  562 	rlc	a
      002157 FC               [12]  563 	mov	r4,a
      002158 7D 00            [12]  564 	mov	r5,#0x00
      00215A 62 06            [12]  565 	xrl	ar6,a
      00215C ED               [12]  566 	mov	a,r5
      00215D 62 07            [12]  567 	xrl	ar7,a
      00215F EE               [12]  568 	mov	a,r6
      002160 4F               [12]  569 	orl	a,r7
      002161 60 12            [24]  570 	jz	00146$
      002163 78 1A            [12]  571 	mov	r0,#_crc
      002165 E6               [12]  572 	mov	a,@r0
      002166 25 E0            [12]  573 	add	a,acc
      002168 FE               [12]  574 	mov	r6,a
      002169 08               [12]  575 	inc	r0
      00216A E6               [12]  576 	mov	a,@r0
      00216B 33               [12]  577 	rlc	a
      00216C FF               [12]  578 	mov	r7,a
      00216D 63 06 21         [24]  579 	xrl	ar6,#0x21
      002170 63 07 10         [24]  580 	xrl	ar7,#0x10
      002173 80 0A            [24]  581 	sjmp	00147$
      002175                        582 00146$:
      002175 78 1A            [12]  583 	mov	r0,#_crc
      002177 E6               [12]  584 	mov	a,@r0
      002178 25 E0            [12]  585 	add	a,acc
      00217A FE               [12]  586 	mov	r6,a
      00217B 08               [12]  587 	inc	r0
      00217C E6               [12]  588 	mov	a,@r0
      00217D 33               [12]  589 	rlc	a
      00217E FF               [12]  590 	mov	r7,a
      00217F                        591 00147$:
      00217F 78 1A            [12]  592 	mov	r0,#_crc
      002181 A6 06            [24]  593 	mov	@r0,ar6
      002183 08               [12]  594 	inc	r0
      002184 A6 07            [24]  595 	mov	@r0,ar7
      002186 78 1C            [12]  596 	mov	r0,#_bitp
      002188 E6               [12]  597 	mov	a,@r0
      002189 C3               [12]  598 	clr	c
      00218A 13               [12]  599 	rrc	a
      00218B F6               [12]  600 	mov	@r0,a
      00218C 78 1C            [12]  601 	mov	r0,#_bitp
      00218E E6               [12]  602 	mov	a,@r0
      00218F 70 9F            [24]  603 	jnz	00134$
                                    604 ;	crc16.c:52: for (off = 0u; off < len; off++)
      002191 78 18            [12]  605 	mov	r0,#_off
      002193 06               [12]  606 	inc	@r0
      002194 B6 00 02         [24]  607 	cjne	@r0,#0x00,00215$
      002197 08               [12]  608 	inc	r0
      002198 06               [12]  609 	inc	@r0
      002199                        610 00215$:
                                    611 ;	crc16.c:54: CCRCB_FINISH(crc);
      002199 80 84            [24]  612 	sjmp	00137$
      00219B                        613 00109$:
      00219B 78 1A            [12]  614 	mov	r0,#_crc
      00219D 86 06            [24]  615 	mov	ar6,@r0
      00219F 08               [12]  616 	inc	r0
      0021A0 86 07            [24]  617 	mov	ar7,@r0
      0021A2 78 1A            [12]  618 	mov	r0,#_crc
      0021A4 A6 06            [24]  619 	mov	@r0,ar6
      0021A6 08               [12]  620 	inc	r0
      0021A7 A6 07            [24]  621 	mov	@r0,ar7
                                    622 ;	crc16.c:55: printf("CRC16=0x%04x\r\n", crc);
      0021A9 78 1A            [12]  623 	mov	r0,#_crc
      0021AB E6               [12]  624 	mov	a,@r0
      0021AC C0 E0            [24]  625 	push	acc
      0021AE 08               [12]  626 	inc	r0
      0021AF E6               [12]  627 	mov	a,@r0
      0021B0 C0 E0            [24]  628 	push	acc
      0021B2 74 3E            [12]  629 	mov	a,#___str_2
      0021B4 C0 E0            [24]  630 	push	acc
      0021B6 74 39            [12]  631 	mov	a,#(___str_2 >> 8)
      0021B8 C0 E0            [24]  632 	push	acc
      0021BA 74 80            [12]  633 	mov	a,#0x80
      0021BC C0 E0            [24]  634 	push	acc
      0021BE 12 23 67         [24]  635 	lcall	_printf
      0021C1 E5 81            [12]  636 	mov	a,sp
      0021C3 24 FB            [12]  637 	add	a,#0xfb
      0021C5 F5 81            [12]  638 	mov	sp,a
                                    639 ;	crc16.c:57: len = PLEN;
      0021C7 78 16            [12]  640 	mov	r0,#_len
      0021C9 76 00            [12]  641 	mov	@r0,#0x00
      0021CB 08               [12]  642 	inc	r0
      0021CC 76 20            [12]  643 	mov	@r0,#0x20
                                    644 ;	crc16.c:58: while (1) {
      0021CE                        645 00129$:
                                    646 ;	crc16.c:59: printf("PARTIAL base=%p ", base);
      0021CE 78 12            [12]  647 	mov	r0,#_base
      0021D0 86 05            [24]  648 	mov	ar5,@r0
      0021D2 08               [12]  649 	inc	r0
      0021D3 86 06            [24]  650 	mov	ar6,@r0
      0021D5 7F 00            [12]  651 	mov	r7,#0x00
      0021D7 C0 05            [24]  652 	push	ar5
      0021D9 C0 06            [24]  653 	push	ar6
      0021DB C0 07            [24]  654 	push	ar7
      0021DD 74 4D            [12]  655 	mov	a,#___str_3
      0021DF C0 E0            [24]  656 	push	acc
      0021E1 74 39            [12]  657 	mov	a,#(___str_3 >> 8)
      0021E3 C0 E0            [24]  658 	push	acc
      0021E5 74 80            [12]  659 	mov	a,#0x80
      0021E7 C0 E0            [24]  660 	push	acc
      0021E9 12 23 67         [24]  661 	lcall	_printf
      0021EC E5 81            [12]  662 	mov	a,sp
      0021EE 24 FA            [12]  663 	add	a,#0xfa
      0021F0 F5 81            [12]  664 	mov	sp,a
                                    665 ;	crc16.c:60: printf("len=0x%04x ", len);
      0021F2 78 16            [12]  666 	mov	r0,#_len
      0021F4 E6               [12]  667 	mov	a,@r0
      0021F5 C0 E0            [24]  668 	push	acc
      0021F7 08               [12]  669 	inc	r0
      0021F8 E6               [12]  670 	mov	a,@r0
      0021F9 C0 E0            [24]  671 	push	acc
      0021FB 74 32            [12]  672 	mov	a,#___str_1
      0021FD C0 E0            [24]  673 	push	acc
      0021FF 74 39            [12]  674 	mov	a,#(___str_1 >> 8)
      002201 C0 E0            [24]  675 	push	acc
      002203 74 80            [12]  676 	mov	a,#0x80
      002205 C0 E0            [24]  677 	push	acc
      002207 12 23 67         [24]  678 	lcall	_printf
      00220A E5 81            [12]  679 	mov	a,sp
      00220C 24 FB            [12]  680 	add	a,#0xfb
      00220E F5 81            [12]  681 	mov	sp,a
                                    682 ;	crc16.c:61: CCRCB_INIT(crc);
      002210 78 1A            [12]  683 	mov	r0,#_crc
      002212 76 FF            [12]  684 	mov	@r0,#0xff
      002214 08               [12]  685 	inc	r0
      002215 76 FF            [12]  686 	mov	@r0,#0xff
                                    687 ;	crc16.c:62: for (off = 0u; off < len; off++)
      002217 78 18            [12]  688 	mov	r0,#_off
      002219 E4               [12]  689 	clr	a
      00221A F6               [12]  690 	mov	@r0,a
      00221B 08               [12]  691 	inc	r0
      00221C F6               [12]  692 	mov	@r0,a
      00221D                        693 00142$:
      00221D 78 18            [12]  694 	mov	r0,#_off
      00221F 79 16            [12]  695 	mov	r1,#_len
      002221 C3               [12]  696 	clr	c
      002222 E6               [12]  697 	mov	a,@r0
      002223 97               [12]  698 	subb	a,@r1
      002224 08               [12]  699 	inc	r0
      002225 E6               [12]  700 	mov	a,@r0
      002226 09               [12]  701 	inc	r1
      002227 97               [12]  702 	subb	a,@r1
      002228 50 6F            [24]  703 	jnc	00120$
                                    704 ;	crc16.c:63: CCRCB(crc, base[off], bitp);
      00222A 78 1C            [12]  705 	mov	r0,#_bitp
      00222C 76 80            [12]  706 	mov	@r0,#0x80
      00222E                        707 00139$:
      00222E 78 1B            [12]  708 	mov	r0,#(_crc + 1)
      002230 E6               [12]  709 	mov	a,@r0
      002231 23               [12]  710 	rl	a
      002232 54 01            [12]  711 	anl	a,#0x01
      002234 FE               [12]  712 	mov	r6,a
      002235 7F 00            [12]  713 	mov	r7,#0x00
      002237 78 12            [12]  714 	mov	r0,#_base
      002239 79 18            [12]  715 	mov	r1,#_off
      00223B E7               [12]  716 	mov	a,@r1
      00223C 26               [12]  717 	add	a,@r0
      00223D F5 82            [12]  718 	mov	dpl,a
      00223F 09               [12]  719 	inc	r1
      002240 E7               [12]  720 	mov	a,@r1
      002241 08               [12]  721 	inc	r0
      002242 36               [12]  722 	addc	a,@r0
      002243 F5 83            [12]  723 	mov	dph,a
      002245 E0               [24]  724 	movx	a,@dptr
      002246 FD               [12]  725 	mov	r5,a
      002247 78 1C            [12]  726 	mov	r0,#_bitp
      002249 E6               [12]  727 	mov	a,@r0
      00224A 52 05            [12]  728 	anl	ar5,a
      00224C ED               [12]  729 	mov	a,r5
      00224D B4 01 00         [24]  730 	cjne	a,#0x01,00217$
      002250                        731 00217$:
      002250 B3               [12]  732 	cpl	c
      002251 92 00            [24]  733 	mov	b0,c
      002253 E4               [12]  734 	clr	a
      002254 33               [12]  735 	rlc	a
      002255 FC               [12]  736 	mov	r4,a
      002256 7D 00            [12]  737 	mov	r5,#0x00
      002258 62 06            [12]  738 	xrl	ar6,a
      00225A ED               [12]  739 	mov	a,r5
      00225B 62 07            [12]  740 	xrl	ar7,a
      00225D EE               [12]  741 	mov	a,r6
      00225E 4F               [12]  742 	orl	a,r7
      00225F 60 12            [24]  743 	jz	00148$
      002261 78 1A            [12]  744 	mov	r0,#_crc
      002263 E6               [12]  745 	mov	a,@r0
      002264 25 E0            [12]  746 	add	a,acc
      002266 FE               [12]  747 	mov	r6,a
      002267 08               [12]  748 	inc	r0
      002268 E6               [12]  749 	mov	a,@r0
      002269 33               [12]  750 	rlc	a
      00226A FF               [12]  751 	mov	r7,a
      00226B 63 06 21         [24]  752 	xrl	ar6,#0x21
      00226E 63 07 10         [24]  753 	xrl	ar7,#0x10
      002271 80 0A            [24]  754 	sjmp	00149$
      002273                        755 00148$:
      002273 78 1A            [12]  756 	mov	r0,#_crc
      002275 E6               [12]  757 	mov	a,@r0
      002276 25 E0            [12]  758 	add	a,acc
      002278 FE               [12]  759 	mov	r6,a
      002279 08               [12]  760 	inc	r0
      00227A E6               [12]  761 	mov	a,@r0
      00227B 33               [12]  762 	rlc	a
      00227C FF               [12]  763 	mov	r7,a
      00227D                        764 00149$:
      00227D 78 1A            [12]  765 	mov	r0,#_crc
      00227F A6 06            [24]  766 	mov	@r0,ar6
      002281 08               [12]  767 	inc	r0
      002282 A6 07            [24]  768 	mov	@r0,ar7
      002284 78 1C            [12]  769 	mov	r0,#_bitp
      002286 E6               [12]  770 	mov	a,@r0
      002287 C3               [12]  771 	clr	c
      002288 13               [12]  772 	rrc	a
      002289 F6               [12]  773 	mov	@r0,a
      00228A 78 1C            [12]  774 	mov	r0,#_bitp
      00228C E6               [12]  775 	mov	a,@r0
      00228D 70 9F            [24]  776 	jnz	00139$
                                    777 ;	crc16.c:62: for (off = 0u; off < len; off++)
      00228F 78 18            [12]  778 	mov	r0,#_off
      002291 06               [12]  779 	inc	@r0
      002292 B6 00 02         [24]  780 	cjne	@r0,#0x00,00220$
      002295 08               [12]  781 	inc	r0
      002296 06               [12]  782 	inc	@r0
      002297                        783 00220$:
                                    784 ;	crc16.c:64: CCRCB_FINISH(crc);
      002297 80 84            [24]  785 	sjmp	00142$
      002299                        786 00120$:
      002299 78 1A            [12]  787 	mov	r0,#_crc
      00229B 86 06            [24]  788 	mov	ar6,@r0
      00229D 08               [12]  789 	inc	r0
      00229E 86 07            [24]  790 	mov	ar7,@r0
      0022A0 78 1A            [12]  791 	mov	r0,#_crc
      0022A2 A6 06            [24]  792 	mov	@r0,ar6
      0022A4 08               [12]  793 	inc	r0
      0022A5 A6 07            [24]  794 	mov	@r0,ar7
                                    795 ;	crc16.c:65: printf("CRC16=0x%04x\r\n", crc);
      0022A7 78 1A            [12]  796 	mov	r0,#_crc
      0022A9 E6               [12]  797 	mov	a,@r0
      0022AA C0 E0            [24]  798 	push	acc
      0022AC 08               [12]  799 	inc	r0
      0022AD E6               [12]  800 	mov	a,@r0
      0022AE C0 E0            [24]  801 	push	acc
      0022B0 74 3E            [12]  802 	mov	a,#___str_2
      0022B2 C0 E0            [24]  803 	push	acc
      0022B4 74 39            [12]  804 	mov	a,#(___str_2 >> 8)
      0022B6 C0 E0            [24]  805 	push	acc
      0022B8 74 80            [12]  806 	mov	a,#0x80
      0022BA C0 E0            [24]  807 	push	acc
      0022BC 12 23 67         [24]  808 	lcall	_printf
      0022BF E5 81            [12]  809 	mov	a,sp
      0022C1 24 FB            [12]  810 	add	a,#0xfb
      0022C3 F5 81            [12]  811 	mov	sp,a
                                    812 ;	crc16.c:67: if (intr) {
      0022C5 78 11            [12]  813 	mov	r0,#_intr
      0022C7 E6               [12]  814 	mov	a,@r0
      0022C8 60 1A            [24]  815 	jz	00124$
                                    816 ;	crc16.c:68: EA = 0;
                                    817 ;	assignBit
      0022CA C2 AF            [12]  818 	clr	_EA
                                    819 ;	crc16.c:69: printf("interrupted\n");
      0022CC 74 5E            [12]  820 	mov	a,#___str_4
      0022CE C0 E0            [24]  821 	push	acc
      0022D0 74 39            [12]  822 	mov	a,#(___str_4 >> 8)
      0022D2 C0 E0            [24]  823 	push	acc
      0022D4 74 80            [12]  824 	mov	a,#0x80
      0022D6 C0 E0            [24]  825 	push	acc
      0022D8 12 23 67         [24]  826 	lcall	_printf
      0022DB 15 81            [12]  827 	dec	sp
      0022DD 15 81            [12]  828 	dec	sp
      0022DF 15 81            [12]  829 	dec	sp
                                    830 ;	crc16.c:70: break;
      0022E1 02 20 BB         [24]  831 	ljmp	00131$
      0022E4                        832 00124$:
                                    833 ;	crc16.c:73: t = base + (len >> 1);
      0022E4 78 16            [12]  834 	mov	r0,#_len
      0022E6 86 06            [24]  835 	mov	ar6,@r0
      0022E8 08               [12]  836 	inc	r0
      0022E9 E6               [12]  837 	mov	a,@r0
      0022EA C3               [12]  838 	clr	c
      0022EB 13               [12]  839 	rrc	a
      0022EC CE               [12]  840 	xch	a,r6
      0022ED 13               [12]  841 	rrc	a
      0022EE CE               [12]  842 	xch	a,r6
      0022EF FF               [12]  843 	mov	r7,a
      0022F0 78 12            [12]  844 	mov	r0,#_base
      0022F2 EE               [12]  845 	mov	a,r6
      0022F3 26               [12]  846 	add	a,@r0
      0022F4 FE               [12]  847 	mov	r6,a
      0022F5 EF               [12]  848 	mov	a,r7
      0022F6 08               [12]  849 	inc	r0
      0022F7 36               [12]  850 	addc	a,@r0
      0022F8 FF               [12]  851 	mov	r7,a
      0022F9 78 14            [12]  852 	mov	r0,#_t
      0022FB A6 06            [24]  853 	mov	@r0,ar6
      0022FD 08               [12]  854 	inc	r0
      0022FE A6 07            [24]  855 	mov	@r0,ar7
                                    856 ;	crc16.c:74: if (t < base) break;
      002300 78 14            [12]  857 	mov	r0,#_t
      002302 79 12            [12]  858 	mov	r1,#_base
      002304 C3               [12]  859 	clr	c
      002305 E6               [12]  860 	mov	a,@r0
      002306 97               [12]  861 	subb	a,@r1
      002307 08               [12]  862 	inc	r0
      002308 E6               [12]  863 	mov	a,@r0
      002309 09               [12]  864 	inc	r1
      00230A 97               [12]  865 	subb	a,@r1
      00230B 50 03            [24]  866 	jnc	00222$
      00230D 02 20 BB         [24]  867 	ljmp	00131$
      002310                        868 00222$:
                                    869 ;	crc16.c:75: else base = t;
      002310 78 14            [12]  870 	mov	r0,#_t
      002312 79 12            [12]  871 	mov	r1,#_base
      002314 E6               [12]  872 	mov	a,@r0
      002315 F7               [12]  873 	mov	@r1,a
      002316 08               [12]  874 	inc	r0
      002317 09               [12]  875 	inc	r1
      002318 E6               [12]  876 	mov	a,@r0
      002319 F7               [12]  877 	mov	@r1,a
      00231A 02 21 CE         [24]  878 	ljmp	00129$
      00231D                        879 00133$:
                                    880 ;	crc16.c:79: PCON |= 2;
      00231D 43 87 02         [24]  881 	orl	_PCON,#0x02
                                    882 ;	crc16.c:81: return;
                                    883 ;	crc16.c:82: }
      002320 22               [24]  884 	ret
                                    885 	.area CSEG    (CODE)
                                    886 	.area CONST   (CODE)
                                    887 	.area CONST   (CODE)
      003920                        888 ___str_0:
      003920 43 4F 4D 50 4C 45 54   889 	.ascii "COMPLETE base=%p "
             45 20 62 61 73 65 3D
             25 70 20
      003931 00                     890 	.db 0x00
                                    891 	.area CSEG    (CODE)
                                    892 	.area CONST   (CODE)
      003932                        893 ___str_1:
      003932 6C 65 6E 3D 30 78 25   894 	.ascii "len=0x%04x "
             30 34 78 20
      00393D 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
      00393E                        898 ___str_2:
      00393E 43 52 43 31 36 3D 30   899 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      00394A 0D                     900 	.db 0x0d
      00394B 0A                     901 	.db 0x0a
      00394C 00                     902 	.db 0x00
                                    903 	.area CSEG    (CODE)
                                    904 	.area CONST   (CODE)
      00394D                        905 ___str_3:
      00394D 50 41 52 54 49 41 4C   906 	.ascii "PARTIAL base=%p "
             20 62 61 73 65 3D 25
             70 20
      00395D 00                     907 	.db 0x00
                                    908 	.area CSEG    (CODE)
                                    909 	.area CONST   (CODE)
      00395E                        910 ___str_4:
      00395E 69 6E 74 65 72 72 75   911 	.ascii "interrupted"
             70 74 65 64
      003969 0A                     912 	.db 0x0a
      00396A 00                     913 	.db 0x00
                                    914 	.area CSEG    (CODE)
                                    915 	.area XINIT   (CODE)
                                    916 	.area CABS    (ABS,CODE)
