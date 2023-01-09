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
                                    137 	.globl _intr
                                    138 	.globl _putchar
                                    139 	.globl _getchar
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000C8   163 _T2CON	=	0x00c8
                           0000C9   164 _T2MOD	=	0x00c9
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                           0000D0   169 _PSW	=	0x00d0
                           0000E0   170 _ACC	=	0x00e0
                           0000E0   171 _A	=	0x00e0
                           0000F0   172 _B	=	0x00f0
                                    173 ;--------------------------------------------------------
                                    174 ; special function bits
                                    175 ;--------------------------------------------------------
                                    176 	.area RSEG    (ABS,DATA)
      000000                        177 	.org 0x0000
                           000080   178 _P0_0	=	0x0080
                           000081   179 _P0_1	=	0x0081
                           000082   180 _P0_2	=	0x0082
                           000083   181 _P0_3	=	0x0083
                           000084   182 _P0_4	=	0x0084
                           000085   183 _P0_5	=	0x0085
                           000086   184 _P0_6	=	0x0086
                           000087   185 _P0_7	=	0x0087
                           000088   186 _IT0	=	0x0088
                           000089   187 _IE0	=	0x0089
                           00008A   188 _IT1	=	0x008a
                           00008B   189 _IE1	=	0x008b
                           00008C   190 _TR0	=	0x008c
                           00008D   191 _TF0	=	0x008d
                           00008E   192 _TR1	=	0x008e
                           00008F   193 _TF1	=	0x008f
                           000090   194 _P1_0	=	0x0090
                           000091   195 _P1_1	=	0x0091
                           000092   196 _P1_2	=	0x0092
                           000093   197 _P1_3	=	0x0093
                           000094   198 _P1_4	=	0x0094
                           000095   199 _P1_5	=	0x0095
                           000096   200 _P1_6	=	0x0096
                           000097   201 _P1_7	=	0x0097
                           000090   202 _T2	=	0x0090
                           000091   203 _T2EX	=	0x0091
                           000098   204 _RI	=	0x0098
                           000099   205 _TI	=	0x0099
                           00009A   206 _RB8	=	0x009a
                           00009B   207 _TB8	=	0x009b
                           00009C   208 _REN	=	0x009c
                           00009D   209 _SM2	=	0x009d
                           00009E   210 _SM1	=	0x009e
                           00009F   211 _SM0	=	0x009f
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 _P2_3	=	0x00a3
                           0000A4   216 _P2_4	=	0x00a4
                           0000A5   217 _P2_5	=	0x00a5
                           0000A6   218 _P2_6	=	0x00a6
                           0000A7   219 _P2_7	=	0x00a7
                           0000A8   220 _EX0	=	0x00a8
                           0000A9   221 _ET0	=	0x00a9
                           0000AA   222 _EX1	=	0x00aa
                           0000AB   223 _ET1	=	0x00ab
                           0000AC   224 _ES	=	0x00ac
                           0000AD   225 _ET2	=	0x00ad
                           0000AF   226 _EA	=	0x00af
                           0000B0   227 _P3_0	=	0x00b0
                           0000B1   228 _P3_1	=	0x00b1
                           0000B2   229 _P3_2	=	0x00b2
                           0000B3   230 _P3_3	=	0x00b3
                           0000B4   231 _P3_4	=	0x00b4
                           0000B5   232 _P3_5	=	0x00b5
                           0000B6   233 _P3_6	=	0x00b6
                           0000B7   234 _P3_7	=	0x00b7
                           0000B0   235 _RXD	=	0x00b0
                           0000B1   236 _TXD	=	0x00b1
                           0000B2   237 _INT0	=	0x00b2
                           0000B3   238 _INT1	=	0x00b3
                           0000B4   239 _T0	=	0x00b4
                           0000B5   240 _T1	=	0x00b5
                           0000B6   241 _WR	=	0x00b6
                           0000B7   242 _RD	=	0x00b7
                           0000B8   243 _PX0	=	0x00b8
                           0000B9   244 _PT0	=	0x00b9
                           0000BA   245 _PX1	=	0x00ba
                           0000BB   246 _PT1	=	0x00bb
                           0000BC   247 _PS	=	0x00bc
                           0000BD   248 _PT2	=	0x00bd
                           0000C8   249 _T2CON_0	=	0x00c8
                           0000C9   250 _T2CON_1	=	0x00c9
                           0000CA   251 _T2CON_2	=	0x00ca
                           0000CB   252 _T2CON_3	=	0x00cb
                           0000CC   253 _T2CON_4	=	0x00cc
                           0000CD   254 _T2CON_5	=	0x00cd
                           0000CE   255 _T2CON_6	=	0x00ce
                           0000CF   256 _T2CON_7	=	0x00cf
                           0000C8   257 _CP_RL2	=	0x00c8
                           0000C9   258 _C_T2	=	0x00c9
                           0000CA   259 _TR2	=	0x00ca
                           0000CB   260 _EXEN2	=	0x00cb
                           0000CC   261 _TCLK	=	0x00cc
                           0000CD   262 _RCLK	=	0x00cd
                           0000CE   263 _EXF2	=	0x00ce
                           0000CF   264 _TF2	=	0x00cf
                           0000D0   265 _P	=	0x00d0
                           0000D1   266 _FL	=	0x00d1
                           0000D2   267 _OV	=	0x00d2
                           0000D3   268 _RS0	=	0x00d3
                           0000D4   269 _RS1	=	0x00d4
                           0000D5   270 _F0	=	0x00d5
                           0000D6   271 _AC	=	0x00d6
                           0000D7   272 _CY	=	0x00d7
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable register banks
                                    275 ;--------------------------------------------------------
                                    276 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        277 	.ds 8
                                    278 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        279 	.ds 8
                                    280 ;--------------------------------------------------------
                                    281 ; internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area DSEG    (DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable items in internal ram 
                                    286 ;--------------------------------------------------------
                                    287 ;--------------------------------------------------------
                                    288 ; Stack segment in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 	.area	SSEG
      00001C                        291 __start__stack:
      00001C                        292 	.ds	1
                                    293 
                                    294 ;--------------------------------------------------------
                                    295 ; indirectly addressable internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area ISEG    (DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area IABS    (ABS,DATA)
                                    302 	.area IABS    (ABS,DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; bit data
                                    305 ;--------------------------------------------------------
                                    306 	.area BSEG    (BIT)
                                    307 ;--------------------------------------------------------
                                    308 ; paged external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area PSEG    (PAG,XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XSEG    (XDATA)
      008000                        315 _intr::
      008000                        316 	.ds 2
      008002                        317 _ccrcb_init_r_65536_20:
      008002                        318 	.ds 3
      008005                        319 _ccrcb_PARM_2:
      008005                        320 	.ds 1
      008006                        321 _ccrcb_r_65536_22:
      008006                        322 	.ds 3
      008009                        323 _ccrcb_rt_65536_23:
      008009                        324 	.ds 2
      00800B                        325 _ccrcb_bitp_65536_23:
      00800B                        326 	.ds 1
      00800C                        327 _ccrcb_finish_r_65536_25:
      00800C                        328 	.ds 3
      00800F                        329 _calc_crc_PARM_2:
      00800F                        330 	.ds 2
      008011                        331 _calc_crc_base_65536_27:
      008011                        332 	.ds 3
      008014                        333 _calc_crc_crc_65536_28:
      008014                        334 	.ds 2
                                    335 ;--------------------------------------------------------
                                    336 ; absolute external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XABS    (ABS,XDATA)
                                    339 ;--------------------------------------------------------
                                    340 ; external initialized ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area XISEG   (XDATA)
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT0 (CODE)
                                    345 	.area GSINIT1 (CODE)
                                    346 	.area GSINIT2 (CODE)
                                    347 	.area GSINIT3 (CODE)
                                    348 	.area GSINIT4 (CODE)
                                    349 	.area GSINIT5 (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area CSEG    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; interrupt vector 
                                    355 ;--------------------------------------------------------
                                    356 	.area HOME    (CODE)
      002000                        357 __interrupt_vect:
      002000 02 20 09         [24]  358 	ljmp	__sdcc_gsinit_startup
      002003 02 20 72         [24]  359 	ljmp	_int0
                                    360 ;--------------------------------------------------------
                                    361 ; global & static initialisations
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.area GSFINAL (CODE)
                                    366 	.area GSINIT  (CODE)
                                    367 	.globl __sdcc_gsinit_startup
                                    368 	.globl __sdcc_program_startup
                                    369 	.globl __start__stack
                                    370 	.globl __mcs51_genXINIT
                                    371 	.globl __mcs51_genXRAMCLEAR
                                    372 	.globl __mcs51_genRAMCLEAR
                                    373 	.area GSFINAL (CODE)
      002062 02 20 06         [24]  374 	ljmp	__sdcc_program_startup
                                    375 ;--------------------------------------------------------
                                    376 ; Home
                                    377 ;--------------------------------------------------------
                                    378 	.area HOME    (CODE)
                                    379 	.area HOME    (CODE)
      002006                        380 __sdcc_program_startup:
      002006 02 22 34         [24]  381 	ljmp	_main
                                    382 ;	return from main will return to caller
                                    383 ;--------------------------------------------------------
                                    384 ; code
                                    385 ;--------------------------------------------------------
                                    386 	.area CSEG    (CODE)
                                    387 ;------------------------------------------------------------
                                    388 ;Allocation info for local variables in function 'putchar'
                                    389 ;------------------------------------------------------------
                                    390 ;c                         Allocated with name '_putchar_c_65536_14'
                                    391 ;------------------------------------------------------------
                                    392 ;	crc16.c:11: int putchar(int c) __naked {
                                    393 ;	-----------------------------------------
                                    394 ;	 function putchar
                                    395 ;	-----------------------------------------
      002065                        396 _putchar:
                                    397 ;	naked function: no prologue.
                                    398 ;	crc16.c:16: __endasm;
      002065 E5 82            [12]  399 	mov	a, dpl
      002067 02 00 30         [24]  400 	ljmp	0x0030
                                    401 ;	crc16.c:17: }
                                    402 ;	naked function: no epilogue.
                                    403 ;------------------------------------------------------------
                                    404 ;Allocation info for local variables in function 'getchar'
                                    405 ;------------------------------------------------------------
                                    406 ;	crc16.c:19: int getchar(void) {
                                    407 ;	-----------------------------------------
                                    408 ;	 function getchar
                                    409 ;	-----------------------------------------
      00206A                        410 _getchar:
                           000007   411 	ar7 = 0x07
                           000006   412 	ar6 = 0x06
                           000005   413 	ar5 = 0x05
                           000004   414 	ar4 = 0x04
                           000003   415 	ar3 = 0x03
                           000002   416 	ar2 = 0x02
                           000001   417 	ar1 = 0x01
                           000000   418 	ar0 = 0x00
                                    419 ;	crc16.c:24: __endasm;
      00206A 12 00 32         [24]  420 	lcall	0x0032
      00206D C2 83            [12]  421 	clr	dph
      00206F F5 82            [12]  422 	mov	dpl, a
                                    423 ;	crc16.c:25: }
      002071 22               [24]  424 	ret
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'int0'
                                    427 ;------------------------------------------------------------
                                    428 ;	crc16.c:29: void int0(void) __interrupt 0 __using 1 {
                                    429 ;	-----------------------------------------
                                    430 ;	 function int0
                                    431 ;	-----------------------------------------
      002072                        432 _int0:
                           00000F   433 	ar7 = 0x0f
                           00000E   434 	ar6 = 0x0e
                           00000D   435 	ar5 = 0x0d
                           00000C   436 	ar4 = 0x0c
                           00000B   437 	ar3 = 0x0b
                           00000A   438 	ar2 = 0x0a
                           000009   439 	ar1 = 0x09
                           000008   440 	ar0 = 0x08
      002072 C0 E0            [24]  441 	push	acc
      002074 C0 82            [24]  442 	push	dpl
      002076 C0 83            [24]  443 	push	dph
                                    444 ;	crc16.c:30: intr = 1;
      002078 90 80 00         [24]  445 	mov	dptr,#_intr
      00207B 74 01            [12]  446 	mov	a,#0x01
      00207D F0               [24]  447 	movx	@dptr,a
      00207E E4               [12]  448 	clr	a
      00207F A3               [24]  449 	inc	dptr
      002080 F0               [24]  450 	movx	@dptr,a
                                    451 ;	crc16.c:31: }
      002081 D0 83            [24]  452 	pop	dph
      002083 D0 82            [24]  453 	pop	dpl
      002085 D0 E0            [24]  454 	pop	acc
      002087 32               [24]  455 	reti
                                    456 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    457 ;	eliminated unneeded push/pop psw
                                    458 ;	eliminated unneeded push/pop b
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'ccrcb_init'
                                    461 ;------------------------------------------------------------
                                    462 ;r                         Allocated with name '_ccrcb_init_r_65536_20'
                                    463 ;------------------------------------------------------------
                                    464 ;	crc16.c:33: static void ccrcb_init(unsigned int *r) {
                                    465 ;	-----------------------------------------
                                    466 ;	 function ccrcb_init
                                    467 ;	-----------------------------------------
      002088                        468 _ccrcb_init:
                           000007   469 	ar7 = 0x07
                           000006   470 	ar6 = 0x06
                           000005   471 	ar5 = 0x05
                           000004   472 	ar4 = 0x04
                           000003   473 	ar3 = 0x03
                           000002   474 	ar2 = 0x02
                           000001   475 	ar1 = 0x01
                           000000   476 	ar0 = 0x00
      002088 AF F0            [24]  477 	mov	r7,b
      00208A AE 83            [24]  478 	mov	r6,dph
      00208C E5 82            [12]  479 	mov	a,dpl
      00208E 90 80 02         [24]  480 	mov	dptr,#_ccrcb_init_r_65536_20
      002091 F0               [24]  481 	movx	@dptr,a
      002092 EE               [12]  482 	mov	a,r6
      002093 A3               [24]  483 	inc	dptr
      002094 F0               [24]  484 	movx	@dptr,a
      002095 EF               [12]  485 	mov	a,r7
      002096 A3               [24]  486 	inc	dptr
      002097 F0               [24]  487 	movx	@dptr,a
                                    488 ;	crc16.c:34: *r = ACC_INITIAL;
      002098 90 80 02         [24]  489 	mov	dptr,#_ccrcb_init_r_65536_20
      00209B E0               [24]  490 	movx	a,@dptr
      00209C FD               [12]  491 	mov	r5,a
      00209D A3               [24]  492 	inc	dptr
      00209E E0               [24]  493 	movx	a,@dptr
      00209F FE               [12]  494 	mov	r6,a
      0020A0 A3               [24]  495 	inc	dptr
      0020A1 E0               [24]  496 	movx	a,@dptr
      0020A2 FF               [12]  497 	mov	r7,a
      0020A3 8D 82            [24]  498 	mov	dpl,r5
      0020A5 8E 83            [24]  499 	mov	dph,r6
      0020A7 8F F0            [24]  500 	mov	b,r7
      0020A9 74 FF            [12]  501 	mov	a,#0xff
      0020AB 12 22 F7         [24]  502 	lcall	__gptrput
      0020AE A3               [24]  503 	inc	dptr
                                    504 ;	crc16.c:35: return;
                                    505 ;	crc16.c:36: }
      0020AF 02 22 F7         [24]  506 	ljmp	__gptrput
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'ccrcb'
                                    509 ;------------------------------------------------------------
                                    510 ;oct                       Allocated with name '_ccrcb_PARM_2'
                                    511 ;r                         Allocated with name '_ccrcb_r_65536_22'
                                    512 ;rt                        Allocated with name '_ccrcb_rt_65536_23'
                                    513 ;bitp                      Allocated with name '_ccrcb_bitp_65536_23'
                                    514 ;------------------------------------------------------------
                                    515 ;	crc16.c:38: static void ccrcb(unsigned int *r, unsigned char oct) {
                                    516 ;	-----------------------------------------
                                    517 ;	 function ccrcb
                                    518 ;	-----------------------------------------
      0020B2                        519 _ccrcb:
      0020B2 AF F0            [24]  520 	mov	r7,b
      0020B4 AE 83            [24]  521 	mov	r6,dph
      0020B6 E5 82            [12]  522 	mov	a,dpl
      0020B8 90 80 06         [24]  523 	mov	dptr,#_ccrcb_r_65536_22
      0020BB F0               [24]  524 	movx	@dptr,a
      0020BC EE               [12]  525 	mov	a,r6
      0020BD A3               [24]  526 	inc	dptr
      0020BE F0               [24]  527 	movx	@dptr,a
      0020BF EF               [12]  528 	mov	a,r7
      0020C0 A3               [24]  529 	inc	dptr
      0020C1 F0               [24]  530 	movx	@dptr,a
                                    531 ;	crc16.c:42: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
      0020C2 90 80 06         [24]  532 	mov	dptr,#_ccrcb_r_65536_22
      0020C5 E0               [24]  533 	movx	a,@dptr
      0020C6 FD               [12]  534 	mov	r5,a
      0020C7 A3               [24]  535 	inc	dptr
      0020C8 E0               [24]  536 	movx	a,@dptr
      0020C9 FE               [12]  537 	mov	r6,a
      0020CA A3               [24]  538 	inc	dptr
      0020CB E0               [24]  539 	movx	a,@dptr
      0020CC FF               [12]  540 	mov	r7,a
      0020CD 8D 82            [24]  541 	mov	dpl,r5
      0020CF 8E 83            [24]  542 	mov	dph,r6
      0020D1 8F F0            [24]  543 	mov	b,r7
      0020D3 12 2D A2         [24]  544 	lcall	__gptrget
      0020D6 FD               [12]  545 	mov	r5,a
      0020D7 A3               [24]  546 	inc	dptr
      0020D8 12 2D A2         [24]  547 	lcall	__gptrget
      0020DB FE               [12]  548 	mov	r6,a
      0020DC 90 80 09         [24]  549 	mov	dptr,#_ccrcb_rt_65536_23
      0020DF ED               [12]  550 	mov	a,r5
      0020E0 F0               [24]  551 	movx	@dptr,a
      0020E1 EE               [12]  552 	mov	a,r6
      0020E2 A3               [24]  553 	inc	dptr
      0020E3 F0               [24]  554 	movx	@dptr,a
      0020E4 90 80 0B         [24]  555 	mov	dptr,#_ccrcb_bitp_65536_23
      0020E7 74 80            [12]  556 	mov	a,#0x80
      0020E9 F0               [24]  557 	movx	@dptr,a
      0020EA 90 80 05         [24]  558 	mov	dptr,#_ccrcb_PARM_2
      0020ED E0               [24]  559 	movx	a,@dptr
      0020EE FF               [12]  560 	mov	r7,a
      0020EF                        561 00103$:
      0020EF 90 80 0B         [24]  562 	mov	dptr,#_ccrcb_bitp_65536_23
      0020F2 E0               [24]  563 	movx	a,@dptr
      0020F3 FE               [12]  564 	mov	r6,a
      0020F4 E0               [24]  565 	movx	a,@dptr
      0020F5 60 4D            [24]  566 	jz	00101$
                                    567 ;	crc16.c:43: rt = ((rt >> 15) ^ (!!(oct & bitp))) ? ((rt << 1) ^ POLY) : (rt << 1);
      0020F7 90 80 09         [24]  568 	mov	dptr,#_ccrcb_rt_65536_23
      0020FA E0               [24]  569 	movx	a,@dptr
      0020FB FC               [12]  570 	mov	r4,a
      0020FC A3               [24]  571 	inc	dptr
      0020FD E0               [24]  572 	movx	a,@dptr
      0020FE FD               [12]  573 	mov	r5,a
      0020FF 23               [12]  574 	rl	a
      002100 54 01            [12]  575 	anl	a,#0x01
      002102 FA               [12]  576 	mov	r2,a
      002103 7B 00            [12]  577 	mov	r3,#0x00
      002105 EF               [12]  578 	mov	a,r7
      002106 52 06            [12]  579 	anl	ar6,a
      002108 EE               [12]  580 	mov	a,r6
      002109 B4 01 00         [24]  581 	cjne	a,#0x01,00122$
      00210C                        582 00122$:
      00210C B3               [12]  583 	cpl	c
      00210D E4               [12]  584 	clr	a
      00210E 33               [12]  585 	rlc	a
      00210F F9               [12]  586 	mov	r1,a
      002110 33               [12]  587 	rlc	a
      002111 95 E0            [12]  588 	subb	a,acc
      002113 FE               [12]  589 	mov	r6,a
      002114 E9               [12]  590 	mov	a,r1
      002115 62 02            [12]  591 	xrl	ar2,a
      002117 EE               [12]  592 	mov	a,r6
      002118 62 03            [12]  593 	xrl	ar3,a
      00211A EA               [12]  594 	mov	a,r2
      00211B 4B               [12]  595 	orl	a,r3
      00211C 60 0E            [24]  596 	jz	00107$
      00211E EC               [12]  597 	mov	a,r4
      00211F 2C               [12]  598 	add	a,r4
      002120 FB               [12]  599 	mov	r3,a
      002121 ED               [12]  600 	mov	a,r5
      002122 33               [12]  601 	rlc	a
      002123 FE               [12]  602 	mov	r6,a
      002124 63 03 21         [24]  603 	xrl	ar3,#0x21
      002127 63 06 10         [24]  604 	xrl	ar6,#0x10
      00212A 80 06            [24]  605 	sjmp	00108$
      00212C                        606 00107$:
      00212C EC               [12]  607 	mov	a,r4
      00212D 2C               [12]  608 	add	a,r4
      00212E FB               [12]  609 	mov	r3,a
      00212F ED               [12]  610 	mov	a,r5
      002130 33               [12]  611 	rlc	a
      002131 FE               [12]  612 	mov	r6,a
      002132                        613 00108$:
      002132 90 80 09         [24]  614 	mov	dptr,#_ccrcb_rt_65536_23
      002135 EB               [12]  615 	mov	a,r3
      002136 F0               [24]  616 	movx	@dptr,a
      002137 EE               [12]  617 	mov	a,r6
      002138 A3               [24]  618 	inc	dptr
      002139 F0               [24]  619 	movx	@dptr,a
                                    620 ;	crc16.c:42: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
      00213A 90 80 0B         [24]  621 	mov	dptr,#_ccrcb_bitp_65536_23
      00213D E0               [24]  622 	movx	a,@dptr
      00213E C3               [12]  623 	clr	c
      00213F 13               [12]  624 	rrc	a
      002140 FE               [12]  625 	mov	r6,a
      002141 F0               [24]  626 	movx	@dptr,a
      002142 80 AB            [24]  627 	sjmp	00103$
      002144                        628 00101$:
                                    629 ;	crc16.c:44: *r = rt;
      002144 90 80 06         [24]  630 	mov	dptr,#_ccrcb_r_65536_22
      002147 E0               [24]  631 	movx	a,@dptr
      002148 FD               [12]  632 	mov	r5,a
      002149 A3               [24]  633 	inc	dptr
      00214A E0               [24]  634 	movx	a,@dptr
      00214B FE               [12]  635 	mov	r6,a
      00214C A3               [24]  636 	inc	dptr
      00214D E0               [24]  637 	movx	a,@dptr
      00214E FF               [12]  638 	mov	r7,a
      00214F 90 80 09         [24]  639 	mov	dptr,#_ccrcb_rt_65536_23
      002152 E0               [24]  640 	movx	a,@dptr
      002153 FB               [12]  641 	mov	r3,a
      002154 A3               [24]  642 	inc	dptr
      002155 E0               [24]  643 	movx	a,@dptr
      002156 FC               [12]  644 	mov	r4,a
      002157 8D 82            [24]  645 	mov	dpl,r5
      002159 8E 83            [24]  646 	mov	dph,r6
      00215B 8F F0            [24]  647 	mov	b,r7
      00215D EB               [12]  648 	mov	a,r3
      00215E 12 22 F7         [24]  649 	lcall	__gptrput
      002161 A3               [24]  650 	inc	dptr
      002162 EC               [12]  651 	mov	a,r4
                                    652 ;	crc16.c:45: }
      002163 02 22 F7         [24]  653 	ljmp	__gptrput
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'ccrcb_finish'
                                    656 ;------------------------------------------------------------
                                    657 ;r                         Allocated with name '_ccrcb_finish_r_65536_25'
                                    658 ;------------------------------------------------------------
                                    659 ;	crc16.c:47: static void ccrcb_finish(unsigned int *r) {
                                    660 ;	-----------------------------------------
                                    661 ;	 function ccrcb_finish
                                    662 ;	-----------------------------------------
      002166                        663 _ccrcb_finish:
      002166 AF F0            [24]  664 	mov	r7,b
      002168 AE 83            [24]  665 	mov	r6,dph
      00216A E5 82            [12]  666 	mov	a,dpl
      00216C 90 80 0C         [24]  667 	mov	dptr,#_ccrcb_finish_r_65536_25
      00216F F0               [24]  668 	movx	@dptr,a
      002170 EE               [12]  669 	mov	a,r6
      002171 A3               [24]  670 	inc	dptr
      002172 F0               [24]  671 	movx	@dptr,a
      002173 EF               [12]  672 	mov	a,r7
      002174 A3               [24]  673 	inc	dptr
      002175 F0               [24]  674 	movx	@dptr,a
                                    675 ;	crc16.c:48: *r ^= ACC_FINAL;
      002176 90 80 0C         [24]  676 	mov	dptr,#_ccrcb_finish_r_65536_25
      002179 E0               [24]  677 	movx	a,@dptr
      00217A FD               [12]  678 	mov	r5,a
      00217B A3               [24]  679 	inc	dptr
      00217C E0               [24]  680 	movx	a,@dptr
      00217D FE               [12]  681 	mov	r6,a
      00217E A3               [24]  682 	inc	dptr
      00217F E0               [24]  683 	movx	a,@dptr
      002180 FF               [12]  684 	mov	r7,a
      002181 8D 82            [24]  685 	mov	dpl,r5
      002183 8E 83            [24]  686 	mov	dph,r6
      002185 8F F0            [24]  687 	mov	b,r7
      002187 12 2D A2         [24]  688 	lcall	__gptrget
      00218A FB               [12]  689 	mov	r3,a
      00218B A3               [24]  690 	inc	dptr
      00218C 12 2D A2         [24]  691 	lcall	__gptrget
      00218F FC               [12]  692 	mov	r4,a
      002190 8D 82            [24]  693 	mov	dpl,r5
      002192 8E 83            [24]  694 	mov	dph,r6
      002194 8F F0            [24]  695 	mov	b,r7
      002196 EB               [12]  696 	mov	a,r3
      002197 12 22 F7         [24]  697 	lcall	__gptrput
      00219A A3               [24]  698 	inc	dptr
      00219B EC               [12]  699 	mov	a,r4
                                    700 ;	crc16.c:49: }
      00219C 02 22 F7         [24]  701 	ljmp	__gptrput
                                    702 ;------------------------------------------------------------
                                    703 ;Allocation info for local variables in function 'calc_crc'
                                    704 ;------------------------------------------------------------
                                    705 ;len                       Allocated with name '_calc_crc_PARM_2'
                                    706 ;base                      Allocated with name '_calc_crc_base_65536_27'
                                    707 ;off                       Allocated with name '_calc_crc_off_65536_28'
                                    708 ;crc                       Allocated with name '_calc_crc_crc_65536_28'
                                    709 ;------------------------------------------------------------
                                    710 ;	crc16.c:51: static unsigned int calc_crc(unsigned char *base, unsigned int len) {
                                    711 ;	-----------------------------------------
                                    712 ;	 function calc_crc
                                    713 ;	-----------------------------------------
      00219F                        714 _calc_crc:
      00219F AF F0            [24]  715 	mov	r7,b
      0021A1 AE 83            [24]  716 	mov	r6,dph
      0021A3 E5 82            [12]  717 	mov	a,dpl
      0021A5 90 80 11         [24]  718 	mov	dptr,#_calc_crc_base_65536_27
      0021A8 F0               [24]  719 	movx	@dptr,a
      0021A9 EE               [12]  720 	mov	a,r6
      0021AA A3               [24]  721 	inc	dptr
      0021AB F0               [24]  722 	movx	@dptr,a
      0021AC EF               [12]  723 	mov	a,r7
      0021AD A3               [24]  724 	inc	dptr
      0021AE F0               [24]  725 	movx	@dptr,a
                                    726 ;	crc16.c:54: ccrcb_init(&crc);
      0021AF 90 80 14         [24]  727 	mov	dptr,#_calc_crc_crc_65536_28
      0021B2 75 F0 00         [24]  728 	mov	b,#0x00
      0021B5 12 20 88         [24]  729 	lcall	_ccrcb_init
                                    730 ;	crc16.c:55: for (off = 0u; off < len; off++)
      0021B8 90 80 11         [24]  731 	mov	dptr,#_calc_crc_base_65536_27
      0021BB E0               [24]  732 	movx	a,@dptr
      0021BC FD               [12]  733 	mov	r5,a
      0021BD A3               [24]  734 	inc	dptr
      0021BE E0               [24]  735 	movx	a,@dptr
      0021BF FE               [12]  736 	mov	r6,a
      0021C0 A3               [24]  737 	inc	dptr
      0021C1 E0               [24]  738 	movx	a,@dptr
      0021C2 FF               [12]  739 	mov	r7,a
      0021C3 90 80 0F         [24]  740 	mov	dptr,#_calc_crc_PARM_2
      0021C6 E0               [24]  741 	movx	a,@dptr
      0021C7 FB               [12]  742 	mov	r3,a
      0021C8 A3               [24]  743 	inc	dptr
      0021C9 E0               [24]  744 	movx	a,@dptr
      0021CA FC               [12]  745 	mov	r4,a
      0021CB 79 00            [12]  746 	mov	r1,#0x00
      0021CD 7A 00            [12]  747 	mov	r2,#0x00
      0021CF                        748 00103$:
      0021CF C3               [12]  749 	clr	c
      0021D0 E9               [12]  750 	mov	a,r1
      0021D1 9B               [12]  751 	subb	a,r3
      0021D2 EA               [12]  752 	mov	a,r2
      0021D3 9C               [12]  753 	subb	a,r4
      0021D4 50 49            [24]  754 	jnc	00101$
                                    755 ;	crc16.c:56: ccrcb(&crc, base[off]);
      0021D6 C0 03            [24]  756 	push	ar3
      0021D8 C0 04            [24]  757 	push	ar4
      0021DA E9               [12]  758 	mov	a,r1
      0021DB 2D               [12]  759 	add	a,r5
      0021DC F8               [12]  760 	mov	r0,a
      0021DD EA               [12]  761 	mov	a,r2
      0021DE 3E               [12]  762 	addc	a,r6
      0021DF FB               [12]  763 	mov	r3,a
      0021E0 8F 04            [24]  764 	mov	ar4,r7
      0021E2 88 82            [24]  765 	mov	dpl,r0
      0021E4 8B 83            [24]  766 	mov	dph,r3
      0021E6 8C F0            [24]  767 	mov	b,r4
      0021E8 12 2D A2         [24]  768 	lcall	__gptrget
      0021EB 90 80 05         [24]  769 	mov	dptr,#_ccrcb_PARM_2
      0021EE F0               [24]  770 	movx	@dptr,a
      0021EF 90 80 14         [24]  771 	mov	dptr,#_calc_crc_crc_65536_28
      0021F2 75 F0 00         [24]  772 	mov	b,#0x00
      0021F5 C0 07            [24]  773 	push	ar7
      0021F7 C0 06            [24]  774 	push	ar6
      0021F9 C0 05            [24]  775 	push	ar5
      0021FB C0 04            [24]  776 	push	ar4
      0021FD C0 03            [24]  777 	push	ar3
      0021FF C0 02            [24]  778 	push	ar2
      002201 C0 01            [24]  779 	push	ar1
      002203 12 20 B2         [24]  780 	lcall	_ccrcb
      002206 D0 01            [24]  781 	pop	ar1
      002208 D0 02            [24]  782 	pop	ar2
      00220A D0 03            [24]  783 	pop	ar3
      00220C D0 04            [24]  784 	pop	ar4
      00220E D0 05            [24]  785 	pop	ar5
      002210 D0 06            [24]  786 	pop	ar6
      002212 D0 07            [24]  787 	pop	ar7
                                    788 ;	crc16.c:55: for (off = 0u; off < len; off++)
      002214 09               [12]  789 	inc	r1
      002215 B9 00 01         [24]  790 	cjne	r1,#0x00,00117$
      002218 0A               [12]  791 	inc	r2
      002219                        792 00117$:
      002219 D0 04            [24]  793 	pop	ar4
      00221B D0 03            [24]  794 	pop	ar3
      00221D 80 B0            [24]  795 	sjmp	00103$
      00221F                        796 00101$:
                                    797 ;	crc16.c:57: ccrcb_finish(&crc);
      00221F 90 80 14         [24]  798 	mov	dptr,#_calc_crc_crc_65536_28
      002222 75 F0 00         [24]  799 	mov	b,#0x00
      002225 12 21 66         [24]  800 	lcall	_ccrcb_finish
                                    801 ;	crc16.c:59: return crc;
      002228 90 80 14         [24]  802 	mov	dptr,#_calc_crc_crc_65536_28
      00222B E0               [24]  803 	movx	a,@dptr
      00222C FE               [12]  804 	mov	r6,a
      00222D A3               [24]  805 	inc	dptr
      00222E E0               [24]  806 	movx	a,@dptr
                                    807 ;	crc16.c:60: }
      00222F 8E 82            [24]  808 	mov	dpl,r6
      002231 F5 83            [12]  809 	mov	dph,a
      002233 22               [24]  810 	ret
                                    811 ;------------------------------------------------------------
                                    812 ;Allocation info for local variables in function 'main'
                                    813 ;------------------------------------------------------------
                                    814 ;base                      Allocated with name '_main_base_65536_31'
                                    815 ;len                       Allocated with name '_main_len_65536_31'
                                    816 ;crc                       Allocated with name '_main_crc_65536_31'
                                    817 ;------------------------------------------------------------
                                    818 ;	crc16.c:64: void main(void) {
                                    819 ;	-----------------------------------------
                                    820 ;	 function main
                                    821 ;	-----------------------------------------
      002234                        822 _main:
                                    823 ;	crc16.c:69: intr = 0;
      002234 90 80 00         [24]  824 	mov	dptr,#_intr
      002237 E4               [12]  825 	clr	a
      002238 F0               [24]  826 	movx	@dptr,a
      002239 A3               [24]  827 	inc	dptr
      00223A F0               [24]  828 	movx	@dptr,a
                                    829 ;	crc16.c:71: IT0 = 1;
                                    830 ;	assignBit
      00223B D2 88            [12]  831 	setb	_IT0
                                    832 ;	crc16.c:72: EX0 = 1;
                                    833 ;	assignBit
      00223D D2 A8            [12]  834 	setb	_EX0
                                    835 ;	crc16.c:73: EA = 1;
                                    836 ;	assignBit
      00223F D2 AF            [12]  837 	setb	_EA
                                    838 ;	crc16.c:75: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      002241 7D 00            [12]  839 	mov	r5,#0x00
      002243 7E 00            [12]  840 	mov	r6,#0x00
      002245 7F 00            [12]  841 	mov	r7,#0x00
      002247                        842 00104$:
                                    843 ;	crc16.c:76: printf("base=0x%04x ", (unsigned int)base);
      002247 8D 02            [24]  844 	mov	ar2,r5
      002249 8E 03            [24]  845 	mov	ar3,r6
      00224B 8F 04            [24]  846 	mov	ar4,r7
      00224D C0 07            [24]  847 	push	ar7
      00224F C0 06            [24]  848 	push	ar6
      002251 C0 05            [24]  849 	push	ar5
      002253 C0 02            [24]  850 	push	ar2
      002255 C0 03            [24]  851 	push	ar3
      002257 74 C2            [12]  852 	mov	a,#___str_0
      002259 C0 E0            [24]  853 	push	acc
      00225B 74 2D            [12]  854 	mov	a,#(___str_0 >> 8)
      00225D C0 E0            [24]  855 	push	acc
      00225F 74 80            [12]  856 	mov	a,#0x80
      002261 C0 E0            [24]  857 	push	acc
      002263 12 23 60         [24]  858 	lcall	_printf
      002266 E5 81            [12]  859 	mov	a,sp
      002268 24 FB            [12]  860 	add	a,#0xfb
      00226A F5 81            [12]  861 	mov	sp,a
                                    862 ;	crc16.c:77: printf("len=0x%04x ", len);
      00226C E4               [12]  863 	clr	a
      00226D C0 E0            [24]  864 	push	acc
      00226F 74 20            [12]  865 	mov	a,#0x20
      002271 C0 E0            [24]  866 	push	acc
      002273 74 CF            [12]  867 	mov	a,#___str_1
      002275 C0 E0            [24]  868 	push	acc
      002277 74 2D            [12]  869 	mov	a,#(___str_1 >> 8)
      002279 C0 E0            [24]  870 	push	acc
      00227B 74 80            [12]  871 	mov	a,#0x80
      00227D C0 E0            [24]  872 	push	acc
      00227F 12 23 60         [24]  873 	lcall	_printf
      002282 E5 81            [12]  874 	mov	a,sp
      002284 24 FB            [12]  875 	add	a,#0xfb
      002286 F5 81            [12]  876 	mov	sp,a
      002288 D0 05            [24]  877 	pop	ar5
      00228A D0 06            [24]  878 	pop	ar6
      00228C D0 07            [24]  879 	pop	ar7
                                    880 ;	crc16.c:78: crc = calc_crc(base, len);
      00228E 90 80 0F         [24]  881 	mov	dptr,#_calc_crc_PARM_2
      002291 E4               [12]  882 	clr	a
      002292 F0               [24]  883 	movx	@dptr,a
      002293 74 20            [12]  884 	mov	a,#0x20
      002295 A3               [24]  885 	inc	dptr
      002296 F0               [24]  886 	movx	@dptr,a
      002297 8D 82            [24]  887 	mov	dpl,r5
      002299 8E 83            [24]  888 	mov	dph,r6
      00229B 8F F0            [24]  889 	mov	b,r7
      00229D C0 07            [24]  890 	push	ar7
      00229F C0 06            [24]  891 	push	ar6
      0022A1 C0 05            [24]  892 	push	ar5
      0022A3 12 21 9F         [24]  893 	lcall	_calc_crc
      0022A6 AB 82            [24]  894 	mov	r3,dpl
      0022A8 AC 83            [24]  895 	mov	r4,dph
                                    896 ;	crc16.c:79: printf("CRC16=0x%04x\n\r", crc);
      0022AA C0 03            [24]  897 	push	ar3
      0022AC C0 04            [24]  898 	push	ar4
      0022AE 74 DB            [12]  899 	mov	a,#___str_2
      0022B0 C0 E0            [24]  900 	push	acc
      0022B2 74 2D            [12]  901 	mov	a,#(___str_2 >> 8)
      0022B4 C0 E0            [24]  902 	push	acc
      0022B6 74 80            [12]  903 	mov	a,#0x80
      0022B8 C0 E0            [24]  904 	push	acc
      0022BA 12 23 60         [24]  905 	lcall	_printf
      0022BD E5 81            [12]  906 	mov	a,sp
      0022BF 24 FB            [12]  907 	add	a,#0xfb
      0022C1 F5 81            [12]  908 	mov	sp,a
      0022C3 D0 05            [24]  909 	pop	ar5
      0022C5 D0 06            [24]  910 	pop	ar6
      0022C7 D0 07            [24]  911 	pop	ar7
                                    912 ;	crc16.c:81: if (intr) {
      0022C9 90 80 00         [24]  913 	mov	dptr,#_intr
      0022CC E0               [24]  914 	movx	a,@dptr
      0022CD F5 F0            [12]  915 	mov	b,a
      0022CF A3               [24]  916 	inc	dptr
      0022D0 E0               [24]  917 	movx	a,@dptr
      0022D1 45 F0            [12]  918 	orl	a,b
      0022D3 60 17            [24]  919 	jz	00105$
                                    920 ;	crc16.c:82: printf("interrupted\n");
      0022D5 74 EA            [12]  921 	mov	a,#___str_3
      0022D7 C0 E0            [24]  922 	push	acc
      0022D9 74 2D            [12]  923 	mov	a,#(___str_3 >> 8)
      0022DB C0 E0            [24]  924 	push	acc
      0022DD 74 80            [12]  925 	mov	a,#0x80
      0022DF C0 E0            [24]  926 	push	acc
      0022E1 12 23 60         [24]  927 	lcall	_printf
      0022E4 15 81            [12]  928 	dec	sp
      0022E6 15 81            [12]  929 	dec	sp
      0022E8 15 81            [12]  930 	dec	sp
                                    931 ;	crc16.c:83: break;
      0022EA 80 07            [24]  932 	sjmp	00103$
      0022EC                        933 00105$:
                                    934 ;	crc16.c:75: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      0022EC 74 10            [12]  935 	mov	a,#0x10
      0022EE 2E               [12]  936 	add	a,r6
      0022EF FE               [12]  937 	mov	r6,a
      0022F0 02 22 47         [24]  938 	ljmp	00104$
      0022F3                        939 00103$:
                                    940 ;	crc16.c:90: __endasm;
      0022F3 02 00 00         [24]  941 	ljmp	0
                                    942 ;	crc16.c:95: }
      0022F6 22               [24]  943 	ret
                                    944 	.area CSEG    (CODE)
                                    945 	.area CONST   (CODE)
                                    946 	.area CONST   (CODE)
      002DC2                        947 ___str_0:
      002DC2 62 61 73 65 3D 30 78   948 	.ascii "base=0x%04x "
             25 30 34 78 20
      002DCE 00                     949 	.db 0x00
                                    950 	.area CSEG    (CODE)
                                    951 	.area CONST   (CODE)
      002DCF                        952 ___str_1:
      002DCF 6C 65 6E 3D 30 78 25   953 	.ascii "len=0x%04x "
             30 34 78 20
      002DDA 00                     954 	.db 0x00
                                    955 	.area CSEG    (CODE)
                                    956 	.area CONST   (CODE)
      002DDB                        957 ___str_2:
      002DDB 43 52 43 31 36 3D 30   958 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      002DE7 0A                     959 	.db 0x0a
      002DE8 0D                     960 	.db 0x0d
      002DE9 00                     961 	.db 0x00
                                    962 	.area CSEG    (CODE)
                                    963 	.area CONST   (CODE)
      002DEA                        964 ___str_3:
      002DEA 69 6E 74 65 72 72 75   965 	.ascii "interrupted"
             70 74 65 64
      002DF5 0A                     966 	.db 0x0a
      002DF6 00                     967 	.db 0x00
                                    968 	.area CSEG    (CODE)
                                    969 	.area XINIT   (CODE)
                                    970 	.area CABS    (ABS,CODE)
