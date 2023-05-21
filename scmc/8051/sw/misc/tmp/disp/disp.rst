                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module disp
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _timer0_intr
                                     13 	.globl _init_timer0
                                     14 	.globl _init_intr
                                     15 	.globl _clear_gpo
                                     16 	.globl _init_gpo
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _FL
                                     24 	.globl _P
                                     25 	.globl _TF2
                                     26 	.globl _EXF2
                                     27 	.globl _RCLK
                                     28 	.globl _TCLK
                                     29 	.globl _EXEN2
                                     30 	.globl _TR2
                                     31 	.globl _C_T2
                                     32 	.globl _CP_RL2
                                     33 	.globl _T2CON_7
                                     34 	.globl _T2CON_6
                                     35 	.globl _T2CON_5
                                     36 	.globl _T2CON_4
                                     37 	.globl _T2CON_3
                                     38 	.globl _T2CON_2
                                     39 	.globl _T2CON_1
                                     40 	.globl _T2CON_0
                                     41 	.globl _PT2
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _T2EX
                                     87 	.globl _T2
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _B
                                    113 	.globl _A
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2MOD
                                    121 	.globl _T2CON
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _column
                                    141 	.globl _ddata
                                    142 	.globl _gpo
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
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable items in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 ;--------------------------------------------------------
                                    291 ; Stack segment in internal ram 
                                    292 ;--------------------------------------------------------
                                    293 	.area	SSEG
      00001A                        294 __start__stack:
      00001A                        295 	.ds	1
                                    296 
                                    297 ;--------------------------------------------------------
                                    298 ; indirectly addressable internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area ISEG    (DATA)
      000010                        301 _gpo::
      000010                        302 	.ds 1
      000011                        303 _ddata::
      000011                        304 	.ds 8
      000019                        305 _column::
      000019                        306 	.ds 1
                                    307 ;--------------------------------------------------------
                                    308 ; absolute internal ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area IABS    (ABS,DATA)
                                    311 	.area IABS    (ABS,DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; bit data
                                    314 ;--------------------------------------------------------
                                    315 	.area BSEG    (BIT)
                                    316 ;--------------------------------------------------------
                                    317 ; paged external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area PSEG    (PAG,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XSEG    (XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; absolute external ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XABS    (ABS,XDATA)
                                    328 ;--------------------------------------------------------
                                    329 ; external initialized ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area XISEG   (XDATA)
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT0 (CODE)
                                    334 	.area GSINIT1 (CODE)
                                    335 	.area GSINIT2 (CODE)
                                    336 	.area GSINIT3 (CODE)
                                    337 	.area GSINIT4 (CODE)
                                    338 	.area GSINIT5 (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.area GSFINAL (CODE)
                                    341 	.area CSEG    (CODE)
                                    342 ;--------------------------------------------------------
                                    343 ; interrupt vector 
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
      002000                        346 __interrupt_vect:
      002000 02 20 11         [24]  347 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  348 	reti
      002004                        349 	.ds	7
      00200B 02 20 AF         [24]  350 	ljmp	_timer0_intr
                                    351 ;--------------------------------------------------------
                                    352 ; global & static initialisations
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area GSINIT  (CODE)
                                    358 	.globl __sdcc_gsinit_startup
                                    359 	.globl __sdcc_program_startup
                                    360 	.globl __start__stack
                                    361 	.globl __mcs51_genXINIT
                                    362 	.globl __mcs51_genXRAMCLEAR
                                    363 	.globl __mcs51_genRAMCLEAR
                                    364 	.area GSFINAL (CODE)
      00206A 02 20 0E         [24]  365 	ljmp	__sdcc_program_startup
                                    366 ;--------------------------------------------------------
                                    367 ; Home
                                    368 ;--------------------------------------------------------
                                    369 	.area HOME    (CODE)
                                    370 	.area HOME    (CODE)
      00200E                        371 __sdcc_program_startup:
      00200E 02 20 EF         [24]  372 	ljmp	_main
                                    373 ;	return from main will return to caller
                                    374 ;--------------------------------------------------------
                                    375 ; code
                                    376 ;--------------------------------------------------------
                                    377 	.area CSEG    (CODE)
                                    378 ;------------------------------------------------------------
                                    379 ;Allocation info for local variables in function 'init_gpo'
                                    380 ;------------------------------------------------------------
                                    381 ;	disp.c:12: void init_gpo(void) {
                                    382 ;	-----------------------------------------
                                    383 ;	 function init_gpo
                                    384 ;	-----------------------------------------
      00206D                        385 _init_gpo:
                           000007   386 	ar7 = 0x07
                           000006   387 	ar6 = 0x06
                           000005   388 	ar5 = 0x05
                           000004   389 	ar4 = 0x04
                           000003   390 	ar3 = 0x03
                           000002   391 	ar2 = 0x02
                           000001   392 	ar1 = 0x01
                           000000   393 	ar0 = 0x00
                                    394 ;	disp.c:13: P1_7 = 1;
                                    395 ;	assignBit
      00206D D2 97            [12]  396 	setb	_P1_7
                                    397 ;	disp.c:14: P2 = GPO_BASE_H;
      00206F 75 A0 FF         [24]  398 	mov	_P2,#0xff
                                    399 ;	disp.c:15: gpo = (ppd_uint8_t)GPO_BASE_L;
      002072 78 10            [12]  400 	mov	r0,#_gpo
      002074 76 00            [12]  401 	mov	@r0,#0x00
                                    402 ;	disp.c:17: return;
                                    403 ;	disp.c:18: }
      002076 22               [24]  404 	ret
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'clear_gpo'
                                    407 ;------------------------------------------------------------
                                    408 ;	disp.c:20: void clear_gpo(void) {
                                    409 ;	-----------------------------------------
                                    410 ;	 function clear_gpo
                                    411 ;	-----------------------------------------
      002077                        412 _clear_gpo:
                                    413 ;	disp.c:21: gpo[GPO_OE] = 0xffu;
      002077 78 10            [12]  414 	mov	r0,#_gpo
      002079 74 04            [12]  415 	mov	a,#0x04
      00207B 26               [12]  416 	add	a,@r0
      00207C F8               [12]  417 	mov	r0,a
      00207D 74 FF            [12]  418 	mov	a,#0xff
      00207F F2               [24]  419 	movx	@r0,a
                                    420 ;	disp.c:22: gpo[0] = 0u;
      002080 78 10            [12]  421 	mov	r0,#_gpo
      002082 E6               [12]  422 	mov	a,@r0
      002083 F8               [12]  423 	mov	r0,a
      002084 E4               [12]  424 	clr	a
      002085 F2               [24]  425 	movx	@r0,a
                                    426 ;	disp.c:23: gpo[1] = 0u;
      002086 78 10            [12]  427 	mov	r0,#_gpo
      002088 E6               [12]  428 	mov	a,@r0
      002089 04               [12]  429 	inc	a
      00208A F8               [12]  430 	mov	r0,a
      00208B E4               [12]  431 	clr	a
      00208C F2               [24]  432 	movx	@r0,a
                                    433 ;	disp.c:24: gpo[2] = 0u;
      00208D 78 10            [12]  434 	mov	r0,#_gpo
      00208F 74 02            [12]  435 	mov	a,#0x02
      002091 26               [12]  436 	add	a,@r0
      002092 F8               [12]  437 	mov	r0,a
      002093 E4               [12]  438 	clr	a
      002094 F2               [24]  439 	movx	@r0,a
                                    440 ;	disp.c:25: gpo[3] = 0u;
      002095 78 10            [12]  441 	mov	r0,#_gpo
      002097 74 03            [12]  442 	mov	a,#0x03
      002099 26               [12]  443 	add	a,@r0
      00209A F8               [12]  444 	mov	r0,a
      00209B E4               [12]  445 	clr	a
      00209C F2               [24]  446 	movx	@r0,a
                                    447 ;	disp.c:27: return;
                                    448 ;	disp.c:28: }
      00209D 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'init_intr'
                                    452 ;------------------------------------------------------------
                                    453 ;	disp.c:30: void init_intr(void) {
                                    454 ;	-----------------------------------------
                                    455 ;	 function init_intr
                                    456 ;	-----------------------------------------
      00209E                        457 _init_intr:
                                    458 ;	disp.c:31: ET0 = 1;
                                    459 ;	assignBit
      00209E D2 A9            [12]  460 	setb	_ET0
                                    461 ;	disp.c:32: EA  = 1;
                                    462 ;	assignBit
      0020A0 D2 AF            [12]  463 	setb	_EA
                                    464 ;	disp.c:34: return;
                                    465 ;	disp.c:35: }
      0020A2 22               [24]  466 	ret
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'init_timer0'
                                    469 ;------------------------------------------------------------
                                    470 ;	disp.c:37: void init_timer0(void) {
                                    471 ;	-----------------------------------------
                                    472 ;	 function init_timer0
                                    473 ;	-----------------------------------------
      0020A3                        474 _init_timer0:
                                    475 ;	disp.c:38: TMOD = 0x01;
      0020A3 75 89 01         [24]  476 	mov	_TMOD,#0x01
                                    477 ;	disp.c:39: TH0 = 0x4C;
      0020A6 75 8C 4C         [24]  478 	mov	_TH0,#0x4c
                                    479 ;	disp.c:40: TL0 = 0x00;
      0020A9 75 8A 00         [24]  480 	mov	_TL0,#0x00
                                    481 ;	disp.c:41: TR0 = 1;
                                    482 ;	assignBit
      0020AC D2 8C            [12]  483 	setb	_TR0
                                    484 ;	disp.c:43: return;
                                    485 ;	disp.c:44: }
      0020AE 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'timer0_intr'
                                    489 ;------------------------------------------------------------
                                    490 ;t                         Allocated to registers r6 
                                    491 ;------------------------------------------------------------
                                    492 ;	disp.c:49: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    493 ;	-----------------------------------------
                                    494 ;	 function timer0_intr
                                    495 ;	-----------------------------------------
      0020AF                        496 _timer0_intr:
                           00000F   497 	ar7 = 0x0f
                           00000E   498 	ar6 = 0x0e
                           00000D   499 	ar5 = 0x0d
                           00000C   500 	ar4 = 0x0c
                           00000B   501 	ar3 = 0x0b
                           00000A   502 	ar2 = 0x0a
                           000009   503 	ar1 = 0x09
                           000008   504 	ar0 = 0x08
      0020AF C0 E0            [24]  505 	push	acc
      0020B1 C0 F0            [24]  506 	push	b
      0020B3 C0 D0            [24]  507 	push	psw
      0020B5 75 D0 08         [24]  508 	mov	psw,#0x08
                                    509 ;	disp.c:52: t = column & 7u;
      0020B8 78 19            [12]  510 	mov	r0,#_column
      0020BA 86 0F            [24]  511 	mov	ar7,@r0
      0020BC 74 07            [12]  512 	mov	a,#0x07
      0020BE 5F               [12]  513 	anl	a,r7
      0020BF FE               [12]  514 	mov	r6,a
                                    515 ;	disp.c:53: gpo[0] = ddata[t];
      0020C0 78 10            [12]  516 	mov	r0,#_gpo
      0020C2 86 09            [24]  517 	mov	ar1,@r0
      0020C4 EE               [12]  518 	mov	a,r6
      0020C5 24 11            [12]  519 	add	a,#_ddata
      0020C7 F8               [12]  520 	mov	r0,a
      0020C8 E6               [12]  521 	mov	a,@r0
      0020C9 F3               [24]  522 	movx	@r1,a
                                    523 ;	disp.c:54: gpo[1] = 1u << t;
      0020CA 78 10            [12]  524 	mov	r0,#_gpo
      0020CC E6               [12]  525 	mov	a,@r0
      0020CD 04               [12]  526 	inc	a
      0020CE F9               [12]  527 	mov	r1,a
      0020CF 8E F0            [24]  528 	mov	b,r6
      0020D1 05 F0            [12]  529 	inc	b
      0020D3 74 01            [12]  530 	mov	a,#0x01
      0020D5 80 02            [24]  531 	sjmp	00105$
      0020D7                        532 00103$:
      0020D7 25 E0            [12]  533 	add	a,acc
      0020D9                        534 00105$:
      0020D9 D5 F0 FB         [24]  535 	djnz	b,00103$
      0020DC F3               [24]  536 	movx	@r1,a
                                    537 ;	disp.c:55: column++;
      0020DD 78 19            [12]  538 	mov	r0,#_column
      0020DF EF               [12]  539 	mov	a,r7
      0020E0 04               [12]  540 	inc	a
      0020E1 F6               [12]  541 	mov	@r0,a
                                    542 ;	disp.c:57: TH0 = 0x4C;
      0020E2 75 8C 4C         [24]  543 	mov	_TH0,#0x4c
                                    544 ;	disp.c:58: TL0 = 0x00;
      0020E5 75 8A 00         [24]  545 	mov	_TL0,#0x00
                                    546 ;	disp.c:60: return;
                                    547 ;	disp.c:61: }
      0020E8 D0 D0            [24]  548 	pop	psw
      0020EA D0 F0            [24]  549 	pop	b
      0020EC D0 E0            [24]  550 	pop	acc
      0020EE 32               [24]  551 	reti
                                    552 ;	eliminated unneeded push/pop dpl
                                    553 ;	eliminated unneeded push/pop dph
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'main'
                                    556 ;------------------------------------------------------------
                                    557 ;j                         Allocated to registers r7 
                                    558 ;------------------------------------------------------------
                                    559 ;	disp.c:63: void main(void) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function main
                                    562 ;	-----------------------------------------
      0020EF                        563 _main:
                           000007   564 	ar7 = 0x07
                           000006   565 	ar6 = 0x06
                           000005   566 	ar5 = 0x05
                           000004   567 	ar4 = 0x04
                           000003   568 	ar3 = 0x03
                           000002   569 	ar2 = 0x02
                           000001   570 	ar1 = 0x01
                           000000   571 	ar0 = 0x00
                                    572 ;	disp.c:66: init_gpo();
      0020EF 12 20 6D         [24]  573 	lcall	_init_gpo
                                    574 ;	disp.c:67: clear_gpo();
      0020F2 12 20 77         [24]  575 	lcall	_clear_gpo
                                    576 ;	disp.c:69: gpo[GPO_OE] = 0xfcu;
      0020F5 78 10            [12]  577 	mov	r0,#_gpo
      0020F7 74 04            [12]  578 	mov	a,#0x04
      0020F9 26               [12]  579 	add	a,@r0
      0020FA F8               [12]  580 	mov	r0,a
      0020FB 74 FC            [12]  581 	mov	a,#0xfc
      0020FD F2               [24]  582 	movx	@r0,a
                                    583 ;	disp.c:70: column = 0u;
      0020FE 78 19            [12]  584 	mov	r0,#_column
      002100 76 00            [12]  585 	mov	@r0,#0x00
                                    586 ;	disp.c:72: for (j = 0u; j < 8u; j++)
      002102 7F 00            [12]  587 	mov	r7,#0x00
      002104                        588 00108$:
                                    589 ;	disp.c:73: ddata[j] = 0u;	
      002104 EF               [12]  590 	mov	a,r7
      002105 24 11            [12]  591 	add	a,#_ddata
      002107 F8               [12]  592 	mov	r0,a
      002108 76 00            [12]  593 	mov	@r0,#0x00
                                    594 ;	disp.c:72: for (j = 0u; j < 8u; j++)
      00210A 0F               [12]  595 	inc	r7
      00210B BF 08 00         [24]  596 	cjne	r7,#0x08,00139$
      00210E                        597 00139$:
      00210E 40 F4            [24]  598 	jc	00108$
                                    599 ;	disp.c:74: init_timer0();
      002110 12 20 A3         [24]  600 	lcall	_init_timer0
                                    601 ;	disp.c:76: init_intr();
      002113 12 20 9E         [24]  602 	lcall	_init_intr
                                    603 ;	disp.c:79: for (j = 0u; j < 7; j++) {
      002116                        604 00118$:
      002116 7F 00            [12]  605 	mov	r7,#0x00
      002118                        606 00110$:
                                    607 ;	disp.c:80: ddata[j]++;
      002118 EF               [12]  608 	mov	a,r7
      002119 24 11            [12]  609 	add	a,#_ddata
      00211B F9               [12]  610 	mov	r1,a
      00211C E7               [12]  611 	mov	a,@r1
      00211D 04               [12]  612 	inc	a
      00211E F7               [12]  613 	mov	@r1,a
                                    614 ;	disp.c:81: if (ddata[j]) break;
      00211F EF               [12]  615 	mov	a,r7
      002120 24 11            [12]  616 	add	a,#_ddata
      002122 F9               [12]  617 	mov	r1,a
      002123 E7               [12]  618 	mov	a,@r1
      002124 70 F0            [24]  619 	jnz	00118$
                                    620 ;	disp.c:79: for (j = 0u; j < 7; j++) {
      002126 0F               [12]  621 	inc	r7
      002127 BF 07 00         [24]  622 	cjne	r7,#0x07,00142$
      00212A                        623 00142$:
      00212A 40 EC            [24]  624 	jc	00110$
                                    625 ;	disp.c:85: return;
                                    626 ;	disp.c:86: }
      00212C 80 E8            [24]  627 	sjmp	00118$
                                    628 	.area CSEG    (CODE)
                                    629 	.area CONST   (CODE)
                                    630 	.area XINIT   (CODE)
                                    631 	.area CABS    (ABS,CODE)
