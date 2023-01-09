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
                                     12 	.globl _printf
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _FL
                                     20 	.globl _P
                                     21 	.globl _TF2
                                     22 	.globl _EXF2
                                     23 	.globl _RCLK
                                     24 	.globl _TCLK
                                     25 	.globl _EXEN2
                                     26 	.globl _TR2
                                     27 	.globl _C_T2
                                     28 	.globl _CP_RL2
                                     29 	.globl _T2CON_7
                                     30 	.globl _T2CON_6
                                     31 	.globl _T2CON_5
                                     32 	.globl _T2CON_4
                                     33 	.globl _T2CON_3
                                     34 	.globl _T2CON_2
                                     35 	.globl _T2CON_1
                                     36 	.globl _T2CON_0
                                     37 	.globl _PT2
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ET2
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _T2EX
                                     83 	.globl _T2
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _B
                                    109 	.globl _A
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _TH2
                                    113 	.globl _TL2
                                    114 	.globl _RCAP2H
                                    115 	.globl _RCAP2L
                                    116 	.globl _T2MOD
                                    117 	.globl _T2CON
                                    118 	.globl _IP
                                    119 	.globl _P3
                                    120 	.globl _IE
                                    121 	.globl _P2
                                    122 	.globl _SBUF
                                    123 	.globl _SCON
                                    124 	.globl _P1
                                    125 	.globl _TH1
                                    126 	.globl _TH0
                                    127 	.globl _TL1
                                    128 	.globl _TL0
                                    129 	.globl _TMOD
                                    130 	.globl _TCON
                                    131 	.globl _PCON
                                    132 	.globl _DPH
                                    133 	.globl _DPL
                                    134 	.globl _SP
                                    135 	.globl _P0
                                    136 	.globl _putchar
                                    137 	.globl _getchar
                                    138 ;--------------------------------------------------------
                                    139 ; special function registers
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0	=	0x0080
                           000081   144 _SP	=	0x0081
                           000082   145 _DPL	=	0x0082
                           000083   146 _DPH	=	0x0083
                           000087   147 _PCON	=	0x0087
                           000088   148 _TCON	=	0x0088
                           000089   149 _TMOD	=	0x0089
                           00008A   150 _TL0	=	0x008a
                           00008B   151 _TL1	=	0x008b
                           00008C   152 _TH0	=	0x008c
                           00008D   153 _TH1	=	0x008d
                           000090   154 _P1	=	0x0090
                           000098   155 _SCON	=	0x0098
                           000099   156 _SBUF	=	0x0099
                           0000A0   157 _P2	=	0x00a0
                           0000A8   158 _IE	=	0x00a8
                           0000B0   159 _P3	=	0x00b0
                           0000B8   160 _IP	=	0x00b8
                           0000C8   161 _T2CON	=	0x00c8
                           0000C9   162 _T2MOD	=	0x00c9
                           0000CA   163 _RCAP2L	=	0x00ca
                           0000CB   164 _RCAP2H	=	0x00cb
                           0000CC   165 _TL2	=	0x00cc
                           0000CD   166 _TH2	=	0x00cd
                           0000D0   167 _PSW	=	0x00d0
                           0000E0   168 _ACC	=	0x00e0
                           0000E0   169 _A	=	0x00e0
                           0000F0   170 _B	=	0x00f0
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0_0	=	0x0080
                           000081   177 _P0_1	=	0x0081
                           000082   178 _P0_2	=	0x0082
                           000083   179 _P0_3	=	0x0083
                           000084   180 _P0_4	=	0x0084
                           000085   181 _P0_5	=	0x0085
                           000086   182 _P0_6	=	0x0086
                           000087   183 _P0_7	=	0x0087
                           000088   184 _IT0	=	0x0088
                           000089   185 _IE0	=	0x0089
                           00008A   186 _IT1	=	0x008a
                           00008B   187 _IE1	=	0x008b
                           00008C   188 _TR0	=	0x008c
                           00008D   189 _TF0	=	0x008d
                           00008E   190 _TR1	=	0x008e
                           00008F   191 _TF1	=	0x008f
                           000090   192 _P1_0	=	0x0090
                           000091   193 _P1_1	=	0x0091
                           000092   194 _P1_2	=	0x0092
                           000093   195 _P1_3	=	0x0093
                           000094   196 _P1_4	=	0x0094
                           000095   197 _P1_5	=	0x0095
                           000096   198 _P1_6	=	0x0096
                           000097   199 _P1_7	=	0x0097
                           000090   200 _T2	=	0x0090
                           000091   201 _T2EX	=	0x0091
                           000098   202 _RI	=	0x0098
                           000099   203 _TI	=	0x0099
                           00009A   204 _RB8	=	0x009a
                           00009B   205 _TB8	=	0x009b
                           00009C   206 _REN	=	0x009c
                           00009D   207 _SM2	=	0x009d
                           00009E   208 _SM1	=	0x009e
                           00009F   209 _SM0	=	0x009f
                           0000A0   210 _P2_0	=	0x00a0
                           0000A1   211 _P2_1	=	0x00a1
                           0000A2   212 _P2_2	=	0x00a2
                           0000A3   213 _P2_3	=	0x00a3
                           0000A4   214 _P2_4	=	0x00a4
                           0000A5   215 _P2_5	=	0x00a5
                           0000A6   216 _P2_6	=	0x00a6
                           0000A7   217 _P2_7	=	0x00a7
                           0000A8   218 _EX0	=	0x00a8
                           0000A9   219 _ET0	=	0x00a9
                           0000AA   220 _EX1	=	0x00aa
                           0000AB   221 _ET1	=	0x00ab
                           0000AC   222 _ES	=	0x00ac
                           0000AD   223 _ET2	=	0x00ad
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000BD   246 _PT2	=	0x00bd
                           0000C8   247 _T2CON_0	=	0x00c8
                           0000C9   248 _T2CON_1	=	0x00c9
                           0000CA   249 _T2CON_2	=	0x00ca
                           0000CB   250 _T2CON_3	=	0x00cb
                           0000CC   251 _T2CON_4	=	0x00cc
                           0000CD   252 _T2CON_5	=	0x00cd
                           0000CE   253 _T2CON_6	=	0x00ce
                           0000CF   254 _T2CON_7	=	0x00cf
                           0000C8   255 _CP_RL2	=	0x00c8
                           0000C9   256 _C_T2	=	0x00c9
                           0000CA   257 _TR2	=	0x00ca
                           0000CB   258 _EXEN2	=	0x00cb
                           0000CC   259 _TCLK	=	0x00cc
                           0000CD   260 _RCLK	=	0x00cd
                           0000CE   261 _EXF2	=	0x00ce
                           0000CF   262 _TF2	=	0x00cf
                           0000D0   263 _P	=	0x00d0
                           0000D1   264 _FL	=	0x00d1
                           0000D2   265 _OV	=	0x00d2
                           0000D3   266 _RS0	=	0x00d3
                           0000D4   267 _RS1	=	0x00d4
                           0000D5   268 _F0	=	0x00d5
                           0000D6   269 _AC	=	0x00d6
                           0000D7   270 _CY	=	0x00d7
                                    271 ;--------------------------------------------------------
                                    272 ; overlayable register banks
                                    273 ;--------------------------------------------------------
                                    274 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        275 	.ds 8
                                    276 ;--------------------------------------------------------
                                    277 ; internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area DSEG    (DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable items in internal ram 
                                    282 ;--------------------------------------------------------
                                    283 ;--------------------------------------------------------
                                    284 ; Stack segment in internal ram 
                                    285 ;--------------------------------------------------------
                                    286 	.area	SSEG
      000014                        287 __start__stack:
      000014                        288 	.ds	1
                                    289 
                                    290 ;--------------------------------------------------------
                                    291 ; indirectly addressable internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area ISEG    (DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; absolute internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area IABS    (ABS,DATA)
                                    298 	.area IABS    (ABS,DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; bit data
                                    301 ;--------------------------------------------------------
                                    302 	.area BSEG    (BIT)
                                    303 ;--------------------------------------------------------
                                    304 ; paged external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area PSEG    (PAG,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XSEG    (XDATA)
      008000                        311 _ccrcb_init_r_65536_18:
      008000                        312 	.ds 3
      008003                        313 _ccrcb_PARM_2:
      008003                        314 	.ds 1
      008004                        315 _ccrcb_r_65536_20:
      008004                        316 	.ds 3
      008007                        317 _ccrcb_rt_65536_21:
      008007                        318 	.ds 2
      008009                        319 _ccrcb_bitp_65536_21:
      008009                        320 	.ds 1
      00800A                        321 _ccrcb_finish_r_65536_23:
      00800A                        322 	.ds 3
      00800D                        323 _calc_crc_PARM_2:
      00800D                        324 	.ds 2
      00800F                        325 _calc_crc_base_65536_25:
      00800F                        326 	.ds 3
      008012                        327 _calc_crc_crc_65536_26:
      008012                        328 	.ds 2
                                    329 ;--------------------------------------------------------
                                    330 ; absolute external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XABS    (ABS,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external initialized ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XISEG   (XDATA)
                                    337 	.area HOME    (CODE)
                                    338 	.area GSINIT0 (CODE)
                                    339 	.area GSINIT1 (CODE)
                                    340 	.area GSINIT2 (CODE)
                                    341 	.area GSINIT3 (CODE)
                                    342 	.area GSINIT4 (CODE)
                                    343 	.area GSINIT5 (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area CSEG    (CODE)
                                    347 ;--------------------------------------------------------
                                    348 ; interrupt vector 
                                    349 ;--------------------------------------------------------
                                    350 	.area HOME    (CODE)
      002000                        351 __interrupt_vect:
      002000 02 20 06         [24]  352 	ljmp	__sdcc_gsinit_startup
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
      00205F 02 20 03         [24]  367 	ljmp	__sdcc_program_startup
                                    368 ;--------------------------------------------------------
                                    369 ; Home
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area HOME    (CODE)
      002003                        373 __sdcc_program_startup:
      002003 02 22 1B         [24]  374 	ljmp	_main
                                    375 ;	return from main will return to caller
                                    376 ;--------------------------------------------------------
                                    377 ; code
                                    378 ;--------------------------------------------------------
                                    379 	.area CSEG    (CODE)
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'putchar'
                                    382 ;------------------------------------------------------------
                                    383 ;c                         Allocated with name '_putchar_c_65536_14'
                                    384 ;------------------------------------------------------------
                                    385 ;	crc16.c:11: int putchar(int c) __naked {
                                    386 ;	-----------------------------------------
                                    387 ;	 function putchar
                                    388 ;	-----------------------------------------
      002062                        389 _putchar:
                                    390 ;	naked function: no prologue.
                                    391 ;	crc16.c:16: __endasm;
      002062 E5 82            [12]  392 	mov	a, dpl
      002064 02 00 30         [24]  393 	ljmp	0x0030
                                    394 ;	crc16.c:17: }
                                    395 ;	naked function: no epilogue.
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'getchar'
                                    398 ;------------------------------------------------------------
                                    399 ;	crc16.c:19: int getchar(void) {
                                    400 ;	-----------------------------------------
                                    401 ;	 function getchar
                                    402 ;	-----------------------------------------
      002067                        403 _getchar:
                           000007   404 	ar7 = 0x07
                           000006   405 	ar6 = 0x06
                           000005   406 	ar5 = 0x05
                           000004   407 	ar4 = 0x04
                           000003   408 	ar3 = 0x03
                           000002   409 	ar2 = 0x02
                           000001   410 	ar1 = 0x01
                           000000   411 	ar0 = 0x00
                                    412 ;	crc16.c:24: __endasm;
      002067 12 00 32         [24]  413 	lcall	0x0032
      00206A C2 83            [12]  414 	clr	dph
      00206C F5 82            [12]  415 	mov	dpl, a
                                    416 ;	crc16.c:25: }
      00206E 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'ccrcb_init'
                                    420 ;------------------------------------------------------------
                                    421 ;r                         Allocated with name '_ccrcb_init_r_65536_18'
                                    422 ;------------------------------------------------------------
                                    423 ;	crc16.c:27: static void ccrcb_init(unsigned int *r) {
                                    424 ;	-----------------------------------------
                                    425 ;	 function ccrcb_init
                                    426 ;	-----------------------------------------
      00206F                        427 _ccrcb_init:
      00206F AF F0            [24]  428 	mov	r7,b
      002071 AE 83            [24]  429 	mov	r6,dph
      002073 E5 82            [12]  430 	mov	a,dpl
      002075 90 80 00         [24]  431 	mov	dptr,#_ccrcb_init_r_65536_18
      002078 F0               [24]  432 	movx	@dptr,a
      002079 EE               [12]  433 	mov	a,r6
      00207A A3               [24]  434 	inc	dptr
      00207B F0               [24]  435 	movx	@dptr,a
      00207C EF               [12]  436 	mov	a,r7
      00207D A3               [24]  437 	inc	dptr
      00207E F0               [24]  438 	movx	@dptr,a
                                    439 ;	crc16.c:28: *r = ACC_INITIAL;
      00207F 90 80 00         [24]  440 	mov	dptr,#_ccrcb_init_r_65536_18
      002082 E0               [24]  441 	movx	a,@dptr
      002083 FD               [12]  442 	mov	r5,a
      002084 A3               [24]  443 	inc	dptr
      002085 E0               [24]  444 	movx	a,@dptr
      002086 FE               [12]  445 	mov	r6,a
      002087 A3               [24]  446 	inc	dptr
      002088 E0               [24]  447 	movx	a,@dptr
      002089 FF               [12]  448 	mov	r7,a
      00208A 8D 82            [24]  449 	mov	dpl,r5
      00208C 8E 83            [24]  450 	mov	dph,r6
      00208E 8F F0            [24]  451 	mov	b,r7
      002090 74 FF            [12]  452 	mov	a,#0xff
      002092 12 22 AA         [24]  453 	lcall	__gptrput
      002095 A3               [24]  454 	inc	dptr
                                    455 ;	crc16.c:29: return;
                                    456 ;	crc16.c:30: }
      002096 02 22 AA         [24]  457 	ljmp	__gptrput
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'ccrcb'
                                    460 ;------------------------------------------------------------
                                    461 ;oct                       Allocated with name '_ccrcb_PARM_2'
                                    462 ;r                         Allocated with name '_ccrcb_r_65536_20'
                                    463 ;rt                        Allocated with name '_ccrcb_rt_65536_21'
                                    464 ;bitp                      Allocated with name '_ccrcb_bitp_65536_21'
                                    465 ;------------------------------------------------------------
                                    466 ;	crc16.c:32: static void ccrcb(unsigned int *r, unsigned char oct) {
                                    467 ;	-----------------------------------------
                                    468 ;	 function ccrcb
                                    469 ;	-----------------------------------------
      002099                        470 _ccrcb:
      002099 AF F0            [24]  471 	mov	r7,b
      00209B AE 83            [24]  472 	mov	r6,dph
      00209D E5 82            [12]  473 	mov	a,dpl
      00209F 90 80 04         [24]  474 	mov	dptr,#_ccrcb_r_65536_20
      0020A2 F0               [24]  475 	movx	@dptr,a
      0020A3 EE               [12]  476 	mov	a,r6
      0020A4 A3               [24]  477 	inc	dptr
      0020A5 F0               [24]  478 	movx	@dptr,a
      0020A6 EF               [12]  479 	mov	a,r7
      0020A7 A3               [24]  480 	inc	dptr
      0020A8 F0               [24]  481 	movx	@dptr,a
                                    482 ;	crc16.c:36: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
      0020A9 90 80 04         [24]  483 	mov	dptr,#_ccrcb_r_65536_20
      0020AC E0               [24]  484 	movx	a,@dptr
      0020AD FD               [12]  485 	mov	r5,a
      0020AE A3               [24]  486 	inc	dptr
      0020AF E0               [24]  487 	movx	a,@dptr
      0020B0 FE               [12]  488 	mov	r6,a
      0020B1 A3               [24]  489 	inc	dptr
      0020B2 E0               [24]  490 	movx	a,@dptr
      0020B3 FF               [12]  491 	mov	r7,a
      0020B4 8D 82            [24]  492 	mov	dpl,r5
      0020B6 8E 83            [24]  493 	mov	dph,r6
      0020B8 8F F0            [24]  494 	mov	b,r7
      0020BA 12 2D 55         [24]  495 	lcall	__gptrget
      0020BD FD               [12]  496 	mov	r5,a
      0020BE A3               [24]  497 	inc	dptr
      0020BF 12 2D 55         [24]  498 	lcall	__gptrget
      0020C2 FE               [12]  499 	mov	r6,a
      0020C3 90 80 07         [24]  500 	mov	dptr,#_ccrcb_rt_65536_21
      0020C6 ED               [12]  501 	mov	a,r5
      0020C7 F0               [24]  502 	movx	@dptr,a
      0020C8 EE               [12]  503 	mov	a,r6
      0020C9 A3               [24]  504 	inc	dptr
      0020CA F0               [24]  505 	movx	@dptr,a
      0020CB 90 80 09         [24]  506 	mov	dptr,#_ccrcb_bitp_65536_21
      0020CE 74 80            [12]  507 	mov	a,#0x80
      0020D0 F0               [24]  508 	movx	@dptr,a
      0020D1 90 80 03         [24]  509 	mov	dptr,#_ccrcb_PARM_2
      0020D4 E0               [24]  510 	movx	a,@dptr
      0020D5 FF               [12]  511 	mov	r7,a
      0020D6                        512 00103$:
      0020D6 90 80 09         [24]  513 	mov	dptr,#_ccrcb_bitp_65536_21
      0020D9 E0               [24]  514 	movx	a,@dptr
      0020DA FE               [12]  515 	mov	r6,a
      0020DB E0               [24]  516 	movx	a,@dptr
      0020DC 60 4D            [24]  517 	jz	00101$
                                    518 ;	crc16.c:37: rt = ((rt >> 15) ^ (!!(oct & bitp))) ? ((rt << 1) ^ POLY) : (rt << 1);
      0020DE 90 80 07         [24]  519 	mov	dptr,#_ccrcb_rt_65536_21
      0020E1 E0               [24]  520 	movx	a,@dptr
      0020E2 FC               [12]  521 	mov	r4,a
      0020E3 A3               [24]  522 	inc	dptr
      0020E4 E0               [24]  523 	movx	a,@dptr
      0020E5 FD               [12]  524 	mov	r5,a
      0020E6 23               [12]  525 	rl	a
      0020E7 54 01            [12]  526 	anl	a,#0x01
      0020E9 FA               [12]  527 	mov	r2,a
      0020EA 7B 00            [12]  528 	mov	r3,#0x00
      0020EC EF               [12]  529 	mov	a,r7
      0020ED 52 06            [12]  530 	anl	ar6,a
      0020EF EE               [12]  531 	mov	a,r6
      0020F0 B4 01 00         [24]  532 	cjne	a,#0x01,00122$
      0020F3                        533 00122$:
      0020F3 B3               [12]  534 	cpl	c
      0020F4 E4               [12]  535 	clr	a
      0020F5 33               [12]  536 	rlc	a
      0020F6 F9               [12]  537 	mov	r1,a
      0020F7 33               [12]  538 	rlc	a
      0020F8 95 E0            [12]  539 	subb	a,acc
      0020FA FE               [12]  540 	mov	r6,a
      0020FB E9               [12]  541 	mov	a,r1
      0020FC 62 02            [12]  542 	xrl	ar2,a
      0020FE EE               [12]  543 	mov	a,r6
      0020FF 62 03            [12]  544 	xrl	ar3,a
      002101 EA               [12]  545 	mov	a,r2
      002102 4B               [12]  546 	orl	a,r3
      002103 60 0E            [24]  547 	jz	00107$
      002105 EC               [12]  548 	mov	a,r4
      002106 2C               [12]  549 	add	a,r4
      002107 FB               [12]  550 	mov	r3,a
      002108 ED               [12]  551 	mov	a,r5
      002109 33               [12]  552 	rlc	a
      00210A FE               [12]  553 	mov	r6,a
      00210B 63 03 21         [24]  554 	xrl	ar3,#0x21
      00210E 63 06 10         [24]  555 	xrl	ar6,#0x10
      002111 80 06            [24]  556 	sjmp	00108$
      002113                        557 00107$:
      002113 EC               [12]  558 	mov	a,r4
      002114 2C               [12]  559 	add	a,r4
      002115 FB               [12]  560 	mov	r3,a
      002116 ED               [12]  561 	mov	a,r5
      002117 33               [12]  562 	rlc	a
      002118 FE               [12]  563 	mov	r6,a
      002119                        564 00108$:
      002119 90 80 07         [24]  565 	mov	dptr,#_ccrcb_rt_65536_21
      00211C EB               [12]  566 	mov	a,r3
      00211D F0               [24]  567 	movx	@dptr,a
      00211E EE               [12]  568 	mov	a,r6
      00211F A3               [24]  569 	inc	dptr
      002120 F0               [24]  570 	movx	@dptr,a
                                    571 ;	crc16.c:36: for (rt = *r, bitp = 0x80u; bitp; bitp >>= 1)
      002121 90 80 09         [24]  572 	mov	dptr,#_ccrcb_bitp_65536_21
      002124 E0               [24]  573 	movx	a,@dptr
      002125 C3               [12]  574 	clr	c
      002126 13               [12]  575 	rrc	a
      002127 FE               [12]  576 	mov	r6,a
      002128 F0               [24]  577 	movx	@dptr,a
      002129 80 AB            [24]  578 	sjmp	00103$
      00212B                        579 00101$:
                                    580 ;	crc16.c:38: *r = rt;
      00212B 90 80 04         [24]  581 	mov	dptr,#_ccrcb_r_65536_20
      00212E E0               [24]  582 	movx	a,@dptr
      00212F FD               [12]  583 	mov	r5,a
      002130 A3               [24]  584 	inc	dptr
      002131 E0               [24]  585 	movx	a,@dptr
      002132 FE               [12]  586 	mov	r6,a
      002133 A3               [24]  587 	inc	dptr
      002134 E0               [24]  588 	movx	a,@dptr
      002135 FF               [12]  589 	mov	r7,a
      002136 90 80 07         [24]  590 	mov	dptr,#_ccrcb_rt_65536_21
      002139 E0               [24]  591 	movx	a,@dptr
      00213A FB               [12]  592 	mov	r3,a
      00213B A3               [24]  593 	inc	dptr
      00213C E0               [24]  594 	movx	a,@dptr
      00213D FC               [12]  595 	mov	r4,a
      00213E 8D 82            [24]  596 	mov	dpl,r5
      002140 8E 83            [24]  597 	mov	dph,r6
      002142 8F F0            [24]  598 	mov	b,r7
      002144 EB               [12]  599 	mov	a,r3
      002145 12 22 AA         [24]  600 	lcall	__gptrput
      002148 A3               [24]  601 	inc	dptr
      002149 EC               [12]  602 	mov	a,r4
                                    603 ;	crc16.c:39: }
      00214A 02 22 AA         [24]  604 	ljmp	__gptrput
                                    605 ;------------------------------------------------------------
                                    606 ;Allocation info for local variables in function 'ccrcb_finish'
                                    607 ;------------------------------------------------------------
                                    608 ;r                         Allocated with name '_ccrcb_finish_r_65536_23'
                                    609 ;------------------------------------------------------------
                                    610 ;	crc16.c:41: static void ccrcb_finish(unsigned int *r) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function ccrcb_finish
                                    613 ;	-----------------------------------------
      00214D                        614 _ccrcb_finish:
      00214D AF F0            [24]  615 	mov	r7,b
      00214F AE 83            [24]  616 	mov	r6,dph
      002151 E5 82            [12]  617 	mov	a,dpl
      002153 90 80 0A         [24]  618 	mov	dptr,#_ccrcb_finish_r_65536_23
      002156 F0               [24]  619 	movx	@dptr,a
      002157 EE               [12]  620 	mov	a,r6
      002158 A3               [24]  621 	inc	dptr
      002159 F0               [24]  622 	movx	@dptr,a
      00215A EF               [12]  623 	mov	a,r7
      00215B A3               [24]  624 	inc	dptr
      00215C F0               [24]  625 	movx	@dptr,a
                                    626 ;	crc16.c:42: *r ^= ACC_FINAL;
      00215D 90 80 0A         [24]  627 	mov	dptr,#_ccrcb_finish_r_65536_23
      002160 E0               [24]  628 	movx	a,@dptr
      002161 FD               [12]  629 	mov	r5,a
      002162 A3               [24]  630 	inc	dptr
      002163 E0               [24]  631 	movx	a,@dptr
      002164 FE               [12]  632 	mov	r6,a
      002165 A3               [24]  633 	inc	dptr
      002166 E0               [24]  634 	movx	a,@dptr
      002167 FF               [12]  635 	mov	r7,a
      002168 8D 82            [24]  636 	mov	dpl,r5
      00216A 8E 83            [24]  637 	mov	dph,r6
      00216C 8F F0            [24]  638 	mov	b,r7
      00216E 12 2D 55         [24]  639 	lcall	__gptrget
      002171 FB               [12]  640 	mov	r3,a
      002172 A3               [24]  641 	inc	dptr
      002173 12 2D 55         [24]  642 	lcall	__gptrget
      002176 FC               [12]  643 	mov	r4,a
      002177 8D 82            [24]  644 	mov	dpl,r5
      002179 8E 83            [24]  645 	mov	dph,r6
      00217B 8F F0            [24]  646 	mov	b,r7
      00217D EB               [12]  647 	mov	a,r3
      00217E 12 22 AA         [24]  648 	lcall	__gptrput
      002181 A3               [24]  649 	inc	dptr
      002182 EC               [12]  650 	mov	a,r4
                                    651 ;	crc16.c:43: }
      002183 02 22 AA         [24]  652 	ljmp	__gptrput
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'calc_crc'
                                    655 ;------------------------------------------------------------
                                    656 ;len                       Allocated with name '_calc_crc_PARM_2'
                                    657 ;base                      Allocated with name '_calc_crc_base_65536_25'
                                    658 ;off                       Allocated with name '_calc_crc_off_65536_26'
                                    659 ;crc                       Allocated with name '_calc_crc_crc_65536_26'
                                    660 ;------------------------------------------------------------
                                    661 ;	crc16.c:45: static unsigned int calc_crc(unsigned char *base, unsigned int len) {
                                    662 ;	-----------------------------------------
                                    663 ;	 function calc_crc
                                    664 ;	-----------------------------------------
      002186                        665 _calc_crc:
      002186 AF F0            [24]  666 	mov	r7,b
      002188 AE 83            [24]  667 	mov	r6,dph
      00218A E5 82            [12]  668 	mov	a,dpl
      00218C 90 80 0F         [24]  669 	mov	dptr,#_calc_crc_base_65536_25
      00218F F0               [24]  670 	movx	@dptr,a
      002190 EE               [12]  671 	mov	a,r6
      002191 A3               [24]  672 	inc	dptr
      002192 F0               [24]  673 	movx	@dptr,a
      002193 EF               [12]  674 	mov	a,r7
      002194 A3               [24]  675 	inc	dptr
      002195 F0               [24]  676 	movx	@dptr,a
                                    677 ;	crc16.c:48: ccrcb_init(&crc);
      002196 90 80 12         [24]  678 	mov	dptr,#_calc_crc_crc_65536_26
      002199 75 F0 00         [24]  679 	mov	b,#0x00
      00219C 12 20 6F         [24]  680 	lcall	_ccrcb_init
                                    681 ;	crc16.c:49: for (off = 0u; off < len; off++)
      00219F 90 80 0F         [24]  682 	mov	dptr,#_calc_crc_base_65536_25
      0021A2 E0               [24]  683 	movx	a,@dptr
      0021A3 FD               [12]  684 	mov	r5,a
      0021A4 A3               [24]  685 	inc	dptr
      0021A5 E0               [24]  686 	movx	a,@dptr
      0021A6 FE               [12]  687 	mov	r6,a
      0021A7 A3               [24]  688 	inc	dptr
      0021A8 E0               [24]  689 	movx	a,@dptr
      0021A9 FF               [12]  690 	mov	r7,a
      0021AA 90 80 0D         [24]  691 	mov	dptr,#_calc_crc_PARM_2
      0021AD E0               [24]  692 	movx	a,@dptr
      0021AE FB               [12]  693 	mov	r3,a
      0021AF A3               [24]  694 	inc	dptr
      0021B0 E0               [24]  695 	movx	a,@dptr
      0021B1 FC               [12]  696 	mov	r4,a
      0021B2 79 00            [12]  697 	mov	r1,#0x00
      0021B4 7A 00            [12]  698 	mov	r2,#0x00
      0021B6                        699 00103$:
      0021B6 C3               [12]  700 	clr	c
      0021B7 E9               [12]  701 	mov	a,r1
      0021B8 9B               [12]  702 	subb	a,r3
      0021B9 EA               [12]  703 	mov	a,r2
      0021BA 9C               [12]  704 	subb	a,r4
      0021BB 50 49            [24]  705 	jnc	00101$
                                    706 ;	crc16.c:50: ccrcb(&crc, base[off]);
      0021BD C0 03            [24]  707 	push	ar3
      0021BF C0 04            [24]  708 	push	ar4
      0021C1 E9               [12]  709 	mov	a,r1
      0021C2 2D               [12]  710 	add	a,r5
      0021C3 F8               [12]  711 	mov	r0,a
      0021C4 EA               [12]  712 	mov	a,r2
      0021C5 3E               [12]  713 	addc	a,r6
      0021C6 FB               [12]  714 	mov	r3,a
      0021C7 8F 04            [24]  715 	mov	ar4,r7
      0021C9 88 82            [24]  716 	mov	dpl,r0
      0021CB 8B 83            [24]  717 	mov	dph,r3
      0021CD 8C F0            [24]  718 	mov	b,r4
      0021CF 12 2D 55         [24]  719 	lcall	__gptrget
      0021D2 90 80 03         [24]  720 	mov	dptr,#_ccrcb_PARM_2
      0021D5 F0               [24]  721 	movx	@dptr,a
      0021D6 90 80 12         [24]  722 	mov	dptr,#_calc_crc_crc_65536_26
      0021D9 75 F0 00         [24]  723 	mov	b,#0x00
      0021DC C0 07            [24]  724 	push	ar7
      0021DE C0 06            [24]  725 	push	ar6
      0021E0 C0 05            [24]  726 	push	ar5
      0021E2 C0 04            [24]  727 	push	ar4
      0021E4 C0 03            [24]  728 	push	ar3
      0021E6 C0 02            [24]  729 	push	ar2
      0021E8 C0 01            [24]  730 	push	ar1
      0021EA 12 20 99         [24]  731 	lcall	_ccrcb
      0021ED D0 01            [24]  732 	pop	ar1
      0021EF D0 02            [24]  733 	pop	ar2
      0021F1 D0 03            [24]  734 	pop	ar3
      0021F3 D0 04            [24]  735 	pop	ar4
      0021F5 D0 05            [24]  736 	pop	ar5
      0021F7 D0 06            [24]  737 	pop	ar6
      0021F9 D0 07            [24]  738 	pop	ar7
                                    739 ;	crc16.c:49: for (off = 0u; off < len; off++)
      0021FB 09               [12]  740 	inc	r1
      0021FC B9 00 01         [24]  741 	cjne	r1,#0x00,00117$
      0021FF 0A               [12]  742 	inc	r2
      002200                        743 00117$:
      002200 D0 04            [24]  744 	pop	ar4
      002202 D0 03            [24]  745 	pop	ar3
      002204 80 B0            [24]  746 	sjmp	00103$
      002206                        747 00101$:
                                    748 ;	crc16.c:51: ccrcb_finish(&crc);
      002206 90 80 12         [24]  749 	mov	dptr,#_calc_crc_crc_65536_26
      002209 75 F0 00         [24]  750 	mov	b,#0x00
      00220C 12 21 4D         [24]  751 	lcall	_ccrcb_finish
                                    752 ;	crc16.c:53: return crc;
      00220F 90 80 12         [24]  753 	mov	dptr,#_calc_crc_crc_65536_26
      002212 E0               [24]  754 	movx	a,@dptr
      002213 FE               [12]  755 	mov	r6,a
      002214 A3               [24]  756 	inc	dptr
      002215 E0               [24]  757 	movx	a,@dptr
                                    758 ;	crc16.c:54: }
      002216 8E 82            [24]  759 	mov	dpl,r6
      002218 F5 83            [12]  760 	mov	dph,a
      00221A 22               [24]  761 	ret
                                    762 ;------------------------------------------------------------
                                    763 ;Allocation info for local variables in function 'main'
                                    764 ;------------------------------------------------------------
                                    765 ;base                      Allocated with name '_main_base_65536_29'
                                    766 ;len                       Allocated with name '_main_len_65536_29'
                                    767 ;crc                       Allocated with name '_main_crc_65536_29'
                                    768 ;------------------------------------------------------------
                                    769 ;	crc16.c:58: void main(void) {
                                    770 ;	-----------------------------------------
                                    771 ;	 function main
                                    772 ;	-----------------------------------------
      00221B                        773 _main:
                                    774 ;	crc16.c:63: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      00221B 7D 00            [12]  775 	mov	r5,#0x00
      00221D 7E 00            [12]  776 	mov	r6,#0x00
      00221F 7F 00            [12]  777 	mov	r7,#0x00
      002221                        778 00102$:
                                    779 ;	crc16.c:64: printf("base=0x%04x ", (unsigned int)base);
      002221 8D 02            [24]  780 	mov	ar2,r5
      002223 8E 03            [24]  781 	mov	ar3,r6
      002225 8F 04            [24]  782 	mov	ar4,r7
      002227 C0 07            [24]  783 	push	ar7
      002229 C0 06            [24]  784 	push	ar6
      00222B C0 05            [24]  785 	push	ar5
      00222D C0 02            [24]  786 	push	ar2
      00222F C0 03            [24]  787 	push	ar3
      002231 74 75            [12]  788 	mov	a,#___str_0
      002233 C0 E0            [24]  789 	push	acc
      002235 74 2D            [12]  790 	mov	a,#(___str_0 >> 8)
      002237 C0 E0            [24]  791 	push	acc
      002239 74 80            [12]  792 	mov	a,#0x80
      00223B C0 E0            [24]  793 	push	acc
      00223D 12 23 13         [24]  794 	lcall	_printf
      002240 E5 81            [12]  795 	mov	a,sp
      002242 24 FB            [12]  796 	add	a,#0xfb
      002244 F5 81            [12]  797 	mov	sp,a
                                    798 ;	crc16.c:65: printf("len=0x%04x ", len);
      002246 E4               [12]  799 	clr	a
      002247 C0 E0            [24]  800 	push	acc
      002249 74 20            [12]  801 	mov	a,#0x20
      00224B C0 E0            [24]  802 	push	acc
      00224D 74 82            [12]  803 	mov	a,#___str_1
      00224F C0 E0            [24]  804 	push	acc
      002251 74 2D            [12]  805 	mov	a,#(___str_1 >> 8)
      002253 C0 E0            [24]  806 	push	acc
      002255 74 80            [12]  807 	mov	a,#0x80
      002257 C0 E0            [24]  808 	push	acc
      002259 12 23 13         [24]  809 	lcall	_printf
      00225C E5 81            [12]  810 	mov	a,sp
      00225E 24 FB            [12]  811 	add	a,#0xfb
      002260 F5 81            [12]  812 	mov	sp,a
      002262 D0 05            [24]  813 	pop	ar5
      002264 D0 06            [24]  814 	pop	ar6
      002266 D0 07            [24]  815 	pop	ar7
                                    816 ;	crc16.c:66: crc = calc_crc(base, len);
      002268 90 80 0D         [24]  817 	mov	dptr,#_calc_crc_PARM_2
      00226B E4               [12]  818 	clr	a
      00226C F0               [24]  819 	movx	@dptr,a
      00226D 74 20            [12]  820 	mov	a,#0x20
      00226F A3               [24]  821 	inc	dptr
      002270 F0               [24]  822 	movx	@dptr,a
      002271 8D 82            [24]  823 	mov	dpl,r5
      002273 8E 83            [24]  824 	mov	dph,r6
      002275 8F F0            [24]  825 	mov	b,r7
      002277 C0 07            [24]  826 	push	ar7
      002279 C0 06            [24]  827 	push	ar6
      00227B C0 05            [24]  828 	push	ar5
      00227D 12 21 86         [24]  829 	lcall	_calc_crc
      002280 AB 82            [24]  830 	mov	r3,dpl
      002282 AC 83            [24]  831 	mov	r4,dph
                                    832 ;	crc16.c:67: printf("CRC16=0x%04x\n\r", crc);
      002284 C0 03            [24]  833 	push	ar3
      002286 C0 04            [24]  834 	push	ar4
      002288 74 8E            [12]  835 	mov	a,#___str_2
      00228A C0 E0            [24]  836 	push	acc
      00228C 74 2D            [12]  837 	mov	a,#(___str_2 >> 8)
      00228E C0 E0            [24]  838 	push	acc
      002290 74 80            [12]  839 	mov	a,#0x80
      002292 C0 E0            [24]  840 	push	acc
      002294 12 23 13         [24]  841 	lcall	_printf
      002297 E5 81            [12]  842 	mov	a,sp
      002299 24 FB            [12]  843 	add	a,#0xfb
      00229B F5 81            [12]  844 	mov	sp,a
      00229D D0 05            [24]  845 	pop	ar5
      00229F D0 06            [24]  846 	pop	ar6
      0022A1 D0 07            [24]  847 	pop	ar7
                                    848 ;	crc16.c:63: for (base = (unsigned char *)0x0u; 1; base += (len >> 1)) {
      0022A3 74 10            [12]  849 	mov	a,#0x10
      0022A5 2E               [12]  850 	add	a,r6
      0022A6 FE               [12]  851 	mov	r6,a
                                    852 ;	crc16.c:72: __endasm;
                                    853 ;	crc16.c:73: }
      0022A7 02 22 21         [24]  854 	ljmp	00102$
                                    855 	.area CSEG    (CODE)
                                    856 	.area CONST   (CODE)
                                    857 	.area CONST   (CODE)
      002D75                        858 ___str_0:
      002D75 62 61 73 65 3D 30 78   859 	.ascii "base=0x%04x "
             25 30 34 78 20
      002D81 00                     860 	.db 0x00
                                    861 	.area CSEG    (CODE)
                                    862 	.area CONST   (CODE)
      002D82                        863 ___str_1:
      002D82 6C 65 6E 3D 30 78 25   864 	.ascii "len=0x%04x "
             30 34 78 20
      002D8D 00                     865 	.db 0x00
                                    866 	.area CSEG    (CODE)
                                    867 	.area CONST   (CODE)
      002D8E                        868 ___str_2:
      002D8E 43 52 43 31 36 3D 30   869 	.ascii "CRC16=0x%04x"
             78 25 30 34 78
      002D9A 0A                     870 	.db 0x0a
      002D9B 0D                     871 	.db 0x0d
      002D9C 00                     872 	.db 0x00
                                    873 	.area CSEG    (CODE)
                                    874 	.area XINIT   (CODE)
                                    875 	.area CABS    (ABS,CODE)
