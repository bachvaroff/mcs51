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
      00002B                        286 _clocktime::
      00002B                        287 	.ds 4
      00002F                        288 _sendcounter::
      00002F                        289 	.ds 1
      000030                        290 _senddata::
      000030                        291 	.ds 2
                                    292 ;--------------------------------------------------------
                                    293 ; overlayable items in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 ;--------------------------------------------------------
                                    296 ; indirectly addressable internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area ISEG    (DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area IABS    (ABS,DATA)
                                    303 	.area IABS    (ABS,DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; bit data
                                    306 ;--------------------------------------------------------
                                    307 	.area BSEG    (BIT)
                                    308 ;--------------------------------------------------------
                                    309 ; paged external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area PSEG    (PAG,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XSEG    (XDATA)
      0094C8                        316 _clockupdate::
      0094C8                        317 	.ds 1
      0094C9                        318 _sending::
      0094C9                        319 	.ds 1
      0094CA                        320 _clock_ctmp_65536_30:
      0094CA                        321 	.ds 4
                                    322 ;--------------------------------------------------------
                                    323 ; absolute external ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XABS    (ABS,XDATA)
                                    326 ;--------------------------------------------------------
                                    327 ; external initialized ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area XISEG   (XDATA)
                                    330 	.area HOME    (CODE)
                                    331 	.area GSINIT0 (CODE)
                                    332 	.area GSINIT1 (CODE)
                                    333 	.area GSINIT2 (CODE)
                                    334 	.area GSINIT3 (CODE)
                                    335 	.area GSINIT4 (CODE)
                                    336 	.area GSINIT5 (CODE)
                                    337 	.area GSINIT  (CODE)
                                    338 	.area GSFINAL (CODE)
                                    339 	.area CSEG    (CODE)
                                    340 ;--------------------------------------------------------
                                    341 ; global & static initialisations
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 ;--------------------------------------------------------
                                    348 ; Home
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area HOME    (CODE)
                                    352 ;--------------------------------------------------------
                                    353 ; code
                                    354 ;--------------------------------------------------------
                                    355 	.area CSEG    (CODE)
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'init'
                                    358 ;------------------------------------------------------------
                                    359 ;	portme.c:18: void init(void)
                                    360 ;	-----------------------------------------
                                    361 ;	 function init
                                    362 ;	-----------------------------------------
      003465                        363 _init:
                           000007   364 	ar7 = 0x07
                           000006   365 	ar6 = 0x06
                           000005   366 	ar5 = 0x05
                           000004   367 	ar4 = 0x04
                           000003   368 	ar3 = 0x03
                           000002   369 	ar2 = 0x02
                           000001   370 	ar1 = 0x01
                           000000   371 	ar0 = 0x00
                                    372 ;	portme.c:21: TR0 = 0;
                                    373 ;	genAssign
                                    374 ;	assignBit
      003465 C2 8C            [12]  375 	clr	_TR0
                                    376 ;	portme.c:22: TH0 = (65536 - 1382) / 256;
                                    377 ;	genAssign
      003467 75 8C FA         [24]  378 	mov	_TH0,#0xfa
                                    379 ;	portme.c:23: TL0 = (65536 - 1382) % 256;
                                    380 ;	genAssign
      00346A 75 8A 9A         [24]  381 	mov	_TL0,#0x9a
                                    382 ;	portme.c:24: TMOD = 0x01;
                                    383 ;	genAssign
      00346D 75 89 01         [24]  384 	mov	_TMOD,#0x01
                                    385 ;	portme.c:25: IE = 0x82;
                                    386 ;	genAssign
      003470 75 A8 82         [24]  387 	mov	_IE,#0x82
                                    388 ;	portme.c:26: TR0 = 1; // Start timers
                                    389 ;	genAssign
                                    390 ;	assignBit
      003473 D2 8C            [12]  391 	setb	_TR0
                                    392 ;	Peephole 500	removed redundant label 00101$
                                    393 ;	portme.c:27: }
      003475 22               [24]  394 	ret
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'clockinc'
                                    397 ;------------------------------------------------------------
                                    398 ;	portme.c:29: void clockinc(void) __interrupt TF0_VECTOR __using 1
                                    399 ;	-----------------------------------------
                                    400 ;	 function clockinc
                                    401 ;	-----------------------------------------
      003476                        402 _clockinc:
                           00000F   403 	ar7 = 0x0f
                           00000E   404 	ar6 = 0x0e
                           00000D   405 	ar5 = 0x0d
                           00000C   406 	ar4 = 0x0c
                           00000B   407 	ar3 = 0x0b
                           00000A   408 	ar2 = 0x0a
                           000009   409 	ar1 = 0x09
                           000008   410 	ar0 = 0x08
      003476 C0 E0            [24]  411 	push	acc
      003478 C0 82            [24]  412 	push	dpl
      00347A C0 83            [24]  413 	push	dph
      00347C C0 D0            [24]  414 	push	psw
      00347E 75 D0 08         [24]  415 	mov	psw,#0x08
                                    416 ;	portme.c:31: clocktime++;
                                    417 ;	genAssign
      003481 AC 2B            [24]  418 	mov	r4,_clocktime
      003483 AD 2C            [24]  419 	mov	r5,(_clocktime + 1)
      003485 AE 2D            [24]  420 	mov	r6,(_clocktime + 2)
      003487 AF 2E            [24]  421 	mov	r7,(_clocktime + 3)
                                    422 ;	genPlus
                                    423 ;	genPlusIncr
      003489 74 01            [12]  424 	mov	a,#0x01
      00348B 2C               [12]  425 	add	a,r4
      00348C F5 2B            [12]  426 	mov	_clocktime,a
                                    427 ;	Peephole 181	changed mov to clr
      00348E E4               [12]  428 	clr	a
      00348F 3D               [12]  429 	addc	a,r5
      003490 F5 2C            [12]  430 	mov	(_clocktime + 1),a
                                    431 ;	Peephole 181	changed mov to clr
      003492 E4               [12]  432 	clr	a
      003493 3E               [12]  433 	addc	a,r6
      003494 F5 2D            [12]  434 	mov	(_clocktime + 2),a
                                    435 ;	Peephole 181	changed mov to clr
      003496 E4               [12]  436 	clr	a
      003497 3F               [12]  437 	addc	a,r7
      003498 F5 2E            [12]  438 	mov	(_clocktime + 3),a
                                    439 ;	portme.c:32: clockupdate = true;
                                    440 ;	genAssign
      00349A 90 94 C8         [24]  441 	mov	dptr,#_clockupdate
      00349D 74 01            [12]  442 	mov	a,#0x01
      00349F F0               [24]  443 	movx	@dptr,a
                                    444 ;	portme.c:33: TR0 = 0;
                                    445 ;	genAssign
                                    446 ;	assignBit
      0034A0 C2 8C            [12]  447 	clr	_TR0
                                    448 ;	portme.c:34: TH0 = (65536 - 1382) / 256;
                                    449 ;	genAssign
      0034A2 75 8C FA         [24]  450 	mov	_TH0,#0xfa
                                    451 ;	portme.c:35: TL0 = (65536 - 1382) % 256;
                                    452 ;	genAssign
      0034A5 75 8A 9A         [24]  453 	mov	_TL0,#0x9a
                                    454 ;	portme.c:36: TR0 = 1;
                                    455 ;	genAssign
                                    456 ;	assignBit
      0034A8 D2 8C            [12]  457 	setb	_TR0
                                    458 ;	Peephole 500	removed redundant label 00101$
                                    459 ;	portme.c:37: }
      0034AA D0 D0            [24]  460 	pop	psw
      0034AC D0 83            [24]  461 	pop	dph
      0034AE D0 82            [24]  462 	pop	dpl
      0034B0 D0 E0            [24]  463 	pop	acc
      0034B2 32               [24]  464 	reti
                                    465 ;	eliminated unneeded push/pop b
                                    466 ;------------------------------------------------------------
                                    467 ;Allocation info for local variables in function 'clock'
                                    468 ;------------------------------------------------------------
                                    469 ;ctmp                      Allocated with name '_clock_ctmp_65536_30'
                                    470 ;------------------------------------------------------------
                                    471 ;	portme.c:39: unsigned long int clock(void)
                                    472 ;	-----------------------------------------
                                    473 ;	 function clock
                                    474 ;	-----------------------------------------
      0034B3                        475 _clock:
                           000007   476 	ar7 = 0x07
                           000006   477 	ar6 = 0x06
                           000005   478 	ar5 = 0x05
                           000004   479 	ar4 = 0x04
                           000003   480 	ar3 = 0x03
                           000002   481 	ar2 = 0x02
                           000001   482 	ar1 = 0x01
                           000000   483 	ar0 = 0x00
                                    484 ;	portme.c:43: do
      0034B3                        485 00101$:
                                    486 ;	portme.c:45: clockupdate = false;
                                    487 ;	genAssign
      0034B3 90 94 C8         [24]  488 	mov	dptr,#_clockupdate
                                    489 ;	Peephole 181	changed mov to clr
      0034B6 E4               [12]  490 	clr	a
      0034B7 F0               [24]  491 	movx	@dptr,a
                                    492 ;	portme.c:46: ctmp = clocktime;
                                    493 ;	genAssign
      0034B8 90 94 CA         [24]  494 	mov	dptr,#_clock_ctmp_65536_30
      0034BB E5 2B            [12]  495 	mov	a,_clocktime
      0034BD F0               [24]  496 	movx	@dptr,a
      0034BE E5 2C            [12]  497 	mov	a,(_clocktime + 1)
      0034C0 A3               [24]  498 	inc	dptr
      0034C1 F0               [24]  499 	movx	@dptr,a
      0034C2 E5 2D            [12]  500 	mov	a,(_clocktime + 2)
      0034C4 A3               [24]  501 	inc	dptr
      0034C5 F0               [24]  502 	movx	@dptr,a
      0034C6 E5 2E            [12]  503 	mov	a,(_clocktime + 3)
      0034C8 A3               [24]  504 	inc	dptr
      0034C9 F0               [24]  505 	movx	@dptr,a
                                    506 ;	portme.c:47: } while (clockupdate);
                                    507 ;	genAssign
      0034CA 90 94 C8         [24]  508 	mov	dptr,#_clockupdate
      0034CD E0               [24]  509 	movx	a,@dptr
                                    510 ;	genIfx
                                    511 ;	genIfxJump
                                    512 ;	Peephole 108.b	removed ljmp by inverse jump logic
      0034CE 70 E3            [24]  513 	jnz	00101$
                                    514 ;	Peephole 500	removed redundant label 00114$
                                    515 ;	portme.c:49: return(ctmp);
                                    516 ;	genAssign
      0034D0 90 94 CA         [24]  517 	mov	dptr,#_clock_ctmp_65536_30
      0034D3 E0               [24]  518 	movx	a,@dptr
      0034D4 FC               [12]  519 	mov	r4,a
      0034D5 A3               [24]  520 	inc	dptr
      0034D6 E0               [24]  521 	movx	a,@dptr
      0034D7 FD               [12]  522 	mov	r5,a
      0034D8 A3               [24]  523 	inc	dptr
      0034D9 E0               [24]  524 	movx	a,@dptr
      0034DA FE               [12]  525 	mov	r6,a
      0034DB A3               [24]  526 	inc	dptr
      0034DC E0               [24]  527 	movx	a,@dptr
                                    528 ;	genRet
                                    529 ;	Peephole 301	mov r7,a removed
      0034DD 8C 82            [24]  530 	mov	dpl,r4
      0034DF 8D 83            [24]  531 	mov	dph,r5
      0034E1 8E F0            [24]  532 	mov	b,r6
                                    533 ;	Peephole 191	removed redundant mov
                                    534 ;	Peephole 500	removed redundant label 00104$
                                    535 ;	portme.c:50: }
      0034E3 22               [24]  536 	ret
                                    537 	.area CSEG    (CODE)
                                    538 	.area CONST   (CODE)
                                    539 	.area XINIT   (CODE)
                                    540 	.area CABS    (ABS,CODE)
