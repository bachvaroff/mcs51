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
                                    368 ;	portme.c:17: __endasm;
                                    369 ;	genInline
      003465 C0 E0            [24]  370 	push	acc
      003467 E5 82            [12]  371 	mov	a, dpl
      003469 12 00 3C         [24]  372 	lcall	0x003c
      00346C D0 E0            [24]  373 	pop	acc
                                    374 ;	Peephole 500	removed redundant label 00101$
                                    375 ;	portme.c:18: }
                                    376 ;	naked function: no epilogue.
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'init'
                                    379 ;------------------------------------------------------------
                                    380 ;	portme.c:27: void init(void)
                                    381 ;	-----------------------------------------
                                    382 ;	 function init
                                    383 ;	-----------------------------------------
      00346E                        384 _init:
                           000007   385 	ar7 = 0x07
                           000006   386 	ar6 = 0x06
                           000005   387 	ar5 = 0x05
                           000004   388 	ar4 = 0x04
                           000003   389 	ar3 = 0x03
                           000002   390 	ar2 = 0x02
                           000001   391 	ar1 = 0x01
                           000000   392 	ar0 = 0x00
                                    393 ;	portme.c:30: TR0 = 0;
                                    394 ;	genAssign
                                    395 ;	assignBit
      00346E C2 8C            [12]  396 	clr	_TR0
                                    397 ;	portme.c:31: TH0 = (65536 - 1382) / 256;
                                    398 ;	genAssign
      003470 75 8C FA         [24]  399 	mov	_TH0,#0xfa
                                    400 ;	portme.c:32: TL0 = (65536 - 1382) % 256;
                                    401 ;	genAssign
      003473 75 8A 9A         [24]  402 	mov	_TL0,#0x9a
                                    403 ;	portme.c:33: TMOD = 0x01;
                                    404 ;	genAssign
      003476 75 89 01         [24]  405 	mov	_TMOD,#0x01
                                    406 ;	portme.c:34: IE = 0x82;
                                    407 ;	genAssign
      003479 75 A8 82         [24]  408 	mov	_IE,#0x82
                                    409 ;	portme.c:35: TR0 = 1; // Start timers
                                    410 ;	genAssign
                                    411 ;	assignBit
      00347C D2 8C            [12]  412 	setb	_TR0
                                    413 ;	Peephole 500	removed redundant label 00101$
                                    414 ;	portme.c:36: }
      00347E 22               [24]  415 	ret
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'clockinc'
                                    418 ;------------------------------------------------------------
                                    419 ;	portme.c:38: void clockinc(void) __interrupt TF0_VECTOR __using 1
                                    420 ;	-----------------------------------------
                                    421 ;	 function clockinc
                                    422 ;	-----------------------------------------
      00347F                        423 _clockinc:
                           00000F   424 	ar7 = 0x0f
                           00000E   425 	ar6 = 0x0e
                           00000D   426 	ar5 = 0x0d
                           00000C   427 	ar4 = 0x0c
                           00000B   428 	ar3 = 0x0b
                           00000A   429 	ar2 = 0x0a
                           000009   430 	ar1 = 0x09
                           000008   431 	ar0 = 0x08
      00347F C0 E0            [24]  432 	push	acc
      003481 C0 82            [24]  433 	push	dpl
      003483 C0 83            [24]  434 	push	dph
      003485 C0 D0            [24]  435 	push	psw
      003487 75 D0 08         [24]  436 	mov	psw,#0x08
                                    437 ;	portme.c:40: clocktime++;
                                    438 ;	genAssign
      00348A AC 2B            [24]  439 	mov	r4,_clocktime
      00348C AD 2C            [24]  440 	mov	r5,(_clocktime + 1)
      00348E AE 2D            [24]  441 	mov	r6,(_clocktime + 2)
      003490 AF 2E            [24]  442 	mov	r7,(_clocktime + 3)
                                    443 ;	genPlus
                                    444 ;	genPlusIncr
      003492 74 01            [12]  445 	mov	a,#0x01
      003494 2C               [12]  446 	add	a,r4
      003495 F5 2B            [12]  447 	mov	_clocktime,a
                                    448 ;	Peephole 181	changed mov to clr
      003497 E4               [12]  449 	clr	a
      003498 3D               [12]  450 	addc	a,r5
      003499 F5 2C            [12]  451 	mov	(_clocktime + 1),a
                                    452 ;	Peephole 181	changed mov to clr
      00349B E4               [12]  453 	clr	a
      00349C 3E               [12]  454 	addc	a,r6
      00349D F5 2D            [12]  455 	mov	(_clocktime + 2),a
                                    456 ;	Peephole 181	changed mov to clr
      00349F E4               [12]  457 	clr	a
      0034A0 3F               [12]  458 	addc	a,r7
      0034A1 F5 2E            [12]  459 	mov	(_clocktime + 3),a
                                    460 ;	portme.c:41: clockupdate = true;
                                    461 ;	genAssign
      0034A3 90 94 C8         [24]  462 	mov	dptr,#_clockupdate
      0034A6 74 01            [12]  463 	mov	a,#0x01
      0034A8 F0               [24]  464 	movx	@dptr,a
                                    465 ;	portme.c:42: TR0 = 0;
                                    466 ;	genAssign
                                    467 ;	assignBit
      0034A9 C2 8C            [12]  468 	clr	_TR0
                                    469 ;	portme.c:43: TH0 = (65536 - 1382) / 256;
                                    470 ;	genAssign
      0034AB 75 8C FA         [24]  471 	mov	_TH0,#0xfa
                                    472 ;	portme.c:44: TL0 = (65536 - 1382) % 256;
                                    473 ;	genAssign
      0034AE 75 8A 9A         [24]  474 	mov	_TL0,#0x9a
                                    475 ;	portme.c:45: TR0 = 1;
                                    476 ;	genAssign
                                    477 ;	assignBit
      0034B1 D2 8C            [12]  478 	setb	_TR0
                                    479 ;	Peephole 500	removed redundant label 00101$
                                    480 ;	portme.c:46: }
      0034B3 D0 D0            [24]  481 	pop	psw
      0034B5 D0 83            [24]  482 	pop	dph
      0034B7 D0 82            [24]  483 	pop	dpl
      0034B9 D0 E0            [24]  484 	pop	acc
      0034BB 32               [24]  485 	reti
                                    486 ;	eliminated unneeded push/pop b
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'clock'
                                    489 ;------------------------------------------------------------
                                    490 ;ctmp                      Allocated with name '_clock_ctmp_65536_22'
                                    491 ;------------------------------------------------------------
                                    492 ;	portme.c:48: unsigned long int clock(void)
                                    493 ;	-----------------------------------------
                                    494 ;	 function clock
                                    495 ;	-----------------------------------------
      0034BC                        496 _clock:
                           000007   497 	ar7 = 0x07
                           000006   498 	ar6 = 0x06
                           000005   499 	ar5 = 0x05
                           000004   500 	ar4 = 0x04
                           000003   501 	ar3 = 0x03
                           000002   502 	ar2 = 0x02
                           000001   503 	ar1 = 0x01
                           000000   504 	ar0 = 0x00
                                    505 ;	portme.c:52: do
      0034BC                        506 00101$:
                                    507 ;	portme.c:54: clockupdate = false;
                                    508 ;	genAssign
      0034BC 90 94 C8         [24]  509 	mov	dptr,#_clockupdate
                                    510 ;	Peephole 181	changed mov to clr
      0034BF E4               [12]  511 	clr	a
      0034C0 F0               [24]  512 	movx	@dptr,a
                                    513 ;	portme.c:55: ctmp = clocktime;
                                    514 ;	genAssign
      0034C1 90 94 CA         [24]  515 	mov	dptr,#_clock_ctmp_65536_22
      0034C4 E5 2B            [12]  516 	mov	a,_clocktime
      0034C6 F0               [24]  517 	movx	@dptr,a
      0034C7 E5 2C            [12]  518 	mov	a,(_clocktime + 1)
      0034C9 A3               [24]  519 	inc	dptr
      0034CA F0               [24]  520 	movx	@dptr,a
      0034CB E5 2D            [12]  521 	mov	a,(_clocktime + 2)
      0034CD A3               [24]  522 	inc	dptr
      0034CE F0               [24]  523 	movx	@dptr,a
      0034CF E5 2E            [12]  524 	mov	a,(_clocktime + 3)
      0034D1 A3               [24]  525 	inc	dptr
      0034D2 F0               [24]  526 	movx	@dptr,a
                                    527 ;	portme.c:56: } while (clockupdate);
                                    528 ;	genAssign
      0034D3 90 94 C8         [24]  529 	mov	dptr,#_clockupdate
      0034D6 E0               [24]  530 	movx	a,@dptr
                                    531 ;	genIfx
                                    532 ;	genIfxJump
                                    533 ;	Peephole 108.b	removed ljmp by inverse jump logic
      0034D7 70 E3            [24]  534 	jnz	00101$
                                    535 ;	Peephole 500	removed redundant label 00114$
                                    536 ;	portme.c:58: return(ctmp);
                                    537 ;	genAssign
      0034D9 90 94 CA         [24]  538 	mov	dptr,#_clock_ctmp_65536_22
      0034DC E0               [24]  539 	movx	a,@dptr
      0034DD FC               [12]  540 	mov	r4,a
      0034DE A3               [24]  541 	inc	dptr
      0034DF E0               [24]  542 	movx	a,@dptr
      0034E0 FD               [12]  543 	mov	r5,a
      0034E1 A3               [24]  544 	inc	dptr
      0034E2 E0               [24]  545 	movx	a,@dptr
      0034E3 FE               [12]  546 	mov	r6,a
      0034E4 A3               [24]  547 	inc	dptr
      0034E5 E0               [24]  548 	movx	a,@dptr
                                    549 ;	genRet
                                    550 ;	Peephole 301	mov r7,a removed
      0034E6 8C 82            [24]  551 	mov	dpl,r4
      0034E8 8D 83            [24]  552 	mov	dph,r5
      0034EA 8E F0            [24]  553 	mov	b,r6
                                    554 ;	Peephole 191	removed redundant mov
                                    555 ;	Peephole 500	removed redundant label 00104$
                                    556 ;	portme.c:59: }
      0034EC 22               [24]  557 	ret
                                    558 	.area CSEG    (CODE)
                                    559 	.area CONST   (CODE)
                                    560 	.area XINIT   (CODE)
                                    561 	.area CABS    (ABS,CODE)
