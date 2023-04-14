                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module portme
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _clock
                                     12 	.globl _clockinc
                                     13 	.globl _init
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
                                    137 	.globl _sending
                                    138 	.globl _clockupdate
                                    139 	.globl _senddata
                                    140 	.globl _sendcounter
                                    141 	.globl _clocktime
                                    142 	.globl _putchar
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000C8   166 _T2CON	=	0x00c8
                           0000C9   167 _T2MOD	=	0x00c9
                           0000CA   168 _RCAP2L	=	0x00ca
                           0000CB   169 _RCAP2H	=	0x00cb
                           0000CC   170 _TL2	=	0x00cc
                           0000CD   171 _TH2	=	0x00cd
                           0000D0   172 _PSW	=	0x00d0
                           0000E0   173 _ACC	=	0x00e0
                           0000E0   174 _A	=	0x00e0
                           0000F0   175 _B	=	0x00f0
                                    176 ;--------------------------------------------------------
                                    177 ; special function bits
                                    178 ;--------------------------------------------------------
                                    179 	.area RSEG    (ABS,DATA)
      000000                        180 	.org 0x0000
                           000080   181 _P0_0	=	0x0080
                           000081   182 _P0_1	=	0x0081
                           000082   183 _P0_2	=	0x0082
                           000083   184 _P0_3	=	0x0083
                           000084   185 _P0_4	=	0x0084
                           000085   186 _P0_5	=	0x0085
                           000086   187 _P0_6	=	0x0086
                           000087   188 _P0_7	=	0x0087
                           000088   189 _IT0	=	0x0088
                           000089   190 _IE0	=	0x0089
                           00008A   191 _IT1	=	0x008a
                           00008B   192 _IE1	=	0x008b
                           00008C   193 _TR0	=	0x008c
                           00008D   194 _TF0	=	0x008d
                           00008E   195 _TR1	=	0x008e
                           00008F   196 _TF1	=	0x008f
                           000090   197 _P1_0	=	0x0090
                           000091   198 _P1_1	=	0x0091
                           000092   199 _P1_2	=	0x0092
                           000093   200 _P1_3	=	0x0093
                           000094   201 _P1_4	=	0x0094
                           000095   202 _P1_5	=	0x0095
                           000096   203 _P1_6	=	0x0096
                           000097   204 _P1_7	=	0x0097
                           000090   205 _T2	=	0x0090
                           000091   206 _T2EX	=	0x0091
                           000098   207 _RI	=	0x0098
                           000099   208 _TI	=	0x0099
                           00009A   209 _RB8	=	0x009a
                           00009B   210 _TB8	=	0x009b
                           00009C   211 _REN	=	0x009c
                           00009D   212 _SM2	=	0x009d
                           00009E   213 _SM1	=	0x009e
                           00009F   214 _SM0	=	0x009f
                           0000A0   215 _P2_0	=	0x00a0
                           0000A1   216 _P2_1	=	0x00a1
                           0000A2   217 _P2_2	=	0x00a2
                           0000A3   218 _P2_3	=	0x00a3
                           0000A4   219 _P2_4	=	0x00a4
                           0000A5   220 _P2_5	=	0x00a5
                           0000A6   221 _P2_6	=	0x00a6
                           0000A7   222 _P2_7	=	0x00a7
                           0000A8   223 _EX0	=	0x00a8
                           0000A9   224 _ET0	=	0x00a9
                           0000AA   225 _EX1	=	0x00aa
                           0000AB   226 _ET1	=	0x00ab
                           0000AC   227 _ES	=	0x00ac
                           0000AD   228 _ET2	=	0x00ad
                           0000AF   229 _EA	=	0x00af
                           0000B0   230 _P3_0	=	0x00b0
                           0000B1   231 _P3_1	=	0x00b1
                           0000B2   232 _P3_2	=	0x00b2
                           0000B3   233 _P3_3	=	0x00b3
                           0000B4   234 _P3_4	=	0x00b4
                           0000B5   235 _P3_5	=	0x00b5
                           0000B6   236 _P3_6	=	0x00b6
                           0000B7   237 _P3_7	=	0x00b7
                           0000B0   238 _RXD	=	0x00b0
                           0000B1   239 _TXD	=	0x00b1
                           0000B2   240 _INT0	=	0x00b2
                           0000B3   241 _INT1	=	0x00b3
                           0000B4   242 _T0	=	0x00b4
                           0000B5   243 _T1	=	0x00b5
                           0000B6   244 _WR	=	0x00b6
                           0000B7   245 _RD	=	0x00b7
                           0000B8   246 _PX0	=	0x00b8
                           0000B9   247 _PT0	=	0x00b9
                           0000BA   248 _PX1	=	0x00ba
                           0000BB   249 _PT1	=	0x00bb
                           0000BC   250 _PS	=	0x00bc
                           0000BD   251 _PT2	=	0x00bd
                           0000C8   252 _T2CON_0	=	0x00c8
                           0000C9   253 _T2CON_1	=	0x00c9
                           0000CA   254 _T2CON_2	=	0x00ca
                           0000CB   255 _T2CON_3	=	0x00cb
                           0000CC   256 _T2CON_4	=	0x00cc
                           0000CD   257 _T2CON_5	=	0x00cd
                           0000CE   258 _T2CON_6	=	0x00ce
                           0000CF   259 _T2CON_7	=	0x00cf
                           0000C8   260 _CP_RL2	=	0x00c8
                           0000C9   261 _C_T2	=	0x00c9
                           0000CA   262 _TR2	=	0x00ca
                           0000CB   263 _EXEN2	=	0x00cb
                           0000CC   264 _TCLK	=	0x00cc
                           0000CD   265 _RCLK	=	0x00cd
                           0000CE   266 _EXF2	=	0x00ce
                           0000CF   267 _TF2	=	0x00cf
                           0000D0   268 _P	=	0x00d0
                           0000D1   269 _FL	=	0x00d1
                           0000D2   270 _OV	=	0x00d2
                           0000D3   271 _RS0	=	0x00d3
                           0000D4   272 _RS1	=	0x00d4
                           0000D5   273 _F0	=	0x00d5
                           0000D6   274 _AC	=	0x00d6
                           0000D7   275 _CY	=	0x00d7
                                    276 ;--------------------------------------------------------
                                    277 ; overlayable register banks
                                    278 ;--------------------------------------------------------
                                    279 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        280 	.ds 8
                                    281 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        282 	.ds 8
                                    283 ;--------------------------------------------------------
                                    284 ; internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area DSEG    (DATA)
      00002B                        287 _clocktime::
      00002B                        288 	.ds 4
      00002F                        289 _sendcounter::
      00002F                        290 	.ds 1
      000030                        291 _senddata::
      000030                        292 	.ds 2
                                    293 ;--------------------------------------------------------
                                    294 ; overlayable items in internal ram 
                                    295 ;--------------------------------------------------------
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
      0094C8                        317 _clockupdate::
      0094C8                        318 	.ds 1
      0094C9                        319 _sending::
      0094C9                        320 	.ds 1
      0094CA                        321 _clock_ctmp_65536_22:
      0094CA                        322 	.ds 4
                                    323 ;--------------------------------------------------------
                                    324 ; absolute external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area XABS    (ABS,XDATA)
                                    327 ;--------------------------------------------------------
                                    328 ; external initialized ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XISEG   (XDATA)
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT0 (CODE)
                                    333 	.area GSINIT1 (CODE)
                                    334 	.area GSINIT2 (CODE)
                                    335 	.area GSINIT3 (CODE)
                                    336 	.area GSINIT4 (CODE)
                                    337 	.area GSINIT5 (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.area GSFINAL (CODE)
                                    340 	.area CSEG    (CODE)
                                    341 ;--------------------------------------------------------
                                    342 ; global & static initialisations
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT  (CODE)
                                    346 	.area GSFINAL (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 ;--------------------------------------------------------
                                    349 ; Home
                                    350 ;--------------------------------------------------------
                                    351 	.area HOME    (CODE)
                                    352 	.area HOME    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; code
                                    355 ;--------------------------------------------------------
                                    356 	.area CSEG    (CODE)
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'putchar'
                                    359 ;------------------------------------------------------------
                                    360 ;c                         Allocated with name '_putchar_c_65536_15'
                                    361 ;------------------------------------------------------------
                                    362 ;	portme.c:10: int putchar(int c) __naked {
                                    363 ;	-----------------------------------------
                                    364 ;	 function putchar
                                    365 ;	-----------------------------------------
      003465                        366 _putchar:
                                    367 ;	naked function: no prologue.
                                    368 ;	portme.c:15: __endasm;
                                    369 ;	genInline
      003465 E5 82            [12]  370 	mov	a, dpl
      003467 02 00 30         [24]  371 	ljmp	0x0030
                                    372 ;	Peephole 500	removed redundant label 00101$
                                    373 ;	portme.c:16: }
                                    374 ;	naked function: no epilogue.
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function 'init'
                                    377 ;------------------------------------------------------------
                                    378 ;	portme.c:25: void init(void)
                                    379 ;	-----------------------------------------
                                    380 ;	 function init
                                    381 ;	-----------------------------------------
      00346A                        382 _init:
                           000007   383 	ar7 = 0x07
                           000006   384 	ar6 = 0x06
                           000005   385 	ar5 = 0x05
                           000004   386 	ar4 = 0x04
                           000003   387 	ar3 = 0x03
                           000002   388 	ar2 = 0x02
                           000001   389 	ar1 = 0x01
                           000000   390 	ar0 = 0x00
                                    391 ;	portme.c:28: TH0 = (65536 - 1382) / 256;
                                    392 ;	genAssign
      00346A 75 8C FA         [24]  393 	mov	_TH0,#0xfa
                                    394 ;	portme.c:29: TL0 = (65536 - 1382) % 256;
                                    395 ;	genAssign
      00346D 75 8A 9A         [24]  396 	mov	_TL0,#0x9a
                                    397 ;	portme.c:30: TMOD = 0x01;
                                    398 ;	genAssign
      003470 75 89 01         [24]  399 	mov	_TMOD,#0x01
                                    400 ;	portme.c:31: IE = 0x82;
                                    401 ;	genAssign
      003473 75 A8 82         [24]  402 	mov	_IE,#0x82
                                    403 ;	portme.c:32: TCON |= 0x50; // Start timers
                                    404 ;	genOr
      003476 43 88 50         [24]  405 	orl	_TCON,#0x50
                                    406 ;	Peephole 500	removed redundant label 00101$
                                    407 ;	portme.c:33: }
      003479 22               [24]  408 	ret
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'clockinc'
                                    411 ;------------------------------------------------------------
                                    412 ;	portme.c:35: void clockinc(void) __interrupt TF0_VECTOR __using 1
                                    413 ;	-----------------------------------------
                                    414 ;	 function clockinc
                                    415 ;	-----------------------------------------
      00347A                        416 _clockinc:
                           00000F   417 	ar7 = 0x0f
                           00000E   418 	ar6 = 0x0e
                           00000D   419 	ar5 = 0x0d
                           00000C   420 	ar4 = 0x0c
                           00000B   421 	ar3 = 0x0b
                           00000A   422 	ar2 = 0x0a
                           000009   423 	ar1 = 0x09
                           000008   424 	ar0 = 0x08
      00347A C0 E0            [24]  425 	push	acc
      00347C C0 82            [24]  426 	push	dpl
      00347E C0 83            [24]  427 	push	dph
      003480 C0 D0            [24]  428 	push	psw
      003482 75 D0 08         [24]  429 	mov	psw,#0x08
                                    430 ;	portme.c:37: TH0 = (65536 - 1382) / 256;
                                    431 ;	genAssign
      003485 75 8C FA         [24]  432 	mov	_TH0,#0xfa
                                    433 ;	portme.c:38: TL0 = (65536 - 1382) % 256;
                                    434 ;	genAssign
      003488 75 8A 9A         [24]  435 	mov	_TL0,#0x9a
                                    436 ;	portme.c:39: clocktime++;
                                    437 ;	genAssign
      00348B AC 2B            [24]  438 	mov	r4,_clocktime
      00348D AD 2C            [24]  439 	mov	r5,(_clocktime + 1)
      00348F AE 2D            [24]  440 	mov	r6,(_clocktime + 2)
      003491 AF 2E            [24]  441 	mov	r7,(_clocktime + 3)
                                    442 ;	genPlus
                                    443 ;	genPlusIncr
      003493 74 01            [12]  444 	mov	a,#0x01
      003495 2C               [12]  445 	add	a,r4
      003496 F5 2B            [12]  446 	mov	_clocktime,a
                                    447 ;	Peephole 181	changed mov to clr
      003498 E4               [12]  448 	clr	a
      003499 3D               [12]  449 	addc	a,r5
      00349A F5 2C            [12]  450 	mov	(_clocktime + 1),a
                                    451 ;	Peephole 181	changed mov to clr
      00349C E4               [12]  452 	clr	a
      00349D 3E               [12]  453 	addc	a,r6
      00349E F5 2D            [12]  454 	mov	(_clocktime + 2),a
                                    455 ;	Peephole 181	changed mov to clr
      0034A0 E4               [12]  456 	clr	a
      0034A1 3F               [12]  457 	addc	a,r7
      0034A2 F5 2E            [12]  458 	mov	(_clocktime + 3),a
                                    459 ;	portme.c:40: clockupdate = true;
                                    460 ;	genAssign
      0034A4 90 94 C8         [24]  461 	mov	dptr,#_clockupdate
      0034A7 74 01            [12]  462 	mov	a,#0x01
      0034A9 F0               [24]  463 	movx	@dptr,a
                                    464 ;	Peephole 500	removed redundant label 00101$
                                    465 ;	portme.c:41: }
      0034AA D0 D0            [24]  466 	pop	psw
      0034AC D0 83            [24]  467 	pop	dph
      0034AE D0 82            [24]  468 	pop	dpl
      0034B0 D0 E0            [24]  469 	pop	acc
      0034B2 32               [24]  470 	reti
                                    471 ;	eliminated unneeded push/pop b
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'clock'
                                    474 ;------------------------------------------------------------
                                    475 ;ctmp                      Allocated with name '_clock_ctmp_65536_22'
                                    476 ;------------------------------------------------------------
                                    477 ;	portme.c:43: unsigned long int clock(void)
                                    478 ;	-----------------------------------------
                                    479 ;	 function clock
                                    480 ;	-----------------------------------------
      0034B3                        481 _clock:
                           000007   482 	ar7 = 0x07
                           000006   483 	ar6 = 0x06
                           000005   484 	ar5 = 0x05
                           000004   485 	ar4 = 0x04
                           000003   486 	ar3 = 0x03
                           000002   487 	ar2 = 0x02
                           000001   488 	ar1 = 0x01
                           000000   489 	ar0 = 0x00
                                    490 ;	portme.c:47: do
      0034B3                        491 00101$:
                                    492 ;	portme.c:49: clockupdate = false;
                                    493 ;	genAssign
      0034B3 90 94 C8         [24]  494 	mov	dptr,#_clockupdate
                                    495 ;	Peephole 181	changed mov to clr
      0034B6 E4               [12]  496 	clr	a
      0034B7 F0               [24]  497 	movx	@dptr,a
                                    498 ;	portme.c:50: ctmp = clocktime;
                                    499 ;	genAssign
      0034B8 90 94 CA         [24]  500 	mov	dptr,#_clock_ctmp_65536_22
      0034BB E5 2B            [12]  501 	mov	a,_clocktime
      0034BD F0               [24]  502 	movx	@dptr,a
      0034BE E5 2C            [12]  503 	mov	a,(_clocktime + 1)
      0034C0 A3               [24]  504 	inc	dptr
      0034C1 F0               [24]  505 	movx	@dptr,a
      0034C2 E5 2D            [12]  506 	mov	a,(_clocktime + 2)
      0034C4 A3               [24]  507 	inc	dptr
      0034C5 F0               [24]  508 	movx	@dptr,a
      0034C6 E5 2E            [12]  509 	mov	a,(_clocktime + 3)
      0034C8 A3               [24]  510 	inc	dptr
      0034C9 F0               [24]  511 	movx	@dptr,a
                                    512 ;	portme.c:51: } while (clockupdate);
                                    513 ;	genAssign
      0034CA 90 94 C8         [24]  514 	mov	dptr,#_clockupdate
      0034CD E0               [24]  515 	movx	a,@dptr
                                    516 ;	genIfx
                                    517 ;	genIfxJump
                                    518 ;	Peephole 108.b	removed ljmp by inverse jump logic
      0034CE 70 E3            [24]  519 	jnz	00101$
                                    520 ;	Peephole 500	removed redundant label 00114$
                                    521 ;	portme.c:53: return(ctmp);
                                    522 ;	genAssign
      0034D0 90 94 CA         [24]  523 	mov	dptr,#_clock_ctmp_65536_22
      0034D3 E0               [24]  524 	movx	a,@dptr
      0034D4 FC               [12]  525 	mov	r4,a
      0034D5 A3               [24]  526 	inc	dptr
      0034D6 E0               [24]  527 	movx	a,@dptr
      0034D7 FD               [12]  528 	mov	r5,a
      0034D8 A3               [24]  529 	inc	dptr
      0034D9 E0               [24]  530 	movx	a,@dptr
      0034DA FE               [12]  531 	mov	r6,a
      0034DB A3               [24]  532 	inc	dptr
      0034DC E0               [24]  533 	movx	a,@dptr
                                    534 ;	genRet
                                    535 ;	Peephole 301	mov r7,a removed
      0034DD 8C 82            [24]  536 	mov	dpl,r4
      0034DF 8D 83            [24]  537 	mov	dph,r5
      0034E1 8E F0            [24]  538 	mov	b,r6
                                    539 ;	Peephole 191	removed redundant mov
                                    540 ;	Peephole 500	removed redundant label 00104$
                                    541 ;	portme.c:54: }
      0034E3 22               [24]  542 	ret
                                    543 	.area CSEG    (CODE)
                                    544 	.area CONST   (CODE)
                                    545 	.area XINIT   (CODE)
                                    546 	.area CABS    (ABS,CODE)
