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
      002003 02 20 7C         [24]  373 	ljmp	_int0
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
      002006 02 20 88         [24]  395 	ljmp	_main
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
                                    412 ;	crc16.c:14: __endasm;
      002065 C0 E0            [24]  413 	push	acc
      002067 E5 82            [12]  414 	mov	a, dpl
      002069 12 00 3C         [24]  415 	lcall	0x003c
      00206C D0 E0            [24]  416 	pop	acc
      00206E 22               [24]  417 	ret
                                    418 ;	crc16.c:15: }
                                    419 ;	naked function: no epilogue.
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'getchar'
                                    422 ;------------------------------------------------------------
                                    423 ;	crc16.c:17: int getchar(void) __naked {
                                    424 ;	-----------------------------------------
                                    425 ;	 function getchar
                                    426 ;	-----------------------------------------
      00206F                        427 _getchar:
                                    428 ;	naked function: no prologue.
                                    429 ;	crc16.c:25: __endasm;
      00206F C0 E0            [24]  430 	push	acc
      002071 12 00 36         [24]  431 	lcall	0x0036
      002074 F5 82            [12]  432 	mov	dpl, a
      002076 75 83 00         [24]  433 	mov	dph, #0
      002079 D0 E0            [24]  434 	pop	acc
      00207B 22               [24]  435 	ret
                                    436 ;	crc16.c:26: }
                                    437 ;	naked function: no epilogue.
                                    438 ;------------------------------------------------------------
                                    439 ;Allocation info for local variables in function 'int0'
                                    440 ;------------------------------------------------------------
                                    441 ;	crc16.c:49: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    442 ;	-----------------------------------------
                                    443 ;	 function int0
                                    444 ;	-----------------------------------------
      00207C                        445 _int0:
                           00000F   446 	ar7 = 0x0f
                           00000E   447 	ar6 = 0x0e
                           00000D   448 	ar5 = 0x0d
                           00000C   449 	ar4 = 0x0c
                           00000B   450 	ar3 = 0x0b
                           00000A   451 	ar2 = 0x0a
                           000009   452 	ar1 = 0x09
                           000008   453 	ar0 = 0x08
      00207C C0 D0            [24]  454 	push	psw
      00207E 75 D0 08         [24]  455 	mov	psw,#0x08
                                    456 ;	crc16.c:50: intr = 1u;
      002081 78 11            [12]  457 	mov	r0,#_intr
      002083 76 01            [12]  458 	mov	@r0,#0x01
                                    459 ;	crc16.c:51: }
      002085 D0 D0            [24]  460 	pop	psw
      002087 32               [24]  461 	reti
                                    462 ;	eliminated unneeded push/pop dpl
                                    463 ;	eliminated unneeded push/pop dph
                                    464 ;	eliminated unneeded push/pop b
                                    465 ;	eliminated unneeded push/pop acc
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'main'
                                    468 ;------------------------------------------------------------
                                    469 ;	crc16.c:60: void main(void) {
                                    470 ;	-----------------------------------------
                                    471 ;	 function main
                                    472 ;	-----------------------------------------
      002088                        473 _main:
                           000007   474 	ar7 = 0x07
                           000006   475 	ar6 = 0x06
                           000005   476 	ar5 = 0x05
                           000004   477 	ar4 = 0x04
                           000003   478 	ar3 = 0x03
                           000002   479 	ar2 = 0x02
                           000001   480 	ar1 = 0x01
                           000000   481 	ar0 = 0x00
                                    482 ;	crc16.c:61: intr = 0u;
      002088 78 11            [12]  483 	mov	r0,#_intr
      00208A 76 00            [12]  484 	mov	@r0,#0x00
                                    485 ;	crc16.c:63: IT0 = 1;
                                    486 ;	assignBit
      00208C D2 88            [12]  487 	setb	_IT0
                                    488 ;	crc16.c:64: EX0 = 1;	
                                    489 ;	assignBit
      00208E D2 A8            [12]  490 	setb	_EX0
                                    491 ;	crc16.c:65: EA = 1;
                                    492 ;	assignBit
      002090 D2 AF            [12]  493 	setb	_EA
                                    494 ;	crc16.c:67: while (!intr) {
      002092                        495 00131$:
      002092 78 11            [12]  496 	mov	r0,#_intr
      002094 E6               [12]  497 	mov	a,@r0
      002095 60 03            [24]  498 	jz	00210$
      002097 02 22 F4         [24]  499 	ljmp	00133$
      00209A                        500 00210$:
                                    501 ;	crc16.c:68: base = (pxd_uint8_t)0x0u;
      00209A 78 12            [12]  502 	mov	r0,#_base
      00209C E4               [12]  503 	clr	a
      00209D F6               [12]  504 	mov	@r0,a
      00209E 08               [12]  505 	inc	r0
      00209F F6               [12]  506 	mov	@r0,a
                                    507 ;	crc16.c:69: len = TLEN;
      0020A0 78 16            [12]  508 	mov	r0,#_len
      0020A2 76 FF            [12]  509 	mov	@r0,#0xff
      0020A4 08               [12]  510 	inc	r0
      0020A5 76 FF            [12]  511 	mov	@r0,#0xff
                                    512 ;	crc16.c:70: printf("COMPLETE base=%p ", base);
      0020A7 78 12            [12]  513 	mov	r0,#_base
      0020A9 86 05            [24]  514 	mov	ar5,@r0
      0020AB 08               [12]  515 	inc	r0
      0020AC 86 06            [24]  516 	mov	ar6,@r0
      0020AE 7F 00            [12]  517 	mov	r7,#0x00
      0020B0 C0 05            [24]  518 	push	ar5
      0020B2 C0 06            [24]  519 	push	ar6
      0020B4 C0 07            [24]  520 	push	ar7
      0020B6 74 22            [12]  521 	mov	a,#___str_0
      0020B8 C0 E0            [24]  522 	push	acc
      0020BA 74 36            [12]  523 	mov	a,#(___str_0 >> 8)
      0020BC C0 E0            [24]  524 	push	acc
      0020BE 74 80            [12]  525 	mov	a,#0x80
      0020C0 C0 E0            [24]  526 	push	acc
      0020C2 12 23 3E         [24]  527 	lcall	_printf
      0020C5 E5 81            [12]  528 	mov	a,sp
      0020C7 24 FA            [12]  529 	add	a,#0xfa
      0020C9 F5 81            [12]  530 	mov	sp,a
                                    531 ;	crc16.c:71: printf("len=0x%04x ", len);
      0020CB 78 16            [12]  532 	mov	r0,#_len
      0020CD E6               [12]  533 	mov	a,@r0
      0020CE C0 E0            [24]  534 	push	acc
      0020D0 08               [12]  535 	inc	r0
      0020D1 E6               [12]  536 	mov	a,@r0
      0020D2 C0 E0            [24]  537 	push	acc
      0020D4 74 34            [12]  538 	mov	a,#___str_1
      0020D6 C0 E0            [24]  539 	push	acc
      0020D8 74 36            [12]  540 	mov	a,#(___str_1 >> 8)
      0020DA C0 E0            [24]  541 	push	acc
      0020DC 74 80            [12]  542 	mov	a,#0x80
      0020DE C0 E0            [24]  543 	push	acc
      0020E0 12 23 3E         [24]  544 	lcall	_printf
      0020E3 E5 81            [12]  545 	mov	a,sp
      0020E5 24 FB            [12]  546 	add	a,#0xfb
      0020E7 F5 81            [12]  547 	mov	sp,a
                                    548 ;	crc16.c:72: CCRCB_INIT(crc);
      0020E9 78 1A            [12]  549 	mov	r0,#_crc
      0020EB 76 FF            [12]  550 	mov	@r0,#0xff
      0020ED 08               [12]  551 	inc	r0
      0020EE 76 FF            [12]  552 	mov	@r0,#0xff
                                    553 ;	crc16.c:73: for (off = 0u; off < len; off++)
      0020F0 78 18            [12]  554 	mov	r0,#_off
      0020F2 E4               [12]  555 	clr	a
      0020F3 F6               [12]  556 	mov	@r0,a
      0020F4 08               [12]  557 	inc	r0
      0020F5 F6               [12]  558 	mov	@r0,a
      0020F6                        559 00137$:
      0020F6 78 18            [12]  560 	mov	r0,#_off
      0020F8 79 16            [12]  561 	mov	r1,#_len
      0020FA C3               [12]  562 	clr	c
      0020FB E6               [12]  563 	mov	a,@r0
      0020FC 97               [12]  564 	subb	a,@r1
      0020FD 08               [12]  565 	inc	r0
      0020FE E6               [12]  566 	mov	a,@r0
      0020FF 09               [12]  567 	inc	r1
      002100 97               [12]  568 	subb	a,@r1
      002101 50 6F            [24]  569 	jnc	00109$
                                    570 ;	crc16.c:74: CCRCB(crc, base[off], bitp);
      002103 78 1C            [12]  571 	mov	r0,#_bitp
      002105 76 80            [12]  572 	mov	@r0,#0x80
      002107                        573 00134$:
      002107 78 1B            [12]  574 	mov	r0,#(_crc + 1)
      002109 E6               [12]  575 	mov	a,@r0
      00210A 23               [12]  576 	rl	a
      00210B 54 01            [12]  577 	anl	a,#0x01
      00210D FE               [12]  578 	mov	r6,a
      00210E 7F 00            [12]  579 	mov	r7,#0x00
      002110 78 12            [12]  580 	mov	r0,#_base
      002112 79 18            [12]  581 	mov	r1,#_off
      002114 E7               [12]  582 	mov	a,@r1
      002115 26               [12]  583 	add	a,@r0
      002116 F5 82            [12]  584 	mov	dpl,a
      002118 09               [12]  585 	inc	r1
      002119 E7               [12]  586 	mov	a,@r1
      00211A 08               [12]  587 	inc	r0
      00211B 36               [12]  588 	addc	a,@r0
      00211C F5 83            [12]  589 	mov	dph,a
      00211E E0               [24]  590 	movx	a,@dptr
      00211F FD               [12]  591 	mov	r5,a
      002120 78 1C            [12]  592 	mov	r0,#_bitp
      002122 E6               [12]  593 	mov	a,@r0
      002123 52 05            [12]  594 	anl	ar5,a
      002125 ED               [12]  595 	mov	a,r5
      002126 B4 01 00         [24]  596 	cjne	a,#0x01,00212$
      002129                        597 00212$:
      002129 B3               [12]  598 	cpl	c
      00212A 92 00            [24]  599 	mov	b0,c
      00212C E4               [12]  600 	clr	a
      00212D 33               [12]  601 	rlc	a
      00212E FC               [12]  602 	mov	r4,a
      00212F 7D 00            [12]  603 	mov	r5,#0x00
      002131 62 06            [12]  604 	xrl	ar6,a
      002133 ED               [12]  605 	mov	a,r5
      002134 62 07            [12]  606 	xrl	ar7,a
      002136 EE               [12]  607 	mov	a,r6
      002137 4F               [12]  608 	orl	a,r7
      002138 60 12            [24]  609 	jz	00146$
      00213A 78 1A            [12]  610 	mov	r0,#_crc
      00213C E6               [12]  611 	mov	a,@r0
      00213D 25 E0            [12]  612 	add	a,acc
      00213F FE               [12]  613 	mov	r6,a
      002140 08               [12]  614 	inc	r0
      002141 E6               [12]  615 	mov	a,@r0
      002142 33               [12]  616 	rlc	a
      002143 FF               [12]  617 	mov	r7,a
      002144 63 06 21         [24]  618 	xrl	ar6,#0x21
      002147 63 07 10         [24]  619 	xrl	ar7,#0x10
      00214A 80 0A            [24]  620 	sjmp	00147$
      00214C                        621 00146$:
      00214C 78 1A            [12]  622 	mov	r0,#_crc
      00214E E6               [12]  623 	mov	a,@r0
      00214F 25 E0            [12]  624 	add	a,acc
      002151 FE               [12]  625 	mov	r6,a
      002152 08               [12]  626 	inc	r0
      002153 E6               [12]  627 	mov	a,@r0
      002154 33               [12]  628 	rlc	a
      002155 FF               [12]  629 	mov	r7,a
      002156                        630 00147$:
      002156 78 1A            [12]  631 	mov	r0,#_crc
      002158 A6 06            [24]  632 	mov	@r0,ar6
      00215A 08               [12]  633 	inc	r0
      00215B A6 07            [24]  634 	mov	@r0,ar7
      00215D 78 1C            [12]  635 	mov	r0,#_bitp
      00215F E6               [12]  636 	mov	a,@r0
      002160 C3               [12]  637 	clr	c
      002161 13               [12]  638 	rrc	a
      002162 F6               [12]  639 	mov	@r0,a
      002163 78 1C            [12]  640 	mov	r0,#_bitp
      002165 E6               [12]  641 	mov	a,@r0
      002166 70 9F            [24]  642 	jnz	00134$
                                    643 ;	crc16.c:73: for (off = 0u; off < len; off++)
      002168 78 18            [12]  644 	mov	r0,#_off
      00216A 06               [12]  645 	inc	@r0
      00216B B6 00 02         [24]  646 	cjne	@r0,#0x00,00215$
      00216E 08               [12]  647 	inc	r0
      00216F 06               [12]  648 	inc	@r0
      002170                        649 00215$:
                                    650 ;	crc16.c:75: CCRCB_FINISH(crc);
      002170 80 84            [24]  651 	sjmp	00137$
      002172                        652 00109$:
      002172 78 1A            [12]  653 	mov	r0,#_crc
      002174 86 06            [24]  654 	mov	ar6,@r0
      002176 08               [12]  655 	inc	r0
      002177 86 07            [24]  656 	mov	ar7,@r0
      002179 78 1A            [12]  657 	mov	r0,#_crc
      00217B A6 06            [24]  658 	mov	@r0,ar6
      00217D 08               [12]  659 	inc	r0
      00217E A6 07            [24]  660 	mov	@r0,ar7
                                    661 ;	crc16.c:76: printf("CRC16=0x%04x\r\n", crc);
      002180 78 1A            [12]  662 	mov	r0,#_crc
      002182 E6               [12]  663 	mov	a,@r0
      002183 C0 E0            [24]  664 	push	acc
      002185 08               [12]  665 	inc	r0
      002186 E6               [12]  666 	mov	a,@r0
      002187 C0 E0            [24]  667 	push	acc
      002189 74 40            [12]  668 	mov	a,#___str_2
      00218B C0 E0            [24]  669 	push	acc
      00218D 74 36            [12]  670 	mov	a,#(___str_2 >> 8)
      00218F C0 E0            [24]  671 	push	acc
      002191 74 80            [12]  672 	mov	a,#0x80
      002193 C0 E0            [24]  673 	push	acc
      002195 12 23 3E         [24]  674 	lcall	_printf
      002198 E5 81            [12]  675 	mov	a,sp
      00219A 24 FB            [12]  676 	add	a,#0xfb
      00219C F5 81            [12]  677 	mov	sp,a
                                    678 ;	crc16.c:78: len = PLEN;
      00219E 78 16            [12]  679 	mov	r0,#_len
      0021A0 76 00            [12]  680 	mov	@r0,#0x00
      0021A2 08               [12]  681 	inc	r0
      0021A3 76 20            [12]  682 	mov	@r0,#0x20
                                    683 ;	crc16.c:79: while (1) {
      0021A5                        684 00129$:
                                    685 ;	crc16.c:80: printf("PARTIAL base=%p ", base);
      0021A5 78 12            [12]  686 	mov	r0,#_base
      0021A7 86 05            [24]  687 	mov	ar5,@r0
      0021A9 08               [12]  688 	inc	r0
      0021AA 86 06            [24]  689 	mov	ar6,@r0
      0021AC 7F 00            [12]  690 	mov	r7,#0x00
      0021AE C0 05            [24]  691 	push	ar5
      0021B0 C0 06            [24]  692 	push	ar6
      0021B2 C0 07            [24]  693 	push	ar7
      0021B4 74 4F            [12]  694 	mov	a,#___str_3
      0021B6 C0 E0            [24]  695 	push	acc
      0021B8 74 36            [12]  696 	mov	a,#(___str_3 >> 8)
      0021BA C0 E0            [24]  697 	push	acc
      0021BC 74 80            [12]  698 	mov	a,#0x80
      0021BE C0 E0            [24]  699 	push	acc
      0021C0 12 23 3E         [24]  700 	lcall	_printf
      0021C3 E5 81            [12]  701 	mov	a,sp
      0021C5 24 FA            [12]  702 	add	a,#0xfa
      0021C7 F5 81            [12]  703 	mov	sp,a
                                    704 ;	crc16.c:81: printf("len=0x%04x ", len);
      0021C9 78 16            [12]  705 	mov	r0,#_len
      0021CB E6               [12]  706 	mov	a,@r0
      0021CC C0 E0            [24]  707 	push	acc
      0021CE 08               [12]  708 	inc	r0
      0021CF E6               [12]  709 	mov	a,@r0
      0021D0 C0 E0            [24]  710 	push	acc
      0021D2 74 34            [12]  711 	mov	a,#___str_1
      0021D4 C0 E0            [24]  712 	push	acc
      0021D6 74 36            [12]  713 	mov	a,#(___str_1 >> 8)
      0021D8 C0 E0            [24]  714 	push	acc
      0021DA 74 80            [12]  715 	mov	a,#0x80
      0021DC C0 E0            [24]  716 	push	acc
      0021DE 12 23 3E         [24]  717 	lcall	_printf
      0021E1 E5 81            [12]  718 	mov	a,sp
      0021E3 24 FB            [12]  719 	add	a,#0xfb
      0021E5 F5 81            [12]  720 	mov	sp,a
                                    721 ;	crc16.c:82: CCRCB_INIT(crc);
      0021E7 78 1A            [12]  722 	mov	r0,#_crc
      0021E9 76 FF            [12]  723 	mov	@r0,#0xff
      0021EB 08               [12]  724 	inc	r0
      0021EC 76 FF            [12]  725 	mov	@r0,#0xff
                                    726 ;	crc16.c:83: for (off = 0u; off < len; off++)
      0021EE 78 18            [12]  727 	mov	r0,#_off
      0021F0 E4               [12]  728 	clr	a
      0021F1 F6               [12]  729 	mov	@r0,a
      0021F2 08               [12]  730 	inc	r0
      0021F3 F6               [12]  731 	mov	@r0,a
      0021F4                        732 00142$:
      0021F4 78 18            [12]  733 	mov	r0,#_off
      0021F6 79 16            [12]  734 	mov	r1,#_len
      0021F8 C3               [12]  735 	clr	c
      0021F9 E6               [12]  736 	mov	a,@r0
      0021FA 97               [12]  737 	subb	a,@r1
      0021FB 08               [12]  738 	inc	r0
      0021FC E6               [12]  739 	mov	a,@r0
      0021FD 09               [12]  740 	inc	r1
      0021FE 97               [12]  741 	subb	a,@r1
      0021FF 50 6F            [24]  742 	jnc	00120$
                                    743 ;	crc16.c:84: CCRCB(crc, base[off], bitp);
      002201 78 1C            [12]  744 	mov	r0,#_bitp
      002203 76 80            [12]  745 	mov	@r0,#0x80
      002205                        746 00139$:
      002205 78 1B            [12]  747 	mov	r0,#(_crc + 1)
      002207 E6               [12]  748 	mov	a,@r0
      002208 23               [12]  749 	rl	a
      002209 54 01            [12]  750 	anl	a,#0x01
      00220B FE               [12]  751 	mov	r6,a
      00220C 7F 00            [12]  752 	mov	r7,#0x00
      00220E 78 12            [12]  753 	mov	r0,#_base
      002210 79 18            [12]  754 	mov	r1,#_off
      002212 E7               [12]  755 	mov	a,@r1
      002213 26               [12]  756 	add	a,@r0
      002214 F5 82            [12]  757 	mov	dpl,a
      002216 09               [12]  758 	inc	r1
      002217 E7               [12]  759 	mov	a,@r1
      002218 08               [12]  760 	inc	r0
      002219 36               [12]  761 	addc	a,@r0
      00221A F5 83            [12]  762 	mov	dph,a
      00221C E0               [24]  763 	movx	a,@dptr
      00221D FD               [12]  764 	mov	r5,a
      00221E 78 1C            [12]  765 	mov	r0,#_bitp
      002220 E6               [12]  766 	mov	a,@r0
      002221 52 05            [12]  767 	anl	ar5,a
      002223 ED               [12]  768 	mov	a,r5
      002224 B4 01 00         [24]  769 	cjne	a,#0x01,00217$
      002227                        770 00217$:
      002227 B3               [12]  771 	cpl	c
      002228 92 00            [24]  772 	mov	b0,c
      00222A E4               [12]  773 	clr	a
      00222B 33               [12]  774 	rlc	a
      00222C FC               [12]  775 	mov	r4,a
      00222D 7D 00            [12]  776 	mov	r5,#0x00
      00222F 62 06            [12]  777 	xrl	ar6,a
      002231 ED               [12]  778 	mov	a,r5
      002232 62 07            [12]  779 	xrl	ar7,a
      002234 EE               [12]  780 	mov	a,r6
      002235 4F               [12]  781 	orl	a,r7
      002236 60 12            [24]  782 	jz	00148$
      002238 78 1A            [12]  783 	mov	r0,#_crc
      00223A E6               [12]  784 	mov	a,@r0
      00223B 25 E0            [12]  785 	add	a,acc
      00223D FE               [12]  786 	mov	r6,a
      00223E 08               [12]  787 	inc	r0
      00223F E6               [12]  788 	mov	a,@r0
      002240 33               [12]  789 	rlc	a
      002241 FF               [12]  790 	mov	r7,a
      002242 63 06 21         [24]  791 	xrl	ar6,#0x21
      002245 63 07 10         [24]  792 	xrl	ar7,#0x10
      002248 80 0A            [24]  793 	sjmp	00149$
      00224A                        794 00148$:
      00224A 78 1A            [12]  795 	mov	r0,#_crc
      00224C E6               [12]  796 	mov	a,@r0
      00224D 25 E0            [12]  797 	add	a,acc
      00224F FE               [12]  798 	mov	r6,a
      002250 08               [12]  799 	inc	r0
      002251 E6               [12]  800 	mov	a,@r0
      002252 33               [12]  801 	rlc	a
      002253 FF               [12]  802 	mov	r7,a
      002254                        803 00149$:
      002254 78 1A            [12]  804 	mov	r0,#_crc
      002256 A6 06            [24]  805 	mov	@r0,ar6
      002258 08               [12]  806 	inc	r0
      002259 A6 07            [24]  807 	mov	@r0,ar7
      00225B 78 1C            [12]  808 	mov	r0,#_bitp
      00225D E6               [12]  809 	mov	a,@r0
      00225E C3               [12]  810 	clr	c
      00225F 13               [12]  811 	rrc	a
      002260 F6               [12]  812 	mov	@r0,a
      002261 78 1C            [12]  813 	mov	r0,#_bitp
      002263 E6               [12]  814 	mov	a,@r0
      002264 70 9F            [24]  815 	jnz	00139$
                                    816 ;	crc16.c:83: for (off = 0u; off < len; off++)
      002266 78 18            [12]  817 	mov	r0,#_off
      002268 06               [12]  818 	inc	@r0
      002269 B6 00 02         [24]  819 	cjne	@r0,#0x00,00220$
      00226C 08               [12]  820 	inc	r0
      00226D 06               [12]  821 	inc	@r0
      00226E                        822 00220$:
                                    823 ;	crc16.c:85: CCRCB_FINISH(crc);
      00226E 80 84            [24]  824 	sjmp	00142$
      002270                        825 00120$:
      002270 78 1A            [12]  826 	mov	r0,#_crc
      002272 86 06            [24]  827 	mov	ar6,@r0
      002274 08               [12]  828 	inc	r0
      002275 86 07            [24]  829 	mov	ar7,@r0
      002277 78 1A            [12]  830 	mov	r0,#_crc
      002279 A6 06            [24]  831 	mov	@r0,ar6
      00227B 08               [12]  832 	inc	r0
      00227C A6 07            [24]  833 	mov	@r0,ar7
                                    834 ;	crc16.c:86: printf("CRC16=0x%04x\r\n", crc);
      00227E 78 1A            [12]  835 	mov	r0,#_crc
      002280 E6               [12]  836 	mov	a,@r0
      002281 C0 E0            [24]  837 	push	acc
      002283 08               [12]  838 	inc	r0
      002284 E6               [12]  839 	mov	a,@r0
      002285 C0 E0            [24]  840 	push	acc
      002287 74 40            [12]  841 	mov	a,#___str_2
      002289 C0 E0            [24]  842 	push	acc
      00228B 74 36            [12]  843 	mov	a,#(___str_2 >> 8)
      00228D C0 E0            [24]  844 	push	acc
      00228F 74 80            [12]  845 	mov	a,#0x80
      002291 C0 E0            [24]  846 	push	acc
      002293 12 23 3E         [24]  847 	lcall	_printf
      002296 E5 81            [12]  848 	mov	a,sp
      002298 24 FB            [12]  849 	add	a,#0xfb
      00229A F5 81            [12]  850 	mov	sp,a
                                    851 ;	crc16.c:88: if (intr) {
      00229C 78 11            [12]  852 	mov	r0,#_intr
      00229E E6               [12]  853 	mov	a,@r0
      00229F 60 1A            [24]  854 	jz	00124$
                                    855 ;	crc16.c:89: EA = 0;
                                    856 ;	assignBit
      0022A1 C2 AF            [12]  857 	clr	_EA
                                    858 ;	crc16.c:90: printf("interrupted\n");
      0022A3 74 60            [12]  859 	mov	a,#___str_4
      0022A5 C0 E0            [24]  860 	push	acc
      0022A7 74 36            [12]  861 	mov	a,#(___str_4 >> 8)
      0022A9 C0 E0            [24]  862 	push	acc
      0022AB 74 80            [12]  863 	mov	a,#0x80
      0022AD C0 E0            [24]  864 	push	acc
      0022AF 12 23 3E         [24]  865 	lcall	_printf
      0022B2 15 81            [12]  866 	dec	sp
      0022B4 15 81            [12]  867 	dec	sp
      0022B6 15 81            [12]  868 	dec	sp
                                    869 ;	crc16.c:91: break;
      0022B8 02 20 92         [24]  870 	ljmp	00131$
      0022BB                        871 00124$:
                                    872 ;	crc16.c:94: t = base + (len >> 1);
      0022BB 78 16            [12]  873 	mov	r0,#_len
      0022BD 86 06            [24]  874 	mov	ar6,@r0
      0022BF 08               [12]  875 	inc	r0
      0022C0 E6               [12]  876 	mov	a,@r0
      0022C1 C3               [12]  877 	clr	c
      0022C2 13               [12]  878 	rrc	a
      0022C3 CE               [12]  879 	xch	a,r6
      0022C4 13               [12]  880 	rrc	a
      0022C5 CE               [12]  881 	xch	a,r6
      0022C6 FF               [12]  882 	mov	r7,a
      0022C7 78 12            [12]  883 	mov	r0,#_base
      0022C9 EE               [12]  884 	mov	a,r6
      0022CA 26               [12]  885 	add	a,@r0
      0022CB FE               [12]  886 	mov	r6,a
      0022CC EF               [12]  887 	mov	a,r7
      0022CD 08               [12]  888 	inc	r0
      0022CE 36               [12]  889 	addc	a,@r0
      0022CF FF               [12]  890 	mov	r7,a
      0022D0 78 14            [12]  891 	mov	r0,#_t
      0022D2 A6 06            [24]  892 	mov	@r0,ar6
      0022D4 08               [12]  893 	inc	r0
      0022D5 A6 07            [24]  894 	mov	@r0,ar7
                                    895 ;	crc16.c:95: if (t < base) break;
      0022D7 78 14            [12]  896 	mov	r0,#_t
      0022D9 79 12            [12]  897 	mov	r1,#_base
      0022DB C3               [12]  898 	clr	c
      0022DC E6               [12]  899 	mov	a,@r0
      0022DD 97               [12]  900 	subb	a,@r1
      0022DE 08               [12]  901 	inc	r0
      0022DF E6               [12]  902 	mov	a,@r0
      0022E0 09               [12]  903 	inc	r1
      0022E1 97               [12]  904 	subb	a,@r1
      0022E2 50 03            [24]  905 	jnc	00222$
      0022E4 02 20 92         [24]  906 	ljmp	00131$
      0022E7                        907 00222$:
                                    908 ;	crc16.c:96: else base = t;
      0022E7 78 14            [12]  909 	mov	r0,#_t
      0022E9 79 12            [12]  910 	mov	r1,#_base
      0022EB E6               [12]  911 	mov	a,@r0
      0022EC F7               [12]  912 	mov	@r1,a
      0022ED 08               [12]  913 	inc	r0
      0022EE 09               [12]  914 	inc	r1
      0022EF E6               [12]  915 	mov	a,@r0
      0022F0 F7               [12]  916 	mov	@r1,a
      0022F1 02 21 A5         [24]  917 	ljmp	00129$
      0022F4                        918 00133$:
                                    919 ;	crc16.c:100: PCON |= 2;
      0022F4 43 87 02         [24]  920 	orl	_PCON,#0x02
                                    921 ;	crc16.c:102: return;
                                    922 ;	crc16.c:103: }
      0022F7 22               [24]  923 	ret
                                    924 	.area CSEG    (CODE)
                                    925 	.area CONST   (CODE)
                                    926 	.area CONST   (CODE)
      003622                        927 ___str_0:
      003622 43 4F 4D 50 4C 45 54   928 	.ascii "COMPLETE base=%p "
             45 20 62 61 73 65 3D
             25 70 20
      003633 00                     929 	.db 0x00
                                    930 	.area CSEG    (CODE)
                                    931 	.area CONST   (CODE)
      003634                        932 ___str_1:
      003634 6C 65 6E 3D 30 78 25   933 	.ascii "len=0x%04x "
             30 34 78 20
      00363F 00                     934 	.db 0x00
                                    935 	.area CSEG    (CODE)
                                    936 	.area CONST   (CODE)
      003640                        937 ___str_2:
      003640 43 52 43 31 36 3D 30   938 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      00364C 0D                     939 	.db 0x0d
      00364D 0A                     940 	.db 0x0a
      00364E 00                     941 	.db 0x00
                                    942 	.area CSEG    (CODE)
                                    943 	.area CONST   (CODE)
      00364F                        944 ___str_3:
      00364F 50 41 52 54 49 41 4C   945 	.ascii "PARTIAL base=%p "
             20 62 61 73 65 3D 25
             70 20
      00365F 00                     946 	.db 0x00
                                    947 	.area CSEG    (CODE)
                                    948 	.area CONST   (CODE)
      003660                        949 ___str_4:
      003660 69 6E 74 65 72 72 75   950 	.ascii "interrupted"
             70 74 65 64
      00366B 0A                     951 	.db 0x0a
      00366C 00                     952 	.db 0x00
                                    953 	.area CSEG    (CODE)
                                    954 	.area XINIT   (CODE)
                                    955 	.area CABS    (ABS,CODE)
