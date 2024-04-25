                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module irq
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int1
                                     13 	.globl _int0
                                     14 	.globl _printf
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
                                    138 	.globl _intr
                                    139 	.globl _putchar
                                    140 	.globl _getchar
                                    141 ;--------------------------------------------------------
                                    142 ; special function registers
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0	=	0x0080
                           000081   147 _SP	=	0x0081
                           000082   148 _DPL	=	0x0082
                           000083   149 _DPH	=	0x0083
                           000087   150 _PCON	=	0x0087
                           000088   151 _TCON	=	0x0088
                           000089   152 _TMOD	=	0x0089
                           00008A   153 _TL0	=	0x008a
                           00008B   154 _TL1	=	0x008b
                           00008C   155 _TH0	=	0x008c
                           00008D   156 _TH1	=	0x008d
                           000090   157 _P1	=	0x0090
                           000098   158 _SCON	=	0x0098
                           000099   159 _SBUF	=	0x0099
                           0000A0   160 _P2	=	0x00a0
                           0000A8   161 _IE	=	0x00a8
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 _IP	=	0x00b8
                           0000C8   164 _T2CON	=	0x00c8
                           0000C9   165 _T2MOD	=	0x00c9
                           0000CA   166 _RCAP2L	=	0x00ca
                           0000CB   167 _RCAP2H	=	0x00cb
                           0000CC   168 _TL2	=	0x00cc
                           0000CD   169 _TH2	=	0x00cd
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000E0   172 _A	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000090   203 _T2	=	0x0090
                           000091   204 _T2EX	=	0x0091
                           000098   205 _RI	=	0x0098
                           000099   206 _TI	=	0x0099
                           00009A   207 _RB8	=	0x009a
                           00009B   208 _TB8	=	0x009b
                           00009C   209 _REN	=	0x009c
                           00009D   210 _SM2	=	0x009d
                           00009E   211 _SM1	=	0x009e
                           00009F   212 _SM0	=	0x009f
                           0000A0   213 _P2_0	=	0x00a0
                           0000A1   214 _P2_1	=	0x00a1
                           0000A2   215 _P2_2	=	0x00a2
                           0000A3   216 _P2_3	=	0x00a3
                           0000A4   217 _P2_4	=	0x00a4
                           0000A5   218 _P2_5	=	0x00a5
                           0000A6   219 _P2_6	=	0x00a6
                           0000A7   220 _P2_7	=	0x00a7
                           0000A8   221 _EX0	=	0x00a8
                           0000A9   222 _ET0	=	0x00a9
                           0000AA   223 _EX1	=	0x00aa
                           0000AB   224 _ET1	=	0x00ab
                           0000AC   225 _ES	=	0x00ac
                           0000AD   226 _ET2	=	0x00ad
                           0000AF   227 _EA	=	0x00af
                           0000B0   228 _P3_0	=	0x00b0
                           0000B1   229 _P3_1	=	0x00b1
                           0000B2   230 _P3_2	=	0x00b2
                           0000B3   231 _P3_3	=	0x00b3
                           0000B4   232 _P3_4	=	0x00b4
                           0000B5   233 _P3_5	=	0x00b5
                           0000B6   234 _P3_6	=	0x00b6
                           0000B7   235 _P3_7	=	0x00b7
                           0000B0   236 _RXD	=	0x00b0
                           0000B1   237 _TXD	=	0x00b1
                           0000B2   238 _INT0	=	0x00b2
                           0000B3   239 _INT1	=	0x00b3
                           0000B4   240 _T0	=	0x00b4
                           0000B5   241 _T1	=	0x00b5
                           0000B6   242 _WR	=	0x00b6
                           0000B7   243 _RD	=	0x00b7
                           0000B8   244 _PX0	=	0x00b8
                           0000B9   245 _PT0	=	0x00b9
                           0000BA   246 _PX1	=	0x00ba
                           0000BB   247 _PT1	=	0x00bb
                           0000BC   248 _PS	=	0x00bc
                           0000BD   249 _PT2	=	0x00bd
                           0000C8   250 _T2CON_0	=	0x00c8
                           0000C9   251 _T2CON_1	=	0x00c9
                           0000CA   252 _T2CON_2	=	0x00ca
                           0000CB   253 _T2CON_3	=	0x00cb
                           0000CC   254 _T2CON_4	=	0x00cc
                           0000CD   255 _T2CON_5	=	0x00cd
                           0000CE   256 _T2CON_6	=	0x00ce
                           0000CF   257 _T2CON_7	=	0x00cf
                           0000C8   258 _CP_RL2	=	0x00c8
                           0000C9   259 _C_T2	=	0x00c9
                           0000CA   260 _TR2	=	0x00ca
                           0000CB   261 _EXEN2	=	0x00cb
                           0000CC   262 _TCLK	=	0x00cc
                           0000CD   263 _RCLK	=	0x00cd
                           0000CE   264 _EXF2	=	0x00ce
                           0000CF   265 _TF2	=	0x00cf
                           0000D0   266 _P	=	0x00d0
                           0000D1   267 _FL	=	0x00d1
                           0000D2   268 _OV	=	0x00d2
                           0000D3   269 _RS0	=	0x00d3
                           0000D4   270 _RS1	=	0x00d4
                           0000D5   271 _F0	=	0x00d5
                           0000D6   272 _AC	=	0x00d6
                           0000D7   273 _CY	=	0x00d7
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable register banks
                                    276 ;--------------------------------------------------------
                                    277 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        278 	.ds 8
                                    279 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        280 	.ds 8
                                    281 ;--------------------------------------------------------
                                    282 ; internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area DSEG    (DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable items in internal ram 
                                    287 ;--------------------------------------------------------
                                    288 ;--------------------------------------------------------
                                    289 ; Stack segment in internal ram 
                                    290 ;--------------------------------------------------------
                                    291 	.area	SSEG
      000021                        292 __start__stack:
      000021                        293 	.ds	1
                                    294 
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
      004000                        316 _intr::
      004000                        317 	.ds 2
                                    318 ;--------------------------------------------------------
                                    319 ; absolute external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XABS    (ABS,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; external initialized ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XISEG   (XDATA)
                                    326 	.area HOME    (CODE)
                                    327 	.area GSINIT0 (CODE)
                                    328 	.area GSINIT1 (CODE)
                                    329 	.area GSINIT2 (CODE)
                                    330 	.area GSINIT3 (CODE)
                                    331 	.area GSINIT4 (CODE)
                                    332 	.area GSINIT5 (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area CSEG    (CODE)
                                    336 ;--------------------------------------------------------
                                    337 ; interrupt vector 
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
      002000                        340 __interrupt_vect:
      002000 02 20 19         [24]  341 	ljmp	__sdcc_gsinit_startup
      002003 02 20 8C         [24]  342 	ljmp	_int0
      002006                        343 	.ds	5
      00200B 32               [24]  344 	reti
      00200C                        345 	.ds	7
      002013 02 20 A0         [24]  346 	ljmp	_int1
                                    347 ;--------------------------------------------------------
                                    348 ; global & static initialisations
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.area GSFINAL (CODE)
                                    353 	.area GSINIT  (CODE)
                                    354 	.globl __sdcc_gsinit_startup
                                    355 	.globl __sdcc_program_startup
                                    356 	.globl __start__stack
                                    357 	.globl __mcs51_genXINIT
                                    358 	.globl __mcs51_genXRAMCLEAR
                                    359 	.globl __mcs51_genRAMCLEAR
                                    360 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  361 	ljmp	__sdcc_program_startup
                                    362 ;--------------------------------------------------------
                                    363 ; Home
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
                                    366 	.area HOME    (CODE)
      002016                        367 __sdcc_program_startup:
      002016 02 20 B6         [24]  368 	ljmp	_main
                                    369 ;	return from main will return to caller
                                    370 ;--------------------------------------------------------
                                    371 ; code
                                    372 ;--------------------------------------------------------
                                    373 	.area CSEG    (CODE)
                                    374 ;------------------------------------------------------------
                                    375 ;Allocation info for local variables in function 'putchar'
                                    376 ;------------------------------------------------------------
                                    377 ;c                         Allocated to registers 
                                    378 ;------------------------------------------------------------
                                    379 ;	irq.c:5: int putchar(int c) __naked {
                                    380 ;	-----------------------------------------
                                    381 ;	 function putchar
                                    382 ;	-----------------------------------------
      002075                        383 _putchar:
                                    384 ;	naked function: no prologue.
                                    385 ;	irq.c:13: __endasm;
      002075 C0 E0            [24]  386 	push	acc
      002077 E5 82            [12]  387 	mov	a, dpl
      002079 12 00 3C         [24]  388 	lcall	0x003c
      00207C D0 E0            [24]  389 	pop	acc
      00207E 22               [24]  390 	ret
                                    391 ;	irq.c:14: }
                                    392 ;	naked function: no epilogue.
                                    393 ;------------------------------------------------------------
                                    394 ;Allocation info for local variables in function 'getchar'
                                    395 ;------------------------------------------------------------
                                    396 ;	irq.c:16: int getchar(void) __naked {
                                    397 ;	-----------------------------------------
                                    398 ;	 function getchar
                                    399 ;	-----------------------------------------
      00207F                        400 _getchar:
                                    401 ;	naked function: no prologue.
                                    402 ;	irq.c:24: __endasm;
      00207F C0 E0            [24]  403 	push	acc
      002081 12 00 36         [24]  404 	lcall	0x0036
      002084 F5 82            [12]  405 	mov	dpl, a
      002086 75 83 00         [24]  406 	mov	dph, #0
      002089 D0 E0            [24]  407 	pop	acc
      00208B 22               [24]  408 	ret
                                    409 ;	irq.c:25: }
                                    410 ;	naked function: no epilogue.
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'int0'
                                    413 ;------------------------------------------------------------
                                    414 ;	irq.c:29: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    415 ;	-----------------------------------------
                                    416 ;	 function int0
                                    417 ;	-----------------------------------------
      00208C                        418 _int0:
                           00000F   419 	ar7 = 0x0f
                           00000E   420 	ar6 = 0x0e
                           00000D   421 	ar5 = 0x0d
                           00000C   422 	ar4 = 0x0c
                           00000B   423 	ar3 = 0x0b
                           00000A   424 	ar2 = 0x0a
                           000009   425 	ar1 = 0x09
                           000008   426 	ar0 = 0x08
      00208C C0 E0            [24]  427 	push	acc
      00208E C0 82            [24]  428 	push	dpl
      002090 C0 83            [24]  429 	push	dph
                                    430 ;	irq.c:30: intr = 0;
      002092 90 40 00         [24]  431 	mov	dptr,#_intr
      002095 E4               [12]  432 	clr	a
      002096 F0               [24]  433 	movx	@dptr,a
      002097 A3               [24]  434 	inc	dptr
      002098 F0               [24]  435 	movx	@dptr,a
                                    436 ;	irq.c:31: }
      002099 D0 83            [24]  437 	pop	dph
      00209B D0 82            [24]  438 	pop	dpl
      00209D D0 E0            [24]  439 	pop	acc
      00209F 32               [24]  440 	reti
                                    441 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    442 ;	eliminated unneeded push/pop psw
                                    443 ;	eliminated unneeded push/pop b
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'int1'
                                    446 ;------------------------------------------------------------
                                    447 ;	irq.c:33: void int1(void) __interrupt IE1_VECTOR __using 1 {
                                    448 ;	-----------------------------------------
                                    449 ;	 function int1
                                    450 ;	-----------------------------------------
      0020A0                        451 _int1:
      0020A0 C0 E0            [24]  452 	push	acc
      0020A2 C0 82            [24]  453 	push	dpl
      0020A4 C0 83            [24]  454 	push	dph
                                    455 ;	irq.c:34: intr = 1;
      0020A6 90 40 00         [24]  456 	mov	dptr,#_intr
      0020A9 74 01            [12]  457 	mov	a,#0x01
      0020AB F0               [24]  458 	movx	@dptr,a
      0020AC E4               [12]  459 	clr	a
      0020AD A3               [24]  460 	inc	dptr
      0020AE F0               [24]  461 	movx	@dptr,a
                                    462 ;	irq.c:35: }
      0020AF D0 83            [24]  463 	pop	dph
      0020B1 D0 82            [24]  464 	pop	dpl
      0020B3 D0 E0            [24]  465 	pop	acc
      0020B5 32               [24]  466 	reti
                                    467 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    468 ;	eliminated unneeded push/pop psw
                                    469 ;	eliminated unneeded push/pop b
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'main'
                                    472 ;------------------------------------------------------------
                                    473 ;i                         Allocated to registers r6 r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	irq.c:37: void main(void) {
                                    476 ;	-----------------------------------------
                                    477 ;	 function main
                                    478 ;	-----------------------------------------
      0020B6                        479 _main:
                           000007   480 	ar7 = 0x07
                           000006   481 	ar6 = 0x06
                           000005   482 	ar5 = 0x05
                           000004   483 	ar4 = 0x04
                           000003   484 	ar3 = 0x03
                           000002   485 	ar2 = 0x02
                           000001   486 	ar1 = 0x01
                           000000   487 	ar0 = 0x00
                                    488 ;	irq.c:40: intr = -1;
      0020B6 90 40 00         [24]  489 	mov	dptr,#_intr
      0020B9 74 FF            [12]  490 	mov	a,#0xff
      0020BB F0               [24]  491 	movx	@dptr,a
      0020BC A3               [24]  492 	inc	dptr
      0020BD F0               [24]  493 	movx	@dptr,a
                                    494 ;	irq.c:43: IT0 = 1;
                                    495 ;	assignBit
      0020BE D2 88            [12]  496 	setb	_IT0
                                    497 ;	irq.c:44: IT1 = 1;
                                    498 ;	assignBit
      0020C0 D2 8A            [12]  499 	setb	_IT1
                                    500 ;	irq.c:46: EX0 = 1;
                                    501 ;	assignBit
      0020C2 D2 A8            [12]  502 	setb	_EX0
                                    503 ;	irq.c:47: EX1 = 1;
                                    504 ;	assignBit
      0020C4 D2 AA            [12]  505 	setb	_EX1
                                    506 ;	irq.c:48: EA = 1;
                                    507 ;	assignBit
      0020C6 D2 AF            [12]  508 	setb	_EA
                                    509 ;	irq.c:50: for (i = 0; ; i++) {
      0020C8 7E 00            [12]  510 	mov	r6,#0x00
      0020CA 7F 00            [12]  511 	mov	r7,#0x00
      0020CC                        512 00104$:
                                    513 ;	irq.c:51: if (intr >= 0) break;
      0020CC 90 40 00         [24]  514 	mov	dptr,#_intr
      0020CF E0               [24]  515 	movx	a,@dptr
      0020D0 FC               [12]  516 	mov	r4,a
      0020D1 A3               [24]  517 	inc	dptr
      0020D2 E0               [24]  518 	movx	a,@dptr
      0020D3 FD               [12]  519 	mov	r5,a
      0020D4 30 E7 28         [24]  520 	jnb	acc.7,00103$
                                    521 ;	irq.c:52: printf("working %d...\r\n", i);
      0020D7 C0 07            [24]  522 	push	ar7
      0020D9 C0 06            [24]  523 	push	ar6
      0020DB C0 06            [24]  524 	push	ar6
      0020DD C0 07            [24]  525 	push	ar7
      0020DF 74 4B            [12]  526 	mov	a,#___str_0
      0020E1 C0 E0            [24]  527 	push	acc
      0020E3 74 34            [12]  528 	mov	a,#(___str_0 >> 8)
      0020E5 C0 E0            [24]  529 	push	acc
      0020E7 74 80            [12]  530 	mov	a,#0x80
      0020E9 C0 E0            [24]  531 	push	acc
      0020EB 12 21 67         [24]  532 	lcall	_printf
      0020EE E5 81            [12]  533 	mov	a,sp
      0020F0 24 FB            [12]  534 	add	a,#0xfb
      0020F2 F5 81            [12]  535 	mov	sp,a
      0020F4 D0 06            [24]  536 	pop	ar6
      0020F6 D0 07            [24]  537 	pop	ar7
                                    538 ;	irq.c:50: for (i = 0; ; i++) {
      0020F8 0E               [12]  539 	inc	r6
      0020F9 BE 00 D0         [24]  540 	cjne	r6,#0x00,00104$
      0020FC 0F               [12]  541 	inc	r7
      0020FD 80 CD            [24]  542 	sjmp	00104$
      0020FF                        543 00103$:
                                    544 ;	irq.c:55: EA = 0;
                                    545 ;	assignBit
      0020FF C2 AF            [12]  546 	clr	_EA
                                    547 ;	irq.c:56: printf("got interrupt %d\r\n", intr);
      002101 C0 04            [24]  548 	push	ar4
      002103 C0 05            [24]  549 	push	ar5
      002105 74 5B            [12]  550 	mov	a,#___str_1
      002107 C0 E0            [24]  551 	push	acc
      002109 74 34            [12]  552 	mov	a,#(___str_1 >> 8)
      00210B C0 E0            [24]  553 	push	acc
      00210D 74 80            [12]  554 	mov	a,#0x80
      00210F C0 E0            [24]  555 	push	acc
      002111 12 21 67         [24]  556 	lcall	_printf
      002114 E5 81            [12]  557 	mov	a,sp
      002116 24 FB            [12]  558 	add	a,#0xfb
      002118 F5 81            [12]  559 	mov	sp,a
                                    560 ;	irq.c:57: (void)getchar();
      00211A 12 20 7F         [24]  561 	lcall	_getchar
                                    562 ;	irq.c:59: PCON |= 2;
      00211D 43 87 02         [24]  563 	orl	_PCON,#0x02
                                    564 ;	irq.c:61: return;
                                    565 ;	irq.c:62: }
      002120 22               [24]  566 	ret
                                    567 	.area CSEG    (CODE)
                                    568 	.area CONST   (CODE)
                                    569 	.area CONST   (CODE)
      00344B                        570 ___str_0:
      00344B 77 6F 72 6B 69 6E 67   571 	.ascii "working %d..."
             20 25 64 2E 2E 2E
      003458 0D                     572 	.db 0x0d
      003459 0A                     573 	.db 0x0a
      00345A 00                     574 	.db 0x00
                                    575 	.area CSEG    (CODE)
                                    576 	.area CONST   (CODE)
      00345B                        577 ___str_1:
      00345B 67 6F 74 20 69 6E 74   578 	.ascii "got interrupt %d"
             65 72 72 75 70 74 20
             25 64
      00346B 0D                     579 	.db 0x0d
      00346C 0A                     580 	.db 0x0a
      00346D 00                     581 	.db 0x00
                                    582 	.area CSEG    (CODE)
                                    583 	.area XINIT   (CODE)
                                    584 	.area CABS    (ABS,CODE)
