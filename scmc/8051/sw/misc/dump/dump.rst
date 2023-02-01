                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module dump
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _getchar
                                     14 	.globl _putchar
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _FL
                                     22 	.globl _P
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _C_T2
                                     30 	.globl _CP_RL2
                                     31 	.globl _T2CON_7
                                     32 	.globl _T2CON_6
                                     33 	.globl _T2CON_5
                                     34 	.globl _T2CON_4
                                     35 	.globl _T2CON_3
                                     36 	.globl _T2CON_2
                                     37 	.globl _T2CON_1
                                     38 	.globl _T2CON_0
                                     39 	.globl _PT2
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ET2
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _T2EX
                                     85 	.globl _T2
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _B
                                    111 	.globl _A
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2MOD
                                    119 	.globl _T2CON
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _col
                                    139 	.globl _off
                                    140 	.globl _base
                                    141 	.globl _intr
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0	=	0x0080
                           000081   148 _SP	=	0x0081
                           000082   149 _DPL	=	0x0082
                           000083   150 _DPH	=	0x0083
                           000087   151 _PCON	=	0x0087
                           000088   152 _TCON	=	0x0088
                           000089   153 _TMOD	=	0x0089
                           00008A   154 _TL0	=	0x008a
                           00008B   155 _TL1	=	0x008b
                           00008C   156 _TH0	=	0x008c
                           00008D   157 _TH1	=	0x008d
                           000090   158 _P1	=	0x0090
                           000098   159 _SCON	=	0x0098
                           000099   160 _SBUF	=	0x0099
                           0000A0   161 _P2	=	0x00a0
                           0000A8   162 _IE	=	0x00a8
                           0000B0   163 _P3	=	0x00b0
                           0000B8   164 _IP	=	0x00b8
                           0000C8   165 _T2CON	=	0x00c8
                           0000C9   166 _T2MOD	=	0x00c9
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000E0   173 _A	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                                    175 ;--------------------------------------------------------
                                    176 ; special function bits
                                    177 ;--------------------------------------------------------
                                    178 	.area RSEG    (ABS,DATA)
      000000                        179 	.org 0x0000
                           000080   180 _P0_0	=	0x0080
                           000081   181 _P0_1	=	0x0081
                           000082   182 _P0_2	=	0x0082
                           000083   183 _P0_3	=	0x0083
                           000084   184 _P0_4	=	0x0084
                           000085   185 _P0_5	=	0x0085
                           000086   186 _P0_6	=	0x0086
                           000087   187 _P0_7	=	0x0087
                           000088   188 _IT0	=	0x0088
                           000089   189 _IE0	=	0x0089
                           00008A   190 _IT1	=	0x008a
                           00008B   191 _IE1	=	0x008b
                           00008C   192 _TR0	=	0x008c
                           00008D   193 _TF0	=	0x008d
                           00008E   194 _TR1	=	0x008e
                           00008F   195 _TF1	=	0x008f
                           000090   196 _P1_0	=	0x0090
                           000091   197 _P1_1	=	0x0091
                           000092   198 _P1_2	=	0x0092
                           000093   199 _P1_3	=	0x0093
                           000094   200 _P1_4	=	0x0094
                           000095   201 _P1_5	=	0x0095
                           000096   202 _P1_6	=	0x0096
                           000097   203 _P1_7	=	0x0097
                           000090   204 _T2	=	0x0090
                           000091   205 _T2EX	=	0x0091
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AD   227 _ET2	=	0x00ad
                           0000AF   228 _EA	=	0x00af
                           0000B0   229 _P3_0	=	0x00b0
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 _P3_4	=	0x00b4
                           0000B5   234 _P3_5	=	0x00b5
                           0000B6   235 _P3_6	=	0x00b6
                           0000B7   236 _P3_7	=	0x00b7
                           0000B0   237 _RXD	=	0x00b0
                           0000B1   238 _TXD	=	0x00b1
                           0000B2   239 _INT0	=	0x00b2
                           0000B3   240 _INT1	=	0x00b3
                           0000B4   241 _T0	=	0x00b4
                           0000B5   242 _T1	=	0x00b5
                           0000B6   243 _WR	=	0x00b6
                           0000B7   244 _RD	=	0x00b7
                           0000B8   245 _PX0	=	0x00b8
                           0000B9   246 _PT0	=	0x00b9
                           0000BA   247 _PX1	=	0x00ba
                           0000BB   248 _PT1	=	0x00bb
                           0000BC   249 _PS	=	0x00bc
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                           0000D0   267 _P	=	0x00d0
                           0000D1   268 _FL	=	0x00d1
                           0000D2   269 _OV	=	0x00d2
                           0000D3   270 _RS0	=	0x00d3
                           0000D4   271 _RS1	=	0x00d4
                           0000D5   272 _F0	=	0x00d5
                           0000D6   273 _AC	=	0x00d6
                           0000D7   274 _CY	=	0x00d7
                                    275 ;--------------------------------------------------------
                                    276 ; overlayable register banks
                                    277 ;--------------------------------------------------------
                                    278 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        279 	.ds 8
                                    280 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        281 	.ds 8
                                    282 ;--------------------------------------------------------
                                    283 ; internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area DSEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable items in internal ram 
                                    288 ;--------------------------------------------------------
                                    289 ;--------------------------------------------------------
                                    290 ; Stack segment in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	SSEG
      000010                        293 __start__stack:
      000010                        294 	.ds	1
                                    295 
                                    296 ;--------------------------------------------------------
                                    297 ; indirectly addressable internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area ISEG    (DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; absolute internal ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area IABS    (ABS,DATA)
                                    304 	.area IABS    (ABS,DATA)
                                    305 ;--------------------------------------------------------
                                    306 ; bit data
                                    307 ;--------------------------------------------------------
                                    308 	.area BSEG    (BIT)
                                    309 ;--------------------------------------------------------
                                    310 ; paged external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area PSEG    (PAG,XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XSEG    (XDATA)
      008000                        317 _intr::
      008000                        318 	.ds 1
      008001                        319 _base::
      008001                        320 	.ds 3
      008004                        321 _off::
      008004                        322 	.ds 2
      008006                        323 _col::
      008006                        324 	.ds 2
                                    325 ;--------------------------------------------------------
                                    326 ; absolute external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XABS    (ABS,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external initialized ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XISEG   (XDATA)
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT0 (CODE)
                                    335 	.area GSINIT1 (CODE)
                                    336 	.area GSINIT2 (CODE)
                                    337 	.area GSINIT3 (CODE)
                                    338 	.area GSINIT4 (CODE)
                                    339 	.area GSINIT5 (CODE)
                                    340 	.area GSINIT  (CODE)
                                    341 	.area GSFINAL (CODE)
                                    342 	.area CSEG    (CODE)
                                    343 ;--------------------------------------------------------
                                    344 ; interrupt vector 
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
      002000                        347 __interrupt_vect:
      002000 02 20 09         [24]  348 	ljmp	__sdcc_gsinit_startup
      002003 02 20 73         [24]  349 	ljmp	_int0
                                    350 ;--------------------------------------------------------
                                    351 ; global & static initialisations
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area GSINIT  (CODE)
                                    355 	.area GSFINAL (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.globl __sdcc_gsinit_startup
                                    358 	.globl __sdcc_program_startup
                                    359 	.globl __start__stack
                                    360 	.globl __mcs51_genXINIT
                                    361 	.globl __mcs51_genXRAMCLEAR
                                    362 	.globl __mcs51_genRAMCLEAR
                                    363 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  364 	ljmp	__sdcc_program_startup
                                    365 ;--------------------------------------------------------
                                    366 ; Home
                                    367 ;--------------------------------------------------------
                                    368 	.area HOME    (CODE)
                                    369 	.area HOME    (CODE)
      002006                        370 __sdcc_program_startup:
      002006 02 20 86         [24]  371 	ljmp	_main
                                    372 ;	return from main will return to caller
                                    373 ;--------------------------------------------------------
                                    374 ; code
                                    375 ;--------------------------------------------------------
                                    376 	.area CSEG    (CODE)
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'putchar'
                                    379 ;------------------------------------------------------------
                                    380 ;c                         Allocated to registers 
                                    381 ;------------------------------------------------------------
                                    382 ;	dump.c:6: int putchar(int c) __naked {
                                    383 ;	-----------------------------------------
                                    384 ;	 function putchar
                                    385 ;	-----------------------------------------
      002065                        386 _putchar:
                                    387 ;	naked function: no prologue.
                                    388 ;	dump.c:11: __endasm;
      002065 E5 82            [12]  389 	mov	a, dpl
      002067 02 00 30         [24]  390 	ljmp	0x0030
                                    391 ;	dump.c:12: }
                                    392 ;	naked function: no epilogue.
                                    393 ;------------------------------------------------------------
                                    394 ;Allocation info for local variables in function 'getchar'
                                    395 ;------------------------------------------------------------
                                    396 ;	dump.c:14: int getchar(void) __naked {
                                    397 ;	-----------------------------------------
                                    398 ;	 function getchar
                                    399 ;	-----------------------------------------
      00206A                        400 _getchar:
                                    401 ;	naked function: no prologue.
                                    402 ;	dump.c:20: __endasm;
      00206A 12 00 32         [24]  403 	lcall	0x0032
      00206D F5 82            [12]  404 	mov	dpl, a
      00206F 75 83 00         [24]  405 	mov	dph, #0
      002072 22               [24]  406 	ret
                                    407 ;	dump.c:21: }
                                    408 ;	naked function: no epilogue.
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'int0'
                                    411 ;------------------------------------------------------------
                                    412 ;	dump.c:52: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    413 ;	-----------------------------------------
                                    414 ;	 function int0
                                    415 ;	-----------------------------------------
      002073                        416 _int0:
                           00000F   417 	ar7 = 0x0f
                           00000E   418 	ar6 = 0x0e
                           00000D   419 	ar5 = 0x0d
                           00000C   420 	ar4 = 0x0c
                           00000B   421 	ar3 = 0x0b
                           00000A   422 	ar2 = 0x0a
                           000009   423 	ar1 = 0x09
                           000008   424 	ar0 = 0x08
      002073 C0 E0            [24]  425 	push	acc
      002075 C0 82            [24]  426 	push	dpl
      002077 C0 83            [24]  427 	push	dph
                                    428 ;	dump.c:53: intr = 1;
      002079 90 80 00         [24]  429 	mov	dptr,#_intr
      00207C 74 01            [12]  430 	mov	a,#0x01
      00207E F0               [24]  431 	movx	@dptr,a
                                    432 ;	dump.c:54: }
      00207F D0 83            [24]  433 	pop	dph
      002081 D0 82            [24]  434 	pop	dpl
      002083 D0 E0            [24]  435 	pop	acc
      002085 32               [24]  436 	reti
                                    437 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    438 ;	eliminated unneeded push/pop psw
                                    439 ;	eliminated unneeded push/pop b
                                    440 ;------------------------------------------------------------
                                    441 ;Allocation info for local variables in function 'main'
                                    442 ;------------------------------------------------------------
                                    443 ;__3932160001              Allocated to registers r5 r6 
                                    444 ;a                         Allocated to registers r4 r7 
                                    445 ;__3932160003              Allocated to registers 
                                    446 ;s                         Allocated to registers r5 r6 r7 
                                    447 ;__5242880005              Allocated to registers r6 r7 
                                    448 ;a                         Allocated to registers r4 r5 
                                    449 ;------------------------------------------------------------
                                    450 ;	dump.c:59: void main(void) {
                                    451 ;	-----------------------------------------
                                    452 ;	 function main
                                    453 ;	-----------------------------------------
      002086                        454 _main:
                           000007   455 	ar7 = 0x07
                           000006   456 	ar6 = 0x06
                           000005   457 	ar5 = 0x05
                           000004   458 	ar4 = 0x04
                           000003   459 	ar3 = 0x03
                           000002   460 	ar2 = 0x02
                           000001   461 	ar1 = 0x01
                           000000   462 	ar0 = 0x00
                                    463 ;	dump.c:60: intr = 0;
      002086 90 80 00         [24]  464 	mov	dptr,#_intr
      002089 E4               [12]  465 	clr	a
      00208A F0               [24]  466 	movx	@dptr,a
                                    467 ;	dump.c:62: IT0 = 1;
                                    468 ;	assignBit
      00208B D2 88            [12]  469 	setb	_IT0
                                    470 ;	dump.c:63: EX0 = 1;	
                                    471 ;	assignBit
      00208D D2 A8            [12]  472 	setb	_EX0
                                    473 ;	dump.c:64: EA = 1;
                                    474 ;	assignBit
      00208F D2 AF            [12]  475 	setb	_EA
                                    476 ;	dump.c:66: P1_7 = 0; /* activate IO address space from 0xe000 to 0xffff */
                                    477 ;	assignBit
      002091 C2 97            [12]  478 	clr	_P1_7
                                    479 ;	dump.c:68: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      002093 90 80 01         [24]  480 	mov	dptr,#_base
      002096 E4               [12]  481 	clr	a
      002097 F0               [24]  482 	movx	@dptr,a
      002098 A3               [24]  483 	inc	dptr
      002099 F0               [24]  484 	movx	@dptr,a
      00209A A3               [24]  485 	inc	dptr
      00209B F0               [24]  486 	movx	@dptr,a
      00209C                        487 00119$:
      00209C 90 80 00         [24]  488 	mov	dptr,#_intr
      00209F E0               [24]  489 	movx	a,@dptr
      0020A0 60 03            [24]  490 	jz	00160$
      0020A2 02 22 8D         [24]  491 	ljmp	00106$
      0020A5                        492 00160$:
                                    493 ;	dump.c:69: for (off = 0u; off < 0x400u; off += 0x20u) {
      0020A5 90 80 04         [24]  494 	mov	dptr,#_off
      0020A8 E4               [12]  495 	clr	a
      0020A9 F0               [24]  496 	movx	@dptr,a
      0020AA A3               [24]  497 	inc	dptr
      0020AB F0               [24]  498 	movx	@dptr,a
      0020AC                        499 00116$:
                                    500 ;	dump.c:70: print16x((unsigned int)base + off);
      0020AC 90 80 01         [24]  501 	mov	dptr,#_base
      0020AF E0               [24]  502 	movx	a,@dptr
      0020B0 FD               [12]  503 	mov	r5,a
      0020B1 A3               [24]  504 	inc	dptr
      0020B2 E0               [24]  505 	movx	a,@dptr
      0020B3 FE               [12]  506 	mov	r6,a
      0020B4 A3               [24]  507 	inc	dptr
      0020B5 E0               [24]  508 	movx	a,@dptr
      0020B6 90 80 04         [24]  509 	mov	dptr,#_off
      0020B9 E0               [24]  510 	movx	a,@dptr
      0020BA FC               [12]  511 	mov	r4,a
      0020BB A3               [24]  512 	inc	dptr
      0020BC E0               [24]  513 	movx	a,@dptr
      0020BD FF               [12]  514 	mov	r7,a
      0020BE EC               [12]  515 	mov	a,r4
      0020BF 2D               [12]  516 	add	a,r5
      0020C0 FD               [12]  517 	mov	r5,a
      0020C1 EF               [12]  518 	mov	a,r7
      0020C2 3E               [12]  519 	addc	a,r6
      0020C3 FE               [12]  520 	mov	r6,a
      0020C4 8D 04            [24]  521 	mov	ar4,r5
                                    522 ;	dump.c:36: putchar(digits[(a >> 12) & 0xf]);
      0020C6 EE               [12]  523 	mov	a,r6
      0020C7 FF               [12]  524 	mov	r7,a
      0020C8 C4               [12]  525 	swap	a
      0020C9 54 0F            [12]  526 	anl	a,#0x0f
      0020CB 30 E3 02         [24]  527 	jnb	acc.3,00161$
      0020CE 44 F0            [12]  528 	orl	a,#0xf0
      0020D0                        529 00161$:
      0020D0 FD               [12]  530 	mov	r5,a
      0020D1 33               [12]  531 	rlc	a
      0020D2 95 E0            [12]  532 	subb	a,acc
      0020D4 53 05 0F         [24]  533 	anl	ar5,#0x0f
      0020D7 7E 00            [12]  534 	mov	r6,#0x00
      0020D9 ED               [12]  535 	mov	a,r5
      0020DA 24 B3            [12]  536 	add	a,#_digits
      0020DC F5 82            [12]  537 	mov	dpl,a
      0020DE EE               [12]  538 	mov	a,r6
      0020DF 34 22            [12]  539 	addc	a,#(_digits >> 8)
      0020E1 F5 83            [12]  540 	mov	dph,a
      0020E3 E4               [12]  541 	clr	a
      0020E4 93               [24]  542 	movc	a,@a+dptr
      0020E5 FE               [12]  543 	mov	r6,a
      0020E6 7D 00            [12]  544 	mov	r5,#0x00
      0020E8 8E 82            [24]  545 	mov	dpl,r6
      0020EA 8D 83            [24]  546 	mov	dph,r5
      0020EC 12 20 65         [24]  547 	lcall	_putchar
                                    548 ;	dump.c:37: putchar(digits[(a >> 8) & 0xf]);
      0020EF 8F 06            [24]  549 	mov	ar6,r7
      0020F1 53 06 0F         [24]  550 	anl	ar6,#0x0f
      0020F4 7D 00            [12]  551 	mov	r5,#0x00
      0020F6 EE               [12]  552 	mov	a,r6
      0020F7 24 B3            [12]  553 	add	a,#_digits
      0020F9 F5 82            [12]  554 	mov	dpl,a
      0020FB ED               [12]  555 	mov	a,r5
      0020FC 34 22            [12]  556 	addc	a,#(_digits >> 8)
      0020FE F5 83            [12]  557 	mov	dph,a
      002100 E4               [12]  558 	clr	a
      002101 93               [24]  559 	movc	a,@a+dptr
      002102 FE               [12]  560 	mov	r6,a
      002103 7D 00            [12]  561 	mov	r5,#0x00
      002105 8E 82            [24]  562 	mov	dpl,r6
      002107 8D 83            [24]  563 	mov	dph,r5
      002109 12 20 65         [24]  564 	lcall	_putchar
                                    565 ;	dump.c:38: putchar(digits[(a >> 4) & 0xf]);
      00210C 8C 05            [24]  566 	mov	ar5,r4
      00210E EF               [12]  567 	mov	a,r7
      00210F C4               [12]  568 	swap	a
      002110 CD               [12]  569 	xch	a,r5
      002111 C4               [12]  570 	swap	a
      002112 54 0F            [12]  571 	anl	a,#0x0f
      002114 6D               [12]  572 	xrl	a,r5
      002115 CD               [12]  573 	xch	a,r5
      002116 54 0F            [12]  574 	anl	a,#0x0f
      002118 CD               [12]  575 	xch	a,r5
      002119 6D               [12]  576 	xrl	a,r5
      00211A CD               [12]  577 	xch	a,r5
      00211B 30 E3 02         [24]  578 	jnb	acc.3,00162$
      00211E 44 F0            [12]  579 	orl	a,#0xf0
      002120                        580 00162$:
      002120 53 05 0F         [24]  581 	anl	ar5,#0x0f
      002123 7E 00            [12]  582 	mov	r6,#0x00
      002125 ED               [12]  583 	mov	a,r5
      002126 24 B3            [12]  584 	add	a,#_digits
      002128 F5 82            [12]  585 	mov	dpl,a
      00212A EE               [12]  586 	mov	a,r6
      00212B 34 22            [12]  587 	addc	a,#(_digits >> 8)
      00212D F5 83            [12]  588 	mov	dph,a
      00212F E4               [12]  589 	clr	a
      002130 93               [24]  590 	movc	a,@a+dptr
      002131 FE               [12]  591 	mov	r6,a
      002132 7D 00            [12]  592 	mov	r5,#0x00
      002134 8E 82            [24]  593 	mov	dpl,r6
      002136 8D 83            [24]  594 	mov	dph,r5
      002138 12 20 65         [24]  595 	lcall	_putchar
                                    596 ;	dump.c:39: putchar(digits[a & 0xf]);
      00213B 53 04 0F         [24]  597 	anl	ar4,#0x0f
      00213E 7F 00            [12]  598 	mov	r7,#0x00
      002140 EC               [12]  599 	mov	a,r4
      002141 24 B3            [12]  600 	add	a,#_digits
      002143 F5 82            [12]  601 	mov	dpl,a
      002145 EF               [12]  602 	mov	a,r7
      002146 34 22            [12]  603 	addc	a,#(_digits >> 8)
      002148 F5 83            [12]  604 	mov	dph,a
      00214A E4               [12]  605 	clr	a
      00214B 93               [24]  606 	movc	a,@a+dptr
      00214C FF               [12]  607 	mov	r7,a
      00214D 7E 00            [12]  608 	mov	r6,#0x00
      00214F 8F 82            [24]  609 	mov	dpl,r7
      002151 8E 83            [24]  610 	mov	dph,r6
      002153 12 20 65         [24]  611 	lcall	_putchar
                                    612 ;	dump.c:71: printstr(" : ");
      002156 7D C3            [12]  613 	mov	r5,#___str_0
      002158 7E 22            [12]  614 	mov	r6,#(___str_0 >> 8)
      00215A 7F 80            [12]  615 	mov	r7,#0x80
                                    616 ;	dump.c:47: return;
      00215C                        617 00112$:
                                    618 ;	dump.c:45: for (; *s; s++) putchar(*s);
      00215C 8D 82            [24]  619 	mov	dpl,r5
      00215E 8E 83            [24]  620 	mov	dph,r6
      002160 8F F0            [24]  621 	mov	b,r7
      002162 12 22 93         [24]  622 	lcall	__gptrget
      002165 FC               [12]  623 	mov	r4,a
      002166 60 10            [24]  624 	jz	00109$
      002168 7B 00            [12]  625 	mov	r3,#0x00
      00216A 8C 82            [24]  626 	mov	dpl,r4
      00216C 8B 83            [24]  627 	mov	dph,r3
      00216E 12 20 65         [24]  628 	lcall	_putchar
      002171 0D               [12]  629 	inc	r5
                                    630 ;	dump.c:71: printstr(" : ");
      002172 BD 00 E7         [24]  631 	cjne	r5,#0x00,00112$
      002175 0E               [12]  632 	inc	r6
      002176 80 E4            [24]  633 	sjmp	00112$
      002178                        634 00109$:
                                    635 ;	dump.c:72: for (col = 0u; col < 0x20u; col++) {
      002178 90 80 06         [24]  636 	mov	dptr,#_col
      00217B E4               [12]  637 	clr	a
      00217C F0               [24]  638 	movx	@dptr,a
      00217D A3               [24]  639 	inc	dptr
      00217E F0               [24]  640 	movx	@dptr,a
      00217F                        641 00114$:
                                    642 ;	dump.c:73: print8x(base[off + col]);
      00217F 90 80 06         [24]  643 	mov	dptr,#_col
      002182 E0               [24]  644 	movx	a,@dptr
      002183 FE               [12]  645 	mov	r6,a
      002184 A3               [24]  646 	inc	dptr
      002185 E0               [24]  647 	movx	a,@dptr
      002186 FF               [12]  648 	mov	r7,a
      002187 90 80 04         [24]  649 	mov	dptr,#_off
      00218A E0               [24]  650 	movx	a,@dptr
      00218B FC               [12]  651 	mov	r4,a
      00218C A3               [24]  652 	inc	dptr
      00218D E0               [24]  653 	movx	a,@dptr
      00218E FD               [12]  654 	mov	r5,a
      00218F EE               [12]  655 	mov	a,r6
      002190 2C               [12]  656 	add	a,r4
      002191 FE               [12]  657 	mov	r6,a
      002192 EF               [12]  658 	mov	a,r7
      002193 3D               [12]  659 	addc	a,r5
      002194 FF               [12]  660 	mov	r7,a
      002195 90 80 01         [24]  661 	mov	dptr,#_base
      002198 E0               [24]  662 	movx	a,@dptr
      002199 FB               [12]  663 	mov	r3,a
      00219A A3               [24]  664 	inc	dptr
      00219B E0               [24]  665 	movx	a,@dptr
      00219C FC               [12]  666 	mov	r4,a
      00219D A3               [24]  667 	inc	dptr
      00219E E0               [24]  668 	movx	a,@dptr
      00219F FD               [12]  669 	mov	r5,a
      0021A0 EE               [12]  670 	mov	a,r6
      0021A1 2B               [12]  671 	add	a,r3
      0021A2 FE               [12]  672 	mov	r6,a
      0021A3 EF               [12]  673 	mov	a,r7
      0021A4 3C               [12]  674 	addc	a,r4
      0021A5 FF               [12]  675 	mov	r7,a
      0021A6 8D 02            [24]  676 	mov	ar2,r5
      0021A8 8E 82            [24]  677 	mov	dpl,r6
      0021AA 8F 83            [24]  678 	mov	dph,r7
      0021AC 8A F0            [24]  679 	mov	b,r2
      0021AE 12 22 93         [24]  680 	lcall	__gptrget
      0021B1 FE               [12]  681 	mov	r6,a
      0021B2 7F 00            [12]  682 	mov	r7,#0x00
      0021B4 8E 04            [24]  683 	mov	ar4,r6
                                    684 ;	dump.c:29: putchar(digits[(a >> 4) & 0xf]);
      0021B6 EF               [12]  685 	mov	a,r7
      0021B7 C4               [12]  686 	swap	a
      0021B8 CE               [12]  687 	xch	a,r6
      0021B9 C4               [12]  688 	swap	a
      0021BA 54 0F            [12]  689 	anl	a,#0x0f
      0021BC 6E               [12]  690 	xrl	a,r6
      0021BD CE               [12]  691 	xch	a,r6
      0021BE 54 0F            [12]  692 	anl	a,#0x0f
      0021C0 CE               [12]  693 	xch	a,r6
      0021C1 6E               [12]  694 	xrl	a,r6
      0021C2 CE               [12]  695 	xch	a,r6
      0021C3 30 E3 02         [24]  696 	jnb	acc.3,00165$
      0021C6 44 F0            [12]  697 	orl	a,#0xf0
      0021C8                        698 00165$:
      0021C8 53 06 0F         [24]  699 	anl	ar6,#0x0f
      0021CB 7F 00            [12]  700 	mov	r7,#0x00
      0021CD EE               [12]  701 	mov	a,r6
      0021CE 24 B3            [12]  702 	add	a,#_digits
      0021D0 F5 82            [12]  703 	mov	dpl,a
      0021D2 EF               [12]  704 	mov	a,r7
      0021D3 34 22            [12]  705 	addc	a,#(_digits >> 8)
      0021D5 F5 83            [12]  706 	mov	dph,a
      0021D7 E4               [12]  707 	clr	a
      0021D8 93               [24]  708 	movc	a,@a+dptr
      0021D9 FF               [12]  709 	mov	r7,a
      0021DA 7E 00            [12]  710 	mov	r6,#0x00
      0021DC 8F 82            [24]  711 	mov	dpl,r7
      0021DE 8E 83            [24]  712 	mov	dph,r6
      0021E0 12 20 65         [24]  713 	lcall	_putchar
                                    714 ;	dump.c:30: putchar(digits[a & 0xf]);
      0021E3 53 04 0F         [24]  715 	anl	ar4,#0x0f
      0021E6 7D 00            [12]  716 	mov	r5,#0x00
      0021E8 EC               [12]  717 	mov	a,r4
      0021E9 24 B3            [12]  718 	add	a,#_digits
      0021EB F5 82            [12]  719 	mov	dpl,a
      0021ED ED               [12]  720 	mov	a,r5
      0021EE 34 22            [12]  721 	addc	a,#(_digits >> 8)
      0021F0 F5 83            [12]  722 	mov	dph,a
      0021F2 E4               [12]  723 	clr	a
      0021F3 93               [24]  724 	movc	a,@a+dptr
      0021F4 FF               [12]  725 	mov	r7,a
      0021F5 7E 00            [12]  726 	mov	r6,#0x00
      0021F7 8F 82            [24]  727 	mov	dpl,r7
      0021F9 8E 83            [24]  728 	mov	dph,r6
      0021FB 12 20 65         [24]  729 	lcall	_putchar
                                    730 ;	dump.c:74: if (col == 0x1fu) {
      0021FE 90 80 06         [24]  731 	mov	dptr,#_col
      002201 E0               [24]  732 	movx	a,@dptr
      002202 FE               [12]  733 	mov	r6,a
      002203 A3               [24]  734 	inc	dptr
      002204 E0               [24]  735 	movx	a,@dptr
      002205 FF               [12]  736 	mov	r7,a
      002206 BE 1F 11         [24]  737 	cjne	r6,#0x1f,00102$
      002209 BF 00 0E         [24]  738 	cjne	r7,#0x00,00102$
                                    739 ;	dump.c:75: putchar('\r'); putchar('\n');
      00220C 90 00 0D         [24]  740 	mov	dptr,#0x000d
      00220F 12 20 65         [24]  741 	lcall	_putchar
      002212 90 00 0A         [24]  742 	mov	dptr,#0x000a
      002215 12 20 65         [24]  743 	lcall	_putchar
      002218 80 06            [24]  744 	sjmp	00115$
      00221A                        745 00102$:
                                    746 ;	dump.c:76: } else putchar(' ');
      00221A 90 00 20         [24]  747 	mov	dptr,#0x0020
      00221D 12 20 65         [24]  748 	lcall	_putchar
      002220                        749 00115$:
                                    750 ;	dump.c:72: for (col = 0u; col < 0x20u; col++) {
      002220 90 80 06         [24]  751 	mov	dptr,#_col
      002223 E0               [24]  752 	movx	a,@dptr
      002224 24 01            [12]  753 	add	a,#0x01
      002226 F0               [24]  754 	movx	@dptr,a
      002227 A3               [24]  755 	inc	dptr
      002228 E0               [24]  756 	movx	a,@dptr
      002229 34 00            [12]  757 	addc	a,#0x00
      00222B F0               [24]  758 	movx	@dptr,a
      00222C 90 80 06         [24]  759 	mov	dptr,#_col
      00222F E0               [24]  760 	movx	a,@dptr
      002230 FE               [12]  761 	mov	r6,a
      002231 A3               [24]  762 	inc	dptr
      002232 E0               [24]  763 	movx	a,@dptr
      002233 FF               [12]  764 	mov	r7,a
      002234 C3               [12]  765 	clr	c
      002235 EE               [12]  766 	mov	a,r6
      002236 94 20            [12]  767 	subb	a,#0x20
      002238 EF               [12]  768 	mov	a,r7
      002239 94 00            [12]  769 	subb	a,#0x00
      00223B 50 03            [24]  770 	jnc	00168$
      00223D 02 21 7F         [24]  771 	ljmp	00114$
      002240                        772 00168$:
                                    773 ;	dump.c:69: for (off = 0u; off < 0x400u; off += 0x20u) {
      002240 90 80 04         [24]  774 	mov	dptr,#_off
      002243 E0               [24]  775 	movx	a,@dptr
      002244 FE               [12]  776 	mov	r6,a
      002245 A3               [24]  777 	inc	dptr
      002246 E0               [24]  778 	movx	a,@dptr
      002247 FF               [12]  779 	mov	r7,a
      002248 90 80 04         [24]  780 	mov	dptr,#_off
      00224B 74 20            [12]  781 	mov	a,#0x20
      00224D 2E               [12]  782 	add	a,r6
      00224E F0               [24]  783 	movx	@dptr,a
      00224F E4               [12]  784 	clr	a
      002250 3F               [12]  785 	addc	a,r7
      002251 A3               [24]  786 	inc	dptr
      002252 F0               [24]  787 	movx	@dptr,a
      002253 90 80 04         [24]  788 	mov	dptr,#_off
      002256 E0               [24]  789 	movx	a,@dptr
      002257 FE               [12]  790 	mov	r6,a
      002258 A3               [24]  791 	inc	dptr
      002259 E0               [24]  792 	movx	a,@dptr
      00225A FF               [12]  793 	mov	r7,a
      00225B C3               [12]  794 	clr	c
      00225C 94 04            [12]  795 	subb	a,#0x04
      00225E 50 03            [24]  796 	jnc	00169$
      002260 02 20 AC         [24]  797 	ljmp	00116$
      002263                        798 00169$:
                                    799 ;	dump.c:79: getchar();
      002263 12 20 6A         [24]  800 	lcall	_getchar
                                    801 ;	dump.c:80: putchar('\r'); putchar('\n');
      002266 90 00 0D         [24]  802 	mov	dptr,#0x000d
      002269 12 20 65         [24]  803 	lcall	_putchar
      00226C 90 00 0A         [24]  804 	mov	dptr,#0x000a
      00226F 12 20 65         [24]  805 	lcall	_putchar
                                    806 ;	dump.c:68: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      002272 90 80 01         [24]  807 	mov	dptr,#_base
      002275 E0               [24]  808 	movx	a,@dptr
      002276 FD               [12]  809 	mov	r5,a
      002277 A3               [24]  810 	inc	dptr
      002278 E0               [24]  811 	movx	a,@dptr
      002279 FE               [12]  812 	mov	r6,a
      00227A A3               [24]  813 	inc	dptr
      00227B E0               [24]  814 	movx	a,@dptr
      00227C FF               [12]  815 	mov	r7,a
      00227D 90 80 01         [24]  816 	mov	dptr,#_base
      002280 ED               [12]  817 	mov	a,r5
      002281 F0               [24]  818 	movx	@dptr,a
      002282 74 04            [12]  819 	mov	a,#0x04
      002284 2E               [12]  820 	add	a,r6
      002285 A3               [24]  821 	inc	dptr
      002286 F0               [24]  822 	movx	@dptr,a
      002287 EF               [12]  823 	mov	a,r7
      002288 A3               [24]  824 	inc	dptr
      002289 F0               [24]  825 	movx	@dptr,a
      00228A 02 20 9C         [24]  826 	ljmp	00119$
      00228D                        827 00106$:
                                    828 ;	dump.c:83: P1_7 = 1; /* deactivate IO address space from 0xe000 to 0xffff */
                                    829 ;	assignBit
      00228D D2 97            [12]  830 	setb	_P1_7
                                    831 ;	dump.c:88: __endasm;
      00228F 02 00 00         [24]  832 	ljmp	0
                                    833 ;	dump.c:93: }
      002292 22               [24]  834 	ret
                                    835 	.area CSEG    (CODE)
                                    836 	.area CONST   (CODE)
      0022B3                        837 _digits:
      0022B3 30                     838 	.db #0x30	; 48	'0'
      0022B4 31                     839 	.db #0x31	; 49	'1'
      0022B5 32                     840 	.db #0x32	; 50	'2'
      0022B6 33                     841 	.db #0x33	; 51	'3'
      0022B7 34                     842 	.db #0x34	; 52	'4'
      0022B8 35                     843 	.db #0x35	; 53	'5'
      0022B9 36                     844 	.db #0x36	; 54	'6'
      0022BA 37                     845 	.db #0x37	; 55	'7'
      0022BB 38                     846 	.db #0x38	; 56	'8'
      0022BC 39                     847 	.db #0x39	; 57	'9'
      0022BD 61                     848 	.db #0x61	; 97	'a'
      0022BE 62                     849 	.db #0x62	; 98	'b'
      0022BF 63                     850 	.db #0x63	; 99	'c'
      0022C0 64                     851 	.db #0x64	; 100	'd'
      0022C1 65                     852 	.db #0x65	; 101	'e'
      0022C2 66                     853 	.db #0x66	; 102	'f'
                                    854 	.area CONST   (CODE)
      0022C3                        855 ___str_0:
      0022C3 20 3A 20               856 	.ascii " : "
      0022C6 00                     857 	.db 0x00
                                    858 	.area CSEG    (CODE)
                                    859 	.area XINIT   (CODE)
                                    860 	.area CABS    (ABS,CODE)
