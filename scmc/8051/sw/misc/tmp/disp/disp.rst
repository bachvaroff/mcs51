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
      00200B 02 21 43         [24]  354 	ljmp	_timer0_intr
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
                                    368 ;	disp.c:17: __idata const uint8_t dcol[8] = {
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
      00200E 02 21 7F         [24]  393 	ljmp	_main
                                    394 ;	return from main will return to caller
                                    395 ;--------------------------------------------------------
                                    396 ; code
                                    397 ;--------------------------------------------------------
                                    398 	.area CSEG    (CODE)
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'init_gpo'
                                    401 ;------------------------------------------------------------
                                    402 ;	disp.c:33: void init_gpo(void) {
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
                                    415 ;	disp.c:34: P1_7 = 1;
                                    416 ;	assignBit
      00208D D2 97            [12]  417 	setb	_P1_7
                                    418 ;	disp.c:35: P2 = GPO_BASE_H;
      00208F 75 A0 FF         [24]  419 	mov	_P2,#0xff
                                    420 ;	disp.c:36: gpo = (ppd_uint8_t)GPO_BASE_L;
      002092 78 10            [12]  421 	mov	r0,#_gpo
      002094 76 00            [12]  422 	mov	@r0,#0x00
                                    423 ;	disp.c:37: CLEAR_GPO;
      002096 78 10            [12]  424 	mov	r0,#_gpo
      002098 74 06            [12]  425 	mov	a,#0x06
      00209A 26               [12]  426 	add	a,@r0
      00209B F8               [12]  427 	mov	r0,a
      00209C 74 FF            [12]  428 	mov	a,#0xff
      00209E F2               [24]  429 	movx	@r0,a
      00209F 78 10            [12]  430 	mov	r0,#_gpo
      0020A1 E6               [12]  431 	mov	a,@r0
      0020A2 F8               [12]  432 	mov	r0,a
      0020A3 E4               [12]  433 	clr	a
      0020A4 F2               [24]  434 	movx	@r0,a
      0020A5 78 10            [12]  435 	mov	r0,#_gpo
      0020A7 E6               [12]  436 	mov	a,@r0
      0020A8 04               [12]  437 	inc	a
      0020A9 F8               [12]  438 	mov	r0,a
      0020AA E4               [12]  439 	clr	a
      0020AB F2               [24]  440 	movx	@r0,a
      0020AC 78 10            [12]  441 	mov	r0,#_gpo
      0020AE 74 02            [12]  442 	mov	a,#0x02
      0020B0 26               [12]  443 	add	a,@r0
      0020B1 F8               [12]  444 	mov	r0,a
      0020B2 E4               [12]  445 	clr	a
      0020B3 F2               [24]  446 	movx	@r0,a
      0020B4 78 10            [12]  447 	mov	r0,#_gpo
      0020B6 74 03            [12]  448 	mov	a,#0x03
      0020B8 26               [12]  449 	add	a,@r0
      0020B9 F8               [12]  450 	mov	r0,a
      0020BA E4               [12]  451 	clr	a
      0020BB F2               [24]  452 	movx	@r0,a
      0020BC 78 10            [12]  453 	mov	r0,#_gpo
      0020BE 74 04            [12]  454 	mov	a,#0x04
      0020C0 26               [12]  455 	add	a,@r0
      0020C1 F8               [12]  456 	mov	r0,a
      0020C2 E4               [12]  457 	clr	a
      0020C3 F2               [24]  458 	movx	@r0,a
      0020C4 78 10            [12]  459 	mov	r0,#_gpo
      0020C6 74 05            [12]  460 	mov	a,#0x05
      0020C8 26               [12]  461 	add	a,@r0
      0020C9 F8               [12]  462 	mov	r0,a
      0020CA E4               [12]  463 	clr	a
      0020CB F2               [24]  464 	movx	@r0,a
                                    465 ;	disp.c:39: return;
                                    466 ;	disp.c:40: }
      0020CC 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'clear_gpo'
                                    470 ;------------------------------------------------------------
                                    471 ;	disp.c:42: void clear_gpo(void) {
                                    472 ;	-----------------------------------------
                                    473 ;	 function clear_gpo
                                    474 ;	-----------------------------------------
      0020CD                        475 _clear_gpo:
                                    476 ;	disp.c:43: CLEAR_GPO;
      0020CD 78 10            [12]  477 	mov	r0,#_gpo
      0020CF 74 06            [12]  478 	mov	a,#0x06
      0020D1 26               [12]  479 	add	a,@r0
      0020D2 F8               [12]  480 	mov	r0,a
      0020D3 74 FF            [12]  481 	mov	a,#0xff
      0020D5 F2               [24]  482 	movx	@r0,a
      0020D6 78 10            [12]  483 	mov	r0,#_gpo
      0020D8 E6               [12]  484 	mov	a,@r0
      0020D9 F8               [12]  485 	mov	r0,a
      0020DA E4               [12]  486 	clr	a
      0020DB F2               [24]  487 	movx	@r0,a
      0020DC 78 10            [12]  488 	mov	r0,#_gpo
      0020DE E6               [12]  489 	mov	a,@r0
      0020DF 04               [12]  490 	inc	a
      0020E0 F8               [12]  491 	mov	r0,a
      0020E1 E4               [12]  492 	clr	a
      0020E2 F2               [24]  493 	movx	@r0,a
      0020E3 78 10            [12]  494 	mov	r0,#_gpo
      0020E5 74 02            [12]  495 	mov	a,#0x02
      0020E7 26               [12]  496 	add	a,@r0
      0020E8 F8               [12]  497 	mov	r0,a
      0020E9 E4               [12]  498 	clr	a
      0020EA F2               [24]  499 	movx	@r0,a
      0020EB 78 10            [12]  500 	mov	r0,#_gpo
      0020ED 74 03            [12]  501 	mov	a,#0x03
      0020EF 26               [12]  502 	add	a,@r0
      0020F0 F8               [12]  503 	mov	r0,a
      0020F1 E4               [12]  504 	clr	a
      0020F2 F2               [24]  505 	movx	@r0,a
      0020F3 78 10            [12]  506 	mov	r0,#_gpo
      0020F5 74 04            [12]  507 	mov	a,#0x04
      0020F7 26               [12]  508 	add	a,@r0
      0020F8 F8               [12]  509 	mov	r0,a
      0020F9 E4               [12]  510 	clr	a
      0020FA F2               [24]  511 	movx	@r0,a
      0020FB 78 10            [12]  512 	mov	r0,#_gpo
      0020FD 74 05            [12]  513 	mov	a,#0x05
      0020FF 26               [12]  514 	add	a,@r0
      002100 F8               [12]  515 	mov	r0,a
      002101 E4               [12]  516 	clr	a
      002102 F2               [24]  517 	movx	@r0,a
                                    518 ;	disp.c:45: return;
                                    519 ;	disp.c:46: }
      002103 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'init_intr'
                                    523 ;------------------------------------------------------------
                                    524 ;	disp.c:48: void init_intr(void) {
                                    525 ;	-----------------------------------------
                                    526 ;	 function init_intr
                                    527 ;	-----------------------------------------
      002104                        528 _init_intr:
                                    529 ;	disp.c:49: DIS_TR0;
                                    530 ;	assignBit
      002104 C2 8C            [12]  531 	clr	_TR0
                                    532 ;	disp.c:50: ET0 = 1;
                                    533 ;	assignBit
      002106 D2 A9            [12]  534 	setb	_ET0
                                    535 ;	disp.c:51: EA  = 1;
                                    536 ;	assignBit
      002108 D2 AF            [12]  537 	setb	_EA
                                    538 ;	disp.c:53: return;
                                    539 ;	disp.c:54: }
      00210A 22               [24]  540 	ret
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'init_timer0'
                                    543 ;------------------------------------------------------------
                                    544 ;	disp.c:56: void init_timer0(void) {
                                    545 ;	-----------------------------------------
                                    546 ;	 function init_timer0
                                    547 ;	-----------------------------------------
      00210B                        548 _init_timer0:
                                    549 ;	disp.c:57: DIS_TR0;
                                    550 ;	assignBit
      00210B C2 8C            [12]  551 	clr	_TR0
                                    552 ;	disp.c:58: TMOD = 0x01;
      00210D 75 89 01         [24]  553 	mov	_TMOD,#0x01
                                    554 ;	disp.c:59: TH0 = 0xa6;
      002110 75 8C A6         [24]  555 	mov	_TH0,#0xa6
                                    556 ;	disp.c:60: TL0 = 0x09;
      002113 75 8A 09         [24]  557 	mov	_TL0,#0x09
                                    558 ;	disp.c:62: return;
                                    559 ;	disp.c:63: }
      002116 22               [24]  560 	ret
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'init_disp'
                                    563 ;------------------------------------------------------------
                                    564 ;j                         Allocated to registers r7 
                                    565 ;------------------------------------------------------------
                                    566 ;	disp.c:65: void init_disp(void) {
                                    567 ;	-----------------------------------------
                                    568 ;	 function init_disp
                                    569 ;	-----------------------------------------
      002117                        570 _init_disp:
                                    571 ;	disp.c:68: gpo[4] = 0u;
      002117 78 10            [12]  572 	mov	r0,#_gpo
      002119 74 04            [12]  573 	mov	a,#0x04
      00211B 26               [12]  574 	add	a,@r0
      00211C F8               [12]  575 	mov	r0,a
      00211D E4               [12]  576 	clr	a
      00211E F2               [24]  577 	movx	@r0,a
                                    578 ;	disp.c:69: gpo[5] = 0u;
      00211F 78 10            [12]  579 	mov	r0,#_gpo
      002121 74 05            [12]  580 	mov	a,#0x05
      002123 26               [12]  581 	add	a,@r0
      002124 F8               [12]  582 	mov	r0,a
      002125 E4               [12]  583 	clr	a
      002126 F2               [24]  584 	movx	@r0,a
                                    585 ;	disp.c:70: gpo[GPO_OE] = 0xcfu;
      002127 78 10            [12]  586 	mov	r0,#_gpo
      002129 74 06            [12]  587 	mov	a,#0x06
      00212B 26               [12]  588 	add	a,@r0
      00212C F8               [12]  589 	mov	r0,a
      00212D 74 CF            [12]  590 	mov	a,#0xcf
      00212F F2               [24]  591 	movx	@r0,a
                                    592 ;	disp.c:72: column = 0u;
      002130 78 21            [12]  593 	mov	r0,#_column
      002132 76 00            [12]  594 	mov	@r0,#0x00
                                    595 ;	disp.c:74: for (j = 0u; j < 8u; j++)
      002134 7F 00            [12]  596 	mov	r7,#0x00
      002136                        597 00102$:
                                    598 ;	disp.c:75: ddata[j] = 0u;
      002136 EF               [12]  599 	mov	a,r7
      002137 24 19            [12]  600 	add	a,#_ddata
      002139 F8               [12]  601 	mov	r0,a
      00213A 76 00            [12]  602 	mov	@r0,#0x00
                                    603 ;	disp.c:74: for (j = 0u; j < 8u; j++)
      00213C 0F               [12]  604 	inc	r7
      00213D BF 08 00         [24]  605 	cjne	r7,#0x08,00115$
      002140                        606 00115$:
      002140 40 F4            [24]  607 	jc	00102$
                                    608 ;	disp.c:77: return;
                                    609 ;	disp.c:78: }
      002142 22               [24]  610 	ret
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'timer0_intr'
                                    613 ;------------------------------------------------------------
                                    614 ;t                         Allocated to registers r7 
                                    615 ;------------------------------------------------------------
                                    616 ;	disp.c:80: void timer0_intr(void) __interrupt TF0_VECTOR __using 1 {
                                    617 ;	-----------------------------------------
                                    618 ;	 function timer0_intr
                                    619 ;	-----------------------------------------
      002143                        620 _timer0_intr:
                           00000F   621 	ar7 = 0x0f
                           00000E   622 	ar6 = 0x0e
                           00000D   623 	ar5 = 0x0d
                           00000C   624 	ar4 = 0x0c
                           00000B   625 	ar3 = 0x0b
                           00000A   626 	ar2 = 0x0a
                           000009   627 	ar1 = 0x09
                           000008   628 	ar0 = 0x08
      002143 C0 E0            [24]  629 	push	acc
      002145 C0 D0            [24]  630 	push	psw
      002147 75 D0 08         [24]  631 	mov	psw,#0x08
                                    632 ;	disp.c:83: DIS_TR0;
                                    633 ;	assignBit
      00214A C2 8C            [12]  634 	clr	_TR0
                                    635 ;	disp.c:85: t = column & 7u;
      00214C 78 21            [12]  636 	mov	r0,#_column
      00214E 86 0F            [24]  637 	mov	ar7,@r0
      002150 53 0F 07         [24]  638 	anl	ar7,#0x07
                                    639 ;	disp.c:86: gpo[4] = ddata[t];
      002153 78 10            [12]  640 	mov	r0,#_gpo
      002155 74 04            [12]  641 	mov	a,#0x04
      002157 26               [12]  642 	add	a,@r0
      002158 F9               [12]  643 	mov	r1,a
      002159 EF               [12]  644 	mov	a,r7
      00215A 24 19            [12]  645 	add	a,#_ddata
      00215C F8               [12]  646 	mov	r0,a
      00215D E6               [12]  647 	mov	a,@r0
      00215E F3               [24]  648 	movx	@r1,a
                                    649 ;	disp.c:87: gpo[5] = dcol[t];
      00215F 78 10            [12]  650 	mov	r0,#_gpo
      002161 74 05            [12]  651 	mov	a,#0x05
      002163 26               [12]  652 	add	a,@r0
      002164 F9               [12]  653 	mov	r1,a
      002165 EF               [12]  654 	mov	a,r7
      002166 24 11            [12]  655 	add	a,#_dcol
      002168 F8               [12]  656 	mov	r0,a
      002169 E6               [12]  657 	mov	a,@r0
      00216A F3               [24]  658 	movx	@r1,a
                                    659 ;	disp.c:88: column++;
      00216B 78 21            [12]  660 	mov	r0,#_column
      00216D E6               [12]  661 	mov	a,@r0
      00216E 78 21            [12]  662 	mov	r0,#_column
      002170 04               [12]  663 	inc	a
      002171 F6               [12]  664 	mov	@r0,a
                                    665 ;	disp.c:90: TH0 = 0xa6;
      002172 75 8C A6         [24]  666 	mov	_TH0,#0xa6
                                    667 ;	disp.c:91: TL0 = 0x09;
      002175 75 8A 09         [24]  668 	mov	_TL0,#0x09
                                    669 ;	disp.c:93: EN_TR0;
                                    670 ;	assignBit
      002178 D2 8C            [12]  671 	setb	_TR0
                                    672 ;	disp.c:95: return;
                                    673 ;	disp.c:96: }
      00217A D0 D0            [24]  674 	pop	psw
      00217C D0 E0            [24]  675 	pop	acc
      00217E 32               [24]  676 	reti
                                    677 ;	eliminated unneeded push/pop dpl
                                    678 ;	eliminated unneeded push/pop dph
                                    679 ;	eliminated unneeded push/pop b
                                    680 ;------------------------------------------------------------
                                    681 ;Allocation info for local variables in function 'main'
                                    682 ;------------------------------------------------------------
                                    683 ;j                         Allocated to registers r7 
                                    684 ;------------------------------------------------------------
                                    685 ;	disp.c:98: void main(void) {
                                    686 ;	-----------------------------------------
                                    687 ;	 function main
                                    688 ;	-----------------------------------------
      00217F                        689 _main:
                           000007   690 	ar7 = 0x07
                           000006   691 	ar6 = 0x06
                           000005   692 	ar5 = 0x05
                           000004   693 	ar4 = 0x04
                           000003   694 	ar3 = 0x03
                           000002   695 	ar2 = 0x02
                           000001   696 	ar1 = 0x01
                           000000   697 	ar0 = 0x00
                                    698 ;	disp.c:101: init_gpo();
      00217F 12 20 8D         [24]  699 	lcall	_init_gpo
                                    700 ;	disp.c:102: clear_gpo();
      002182 12 20 CD         [24]  701 	lcall	_clear_gpo
                                    702 ;	disp.c:103: init_disp();
      002185 12 21 17         [24]  703 	lcall	_init_disp
                                    704 ;	disp.c:105: for (j = 1u; j < 8u; j++)
      002188 7F 01            [12]  705 	mov	r7,#0x01
      00218A                        706 00115$:
                                    707 ;	disp.c:106: ddata[j] = ddata[j - 1u] + 1u;
      00218A EF               [12]  708 	mov	a,r7
      00218B 24 19            [12]  709 	add	a,#_ddata
      00218D F9               [12]  710 	mov	r1,a
      00218E EF               [12]  711 	mov	a,r7
      00218F 14               [12]  712 	dec	a
      002190 24 19            [12]  713 	add	a,#_ddata
      002192 F8               [12]  714 	mov	r0,a
      002193 E6               [12]  715 	mov	a,@r0
      002194 04               [12]  716 	inc	a
      002195 F7               [12]  717 	mov	@r1,a
                                    718 ;	disp.c:105: for (j = 1u; j < 8u; j++)
      002196 0F               [12]  719 	inc	r7
      002197 BF 08 00         [24]  720 	cjne	r7,#0x08,00156$
      00219A                        721 00156$:
      00219A 40 EE            [24]  722 	jc	00115$
                                    723 ;	disp.c:108: init_timer0();
      00219C 12 21 0B         [24]  724 	lcall	_init_timer0
                                    725 ;	disp.c:109: init_intr();
      00219F 12 21 04         [24]  726 	lcall	_init_intr
                                    727 ;	disp.c:111: EN_TR0;
                                    728 ;	assignBit
      0021A2 D2 8C            [12]  729 	setb	_TR0
                                    730 ;	disp.c:115: do {
      0021A4                        731 00123$:
      0021A4 7F 00            [12]  732 	mov	r7,#0x00
      0021A6                        733 00105$:
                                    734 ;	disp.c:125: __endasm;
      0021A6 00               [12]  735 	nop
      0021A7 00               [12]  736 	nop
      0021A8 00               [12]  737 	nop
      0021A9 00               [12]  738 	nop
      0021AA 00               [12]  739 	nop
      0021AB 00               [12]  740 	nop
      0021AC 00               [12]  741 	nop
      0021AD 00               [12]  742 	nop
                                    743 ;	disp.c:126: j++;
      0021AE 0F               [12]  744 	inc	r7
                                    745 ;	disp.c:127: } while (j);
      0021AF EF               [12]  746 	mov	a,r7
                                    747 ;	disp.c:129: for (j = 0u; j < 8u; j++) {
      0021B0 70 F4            [24]  748 	jnz	00105$
      0021B2 FF               [12]  749 	mov	r7,a
      0021B3                        750 00117$:
                                    751 ;	disp.c:130: if (!j) ddata[j]++;
      0021B3 EF               [12]  752 	mov	a,r7
      0021B4 70 0A            [24]  753 	jnz	00109$
      0021B6 EF               [12]  754 	mov	a,r7
      0021B7 24 19            [12]  755 	add	a,#_ddata
      0021B9 F9               [12]  756 	mov	r1,a
      0021BA E7               [12]  757 	mov	a,@r1
      0021BB FE               [12]  758 	mov	r6,a
      0021BC 04               [12]  759 	inc	a
      0021BD F7               [12]  760 	mov	@r1,a
      0021BE 80 0D            [24]  761 	sjmp	00118$
      0021C0                        762 00109$:
                                    763 ;	disp.c:131: else ddata[j] = ddata[j - 1u] + 1u;
      0021C0 EF               [12]  764 	mov	a,r7
      0021C1 24 19            [12]  765 	add	a,#_ddata
      0021C3 F9               [12]  766 	mov	r1,a
      0021C4 EF               [12]  767 	mov	a,r7
      0021C5 14               [12]  768 	dec	a
      0021C6 24 19            [12]  769 	add	a,#_ddata
      0021C8 F8               [12]  770 	mov	r0,a
      0021C9 E6               [12]  771 	mov	a,@r0
      0021CA FE               [12]  772 	mov	r6,a
      0021CB 04               [12]  773 	inc	a
      0021CC F7               [12]  774 	mov	@r1,a
      0021CD                        775 00118$:
                                    776 ;	disp.c:129: for (j = 0u; j < 8u; j++) {
      0021CD 0F               [12]  777 	inc	r7
      0021CE BF 08 00         [24]  778 	cjne	r7,#0x08,00160$
      0021D1                        779 00160$:
      0021D1 40 E0            [24]  780 	jc	00117$
                                    781 ;	disp.c:135: return;
                                    782 ;	disp.c:136: }
      0021D3 80 CF            [24]  783 	sjmp	00123$
                                    784 	.area CSEG    (CODE)
                                    785 	.area CONST   (CODE)
                                    786 	.area XINIT   (CODE)
                                    787 	.area CABS    (ABS,CODE)
