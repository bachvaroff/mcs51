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
      004000                        317 _intr::
      004000                        318 	.ds 1
      004001                        319 _base::
      004001                        320 	.ds 3
      004004                        321 _off::
      004004                        322 	.ds 2
      004006                        323 _col::
      004006                        324 	.ds 2
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
      002003 02 20 7B         [24]  349 	ljmp	_int0
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
      002006 02 20 8E         [24]  371 	ljmp	_main
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
                                    382 ;	dump.c:4: int putchar(int c) __naked {
                                    383 ;	-----------------------------------------
                                    384 ;	 function putchar
                                    385 ;	-----------------------------------------
      002065                        386 _putchar:
                                    387 ;	naked function: no prologue.
                                    388 ;	dump.c:11: __endasm;
      002065 C0 E0            [24]  389 	push	acc
      002067 E5 82            [12]  390 	mov	a, dpl
      002069 12 00 3C         [24]  391 	lcall	0x003c
      00206C D0 E0            [24]  392 	pop	acc
                                    393 ;	dump.c:12: }
                                    394 ;	naked function: no epilogue.
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'getchar'
                                    397 ;------------------------------------------------------------
                                    398 ;	dump.c:14: int getchar(void) __naked {
                                    399 ;	-----------------------------------------
                                    400 ;	 function getchar
                                    401 ;	-----------------------------------------
      00206E                        402 _getchar:
                                    403 ;	naked function: no prologue.
                                    404 ;	dump.c:22: __endasm;
      00206E C0 E0            [24]  405 	push	acc
      002070 12 00 36         [24]  406 	lcall	0x0036
      002073 F5 82            [12]  407 	mov	dpl, a
      002075 75 83 00         [24]  408 	mov	dph, #0
      002078 D0 E0            [24]  409 	pop	acc
      00207A 22               [24]  410 	ret
                                    411 ;	dump.c:23: }
                                    412 ;	naked function: no epilogue.
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'int0'
                                    415 ;------------------------------------------------------------
                                    416 ;	dump.c:54: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    417 ;	-----------------------------------------
                                    418 ;	 function int0
                                    419 ;	-----------------------------------------
      00207B                        420 _int0:
                           00000F   421 	ar7 = 0x0f
                           00000E   422 	ar6 = 0x0e
                           00000D   423 	ar5 = 0x0d
                           00000C   424 	ar4 = 0x0c
                           00000B   425 	ar3 = 0x0b
                           00000A   426 	ar2 = 0x0a
                           000009   427 	ar1 = 0x09
                           000008   428 	ar0 = 0x08
      00207B C0 E0            [24]  429 	push	acc
      00207D C0 82            [24]  430 	push	dpl
      00207F C0 83            [24]  431 	push	dph
                                    432 ;	dump.c:55: intr = 1;
      002081 90 40 00         [24]  433 	mov	dptr,#_intr
      002084 74 01            [12]  434 	mov	a,#0x01
      002086 F0               [24]  435 	movx	@dptr,a
                                    436 ;	dump.c:56: }
      002087 D0 83            [24]  437 	pop	dph
      002089 D0 82            [24]  438 	pop	dpl
      00208B D0 E0            [24]  439 	pop	acc
      00208D 32               [24]  440 	reti
                                    441 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    442 ;	eliminated unneeded push/pop psw
                                    443 ;	eliminated unneeded push/pop b
                                    444 ;------------------------------------------------------------
                                    445 ;Allocation info for local variables in function 'main'
                                    446 ;------------------------------------------------------------
                                    447 ;__3932160001              Allocated to registers r5 r6 
                                    448 ;a                         Allocated to registers r4 r7 
                                    449 ;__3932160003              Allocated to registers 
                                    450 ;s                         Allocated to registers r5 r6 r7 
                                    451 ;__5242880005              Allocated to registers r6 r7 
                                    452 ;a                         Allocated to registers r4 r5 
                                    453 ;------------------------------------------------------------
                                    454 ;	dump.c:61: void main(void) {
                                    455 ;	-----------------------------------------
                                    456 ;	 function main
                                    457 ;	-----------------------------------------
      00208E                        458 _main:
                           000007   459 	ar7 = 0x07
                           000006   460 	ar6 = 0x06
                           000005   461 	ar5 = 0x05
                           000004   462 	ar4 = 0x04
                           000003   463 	ar3 = 0x03
                           000002   464 	ar2 = 0x02
                           000001   465 	ar1 = 0x01
                           000000   466 	ar0 = 0x00
                                    467 ;	dump.c:62: intr = 0;
      00208E 90 40 00         [24]  468 	mov	dptr,#_intr
      002091 E4               [12]  469 	clr	a
      002092 F0               [24]  470 	movx	@dptr,a
                                    471 ;	dump.c:64: IT0 = 1;
                                    472 ;	assignBit
      002093 D2 88            [12]  473 	setb	_IT0
                                    474 ;	dump.c:65: EX0 = 1;	
                                    475 ;	assignBit
      002095 D2 A8            [12]  476 	setb	_EX0
                                    477 ;	dump.c:66: EA = 1;
                                    478 ;	assignBit
      002097 D2 AF            [12]  479 	setb	_EA
                                    480 ;	dump.c:68: P1_7 = 0; /* activate IO address space from 0xe000 to 0xffff */
                                    481 ;	assignBit
      002099 C2 97            [12]  482 	clr	_P1_7
                                    483 ;	dump.c:73: __endasm;
      00209B 00               [12]  484 	nop
      00209C 00               [12]  485 	nop
      00209D 00               [12]  486 	nop
                                    487 ;	dump.c:75: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      00209E 90 40 01         [24]  488 	mov	dptr,#_base
      0020A1 E4               [12]  489 	clr	a
      0020A2 F0               [24]  490 	movx	@dptr,a
      0020A3 A3               [24]  491 	inc	dptr
      0020A4 F0               [24]  492 	movx	@dptr,a
      0020A5 A3               [24]  493 	inc	dptr
      0020A6 F0               [24]  494 	movx	@dptr,a
      0020A7                        495 00119$:
      0020A7 90 40 00         [24]  496 	mov	dptr,#_intr
      0020AA E0               [24]  497 	movx	a,@dptr
      0020AB 60 03            [24]  498 	jz	00160$
      0020AD 02 22 98         [24]  499 	ljmp	00106$
      0020B0                        500 00160$:
                                    501 ;	dump.c:76: for (off = 0u; off < 0x400u; off += 0x20u) {
      0020B0 90 40 04         [24]  502 	mov	dptr,#_off
      0020B3 E4               [12]  503 	clr	a
      0020B4 F0               [24]  504 	movx	@dptr,a
      0020B5 A3               [24]  505 	inc	dptr
      0020B6 F0               [24]  506 	movx	@dptr,a
      0020B7                        507 00116$:
                                    508 ;	dump.c:77: print16x((unsigned int)base + off);
      0020B7 90 40 01         [24]  509 	mov	dptr,#_base
      0020BA E0               [24]  510 	movx	a,@dptr
      0020BB FD               [12]  511 	mov	r5,a
      0020BC A3               [24]  512 	inc	dptr
      0020BD E0               [24]  513 	movx	a,@dptr
      0020BE FE               [12]  514 	mov	r6,a
      0020BF A3               [24]  515 	inc	dptr
      0020C0 E0               [24]  516 	movx	a,@dptr
      0020C1 90 40 04         [24]  517 	mov	dptr,#_off
      0020C4 E0               [24]  518 	movx	a,@dptr
      0020C5 FC               [12]  519 	mov	r4,a
      0020C6 A3               [24]  520 	inc	dptr
      0020C7 E0               [24]  521 	movx	a,@dptr
      0020C8 FF               [12]  522 	mov	r7,a
      0020C9 EC               [12]  523 	mov	a,r4
      0020CA 2D               [12]  524 	add	a,r5
      0020CB FD               [12]  525 	mov	r5,a
      0020CC EF               [12]  526 	mov	a,r7
      0020CD 3E               [12]  527 	addc	a,r6
      0020CE FE               [12]  528 	mov	r6,a
      0020CF 8D 04            [24]  529 	mov	ar4,r5
                                    530 ;	dump.c:38: putchar(digits[(a >> 12) & 0xf]);
      0020D1 EE               [12]  531 	mov	a,r6
      0020D2 FF               [12]  532 	mov	r7,a
      0020D3 C4               [12]  533 	swap	a
      0020D4 54 0F            [12]  534 	anl	a,#0x0f
      0020D6 30 E3 02         [24]  535 	jnb	acc.3,00161$
      0020D9 44 F0            [12]  536 	orl	a,#0xf0
      0020DB                        537 00161$:
      0020DB FD               [12]  538 	mov	r5,a
      0020DC 33               [12]  539 	rlc	a
      0020DD 95 E0            [12]  540 	subb	a,acc
      0020DF 53 05 0F         [24]  541 	anl	ar5,#0x0f
      0020E2 7E 00            [12]  542 	mov	r6,#0x00
      0020E4 ED               [12]  543 	mov	a,r5
      0020E5 24 C1            [12]  544 	add	a,#_digits
      0020E7 F5 82            [12]  545 	mov	dpl,a
      0020E9 EE               [12]  546 	mov	a,r6
      0020EA 34 22            [12]  547 	addc	a,#(_digits >> 8)
      0020EC F5 83            [12]  548 	mov	dph,a
      0020EE E4               [12]  549 	clr	a
      0020EF 93               [24]  550 	movc	a,@a+dptr
      0020F0 FE               [12]  551 	mov	r6,a
      0020F1 7D 00            [12]  552 	mov	r5,#0x00
      0020F3 8E 82            [24]  553 	mov	dpl,r6
      0020F5 8D 83            [24]  554 	mov	dph,r5
      0020F7 12 20 65         [24]  555 	lcall	_putchar
                                    556 ;	dump.c:39: putchar(digits[(a >> 8) & 0xf]);
      0020FA 8F 06            [24]  557 	mov	ar6,r7
      0020FC 53 06 0F         [24]  558 	anl	ar6,#0x0f
      0020FF 7D 00            [12]  559 	mov	r5,#0x00
      002101 EE               [12]  560 	mov	a,r6
      002102 24 C1            [12]  561 	add	a,#_digits
      002104 F5 82            [12]  562 	mov	dpl,a
      002106 ED               [12]  563 	mov	a,r5
      002107 34 22            [12]  564 	addc	a,#(_digits >> 8)
      002109 F5 83            [12]  565 	mov	dph,a
      00210B E4               [12]  566 	clr	a
      00210C 93               [24]  567 	movc	a,@a+dptr
      00210D FE               [12]  568 	mov	r6,a
      00210E 7D 00            [12]  569 	mov	r5,#0x00
      002110 8E 82            [24]  570 	mov	dpl,r6
      002112 8D 83            [24]  571 	mov	dph,r5
      002114 12 20 65         [24]  572 	lcall	_putchar
                                    573 ;	dump.c:40: putchar(digits[(a >> 4) & 0xf]);
      002117 8C 05            [24]  574 	mov	ar5,r4
      002119 EF               [12]  575 	mov	a,r7
      00211A C4               [12]  576 	swap	a
      00211B CD               [12]  577 	xch	a,r5
      00211C C4               [12]  578 	swap	a
      00211D 54 0F            [12]  579 	anl	a,#0x0f
      00211F 6D               [12]  580 	xrl	a,r5
      002120 CD               [12]  581 	xch	a,r5
      002121 54 0F            [12]  582 	anl	a,#0x0f
      002123 CD               [12]  583 	xch	a,r5
      002124 6D               [12]  584 	xrl	a,r5
      002125 CD               [12]  585 	xch	a,r5
      002126 30 E3 02         [24]  586 	jnb	acc.3,00162$
      002129 44 F0            [12]  587 	orl	a,#0xf0
      00212B                        588 00162$:
      00212B 53 05 0F         [24]  589 	anl	ar5,#0x0f
      00212E 7E 00            [12]  590 	mov	r6,#0x00
      002130 ED               [12]  591 	mov	a,r5
      002131 24 C1            [12]  592 	add	a,#_digits
      002133 F5 82            [12]  593 	mov	dpl,a
      002135 EE               [12]  594 	mov	a,r6
      002136 34 22            [12]  595 	addc	a,#(_digits >> 8)
      002138 F5 83            [12]  596 	mov	dph,a
      00213A E4               [12]  597 	clr	a
      00213B 93               [24]  598 	movc	a,@a+dptr
      00213C FE               [12]  599 	mov	r6,a
      00213D 7D 00            [12]  600 	mov	r5,#0x00
      00213F 8E 82            [24]  601 	mov	dpl,r6
      002141 8D 83            [24]  602 	mov	dph,r5
      002143 12 20 65         [24]  603 	lcall	_putchar
                                    604 ;	dump.c:41: putchar(digits[a & 0xf]);
      002146 53 04 0F         [24]  605 	anl	ar4,#0x0f
      002149 7F 00            [12]  606 	mov	r7,#0x00
      00214B EC               [12]  607 	mov	a,r4
      00214C 24 C1            [12]  608 	add	a,#_digits
      00214E F5 82            [12]  609 	mov	dpl,a
      002150 EF               [12]  610 	mov	a,r7
      002151 34 22            [12]  611 	addc	a,#(_digits >> 8)
      002153 F5 83            [12]  612 	mov	dph,a
      002155 E4               [12]  613 	clr	a
      002156 93               [24]  614 	movc	a,@a+dptr
      002157 FF               [12]  615 	mov	r7,a
      002158 7E 00            [12]  616 	mov	r6,#0x00
      00215A 8F 82            [24]  617 	mov	dpl,r7
      00215C 8E 83            [24]  618 	mov	dph,r6
      00215E 12 20 65         [24]  619 	lcall	_putchar
                                    620 ;	dump.c:78: printstr(" : ");
      002161 7D D1            [12]  621 	mov	r5,#___str_0
      002163 7E 22            [12]  622 	mov	r6,#(___str_0 >> 8)
      002165 7F 80            [12]  623 	mov	r7,#0x80
                                    624 ;	dump.c:49: return;
      002167                        625 00112$:
                                    626 ;	dump.c:47: for (; *s; s++) putchar(*s);
      002167 8D 82            [24]  627 	mov	dpl,r5
      002169 8E 83            [24]  628 	mov	dph,r6
      00216B 8F F0            [24]  629 	mov	b,r7
      00216D 12 22 A1         [24]  630 	lcall	__gptrget
      002170 FC               [12]  631 	mov	r4,a
      002171 60 10            [24]  632 	jz	00109$
      002173 7B 00            [12]  633 	mov	r3,#0x00
      002175 8C 82            [24]  634 	mov	dpl,r4
      002177 8B 83            [24]  635 	mov	dph,r3
      002179 12 20 65         [24]  636 	lcall	_putchar
      00217C 0D               [12]  637 	inc	r5
                                    638 ;	dump.c:78: printstr(" : ");
      00217D BD 00 E7         [24]  639 	cjne	r5,#0x00,00112$
      002180 0E               [12]  640 	inc	r6
      002181 80 E4            [24]  641 	sjmp	00112$
      002183                        642 00109$:
                                    643 ;	dump.c:79: for (col = 0u; col < 0x20u; col++) {
      002183 90 40 06         [24]  644 	mov	dptr,#_col
      002186 E4               [12]  645 	clr	a
      002187 F0               [24]  646 	movx	@dptr,a
      002188 A3               [24]  647 	inc	dptr
      002189 F0               [24]  648 	movx	@dptr,a
      00218A                        649 00114$:
                                    650 ;	dump.c:80: print8x(base[off + col]);
      00218A 90 40 06         [24]  651 	mov	dptr,#_col
      00218D E0               [24]  652 	movx	a,@dptr
      00218E FE               [12]  653 	mov	r6,a
      00218F A3               [24]  654 	inc	dptr
      002190 E0               [24]  655 	movx	a,@dptr
      002191 FF               [12]  656 	mov	r7,a
      002192 90 40 04         [24]  657 	mov	dptr,#_off
      002195 E0               [24]  658 	movx	a,@dptr
      002196 FC               [12]  659 	mov	r4,a
      002197 A3               [24]  660 	inc	dptr
      002198 E0               [24]  661 	movx	a,@dptr
      002199 FD               [12]  662 	mov	r5,a
      00219A EE               [12]  663 	mov	a,r6
      00219B 2C               [12]  664 	add	a,r4
      00219C FE               [12]  665 	mov	r6,a
      00219D EF               [12]  666 	mov	a,r7
      00219E 3D               [12]  667 	addc	a,r5
      00219F FF               [12]  668 	mov	r7,a
      0021A0 90 40 01         [24]  669 	mov	dptr,#_base
      0021A3 E0               [24]  670 	movx	a,@dptr
      0021A4 FB               [12]  671 	mov	r3,a
      0021A5 A3               [24]  672 	inc	dptr
      0021A6 E0               [24]  673 	movx	a,@dptr
      0021A7 FC               [12]  674 	mov	r4,a
      0021A8 A3               [24]  675 	inc	dptr
      0021A9 E0               [24]  676 	movx	a,@dptr
      0021AA FD               [12]  677 	mov	r5,a
      0021AB EE               [12]  678 	mov	a,r6
      0021AC 2B               [12]  679 	add	a,r3
      0021AD FE               [12]  680 	mov	r6,a
      0021AE EF               [12]  681 	mov	a,r7
      0021AF 3C               [12]  682 	addc	a,r4
      0021B0 FF               [12]  683 	mov	r7,a
      0021B1 8D 02            [24]  684 	mov	ar2,r5
      0021B3 8E 82            [24]  685 	mov	dpl,r6
      0021B5 8F 83            [24]  686 	mov	dph,r7
      0021B7 8A F0            [24]  687 	mov	b,r2
      0021B9 12 22 A1         [24]  688 	lcall	__gptrget
      0021BC FE               [12]  689 	mov	r6,a
      0021BD 7F 00            [12]  690 	mov	r7,#0x00
      0021BF 8E 04            [24]  691 	mov	ar4,r6
                                    692 ;	dump.c:31: putchar(digits[(a >> 4) & 0xf]);
      0021C1 EF               [12]  693 	mov	a,r7
      0021C2 C4               [12]  694 	swap	a
      0021C3 CE               [12]  695 	xch	a,r6
      0021C4 C4               [12]  696 	swap	a
      0021C5 54 0F            [12]  697 	anl	a,#0x0f
      0021C7 6E               [12]  698 	xrl	a,r6
      0021C8 CE               [12]  699 	xch	a,r6
      0021C9 54 0F            [12]  700 	anl	a,#0x0f
      0021CB CE               [12]  701 	xch	a,r6
      0021CC 6E               [12]  702 	xrl	a,r6
      0021CD CE               [12]  703 	xch	a,r6
      0021CE 30 E3 02         [24]  704 	jnb	acc.3,00165$
      0021D1 44 F0            [12]  705 	orl	a,#0xf0
      0021D3                        706 00165$:
      0021D3 53 06 0F         [24]  707 	anl	ar6,#0x0f
      0021D6 7F 00            [12]  708 	mov	r7,#0x00
      0021D8 EE               [12]  709 	mov	a,r6
      0021D9 24 C1            [12]  710 	add	a,#_digits
      0021DB F5 82            [12]  711 	mov	dpl,a
      0021DD EF               [12]  712 	mov	a,r7
      0021DE 34 22            [12]  713 	addc	a,#(_digits >> 8)
      0021E0 F5 83            [12]  714 	mov	dph,a
      0021E2 E4               [12]  715 	clr	a
      0021E3 93               [24]  716 	movc	a,@a+dptr
      0021E4 FF               [12]  717 	mov	r7,a
      0021E5 7E 00            [12]  718 	mov	r6,#0x00
      0021E7 8F 82            [24]  719 	mov	dpl,r7
      0021E9 8E 83            [24]  720 	mov	dph,r6
      0021EB 12 20 65         [24]  721 	lcall	_putchar
                                    722 ;	dump.c:32: putchar(digits[a & 0xf]);
      0021EE 53 04 0F         [24]  723 	anl	ar4,#0x0f
      0021F1 7D 00            [12]  724 	mov	r5,#0x00
      0021F3 EC               [12]  725 	mov	a,r4
      0021F4 24 C1            [12]  726 	add	a,#_digits
      0021F6 F5 82            [12]  727 	mov	dpl,a
      0021F8 ED               [12]  728 	mov	a,r5
      0021F9 34 22            [12]  729 	addc	a,#(_digits >> 8)
      0021FB F5 83            [12]  730 	mov	dph,a
      0021FD E4               [12]  731 	clr	a
      0021FE 93               [24]  732 	movc	a,@a+dptr
      0021FF FF               [12]  733 	mov	r7,a
      002200 7E 00            [12]  734 	mov	r6,#0x00
      002202 8F 82            [24]  735 	mov	dpl,r7
      002204 8E 83            [24]  736 	mov	dph,r6
      002206 12 20 65         [24]  737 	lcall	_putchar
                                    738 ;	dump.c:81: if (col == 0x1fu) {
      002209 90 40 06         [24]  739 	mov	dptr,#_col
      00220C E0               [24]  740 	movx	a,@dptr
      00220D FE               [12]  741 	mov	r6,a
      00220E A3               [24]  742 	inc	dptr
      00220F E0               [24]  743 	movx	a,@dptr
      002210 FF               [12]  744 	mov	r7,a
      002211 BE 1F 11         [24]  745 	cjne	r6,#0x1f,00102$
      002214 BF 00 0E         [24]  746 	cjne	r7,#0x00,00102$
                                    747 ;	dump.c:82: putchar('\r'); putchar('\n');
      002217 90 00 0D         [24]  748 	mov	dptr,#0x000d
      00221A 12 20 65         [24]  749 	lcall	_putchar
      00221D 90 00 0A         [24]  750 	mov	dptr,#0x000a
      002220 12 20 65         [24]  751 	lcall	_putchar
      002223 80 06            [24]  752 	sjmp	00115$
      002225                        753 00102$:
                                    754 ;	dump.c:83: } else putchar(' ');
      002225 90 00 20         [24]  755 	mov	dptr,#0x0020
      002228 12 20 65         [24]  756 	lcall	_putchar
      00222B                        757 00115$:
                                    758 ;	dump.c:79: for (col = 0u; col < 0x20u; col++) {
      00222B 90 40 06         [24]  759 	mov	dptr,#_col
      00222E E0               [24]  760 	movx	a,@dptr
      00222F 24 01            [12]  761 	add	a,#0x01
      002231 F0               [24]  762 	movx	@dptr,a
      002232 A3               [24]  763 	inc	dptr
      002233 E0               [24]  764 	movx	a,@dptr
      002234 34 00            [12]  765 	addc	a,#0x00
      002236 F0               [24]  766 	movx	@dptr,a
      002237 90 40 06         [24]  767 	mov	dptr,#_col
      00223A E0               [24]  768 	movx	a,@dptr
      00223B FE               [12]  769 	mov	r6,a
      00223C A3               [24]  770 	inc	dptr
      00223D E0               [24]  771 	movx	a,@dptr
      00223E FF               [12]  772 	mov	r7,a
      00223F C3               [12]  773 	clr	c
      002240 EE               [12]  774 	mov	a,r6
      002241 94 20            [12]  775 	subb	a,#0x20
      002243 EF               [12]  776 	mov	a,r7
      002244 94 00            [12]  777 	subb	a,#0x00
      002246 50 03            [24]  778 	jnc	00168$
      002248 02 21 8A         [24]  779 	ljmp	00114$
      00224B                        780 00168$:
                                    781 ;	dump.c:76: for (off = 0u; off < 0x400u; off += 0x20u) {
      00224B 90 40 04         [24]  782 	mov	dptr,#_off
      00224E E0               [24]  783 	movx	a,@dptr
      00224F FE               [12]  784 	mov	r6,a
      002250 A3               [24]  785 	inc	dptr
      002251 E0               [24]  786 	movx	a,@dptr
      002252 FF               [12]  787 	mov	r7,a
      002253 90 40 04         [24]  788 	mov	dptr,#_off
      002256 74 20            [12]  789 	mov	a,#0x20
      002258 2E               [12]  790 	add	a,r6
      002259 F0               [24]  791 	movx	@dptr,a
      00225A E4               [12]  792 	clr	a
      00225B 3F               [12]  793 	addc	a,r7
      00225C A3               [24]  794 	inc	dptr
      00225D F0               [24]  795 	movx	@dptr,a
      00225E 90 40 04         [24]  796 	mov	dptr,#_off
      002261 E0               [24]  797 	movx	a,@dptr
      002262 FE               [12]  798 	mov	r6,a
      002263 A3               [24]  799 	inc	dptr
      002264 E0               [24]  800 	movx	a,@dptr
      002265 FF               [12]  801 	mov	r7,a
      002266 C3               [12]  802 	clr	c
      002267 94 04            [12]  803 	subb	a,#0x04
      002269 50 03            [24]  804 	jnc	00169$
      00226B 02 20 B7         [24]  805 	ljmp	00116$
      00226E                        806 00169$:
                                    807 ;	dump.c:86: getchar();
      00226E 12 20 6E         [24]  808 	lcall	_getchar
                                    809 ;	dump.c:87: putchar('\r'); putchar('\n');
      002271 90 00 0D         [24]  810 	mov	dptr,#0x000d
      002274 12 20 65         [24]  811 	lcall	_putchar
      002277 90 00 0A         [24]  812 	mov	dptr,#0x000a
      00227A 12 20 65         [24]  813 	lcall	_putchar
                                    814 ;	dump.c:75: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      00227D 90 40 01         [24]  815 	mov	dptr,#_base
      002280 E0               [24]  816 	movx	a,@dptr
      002281 FD               [12]  817 	mov	r5,a
      002282 A3               [24]  818 	inc	dptr
      002283 E0               [24]  819 	movx	a,@dptr
      002284 FE               [12]  820 	mov	r6,a
      002285 A3               [24]  821 	inc	dptr
      002286 E0               [24]  822 	movx	a,@dptr
      002287 FF               [12]  823 	mov	r7,a
      002288 90 40 01         [24]  824 	mov	dptr,#_base
      00228B ED               [12]  825 	mov	a,r5
      00228C F0               [24]  826 	movx	@dptr,a
      00228D 74 04            [12]  827 	mov	a,#0x04
      00228F 2E               [12]  828 	add	a,r6
      002290 A3               [24]  829 	inc	dptr
      002291 F0               [24]  830 	movx	@dptr,a
      002292 EF               [12]  831 	mov	a,r7
      002293 A3               [24]  832 	inc	dptr
      002294 F0               [24]  833 	movx	@dptr,a
      002295 02 20 A7         [24]  834 	ljmp	00119$
      002298                        835 00106$:
                                    836 ;	dump.c:90: P1_7 = 1; /* deactivate IO address space from 0xe000 to 0xffff */
                                    837 ;	assignBit
      002298 D2 97            [12]  838 	setb	_P1_7
                                    839 ;	dump.c:95: __endasm;
      00229A 00               [12]  840 	nop
      00229B 00               [12]  841 	nop
      00229C 00               [12]  842 	nop
                                    843 ;	dump.c:97: PCON |= 2;
      00229D 43 87 02         [24]  844 	orl	_PCON,#0x02
                                    845 ;	dump.c:99: return;
                                    846 ;	dump.c:100: }
      0022A0 22               [24]  847 	ret
                                    848 	.area CSEG    (CODE)
                                    849 	.area CONST   (CODE)
      0022C1                        850 _digits:
      0022C1 30                     851 	.db #0x30	; 48	'0'
      0022C2 31                     852 	.db #0x31	; 49	'1'
      0022C3 32                     853 	.db #0x32	; 50	'2'
      0022C4 33                     854 	.db #0x33	; 51	'3'
      0022C5 34                     855 	.db #0x34	; 52	'4'
      0022C6 35                     856 	.db #0x35	; 53	'5'
      0022C7 36                     857 	.db #0x36	; 54	'6'
      0022C8 37                     858 	.db #0x37	; 55	'7'
      0022C9 38                     859 	.db #0x38	; 56	'8'
      0022CA 39                     860 	.db #0x39	; 57	'9'
      0022CB 61                     861 	.db #0x61	; 97	'a'
      0022CC 62                     862 	.db #0x62	; 98	'b'
      0022CD 63                     863 	.db #0x63	; 99	'c'
      0022CE 64                     864 	.db #0x64	; 100	'd'
      0022CF 65                     865 	.db #0x65	; 101	'e'
      0022D0 66                     866 	.db #0x66	; 102	'f'
                                    867 	.area CONST   (CODE)
      0022D1                        868 ___str_0:
      0022D1 20 3A 20               869 	.ascii " : "
      0022D4 00                     870 	.db 0x00
                                    871 	.area CSEG    (CODE)
                                    872 	.area XINIT   (CODE)
                                    873 	.area CABS    (ABS,CODE)
