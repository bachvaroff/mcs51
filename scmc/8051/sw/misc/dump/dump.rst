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
      002003 02 20 65         [24]  349 	ljmp	_int0
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
      002006 02 20 78         [24]  371 	ljmp	_main
                                    372 ;	return from main will return to caller
                                    373 ;--------------------------------------------------------
                                    374 ; code
                                    375 ;--------------------------------------------------------
                                    376 	.area CSEG    (CODE)
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'int0'
                                    379 ;------------------------------------------------------------
                                    380 ;	dump.c:34: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    381 ;	-----------------------------------------
                                    382 ;	 function int0
                                    383 ;	-----------------------------------------
      002065                        384 _int0:
                           00000F   385 	ar7 = 0x0f
                           00000E   386 	ar6 = 0x0e
                           00000D   387 	ar5 = 0x0d
                           00000C   388 	ar4 = 0x0c
                           00000B   389 	ar3 = 0x0b
                           00000A   390 	ar2 = 0x0a
                           000009   391 	ar1 = 0x09
                           000008   392 	ar0 = 0x08
      002065 C0 E0            [24]  393 	push	acc
      002067 C0 82            [24]  394 	push	dpl
      002069 C0 83            [24]  395 	push	dph
                                    396 ;	dump.c:35: intr = 1;
      00206B 90 40 00         [24]  397 	mov	dptr,#_intr
      00206E 74 01            [12]  398 	mov	a,#0x01
      002070 F0               [24]  399 	movx	@dptr,a
                                    400 ;	dump.c:36: }
      002071 D0 83            [24]  401 	pop	dph
      002073 D0 82            [24]  402 	pop	dpl
      002075 D0 E0            [24]  403 	pop	acc
      002077 32               [24]  404 	reti
                                    405 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    406 ;	eliminated unneeded push/pop psw
                                    407 ;	eliminated unneeded push/pop b
                                    408 ;------------------------------------------------------------
                                    409 ;Allocation info for local variables in function 'main'
                                    410 ;------------------------------------------------------------
                                    411 ;__3932160001              Allocated to registers r5 r6 
                                    412 ;a                         Allocated to registers r4 r7 
                                    413 ;__3932160003              Allocated to registers 
                                    414 ;s                         Allocated to registers r5 r6 r7 
                                    415 ;__5242880005              Allocated to registers r6 r7 
                                    416 ;a                         Allocated to registers r4 r5 
                                    417 ;------------------------------------------------------------
                                    418 ;	dump.c:41: void main(void) {
                                    419 ;	-----------------------------------------
                                    420 ;	 function main
                                    421 ;	-----------------------------------------
      002078                        422 _main:
                           000007   423 	ar7 = 0x07
                           000006   424 	ar6 = 0x06
                           000005   425 	ar5 = 0x05
                           000004   426 	ar4 = 0x04
                           000003   427 	ar3 = 0x03
                           000002   428 	ar2 = 0x02
                           000001   429 	ar1 = 0x01
                           000000   430 	ar0 = 0x00
                                    431 ;	dump.c:42: intr = 0;
      002078 90 40 00         [24]  432 	mov	dptr,#_intr
      00207B E4               [12]  433 	clr	a
      00207C F0               [24]  434 	movx	@dptr,a
                                    435 ;	dump.c:44: IT0 = 1;
                                    436 ;	assignBit
      00207D D2 88            [12]  437 	setb	_IT0
                                    438 ;	dump.c:45: EX0 = 1;	
                                    439 ;	assignBit
      00207F D2 A8            [12]  440 	setb	_EX0
                                    441 ;	dump.c:46: EA = 1;
                                    442 ;	assignBit
      002081 D2 AF            [12]  443 	setb	_EA
                                    444 ;	dump.c:48: P1_7 = 0; /* activate IO address space from 0xe000 to 0xffff */
                                    445 ;	assignBit
      002083 C2 97            [12]  446 	clr	_P1_7
                                    447 ;	dump.c:53: __endasm;
      002085 00               [12]  448 	nop
      002086 00               [12]  449 	nop
      002087 00               [12]  450 	nop
                                    451 ;	dump.c:55: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      002088 90 40 01         [24]  452 	mov	dptr,#_base
      00208B E4               [12]  453 	clr	a
      00208C F0               [24]  454 	movx	@dptr,a
      00208D A3               [24]  455 	inc	dptr
      00208E F0               [24]  456 	movx	@dptr,a
      00208F A3               [24]  457 	inc	dptr
      002090 F0               [24]  458 	movx	@dptr,a
      002091                        459 00119$:
      002091 90 40 00         [24]  460 	mov	dptr,#_intr
      002094 E0               [24]  461 	movx	a,@dptr
      002095 60 03            [24]  462 	jz	00160$
      002097 02 22 AF         [24]  463 	ljmp	00106$
      00209A                        464 00160$:
                                    465 ;	dump.c:56: for (off = 0u; off < 0x400u; off += 0x20u) {
      00209A 90 40 04         [24]  466 	mov	dptr,#_off
      00209D E4               [12]  467 	clr	a
      00209E F0               [24]  468 	movx	@dptr,a
      00209F A3               [24]  469 	inc	dptr
      0020A0 F0               [24]  470 	movx	@dptr,a
      0020A1                        471 00116$:
                                    472 ;	dump.c:57: print16x((unsigned int)base + off);
      0020A1 90 40 01         [24]  473 	mov	dptr,#_base
      0020A4 E0               [24]  474 	movx	a,@dptr
      0020A5 FD               [12]  475 	mov	r5,a
      0020A6 A3               [24]  476 	inc	dptr
      0020A7 E0               [24]  477 	movx	a,@dptr
      0020A8 FE               [12]  478 	mov	r6,a
      0020A9 A3               [24]  479 	inc	dptr
      0020AA E0               [24]  480 	movx	a,@dptr
      0020AB 90 40 04         [24]  481 	mov	dptr,#_off
      0020AE E0               [24]  482 	movx	a,@dptr
      0020AF FC               [12]  483 	mov	r4,a
      0020B0 A3               [24]  484 	inc	dptr
      0020B1 E0               [24]  485 	movx	a,@dptr
      0020B2 FF               [12]  486 	mov	r7,a
      0020B3 EC               [12]  487 	mov	a,r4
      0020B4 2D               [12]  488 	add	a,r5
      0020B5 FD               [12]  489 	mov	r5,a
      0020B6 EF               [12]  490 	mov	a,r7
      0020B7 3E               [12]  491 	addc	a,r6
      0020B8 FE               [12]  492 	mov	r6,a
      0020B9 8D 04            [24]  493 	mov	ar4,r5
                                    494 ;	dump.c:18: putchar(digits[(a >> 12) & 0xf]);
      0020BB EE               [12]  495 	mov	a,r6
      0020BC FF               [12]  496 	mov	r7,a
      0020BD C4               [12]  497 	swap	a
      0020BE 54 0F            [12]  498 	anl	a,#0x0f
      0020C0 30 E3 02         [24]  499 	jnb	acc.3,00161$
      0020C3 44 F0            [12]  500 	orl	a,#0xf0
      0020C5                        501 00161$:
      0020C5 FD               [12]  502 	mov	r5,a
      0020C6 33               [12]  503 	rlc	a
      0020C7 95 E0            [12]  504 	subb	a,acc
      0020C9 53 05 0F         [24]  505 	anl	ar5,#0x0f
      0020CC 7E 00            [12]  506 	mov	r6,#0x00
      0020CE ED               [12]  507 	mov	a,r5
      0020CF 24 09            [12]  508 	add	a,#_digits
      0020D1 F5 82            [12]  509 	mov	dpl,a
      0020D3 EE               [12]  510 	mov	a,r6
      0020D4 34 23            [12]  511 	addc	a,#(_digits >> 8)
      0020D6 F5 83            [12]  512 	mov	dph,a
      0020D8 E4               [12]  513 	clr	a
      0020D9 93               [24]  514 	movc	a,@a+dptr
      0020DA FE               [12]  515 	mov	r6,a
      0020DB 7D 00            [12]  516 	mov	r5,#0x00
      0020DD 8E 82            [24]  517 	mov	dpl,r6
      0020DF 8D 83            [24]  518 	mov	dph,r5
      0020E1 C0 07            [24]  519 	push	ar7
      0020E3 C0 04            [24]  520 	push	ar4
      0020E5 12 22 B8         [24]  521 	lcall	_putchar
      0020E8 D0 04            [24]  522 	pop	ar4
      0020EA D0 07            [24]  523 	pop	ar7
                                    524 ;	dump.c:19: putchar(digits[(a >> 8) & 0xf]);
      0020EC 8F 06            [24]  525 	mov	ar6,r7
      0020EE 53 06 0F         [24]  526 	anl	ar6,#0x0f
      0020F1 7D 00            [12]  527 	mov	r5,#0x00
      0020F3 EE               [12]  528 	mov	a,r6
      0020F4 24 09            [12]  529 	add	a,#_digits
      0020F6 F5 82            [12]  530 	mov	dpl,a
      0020F8 ED               [12]  531 	mov	a,r5
      0020F9 34 23            [12]  532 	addc	a,#(_digits >> 8)
      0020FB F5 83            [12]  533 	mov	dph,a
      0020FD E4               [12]  534 	clr	a
      0020FE 93               [24]  535 	movc	a,@a+dptr
      0020FF FE               [12]  536 	mov	r6,a
      002100 7D 00            [12]  537 	mov	r5,#0x00
      002102 8E 82            [24]  538 	mov	dpl,r6
      002104 8D 83            [24]  539 	mov	dph,r5
      002106 C0 07            [24]  540 	push	ar7
      002108 C0 04            [24]  541 	push	ar4
      00210A 12 22 B8         [24]  542 	lcall	_putchar
      00210D D0 04            [24]  543 	pop	ar4
      00210F D0 07            [24]  544 	pop	ar7
                                    545 ;	dump.c:20: putchar(digits[(a >> 4) & 0xf]);
      002111 8C 05            [24]  546 	mov	ar5,r4
      002113 EF               [12]  547 	mov	a,r7
      002114 C4               [12]  548 	swap	a
      002115 CD               [12]  549 	xch	a,r5
      002116 C4               [12]  550 	swap	a
      002117 54 0F            [12]  551 	anl	a,#0x0f
      002119 6D               [12]  552 	xrl	a,r5
      00211A CD               [12]  553 	xch	a,r5
      00211B 54 0F            [12]  554 	anl	a,#0x0f
      00211D CD               [12]  555 	xch	a,r5
      00211E 6D               [12]  556 	xrl	a,r5
      00211F CD               [12]  557 	xch	a,r5
      002120 30 E3 02         [24]  558 	jnb	acc.3,00162$
      002123 44 F0            [12]  559 	orl	a,#0xf0
      002125                        560 00162$:
      002125 53 05 0F         [24]  561 	anl	ar5,#0x0f
      002128 7E 00            [12]  562 	mov	r6,#0x00
      00212A ED               [12]  563 	mov	a,r5
      00212B 24 09            [12]  564 	add	a,#_digits
      00212D F5 82            [12]  565 	mov	dpl,a
      00212F EE               [12]  566 	mov	a,r6
      002130 34 23            [12]  567 	addc	a,#(_digits >> 8)
      002132 F5 83            [12]  568 	mov	dph,a
      002134 E4               [12]  569 	clr	a
      002135 93               [24]  570 	movc	a,@a+dptr
      002136 FE               [12]  571 	mov	r6,a
      002137 7D 00            [12]  572 	mov	r5,#0x00
      002139 8E 82            [24]  573 	mov	dpl,r6
      00213B 8D 83            [24]  574 	mov	dph,r5
      00213D C0 07            [24]  575 	push	ar7
      00213F C0 04            [24]  576 	push	ar4
      002141 12 22 B8         [24]  577 	lcall	_putchar
      002144 D0 04            [24]  578 	pop	ar4
      002146 D0 07            [24]  579 	pop	ar7
                                    580 ;	dump.c:21: putchar(digits[a & 0xf]);
      002148 53 04 0F         [24]  581 	anl	ar4,#0x0f
      00214B 7F 00            [12]  582 	mov	r7,#0x00
      00214D EC               [12]  583 	mov	a,r4
      00214E 24 09            [12]  584 	add	a,#_digits
      002150 F5 82            [12]  585 	mov	dpl,a
      002152 EF               [12]  586 	mov	a,r7
      002153 34 23            [12]  587 	addc	a,#(_digits >> 8)
      002155 F5 83            [12]  588 	mov	dph,a
      002157 E4               [12]  589 	clr	a
      002158 93               [24]  590 	movc	a,@a+dptr
      002159 FF               [12]  591 	mov	r7,a
      00215A 7E 00            [12]  592 	mov	r6,#0x00
      00215C 8F 82            [24]  593 	mov	dpl,r7
      00215E 8E 83            [24]  594 	mov	dph,r6
      002160 12 22 B8         [24]  595 	lcall	_putchar
                                    596 ;	dump.c:58: printstr(" : ");
      002163 7D 19            [12]  597 	mov	r5,#___str_0
      002165 7E 23            [12]  598 	mov	r6,#(___str_0 >> 8)
      002167 7F 80            [12]  599 	mov	r7,#0x80
                                    600 ;	dump.c:29: return;
      002169                        601 00112$:
                                    602 ;	dump.c:27: for (; *s; s++) putchar(*s);
      002169 8D 82            [24]  603 	mov	dpl,r5
      00216B 8E 83            [24]  604 	mov	dph,r6
      00216D 8F F0            [24]  605 	mov	b,r7
      00216F 12 22 E9         [24]  606 	lcall	__gptrget
      002172 FC               [12]  607 	mov	r4,a
      002173 60 1C            [24]  608 	jz	00109$
      002175 7B 00            [12]  609 	mov	r3,#0x00
      002177 8C 82            [24]  610 	mov	dpl,r4
      002179 8B 83            [24]  611 	mov	dph,r3
      00217B C0 07            [24]  612 	push	ar7
      00217D C0 06            [24]  613 	push	ar6
      00217F C0 05            [24]  614 	push	ar5
      002181 12 22 B8         [24]  615 	lcall	_putchar
      002184 D0 05            [24]  616 	pop	ar5
      002186 D0 06            [24]  617 	pop	ar6
      002188 D0 07            [24]  618 	pop	ar7
      00218A 0D               [12]  619 	inc	r5
                                    620 ;	dump.c:58: printstr(" : ");
      00218B BD 00 DB         [24]  621 	cjne	r5,#0x00,00112$
      00218E 0E               [12]  622 	inc	r6
      00218F 80 D8            [24]  623 	sjmp	00112$
      002191                        624 00109$:
                                    625 ;	dump.c:59: for (col = 0u; col < 0x20u; col++) {
      002191 90 40 06         [24]  626 	mov	dptr,#_col
      002194 E4               [12]  627 	clr	a
      002195 F0               [24]  628 	movx	@dptr,a
      002196 A3               [24]  629 	inc	dptr
      002197 F0               [24]  630 	movx	@dptr,a
      002198                        631 00114$:
                                    632 ;	dump.c:60: print8x(base[off + col]);
      002198 90 40 06         [24]  633 	mov	dptr,#_col
      00219B E0               [24]  634 	movx	a,@dptr
      00219C FE               [12]  635 	mov	r6,a
      00219D A3               [24]  636 	inc	dptr
      00219E E0               [24]  637 	movx	a,@dptr
      00219F FF               [12]  638 	mov	r7,a
      0021A0 90 40 04         [24]  639 	mov	dptr,#_off
      0021A3 E0               [24]  640 	movx	a,@dptr
      0021A4 FC               [12]  641 	mov	r4,a
      0021A5 A3               [24]  642 	inc	dptr
      0021A6 E0               [24]  643 	movx	a,@dptr
      0021A7 FD               [12]  644 	mov	r5,a
      0021A8 EE               [12]  645 	mov	a,r6
      0021A9 2C               [12]  646 	add	a,r4
      0021AA FE               [12]  647 	mov	r6,a
      0021AB EF               [12]  648 	mov	a,r7
      0021AC 3D               [12]  649 	addc	a,r5
      0021AD FF               [12]  650 	mov	r7,a
      0021AE 90 40 01         [24]  651 	mov	dptr,#_base
      0021B1 E0               [24]  652 	movx	a,@dptr
      0021B2 FB               [12]  653 	mov	r3,a
      0021B3 A3               [24]  654 	inc	dptr
      0021B4 E0               [24]  655 	movx	a,@dptr
      0021B5 FC               [12]  656 	mov	r4,a
      0021B6 A3               [24]  657 	inc	dptr
      0021B7 E0               [24]  658 	movx	a,@dptr
      0021B8 FD               [12]  659 	mov	r5,a
      0021B9 EE               [12]  660 	mov	a,r6
      0021BA 2B               [12]  661 	add	a,r3
      0021BB FE               [12]  662 	mov	r6,a
      0021BC EF               [12]  663 	mov	a,r7
      0021BD 3C               [12]  664 	addc	a,r4
      0021BE FF               [12]  665 	mov	r7,a
      0021BF 8D 02            [24]  666 	mov	ar2,r5
      0021C1 8E 82            [24]  667 	mov	dpl,r6
      0021C3 8F 83            [24]  668 	mov	dph,r7
      0021C5 8A F0            [24]  669 	mov	b,r2
      0021C7 12 22 E9         [24]  670 	lcall	__gptrget
      0021CA FE               [12]  671 	mov	r6,a
      0021CB 7F 00            [12]  672 	mov	r7,#0x00
      0021CD 8E 04            [24]  673 	mov	ar4,r6
                                    674 ;	dump.c:11: putchar(digits[(a >> 4) & 0xf]);
      0021CF EF               [12]  675 	mov	a,r7
      0021D0 FD               [12]  676 	mov	r5,a
      0021D1 C4               [12]  677 	swap	a
      0021D2 CE               [12]  678 	xch	a,r6
      0021D3 C4               [12]  679 	swap	a
      0021D4 54 0F            [12]  680 	anl	a,#0x0f
      0021D6 6E               [12]  681 	xrl	a,r6
      0021D7 CE               [12]  682 	xch	a,r6
      0021D8 54 0F            [12]  683 	anl	a,#0x0f
      0021DA CE               [12]  684 	xch	a,r6
      0021DB 6E               [12]  685 	xrl	a,r6
      0021DC CE               [12]  686 	xch	a,r6
      0021DD 30 E3 02         [24]  687 	jnb	acc.3,00165$
      0021E0 44 F0            [12]  688 	orl	a,#0xf0
      0021E2                        689 00165$:
      0021E2 53 06 0F         [24]  690 	anl	ar6,#0x0f
      0021E5 7F 00            [12]  691 	mov	r7,#0x00
      0021E7 EE               [12]  692 	mov	a,r6
      0021E8 24 09            [12]  693 	add	a,#_digits
      0021EA F5 82            [12]  694 	mov	dpl,a
      0021EC EF               [12]  695 	mov	a,r7
      0021ED 34 23            [12]  696 	addc	a,#(_digits >> 8)
      0021EF F5 83            [12]  697 	mov	dph,a
      0021F1 E4               [12]  698 	clr	a
      0021F2 93               [24]  699 	movc	a,@a+dptr
      0021F3 FF               [12]  700 	mov	r7,a
      0021F4 7E 00            [12]  701 	mov	r6,#0x00
      0021F6 8F 82            [24]  702 	mov	dpl,r7
      0021F8 8E 83            [24]  703 	mov	dph,r6
      0021FA C0 05            [24]  704 	push	ar5
      0021FC C0 04            [24]  705 	push	ar4
      0021FE 12 22 B8         [24]  706 	lcall	_putchar
      002201 D0 04            [24]  707 	pop	ar4
      002203 D0 05            [24]  708 	pop	ar5
                                    709 ;	dump.c:12: putchar(digits[a & 0xf]);
      002205 53 04 0F         [24]  710 	anl	ar4,#0x0f
      002208 7D 00            [12]  711 	mov	r5,#0x00
      00220A EC               [12]  712 	mov	a,r4
      00220B 24 09            [12]  713 	add	a,#_digits
      00220D F5 82            [12]  714 	mov	dpl,a
      00220F ED               [12]  715 	mov	a,r5
      002210 34 23            [12]  716 	addc	a,#(_digits >> 8)
      002212 F5 83            [12]  717 	mov	dph,a
      002214 E4               [12]  718 	clr	a
      002215 93               [24]  719 	movc	a,@a+dptr
      002216 FF               [12]  720 	mov	r7,a
      002217 7E 00            [12]  721 	mov	r6,#0x00
      002219 8F 82            [24]  722 	mov	dpl,r7
      00221B 8E 83            [24]  723 	mov	dph,r6
      00221D 12 22 B8         [24]  724 	lcall	_putchar
                                    725 ;	dump.c:61: if (col == 0x1fu) {
      002220 90 40 06         [24]  726 	mov	dptr,#_col
      002223 E0               [24]  727 	movx	a,@dptr
      002224 FE               [12]  728 	mov	r6,a
      002225 A3               [24]  729 	inc	dptr
      002226 E0               [24]  730 	movx	a,@dptr
      002227 FF               [12]  731 	mov	r7,a
      002228 BE 1F 11         [24]  732 	cjne	r6,#0x1f,00102$
      00222B BF 00 0E         [24]  733 	cjne	r7,#0x00,00102$
                                    734 ;	dump.c:62: putchar('\r'); putchar('\n');
      00222E 90 00 0D         [24]  735 	mov	dptr,#0x000d
      002231 12 22 B8         [24]  736 	lcall	_putchar
      002234 90 00 0A         [24]  737 	mov	dptr,#0x000a
      002237 12 22 B8         [24]  738 	lcall	_putchar
      00223A 80 06            [24]  739 	sjmp	00115$
      00223C                        740 00102$:
                                    741 ;	dump.c:63: } else putchar(' ');
      00223C 90 00 20         [24]  742 	mov	dptr,#0x0020
      00223F 12 22 B8         [24]  743 	lcall	_putchar
      002242                        744 00115$:
                                    745 ;	dump.c:59: for (col = 0u; col < 0x20u; col++) {
      002242 90 40 06         [24]  746 	mov	dptr,#_col
      002245 E0               [24]  747 	movx	a,@dptr
      002246 24 01            [12]  748 	add	a,#0x01
      002248 F0               [24]  749 	movx	@dptr,a
      002249 A3               [24]  750 	inc	dptr
      00224A E0               [24]  751 	movx	a,@dptr
      00224B 34 00            [12]  752 	addc	a,#0x00
      00224D F0               [24]  753 	movx	@dptr,a
      00224E 90 40 06         [24]  754 	mov	dptr,#_col
      002251 E0               [24]  755 	movx	a,@dptr
      002252 FE               [12]  756 	mov	r6,a
      002253 A3               [24]  757 	inc	dptr
      002254 E0               [24]  758 	movx	a,@dptr
      002255 FF               [12]  759 	mov	r7,a
      002256 C3               [12]  760 	clr	c
      002257 EE               [12]  761 	mov	a,r6
      002258 94 20            [12]  762 	subb	a,#0x20
      00225A EF               [12]  763 	mov	a,r7
      00225B 94 00            [12]  764 	subb	a,#0x00
      00225D 50 03            [24]  765 	jnc	00168$
      00225F 02 21 98         [24]  766 	ljmp	00114$
      002262                        767 00168$:
                                    768 ;	dump.c:56: for (off = 0u; off < 0x400u; off += 0x20u) {
      002262 90 40 04         [24]  769 	mov	dptr,#_off
      002265 E0               [24]  770 	movx	a,@dptr
      002266 FE               [12]  771 	mov	r6,a
      002267 A3               [24]  772 	inc	dptr
      002268 E0               [24]  773 	movx	a,@dptr
      002269 FF               [12]  774 	mov	r7,a
      00226A 90 40 04         [24]  775 	mov	dptr,#_off
      00226D 74 20            [12]  776 	mov	a,#0x20
      00226F 2E               [12]  777 	add	a,r6
      002270 F0               [24]  778 	movx	@dptr,a
      002271 E4               [12]  779 	clr	a
      002272 3F               [12]  780 	addc	a,r7
      002273 A3               [24]  781 	inc	dptr
      002274 F0               [24]  782 	movx	@dptr,a
      002275 90 40 04         [24]  783 	mov	dptr,#_off
      002278 E0               [24]  784 	movx	a,@dptr
      002279 FE               [12]  785 	mov	r6,a
      00227A A3               [24]  786 	inc	dptr
      00227B E0               [24]  787 	movx	a,@dptr
      00227C FF               [12]  788 	mov	r7,a
      00227D C3               [12]  789 	clr	c
      00227E 94 04            [12]  790 	subb	a,#0x04
      002280 50 03            [24]  791 	jnc	00169$
      002282 02 20 A1         [24]  792 	ljmp	00116$
      002285                        793 00169$:
                                    794 ;	dump.c:66: getchar();
      002285 12 22 C2         [24]  795 	lcall	_getchar
                                    796 ;	dump.c:67: putchar('\r'); putchar('\n');
      002288 90 00 0D         [24]  797 	mov	dptr,#0x000d
      00228B 12 22 B8         [24]  798 	lcall	_putchar
      00228E 90 00 0A         [24]  799 	mov	dptr,#0x000a
      002291 12 22 B8         [24]  800 	lcall	_putchar
                                    801 ;	dump.c:55: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      002294 90 40 01         [24]  802 	mov	dptr,#_base
      002297 E0               [24]  803 	movx	a,@dptr
      002298 FD               [12]  804 	mov	r5,a
      002299 A3               [24]  805 	inc	dptr
      00229A E0               [24]  806 	movx	a,@dptr
      00229B FE               [12]  807 	mov	r6,a
      00229C A3               [24]  808 	inc	dptr
      00229D E0               [24]  809 	movx	a,@dptr
      00229E FF               [12]  810 	mov	r7,a
      00229F 90 40 01         [24]  811 	mov	dptr,#_base
      0022A2 ED               [12]  812 	mov	a,r5
      0022A3 F0               [24]  813 	movx	@dptr,a
      0022A4 74 04            [12]  814 	mov	a,#0x04
      0022A6 2E               [12]  815 	add	a,r6
      0022A7 A3               [24]  816 	inc	dptr
      0022A8 F0               [24]  817 	movx	@dptr,a
      0022A9 EF               [12]  818 	mov	a,r7
      0022AA A3               [24]  819 	inc	dptr
      0022AB F0               [24]  820 	movx	@dptr,a
      0022AC 02 20 91         [24]  821 	ljmp	00119$
      0022AF                        822 00106$:
                                    823 ;	dump.c:70: P1_7 = 1; /* deactivate IO address space from 0xe000 to 0xffff */
                                    824 ;	assignBit
      0022AF D2 97            [12]  825 	setb	_P1_7
                                    826 ;	dump.c:75: __endasm;
      0022B1 00               [12]  827 	nop
      0022B2 00               [12]  828 	nop
      0022B3 00               [12]  829 	nop
                                    830 ;	dump.c:77: PCON |= 2;
      0022B4 43 87 02         [24]  831 	orl	_PCON,#0x02
                                    832 ;	dump.c:79: return;
                                    833 ;	dump.c:80: }
      0022B7 22               [24]  834 	ret
                                    835 	.area CSEG    (CODE)
                                    836 	.area CONST   (CODE)
      002309                        837 _digits:
      002309 30                     838 	.db #0x30	; 48	'0'
      00230A 31                     839 	.db #0x31	; 49	'1'
      00230B 32                     840 	.db #0x32	; 50	'2'
      00230C 33                     841 	.db #0x33	; 51	'3'
      00230D 34                     842 	.db #0x34	; 52	'4'
      00230E 35                     843 	.db #0x35	; 53	'5'
      00230F 36                     844 	.db #0x36	; 54	'6'
      002310 37                     845 	.db #0x37	; 55	'7'
      002311 38                     846 	.db #0x38	; 56	'8'
      002312 39                     847 	.db #0x39	; 57	'9'
      002313 61                     848 	.db #0x61	; 97	'a'
      002314 62                     849 	.db #0x62	; 98	'b'
      002315 63                     850 	.db #0x63	; 99	'c'
      002316 64                     851 	.db #0x64	; 100	'd'
      002317 65                     852 	.db #0x65	; 101	'e'
      002318 66                     853 	.db #0x66	; 102	'f'
                                    854 	.area CONST   (CODE)
      002319                        855 ___str_0:
      002319 20 3A 20               856 	.ascii " : "
      00231C 00                     857 	.db 0x00
                                    858 	.area CSEG    (CODE)
                                    859 	.area XINIT   (CODE)
                                    860 	.area CABS    (ABS,CODE)
