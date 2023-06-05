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
                                     13 	.globl _init_disp
                                     14 	.globl _init_timer0
                                     15 	.globl _init_intr
                                     16 	.globl _clear_gpo
                                     17 	.globl _init_gpo
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
                                    141 	.globl _column
                                    142 	.globl _ddata
                                    143 	.globl _dcol
                                    144 	.globl _gpo
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
      000022                        296 __start__stack:
      000022                        297 	.ds	1
                                    298 
                                    299 ;--------------------------------------------------------
                                    300 ; indirectly addressable internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area ISEG    (DATA)
      000010                        303 _gpo::
      000010                        304 	.ds 1
      000011                        305 _dcol::
      000011                        306 	.ds 8
      000019                        307 _ddata::
      000019                        308 	.ds 8
      000021                        309 _column::
      000021                        310 	.ds 1
                                    311 ;--------------------------------------------------------
                                    312 ; absolute internal ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area IABS    (ABS,DATA)
                                    315 	.area IABS    (ABS,DATA)
                                    316 ;--------------------------------------------------------
                                    317 ; bit data
                                    318 ;--------------------------------------------------------
                                    319 	.area BSEG    (BIT)
                                    320 ;--------------------------------------------------------
                                    321 ; paged external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area PSEG    (PAG,XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; external ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XSEG    (XDATA)
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
      002000 02 20 11         [24]  351 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  352 	reti
      002004                        353 	.ds	7
      00200B 02 20 FD         [24]  354 	ljmp	_timer0_intr
                                    355 ;--------------------------------------------------------
                                    356 ; global & static initialisations
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.globl __sdcc_gsinit_startup
                                    363 	.globl __sdcc_program_startup
                                    364 	.globl __start__stack
                                    365 	.globl __mcs51_genXINIT
                                    366 	.globl __mcs51_genXRAMCLEAR
                                    367 	.globl __mcs51_genRAMCLEAR
                                    368 ;	disp.c:11: __idata const uint8_t dcol[8] = {
      00206A 78 11            [12]  369 	mov	r0,#_dcol
      00206C 76 01            [12]  370 	mov	@r0,#0x01
      00206E 78 12            [12]  371 	mov	r0,#(_dcol + 0x0001)
      002070 76 02            [12]  372 	mov	@r0,#0x02
      002072 78 13            [12]  373 	mov	r0,#(_dcol + 0x0002)
      002074 76 04            [12]  374 	mov	@r0,#0x04
      002076 78 14            [12]  375 	mov	r0,#(_dcol + 0x0003)
      002078 76 08            [12]  376 	mov	@r0,#0x08
      00207A 78 15            [12]  377 	mov	r0,#(_dcol + 0x0004)
      00207C 76 10            [12]  378 	mov	@r0,#0x10
      00207E 78 16            [12]  379 	mov	r0,#(_dcol + 0x0005)
      002080 76 20            [12]  380 	mov	@r0,#0x20
      002082 78 17            [12]  381 	mov	r0,#(_dcol + 0x0006)
      002084 76 40            [12]  382 	mov	@r0,#0x40
      002086 78 18            [12]  383 	mov	r0,#(_dcol + 0x0007)
      002088 76 80            [12]  384 	mov	@r0,#0x80
                                    385 	.area GSFINAL (CODE)
      00208A 02 20 0E         [24]  386 	ljmp	__sdcc_program_startup
                                    387 ;--------------------------------------------------------
                                    388 ; Home
                                    389 ;--------------------------------------------------------
                                    390 	.area HOME    (CODE)
                                    391 	.area HOME    (CODE)
      00200E                        392 __sdcc_program_startup:
      00200E 02 21 39         [24]  393 	ljmp	_main
                                    394 ;	return from main will return to caller
                                    395 ;--------------------------------------------------------
                                    396 ; code
                                    397 ;--------------------------------------------------------
                                    398 	.area CSEG    (CODE)
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'init_gpo'
                                    401 ;------------------------------------------------------------
                                    402 ;	disp.c:17: void init_gpo(void) {
                                    403 ;	-----------------------------------------
                                    404 ;	 function init_gpo
                                    405 ;	-----------------------------------------
      00208D                        406 _init_gpo:
                           000007   407 	ar7 = 0x07
                           000006   408 	ar6 = 0x06
                           000005   409 	ar5 = 0x05
                           000004   410 	ar4 = 0x04
                           000003   411 	ar3 = 0x03
                           000002   412 	ar2 = 0x02
                           000001   413 	ar1 = 0x01
                           000000   414 	ar0 = 0x00
                                    415 ;	disp.c:18: P1_7 = 1;
                                    416 ;	assignBit
      00208D D2 97            [12]  417 	setb	_P1_7
                                    418 ;	disp.c:19: P2 = GPO_BASE_H;
      00208F 75 A0 FF         [24]  419 	mov	_P2,#0xff
                                    420 ;	disp.c:20: gpo = (ppd_uint8_t)GPO_BASE_L;
      002092 78 10            [12]  421 	mov	r0,#_gpo
      002094 76 00            [12]  422 	mov	@r0,#0x00
                                    423 ;	disp.c:22: return;
                                    424 ;	disp.c:23: }
      002096 22               [24]  425 	ret
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'clear_gpo'
                                    428 ;------------------------------------------------------------
                                    429 ;	disp.c:25: void clear_gpo(void) {
                                    430 ;	-----------------------------------------
                                    431 ;	 function clear_gpo
                                    432 ;	-----------------------------------------
      002097                        433 _clear_gpo:
                                    434 ;	disp.c:26: gpo[GPO_OE] = 0xffu;
      002097 78 10            [12]  435 	mov	r0,#_gpo
      002099 74 06            [12]  436 	mov	a,#0x06
      00209B 26               [12]  437 	add	a,@r0
      00209C F8               [12]  438 	mov	r0,a
      00209D 74 FF            [12]  439 	mov	a,#0xff
      00209F F2               [24]  440 	movx	@r0,a
                                    441 ;	disp.c:27: gpo[0] = 0u;
      0020A0 78 10            [12]  442 	mov	r0,#_gpo
      0020A2 E6               [12]  443 	mov	a,@r0
      0020A3 F8               [12]  444 	mov	r0,a
      0020A4 E4               [12]  445 	clr	a
      0020A5 F2               [24]  446 	movx	@r0,a
                                    447 ;	disp.c:28: gpo[1] = 0u;
      0020A6 78 10            [12]  448 	mov	r0,#_gpo
      0020A8 E6               [12]  449 	mov	a,@r0
      0020A9 04               [12]  450 	inc	a
      0020AA F8               [12]  451 	mov	r0,a
      0020AB E4               [12]  452 	clr	a
      0020AC F2               [24]  453 	movx	@r0,a
                                    454 ;	disp.c:29: gpo[2] = 0u;
      0020AD 78 10            [12]  455 	mov	r0,#_gpo
      0020AF 74 02            [12]  456 	mov	a,#0x02
      0020B1 26               [12]  457 	add	a,@r0
      0020B2 F8               [12]  458 	mov	r0,a
      0020B3 E4               [12]  459 	clr	a
      0020B4 F2               [24]  460 	movx	@r0,a
                                    461 ;	disp.c:30: gpo[3] = 0u;
      0020B5 78 10            [12]  462 	mov	r0,#_gpo
      0020B7 74 03            [12]  463 	mov	a,#0x03
      0020B9 26               [12]  464 	add	a,@r0
      0020BA F8               [12]  465 	mov	r0,a
      0020BB E4               [12]  466 	clr	a
      0020BC F2               [24]  467 	movx	@r0,a
                                    468 ;	disp.c:31: gpo[4] = 0u;
      0020BD 78 10            [12]  469 	mov	r0,#_gpo
      0020BF 74 04            [12]  470 	mov	a,#0x04
      0020C1 26               [12]  471 	add	a,@r0
      0020C2 F8               [12]  472 	mov	r0,a
      0020C3 E4               [12]  473 	clr	a
      0020C4 F2               [24]  474 	movx	@r0,a
                                    475 ;	disp.c:32: gpo[5] = 0u;
      0020C5 78 10            [12]  476 	mov	r0,#_gpo
      0020C7 74 05            [12]  477 	mov	a,#0x05
      0020C9 26               [12]  478 	add	a,@r0
      0020CA F8               [12]  479 	mov	r0,a
      0020CB E4               [12]  480 	clr	a
      0020CC F2               [24]  481 	movx	@r0,a
                                    482 ;	disp.c:34: return;
                                    483 ;	disp.c:35: }
      0020CD 22               [24]  484 	ret
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'init_intr'
                                    487 ;------------------------------------------------------------
                                    488 ;	disp.c:37: void init_intr(void) {
                                    489 ;	-----------------------------------------
                                    490 ;	 function init_intr
                                    491 ;	-----------------------------------------
      0020CE                        492 _init_intr:
                                    493 ;	disp.c:38: ET0 = 1;
                                    494 ;	assignBit
      0020CE D2 A9            [12]  495 	setb	_ET0
                                    496 ;	disp.c:39: EA  = 1;
                                    497 ;	assignBit
      0020D0 D2 AF            [12]  498 	setb	_EA
                                    499 ;	disp.c:40: TR0 = 1;
                                    500 ;	assignBit
      0020D2 D2 8C            [12]  501 	setb	_TR0
                                    502 ;	disp.c:42: return;
                                    503 ;	disp.c:43: }
      0020D4 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'init_timer0'
                                    507 ;------------------------------------------------------------
                                    508 ;	disp.c:45: void init_timer0(void) {
                                    509 ;	-----------------------------------------
                                    510 ;	 function init_timer0
                                    511 ;	-----------------------------------------
      0020D5                        512 _init_timer0:
                                    513 ;	disp.c:46: TMOD = 0x01;
      0020D5 75 89 01         [24]  514 	mov	_TMOD,#0x01
                                    515 ;	disp.c:47: TR0 = 0;
                                    516 ;	assignBit
      0020D8 C2 8C            [12]  517 	clr	_TR0
                                    518 ;	disp.c:48: TH0 = 0xa6;
      0020DA 75 8C A6         [24]  519 	mov	_TH0,#0xa6
                                    520 ;	disp.c:49: TL0 = 0x09;
      0020DD 75 8A 09         [24]  521 	mov	_TL0,#0x09
                                    522 ;	disp.c:51: return;
                                    523 ;	disp.c:52: }
      0020E0 22               [24]  524 	ret
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'init_disp'
                                    527 ;------------------------------------------------------------
                                    528 ;j                         Allocated to registers r7 
                                    529 ;------------------------------------------------------------
                                    530 ;	disp.c:54: void init_disp(void) {
                                    531 ;	-----------------------------------------
                                    532 ;	 function init_disp
                                    533 ;	-----------------------------------------
      0020E1                        534 _init_disp:
                                    535 ;	disp.c:57: gpo[GPO_OE] = 0xcfu;
      0020E1 78 10            [12]  536 	mov	r0,#_gpo
      0020E3 74 06            [12]  537 	mov	a,#0x06
      0020E5 26               [12]  538 	add	a,@r0
      0020E6 F8               [12]  539 	mov	r0,a
      0020E7 74 CF            [12]  540 	mov	a,#0xcf
      0020E9 F2               [24]  541 	movx	@r0,a
                                    542 ;	disp.c:58: column = 0u;
      0020EA 78 21            [12]  543 	mov	r0,#_column
      0020EC 76 00            [12]  544 	mov	@r0,#0x00
                                    545 ;	disp.c:60: for (j = 0u; j < 8u; j++)
      0020EE 7F 00            [12]  546 	mov	r7,#0x00
      0020F0                        547 00102$:
                                    548 ;	disp.c:61: ddata[j] = 0u;
      0020F0 EF               [12]  549 	mov	a,r7
      0020F1 24 19            [12]  550 	add	a,#_ddata
      0020F3 F8               [12]  551 	mov	r0,a
      0020F4 76 00            [12]  552 	mov	@r0,#0x00
                                    553 ;	disp.c:60: for (j = 0u; j < 8u; j++)
      0020F6 0F               [12]  554 	inc	r7
      0020F7 BF 08 00         [24]  555 	cjne	r7,#0x08,00115$
      0020FA                        556 00115$:
      0020FA 40 F4            [24]  557 	jc	00102$
                                    558 ;	disp.c:63: return;
                                    559 ;	disp.c:64: }
      0020FC 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'timer0_intr'
                                    563 ;------------------------------------------------------------
                                    564 ;t                         Allocated to registers r7 
                                    565 ;------------------------------------------------------------
                                    566 ;	disp.c:66: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    567 ;	-----------------------------------------
                                    568 ;	 function timer0_intr
                                    569 ;	-----------------------------------------
      0020FD                        570 _timer0_intr:
                           00000F   571 	ar7 = 0x0f
                           00000E   572 	ar6 = 0x0e
                           00000D   573 	ar5 = 0x0d
                           00000C   574 	ar4 = 0x0c
                           00000B   575 	ar3 = 0x0b
                           00000A   576 	ar2 = 0x0a
                           000009   577 	ar1 = 0x09
                           000008   578 	ar0 = 0x08
      0020FD C0 E0            [24]  579 	push	acc
      0020FF C0 D0            [24]  580 	push	psw
      002101 75 D0 08         [24]  581 	mov	psw,#0x08
                                    582 ;	disp.c:69: TR0 = 0;
                                    583 ;	assignBit
      002104 C2 8C            [12]  584 	clr	_TR0
                                    585 ;	disp.c:71: t = column & 7u;
      002106 78 21            [12]  586 	mov	r0,#_column
      002108 86 0F            [24]  587 	mov	ar7,@r0
      00210A 53 0F 07         [24]  588 	anl	ar7,#0x07
                                    589 ;	disp.c:72: gpo[4] = ddata[t];
      00210D 78 10            [12]  590 	mov	r0,#_gpo
      00210F 74 04            [12]  591 	mov	a,#0x04
      002111 26               [12]  592 	add	a,@r0
      002112 F9               [12]  593 	mov	r1,a
      002113 EF               [12]  594 	mov	a,r7
      002114 24 19            [12]  595 	add	a,#_ddata
      002116 F8               [12]  596 	mov	r0,a
      002117 E6               [12]  597 	mov	a,@r0
      002118 F3               [24]  598 	movx	@r1,a
                                    599 ;	disp.c:73: gpo[5] = dcol[t];
      002119 78 10            [12]  600 	mov	r0,#_gpo
      00211B 74 05            [12]  601 	mov	a,#0x05
      00211D 26               [12]  602 	add	a,@r0
      00211E F9               [12]  603 	mov	r1,a
      00211F EF               [12]  604 	mov	a,r7
      002120 24 11            [12]  605 	add	a,#_dcol
      002122 F8               [12]  606 	mov	r0,a
      002123 E6               [12]  607 	mov	a,@r0
      002124 F3               [24]  608 	movx	@r1,a
                                    609 ;	disp.c:74: column++;
      002125 78 21            [12]  610 	mov	r0,#_column
      002127 E6               [12]  611 	mov	a,@r0
      002128 78 21            [12]  612 	mov	r0,#_column
      00212A 04               [12]  613 	inc	a
      00212B F6               [12]  614 	mov	@r0,a
                                    615 ;	disp.c:76: TH0 = 0xa6;
      00212C 75 8C A6         [24]  616 	mov	_TH0,#0xa6
                                    617 ;	disp.c:77: TL0 = 0x09;
      00212F 75 8A 09         [24]  618 	mov	_TL0,#0x09
                                    619 ;	disp.c:79: TR0 = 1;
                                    620 ;	assignBit
      002132 D2 8C            [12]  621 	setb	_TR0
                                    622 ;	disp.c:81: return;
                                    623 ;	disp.c:82: }
      002134 D0 D0            [24]  624 	pop	psw
      002136 D0 E0            [24]  625 	pop	acc
      002138 32               [24]  626 	reti
                                    627 ;	eliminated unneeded push/pop dpl
                                    628 ;	eliminated unneeded push/pop dph
                                    629 ;	eliminated unneeded push/pop b
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'main'
                                    632 ;------------------------------------------------------------
                                    633 ;j                         Allocated to registers r7 
                                    634 ;------------------------------------------------------------
                                    635 ;	disp.c:84: void main(void) {
                                    636 ;	-----------------------------------------
                                    637 ;	 function main
                                    638 ;	-----------------------------------------
      002139                        639 _main:
                           000007   640 	ar7 = 0x07
                           000006   641 	ar6 = 0x06
                           000005   642 	ar5 = 0x05
                           000004   643 	ar4 = 0x04
                           000003   644 	ar3 = 0x03
                           000002   645 	ar2 = 0x02
                           000001   646 	ar1 = 0x01
                           000000   647 	ar0 = 0x00
                                    648 ;	disp.c:87: init_gpo();
      002139 12 20 8D         [24]  649 	lcall	_init_gpo
                                    650 ;	disp.c:88: clear_gpo();
      00213C 12 20 97         [24]  651 	lcall	_clear_gpo
                                    652 ;	disp.c:89: init_disp();
      00213F 12 20 E1         [24]  653 	lcall	_init_disp
                                    654 ;	disp.c:90: init_timer0();
      002142 12 20 D5         [24]  655 	lcall	_init_timer0
                                    656 ;	disp.c:91: init_intr();
      002145 12 20 CE         [24]  657 	lcall	_init_intr
                                    658 ;	disp.c:94: for (j = 0u; j < 7; j++) {
      002148                        659 00115$:
      002148 7F 00            [12]  660 	mov	r7,#0x00
      00214A                        661 00110$:
                                    662 ;	disp.c:95: ddata[j]++;
      00214A EF               [12]  663 	mov	a,r7
      00214B 24 19            [12]  664 	add	a,#_ddata
      00214D F9               [12]  665 	mov	r1,a
      00214E E7               [12]  666 	mov	a,@r1
      00214F FE               [12]  667 	mov	r6,a
      002150 04               [12]  668 	inc	a
      002151 F7               [12]  669 	mov	@r1,a
                                    670 ;	disp.c:96: if (ddata[j]) break;
      002152 EF               [12]  671 	mov	a,r7
      002153 24 19            [12]  672 	add	a,#_ddata
      002155 F9               [12]  673 	mov	r1,a
      002156 E7               [12]  674 	mov	a,@r1
      002157 70 06            [24]  675 	jnz	00103$
                                    676 ;	disp.c:94: for (j = 0u; j < 7; j++) {
      002159 0F               [12]  677 	inc	r7
      00215A BF 07 00         [24]  678 	cjne	r7,#0x07,00137$
      00215D                        679 00137$:
      00215D 40 EB            [24]  680 	jc	00110$
      00215F                        681 00103$:
                                    682 ;	disp.c:100: do {
      00215F 7F 00            [12]  683 	mov	r7,#0x00
      002161                        684 00104$:
                                    685 ;	disp.c:110: __endasm;
      002161 00               [12]  686 	nop
      002162 00               [12]  687 	nop
      002163 00               [12]  688 	nop
      002164 00               [12]  689 	nop
      002165 00               [12]  690 	nop
      002166 00               [12]  691 	nop
      002167 00               [12]  692 	nop
      002168 00               [12]  693 	nop
                                    694 ;	disp.c:111: j++;
      002169 0F               [12]  695 	inc	r7
                                    696 ;	disp.c:112: } while (j);
      00216A EF               [12]  697 	mov	a,r7
      00216B 70 F4            [24]  698 	jnz	00104$
                                    699 ;	disp.c:115: return;
                                    700 ;	disp.c:116: }
      00216D 80 D9            [24]  701 	sjmp	00115$
                                    702 	.area CSEG    (CODE)
                                    703 	.area CONST   (CODE)
                                    704 	.area XINIT   (CODE)
                                    705 	.area CABS    (ABS,CODE)
