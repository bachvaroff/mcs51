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
      00200B 02 20 BF         [24]  350 	ljmp	_timer0_intr
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
      00200E 02 21 02         [24]  372 	ljmp	_main
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
      002079 74 06            [12]  415 	mov	a,#0x06
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
                                    447 ;	disp.c:26: gpo[4] = 0u;
      00209D 78 10            [12]  448 	mov	r0,#_gpo
      00209F 74 04            [12]  449 	mov	a,#0x04
      0020A1 26               [12]  450 	add	a,@r0
      0020A2 F8               [12]  451 	mov	r0,a
      0020A3 E4               [12]  452 	clr	a
      0020A4 F2               [24]  453 	movx	@r0,a
                                    454 ;	disp.c:27: gpo[5] = 0u;
      0020A5 78 10            [12]  455 	mov	r0,#_gpo
      0020A7 74 05            [12]  456 	mov	a,#0x05
      0020A9 26               [12]  457 	add	a,@r0
      0020AA F8               [12]  458 	mov	r0,a
      0020AB E4               [12]  459 	clr	a
      0020AC F2               [24]  460 	movx	@r0,a
                                    461 ;	disp.c:29: return;
                                    462 ;	disp.c:30: }
      0020AD 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'init_intr'
                                    466 ;------------------------------------------------------------
                                    467 ;	disp.c:32: void init_intr(void) {
                                    468 ;	-----------------------------------------
                                    469 ;	 function init_intr
                                    470 ;	-----------------------------------------
      0020AE                        471 _init_intr:
                                    472 ;	disp.c:33: ET0 = 1;
                                    473 ;	assignBit
      0020AE D2 A9            [12]  474 	setb	_ET0
                                    475 ;	disp.c:34: EA  = 1;
                                    476 ;	assignBit
      0020B0 D2 AF            [12]  477 	setb	_EA
                                    478 ;	disp.c:36: return;
                                    479 ;	disp.c:37: }
      0020B2 22               [24]  480 	ret
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'init_timer0'
                                    483 ;------------------------------------------------------------
                                    484 ;	disp.c:39: void init_timer0(void) {
                                    485 ;	-----------------------------------------
                                    486 ;	 function init_timer0
                                    487 ;	-----------------------------------------
      0020B3                        488 _init_timer0:
                                    489 ;	disp.c:40: TMOD = 0x01;
      0020B3 75 89 01         [24]  490 	mov	_TMOD,#0x01
                                    491 ;	disp.c:41: TH0 = 0x4C;
      0020B6 75 8C 4C         [24]  492 	mov	_TH0,#0x4c
                                    493 ;	disp.c:42: TL0 = 0x00;
      0020B9 75 8A 00         [24]  494 	mov	_TL0,#0x00
                                    495 ;	disp.c:43: TR0 = 1;
                                    496 ;	assignBit
      0020BC D2 8C            [12]  497 	setb	_TR0
                                    498 ;	disp.c:45: return;
                                    499 ;	disp.c:46: }
      0020BE 22               [24]  500 	ret
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'timer0_intr'
                                    503 ;------------------------------------------------------------
                                    504 ;t                         Allocated to registers r6 
                                    505 ;------------------------------------------------------------
                                    506 ;	disp.c:51: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    507 ;	-----------------------------------------
                                    508 ;	 function timer0_intr
                                    509 ;	-----------------------------------------
      0020BF                        510 _timer0_intr:
                           00000F   511 	ar7 = 0x0f
                           00000E   512 	ar6 = 0x0e
                           00000D   513 	ar5 = 0x0d
                           00000C   514 	ar4 = 0x0c
                           00000B   515 	ar3 = 0x0b
                           00000A   516 	ar2 = 0x0a
                           000009   517 	ar1 = 0x09
                           000008   518 	ar0 = 0x08
      0020BF C0 E0            [24]  519 	push	acc
      0020C1 C0 F0            [24]  520 	push	b
      0020C3 C0 D0            [24]  521 	push	psw
      0020C5 75 D0 08         [24]  522 	mov	psw,#0x08
                                    523 ;	disp.c:54: t = column & 7u;
      0020C8 78 19            [12]  524 	mov	r0,#_column
      0020CA 86 0F            [24]  525 	mov	ar7,@r0
      0020CC 74 07            [12]  526 	mov	a,#0x07
      0020CE 5F               [12]  527 	anl	a,r7
      0020CF FE               [12]  528 	mov	r6,a
                                    529 ;	disp.c:55: gpo[4] = ddata[t];
      0020D0 78 10            [12]  530 	mov	r0,#_gpo
      0020D2 74 04            [12]  531 	mov	a,#0x04
      0020D4 26               [12]  532 	add	a,@r0
      0020D5 F9               [12]  533 	mov	r1,a
      0020D6 EE               [12]  534 	mov	a,r6
      0020D7 24 11            [12]  535 	add	a,#_ddata
      0020D9 F8               [12]  536 	mov	r0,a
      0020DA E6               [12]  537 	mov	a,@r0
      0020DB F3               [24]  538 	movx	@r1,a
                                    539 ;	disp.c:56: gpo[5] = 1u << t;
      0020DC 78 10            [12]  540 	mov	r0,#_gpo
      0020DE 74 05            [12]  541 	mov	a,#0x05
      0020E0 26               [12]  542 	add	a,@r0
      0020E1 F9               [12]  543 	mov	r1,a
      0020E2 8E F0            [24]  544 	mov	b,r6
      0020E4 05 F0            [12]  545 	inc	b
      0020E6 74 01            [12]  546 	mov	a,#0x01
      0020E8 80 02            [24]  547 	sjmp	00105$
      0020EA                        548 00103$:
      0020EA 25 E0            [12]  549 	add	a,acc
      0020EC                        550 00105$:
      0020EC D5 F0 FB         [24]  551 	djnz	b,00103$
      0020EF F3               [24]  552 	movx	@r1,a
                                    553 ;	disp.c:57: column++;
      0020F0 78 19            [12]  554 	mov	r0,#_column
      0020F2 EF               [12]  555 	mov	a,r7
      0020F3 04               [12]  556 	inc	a
      0020F4 F6               [12]  557 	mov	@r0,a
                                    558 ;	disp.c:59: TH0 = 0x4C;
      0020F5 75 8C 4C         [24]  559 	mov	_TH0,#0x4c
                                    560 ;	disp.c:60: TL0 = 0x00;
      0020F8 75 8A 00         [24]  561 	mov	_TL0,#0x00
                                    562 ;	disp.c:62: return;
                                    563 ;	disp.c:63: }
      0020FB D0 D0            [24]  564 	pop	psw
      0020FD D0 F0            [24]  565 	pop	b
      0020FF D0 E0            [24]  566 	pop	acc
      002101 32               [24]  567 	reti
                                    568 ;	eliminated unneeded push/pop dpl
                                    569 ;	eliminated unneeded push/pop dph
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'main'
                                    572 ;------------------------------------------------------------
                                    573 ;j                         Allocated to registers r7 
                                    574 ;------------------------------------------------------------
                                    575 ;	disp.c:65: void main(void) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function main
                                    578 ;	-----------------------------------------
      002102                        579 _main:
                           000007   580 	ar7 = 0x07
                           000006   581 	ar6 = 0x06
                           000005   582 	ar5 = 0x05
                           000004   583 	ar4 = 0x04
                           000003   584 	ar3 = 0x03
                           000002   585 	ar2 = 0x02
                           000001   586 	ar1 = 0x01
                           000000   587 	ar0 = 0x00
                                    588 ;	disp.c:68: init_gpo();
      002102 12 20 6D         [24]  589 	lcall	_init_gpo
                                    590 ;	disp.c:69: clear_gpo();
      002105 12 20 77         [24]  591 	lcall	_clear_gpo
                                    592 ;	disp.c:71: gpo[GPO_OE] = 0xcfu;
      002108 78 10            [12]  593 	mov	r0,#_gpo
      00210A 74 06            [12]  594 	mov	a,#0x06
      00210C 26               [12]  595 	add	a,@r0
      00210D F8               [12]  596 	mov	r0,a
      00210E 74 CF            [12]  597 	mov	a,#0xcf
      002110 F2               [24]  598 	movx	@r0,a
                                    599 ;	disp.c:72: column = 0u;
      002111 78 19            [12]  600 	mov	r0,#_column
      002113 76 00            [12]  601 	mov	@r0,#0x00
                                    602 ;	disp.c:74: for (j = 0u; j < 8u; j++)
      002115 7F 00            [12]  603 	mov	r7,#0x00
      002117                        604 00108$:
                                    605 ;	disp.c:75: ddata[j] = 0u;	
      002117 EF               [12]  606 	mov	a,r7
      002118 24 11            [12]  607 	add	a,#_ddata
      00211A F8               [12]  608 	mov	r0,a
      00211B 76 00            [12]  609 	mov	@r0,#0x00
                                    610 ;	disp.c:74: for (j = 0u; j < 8u; j++)
      00211D 0F               [12]  611 	inc	r7
      00211E BF 08 00         [24]  612 	cjne	r7,#0x08,00139$
      002121                        613 00139$:
      002121 40 F4            [24]  614 	jc	00108$
                                    615 ;	disp.c:76: init_timer0();
      002123 12 20 B3         [24]  616 	lcall	_init_timer0
                                    617 ;	disp.c:78: init_intr();
      002126 12 20 AE         [24]  618 	lcall	_init_intr
                                    619 ;	disp.c:81: for (j = 0u; j < 7; j++) {
      002129                        620 00118$:
      002129 7F 00            [12]  621 	mov	r7,#0x00
      00212B                        622 00110$:
                                    623 ;	disp.c:82: ddata[j]++;
      00212B EF               [12]  624 	mov	a,r7
      00212C 24 11            [12]  625 	add	a,#_ddata
      00212E F9               [12]  626 	mov	r1,a
      00212F E7               [12]  627 	mov	a,@r1
      002130 04               [12]  628 	inc	a
      002131 F7               [12]  629 	mov	@r1,a
                                    630 ;	disp.c:83: if (ddata[j]) break;
      002132 EF               [12]  631 	mov	a,r7
      002133 24 11            [12]  632 	add	a,#_ddata
      002135 F9               [12]  633 	mov	r1,a
      002136 E7               [12]  634 	mov	a,@r1
      002137 70 F0            [24]  635 	jnz	00118$
                                    636 ;	disp.c:81: for (j = 0u; j < 7; j++) {
      002139 0F               [12]  637 	inc	r7
      00213A BF 07 00         [24]  638 	cjne	r7,#0x07,00142$
      00213D                        639 00142$:
      00213D 40 EC            [24]  640 	jc	00110$
                                    641 ;	disp.c:87: return;
                                    642 ;	disp.c:88: }
      00213F 80 E8            [24]  643 	sjmp	00118$
                                    644 	.area CSEG    (CODE)
                                    645 	.area CONST   (CODE)
                                    646 	.area XINIT   (CODE)
                                    647 	.area CABS    (ABS,CODE)
