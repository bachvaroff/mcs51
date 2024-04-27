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
                                     13 	.globl _print16x
                                     14 	.globl _print8x
                                     15 	.globl _printstr
                                     16 	.globl _getchar
                                     17 	.globl _putchar
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _FL
                                     25 	.globl _P
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ET2
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _T2EX
                                     88 	.globl _T2
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _B
                                    114 	.globl _A
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _TH2
                                    118 	.globl _TL2
                                    119 	.globl _RCAP2H
                                    120 	.globl _RCAP2L
                                    121 	.globl _T2MOD
                                    122 	.globl _T2CON
                                    123 	.globl _IP
                                    124 	.globl _P3
                                    125 	.globl _IE
                                    126 	.globl _P2
                                    127 	.globl _SBUF
                                    128 	.globl _SCON
                                    129 	.globl _P1
                                    130 	.globl _TH1
                                    131 	.globl _TH0
                                    132 	.globl _TL1
                                    133 	.globl _TL0
                                    134 	.globl _TMOD
                                    135 	.globl _TCON
                                    136 	.globl _PCON
                                    137 	.globl _DPH
                                    138 	.globl _DPL
                                    139 	.globl _SP
                                    140 	.globl _P0
                                    141 	.globl _col
                                    142 	.globl _off
                                    143 	.globl _base
                                    144 	.globl _intr
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000C8   168 _T2CON	=	0x00c8
                           0000C9   169 _T2MOD	=	0x00c9
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                           0000D0   174 _PSW	=	0x00d0
                           0000E0   175 _ACC	=	0x00e0
                           0000E0   176 _A	=	0x00e0
                           0000F0   177 _B	=	0x00f0
                                    178 ;--------------------------------------------------------
                                    179 ; special function bits
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           000080   183 _P0_0	=	0x0080
                           000081   184 _P0_1	=	0x0081
                           000082   185 _P0_2	=	0x0082
                           000083   186 _P0_3	=	0x0083
                           000084   187 _P0_4	=	0x0084
                           000085   188 _P0_5	=	0x0085
                           000086   189 _P0_6	=	0x0086
                           000087   190 _P0_7	=	0x0087
                           000088   191 _IT0	=	0x0088
                           000089   192 _IE0	=	0x0089
                           00008A   193 _IT1	=	0x008a
                           00008B   194 _IE1	=	0x008b
                           00008C   195 _TR0	=	0x008c
                           00008D   196 _TF0	=	0x008d
                           00008E   197 _TR1	=	0x008e
                           00008F   198 _TF1	=	0x008f
                           000090   199 _P1_0	=	0x0090
                           000091   200 _P1_1	=	0x0091
                           000092   201 _P1_2	=	0x0092
                           000093   202 _P1_3	=	0x0093
                           000094   203 _P1_4	=	0x0094
                           000095   204 _P1_5	=	0x0095
                           000096   205 _P1_6	=	0x0096
                           000097   206 _P1_7	=	0x0097
                           000090   207 _T2	=	0x0090
                           000091   208 _T2EX	=	0x0091
                           000098   209 _RI	=	0x0098
                           000099   210 _TI	=	0x0099
                           00009A   211 _RB8	=	0x009a
                           00009B   212 _TB8	=	0x009b
                           00009C   213 _REN	=	0x009c
                           00009D   214 _SM2	=	0x009d
                           00009E   215 _SM1	=	0x009e
                           00009F   216 _SM0	=	0x009f
                           0000A0   217 _P2_0	=	0x00a0
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 _P2_3	=	0x00a3
                           0000A4   221 _P2_4	=	0x00a4
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 _P2_7	=	0x00a7
                           0000A8   225 _EX0	=	0x00a8
                           0000A9   226 _ET0	=	0x00a9
                           0000AA   227 _EX1	=	0x00aa
                           0000AB   228 _ET1	=	0x00ab
                           0000AC   229 _ES	=	0x00ac
                           0000AD   230 _ET2	=	0x00ad
                           0000AF   231 _EA	=	0x00af
                           0000B0   232 _P3_0	=	0x00b0
                           0000B1   233 _P3_1	=	0x00b1
                           0000B2   234 _P3_2	=	0x00b2
                           0000B3   235 _P3_3	=	0x00b3
                           0000B4   236 _P3_4	=	0x00b4
                           0000B5   237 _P3_5	=	0x00b5
                           0000B6   238 _P3_6	=	0x00b6
                           0000B7   239 _P3_7	=	0x00b7
                           0000B0   240 _RXD	=	0x00b0
                           0000B1   241 _TXD	=	0x00b1
                           0000B2   242 _INT0	=	0x00b2
                           0000B3   243 _INT1	=	0x00b3
                           0000B4   244 _T0	=	0x00b4
                           0000B5   245 _T1	=	0x00b5
                           0000B6   246 _WR	=	0x00b6
                           0000B7   247 _RD	=	0x00b7
                           0000B8   248 _PX0	=	0x00b8
                           0000B9   249 _PT0	=	0x00b9
                           0000BA   250 _PX1	=	0x00ba
                           0000BB   251 _PT1	=	0x00bb
                           0000BC   252 _PS	=	0x00bc
                           0000BD   253 _PT2	=	0x00bd
                           0000C8   254 _T2CON_0	=	0x00c8
                           0000C9   255 _T2CON_1	=	0x00c9
                           0000CA   256 _T2CON_2	=	0x00ca
                           0000CB   257 _T2CON_3	=	0x00cb
                           0000CC   258 _T2CON_4	=	0x00cc
                           0000CD   259 _T2CON_5	=	0x00cd
                           0000CE   260 _T2CON_6	=	0x00ce
                           0000CF   261 _T2CON_7	=	0x00cf
                           0000C8   262 _CP_RL2	=	0x00c8
                           0000C9   263 _C_T2	=	0x00c9
                           0000CA   264 _TR2	=	0x00ca
                           0000CB   265 _EXEN2	=	0x00cb
                           0000CC   266 _TCLK	=	0x00cc
                           0000CD   267 _RCLK	=	0x00cd
                           0000CE   268 _EXF2	=	0x00ce
                           0000CF   269 _TF2	=	0x00cf
                           0000D0   270 _P	=	0x00d0
                           0000D1   271 _FL	=	0x00d1
                           0000D2   272 _OV	=	0x00d2
                           0000D3   273 _RS0	=	0x00d3
                           0000D4   274 _RS1	=	0x00d4
                           0000D5   275 _F0	=	0x00d5
                           0000D6   276 _AC	=	0x00d6
                           0000D7   277 _CY	=	0x00d7
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable register banks
                                    280 ;--------------------------------------------------------
                                    281 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        282 	.ds 8
                                    283 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        284 	.ds 8
                                    285 ;--------------------------------------------------------
                                    286 ; internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area DSEG    (DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable items in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 ;--------------------------------------------------------
                                    293 ; Stack segment in internal ram 
                                    294 ;--------------------------------------------------------
                                    295 	.area	SSEG
      000011                        296 __start__stack:
      000011                        297 	.ds	1
                                    298 
                                    299 ;--------------------------------------------------------
                                    300 ; indirectly addressable internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area ISEG    (DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area IABS    (ABS,DATA)
                                    307 	.area IABS    (ABS,DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; bit data
                                    310 ;--------------------------------------------------------
                                    311 	.area BSEG    (BIT)
                                    312 ;--------------------------------------------------------
                                    313 ; paged external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area PSEG    (PAG,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XSEG    (XDATA)
      004000                        320 _intr::
      004000                        321 	.ds 1
      004001                        322 _base::
      004001                        323 	.ds 3
      004004                        324 _off::
      004004                        325 	.ds 2
      004006                        326 _col::
      004006                        327 	.ds 2
                                    328 ;--------------------------------------------------------
                                    329 ; absolute external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area XABS    (ABS,XDATA)
                                    332 ;--------------------------------------------------------
                                    333 ; external initialized ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XISEG   (XDATA)
                                    336 	.area HOME    (CODE)
                                    337 	.area GSINIT0 (CODE)
                                    338 	.area GSINIT1 (CODE)
                                    339 	.area GSINIT2 (CODE)
                                    340 	.area GSINIT3 (CODE)
                                    341 	.area GSINIT4 (CODE)
                                    342 	.area GSINIT5 (CODE)
                                    343 	.area GSINIT  (CODE)
                                    344 	.area GSFINAL (CODE)
                                    345 	.area CSEG    (CODE)
                                    346 ;--------------------------------------------------------
                                    347 ; interrupt vector 
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
      002000                        350 __interrupt_vect:
      002000 02 20 09         [24]  351 	ljmp	__sdcc_gsinit_startup
      002003 02 20 65         [24]  352 	ljmp	_int0
                                    353 ;--------------------------------------------------------
                                    354 ; global & static initialisations
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.area GSFINAL (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.globl __sdcc_gsinit_startup
                                    361 	.globl __sdcc_program_startup
                                    362 	.globl __start__stack
                                    363 	.globl __mcs51_genXINIT
                                    364 	.globl __mcs51_genXRAMCLEAR
                                    365 	.globl __mcs51_genRAMCLEAR
                                    366 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  367 	ljmp	__sdcc_program_startup
                                    368 ;--------------------------------------------------------
                                    369 ; Home
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area HOME    (CODE)
      002006                        373 __sdcc_program_startup:
      002006 02 20 78         [24]  374 	ljmp	_main
                                    375 ;	return from main will return to caller
                                    376 ;--------------------------------------------------------
                                    377 ; code
                                    378 ;--------------------------------------------------------
                                    379 	.area CSEG    (CODE)
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'int0'
                                    382 ;------------------------------------------------------------
                                    383 ;	dump.c:7: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    384 ;	-----------------------------------------
                                    385 ;	 function int0
                                    386 ;	-----------------------------------------
      002065                        387 _int0:
                           00000F   388 	ar7 = 0x0f
                           00000E   389 	ar6 = 0x0e
                           00000D   390 	ar5 = 0x0d
                           00000C   391 	ar4 = 0x0c
                           00000B   392 	ar3 = 0x0b
                           00000A   393 	ar2 = 0x0a
                           000009   394 	ar1 = 0x09
                           000008   395 	ar0 = 0x08
      002065 C0 E0            [24]  396 	push	acc
      002067 C0 82            [24]  397 	push	dpl
      002069 C0 83            [24]  398 	push	dph
                                    399 ;	dump.c:8: intr = 1;
      00206B 90 40 00         [24]  400 	mov	dptr,#_intr
      00206E 74 01            [12]  401 	mov	a,#0x01
      002070 F0               [24]  402 	movx	@dptr,a
                                    403 ;	dump.c:9: }
      002071 D0 83            [24]  404 	pop	dph
      002073 D0 82            [24]  405 	pop	dpl
      002075 D0 E0            [24]  406 	pop	acc
      002077 32               [24]  407 	reti
                                    408 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    409 ;	eliminated unneeded push/pop psw
                                    410 ;	eliminated unneeded push/pop b
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'main'
                                    413 ;------------------------------------------------------------
                                    414 ;	dump.c:14: void main(void) {
                                    415 ;	-----------------------------------------
                                    416 ;	 function main
                                    417 ;	-----------------------------------------
      002078                        418 _main:
                           000007   419 	ar7 = 0x07
                           000006   420 	ar6 = 0x06
                           000005   421 	ar5 = 0x05
                           000004   422 	ar4 = 0x04
                           000003   423 	ar3 = 0x03
                           000002   424 	ar2 = 0x02
                           000001   425 	ar1 = 0x01
                           000000   426 	ar0 = 0x00
                                    427 ;	dump.c:15: intr = 0;
      002078 90 40 00         [24]  428 	mov	dptr,#_intr
      00207B E4               [12]  429 	clr	a
      00207C F0               [24]  430 	movx	@dptr,a
                                    431 ;	dump.c:17: IT0 = 1;
                                    432 ;	assignBit
      00207D D2 88            [12]  433 	setb	_IT0
                                    434 ;	dump.c:18: EX0 = 1;	
                                    435 ;	assignBit
      00207F D2 A8            [12]  436 	setb	_EX0
                                    437 ;	dump.c:19: EA = 1;
                                    438 ;	assignBit
      002081 D2 AF            [12]  439 	setb	_EA
                                    440 ;	dump.c:21: P1_7 = 0; /* activate IO address space from 0xe000 to 0xffff */
                                    441 ;	assignBit
      002083 C2 97            [12]  442 	clr	_P1_7
                                    443 ;	dump.c:26: __endasm;
      002085 00               [12]  444 	nop
      002086 00               [12]  445 	nop
      002087 00               [12]  446 	nop
                                    447 ;	dump.c:28: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      002088 90 40 01         [24]  448 	mov	dptr,#_base
      00208B E4               [12]  449 	clr	a
      00208C F0               [24]  450 	movx	@dptr,a
      00208D A3               [24]  451 	inc	dptr
      00208E F0               [24]  452 	movx	@dptr,a
      00208F A3               [24]  453 	inc	dptr
      002090 F0               [24]  454 	movx	@dptr,a
      002091                        455 00112$:
      002091 90 40 00         [24]  456 	mov	dptr,#_intr
      002094 E0               [24]  457 	movx	a,@dptr
      002095 60 03            [24]  458 	jz	00144$
      002097 02 21 96         [24]  459 	ljmp	00106$
      00209A                        460 00144$:
                                    461 ;	dump.c:29: for (off = 0u; off < 0x400u; off += 0x20u) {
      00209A 90 40 04         [24]  462 	mov	dptr,#_off
      00209D E4               [12]  463 	clr	a
      00209E F0               [24]  464 	movx	@dptr,a
      00209F A3               [24]  465 	inc	dptr
      0020A0 F0               [24]  466 	movx	@dptr,a
      0020A1                        467 00109$:
                                    468 ;	dump.c:30: print16x((unsigned int)base + off);
      0020A1 90 40 01         [24]  469 	mov	dptr,#_base
      0020A4 E0               [24]  470 	movx	a,@dptr
      0020A5 FD               [12]  471 	mov	r5,a
      0020A6 A3               [24]  472 	inc	dptr
      0020A7 E0               [24]  473 	movx	a,@dptr
      0020A8 FE               [12]  474 	mov	r6,a
      0020A9 A3               [24]  475 	inc	dptr
      0020AA E0               [24]  476 	movx	a,@dptr
      0020AB 90 40 04         [24]  477 	mov	dptr,#_off
      0020AE E0               [24]  478 	movx	a,@dptr
      0020AF FC               [12]  479 	mov	r4,a
      0020B0 A3               [24]  480 	inc	dptr
      0020B1 E0               [24]  481 	movx	a,@dptr
      0020B2 FF               [12]  482 	mov	r7,a
      0020B3 EC               [12]  483 	mov	a,r4
      0020B4 2D               [12]  484 	add	a,r5
      0020B5 FD               [12]  485 	mov	r5,a
      0020B6 EF               [12]  486 	mov	a,r7
      0020B7 3E               [12]  487 	addc	a,r6
      0020B8 FE               [12]  488 	mov	r6,a
      0020B9 8D 82            [24]  489 	mov	dpl,r5
      0020BB 8E 83            [24]  490 	mov	dph,r6
      0020BD 12 22 FA         [24]  491 	lcall	_print16x
                                    492 ;	dump.c:31: printstr(" : ");
      0020C0 90 24 D5         [24]  493 	mov	dptr,#___str_0
      0020C3 75 F0 80         [24]  494 	mov	b,#0x80
      0020C6 12 21 D0         [24]  495 	lcall	_printstr
                                    496 ;	dump.c:32: for (col = 0u; col < 0x20u; col++) {
      0020C9 90 40 06         [24]  497 	mov	dptr,#_col
      0020CC E4               [12]  498 	clr	a
      0020CD F0               [24]  499 	movx	@dptr,a
      0020CE A3               [24]  500 	inc	dptr
      0020CF F0               [24]  501 	movx	@dptr,a
      0020D0                        502 00107$:
                                    503 ;	dump.c:33: print8x(base[off + col]);
      0020D0 90 40 06         [24]  504 	mov	dptr,#_col
      0020D3 E0               [24]  505 	movx	a,@dptr
      0020D4 FE               [12]  506 	mov	r6,a
      0020D5 A3               [24]  507 	inc	dptr
      0020D6 E0               [24]  508 	movx	a,@dptr
      0020D7 FF               [12]  509 	mov	r7,a
      0020D8 90 40 04         [24]  510 	mov	dptr,#_off
      0020DB E0               [24]  511 	movx	a,@dptr
      0020DC FC               [12]  512 	mov	r4,a
      0020DD A3               [24]  513 	inc	dptr
      0020DE E0               [24]  514 	movx	a,@dptr
      0020DF FD               [12]  515 	mov	r5,a
      0020E0 EE               [12]  516 	mov	a,r6
      0020E1 2C               [12]  517 	add	a,r4
      0020E2 FE               [12]  518 	mov	r6,a
      0020E3 EF               [12]  519 	mov	a,r7
      0020E4 3D               [12]  520 	addc	a,r5
      0020E5 FF               [12]  521 	mov	r7,a
      0020E6 90 40 01         [24]  522 	mov	dptr,#_base
      0020E9 E0               [24]  523 	movx	a,@dptr
      0020EA FB               [12]  524 	mov	r3,a
      0020EB A3               [24]  525 	inc	dptr
      0020EC E0               [24]  526 	movx	a,@dptr
      0020ED FC               [12]  527 	mov	r4,a
      0020EE A3               [24]  528 	inc	dptr
      0020EF E0               [24]  529 	movx	a,@dptr
      0020F0 FD               [12]  530 	mov	r5,a
      0020F1 EE               [12]  531 	mov	a,r6
      0020F2 2B               [12]  532 	add	a,r3
      0020F3 FE               [12]  533 	mov	r6,a
      0020F4 EF               [12]  534 	mov	a,r7
      0020F5 3C               [12]  535 	addc	a,r4
      0020F6 FF               [12]  536 	mov	r7,a
      0020F7 8D 02            [24]  537 	mov	ar2,r5
      0020F9 8E 82            [24]  538 	mov	dpl,r6
      0020FB 8F 83            [24]  539 	mov	dph,r7
      0020FD 8A F0            [24]  540 	mov	b,r2
      0020FF 12 24 B5         [24]  541 	lcall	__gptrget
      002102 F5 82            [12]  542 	mov	dpl,a
      002104 12 22 BD         [24]  543 	lcall	_print8x
                                    544 ;	dump.c:34: if (col == 0x1fu) {
      002107 90 40 06         [24]  545 	mov	dptr,#_col
      00210A E0               [24]  546 	movx	a,@dptr
      00210B FE               [12]  547 	mov	r6,a
      00210C A3               [24]  548 	inc	dptr
      00210D E0               [24]  549 	movx	a,@dptr
      00210E FF               [12]  550 	mov	r7,a
      00210F BE 1F 11         [24]  551 	cjne	r6,#0x1f,00102$
      002112 BF 00 0E         [24]  552 	cjne	r7,#0x00,00102$
                                    553 ;	dump.c:35: putchar('\r'); putchar('\n');
      002115 90 00 0D         [24]  554 	mov	dptr,#0x000d
      002118 12 21 9F         [24]  555 	lcall	_putchar
      00211B 90 00 0A         [24]  556 	mov	dptr,#0x000a
      00211E 12 21 9F         [24]  557 	lcall	_putchar
      002121 80 06            [24]  558 	sjmp	00108$
      002123                        559 00102$:
                                    560 ;	dump.c:36: } else putchar(' ');
      002123 90 00 20         [24]  561 	mov	dptr,#0x0020
      002126 12 21 9F         [24]  562 	lcall	_putchar
      002129                        563 00108$:
                                    564 ;	dump.c:32: for (col = 0u; col < 0x20u; col++) {
      002129 90 40 06         [24]  565 	mov	dptr,#_col
      00212C E0               [24]  566 	movx	a,@dptr
      00212D 24 01            [12]  567 	add	a,#0x01
      00212F F0               [24]  568 	movx	@dptr,a
      002130 A3               [24]  569 	inc	dptr
      002131 E0               [24]  570 	movx	a,@dptr
      002132 34 00            [12]  571 	addc	a,#0x00
      002134 F0               [24]  572 	movx	@dptr,a
      002135 90 40 06         [24]  573 	mov	dptr,#_col
      002138 E0               [24]  574 	movx	a,@dptr
      002139 FE               [12]  575 	mov	r6,a
      00213A A3               [24]  576 	inc	dptr
      00213B E0               [24]  577 	movx	a,@dptr
      00213C FF               [12]  578 	mov	r7,a
      00213D C3               [12]  579 	clr	c
      00213E EE               [12]  580 	mov	a,r6
      00213F 94 20            [12]  581 	subb	a,#0x20
      002141 EF               [12]  582 	mov	a,r7
      002142 94 00            [12]  583 	subb	a,#0x00
      002144 50 03            [24]  584 	jnc	00147$
      002146 02 20 D0         [24]  585 	ljmp	00107$
      002149                        586 00147$:
                                    587 ;	dump.c:29: for (off = 0u; off < 0x400u; off += 0x20u) {
      002149 90 40 04         [24]  588 	mov	dptr,#_off
      00214C E0               [24]  589 	movx	a,@dptr
      00214D FE               [12]  590 	mov	r6,a
      00214E A3               [24]  591 	inc	dptr
      00214F E0               [24]  592 	movx	a,@dptr
      002150 FF               [12]  593 	mov	r7,a
      002151 90 40 04         [24]  594 	mov	dptr,#_off
      002154 74 20            [12]  595 	mov	a,#0x20
      002156 2E               [12]  596 	add	a,r6
      002157 F0               [24]  597 	movx	@dptr,a
      002158 E4               [12]  598 	clr	a
      002159 3F               [12]  599 	addc	a,r7
      00215A A3               [24]  600 	inc	dptr
      00215B F0               [24]  601 	movx	@dptr,a
      00215C 90 40 04         [24]  602 	mov	dptr,#_off
      00215F E0               [24]  603 	movx	a,@dptr
      002160 FE               [12]  604 	mov	r6,a
      002161 A3               [24]  605 	inc	dptr
      002162 E0               [24]  606 	movx	a,@dptr
      002163 FF               [12]  607 	mov	r7,a
      002164 C3               [12]  608 	clr	c
      002165 94 04            [12]  609 	subb	a,#0x04
      002167 50 03            [24]  610 	jnc	00148$
      002169 02 20 A1         [24]  611 	ljmp	00109$
      00216C                        612 00148$:
                                    613 ;	dump.c:39: getchar();
      00216C 12 21 A9         [24]  614 	lcall	_getchar
                                    615 ;	dump.c:40: putchar('\r'); putchar('\n');
      00216F 90 00 0D         [24]  616 	mov	dptr,#0x000d
      002172 12 21 9F         [24]  617 	lcall	_putchar
      002175 90 00 0A         [24]  618 	mov	dptr,#0x000a
      002178 12 21 9F         [24]  619 	lcall	_putchar
                                    620 ;	dump.c:28: for (base = (unsigned char *)0u; !intr; base += 0x400u) {
      00217B 90 40 01         [24]  621 	mov	dptr,#_base
      00217E E0               [24]  622 	movx	a,@dptr
      00217F FD               [12]  623 	mov	r5,a
      002180 A3               [24]  624 	inc	dptr
      002181 E0               [24]  625 	movx	a,@dptr
      002182 FE               [12]  626 	mov	r6,a
      002183 A3               [24]  627 	inc	dptr
      002184 E0               [24]  628 	movx	a,@dptr
      002185 FF               [12]  629 	mov	r7,a
      002186 90 40 01         [24]  630 	mov	dptr,#_base
      002189 ED               [12]  631 	mov	a,r5
      00218A F0               [24]  632 	movx	@dptr,a
      00218B 74 04            [12]  633 	mov	a,#0x04
      00218D 2E               [12]  634 	add	a,r6
      00218E A3               [24]  635 	inc	dptr
      00218F F0               [24]  636 	movx	@dptr,a
      002190 EF               [12]  637 	mov	a,r7
      002191 A3               [24]  638 	inc	dptr
      002192 F0               [24]  639 	movx	@dptr,a
      002193 02 20 91         [24]  640 	ljmp	00112$
      002196                        641 00106$:
                                    642 ;	dump.c:43: P1_7 = 1; /* deactivate IO address space from 0xe000 to 0xffff */
                                    643 ;	assignBit
      002196 D2 97            [12]  644 	setb	_P1_7
                                    645 ;	dump.c:48: __endasm;
      002198 00               [12]  646 	nop
      002199 00               [12]  647 	nop
      00219A 00               [12]  648 	nop
                                    649 ;	dump.c:50: PCON |= 2;
      00219B 43 87 02         [24]  650 	orl	_PCON,#0x02
                                    651 ;	dump.c:52: return;
                                    652 ;	dump.c:53: }
      00219E 22               [24]  653 	ret
                                    654 	.area CSEG    (CODE)
                                    655 	.area CONST   (CODE)
                                    656 	.area CONST   (CODE)
      0024D5                        657 ___str_0:
      0024D5 20 3A 20               658 	.ascii " : "
      0024D8 00                     659 	.db 0x00
                                    660 	.area CSEG    (CODE)
                                    661 	.area XINIT   (CODE)
                                    662 	.area CABS    (ABS,CODE)
