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
      002003 02 20 7C         [24]  349 	ljmp	_int0
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
      002006 02 20 8F         [24]  371 	ljmp	_main
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
                                    388 ;	dump.c:12: __endasm;
      002065 C0 E0            [24]  389 	push	acc
      002067 E5 82            [12]  390 	mov	a, dpl
      002069 12 00 3C         [24]  391 	lcall	0x003c
      00206C D0 E0            [24]  392 	pop	acc
      00206E 22               [24]  393 	ret
                                    394 ;	dump.c:13: }
                                    395 ;	naked function: no epilogue.
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'getchar'
                                    398 ;------------------------------------------------------------
                                    399 ;	dump.c:15: int getchar(void) __naked {
                                    400 ;	-----------------------------------------
                                    401 ;	 function getchar
                                    402 ;	-----------------------------------------
      00206F                        403 _getchar:
                                    404 ;	naked function: no prologue.
                                    405 ;	dump.c:23: __endasm;
      00206F C0 E0            [24]  406 	push	acc
      002071 12 00 36         [24]  407 	lcall	0x0036
      002074 F5 82            [12]  408 	mov	dpl, a
      002076 75 83 00         [24]  409 	mov	dph, #0
      002079 D0 E0            [24]  410 	pop	acc
      00207B 22               [24]  411 	ret
                                    412 ;	dump.c:24: }
                                    413 ;	naked function: no epilogue.
                                    414 ;------------------------------------------------------------
                                    415 ;Allocation info for local variables in function 'int0'
                                    416 ;------------------------------------------------------------
                                    417 ;	dump.c:55: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    418 ;	-----------------------------------------
                                    419 ;	 function int0
                                    420 ;	-----------------------------------------
      00207C                        421 _int0:
                           00000F   422 	ar7 = 0x0f
                           00000E   423 	ar6 = 0x0e
                           00000D   424 	ar5 = 0x0d
                           00000C   425 	ar4 = 0x0c
                           00000B   426 	ar3 = 0x0b
                           00000A   427 	ar2 = 0x0a
                           000009   428 	ar1 = 0x09
                           000008   429 	ar0 = 0x08
      00207C C0 E0            [24]  430 	push	acc
      00207E C0 82            [24]  431 	push	dpl
      002080 C0 83            [24]  432 	push	dph
                                    433 ;	dump.c:56: intr = 1;
      002082 90 40 00         [24]  434 	mov	dptr,#_intr
      002085 74 01            [12]  435 	mov	a,#0x01
      002087 F0               [24]  436 	movx	@dptr,a
                                    437 ;	dump.c:57: }
      002088 D0 83            [24]  438 	pop	dph
      00208A D0 82            [24]  439 	pop	dpl
      00208C D0 E0            [24]  440 	pop	acc
      00208E 32               [24]  441 	reti
                                    442 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    443 ;	eliminated unneeded push/pop psw
                                    444 ;	eliminated unneeded push/pop b
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'main'
                                    447 ;------------------------------------------------------------
                                    448 ;__3932160001              Allocated to registers r5 r6 
                                    449 ;a                         Allocated to registers r4 r7 
                                    450 ;__3932160003              Allocated to registers 
                                    451 ;s                         Allocated to registers r5 r6 r7 
                                    452 ;__5242880005              Allocated to registers r6 r7 
                                    453 ;a                         Allocated to registers r4 r5 
                                    454 ;------------------------------------------------------------
                                    455 ;	dump.c:62: void main(void) {
                                    456 ;	-----------------------------------------
                                    457 ;	 function main
                                    458 ;	-----------------------------------------
      00208F                        459 _main:
                           000007   460 	ar7 = 0x07
                           000006   461 	ar6 = 0x06
                           000005   462 	ar5 = 0x05
                           000004   463 	ar4 = 0x04
                           000003   464 	ar3 = 0x03
                           000002   465 	ar2 = 0x02
                           000001   466 	ar1 = 0x01
                           000000   467 	ar0 = 0x00
                                    468 ;	dump.c:63: intr = 0;
      00208F 90 40 00         [24]  469 	mov	dptr,#_intr
      002092 E4               [12]  470 	clr	a
      002093 F0               [24]  471 	movx	@dptr,a
                                    472 ;	dump.c:65: IT0 = 1;
                                    473 ;	assignBit
      002094 D2 88            [12]  474 	setb	_IT0
                                    475 ;	dump.c:66: EX0 = 1;	
                                    476 ;	assignBit
      002096 D2 A8            [12]  477 	setb	_EX0
                                    478 ;	dump.c:67: EA = 1;
                                    479 ;	assignBit
      002098 D2 AF            [12]  480 	setb	_EA
                                    481 ;	dump.c:69: P1_7 = 0; /* activate IO address space from 0xe000 to 0xffff */
                                    482 ;	assignBit
      00209A C2 97            [12]  483 	clr	_P1_7
                                    484 ;	dump.c:74: __endasm;
      00209C 00               [12]  485 	nop
      00209D 00               [12]  486 	nop
      00209E 00               [12]  487 	nop
                                    488 ;	dump.c:76: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      00209F 90 40 01         [24]  489 	mov	dptr,#_base
      0020A2 E4               [12]  490 	clr	a
      0020A3 F0               [24]  491 	movx	@dptr,a
      0020A4 A3               [24]  492 	inc	dptr
      0020A5 F0               [24]  493 	movx	@dptr,a
      0020A6 A3               [24]  494 	inc	dptr
      0020A7 F0               [24]  495 	movx	@dptr,a
      0020A8                        496 00119$:
      0020A8 90 40 00         [24]  497 	mov	dptr,#_intr
      0020AB E0               [24]  498 	movx	a,@dptr
      0020AC 60 03            [24]  499 	jz	00160$
      0020AE 02 22 99         [24]  500 	ljmp	00106$
      0020B1                        501 00160$:
                                    502 ;	dump.c:77: for (off = 0u; off < 0x400u; off += 0x20u) {
      0020B1 90 40 04         [24]  503 	mov	dptr,#_off
      0020B4 E4               [12]  504 	clr	a
      0020B5 F0               [24]  505 	movx	@dptr,a
      0020B6 A3               [24]  506 	inc	dptr
      0020B7 F0               [24]  507 	movx	@dptr,a
      0020B8                        508 00116$:
                                    509 ;	dump.c:78: print16x((unsigned int)base + off);
      0020B8 90 40 01         [24]  510 	mov	dptr,#_base
      0020BB E0               [24]  511 	movx	a,@dptr
      0020BC FD               [12]  512 	mov	r5,a
      0020BD A3               [24]  513 	inc	dptr
      0020BE E0               [24]  514 	movx	a,@dptr
      0020BF FE               [12]  515 	mov	r6,a
      0020C0 A3               [24]  516 	inc	dptr
      0020C1 E0               [24]  517 	movx	a,@dptr
      0020C2 90 40 04         [24]  518 	mov	dptr,#_off
      0020C5 E0               [24]  519 	movx	a,@dptr
      0020C6 FC               [12]  520 	mov	r4,a
      0020C7 A3               [24]  521 	inc	dptr
      0020C8 E0               [24]  522 	movx	a,@dptr
      0020C9 FF               [12]  523 	mov	r7,a
      0020CA EC               [12]  524 	mov	a,r4
      0020CB 2D               [12]  525 	add	a,r5
      0020CC FD               [12]  526 	mov	r5,a
      0020CD EF               [12]  527 	mov	a,r7
      0020CE 3E               [12]  528 	addc	a,r6
      0020CF FE               [12]  529 	mov	r6,a
      0020D0 8D 04            [24]  530 	mov	ar4,r5
                                    531 ;	dump.c:39: putchar(digits[(a >> 12) & 0xf]);
      0020D2 EE               [12]  532 	mov	a,r6
      0020D3 FF               [12]  533 	mov	r7,a
      0020D4 C4               [12]  534 	swap	a
      0020D5 54 0F            [12]  535 	anl	a,#0x0f
      0020D7 30 E3 02         [24]  536 	jnb	acc.3,00161$
      0020DA 44 F0            [12]  537 	orl	a,#0xf0
      0020DC                        538 00161$:
      0020DC FD               [12]  539 	mov	r5,a
      0020DD 33               [12]  540 	rlc	a
      0020DE 95 E0            [12]  541 	subb	a,acc
      0020E0 53 05 0F         [24]  542 	anl	ar5,#0x0f
      0020E3 7E 00            [12]  543 	mov	r6,#0x00
      0020E5 ED               [12]  544 	mov	a,r5
      0020E6 24 C2            [12]  545 	add	a,#_digits
      0020E8 F5 82            [12]  546 	mov	dpl,a
      0020EA EE               [12]  547 	mov	a,r6
      0020EB 34 22            [12]  548 	addc	a,#(_digits >> 8)
      0020ED F5 83            [12]  549 	mov	dph,a
      0020EF E4               [12]  550 	clr	a
      0020F0 93               [24]  551 	movc	a,@a+dptr
      0020F1 FE               [12]  552 	mov	r6,a
      0020F2 7D 00            [12]  553 	mov	r5,#0x00
      0020F4 8E 82            [24]  554 	mov	dpl,r6
      0020F6 8D 83            [24]  555 	mov	dph,r5
      0020F8 12 20 65         [24]  556 	lcall	_putchar
                                    557 ;	dump.c:40: putchar(digits[(a >> 8) & 0xf]);
      0020FB 8F 06            [24]  558 	mov	ar6,r7
      0020FD 53 06 0F         [24]  559 	anl	ar6,#0x0f
      002100 7D 00            [12]  560 	mov	r5,#0x00
      002102 EE               [12]  561 	mov	a,r6
      002103 24 C2            [12]  562 	add	a,#_digits
      002105 F5 82            [12]  563 	mov	dpl,a
      002107 ED               [12]  564 	mov	a,r5
      002108 34 22            [12]  565 	addc	a,#(_digits >> 8)
      00210A F5 83            [12]  566 	mov	dph,a
      00210C E4               [12]  567 	clr	a
      00210D 93               [24]  568 	movc	a,@a+dptr
      00210E FE               [12]  569 	mov	r6,a
      00210F 7D 00            [12]  570 	mov	r5,#0x00
      002111 8E 82            [24]  571 	mov	dpl,r6
      002113 8D 83            [24]  572 	mov	dph,r5
      002115 12 20 65         [24]  573 	lcall	_putchar
                                    574 ;	dump.c:41: putchar(digits[(a >> 4) & 0xf]);
      002118 8C 05            [24]  575 	mov	ar5,r4
      00211A EF               [12]  576 	mov	a,r7
      00211B C4               [12]  577 	swap	a
      00211C CD               [12]  578 	xch	a,r5
      00211D C4               [12]  579 	swap	a
      00211E 54 0F            [12]  580 	anl	a,#0x0f
      002120 6D               [12]  581 	xrl	a,r5
      002121 CD               [12]  582 	xch	a,r5
      002122 54 0F            [12]  583 	anl	a,#0x0f
      002124 CD               [12]  584 	xch	a,r5
      002125 6D               [12]  585 	xrl	a,r5
      002126 CD               [12]  586 	xch	a,r5
      002127 30 E3 02         [24]  587 	jnb	acc.3,00162$
      00212A 44 F0            [12]  588 	orl	a,#0xf0
      00212C                        589 00162$:
      00212C 53 05 0F         [24]  590 	anl	ar5,#0x0f
      00212F 7E 00            [12]  591 	mov	r6,#0x00
      002131 ED               [12]  592 	mov	a,r5
      002132 24 C2            [12]  593 	add	a,#_digits
      002134 F5 82            [12]  594 	mov	dpl,a
      002136 EE               [12]  595 	mov	a,r6
      002137 34 22            [12]  596 	addc	a,#(_digits >> 8)
      002139 F5 83            [12]  597 	mov	dph,a
      00213B E4               [12]  598 	clr	a
      00213C 93               [24]  599 	movc	a,@a+dptr
      00213D FE               [12]  600 	mov	r6,a
      00213E 7D 00            [12]  601 	mov	r5,#0x00
      002140 8E 82            [24]  602 	mov	dpl,r6
      002142 8D 83            [24]  603 	mov	dph,r5
      002144 12 20 65         [24]  604 	lcall	_putchar
                                    605 ;	dump.c:42: putchar(digits[a & 0xf]);
      002147 53 04 0F         [24]  606 	anl	ar4,#0x0f
      00214A 7F 00            [12]  607 	mov	r7,#0x00
      00214C EC               [12]  608 	mov	a,r4
      00214D 24 C2            [12]  609 	add	a,#_digits
      00214F F5 82            [12]  610 	mov	dpl,a
      002151 EF               [12]  611 	mov	a,r7
      002152 34 22            [12]  612 	addc	a,#(_digits >> 8)
      002154 F5 83            [12]  613 	mov	dph,a
      002156 E4               [12]  614 	clr	a
      002157 93               [24]  615 	movc	a,@a+dptr
      002158 FF               [12]  616 	mov	r7,a
      002159 7E 00            [12]  617 	mov	r6,#0x00
      00215B 8F 82            [24]  618 	mov	dpl,r7
      00215D 8E 83            [24]  619 	mov	dph,r6
      00215F 12 20 65         [24]  620 	lcall	_putchar
                                    621 ;	dump.c:79: printstr(" : ");
      002162 7D D2            [12]  622 	mov	r5,#___str_0
      002164 7E 22            [12]  623 	mov	r6,#(___str_0 >> 8)
      002166 7F 80            [12]  624 	mov	r7,#0x80
                                    625 ;	dump.c:50: return;
      002168                        626 00112$:
                                    627 ;	dump.c:48: for (; *s; s++) putchar(*s);
      002168 8D 82            [24]  628 	mov	dpl,r5
      00216A 8E 83            [24]  629 	mov	dph,r6
      00216C 8F F0            [24]  630 	mov	b,r7
      00216E 12 22 A2         [24]  631 	lcall	__gptrget
      002171 FC               [12]  632 	mov	r4,a
      002172 60 10            [24]  633 	jz	00109$
      002174 7B 00            [12]  634 	mov	r3,#0x00
      002176 8C 82            [24]  635 	mov	dpl,r4
      002178 8B 83            [24]  636 	mov	dph,r3
      00217A 12 20 65         [24]  637 	lcall	_putchar
      00217D 0D               [12]  638 	inc	r5
                                    639 ;	dump.c:79: printstr(" : ");
      00217E BD 00 E7         [24]  640 	cjne	r5,#0x00,00112$
      002181 0E               [12]  641 	inc	r6
      002182 80 E4            [24]  642 	sjmp	00112$
      002184                        643 00109$:
                                    644 ;	dump.c:80: for (col = 0u; col < 0x20u; col++) {
      002184 90 40 06         [24]  645 	mov	dptr,#_col
      002187 E4               [12]  646 	clr	a
      002188 F0               [24]  647 	movx	@dptr,a
      002189 A3               [24]  648 	inc	dptr
      00218A F0               [24]  649 	movx	@dptr,a
      00218B                        650 00114$:
                                    651 ;	dump.c:81: print8x(base[off + col]);
      00218B 90 40 06         [24]  652 	mov	dptr,#_col
      00218E E0               [24]  653 	movx	a,@dptr
      00218F FE               [12]  654 	mov	r6,a
      002190 A3               [24]  655 	inc	dptr
      002191 E0               [24]  656 	movx	a,@dptr
      002192 FF               [12]  657 	mov	r7,a
      002193 90 40 04         [24]  658 	mov	dptr,#_off
      002196 E0               [24]  659 	movx	a,@dptr
      002197 FC               [12]  660 	mov	r4,a
      002198 A3               [24]  661 	inc	dptr
      002199 E0               [24]  662 	movx	a,@dptr
      00219A FD               [12]  663 	mov	r5,a
      00219B EE               [12]  664 	mov	a,r6
      00219C 2C               [12]  665 	add	a,r4
      00219D FE               [12]  666 	mov	r6,a
      00219E EF               [12]  667 	mov	a,r7
      00219F 3D               [12]  668 	addc	a,r5
      0021A0 FF               [12]  669 	mov	r7,a
      0021A1 90 40 01         [24]  670 	mov	dptr,#_base
      0021A4 E0               [24]  671 	movx	a,@dptr
      0021A5 FB               [12]  672 	mov	r3,a
      0021A6 A3               [24]  673 	inc	dptr
      0021A7 E0               [24]  674 	movx	a,@dptr
      0021A8 FC               [12]  675 	mov	r4,a
      0021A9 A3               [24]  676 	inc	dptr
      0021AA E0               [24]  677 	movx	a,@dptr
      0021AB FD               [12]  678 	mov	r5,a
      0021AC EE               [12]  679 	mov	a,r6
      0021AD 2B               [12]  680 	add	a,r3
      0021AE FE               [12]  681 	mov	r6,a
      0021AF EF               [12]  682 	mov	a,r7
      0021B0 3C               [12]  683 	addc	a,r4
      0021B1 FF               [12]  684 	mov	r7,a
      0021B2 8D 02            [24]  685 	mov	ar2,r5
      0021B4 8E 82            [24]  686 	mov	dpl,r6
      0021B6 8F 83            [24]  687 	mov	dph,r7
      0021B8 8A F0            [24]  688 	mov	b,r2
      0021BA 12 22 A2         [24]  689 	lcall	__gptrget
      0021BD FE               [12]  690 	mov	r6,a
      0021BE 7F 00            [12]  691 	mov	r7,#0x00
      0021C0 8E 04            [24]  692 	mov	ar4,r6
                                    693 ;	dump.c:32: putchar(digits[(a >> 4) & 0xf]);
      0021C2 EF               [12]  694 	mov	a,r7
      0021C3 C4               [12]  695 	swap	a
      0021C4 CE               [12]  696 	xch	a,r6
      0021C5 C4               [12]  697 	swap	a
      0021C6 54 0F            [12]  698 	anl	a,#0x0f
      0021C8 6E               [12]  699 	xrl	a,r6
      0021C9 CE               [12]  700 	xch	a,r6
      0021CA 54 0F            [12]  701 	anl	a,#0x0f
      0021CC CE               [12]  702 	xch	a,r6
      0021CD 6E               [12]  703 	xrl	a,r6
      0021CE CE               [12]  704 	xch	a,r6
      0021CF 30 E3 02         [24]  705 	jnb	acc.3,00165$
      0021D2 44 F0            [12]  706 	orl	a,#0xf0
      0021D4                        707 00165$:
      0021D4 53 06 0F         [24]  708 	anl	ar6,#0x0f
      0021D7 7F 00            [12]  709 	mov	r7,#0x00
      0021D9 EE               [12]  710 	mov	a,r6
      0021DA 24 C2            [12]  711 	add	a,#_digits
      0021DC F5 82            [12]  712 	mov	dpl,a
      0021DE EF               [12]  713 	mov	a,r7
      0021DF 34 22            [12]  714 	addc	a,#(_digits >> 8)
      0021E1 F5 83            [12]  715 	mov	dph,a
      0021E3 E4               [12]  716 	clr	a
      0021E4 93               [24]  717 	movc	a,@a+dptr
      0021E5 FF               [12]  718 	mov	r7,a
      0021E6 7E 00            [12]  719 	mov	r6,#0x00
      0021E8 8F 82            [24]  720 	mov	dpl,r7
      0021EA 8E 83            [24]  721 	mov	dph,r6
      0021EC 12 20 65         [24]  722 	lcall	_putchar
                                    723 ;	dump.c:33: putchar(digits[a & 0xf]);
      0021EF 53 04 0F         [24]  724 	anl	ar4,#0x0f
      0021F2 7D 00            [12]  725 	mov	r5,#0x00
      0021F4 EC               [12]  726 	mov	a,r4
      0021F5 24 C2            [12]  727 	add	a,#_digits
      0021F7 F5 82            [12]  728 	mov	dpl,a
      0021F9 ED               [12]  729 	mov	a,r5
      0021FA 34 22            [12]  730 	addc	a,#(_digits >> 8)
      0021FC F5 83            [12]  731 	mov	dph,a
      0021FE E4               [12]  732 	clr	a
      0021FF 93               [24]  733 	movc	a,@a+dptr
      002200 FF               [12]  734 	mov	r7,a
      002201 7E 00            [12]  735 	mov	r6,#0x00
      002203 8F 82            [24]  736 	mov	dpl,r7
      002205 8E 83            [24]  737 	mov	dph,r6
      002207 12 20 65         [24]  738 	lcall	_putchar
                                    739 ;	dump.c:82: if (col == 0x1fu) {
      00220A 90 40 06         [24]  740 	mov	dptr,#_col
      00220D E0               [24]  741 	movx	a,@dptr
      00220E FE               [12]  742 	mov	r6,a
      00220F A3               [24]  743 	inc	dptr
      002210 E0               [24]  744 	movx	a,@dptr
      002211 FF               [12]  745 	mov	r7,a
      002212 BE 1F 11         [24]  746 	cjne	r6,#0x1f,00102$
      002215 BF 00 0E         [24]  747 	cjne	r7,#0x00,00102$
                                    748 ;	dump.c:83: putchar('\r'); putchar('\n');
      002218 90 00 0D         [24]  749 	mov	dptr,#0x000d
      00221B 12 20 65         [24]  750 	lcall	_putchar
      00221E 90 00 0A         [24]  751 	mov	dptr,#0x000a
      002221 12 20 65         [24]  752 	lcall	_putchar
      002224 80 06            [24]  753 	sjmp	00115$
      002226                        754 00102$:
                                    755 ;	dump.c:84: } else putchar(' ');
      002226 90 00 20         [24]  756 	mov	dptr,#0x0020
      002229 12 20 65         [24]  757 	lcall	_putchar
      00222C                        758 00115$:
                                    759 ;	dump.c:80: for (col = 0u; col < 0x20u; col++) {
      00222C 90 40 06         [24]  760 	mov	dptr,#_col
      00222F E0               [24]  761 	movx	a,@dptr
      002230 24 01            [12]  762 	add	a,#0x01
      002232 F0               [24]  763 	movx	@dptr,a
      002233 A3               [24]  764 	inc	dptr
      002234 E0               [24]  765 	movx	a,@dptr
      002235 34 00            [12]  766 	addc	a,#0x00
      002237 F0               [24]  767 	movx	@dptr,a
      002238 90 40 06         [24]  768 	mov	dptr,#_col
      00223B E0               [24]  769 	movx	a,@dptr
      00223C FE               [12]  770 	mov	r6,a
      00223D A3               [24]  771 	inc	dptr
      00223E E0               [24]  772 	movx	a,@dptr
      00223F FF               [12]  773 	mov	r7,a
      002240 C3               [12]  774 	clr	c
      002241 EE               [12]  775 	mov	a,r6
      002242 94 20            [12]  776 	subb	a,#0x20
      002244 EF               [12]  777 	mov	a,r7
      002245 94 00            [12]  778 	subb	a,#0x00
      002247 50 03            [24]  779 	jnc	00168$
      002249 02 21 8B         [24]  780 	ljmp	00114$
      00224C                        781 00168$:
                                    782 ;	dump.c:77: for (off = 0u; off < 0x400u; off += 0x20u) {
      00224C 90 40 04         [24]  783 	mov	dptr,#_off
      00224F E0               [24]  784 	movx	a,@dptr
      002250 FE               [12]  785 	mov	r6,a
      002251 A3               [24]  786 	inc	dptr
      002252 E0               [24]  787 	movx	a,@dptr
      002253 FF               [12]  788 	mov	r7,a
      002254 90 40 04         [24]  789 	mov	dptr,#_off
      002257 74 20            [12]  790 	mov	a,#0x20
      002259 2E               [12]  791 	add	a,r6
      00225A F0               [24]  792 	movx	@dptr,a
      00225B E4               [12]  793 	clr	a
      00225C 3F               [12]  794 	addc	a,r7
      00225D A3               [24]  795 	inc	dptr
      00225E F0               [24]  796 	movx	@dptr,a
      00225F 90 40 04         [24]  797 	mov	dptr,#_off
      002262 E0               [24]  798 	movx	a,@dptr
      002263 FE               [12]  799 	mov	r6,a
      002264 A3               [24]  800 	inc	dptr
      002265 E0               [24]  801 	movx	a,@dptr
      002266 FF               [12]  802 	mov	r7,a
      002267 C3               [12]  803 	clr	c
      002268 94 04            [12]  804 	subb	a,#0x04
      00226A 50 03            [24]  805 	jnc	00169$
      00226C 02 20 B8         [24]  806 	ljmp	00116$
      00226F                        807 00169$:
                                    808 ;	dump.c:87: getchar();
      00226F 12 20 6F         [24]  809 	lcall	_getchar
                                    810 ;	dump.c:88: putchar('\r'); putchar('\n');
      002272 90 00 0D         [24]  811 	mov	dptr,#0x000d
      002275 12 20 65         [24]  812 	lcall	_putchar
      002278 90 00 0A         [24]  813 	mov	dptr,#0x000a
      00227B 12 20 65         [24]  814 	lcall	_putchar
                                    815 ;	dump.c:76: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      00227E 90 40 01         [24]  816 	mov	dptr,#_base
      002281 E0               [24]  817 	movx	a,@dptr
      002282 FD               [12]  818 	mov	r5,a
      002283 A3               [24]  819 	inc	dptr
      002284 E0               [24]  820 	movx	a,@dptr
      002285 FE               [12]  821 	mov	r6,a
      002286 A3               [24]  822 	inc	dptr
      002287 E0               [24]  823 	movx	a,@dptr
      002288 FF               [12]  824 	mov	r7,a
      002289 90 40 01         [24]  825 	mov	dptr,#_base
      00228C ED               [12]  826 	mov	a,r5
      00228D F0               [24]  827 	movx	@dptr,a
      00228E 74 04            [12]  828 	mov	a,#0x04
      002290 2E               [12]  829 	add	a,r6
      002291 A3               [24]  830 	inc	dptr
      002292 F0               [24]  831 	movx	@dptr,a
      002293 EF               [12]  832 	mov	a,r7
      002294 A3               [24]  833 	inc	dptr
      002295 F0               [24]  834 	movx	@dptr,a
      002296 02 20 A8         [24]  835 	ljmp	00119$
      002299                        836 00106$:
                                    837 ;	dump.c:91: P1_7 = 1; /* deactivate IO address space from 0xe000 to 0xffff */
                                    838 ;	assignBit
      002299 D2 97            [12]  839 	setb	_P1_7
                                    840 ;	dump.c:96: __endasm;
      00229B 00               [12]  841 	nop
      00229C 00               [12]  842 	nop
      00229D 00               [12]  843 	nop
                                    844 ;	dump.c:98: PCON |= 2;
      00229E 43 87 02         [24]  845 	orl	_PCON,#0x02
                                    846 ;	dump.c:100: return;
                                    847 ;	dump.c:101: }
      0022A1 22               [24]  848 	ret
                                    849 	.area CSEG    (CODE)
                                    850 	.area CONST   (CODE)
      0022C2                        851 _digits:
      0022C2 30                     852 	.db #0x30	; 48	'0'
      0022C3 31                     853 	.db #0x31	; 49	'1'
      0022C4 32                     854 	.db #0x32	; 50	'2'
      0022C5 33                     855 	.db #0x33	; 51	'3'
      0022C6 34                     856 	.db #0x34	; 52	'4'
      0022C7 35                     857 	.db #0x35	; 53	'5'
      0022C8 36                     858 	.db #0x36	; 54	'6'
      0022C9 37                     859 	.db #0x37	; 55	'7'
      0022CA 38                     860 	.db #0x38	; 56	'8'
      0022CB 39                     861 	.db #0x39	; 57	'9'
      0022CC 61                     862 	.db #0x61	; 97	'a'
      0022CD 62                     863 	.db #0x62	; 98	'b'
      0022CE 63                     864 	.db #0x63	; 99	'c'
      0022CF 64                     865 	.db #0x64	; 100	'd'
      0022D0 65                     866 	.db #0x65	; 101	'e'
      0022D1 66                     867 	.db #0x66	; 102	'f'
                                    868 	.area CONST   (CODE)
      0022D2                        869 ___str_0:
      0022D2 20 3A 20               870 	.ascii " : "
      0022D5 00                     871 	.db 0x00
                                    872 	.area CSEG    (CODE)
                                    873 	.area XINIT   (CODE)
                                    874 	.area CABS    (ABS,CODE)
