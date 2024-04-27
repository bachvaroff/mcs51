                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module calc
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _state_exec
                                     13 	.globl _state_init
                                     14 	.globl _stack_iter_peek
                                     15 	.globl _stack_peek2
                                     16 	.globl _stack_peek
                                     17 	.globl _stack_pop
                                     18 	.globl _stack_push
                                     19 	.globl _stack_init
                                     20 	.globl _print32x
                                     21 	.globl _print32bin
                                     22 	.globl _printstr
                                     23 	.globl _getchar
                                     24 	.globl _putchar
                                     25 	.globl _isxdigit
                                     26 	.globl _printf
                                     27 	.globl _strtol
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _FL
                                     35 	.globl _P
                                     36 	.globl _TF2
                                     37 	.globl _EXF2
                                     38 	.globl _RCLK
                                     39 	.globl _TCLK
                                     40 	.globl _EXEN2
                                     41 	.globl _TR2
                                     42 	.globl _C_T2
                                     43 	.globl _CP_RL2
                                     44 	.globl _T2CON_7
                                     45 	.globl _T2CON_6
                                     46 	.globl _T2CON_5
                                     47 	.globl _T2CON_4
                                     48 	.globl _T2CON_3
                                     49 	.globl _T2CON_2
                                     50 	.globl _T2CON_1
                                     51 	.globl _T2CON_0
                                     52 	.globl _PT2
                                     53 	.globl _PS
                                     54 	.globl _PT1
                                     55 	.globl _PX1
                                     56 	.globl _PT0
                                     57 	.globl _PX0
                                     58 	.globl _RD
                                     59 	.globl _WR
                                     60 	.globl _T1
                                     61 	.globl _T0
                                     62 	.globl _INT1
                                     63 	.globl _INT0
                                     64 	.globl _TXD
                                     65 	.globl _RXD
                                     66 	.globl _P3_7
                                     67 	.globl _P3_6
                                     68 	.globl _P3_5
                                     69 	.globl _P3_4
                                     70 	.globl _P3_3
                                     71 	.globl _P3_2
                                     72 	.globl _P3_1
                                     73 	.globl _P3_0
                                     74 	.globl _EA
                                     75 	.globl _ET2
                                     76 	.globl _ES
                                     77 	.globl _ET1
                                     78 	.globl _EX1
                                     79 	.globl _ET0
                                     80 	.globl _EX0
                                     81 	.globl _P2_7
                                     82 	.globl _P2_6
                                     83 	.globl _P2_5
                                     84 	.globl _P2_4
                                     85 	.globl _P2_3
                                     86 	.globl _P2_2
                                     87 	.globl _P2_1
                                     88 	.globl _P2_0
                                     89 	.globl _SM0
                                     90 	.globl _SM1
                                     91 	.globl _SM2
                                     92 	.globl _REN
                                     93 	.globl _TB8
                                     94 	.globl _RB8
                                     95 	.globl _TI
                                     96 	.globl _RI
                                     97 	.globl _T2EX
                                     98 	.globl _T2
                                     99 	.globl _P1_7
                                    100 	.globl _P1_6
                                    101 	.globl _P1_5
                                    102 	.globl _P1_4
                                    103 	.globl _P1_3
                                    104 	.globl _P1_2
                                    105 	.globl _P1_1
                                    106 	.globl _P1_0
                                    107 	.globl _TF1
                                    108 	.globl _TR1
                                    109 	.globl _TF0
                                    110 	.globl _TR0
                                    111 	.globl _IE1
                                    112 	.globl _IT1
                                    113 	.globl _IE0
                                    114 	.globl _IT0
                                    115 	.globl _P0_7
                                    116 	.globl _P0_6
                                    117 	.globl _P0_5
                                    118 	.globl _P0_4
                                    119 	.globl _P0_3
                                    120 	.globl _P0_2
                                    121 	.globl _P0_1
                                    122 	.globl _P0_0
                                    123 	.globl _B
                                    124 	.globl _A
                                    125 	.globl _ACC
                                    126 	.globl _PSW
                                    127 	.globl _TH2
                                    128 	.globl _TL2
                                    129 	.globl _RCAP2H
                                    130 	.globl _RCAP2L
                                    131 	.globl _T2MOD
                                    132 	.globl _T2CON
                                    133 	.globl _IP
                                    134 	.globl _P3
                                    135 	.globl _IE
                                    136 	.globl _P2
                                    137 	.globl _SBUF
                                    138 	.globl _SCON
                                    139 	.globl _P1
                                    140 	.globl _TH1
                                    141 	.globl _TH0
                                    142 	.globl _TL1
                                    143 	.globl _TL0
                                    144 	.globl _TMOD
                                    145 	.globl _TCON
                                    146 	.globl _PCON
                                    147 	.globl _DPH
                                    148 	.globl _DPL
                                    149 	.globl _SP
                                    150 	.globl _P0
                                    151 	.globl _giant
                                    152 ;--------------------------------------------------------
                                    153 ; special function registers
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0	=	0x0080
                           000081   158 _SP	=	0x0081
                           000082   159 _DPL	=	0x0082
                           000083   160 _DPH	=	0x0083
                           000087   161 _PCON	=	0x0087
                           000088   162 _TCON	=	0x0088
                           000089   163 _TMOD	=	0x0089
                           00008A   164 _TL0	=	0x008a
                           00008B   165 _TL1	=	0x008b
                           00008C   166 _TH0	=	0x008c
                           00008D   167 _TH1	=	0x008d
                           000090   168 _P1	=	0x0090
                           000098   169 _SCON	=	0x0098
                           000099   170 _SBUF	=	0x0099
                           0000A0   171 _P2	=	0x00a0
                           0000A8   172 _IE	=	0x00a8
                           0000B0   173 _P3	=	0x00b0
                           0000B8   174 _IP	=	0x00b8
                           0000C8   175 _T2CON	=	0x00c8
                           0000C9   176 _T2MOD	=	0x00c9
                           0000CA   177 _RCAP2L	=	0x00ca
                           0000CB   178 _RCAP2H	=	0x00cb
                           0000CC   179 _TL2	=	0x00cc
                           0000CD   180 _TH2	=	0x00cd
                           0000D0   181 _PSW	=	0x00d0
                           0000E0   182 _ACC	=	0x00e0
                           0000E0   183 _A	=	0x00e0
                           0000F0   184 _B	=	0x00f0
                                    185 ;--------------------------------------------------------
                                    186 ; special function bits
                                    187 ;--------------------------------------------------------
                                    188 	.area RSEG    (ABS,DATA)
      000000                        189 	.org 0x0000
                           000080   190 _P0_0	=	0x0080
                           000081   191 _P0_1	=	0x0081
                           000082   192 _P0_2	=	0x0082
                           000083   193 _P0_3	=	0x0083
                           000084   194 _P0_4	=	0x0084
                           000085   195 _P0_5	=	0x0085
                           000086   196 _P0_6	=	0x0086
                           000087   197 _P0_7	=	0x0087
                           000088   198 _IT0	=	0x0088
                           000089   199 _IE0	=	0x0089
                           00008A   200 _IT1	=	0x008a
                           00008B   201 _IE1	=	0x008b
                           00008C   202 _TR0	=	0x008c
                           00008D   203 _TF0	=	0x008d
                           00008E   204 _TR1	=	0x008e
                           00008F   205 _TF1	=	0x008f
                           000090   206 _P1_0	=	0x0090
                           000091   207 _P1_1	=	0x0091
                           000092   208 _P1_2	=	0x0092
                           000093   209 _P1_3	=	0x0093
                           000094   210 _P1_4	=	0x0094
                           000095   211 _P1_5	=	0x0095
                           000096   212 _P1_6	=	0x0096
                           000097   213 _P1_7	=	0x0097
                           000090   214 _T2	=	0x0090
                           000091   215 _T2EX	=	0x0091
                           000098   216 _RI	=	0x0098
                           000099   217 _TI	=	0x0099
                           00009A   218 _RB8	=	0x009a
                           00009B   219 _TB8	=	0x009b
                           00009C   220 _REN	=	0x009c
                           00009D   221 _SM2	=	0x009d
                           00009E   222 _SM1	=	0x009e
                           00009F   223 _SM0	=	0x009f
                           0000A0   224 _P2_0	=	0x00a0
                           0000A1   225 _P2_1	=	0x00a1
                           0000A2   226 _P2_2	=	0x00a2
                           0000A3   227 _P2_3	=	0x00a3
                           0000A4   228 _P2_4	=	0x00a4
                           0000A5   229 _P2_5	=	0x00a5
                           0000A6   230 _P2_6	=	0x00a6
                           0000A7   231 _P2_7	=	0x00a7
                           0000A8   232 _EX0	=	0x00a8
                           0000A9   233 _ET0	=	0x00a9
                           0000AA   234 _EX1	=	0x00aa
                           0000AB   235 _ET1	=	0x00ab
                           0000AC   236 _ES	=	0x00ac
                           0000AD   237 _ET2	=	0x00ad
                           0000AF   238 _EA	=	0x00af
                           0000B0   239 _P3_0	=	0x00b0
                           0000B1   240 _P3_1	=	0x00b1
                           0000B2   241 _P3_2	=	0x00b2
                           0000B3   242 _P3_3	=	0x00b3
                           0000B4   243 _P3_4	=	0x00b4
                           0000B5   244 _P3_5	=	0x00b5
                           0000B6   245 _P3_6	=	0x00b6
                           0000B7   246 _P3_7	=	0x00b7
                           0000B0   247 _RXD	=	0x00b0
                           0000B1   248 _TXD	=	0x00b1
                           0000B2   249 _INT0	=	0x00b2
                           0000B3   250 _INT1	=	0x00b3
                           0000B4   251 _T0	=	0x00b4
                           0000B5   252 _T1	=	0x00b5
                           0000B6   253 _WR	=	0x00b6
                           0000B7   254 _RD	=	0x00b7
                           0000B8   255 _PX0	=	0x00b8
                           0000B9   256 _PT0	=	0x00b9
                           0000BA   257 _PX1	=	0x00ba
                           0000BB   258 _PT1	=	0x00bb
                           0000BC   259 _PS	=	0x00bc
                           0000BD   260 _PT2	=	0x00bd
                           0000C8   261 _T2CON_0	=	0x00c8
                           0000C9   262 _T2CON_1	=	0x00c9
                           0000CA   263 _T2CON_2	=	0x00ca
                           0000CB   264 _T2CON_3	=	0x00cb
                           0000CC   265 _T2CON_4	=	0x00cc
                           0000CD   266 _T2CON_5	=	0x00cd
                           0000CE   267 _T2CON_6	=	0x00ce
                           0000CF   268 _T2CON_7	=	0x00cf
                           0000C8   269 _CP_RL2	=	0x00c8
                           0000C9   270 _C_T2	=	0x00c9
                           0000CA   271 _TR2	=	0x00ca
                           0000CB   272 _EXEN2	=	0x00cb
                           0000CC   273 _TCLK	=	0x00cc
                           0000CD   274 _RCLK	=	0x00cd
                           0000CE   275 _EXF2	=	0x00ce
                           0000CF   276 _TF2	=	0x00cf
                           0000D0   277 _P	=	0x00d0
                           0000D1   278 _FL	=	0x00d1
                           0000D2   279 _OV	=	0x00d2
                           0000D3   280 _RS0	=	0x00d3
                           0000D4   281 _RS1	=	0x00d4
                           0000D5   282 _F0	=	0x00d5
                           0000D6   283 _AC	=	0x00d6
                           0000D7   284 _CY	=	0x00d7
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable register banks
                                    287 ;--------------------------------------------------------
                                    288 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        289 	.ds 8
                                    290 ;--------------------------------------------------------
                                    291 ; internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area DSEG    (DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; overlayable items in internal ram 
                                    296 ;--------------------------------------------------------
                                    297 ;--------------------------------------------------------
                                    298 ; Stack segment in internal ram 
                                    299 ;--------------------------------------------------------
                                    300 	.area	SSEG
      000021                        301 __start__stack:
      000021                        302 	.ds	1
                                    303 
                                    304 ;--------------------------------------------------------
                                    305 ; indirectly addressable internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area ISEG    (DATA)
      000009                        308 _giant::
      000009                        309 	.ds 1
                                    310 ;--------------------------------------------------------
                                    311 ; absolute internal ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area IABS    (ABS,DATA)
                                    314 	.area IABS    (ABS,DATA)
                                    315 ;--------------------------------------------------------
                                    316 ; bit data
                                    317 ;--------------------------------------------------------
                                    318 	.area BSEG    (BIT)
                                    319 ;--------------------------------------------------------
                                    320 ; paged external ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area PSEG    (PAG,XDATA)
                                    323 ;--------------------------------------------------------
                                    324 ; external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area XSEG    (XDATA)
      00A000                        327 _s:
      00A000                        328 	.ds 12
      00A00C                        329 _c:
      00A00C                        330 	.ds 16407
                                    331 ;--------------------------------------------------------
                                    332 ; absolute external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XABS    (ABS,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external initialized ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XISEG   (XDATA)
      00E025                        339 _deltas:
      00E025                        340 	.ds 170
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT0 (CODE)
                                    343 	.area GSINIT1 (CODE)
                                    344 	.area GSINIT2 (CODE)
                                    345 	.area GSINIT3 (CODE)
                                    346 	.area GSINIT4 (CODE)
                                    347 	.area GSINIT5 (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area CSEG    (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; interrupt vector 
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
      002000                        355 __interrupt_vect:
      002000 02 20 34         [24]  356 	ljmp	__sdcc_gsinit_startup
                                    357 ;--------------------------------------------------------
                                    358 ; global & static initialisations
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.area GSFINAL (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.globl __sdcc_gsinit_startup
                                    365 	.globl __sdcc_program_startup
                                    366 	.globl __start__stack
                                    367 	.globl __mcs51_genXINIT
                                    368 	.globl __mcs51_genXRAMCLEAR
                                    369 	.globl __mcs51_genRAMCLEAR
                                    370 	.area GSFINAL (CODE)
      00208D 02 20 03         [24]  371 	ljmp	__sdcc_program_startup
                                    372 ;--------------------------------------------------------
                                    373 ; Home
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area HOME    (CODE)
      002003                        377 __sdcc_program_startup:
      002003 02 57 5B         [24]  378 	ljmp	_main
                                    379 ;	return from main will return to caller
                                    380 ;--------------------------------------------------------
                                    381 ; code
                                    382 ;--------------------------------------------------------
                                    383 	.area CSEG    (CODE)
                                    384 ;------------------------------------------------------------
                                    385 ;Allocation info for local variables in function 'accumulate'
                                    386 ;------------------------------------------------------------
                                    387 ;delta                     Allocated to stack - _bp -5
                                    388 ;_ctx                      Allocated to registers r5 r6 r7 
                                    389 ;ctx                       Allocated to stack - _bp +8
                                    390 ;d                         Allocated to stack - _bp +11
                                    391 ;sloc0                     Allocated to stack - _bp +1
                                    392 ;sloc1                     Allocated to stack - _bp +4
                                    393 ;------------------------------------------------------------
                                    394 ;	calc.c:26: static int accumulate(void *_ctx, delta_t *delta) __reentrant {
                                    395 ;	-----------------------------------------
                                    396 ;	 function accumulate
                                    397 ;	-----------------------------------------
      002B70                        398 _accumulate:
                           000007   399 	ar7 = 0x07
                           000006   400 	ar6 = 0x06
                           000005   401 	ar5 = 0x05
                           000004   402 	ar4 = 0x04
                           000003   403 	ar3 = 0x03
                           000002   404 	ar2 = 0x02
                           000001   405 	ar1 = 0x01
                           000000   406 	ar0 = 0x00
      002B70 C0 08            [24]  407 	push	_bp
      002B72 E5 81            [12]  408 	mov	a,sp
      002B74 F5 08            [12]  409 	mov	_bp,a
      002B76 24 0E            [12]  410 	add	a,#0x0e
      002B78 F5 81            [12]  411 	mov	sp,a
      002B7A AD 82            [24]  412 	mov	r5,dpl
      002B7C AE 83            [24]  413 	mov	r6,dph
      002B7E AF F0            [24]  414 	mov	r7,b
                                    415 ;	calc.c:27: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002B80 E5 08            [12]  416 	mov	a,_bp
      002B82 24 08            [12]  417 	add	a,#0x08
      002B84 F8               [12]  418 	mov	r0,a
      002B85 A6 05            [24]  419 	mov	@r0,ar5
      002B87 08               [12]  420 	inc	r0
      002B88 A6 06            [24]  421 	mov	@r0,ar6
      002B8A 08               [12]  422 	inc	r0
      002B8B A6 07            [24]  423 	mov	@r0,ar7
                                    424 ;	calc.c:32: if (!ctx->acc_valid) {
      002B8D E5 08            [12]  425 	mov	a,_bp
      002B8F 24 08            [12]  426 	add	a,#0x08
      002B91 F8               [12]  427 	mov	r0,a
      002B92 74 06            [12]  428 	mov	a,#0x06
      002B94 26               [12]  429 	add	a,@r0
      002B95 FA               [12]  430 	mov	r2,a
      002B96 E4               [12]  431 	clr	a
      002B97 08               [12]  432 	inc	r0
      002B98 36               [12]  433 	addc	a,@r0
      002B99 FB               [12]  434 	mov	r3,a
      002B9A 08               [12]  435 	inc	r0
      002B9B 86 04            [24]  436 	mov	ar4,@r0
      002B9D 8A 82            [24]  437 	mov	dpl,r2
      002B9F 8B 83            [24]  438 	mov	dph,r3
      002BA1 8C F0            [24]  439 	mov	b,r4
      002BA3 12 65 6C         [24]  440 	lcall	__gptrget
      002BA6 70 31            [24]  441 	jnz	00102$
                                    442 ;	calc.c:33: ctx->acc_valid = 1;
      002BA8 8A 82            [24]  443 	mov	dpl,r2
      002BAA 8B 83            [24]  444 	mov	dph,r3
      002BAC 8C F0            [24]  445 	mov	b,r4
      002BAE 74 01            [12]  446 	mov	a,#0x01
      002BB0 12 5D DB         [24]  447 	lcall	__gptrput
                                    448 ;	calc.c:34: ctx->acc = 0l;
      002BB3 E5 08            [12]  449 	mov	a,_bp
      002BB5 24 08            [12]  450 	add	a,#0x08
      002BB7 F8               [12]  451 	mov	r0,a
      002BB8 74 02            [12]  452 	mov	a,#0x02
      002BBA 26               [12]  453 	add	a,@r0
      002BBB FA               [12]  454 	mov	r2,a
      002BBC E4               [12]  455 	clr	a
      002BBD 08               [12]  456 	inc	r0
      002BBE 36               [12]  457 	addc	a,@r0
      002BBF FB               [12]  458 	mov	r3,a
      002BC0 08               [12]  459 	inc	r0
      002BC1 86 04            [24]  460 	mov	ar4,@r0
      002BC3 8A 82            [24]  461 	mov	dpl,r2
      002BC5 8B 83            [24]  462 	mov	dph,r3
      002BC7 8C F0            [24]  463 	mov	b,r4
      002BC9 E4               [12]  464 	clr	a
      002BCA 12 5D DB         [24]  465 	lcall	__gptrput
      002BCD A3               [24]  466 	inc	dptr
      002BCE 12 5D DB         [24]  467 	lcall	__gptrput
      002BD1 A3               [24]  468 	inc	dptr
      002BD2 12 5D DB         [24]  469 	lcall	__gptrput
      002BD5 A3               [24]  470 	inc	dptr
      002BD6 12 5D DB         [24]  471 	lcall	__gptrput
      002BD9                        472 00102$:
                                    473 ;	calc.c:37: d = strtol(ctx->digit, NULL, ctx->base);
      002BD9 E5 08            [12]  474 	mov	a,_bp
      002BDB 24 08            [12]  475 	add	a,#0x08
      002BDD F8               [12]  476 	mov	r0,a
      002BDE 86 82            [24]  477 	mov	dpl,@r0
      002BE0 08               [12]  478 	inc	r0
      002BE1 86 83            [24]  479 	mov	dph,@r0
      002BE3 08               [12]  480 	inc	r0
      002BE4 86 F0            [24]  481 	mov	b,@r0
      002BE6 12 65 6C         [24]  482 	lcall	__gptrget
      002BE9 FB               [12]  483 	mov	r3,a
      002BEA A3               [24]  484 	inc	dptr
      002BEB 12 65 6C         [24]  485 	lcall	__gptrget
      002BEE FC               [12]  486 	mov	r4,a
      002BEF E5 08            [12]  487 	mov	a,_bp
      002BF1 24 08            [12]  488 	add	a,#0x08
      002BF3 F8               [12]  489 	mov	r0,a
      002BF4 74 07            [12]  490 	mov	a,#0x07
      002BF6 26               [12]  491 	add	a,@r0
      002BF7 FA               [12]  492 	mov	r2,a
      002BF8 E4               [12]  493 	clr	a
      002BF9 08               [12]  494 	inc	r0
      002BFA 36               [12]  495 	addc	a,@r0
      002BFB FE               [12]  496 	mov	r6,a
      002BFC 08               [12]  497 	inc	r0
      002BFD 86 07            [24]  498 	mov	ar7,@r0
      002BFF C0 03            [24]  499 	push	ar3
      002C01 C0 04            [24]  500 	push	ar4
      002C03 E4               [12]  501 	clr	a
      002C04 C0 E0            [24]  502 	push	acc
      002C06 C0 E0            [24]  503 	push	acc
      002C08 C0 E0            [24]  504 	push	acc
      002C0A 8A 82            [24]  505 	mov	dpl,r2
      002C0C 8E 83            [24]  506 	mov	dph,r6
      002C0E 8F F0            [24]  507 	mov	b,r7
      002C10 12 5B 9D         [24]  508 	lcall	_strtol
      002C13 C8               [12]  509 	xch	a,r0
      002C14 E5 08            [12]  510 	mov	a,_bp
      002C16 24 0B            [12]  511 	add	a,#0x0b
      002C18 C8               [12]  512 	xch	a,r0
      002C19 A6 82            [24]  513 	mov	@r0,dpl
      002C1B 08               [12]  514 	inc	r0
      002C1C A6 83            [24]  515 	mov	@r0,dph
      002C1E 08               [12]  516 	inc	r0
      002C1F A6 F0            [24]  517 	mov	@r0,b
      002C21 08               [12]  518 	inc	r0
      002C22 F6               [12]  519 	mov	@r0,a
      002C23 E5 81            [12]  520 	mov	a,sp
      002C25 24 FB            [12]  521 	add	a,#0xfb
      002C27 F5 81            [12]  522 	mov	sp,a
                                    523 ;	calc.c:38: ctx->acc = ctx->acc * (long)ctx->base + d;
      002C29 E5 08            [12]  524 	mov	a,_bp
      002C2B 24 08            [12]  525 	add	a,#0x08
      002C2D F8               [12]  526 	mov	r0,a
      002C2E A9 08            [24]  527 	mov	r1,_bp
      002C30 09               [12]  528 	inc	r1
      002C31 74 02            [12]  529 	mov	a,#0x02
      002C33 26               [12]  530 	add	a,@r0
      002C34 F7               [12]  531 	mov	@r1,a
      002C35 E4               [12]  532 	clr	a
      002C36 08               [12]  533 	inc	r0
      002C37 36               [12]  534 	addc	a,@r0
      002C38 09               [12]  535 	inc	r1
      002C39 F7               [12]  536 	mov	@r1,a
      002C3A 08               [12]  537 	inc	r0
      002C3B 09               [12]  538 	inc	r1
      002C3C E6               [12]  539 	mov	a,@r0
      002C3D F7               [12]  540 	mov	@r1,a
      002C3E A8 08            [24]  541 	mov	r0,_bp
      002C40 08               [12]  542 	inc	r0
      002C41 86 82            [24]  543 	mov	dpl,@r0
      002C43 08               [12]  544 	inc	r0
      002C44 86 83            [24]  545 	mov	dph,@r0
      002C46 08               [12]  546 	inc	r0
      002C47 86 F0            [24]  547 	mov	b,@r0
      002C49 E5 08            [12]  548 	mov	a,_bp
      002C4B 24 04            [12]  549 	add	a,#0x04
      002C4D F9               [12]  550 	mov	r1,a
      002C4E 12 65 6C         [24]  551 	lcall	__gptrget
      002C51 F7               [12]  552 	mov	@r1,a
      002C52 A3               [24]  553 	inc	dptr
      002C53 12 65 6C         [24]  554 	lcall	__gptrget
      002C56 09               [12]  555 	inc	r1
      002C57 F7               [12]  556 	mov	@r1,a
      002C58 A3               [24]  557 	inc	dptr
      002C59 12 65 6C         [24]  558 	lcall	__gptrget
      002C5C 09               [12]  559 	inc	r1
      002C5D F7               [12]  560 	mov	@r1,a
      002C5E A3               [24]  561 	inc	dptr
      002C5F 12 65 6C         [24]  562 	lcall	__gptrget
      002C62 09               [12]  563 	inc	r1
      002C63 F7               [12]  564 	mov	@r1,a
      002C64 E5 08            [12]  565 	mov	a,_bp
      002C66 24 08            [12]  566 	add	a,#0x08
      002C68 F8               [12]  567 	mov	r0,a
      002C69 86 82            [24]  568 	mov	dpl,@r0
      002C6B 08               [12]  569 	inc	r0
      002C6C 86 83            [24]  570 	mov	dph,@r0
      002C6E 08               [12]  571 	inc	r0
      002C6F 86 F0            [24]  572 	mov	b,@r0
      002C71 12 65 6C         [24]  573 	lcall	__gptrget
      002C74 FA               [12]  574 	mov	r2,a
      002C75 A3               [24]  575 	inc	dptr
      002C76 12 65 6C         [24]  576 	lcall	__gptrget
      002C79 FB               [12]  577 	mov	r3,a
      002C7A 33               [12]  578 	rlc	a
      002C7B 95 E0            [12]  579 	subb	a,acc
      002C7D FE               [12]  580 	mov	r6,a
      002C7E FF               [12]  581 	mov	r7,a
      002C7F C0 02            [24]  582 	push	ar2
      002C81 C0 03            [24]  583 	push	ar3
      002C83 C0 06            [24]  584 	push	ar6
      002C85 C0 07            [24]  585 	push	ar7
      002C87 E5 08            [12]  586 	mov	a,_bp
      002C89 24 04            [12]  587 	add	a,#0x04
      002C8B F8               [12]  588 	mov	r0,a
      002C8C 86 82            [24]  589 	mov	dpl,@r0
      002C8E 08               [12]  590 	inc	r0
      002C8F 86 83            [24]  591 	mov	dph,@r0
      002C91 08               [12]  592 	inc	r0
      002C92 86 F0            [24]  593 	mov	b,@r0
      002C94 08               [12]  594 	inc	r0
      002C95 E6               [12]  595 	mov	a,@r0
      002C96 12 69 65         [24]  596 	lcall	__mullong
      002C99 AC 82            [24]  597 	mov	r4,dpl
      002C9B AD 83            [24]  598 	mov	r5,dph
      002C9D AE F0            [24]  599 	mov	r6,b
      002C9F FF               [12]  600 	mov	r7,a
      002CA0 E5 81            [12]  601 	mov	a,sp
      002CA2 24 FC            [12]  602 	add	a,#0xfc
      002CA4 F5 81            [12]  603 	mov	sp,a
      002CA6 E5 08            [12]  604 	mov	a,_bp
      002CA8 24 0B            [12]  605 	add	a,#0x0b
      002CAA F8               [12]  606 	mov	r0,a
      002CAB E6               [12]  607 	mov	a,@r0
      002CAC 2C               [12]  608 	add	a,r4
      002CAD FC               [12]  609 	mov	r4,a
      002CAE 08               [12]  610 	inc	r0
      002CAF E6               [12]  611 	mov	a,@r0
      002CB0 3D               [12]  612 	addc	a,r5
      002CB1 FD               [12]  613 	mov	r5,a
      002CB2 08               [12]  614 	inc	r0
      002CB3 E6               [12]  615 	mov	a,@r0
      002CB4 3E               [12]  616 	addc	a,r6
      002CB5 FE               [12]  617 	mov	r6,a
      002CB6 08               [12]  618 	inc	r0
      002CB7 E6               [12]  619 	mov	a,@r0
      002CB8 3F               [12]  620 	addc	a,r7
      002CB9 FF               [12]  621 	mov	r7,a
      002CBA A8 08            [24]  622 	mov	r0,_bp
      002CBC 08               [12]  623 	inc	r0
      002CBD 86 82            [24]  624 	mov	dpl,@r0
      002CBF 08               [12]  625 	inc	r0
      002CC0 86 83            [24]  626 	mov	dph,@r0
      002CC2 08               [12]  627 	inc	r0
      002CC3 86 F0            [24]  628 	mov	b,@r0
      002CC5 EC               [12]  629 	mov	a,r4
      002CC6 12 5D DB         [24]  630 	lcall	__gptrput
      002CC9 A3               [24]  631 	inc	dptr
      002CCA ED               [12]  632 	mov	a,r5
      002CCB 12 5D DB         [24]  633 	lcall	__gptrput
      002CCE A3               [24]  634 	inc	dptr
      002CCF EE               [12]  635 	mov	a,r6
      002CD0 12 5D DB         [24]  636 	lcall	__gptrput
      002CD3 A3               [24]  637 	inc	dptr
      002CD4 EF               [12]  638 	mov	a,r7
      002CD5 12 5D DB         [24]  639 	lcall	__gptrput
                                    640 ;	calc.c:40: return 1;
      002CD8 90 00 01         [24]  641 	mov	dptr,#0x0001
                                    642 ;	calc.c:41: }
      002CDB 85 08 81         [24]  643 	mov	sp,_bp
      002CDE D0 08            [24]  644 	pop	_bp
      002CE0 22               [24]  645 	ret
                                    646 ;------------------------------------------------------------
                                    647 ;Allocation info for local variables in function 'dump_pop'
                                    648 ;------------------------------------------------------------
                                    649 ;delta                     Allocated to stack - _bp -5
                                    650 ;_ctx                      Allocated to registers r5 r6 r7 
                                    651 ;ctx                       Allocated to stack - _bp +11
                                    652 ;d                         Allocated to stack - _bp +14
                                    653 ;r                         Allocated to registers r5 r6 
                                    654 ;__1966080001              Allocated to stack - _bp +18
                                    655 ;d                         Allocated to registers r2 r3 r4 r5 
                                    656 ;__3276800003              Allocated to stack - _bp +18
                                    657 ;d                         Allocated to registers r2 r3 r4 r7 
                                    658 ;sloc0                     Allocated to stack - _bp +1
                                    659 ;sloc1                     Allocated to stack - _bp +4
                                    660 ;sloc2                     Allocated to stack - _bp +7
                                    661 ;sloc3                     Allocated to stack - _bp +8
                                    662 ;------------------------------------------------------------
                                    663 ;	calc.c:43: static int dump_pop(void *_ctx, delta_t *delta) __reentrant {
                                    664 ;	-----------------------------------------
                                    665 ;	 function dump_pop
                                    666 ;	-----------------------------------------
      002CE1                        667 _dump_pop:
      002CE1 C0 08            [24]  668 	push	_bp
      002CE3 E5 81            [12]  669 	mov	a,sp
      002CE5 F5 08            [12]  670 	mov	_bp,a
      002CE7 24 15            [12]  671 	add	a,#0x15
      002CE9 F5 81            [12]  672 	mov	sp,a
      002CEB AD 82            [24]  673 	mov	r5,dpl
      002CED AE 83            [24]  674 	mov	r6,dph
      002CEF AF F0            [24]  675 	mov	r7,b
                                    676 ;	calc.c:44: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      002CF1 E5 08            [12]  677 	mov	a,_bp
      002CF3 24 0B            [12]  678 	add	a,#0x0b
      002CF5 F8               [12]  679 	mov	r0,a
      002CF6 A6 05            [24]  680 	mov	@r0,ar5
      002CF8 08               [12]  681 	inc	r0
      002CF9 A6 06            [24]  682 	mov	@r0,ar6
      002CFB 08               [12]  683 	inc	r0
      002CFC A6 07            [24]  684 	mov	@r0,ar7
                                    685 ;	calc.c:48: if (delta->event == EVENT_TERM) printstr("\r\n");
      002CFE E5 08            [12]  686 	mov	a,_bp
      002D00 24 FB            [12]  687 	add	a,#0xfb
      002D02 F8               [12]  688 	mov	r0,a
      002D03 86 02            [24]  689 	mov	ar2,@r0
      002D05 08               [12]  690 	inc	r0
      002D06 86 03            [24]  691 	mov	ar3,@r0
      002D08 08               [12]  692 	inc	r0
      002D09 86 04            [24]  693 	mov	ar4,@r0
      002D0B 74 02            [12]  694 	mov	a,#0x02
      002D0D 2A               [12]  695 	add	a,r2
      002D0E FA               [12]  696 	mov	r2,a
      002D0F E4               [12]  697 	clr	a
      002D10 3B               [12]  698 	addc	a,r3
      002D11 FB               [12]  699 	mov	r3,a
      002D12 8A 82            [24]  700 	mov	dpl,r2
      002D14 8B 83            [24]  701 	mov	dph,r3
      002D16 8C F0            [24]  702 	mov	b,r4
      002D18 12 65 6C         [24]  703 	lcall	__gptrget
      002D1B FE               [12]  704 	mov	r6,a
      002D1C A3               [24]  705 	inc	dptr
      002D1D 12 65 6C         [24]  706 	lcall	__gptrget
      002D20 FF               [12]  707 	mov	r7,a
      002D21 BE 08 18         [24]  708 	cjne	r6,#0x08,00102$
      002D24 BF 00 15         [24]  709 	cjne	r7,#0x00,00102$
      002D27 90 7D FD         [24]  710 	mov	dptr,#___str_2
      002D2A 75 F0 80         [24]  711 	mov	b,#0x80
      002D2D C0 04            [24]  712 	push	ar4
      002D2F C0 03            [24]  713 	push	ar3
      002D31 C0 02            [24]  714 	push	ar2
      002D33 12 5E 27         [24]  715 	lcall	_printstr
      002D36 D0 02            [24]  716 	pop	ar2
      002D38 D0 03            [24]  717 	pop	ar3
      002D3A D0 04            [24]  718 	pop	ar4
      002D3C                        719 00102$:
                                    720 ;	calc.c:49: r = stack_pop(ctx->ps, &d);
      002D3C C0 02            [24]  721 	push	ar2
      002D3E C0 03            [24]  722 	push	ar3
      002D40 C0 04            [24]  723 	push	ar4
      002D42 E5 08            [12]  724 	mov	a,_bp
      002D44 24 0E            [12]  725 	add	a,#0x0e
      002D46 FF               [12]  726 	mov	r7,a
      002D47 E5 08            [12]  727 	mov	a,_bp
      002D49 24 04            [12]  728 	add	a,#0x04
      002D4B F8               [12]  729 	mov	r0,a
      002D4C A6 07            [24]  730 	mov	@r0,ar7
      002D4E 08               [12]  731 	inc	r0
      002D4F 76 00            [12]  732 	mov	@r0,#0x00
      002D51 08               [12]  733 	inc	r0
      002D52 76 40            [12]  734 	mov	@r0,#0x40
      002D54 E5 08            [12]  735 	mov	a,_bp
      002D56 24 0B            [12]  736 	add	a,#0x0b
      002D58 F8               [12]  737 	mov	r0,a
      002D59 A9 08            [24]  738 	mov	r1,_bp
      002D5B 09               [12]  739 	inc	r1
      002D5C 74 11            [12]  740 	mov	a,#0x11
      002D5E 26               [12]  741 	add	a,@r0
      002D5F F7               [12]  742 	mov	@r1,a
      002D60 74 40            [12]  743 	mov	a,#0x40
      002D62 08               [12]  744 	inc	r0
      002D63 36               [12]  745 	addc	a,@r0
      002D64 09               [12]  746 	inc	r1
      002D65 F7               [12]  747 	mov	@r1,a
      002D66 08               [12]  748 	inc	r0
      002D67 09               [12]  749 	inc	r1
      002D68 E6               [12]  750 	mov	a,@r0
      002D69 F7               [12]  751 	mov	@r1,a
      002D6A A8 08            [24]  752 	mov	r0,_bp
      002D6C 08               [12]  753 	inc	r0
      002D6D 86 82            [24]  754 	mov	dpl,@r0
      002D6F 08               [12]  755 	inc	r0
      002D70 86 83            [24]  756 	mov	dph,@r0
      002D72 08               [12]  757 	inc	r0
      002D73 86 F0            [24]  758 	mov	b,@r0
      002D75 12 65 6C         [24]  759 	lcall	__gptrget
      002D78 FA               [12]  760 	mov	r2,a
      002D79 A3               [24]  761 	inc	dptr
      002D7A 12 65 6C         [24]  762 	lcall	__gptrget
      002D7D FB               [12]  763 	mov	r3,a
      002D7E A3               [24]  764 	inc	dptr
      002D7F 12 65 6C         [24]  765 	lcall	__gptrget
      002D82 FE               [12]  766 	mov	r6,a
      002D83 C0 07            [24]  767 	push	ar7
      002D85 C0 04            [24]  768 	push	ar4
      002D87 C0 03            [24]  769 	push	ar3
      002D89 C0 02            [24]  770 	push	ar2
      002D8B E5 08            [12]  771 	mov	a,_bp
      002D8D 24 04            [12]  772 	add	a,#0x04
      002D8F F8               [12]  773 	mov	r0,a
      002D90 E6               [12]  774 	mov	a,@r0
      002D91 C0 E0            [24]  775 	push	acc
      002D93 08               [12]  776 	inc	r0
      002D94 E6               [12]  777 	mov	a,@r0
      002D95 C0 E0            [24]  778 	push	acc
      002D97 08               [12]  779 	inc	r0
      002D98 E6               [12]  780 	mov	a,@r0
      002D99 C0 E0            [24]  781 	push	acc
      002D9B 8A 82            [24]  782 	mov	dpl,r2
      002D9D 8B 83            [24]  783 	mov	dph,r3
      002D9F 8E F0            [24]  784 	mov	b,r6
      002DA1 12 27 83         [24]  785 	lcall	_stack_pop
      002DA4 AE 82            [24]  786 	mov	r6,dpl
      002DA6 AD 83            [24]  787 	mov	r5,dph
      002DA8 15 81            [12]  788 	dec	sp
      002DAA 15 81            [12]  789 	dec	sp
      002DAC 15 81            [12]  790 	dec	sp
      002DAE D0 02            [24]  791 	pop	ar2
      002DB0 D0 03            [24]  792 	pop	ar3
      002DB2 D0 04            [24]  793 	pop	ar4
      002DB4 D0 07            [24]  794 	pop	ar7
                                    795 ;	calc.c:50: if (!r) {
      002DB6 D0 04            [24]  796 	pop	ar4
      002DB8 D0 03            [24]  797 	pop	ar3
      002DBA D0 02            [24]  798 	pop	ar2
      002DBC EE               [12]  799 	mov	a,r6
      002DBD 4D               [12]  800 	orl	a,r5
      002DBE 70 34            [24]  801 	jnz	00125$
                                    802 ;	calc.c:51: if (delta->event != EVENT_TERM) printstr("stack underflow\r\n");
      002DC0 8A 82            [24]  803 	mov	dpl,r2
      002DC2 8B 83            [24]  804 	mov	dph,r3
      002DC4 8C F0            [24]  805 	mov	b,r4
      002DC6 12 65 6C         [24]  806 	lcall	__gptrget
      002DC9 FD               [12]  807 	mov	r5,a
      002DCA A3               [24]  808 	inc	dptr
      002DCB 12 65 6C         [24]  809 	lcall	__gptrget
      002DCE FE               [12]  810 	mov	r6,a
      002DCF BD 08 06         [24]  811 	cjne	r5,#0x08,00164$
      002DD2 BE 00 03         [24]  812 	cjne	r6,#0x00,00164$
      002DD5 02 2F 49         [24]  813 	ljmp	00110$
      002DD8                        814 00164$:
      002DD8 90 7E 00         [24]  815 	mov	dptr,#___str_3
      002DDB 75 F0 80         [24]  816 	mov	b,#0x80
      002DDE C0 07            [24]  817 	push	ar7
      002DE0 C0 04            [24]  818 	push	ar4
      002DE2 C0 03            [24]  819 	push	ar3
      002DE4 C0 02            [24]  820 	push	ar2
      002DE6 12 5E 27         [24]  821 	lcall	_printstr
      002DE9 D0 02            [24]  822 	pop	ar2
      002DEB D0 03            [24]  823 	pop	ar3
      002DED D0 04            [24]  824 	pop	ar4
      002DEF D0 07            [24]  825 	pop	ar7
      002DF1 02 2F 49         [24]  826 	ljmp	00110$
                                    827 ;	calc.c:52: } else while (r > 0) {
      002DF4                        828 00125$:
      002DF4 E5 08            [12]  829 	mov	a,_bp
      002DF6 24 07            [12]  830 	add	a,#0x07
      002DF8 F8               [12]  831 	mov	r0,a
      002DF9 A6 07            [24]  832 	mov	@r0,ar7
      002DFB                        833 00105$:
      002DFB C3               [12]  834 	clr	c
      002DFC E4               [12]  835 	clr	a
      002DFD 9E               [12]  836 	subb	a,r6
      002DFE 74 80            [12]  837 	mov	a,#(0x00 ^ 0x80)
      002E00 8D F0            [24]  838 	mov	b,r5
      002E02 63 F0 80         [24]  839 	xrl	b,#0x80
      002E05 95 F0            [12]  840 	subb	a,b
      002E07 40 03            [24]  841 	jc	00165$
      002E09 02 2F 49         [24]  842 	ljmp	00110$
      002E0C                        843 00165$:
                                    844 ;	calc.c:53: printstr("PSPA\t");
      002E0C C0 02            [24]  845 	push	ar2
      002E0E C0 03            [24]  846 	push	ar3
      002E10 C0 04            [24]  847 	push	ar4
      002E12 90 7E 12         [24]  848 	mov	dptr,#___str_4
      002E15 75 F0 80         [24]  849 	mov	b,#0x80
      002E18 C0 07            [24]  850 	push	ar7
      002E1A C0 04            [24]  851 	push	ar4
      002E1C C0 03            [24]  852 	push	ar3
      002E1E C0 02            [24]  853 	push	ar2
      002E20 12 5E 27         [24]  854 	lcall	_printstr
      002E23 D0 02            [24]  855 	pop	ar2
      002E25 D0 03            [24]  856 	pop	ar3
      002E27 D0 04            [24]  857 	pop	ar4
                                    858 ;	calc.c:54: printall(d);
      002E29 E5 08            [12]  859 	mov	a,_bp
      002E2B 24 0E            [12]  860 	add	a,#0x0e
      002E2D F8               [12]  861 	mov	r0,a
      002E2E E5 08            [12]  862 	mov	a,_bp
      002E30 24 12            [12]  863 	add	a,#0x12
      002E32 F9               [12]  864 	mov	r1,a
      002E33 E6               [12]  865 	mov	a,@r0
      002E34 F7               [12]  866 	mov	@r1,a
      002E35 08               [12]  867 	inc	r0
      002E36 09               [12]  868 	inc	r1
      002E37 E6               [12]  869 	mov	a,@r0
      002E38 F7               [12]  870 	mov	@r1,a
      002E39 08               [12]  871 	inc	r0
      002E3A 09               [12]  872 	inc	r1
      002E3B E6               [12]  873 	mov	a,@r0
      002E3C F7               [12]  874 	mov	@r1,a
      002E3D 08               [12]  875 	inc	r0
      002E3E 09               [12]  876 	inc	r1
      002E3F E6               [12]  877 	mov	a,@r0
      002E40 F7               [12]  878 	mov	@r1,a
      002E41 E5 08            [12]  879 	mov	a,_bp
      002E43 24 12            [12]  880 	add	a,#0x12
      002E45 F8               [12]  881 	mov	r0,a
      002E46 86 02            [24]  882 	mov	ar2,@r0
      002E48 08               [12]  883 	inc	r0
      002E49 86 03            [24]  884 	mov	ar3,@r0
      002E4B 08               [12]  885 	inc	r0
      002E4C 86 04            [24]  886 	mov	ar4,@r0
      002E4E 08               [12]  887 	inc	r0
      002E4F 86 05            [24]  888 	mov	ar5,@r0
                                    889 ;	calc.c:18: print32x(d);
      002E51 E5 08            [12]  890 	mov	a,_bp
      002E53 24 12            [12]  891 	add	a,#0x12
      002E55 F8               [12]  892 	mov	r0,a
      002E56 86 82            [24]  893 	mov	dpl,@r0
      002E58 08               [12]  894 	inc	r0
      002E59 86 83            [24]  895 	mov	dph,@r0
      002E5B 08               [12]  896 	inc	r0
      002E5C 86 F0            [24]  897 	mov	b,@r0
      002E5E 08               [12]  898 	inc	r0
      002E5F E6               [12]  899 	mov	a,@r0
      002E60 C0 05            [24]  900 	push	ar5
      002E62 C0 04            [24]  901 	push	ar4
      002E64 C0 03            [24]  902 	push	ar3
      002E66 C0 02            [24]  903 	push	ar2
      002E68 12 5F D7         [24]  904 	lcall	_print32x
      002E6B D0 02            [24]  905 	pop	ar2
      002E6D D0 03            [24]  906 	pop	ar3
      002E6F D0 04            [24]  907 	pop	ar4
      002E71 D0 05            [24]  908 	pop	ar5
                                    909 ;	calc.c:19: printf("% 11ld\t", d);
      002E73 C0 05            [24]  910 	push	ar5
      002E75 C0 04            [24]  911 	push	ar4
      002E77 C0 03            [24]  912 	push	ar3
      002E79 C0 02            [24]  913 	push	ar2
      002E7B C0 02            [24]  914 	push	ar2
      002E7D C0 03            [24]  915 	push	ar3
      002E7F C0 04            [24]  916 	push	ar4
      002E81 C0 05            [24]  917 	push	ar5
      002E83 74 ED            [12]  918 	mov	a,#___str_0
      002E85 C0 E0            [24]  919 	push	acc
      002E87 74 7D            [12]  920 	mov	a,#(___str_0 >> 8)
      002E89 C0 E0            [24]  921 	push	acc
      002E8B 74 80            [12]  922 	mov	a,#0x80
      002E8D C0 E0            [24]  923 	push	acc
      002E8F 12 65 33         [24]  924 	lcall	_printf
      002E92 E5 81            [12]  925 	mov	a,sp
      002E94 24 F9            [12]  926 	add	a,#0xf9
      002E96 F5 81            [12]  927 	mov	sp,a
      002E98 D0 02            [24]  928 	pop	ar2
      002E9A D0 03            [24]  929 	pop	ar3
      002E9C D0 04            [24]  930 	pop	ar4
      002E9E D0 05            [24]  931 	pop	ar5
                                    932 ;	calc.c:20: printf("%011lo\t", d);
      002EA0 C0 05            [24]  933 	push	ar5
      002EA2 C0 04            [24]  934 	push	ar4
      002EA4 C0 03            [24]  935 	push	ar3
      002EA6 C0 02            [24]  936 	push	ar2
      002EA8 C0 02            [24]  937 	push	ar2
      002EAA C0 03            [24]  938 	push	ar3
      002EAC C0 04            [24]  939 	push	ar4
      002EAE C0 05            [24]  940 	push	ar5
      002EB0 74 F5            [12]  941 	mov	a,#___str_1
      002EB2 C0 E0            [24]  942 	push	acc
      002EB4 74 7D            [12]  943 	mov	a,#(___str_1 >> 8)
      002EB6 C0 E0            [24]  944 	push	acc
      002EB8 74 80            [12]  945 	mov	a,#0x80
      002EBA C0 E0            [24]  946 	push	acc
      002EBC 12 65 33         [24]  947 	lcall	_printf
      002EBF E5 81            [12]  948 	mov	a,sp
      002EC1 24 F9            [12]  949 	add	a,#0xf9
      002EC3 F5 81            [12]  950 	mov	sp,a
      002EC5 D0 02            [24]  951 	pop	ar2
      002EC7 D0 03            [24]  952 	pop	ar3
      002EC9 D0 04            [24]  953 	pop	ar4
      002ECB D0 05            [24]  954 	pop	ar5
                                    955 ;	calc.c:21: print32bin(d);
      002ECD 8A 82            [24]  956 	mov	dpl,r2
      002ECF 8B 83            [24]  957 	mov	dph,r3
      002ED1 8C F0            [24]  958 	mov	b,r4
      002ED3 ED               [12]  959 	mov	a,r5
      002ED4 C0 04            [24]  960 	push	ar4
      002ED6 C0 03            [24]  961 	push	ar3
      002ED8 C0 02            [24]  962 	push	ar2
      002EDA 12 5E 96         [24]  963 	lcall	_print32bin
                                    964 ;	calc.c:55: printstr("\r\n");
      002EDD 90 7D FD         [24]  965 	mov	dptr,#___str_2
      002EE0 75 F0 80         [24]  966 	mov	b,#0x80
      002EE3 12 5E 27         [24]  967 	lcall	_printstr
      002EE6 D0 02            [24]  968 	pop	ar2
                                    969 ;	calc.c:56: r = stack_pop(ctx->ps, &d);
      002EE8 E5 08            [12]  970 	mov	a,_bp
      002EEA 24 07            [12]  971 	add	a,#0x07
      002EEC F8               [12]  972 	mov	r0,a
      002EED E5 08            [12]  973 	mov	a,_bp
      002EEF 24 08            [12]  974 	add	a,#0x08
      002EF1 F9               [12]  975 	mov	r1,a
      002EF2 E6               [12]  976 	mov	a,@r0
      002EF3 F7               [12]  977 	mov	@r1,a
      002EF4 09               [12]  978 	inc	r1
      002EF5 77 00            [12]  979 	mov	@r1,#0x00
      002EF7 09               [12]  980 	inc	r1
      002EF8 77 40            [12]  981 	mov	@r1,#0x40
      002EFA A8 08            [24]  982 	mov	r0,_bp
      002EFC 08               [12]  983 	inc	r0
      002EFD 86 82            [24]  984 	mov	dpl,@r0
      002EFF 08               [12]  985 	inc	r0
      002F00 86 83            [24]  986 	mov	dph,@r0
      002F02 08               [12]  987 	inc	r0
      002F03 86 F0            [24]  988 	mov	b,@r0
      002F05 12 65 6C         [24]  989 	lcall	__gptrget
      002F08 FA               [12]  990 	mov	r2,a
      002F09 A3               [24]  991 	inc	dptr
      002F0A 12 65 6C         [24]  992 	lcall	__gptrget
      002F0D FD               [12]  993 	mov	r5,a
      002F0E A3               [24]  994 	inc	dptr
      002F0F 12 65 6C         [24]  995 	lcall	__gptrget
      002F12 FE               [12]  996 	mov	r6,a
      002F13 C0 02            [24]  997 	push	ar2
      002F15 E5 08            [12]  998 	mov	a,_bp
      002F17 24 08            [12]  999 	add	a,#0x08
      002F19 F8               [12] 1000 	mov	r0,a
      002F1A E6               [12] 1001 	mov	a,@r0
      002F1B C0 E0            [24] 1002 	push	acc
      002F1D 08               [12] 1003 	inc	r0
      002F1E E6               [12] 1004 	mov	a,@r0
      002F1F C0 E0            [24] 1005 	push	acc
      002F21 08               [12] 1006 	inc	r0
      002F22 E6               [12] 1007 	mov	a,@r0
      002F23 C0 E0            [24] 1008 	push	acc
      002F25 8A 82            [24] 1009 	mov	dpl,r2
      002F27 8D 83            [24] 1010 	mov	dph,r5
      002F29 8E F0            [24] 1011 	mov	b,r6
      002F2B 12 27 83         [24] 1012 	lcall	_stack_pop
      002F2E AE 82            [24] 1013 	mov	r6,dpl
      002F30 AD 83            [24] 1014 	mov	r5,dph
      002F32 15 81            [12] 1015 	dec	sp
      002F34 15 81            [12] 1016 	dec	sp
      002F36 15 81            [12] 1017 	dec	sp
      002F38 D0 02            [24] 1018 	pop	ar2
      002F3A D0 03            [24] 1019 	pop	ar3
      002F3C D0 04            [24] 1020 	pop	ar4
      002F3E D0 07            [24] 1021 	pop	ar7
      002F40 D0 04            [24] 1022 	pop	ar4
      002F42 D0 03            [24] 1023 	pop	ar3
      002F44 D0 02            [24] 1024 	pop	ar2
      002F46 02 2D FB         [24] 1025 	ljmp	00105$
      002F49                       1026 00110$:
                                   1027 ;	calc.c:59: if (delta->event == EVENT_TERM) {
      002F49 8A 82            [24] 1028 	mov	dpl,r2
      002F4B 8B 83            [24] 1029 	mov	dph,r3
      002F4D 8C F0            [24] 1030 	mov	b,r4
      002F4F 12 65 6C         [24] 1031 	lcall	__gptrget
      002F52 FA               [12] 1032 	mov	r2,a
      002F53 A3               [24] 1033 	inc	dptr
      002F54 12 65 6C         [24] 1034 	lcall	__gptrget
      002F57 FB               [12] 1035 	mov	r3,a
      002F58 BA 08 05         [24] 1036 	cjne	r2,#0x08,00166$
      002F5B BB 00 02         [24] 1037 	cjne	r3,#0x00,00166$
      002F5E 80 03            [24] 1038 	sjmp	00167$
      002F60                       1039 00166$:
      002F60 02 30 F7         [24] 1040 	ljmp	00113$
      002F63                       1041 00167$:
                                   1042 ;	calc.c:60: printstr("\r\n");
      002F63 90 7D FD         [24] 1043 	mov	dptr,#___str_2
      002F66 75 F0 80         [24] 1044 	mov	b,#0x80
      002F69 C0 07            [24] 1045 	push	ar7
      002F6B 12 5E 27         [24] 1046 	lcall	_printstr
      002F6E D0 07            [24] 1047 	pop	ar7
                                   1048 ;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      002F70 8F 06            [24] 1049 	mov	ar6,r7
      002F72 E5 08            [12] 1050 	mov	a,_bp
      002F74 24 04            [12] 1051 	add	a,#0x04
      002F76 F8               [12] 1052 	mov	r0,a
      002F77 A6 06            [24] 1053 	mov	@r0,ar6
      002F79 08               [12] 1054 	inc	r0
      002F7A 76 00            [12] 1055 	mov	@r0,#0x00
      002F7C 08               [12] 1056 	inc	r0
      002F7D 76 40            [12] 1057 	mov	@r0,#0x40
      002F7F E5 08            [12] 1058 	mov	a,_bp
      002F81 24 0B            [12] 1059 	add	a,#0x0b
      002F83 F8               [12] 1060 	mov	r0,a
      002F84 E5 08            [12] 1061 	mov	a,_bp
      002F86 24 08            [12] 1062 	add	a,#0x08
      002F88 F9               [12] 1063 	mov	r1,a
      002F89 74 14            [12] 1064 	mov	a,#0x14
      002F8B 26               [12] 1065 	add	a,@r0
      002F8C F7               [12] 1066 	mov	@r1,a
      002F8D 74 40            [12] 1067 	mov	a,#0x40
      002F8F 08               [12] 1068 	inc	r0
      002F90 36               [12] 1069 	addc	a,@r0
      002F91 09               [12] 1070 	inc	r1
      002F92 F7               [12] 1071 	mov	@r1,a
      002F93 08               [12] 1072 	inc	r0
      002F94 09               [12] 1073 	inc	r1
      002F95 E6               [12] 1074 	mov	a,@r0
      002F96 F7               [12] 1075 	mov	@r1,a
      002F97 E5 08            [12] 1076 	mov	a,_bp
      002F99 24 08            [12] 1077 	add	a,#0x08
      002F9B F8               [12] 1078 	mov	r0,a
      002F9C 86 82            [24] 1079 	mov	dpl,@r0
      002F9E 08               [12] 1080 	inc	r0
      002F9F 86 83            [24] 1081 	mov	dph,@r0
      002FA1 08               [12] 1082 	inc	r0
      002FA2 86 F0            [24] 1083 	mov	b,@r0
      002FA4 12 65 6C         [24] 1084 	lcall	__gptrget
      002FA7 FA               [12] 1085 	mov	r2,a
      002FA8 A3               [24] 1086 	inc	dptr
      002FA9 12 65 6C         [24] 1087 	lcall	__gptrget
      002FAC FB               [12] 1088 	mov	r3,a
      002FAD A3               [24] 1089 	inc	dptr
      002FAE 12 65 6C         [24] 1090 	lcall	__gptrget
      002FB1 FE               [12] 1091 	mov	r6,a
      002FB2 C0 07            [24] 1092 	push	ar7
      002FB4 E5 08            [12] 1093 	mov	a,_bp
      002FB6 24 04            [12] 1094 	add	a,#0x04
      002FB8 F8               [12] 1095 	mov	r0,a
      002FB9 E6               [12] 1096 	mov	a,@r0
      002FBA C0 E0            [24] 1097 	push	acc
      002FBC 08               [12] 1098 	inc	r0
      002FBD E6               [12] 1099 	mov	a,@r0
      002FBE C0 E0            [24] 1100 	push	acc
      002FC0 08               [12] 1101 	inc	r0
      002FC1 E6               [12] 1102 	mov	a,@r0
      002FC2 C0 E0            [24] 1103 	push	acc
      002FC4 8A 82            [24] 1104 	mov	dpl,r2
      002FC6 8B 83            [24] 1105 	mov	dph,r3
      002FC8 8E F0            [24] 1106 	mov	b,r6
      002FCA 12 27 83         [24] 1107 	lcall	_stack_pop
      002FCD AD 82            [24] 1108 	mov	r5,dpl
      002FCF AE 83            [24] 1109 	mov	r6,dph
      002FD1 15 81            [12] 1110 	dec	sp
      002FD3 15 81            [12] 1111 	dec	sp
      002FD5 15 81            [12] 1112 	dec	sp
      002FD7 D0 07            [24] 1113 	pop	ar7
      002FD9 E5 08            [12] 1114 	mov	a,_bp
      002FDB 24 07            [12] 1115 	add	a,#0x07
      002FDD F8               [12] 1116 	mov	r0,a
      002FDE A6 07            [24] 1117 	mov	@r0,ar7
      002FE0                       1118 00117$:
      002FE0 C3               [12] 1119 	clr	c
      002FE1 E4               [12] 1120 	clr	a
      002FE2 9D               [12] 1121 	subb	a,r5
      002FE3 74 80            [12] 1122 	mov	a,#(0x00 ^ 0x80)
      002FE5 8E F0            [24] 1123 	mov	b,r6
      002FE7 63 F0 80         [24] 1124 	xrl	b,#0x80
      002FEA 95 F0            [12] 1125 	subb	a,b
      002FEC 40 03            [24] 1126 	jc	00168$
      002FEE 02 30 F7         [24] 1127 	ljmp	00113$
      002FF1                       1128 00168$:
                                   1129 ;	calc.c:62: printstr("SSPA\t");
      002FF1 90 7E 18         [24] 1130 	mov	dptr,#___str_5
      002FF4 75 F0 80         [24] 1131 	mov	b,#0x80
      002FF7 12 5E 27         [24] 1132 	lcall	_printstr
                                   1133 ;	calc.c:63: printall(d);
      002FFA E5 08            [12] 1134 	mov	a,_bp
      002FFC 24 0E            [12] 1135 	add	a,#0x0e
      002FFE F8               [12] 1136 	mov	r0,a
      002FFF E5 08            [12] 1137 	mov	a,_bp
      003001 24 12            [12] 1138 	add	a,#0x12
      003003 F9               [12] 1139 	mov	r1,a
      003004 E6               [12] 1140 	mov	a,@r0
      003005 F7               [12] 1141 	mov	@r1,a
      003006 08               [12] 1142 	inc	r0
      003007 09               [12] 1143 	inc	r1
      003008 E6               [12] 1144 	mov	a,@r0
      003009 F7               [12] 1145 	mov	@r1,a
      00300A 08               [12] 1146 	inc	r0
      00300B 09               [12] 1147 	inc	r1
      00300C E6               [12] 1148 	mov	a,@r0
      00300D F7               [12] 1149 	mov	@r1,a
      00300E 08               [12] 1150 	inc	r0
      00300F 09               [12] 1151 	inc	r1
      003010 E6               [12] 1152 	mov	a,@r0
      003011 F7               [12] 1153 	mov	@r1,a
      003012 E5 08            [12] 1154 	mov	a,_bp
      003014 24 12            [12] 1155 	add	a,#0x12
      003016 F8               [12] 1156 	mov	r0,a
      003017 86 02            [24] 1157 	mov	ar2,@r0
      003019 08               [12] 1158 	inc	r0
      00301A 86 03            [24] 1159 	mov	ar3,@r0
      00301C 08               [12] 1160 	inc	r0
      00301D 86 04            [24] 1161 	mov	ar4,@r0
      00301F 08               [12] 1162 	inc	r0
      003020 86 07            [24] 1163 	mov	ar7,@r0
                                   1164 ;	calc.c:18: print32x(d);
      003022 E5 08            [12] 1165 	mov	a,_bp
      003024 24 12            [12] 1166 	add	a,#0x12
      003026 F8               [12] 1167 	mov	r0,a
      003027 86 82            [24] 1168 	mov	dpl,@r0
      003029 08               [12] 1169 	inc	r0
      00302A 86 83            [24] 1170 	mov	dph,@r0
      00302C 08               [12] 1171 	inc	r0
      00302D 86 F0            [24] 1172 	mov	b,@r0
      00302F 08               [12] 1173 	inc	r0
      003030 E6               [12] 1174 	mov	a,@r0
      003031 C0 07            [24] 1175 	push	ar7
      003033 C0 04            [24] 1176 	push	ar4
      003035 C0 03            [24] 1177 	push	ar3
      003037 C0 02            [24] 1178 	push	ar2
      003039 12 5F D7         [24] 1179 	lcall	_print32x
      00303C D0 02            [24] 1180 	pop	ar2
      00303E D0 03            [24] 1181 	pop	ar3
      003040 D0 04            [24] 1182 	pop	ar4
      003042 D0 07            [24] 1183 	pop	ar7
                                   1184 ;	calc.c:19: printf("% 11ld\t", d);
      003044 C0 07            [24] 1185 	push	ar7
      003046 C0 04            [24] 1186 	push	ar4
      003048 C0 03            [24] 1187 	push	ar3
      00304A C0 02            [24] 1188 	push	ar2
      00304C C0 02            [24] 1189 	push	ar2
      00304E C0 03            [24] 1190 	push	ar3
      003050 C0 04            [24] 1191 	push	ar4
      003052 C0 07            [24] 1192 	push	ar7
      003054 74 ED            [12] 1193 	mov	a,#___str_0
      003056 C0 E0            [24] 1194 	push	acc
      003058 74 7D            [12] 1195 	mov	a,#(___str_0 >> 8)
      00305A C0 E0            [24] 1196 	push	acc
      00305C 74 80            [12] 1197 	mov	a,#0x80
      00305E C0 E0            [24] 1198 	push	acc
      003060 12 65 33         [24] 1199 	lcall	_printf
      003063 E5 81            [12] 1200 	mov	a,sp
      003065 24 F9            [12] 1201 	add	a,#0xf9
      003067 F5 81            [12] 1202 	mov	sp,a
      003069 D0 02            [24] 1203 	pop	ar2
      00306B D0 03            [24] 1204 	pop	ar3
      00306D D0 04            [24] 1205 	pop	ar4
      00306F D0 07            [24] 1206 	pop	ar7
                                   1207 ;	calc.c:20: printf("%011lo\t", d);
      003071 C0 07            [24] 1208 	push	ar7
      003073 C0 04            [24] 1209 	push	ar4
      003075 C0 03            [24] 1210 	push	ar3
      003077 C0 02            [24] 1211 	push	ar2
      003079 C0 02            [24] 1212 	push	ar2
      00307B C0 03            [24] 1213 	push	ar3
      00307D C0 04            [24] 1214 	push	ar4
      00307F C0 07            [24] 1215 	push	ar7
      003081 74 F5            [12] 1216 	mov	a,#___str_1
      003083 C0 E0            [24] 1217 	push	acc
      003085 74 7D            [12] 1218 	mov	a,#(___str_1 >> 8)
      003087 C0 E0            [24] 1219 	push	acc
      003089 74 80            [12] 1220 	mov	a,#0x80
      00308B C0 E0            [24] 1221 	push	acc
      00308D 12 65 33         [24] 1222 	lcall	_printf
      003090 E5 81            [12] 1223 	mov	a,sp
      003092 24 F9            [12] 1224 	add	a,#0xf9
      003094 F5 81            [12] 1225 	mov	sp,a
      003096 D0 02            [24] 1226 	pop	ar2
      003098 D0 03            [24] 1227 	pop	ar3
      00309A D0 04            [24] 1228 	pop	ar4
      00309C D0 07            [24] 1229 	pop	ar7
                                   1230 ;	calc.c:21: print32bin(d);
      00309E 8A 82            [24] 1231 	mov	dpl,r2
      0030A0 8B 83            [24] 1232 	mov	dph,r3
      0030A2 8C F0            [24] 1233 	mov	b,r4
      0030A4 EF               [12] 1234 	mov	a,r7
      0030A5 12 5E 96         [24] 1235 	lcall	_print32bin
                                   1236 ;	calc.c:64: printstr("\r\n");
      0030A8 90 7D FD         [24] 1237 	mov	dptr,#___str_2
      0030AB 75 F0 80         [24] 1238 	mov	b,#0x80
      0030AE 12 5E 27         [24] 1239 	lcall	_printstr
                                   1240 ;	calc.c:61: for (r = stack_pop(ctx->ss, &d); r > 0; r = stack_pop(ctx->ss, &d)) {
      0030B1 E5 08            [12] 1241 	mov	a,_bp
      0030B3 24 07            [12] 1242 	add	a,#0x07
      0030B5 F8               [12] 1243 	mov	r0,a
      0030B6 86 06            [24] 1244 	mov	ar6,@r0
      0030B8 7D 00            [12] 1245 	mov	r5,#0x00
      0030BA 7B 40            [12] 1246 	mov	r3,#0x40
      0030BC E5 08            [12] 1247 	mov	a,_bp
      0030BE 24 08            [12] 1248 	add	a,#0x08
      0030C0 F8               [12] 1249 	mov	r0,a
      0030C1 86 82            [24] 1250 	mov	dpl,@r0
      0030C3 08               [12] 1251 	inc	r0
      0030C4 86 83            [24] 1252 	mov	dph,@r0
      0030C6 08               [12] 1253 	inc	r0
      0030C7 86 F0            [24] 1254 	mov	b,@r0
      0030C9 12 65 6C         [24] 1255 	lcall	__gptrget
      0030CC FA               [12] 1256 	mov	r2,a
      0030CD A3               [24] 1257 	inc	dptr
      0030CE 12 65 6C         [24] 1258 	lcall	__gptrget
      0030D1 FC               [12] 1259 	mov	r4,a
      0030D2 A3               [24] 1260 	inc	dptr
      0030D3 12 65 6C         [24] 1261 	lcall	__gptrget
      0030D6 FF               [12] 1262 	mov	r7,a
      0030D7 C0 06            [24] 1263 	push	ar6
      0030D9 C0 05            [24] 1264 	push	ar5
      0030DB C0 03            [24] 1265 	push	ar3
      0030DD 8A 82            [24] 1266 	mov	dpl,r2
      0030DF 8C 83            [24] 1267 	mov	dph,r4
      0030E1 8F F0            [24] 1268 	mov	b,r7
      0030E3 12 27 83         [24] 1269 	lcall	_stack_pop
      0030E6 AC 82            [24] 1270 	mov	r4,dpl
      0030E8 AF 83            [24] 1271 	mov	r7,dph
      0030EA 15 81            [12] 1272 	dec	sp
      0030EC 15 81            [12] 1273 	dec	sp
      0030EE 15 81            [12] 1274 	dec	sp
      0030F0 8C 05            [24] 1275 	mov	ar5,r4
      0030F2 8F 06            [24] 1276 	mov	ar6,r7
      0030F4 02 2F E0         [24] 1277 	ljmp	00117$
      0030F7                       1278 00113$:
                                   1279 ;	calc.c:68: return 1;
      0030F7 90 00 01         [24] 1280 	mov	dptr,#0x0001
                                   1281 ;	calc.c:69: }
      0030FA 85 08 81         [24] 1282 	mov	sp,_bp
      0030FD D0 08            [24] 1283 	pop	_bp
      0030FF 22               [24] 1284 	ret
                                   1285 ;------------------------------------------------------------
                                   1286 ;Allocation info for local variables in function 'dump_peek'
                                   1287 ;------------------------------------------------------------
                                   1288 ;d                         Allocated to stack - _bp -6
                                   1289 ;_ctx                      Allocated to registers 
                                   1290 ;__1310720005              Allocated to registers r4 r5 r6 r7 
                                   1291 ;d                         Allocated to registers 
                                   1292 ;------------------------------------------------------------
                                   1293 ;	calc.c:71: static int dump_peek(void *_ctx, long d) __reentrant {
                                   1294 ;	-----------------------------------------
                                   1295 ;	 function dump_peek
                                   1296 ;	-----------------------------------------
      003100                       1297 _dump_peek:
      003100 C0 08            [24] 1298 	push	_bp
      003102 85 81 08         [24] 1299 	mov	_bp,sp
                                   1300 ;	calc.c:74: printstr("PSVA\t");
      003105 90 7E 1E         [24] 1301 	mov	dptr,#___str_6
      003108 75 F0 80         [24] 1302 	mov	b,#0x80
      00310B 12 5E 27         [24] 1303 	lcall	_printstr
                                   1304 ;	calc.c:75: printall(d);
      00310E E5 08            [12] 1305 	mov	a,_bp
      003110 24 FA            [12] 1306 	add	a,#0xfa
      003112 F8               [12] 1307 	mov	r0,a
      003113 86 04            [24] 1308 	mov	ar4,@r0
      003115 08               [12] 1309 	inc	r0
      003116 86 05            [24] 1310 	mov	ar5,@r0
      003118 08               [12] 1311 	inc	r0
      003119 86 06            [24] 1312 	mov	ar6,@r0
      00311B 08               [12] 1313 	inc	r0
      00311C 86 07            [24] 1314 	mov	ar7,@r0
                                   1315 ;	calc.c:18: print32x(d);
      00311E 8C 82            [24] 1316 	mov	dpl,r4
      003120 8D 83            [24] 1317 	mov	dph,r5
      003122 8E F0            [24] 1318 	mov	b,r6
      003124 EF               [12] 1319 	mov	a,r7
      003125 C0 07            [24] 1320 	push	ar7
      003127 C0 06            [24] 1321 	push	ar6
      003129 C0 05            [24] 1322 	push	ar5
      00312B C0 04            [24] 1323 	push	ar4
      00312D 12 5F D7         [24] 1324 	lcall	_print32x
      003130 D0 04            [24] 1325 	pop	ar4
      003132 D0 05            [24] 1326 	pop	ar5
      003134 D0 06            [24] 1327 	pop	ar6
      003136 D0 07            [24] 1328 	pop	ar7
                                   1329 ;	calc.c:19: printf("% 11ld\t", d);
      003138 C0 07            [24] 1330 	push	ar7
      00313A C0 06            [24] 1331 	push	ar6
      00313C C0 05            [24] 1332 	push	ar5
      00313E C0 04            [24] 1333 	push	ar4
      003140 C0 04            [24] 1334 	push	ar4
      003142 C0 05            [24] 1335 	push	ar5
      003144 C0 06            [24] 1336 	push	ar6
      003146 C0 07            [24] 1337 	push	ar7
      003148 74 ED            [12] 1338 	mov	a,#___str_0
      00314A C0 E0            [24] 1339 	push	acc
      00314C 74 7D            [12] 1340 	mov	a,#(___str_0 >> 8)
      00314E C0 E0            [24] 1341 	push	acc
      003150 74 80            [12] 1342 	mov	a,#0x80
      003152 C0 E0            [24] 1343 	push	acc
      003154 12 65 33         [24] 1344 	lcall	_printf
      003157 E5 81            [12] 1345 	mov	a,sp
      003159 24 F9            [12] 1346 	add	a,#0xf9
      00315B F5 81            [12] 1347 	mov	sp,a
      00315D D0 04            [24] 1348 	pop	ar4
      00315F D0 05            [24] 1349 	pop	ar5
      003161 D0 06            [24] 1350 	pop	ar6
      003163 D0 07            [24] 1351 	pop	ar7
                                   1352 ;	calc.c:20: printf("%011lo\t", d);
      003165 C0 07            [24] 1353 	push	ar7
      003167 C0 06            [24] 1354 	push	ar6
      003169 C0 05            [24] 1355 	push	ar5
      00316B C0 04            [24] 1356 	push	ar4
      00316D C0 04            [24] 1357 	push	ar4
      00316F C0 05            [24] 1358 	push	ar5
      003171 C0 06            [24] 1359 	push	ar6
      003173 C0 07            [24] 1360 	push	ar7
      003175 74 F5            [12] 1361 	mov	a,#___str_1
      003177 C0 E0            [24] 1362 	push	acc
      003179 74 7D            [12] 1363 	mov	a,#(___str_1 >> 8)
      00317B C0 E0            [24] 1364 	push	acc
      00317D 74 80            [12] 1365 	mov	a,#0x80
      00317F C0 E0            [24] 1366 	push	acc
      003181 12 65 33         [24] 1367 	lcall	_printf
      003184 E5 81            [12] 1368 	mov	a,sp
      003186 24 F9            [12] 1369 	add	a,#0xf9
      003188 F5 81            [12] 1370 	mov	sp,a
      00318A D0 04            [24] 1371 	pop	ar4
      00318C D0 05            [24] 1372 	pop	ar5
      00318E D0 06            [24] 1373 	pop	ar6
      003190 D0 07            [24] 1374 	pop	ar7
                                   1375 ;	calc.c:21: print32bin(d);
      003192 8C 82            [24] 1376 	mov	dpl,r4
      003194 8D 83            [24] 1377 	mov	dph,r5
      003196 8E F0            [24] 1378 	mov	b,r6
      003198 EF               [12] 1379 	mov	a,r7
      003199 12 5E 96         [24] 1380 	lcall	_print32bin
                                   1381 ;	calc.c:76: printstr("\r\n");
      00319C 90 7D FD         [24] 1382 	mov	dptr,#___str_2
      00319F 75 F0 80         [24] 1383 	mov	b,#0x80
      0031A2 12 5E 27         [24] 1384 	lcall	_printstr
                                   1385 ;	calc.c:78: return 1;
      0031A5 90 00 01         [24] 1386 	mov	dptr,#0x0001
                                   1387 ;	calc.c:79: }
      0031A8 D0 08            [24] 1388 	pop	_bp
      0031AA 22               [24] 1389 	ret
                                   1390 ;------------------------------------------------------------
                                   1391 ;Allocation info for local variables in function 'operator'
                                   1392 ;------------------------------------------------------------
                                   1393 ;delta                     Allocated to stack - _bp -5
                                   1394 ;_ctx                      Allocated to registers r2 r3 r4 
                                   1395 ;ctx                       Allocated to stack - _bp +23
                                   1396 ;t0                        Allocated to registers r7 r6 r5 
                                   1397 ;d0                        Allocated to stack - _bp +26
                                   1398 ;d1                        Allocated to stack - _bp +30
                                   1399 ;__2621440007              Allocated to registers r7 r6 r5 r4 
                                   1400 ;d                         Allocated to stack - _bp +34
                                   1401 ;__2621440009              Allocated to registers r7 r6 r5 r4 
                                   1402 ;d                         Allocated to stack - _bp +34
                                   1403 ;sloc0                     Allocated to stack - _bp +1
                                   1404 ;sloc1                     Allocated to stack - _bp +2
                                   1405 ;sloc2                     Allocated to stack - _bp +5
                                   1406 ;sloc3                     Allocated to stack - _bp +8
                                   1407 ;sloc4                     Allocated to stack - _bp +11
                                   1408 ;sloc5                     Allocated to stack - _bp +15
                                   1409 ;sloc6                     Allocated to stack - _bp +19
                                   1410 ;------------------------------------------------------------
                                   1411 ;	calc.c:81: static int operator(void *_ctx, delta_t *delta) __reentrant {
                                   1412 ;	-----------------------------------------
                                   1413 ;	 function operator
                                   1414 ;	-----------------------------------------
      0031AB                       1415 _operator:
      0031AB C0 08            [24] 1416 	push	_bp
      0031AD E5 81            [12] 1417 	mov	a,sp
      0031AF F5 08            [12] 1418 	mov	_bp,a
      0031B1 24 25            [12] 1419 	add	a,#0x25
      0031B3 F5 81            [12] 1420 	mov	sp,a
      0031B5 AA 82            [24] 1421 	mov	r2,dpl
      0031B7 AB 83            [24] 1422 	mov	r3,dph
      0031B9 AC F0            [24] 1423 	mov	r4,b
                                   1424 ;	calc.c:82: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      0031BB E5 08            [12] 1425 	mov	a,_bp
      0031BD 24 17            [12] 1426 	add	a,#0x17
      0031BF F8               [12] 1427 	mov	r0,a
      0031C0 A6 02            [24] 1428 	mov	@r0,ar2
      0031C2 08               [12] 1429 	inc	r0
      0031C3 A6 03            [24] 1430 	mov	@r0,ar3
      0031C5 08               [12] 1431 	inc	r0
      0031C6 A6 04            [24] 1432 	mov	@r0,ar4
                                   1433 ;	calc.c:86: switch (ctx->digit[0]) {
      0031C8 E5 08            [12] 1434 	mov	a,_bp
      0031CA 24 17            [12] 1435 	add	a,#0x17
      0031CC F8               [12] 1436 	mov	r0,a
      0031CD 74 07            [12] 1437 	mov	a,#0x07
      0031CF 26               [12] 1438 	add	a,@r0
      0031D0 FD               [12] 1439 	mov	r5,a
      0031D1 E4               [12] 1440 	clr	a
      0031D2 08               [12] 1441 	inc	r0
      0031D3 36               [12] 1442 	addc	a,@r0
      0031D4 FE               [12] 1443 	mov	r6,a
      0031D5 08               [12] 1444 	inc	r0
      0031D6 86 07            [24] 1445 	mov	ar7,@r0
      0031D8 8D 82            [24] 1446 	mov	dpl,r5
      0031DA 8E 83            [24] 1447 	mov	dph,r6
      0031DC 8F F0            [24] 1448 	mov	b,r7
      0031DE A8 08            [24] 1449 	mov	r0,_bp
      0031E0 08               [12] 1450 	inc	r0
      0031E1 12 65 6C         [24] 1451 	lcall	__gptrget
      0031E4 F6               [12] 1452 	mov	@r0,a
      0031E5 A8 08            [24] 1453 	mov	r0,_bp
      0031E7 08               [12] 1454 	inc	r0
      0031E8 B6 23 03         [24] 1455 	cjne	@r0,#0x23,00526$
      0031EB 02 43 23         [24] 1456 	ljmp	00189$
      0031EE                       1457 00526$:
      0031EE A8 08            [24] 1458 	mov	r0,_bp
      0031F0 08               [12] 1459 	inc	r0
      0031F1 B6 25 03         [24] 1460 	cjne	@r0,#0x25,00527$
      0031F4 02 43 23         [24] 1461 	ljmp	00189$
      0031F7                       1462 00527$:
      0031F7 A8 08            [24] 1463 	mov	r0,_bp
      0031F9 08               [12] 1464 	inc	r0
      0031FA B6 26 03         [24] 1465 	cjne	@r0,#0x26,00528$
      0031FD 02 45 BE         [24] 1466 	ljmp	00202$
      003200                       1467 00528$:
      003200 A8 08            [24] 1468 	mov	r0,_bp
      003202 08               [12] 1469 	inc	r0
      003203 B6 2A 03         [24] 1470 	cjne	@r0,#0x2a,00529$
      003206 02 3F 10         [24] 1471 	ljmp	00167$
      003209                       1472 00529$:
      003209 A8 08            [24] 1473 	mov	r0,_bp
      00320B 08               [12] 1474 	inc	r0
      00320C B6 2B 03         [24] 1475 	cjne	@r0,#0x2b,00530$
      00320F 02 3C 75         [24] 1476 	ljmp	00153$
      003212                       1477 00530$:
      003212 A8 08            [24] 1478 	mov	r0,_bp
      003214 08               [12] 1479 	inc	r0
      003215 B6 2D 03         [24] 1480 	cjne	@r0,#0x2d,00531$
      003218 02 3D C2         [24] 1481 	ljmp	00160$
      00321B                       1482 00531$:
      00321B A8 08            [24] 1483 	mov	r0,_bp
      00321D 08               [12] 1484 	inc	r0
      00321E B6 2E 03         [24] 1485 	cjne	@r0,#0x2e,00532$
      003221 02 34 42         [24] 1486 	ljmp	00109$
      003224                       1487 00532$:
      003224 A8 08            [24] 1488 	mov	r0,_bp
      003226 08               [12] 1489 	inc	r0
      003227 B6 2F 03         [24] 1490 	cjne	@r0,#0x2f,00533$
      00322A 02 40 84         [24] 1491 	ljmp	00175$
      00322D                       1492 00533$:
      00322D A8 08            [24] 1493 	mov	r0,_bp
      00322F 08               [12] 1494 	inc	r0
      003230 B6 3C 03         [24] 1495 	cjne	@r0,#0x3c,00534$
      003233 02 4C DF         [24] 1496 	ljmp	00237$
      003236                       1497 00534$:
      003236 A8 08            [24] 1498 	mov	r0,_bp
      003238 08               [12] 1499 	inc	r0
      003239 B6 3E 03         [24] 1500 	cjne	@r0,#0x3e,00535$
      00323C 02 49 F6         [24] 1501 	ljmp	00223$
      00323F                       1502 00535$:
      00323F A8 08            [24] 1503 	mov	r0,_bp
      003241 08               [12] 1504 	inc	r0
      003242 B6 4D 03         [24] 1505 	cjne	@r0,#0x4d,00536$
      003245 02 39 6A         [24] 1506 	ljmp	00134$
      003248                       1507 00536$:
      003248 A8 08            [24] 1508 	mov	r0,_bp
      00324A 08               [12] 1509 	inc	r0
      00324B B6 50 03         [24] 1510 	cjne	@r0,#0x50,00537$
      00324E 02 35 44         [24] 1511 	ljmp	00113$
      003251                       1512 00537$:
      003251 A8 08            [24] 1513 	mov	r0,_bp
      003253 08               [12] 1514 	inc	r0
      003254 B6 53 03         [24] 1515 	cjne	@r0,#0x53,00538$
      003257 02 3B D6         [24] 1516 	ljmp	00152$
      00325A                       1517 00538$:
      00325A A8 08            [24] 1518 	mov	r0,_bp
      00325C 08               [12] 1519 	inc	r0
      00325D B6 55 03         [24] 1520 	cjne	@r0,#0x55,00539$
      003260 02 3B 21         [24] 1521 	ljmp	00146$
      003263                       1522 00539$:
      003263 A8 08            [24] 1523 	mov	r0,_bp
      003265 08               [12] 1524 	inc	r0
      003266 B6 56 03         [24] 1525 	cjne	@r0,#0x56,00540$
      003269 02 33 D3         [24] 1526 	ljmp	00105$
      00326C                       1527 00540$:
      00326C A8 08            [24] 1528 	mov	r0,_bp
      00326E 08               [12] 1529 	inc	r0
      00326F B6 58 03         [24] 1530 	cjne	@r0,#0x58,00541$
      003272 02 36 E4         [24] 1531 	ljmp	00121$
      003275                       1532 00541$:
      003275 A8 08            [24] 1533 	mov	r0,_bp
      003277 08               [12] 1534 	inc	r0
      003278 B6 5C 03         [24] 1535 	cjne	@r0,#0x5c,00542$
      00327B 02 40 84         [24] 1536 	ljmp	00175$
      00327E                       1537 00542$:
      00327E A8 08            [24] 1538 	mov	r0,_bp
      003280 08               [12] 1539 	inc	r0
      003281 B6 5D 03         [24] 1540 	cjne	@r0,#0x5d,00543$
      003284 02 4B 62         [24] 1541 	ljmp	00230$
      003287                       1542 00543$:
      003287 A8 08            [24] 1543 	mov	r0,_bp
      003289 08               [12] 1544 	inc	r0
      00328A B6 5E 03         [24] 1545 	cjne	@r0,#0x5e,00544$
      00328D 02 48 8E         [24] 1546 	ljmp	00216$
      003290                       1547 00544$:
      003290 A8 08            [24] 1548 	mov	r0,_bp
      003292 08               [12] 1549 	inc	r0
      003293 B6 6D 03         [24] 1550 	cjne	@r0,#0x6d,00545$
      003296 02 38 68         [24] 1551 	ljmp	00128$
      003299                       1552 00545$:
      003299 A8 08            [24] 1553 	mov	r0,_bp
      00329B 08               [12] 1554 	inc	r0
      00329C B6 70 03         [24] 1555 	cjne	@r0,#0x70,00546$
      00329F 02 34 42         [24] 1556 	ljmp	00109$
      0032A2                       1557 00546$:
      0032A2 A8 08            [24] 1558 	mov	r0,_bp
      0032A4 08               [12] 1559 	inc	r0
      0032A5 B6 75 03         [24] 1560 	cjne	@r0,#0x75,00547$
      0032A8 02 3A 6C         [24] 1561 	ljmp	00140$
      0032AB                       1562 00547$:
      0032AB A8 08            [24] 1563 	mov	r0,_bp
      0032AD 08               [12] 1564 	inc	r0
      0032AE B6 76 02         [24] 1565 	cjne	@r0,#0x76,00548$
      0032B1 80 1E            [24] 1566 	sjmp	00101$
      0032B3                       1567 00548$:
      0032B3 A8 08            [24] 1568 	mov	r0,_bp
      0032B5 08               [12] 1569 	inc	r0
      0032B6 B6 78 03         [24] 1570 	cjne	@r0,#0x78,00549$
      0032B9 02 35 7B         [24] 1571 	ljmp	00114$
      0032BC                       1572 00549$:
      0032BC A8 08            [24] 1573 	mov	r0,_bp
      0032BE 08               [12] 1574 	inc	r0
      0032BF B6 7C 03         [24] 1575 	cjne	@r0,#0x7c,00550$
      0032C2 02 47 26         [24] 1576 	ljmp	00209$
      0032C5                       1577 00550$:
      0032C5 A8 08            [24] 1578 	mov	r0,_bp
      0032C7 08               [12] 1579 	inc	r0
      0032C8 B6 7E 03         [24] 1580 	cjne	@r0,#0x7e,00551$
      0032CB 02 4E 50         [24] 1581 	ljmp	00244$
      0032CE                       1582 00551$:
      0032CE 02 4F 12         [24] 1583 	ljmp	00248$
                                   1584 ;	calc.c:87: case 'v':
      0032D1                       1585 00101$:
                                   1586 ;	calc.c:88: printstr("\r\n");
      0032D1 90 7D FD         [24] 1587 	mov	dptr,#___str_2
      0032D4 75 F0 80         [24] 1588 	mov	b,#0x80
      0032D7 12 5E 27         [24] 1589 	lcall	_printstr
                                   1590 ;	calc.c:89: if (!stack_peek(ctx->ps, &d0)) printstr("stack underflow\r\n");
      0032DA E5 08            [12] 1591 	mov	a,_bp
      0032DC 24 1A            [12] 1592 	add	a,#0x1a
      0032DE FF               [12] 1593 	mov	r7,a
      0032DF 7E 00            [12] 1594 	mov	r6,#0x00
      0032E1 7D 40            [12] 1595 	mov	r5,#0x40
      0032E3 E5 08            [12] 1596 	mov	a,_bp
      0032E5 24 17            [12] 1597 	add	a,#0x17
      0032E7 F8               [12] 1598 	mov	r0,a
      0032E8 74 11            [12] 1599 	mov	a,#0x11
      0032EA 26               [12] 1600 	add	a,@r0
      0032EB FA               [12] 1601 	mov	r2,a
      0032EC ED               [12] 1602 	mov	a,r5
      0032ED 08               [12] 1603 	inc	r0
      0032EE 36               [12] 1604 	addc	a,@r0
      0032EF FB               [12] 1605 	mov	r3,a
      0032F0 08               [12] 1606 	inc	r0
      0032F1 86 04            [24] 1607 	mov	ar4,@r0
      0032F3 8A 82            [24] 1608 	mov	dpl,r2
      0032F5 8B 83            [24] 1609 	mov	dph,r3
      0032F7 8C F0            [24] 1610 	mov	b,r4
      0032F9 12 65 6C         [24] 1611 	lcall	__gptrget
      0032FC FA               [12] 1612 	mov	r2,a
      0032FD A3               [24] 1613 	inc	dptr
      0032FE 12 65 6C         [24] 1614 	lcall	__gptrget
      003301 FB               [12] 1615 	mov	r3,a
      003302 A3               [24] 1616 	inc	dptr
      003303 12 65 6C         [24] 1617 	lcall	__gptrget
      003306 FC               [12] 1618 	mov	r4,a
      003307 C0 07            [24] 1619 	push	ar7
      003309 C0 06            [24] 1620 	push	ar6
      00330B C0 05            [24] 1621 	push	ar5
      00330D 8A 82            [24] 1622 	mov	dpl,r2
      00330F 8B 83            [24] 1623 	mov	dph,r3
      003311 8C F0            [24] 1624 	mov	b,r4
      003313 12 28 5E         [24] 1625 	lcall	_stack_peek
      003316 AB 82            [24] 1626 	mov	r3,dpl
      003318 AC 83            [24] 1627 	mov	r4,dph
      00331A 15 81            [12] 1628 	dec	sp
      00331C 15 81            [12] 1629 	dec	sp
      00331E 15 81            [12] 1630 	dec	sp
      003320 EB               [12] 1631 	mov	a,r3
      003321 4C               [12] 1632 	orl	a,r4
      003322 70 0C            [24] 1633 	jnz	00103$
      003324 90 7E 00         [24] 1634 	mov	dptr,#___str_3
      003327 75 F0 80         [24] 1635 	mov	b,#0x80
      00332A 12 5E 27         [24] 1636 	lcall	_printstr
      00332D 02 4F 17         [24] 1637 	ljmp	00249$
      003330                       1638 00103$:
                                   1639 ;	calc.c:91: printstr("PSVTOP\t");
      003330 90 7E 24         [24] 1640 	mov	dptr,#___str_7
      003333 75 F0 80         [24] 1641 	mov	b,#0x80
      003336 12 5E 27         [24] 1642 	lcall	_printstr
                                   1643 ;	calc.c:92: printall(d0);
      003339 E5 08            [12] 1644 	mov	a,_bp
      00333B 24 1A            [12] 1645 	add	a,#0x1a
      00333D F8               [12] 1646 	mov	r0,a
      00333E 86 07            [24] 1647 	mov	ar7,@r0
      003340 08               [12] 1648 	inc	r0
      003341 86 06            [24] 1649 	mov	ar6,@r0
      003343 08               [12] 1650 	inc	r0
      003344 86 05            [24] 1651 	mov	ar5,@r0
      003346 08               [12] 1652 	inc	r0
      003347 86 04            [24] 1653 	mov	ar4,@r0
      003349 E5 08            [12] 1654 	mov	a,_bp
      00334B 24 22            [12] 1655 	add	a,#0x22
      00334D F8               [12] 1656 	mov	r0,a
      00334E A6 07            [24] 1657 	mov	@r0,ar7
      003350 08               [12] 1658 	inc	r0
      003351 A6 06            [24] 1659 	mov	@r0,ar6
      003353 08               [12] 1660 	inc	r0
      003354 A6 05            [24] 1661 	mov	@r0,ar5
      003356 08               [12] 1662 	inc	r0
      003357 A6 04            [24] 1663 	mov	@r0,ar4
                                   1664 ;	calc.c:18: print32x(d);
      003359 8F 82            [24] 1665 	mov	dpl,r7
      00335B 8E 83            [24] 1666 	mov	dph,r6
      00335D 8D F0            [24] 1667 	mov	b,r5
      00335F EC               [12] 1668 	mov	a,r4
      003360 12 5F D7         [24] 1669 	lcall	_print32x
                                   1670 ;	calc.c:19: printf("% 11ld\t", d);
      003363 E5 08            [12] 1671 	mov	a,_bp
      003365 24 22            [12] 1672 	add	a,#0x22
      003367 F8               [12] 1673 	mov	r0,a
      003368 E6               [12] 1674 	mov	a,@r0
      003369 C0 E0            [24] 1675 	push	acc
      00336B 08               [12] 1676 	inc	r0
      00336C E6               [12] 1677 	mov	a,@r0
      00336D C0 E0            [24] 1678 	push	acc
      00336F 08               [12] 1679 	inc	r0
      003370 E6               [12] 1680 	mov	a,@r0
      003371 C0 E0            [24] 1681 	push	acc
      003373 08               [12] 1682 	inc	r0
      003374 E6               [12] 1683 	mov	a,@r0
      003375 C0 E0            [24] 1684 	push	acc
      003377 74 ED            [12] 1685 	mov	a,#___str_0
      003379 C0 E0            [24] 1686 	push	acc
      00337B 74 7D            [12] 1687 	mov	a,#(___str_0 >> 8)
      00337D C0 E0            [24] 1688 	push	acc
      00337F 74 80            [12] 1689 	mov	a,#0x80
      003381 C0 E0            [24] 1690 	push	acc
      003383 12 65 33         [24] 1691 	lcall	_printf
      003386 E5 81            [12] 1692 	mov	a,sp
      003388 24 F9            [12] 1693 	add	a,#0xf9
      00338A F5 81            [12] 1694 	mov	sp,a
                                   1695 ;	calc.c:20: printf("%011lo\t", d);
      00338C E5 08            [12] 1696 	mov	a,_bp
      00338E 24 22            [12] 1697 	add	a,#0x22
      003390 F8               [12] 1698 	mov	r0,a
      003391 E6               [12] 1699 	mov	a,@r0
      003392 C0 E0            [24] 1700 	push	acc
      003394 08               [12] 1701 	inc	r0
      003395 E6               [12] 1702 	mov	a,@r0
      003396 C0 E0            [24] 1703 	push	acc
      003398 08               [12] 1704 	inc	r0
      003399 E6               [12] 1705 	mov	a,@r0
      00339A C0 E0            [24] 1706 	push	acc
      00339C 08               [12] 1707 	inc	r0
      00339D E6               [12] 1708 	mov	a,@r0
      00339E C0 E0            [24] 1709 	push	acc
      0033A0 74 F5            [12] 1710 	mov	a,#___str_1
      0033A2 C0 E0            [24] 1711 	push	acc
      0033A4 74 7D            [12] 1712 	mov	a,#(___str_1 >> 8)
      0033A6 C0 E0            [24] 1713 	push	acc
      0033A8 74 80            [12] 1714 	mov	a,#0x80
      0033AA C0 E0            [24] 1715 	push	acc
      0033AC 12 65 33         [24] 1716 	lcall	_printf
      0033AF E5 81            [12] 1717 	mov	a,sp
      0033B1 24 F9            [12] 1718 	add	a,#0xf9
      0033B3 F5 81            [12] 1719 	mov	sp,a
                                   1720 ;	calc.c:21: print32bin(d);
      0033B5 E5 08            [12] 1721 	mov	a,_bp
      0033B7 24 22            [12] 1722 	add	a,#0x22
      0033B9 F8               [12] 1723 	mov	r0,a
      0033BA 86 82            [24] 1724 	mov	dpl,@r0
      0033BC 08               [12] 1725 	inc	r0
      0033BD 86 83            [24] 1726 	mov	dph,@r0
      0033BF 08               [12] 1727 	inc	r0
      0033C0 86 F0            [24] 1728 	mov	b,@r0
      0033C2 08               [12] 1729 	inc	r0
      0033C3 E6               [12] 1730 	mov	a,@r0
      0033C4 12 5E 96         [24] 1731 	lcall	_print32bin
                                   1732 ;	calc.c:93: printstr("\r\n");
      0033C7 90 7D FD         [24] 1733 	mov	dptr,#___str_2
      0033CA 75 F0 80         [24] 1734 	mov	b,#0x80
      0033CD 12 5E 27         [24] 1735 	lcall	_printstr
                                   1736 ;	calc.c:95: break;
      0033D0 02 4F 17         [24] 1737 	ljmp	00249$
                                   1738 ;	calc.c:96: case 'V':
      0033D3                       1739 00105$:
                                   1740 ;	calc.c:97: printstr("\r\n");
      0033D3 90 7D FD         [24] 1741 	mov	dptr,#___str_2
      0033D6 75 F0 80         [24] 1742 	mov	b,#0x80
      0033D9 12 5E 27         [24] 1743 	lcall	_printstr
                                   1744 ;	calc.c:98: if (!stack_iter_peek(ctx->ps, dump_peek, ctx)) printstr("stack underflow\r\n");
      0033DC E5 08            [12] 1745 	mov	a,_bp
      0033DE 24 17            [12] 1746 	add	a,#0x17
      0033E0 F8               [12] 1747 	mov	r0,a
      0033E1 86 07            [24] 1748 	mov	ar7,@r0
      0033E3 08               [12] 1749 	inc	r0
      0033E4 86 06            [24] 1750 	mov	ar6,@r0
      0033E6 08               [12] 1751 	inc	r0
      0033E7 86 05            [24] 1752 	mov	ar5,@r0
      0033E9 E5 08            [12] 1753 	mov	a,_bp
      0033EB 24 17            [12] 1754 	add	a,#0x17
      0033ED F8               [12] 1755 	mov	r0,a
      0033EE 74 11            [12] 1756 	mov	a,#0x11
      0033F0 26               [12] 1757 	add	a,@r0
      0033F1 FA               [12] 1758 	mov	r2,a
      0033F2 74 40            [12] 1759 	mov	a,#0x40
      0033F4 08               [12] 1760 	inc	r0
      0033F5 36               [12] 1761 	addc	a,@r0
      0033F6 FB               [12] 1762 	mov	r3,a
      0033F7 08               [12] 1763 	inc	r0
      0033F8 86 04            [24] 1764 	mov	ar4,@r0
      0033FA 8A 82            [24] 1765 	mov	dpl,r2
      0033FC 8B 83            [24] 1766 	mov	dph,r3
      0033FE 8C F0            [24] 1767 	mov	b,r4
      003400 12 65 6C         [24] 1768 	lcall	__gptrget
      003403 FA               [12] 1769 	mov	r2,a
      003404 A3               [24] 1770 	inc	dptr
      003405 12 65 6C         [24] 1771 	lcall	__gptrget
      003408 FB               [12] 1772 	mov	r3,a
      003409 A3               [24] 1773 	inc	dptr
      00340A 12 65 6C         [24] 1774 	lcall	__gptrget
      00340D FC               [12] 1775 	mov	r4,a
      00340E C0 07            [24] 1776 	push	ar7
      003410 C0 06            [24] 1777 	push	ar6
      003412 C0 05            [24] 1778 	push	ar5
      003414 74 00            [12] 1779 	mov	a,#_dump_peek
      003416 C0 E0            [24] 1780 	push	acc
      003418 74 31            [12] 1781 	mov	a,#(_dump_peek >> 8)
      00341A C0 E0            [24] 1782 	push	acc
      00341C 8A 82            [24] 1783 	mov	dpl,r2
      00341E 8B 83            [24] 1784 	mov	dph,r3
      003420 8C F0            [24] 1785 	mov	b,r4
      003422 12 2A 91         [24] 1786 	lcall	_stack_iter_peek
      003425 AB 82            [24] 1787 	mov	r3,dpl
      003427 AC 83            [24] 1788 	mov	r4,dph
      003429 E5 81            [12] 1789 	mov	a,sp
      00342B 24 FB            [12] 1790 	add	a,#0xfb
      00342D F5 81            [12] 1791 	mov	sp,a
      00342F EB               [12] 1792 	mov	a,r3
      003430 4C               [12] 1793 	orl	a,r4
      003431 60 03            [24] 1794 	jz	00553$
      003433 02 4F 17         [24] 1795 	ljmp	00249$
      003436                       1796 00553$:
      003436 90 7E 00         [24] 1797 	mov	dptr,#___str_3
      003439 75 F0 80         [24] 1798 	mov	b,#0x80
      00343C 12 5E 27         [24] 1799 	lcall	_printstr
                                   1800 ;	calc.c:99: break;
      00343F 02 4F 17         [24] 1801 	ljmp	00249$
                                   1802 ;	calc.c:101: case 'p':
      003442                       1803 00109$:
                                   1804 ;	calc.c:102: printstr("\r\n");
      003442 90 7D FD         [24] 1805 	mov	dptr,#___str_2
      003445 75 F0 80         [24] 1806 	mov	b,#0x80
      003448 12 5E 27         [24] 1807 	lcall	_printstr
                                   1808 ;	calc.c:103: if (!stack_pop(ctx->ps, &d0)) printstr("stack underflow\r\n");
      00344B E5 08            [12] 1809 	mov	a,_bp
      00344D 24 1A            [12] 1810 	add	a,#0x1a
      00344F FF               [12] 1811 	mov	r7,a
      003450 7E 00            [12] 1812 	mov	r6,#0x00
      003452 7D 40            [12] 1813 	mov	r5,#0x40
      003454 E5 08            [12] 1814 	mov	a,_bp
      003456 24 17            [12] 1815 	add	a,#0x17
      003458 F8               [12] 1816 	mov	r0,a
      003459 74 11            [12] 1817 	mov	a,#0x11
      00345B 26               [12] 1818 	add	a,@r0
      00345C FA               [12] 1819 	mov	r2,a
      00345D ED               [12] 1820 	mov	a,r5
      00345E 08               [12] 1821 	inc	r0
      00345F 36               [12] 1822 	addc	a,@r0
      003460 FB               [12] 1823 	mov	r3,a
      003461 08               [12] 1824 	inc	r0
      003462 86 04            [24] 1825 	mov	ar4,@r0
      003464 8A 82            [24] 1826 	mov	dpl,r2
      003466 8B 83            [24] 1827 	mov	dph,r3
      003468 8C F0            [24] 1828 	mov	b,r4
      00346A 12 65 6C         [24] 1829 	lcall	__gptrget
      00346D FA               [12] 1830 	mov	r2,a
      00346E A3               [24] 1831 	inc	dptr
      00346F 12 65 6C         [24] 1832 	lcall	__gptrget
      003472 FB               [12] 1833 	mov	r3,a
      003473 A3               [24] 1834 	inc	dptr
      003474 12 65 6C         [24] 1835 	lcall	__gptrget
      003477 FC               [12] 1836 	mov	r4,a
      003478 C0 07            [24] 1837 	push	ar7
      00347A C0 06            [24] 1838 	push	ar6
      00347C C0 05            [24] 1839 	push	ar5
      00347E 8A 82            [24] 1840 	mov	dpl,r2
      003480 8B 83            [24] 1841 	mov	dph,r3
      003482 8C F0            [24] 1842 	mov	b,r4
      003484 12 27 83         [24] 1843 	lcall	_stack_pop
      003487 AB 82            [24] 1844 	mov	r3,dpl
      003489 AC 83            [24] 1845 	mov	r4,dph
      00348B 15 81            [12] 1846 	dec	sp
      00348D 15 81            [12] 1847 	dec	sp
      00348F 15 81            [12] 1848 	dec	sp
      003491 EB               [12] 1849 	mov	a,r3
      003492 4C               [12] 1850 	orl	a,r4
      003493 70 0C            [24] 1851 	jnz	00111$
      003495 90 7E 00         [24] 1852 	mov	dptr,#___str_3
      003498 75 F0 80         [24] 1853 	mov	b,#0x80
      00349B 12 5E 27         [24] 1854 	lcall	_printstr
      00349E 02 4F 17         [24] 1855 	ljmp	00249$
      0034A1                       1856 00111$:
                                   1857 ;	calc.c:105: printstr("PSPTOP\t");
      0034A1 90 7E 2C         [24] 1858 	mov	dptr,#___str_8
      0034A4 75 F0 80         [24] 1859 	mov	b,#0x80
      0034A7 12 5E 27         [24] 1860 	lcall	_printstr
                                   1861 ;	calc.c:106: printall(d0);
      0034AA E5 08            [12] 1862 	mov	a,_bp
      0034AC 24 1A            [12] 1863 	add	a,#0x1a
      0034AE F8               [12] 1864 	mov	r0,a
      0034AF 86 07            [24] 1865 	mov	ar7,@r0
      0034B1 08               [12] 1866 	inc	r0
      0034B2 86 06            [24] 1867 	mov	ar6,@r0
      0034B4 08               [12] 1868 	inc	r0
      0034B5 86 05            [24] 1869 	mov	ar5,@r0
      0034B7 08               [12] 1870 	inc	r0
      0034B8 86 04            [24] 1871 	mov	ar4,@r0
      0034BA E5 08            [12] 1872 	mov	a,_bp
      0034BC 24 22            [12] 1873 	add	a,#0x22
      0034BE F8               [12] 1874 	mov	r0,a
      0034BF A6 07            [24] 1875 	mov	@r0,ar7
      0034C1 08               [12] 1876 	inc	r0
      0034C2 A6 06            [24] 1877 	mov	@r0,ar6
      0034C4 08               [12] 1878 	inc	r0
      0034C5 A6 05            [24] 1879 	mov	@r0,ar5
      0034C7 08               [12] 1880 	inc	r0
      0034C8 A6 04            [24] 1881 	mov	@r0,ar4
                                   1882 ;	calc.c:18: print32x(d);
      0034CA 8F 82            [24] 1883 	mov	dpl,r7
      0034CC 8E 83            [24] 1884 	mov	dph,r6
      0034CE 8D F0            [24] 1885 	mov	b,r5
      0034D0 EC               [12] 1886 	mov	a,r4
      0034D1 12 5F D7         [24] 1887 	lcall	_print32x
                                   1888 ;	calc.c:19: printf("% 11ld\t", d);
      0034D4 E5 08            [12] 1889 	mov	a,_bp
      0034D6 24 22            [12] 1890 	add	a,#0x22
      0034D8 F8               [12] 1891 	mov	r0,a
      0034D9 E6               [12] 1892 	mov	a,@r0
      0034DA C0 E0            [24] 1893 	push	acc
      0034DC 08               [12] 1894 	inc	r0
      0034DD E6               [12] 1895 	mov	a,@r0
      0034DE C0 E0            [24] 1896 	push	acc
      0034E0 08               [12] 1897 	inc	r0
      0034E1 E6               [12] 1898 	mov	a,@r0
      0034E2 C0 E0            [24] 1899 	push	acc
      0034E4 08               [12] 1900 	inc	r0
      0034E5 E6               [12] 1901 	mov	a,@r0
      0034E6 C0 E0            [24] 1902 	push	acc
      0034E8 74 ED            [12] 1903 	mov	a,#___str_0
      0034EA C0 E0            [24] 1904 	push	acc
      0034EC 74 7D            [12] 1905 	mov	a,#(___str_0 >> 8)
      0034EE C0 E0            [24] 1906 	push	acc
      0034F0 74 80            [12] 1907 	mov	a,#0x80
      0034F2 C0 E0            [24] 1908 	push	acc
      0034F4 12 65 33         [24] 1909 	lcall	_printf
      0034F7 E5 81            [12] 1910 	mov	a,sp
      0034F9 24 F9            [12] 1911 	add	a,#0xf9
      0034FB F5 81            [12] 1912 	mov	sp,a
                                   1913 ;	calc.c:20: printf("%011lo\t", d);
      0034FD E5 08            [12] 1914 	mov	a,_bp
      0034FF 24 22            [12] 1915 	add	a,#0x22
      003501 F8               [12] 1916 	mov	r0,a
      003502 E6               [12] 1917 	mov	a,@r0
      003503 C0 E0            [24] 1918 	push	acc
      003505 08               [12] 1919 	inc	r0
      003506 E6               [12] 1920 	mov	a,@r0
      003507 C0 E0            [24] 1921 	push	acc
      003509 08               [12] 1922 	inc	r0
      00350A E6               [12] 1923 	mov	a,@r0
      00350B C0 E0            [24] 1924 	push	acc
      00350D 08               [12] 1925 	inc	r0
      00350E E6               [12] 1926 	mov	a,@r0
      00350F C0 E0            [24] 1927 	push	acc
      003511 74 F5            [12] 1928 	mov	a,#___str_1
      003513 C0 E0            [24] 1929 	push	acc
      003515 74 7D            [12] 1930 	mov	a,#(___str_1 >> 8)
      003517 C0 E0            [24] 1931 	push	acc
      003519 74 80            [12] 1932 	mov	a,#0x80
      00351B C0 E0            [24] 1933 	push	acc
      00351D 12 65 33         [24] 1934 	lcall	_printf
      003520 E5 81            [12] 1935 	mov	a,sp
      003522 24 F9            [12] 1936 	add	a,#0xf9
      003524 F5 81            [12] 1937 	mov	sp,a
                                   1938 ;	calc.c:21: print32bin(d);
      003526 E5 08            [12] 1939 	mov	a,_bp
      003528 24 22            [12] 1940 	add	a,#0x22
      00352A F8               [12] 1941 	mov	r0,a
      00352B 86 82            [24] 1942 	mov	dpl,@r0
      00352D 08               [12] 1943 	inc	r0
      00352E 86 83            [24] 1944 	mov	dph,@r0
      003530 08               [12] 1945 	inc	r0
      003531 86 F0            [24] 1946 	mov	b,@r0
      003533 08               [12] 1947 	inc	r0
      003534 E6               [12] 1948 	mov	a,@r0
      003535 12 5E 96         [24] 1949 	lcall	_print32bin
                                   1950 ;	calc.c:107: printstr("\r\n");
      003538 90 7D FD         [24] 1951 	mov	dptr,#___str_2
      00353B 75 F0 80         [24] 1952 	mov	b,#0x80
      00353E 12 5E 27         [24] 1953 	lcall	_printstr
                                   1954 ;	calc.c:109: break;
      003541 02 4F 17         [24] 1955 	ljmp	00249$
                                   1956 ;	calc.c:110: case 'P':
      003544                       1957 00113$:
                                   1958 ;	calc.c:111: printstr("\r\n");
      003544 90 7D FD         [24] 1959 	mov	dptr,#___str_2
      003547 75 F0 80         [24] 1960 	mov	b,#0x80
      00354A C0 04            [24] 1961 	push	ar4
      00354C C0 03            [24] 1962 	push	ar3
      00354E C0 02            [24] 1963 	push	ar2
      003550 12 5E 27         [24] 1964 	lcall	_printstr
      003553 D0 02            [24] 1965 	pop	ar2
      003555 D0 03            [24] 1966 	pop	ar3
      003557 D0 04            [24] 1967 	pop	ar4
                                   1968 ;	calc.c:112: (void)dump_pop(_ctx, delta);
      003559 E5 08            [12] 1969 	mov	a,_bp
      00355B 24 FB            [12] 1970 	add	a,#0xfb
      00355D F8               [12] 1971 	mov	r0,a
      00355E E6               [12] 1972 	mov	a,@r0
      00355F C0 E0            [24] 1973 	push	acc
      003561 08               [12] 1974 	inc	r0
      003562 E6               [12] 1975 	mov	a,@r0
      003563 C0 E0            [24] 1976 	push	acc
      003565 08               [12] 1977 	inc	r0
      003566 E6               [12] 1978 	mov	a,@r0
      003567 C0 E0            [24] 1979 	push	acc
      003569 8A 82            [24] 1980 	mov	dpl,r2
      00356B 8B 83            [24] 1981 	mov	dph,r3
      00356D 8C F0            [24] 1982 	mov	b,r4
      00356F 12 2C E1         [24] 1983 	lcall	_dump_pop
      003572 15 81            [12] 1984 	dec	sp
      003574 15 81            [12] 1985 	dec	sp
      003576 15 81            [12] 1986 	dec	sp
                                   1987 ;	calc.c:113: break;
      003578 02 4F 17         [24] 1988 	ljmp	00249$
                                   1989 ;	calc.c:114: case 'x':
      00357B                       1990 00114$:
                                   1991 ;	calc.c:115: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00357B E5 08            [12] 1992 	mov	a,_bp
      00357D 24 1A            [12] 1993 	add	a,#0x1a
      00357F FF               [12] 1994 	mov	r7,a
      003580 7E 00            [12] 1995 	mov	r6,#0x00
      003582 7D 40            [12] 1996 	mov	r5,#0x40
      003584 E5 08            [12] 1997 	mov	a,_bp
      003586 24 17            [12] 1998 	add	a,#0x17
      003588 F8               [12] 1999 	mov	r0,a
      003589 A9 08            [24] 2000 	mov	r1,_bp
      00358B 09               [12] 2001 	inc	r1
      00358C 09               [12] 2002 	inc	r1
      00358D 74 11            [12] 2003 	mov	a,#0x11
      00358F 26               [12] 2004 	add	a,@r0
      003590 F7               [12] 2005 	mov	@r1,a
      003591 74 40            [12] 2006 	mov	a,#0x40
      003593 08               [12] 2007 	inc	r0
      003594 36               [12] 2008 	addc	a,@r0
      003595 09               [12] 2009 	inc	r1
      003596 F7               [12] 2010 	mov	@r1,a
      003597 08               [12] 2011 	inc	r0
      003598 09               [12] 2012 	inc	r1
      003599 E6               [12] 2013 	mov	a,@r0
      00359A F7               [12] 2014 	mov	@r1,a
      00359B A8 08            [24] 2015 	mov	r0,_bp
      00359D 08               [12] 2016 	inc	r0
      00359E 08               [12] 2017 	inc	r0
      00359F 86 82            [24] 2018 	mov	dpl,@r0
      0035A1 08               [12] 2019 	inc	r0
      0035A2 86 83            [24] 2020 	mov	dph,@r0
      0035A4 08               [12] 2021 	inc	r0
      0035A5 86 F0            [24] 2022 	mov	b,@r0
      0035A7 12 65 6C         [24] 2023 	lcall	__gptrget
      0035AA FA               [12] 2024 	mov	r2,a
      0035AB A3               [24] 2025 	inc	dptr
      0035AC 12 65 6C         [24] 2026 	lcall	__gptrget
      0035AF FB               [12] 2027 	mov	r3,a
      0035B0 A3               [24] 2028 	inc	dptr
      0035B1 12 65 6C         [24] 2029 	lcall	__gptrget
      0035B4 FC               [12] 2030 	mov	r4,a
      0035B5 C0 07            [24] 2031 	push	ar7
      0035B7 C0 06            [24] 2032 	push	ar6
      0035B9 C0 05            [24] 2033 	push	ar5
      0035BB 8A 82            [24] 2034 	mov	dpl,r2
      0035BD 8B 83            [24] 2035 	mov	dph,r3
      0035BF 8C F0            [24] 2036 	mov	b,r4
      0035C1 12 27 83         [24] 2037 	lcall	_stack_pop
      0035C4 AB 82            [24] 2038 	mov	r3,dpl
      0035C6 AC 83            [24] 2039 	mov	r4,dph
      0035C8 15 81            [12] 2040 	dec	sp
      0035CA 15 81            [12] 2041 	dec	sp
      0035CC 15 81            [12] 2042 	dec	sp
      0035CE EB               [12] 2043 	mov	a,r3
      0035CF 4C               [12] 2044 	orl	a,r4
      0035D0 70 0C            [24] 2045 	jnz	00119$
      0035D2 90 7E 34         [24] 2046 	mov	dptr,#___str_9
      0035D5 75 F0 80         [24] 2047 	mov	b,#0x80
      0035D8 12 5E 27         [24] 2048 	lcall	_printstr
      0035DB 02 4F 17         [24] 2049 	ljmp	00249$
      0035DE                       2050 00119$:
                                   2051 ;	calc.c:116: else if (!stack_pop(ctx->ps, &d1)) {
      0035DE E5 08            [12] 2052 	mov	a,_bp
      0035E0 24 1E            [12] 2053 	add	a,#0x1e
      0035E2 FF               [12] 2054 	mov	r7,a
      0035E3 7E 00            [12] 2055 	mov	r6,#0x00
      0035E5 7D 40            [12] 2056 	mov	r5,#0x40
      0035E7 A8 08            [24] 2057 	mov	r0,_bp
      0035E9 08               [12] 2058 	inc	r0
      0035EA 08               [12] 2059 	inc	r0
      0035EB 86 82            [24] 2060 	mov	dpl,@r0
      0035ED 08               [12] 2061 	inc	r0
      0035EE 86 83            [24] 2062 	mov	dph,@r0
      0035F0 08               [12] 2063 	inc	r0
      0035F1 86 F0            [24] 2064 	mov	b,@r0
      0035F3 12 65 6C         [24] 2065 	lcall	__gptrget
      0035F6 FA               [12] 2066 	mov	r2,a
      0035F7 A3               [24] 2067 	inc	dptr
      0035F8 12 65 6C         [24] 2068 	lcall	__gptrget
      0035FB FB               [12] 2069 	mov	r3,a
      0035FC A3               [24] 2070 	inc	dptr
      0035FD 12 65 6C         [24] 2071 	lcall	__gptrget
      003600 FC               [12] 2072 	mov	r4,a
      003601 C0 07            [24] 2073 	push	ar7
      003603 C0 06            [24] 2074 	push	ar6
      003605 C0 05            [24] 2075 	push	ar5
      003607 8A 82            [24] 2076 	mov	dpl,r2
      003609 8B 83            [24] 2077 	mov	dph,r3
      00360B 8C F0            [24] 2078 	mov	b,r4
      00360D 12 27 83         [24] 2079 	lcall	_stack_pop
      003610 AB 82            [24] 2080 	mov	r3,dpl
      003612 AC 83            [24] 2081 	mov	r4,dph
      003614 15 81            [12] 2082 	dec	sp
      003616 15 81            [12] 2083 	dec	sp
      003618 15 81            [12] 2084 	dec	sp
      00361A EB               [12] 2085 	mov	a,r3
      00361B 4C               [12] 2086 	orl	a,r4
      00361C 70 49            [24] 2087 	jnz	00116$
                                   2088 ;	calc.c:117: (void)stack_push(ctx->ps, d0);
      00361E A8 08            [24] 2089 	mov	r0,_bp
      003620 08               [12] 2090 	inc	r0
      003621 08               [12] 2091 	inc	r0
      003622 86 82            [24] 2092 	mov	dpl,@r0
      003624 08               [12] 2093 	inc	r0
      003625 86 83            [24] 2094 	mov	dph,@r0
      003627 08               [12] 2095 	inc	r0
      003628 86 F0            [24] 2096 	mov	b,@r0
      00362A 12 65 6C         [24] 2097 	lcall	__gptrget
      00362D FA               [12] 2098 	mov	r2,a
      00362E A3               [24] 2099 	inc	dptr
      00362F 12 65 6C         [24] 2100 	lcall	__gptrget
      003632 FB               [12] 2101 	mov	r3,a
      003633 A3               [24] 2102 	inc	dptr
      003634 12 65 6C         [24] 2103 	lcall	__gptrget
      003637 FC               [12] 2104 	mov	r4,a
      003638 E5 08            [12] 2105 	mov	a,_bp
      00363A 24 1A            [12] 2106 	add	a,#0x1a
      00363C F8               [12] 2107 	mov	r0,a
      00363D E6               [12] 2108 	mov	a,@r0
      00363E C0 E0            [24] 2109 	push	acc
      003640 08               [12] 2110 	inc	r0
      003641 E6               [12] 2111 	mov	a,@r0
      003642 C0 E0            [24] 2112 	push	acc
      003644 08               [12] 2113 	inc	r0
      003645 E6               [12] 2114 	mov	a,@r0
      003646 C0 E0            [24] 2115 	push	acc
      003648 08               [12] 2116 	inc	r0
      003649 E6               [12] 2117 	mov	a,@r0
      00364A C0 E0            [24] 2118 	push	acc
      00364C 8A 82            [24] 2119 	mov	dpl,r2
      00364E 8B 83            [24] 2120 	mov	dph,r3
      003650 8C F0            [24] 2121 	mov	b,r4
      003652 12 26 B5         [24] 2122 	lcall	_stack_push
      003655 E5 81            [12] 2123 	mov	a,sp
      003657 24 FC            [12] 2124 	add	a,#0xfc
      003659 F5 81            [12] 2125 	mov	sp,a
                                   2126 ;	calc.c:118: printstr("\r\nstack underflow\r\n");
      00365B 90 7E 34         [24] 2127 	mov	dptr,#___str_9
      00365E 75 F0 80         [24] 2128 	mov	b,#0x80
      003661 12 5E 27         [24] 2129 	lcall	_printstr
      003664 02 4F 17         [24] 2130 	ljmp	00249$
      003667                       2131 00116$:
                                   2132 ;	calc.c:120: (void)stack_push(ctx->ps, d0);
      003667 A8 08            [24] 2133 	mov	r0,_bp
      003669 08               [12] 2134 	inc	r0
      00366A 08               [12] 2135 	inc	r0
      00366B 86 82            [24] 2136 	mov	dpl,@r0
      00366D 08               [12] 2137 	inc	r0
      00366E 86 83            [24] 2138 	mov	dph,@r0
      003670 08               [12] 2139 	inc	r0
      003671 86 F0            [24] 2140 	mov	b,@r0
      003673 12 65 6C         [24] 2141 	lcall	__gptrget
      003676 FA               [12] 2142 	mov	r2,a
      003677 A3               [24] 2143 	inc	dptr
      003678 12 65 6C         [24] 2144 	lcall	__gptrget
      00367B FB               [12] 2145 	mov	r3,a
      00367C A3               [24] 2146 	inc	dptr
      00367D 12 65 6C         [24] 2147 	lcall	__gptrget
      003680 FC               [12] 2148 	mov	r4,a
      003681 E5 08            [12] 2149 	mov	a,_bp
      003683 24 1A            [12] 2150 	add	a,#0x1a
      003685 F8               [12] 2151 	mov	r0,a
      003686 E6               [12] 2152 	mov	a,@r0
      003687 C0 E0            [24] 2153 	push	acc
      003689 08               [12] 2154 	inc	r0
      00368A E6               [12] 2155 	mov	a,@r0
      00368B C0 E0            [24] 2156 	push	acc
      00368D 08               [12] 2157 	inc	r0
      00368E E6               [12] 2158 	mov	a,@r0
      00368F C0 E0            [24] 2159 	push	acc
      003691 08               [12] 2160 	inc	r0
      003692 E6               [12] 2161 	mov	a,@r0
      003693 C0 E0            [24] 2162 	push	acc
      003695 8A 82            [24] 2163 	mov	dpl,r2
      003697 8B 83            [24] 2164 	mov	dph,r3
      003699 8C F0            [24] 2165 	mov	b,r4
      00369B 12 26 B5         [24] 2166 	lcall	_stack_push
      00369E E5 81            [12] 2167 	mov	a,sp
      0036A0 24 FC            [12] 2168 	add	a,#0xfc
      0036A2 F5 81            [12] 2169 	mov	sp,a
                                   2170 ;	calc.c:121: (void)stack_push(ctx->ps, d1);
      0036A4 A8 08            [24] 2171 	mov	r0,_bp
      0036A6 08               [12] 2172 	inc	r0
      0036A7 08               [12] 2173 	inc	r0
      0036A8 86 82            [24] 2174 	mov	dpl,@r0
      0036AA 08               [12] 2175 	inc	r0
      0036AB 86 83            [24] 2176 	mov	dph,@r0
      0036AD 08               [12] 2177 	inc	r0
      0036AE 86 F0            [24] 2178 	mov	b,@r0
      0036B0 12 65 6C         [24] 2179 	lcall	__gptrget
      0036B3 FA               [12] 2180 	mov	r2,a
      0036B4 A3               [24] 2181 	inc	dptr
      0036B5 12 65 6C         [24] 2182 	lcall	__gptrget
      0036B8 FB               [12] 2183 	mov	r3,a
      0036B9 A3               [24] 2184 	inc	dptr
      0036BA 12 65 6C         [24] 2185 	lcall	__gptrget
      0036BD FC               [12] 2186 	mov	r4,a
      0036BE E5 08            [12] 2187 	mov	a,_bp
      0036C0 24 1E            [12] 2188 	add	a,#0x1e
      0036C2 F8               [12] 2189 	mov	r0,a
      0036C3 E6               [12] 2190 	mov	a,@r0
      0036C4 C0 E0            [24] 2191 	push	acc
      0036C6 08               [12] 2192 	inc	r0
      0036C7 E6               [12] 2193 	mov	a,@r0
      0036C8 C0 E0            [24] 2194 	push	acc
      0036CA 08               [12] 2195 	inc	r0
      0036CB E6               [12] 2196 	mov	a,@r0
      0036CC C0 E0            [24] 2197 	push	acc
      0036CE 08               [12] 2198 	inc	r0
      0036CF E6               [12] 2199 	mov	a,@r0
      0036D0 C0 E0            [24] 2200 	push	acc
      0036D2 8A 82            [24] 2201 	mov	dpl,r2
      0036D4 8B 83            [24] 2202 	mov	dph,r3
      0036D6 8C F0            [24] 2203 	mov	b,r4
      0036D8 12 26 B5         [24] 2204 	lcall	_stack_push
      0036DB E5 81            [12] 2205 	mov	a,sp
      0036DD 24 FC            [12] 2206 	add	a,#0xfc
      0036DF F5 81            [12] 2207 	mov	sp,a
                                   2208 ;	calc.c:123: break;
      0036E1 02 4F 17         [24] 2209 	ljmp	00249$
                                   2210 ;	calc.c:124: case 'X':
      0036E4                       2211 00121$:
                                   2212 ;	calc.c:125: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0036E4 E5 08            [12] 2213 	mov	a,_bp
      0036E6 24 1A            [12] 2214 	add	a,#0x1a
      0036E8 FF               [12] 2215 	mov	r7,a
      0036E9 7E 00            [12] 2216 	mov	r6,#0x00
      0036EB 7D 40            [12] 2217 	mov	r5,#0x40
      0036ED E5 08            [12] 2218 	mov	a,_bp
      0036EF 24 17            [12] 2219 	add	a,#0x17
      0036F1 F8               [12] 2220 	mov	r0,a
      0036F2 E5 08            [12] 2221 	mov	a,_bp
      0036F4 24 05            [12] 2222 	add	a,#0x05
      0036F6 F9               [12] 2223 	mov	r1,a
      0036F7 74 11            [12] 2224 	mov	a,#0x11
      0036F9 26               [12] 2225 	add	a,@r0
      0036FA F7               [12] 2226 	mov	@r1,a
      0036FB 74 40            [12] 2227 	mov	a,#0x40
      0036FD 08               [12] 2228 	inc	r0
      0036FE 36               [12] 2229 	addc	a,@r0
      0036FF 09               [12] 2230 	inc	r1
      003700 F7               [12] 2231 	mov	@r1,a
      003701 08               [12] 2232 	inc	r0
      003702 09               [12] 2233 	inc	r1
      003703 E6               [12] 2234 	mov	a,@r0
      003704 F7               [12] 2235 	mov	@r1,a
      003705 E5 08            [12] 2236 	mov	a,_bp
      003707 24 05            [12] 2237 	add	a,#0x05
      003709 F8               [12] 2238 	mov	r0,a
      00370A 86 82            [24] 2239 	mov	dpl,@r0
      00370C 08               [12] 2240 	inc	r0
      00370D 86 83            [24] 2241 	mov	dph,@r0
      00370F 08               [12] 2242 	inc	r0
      003710 86 F0            [24] 2243 	mov	b,@r0
      003712 12 65 6C         [24] 2244 	lcall	__gptrget
      003715 FA               [12] 2245 	mov	r2,a
      003716 A3               [24] 2246 	inc	dptr
      003717 12 65 6C         [24] 2247 	lcall	__gptrget
      00371A FB               [12] 2248 	mov	r3,a
      00371B A3               [24] 2249 	inc	dptr
      00371C 12 65 6C         [24] 2250 	lcall	__gptrget
      00371F FC               [12] 2251 	mov	r4,a
      003720 C0 07            [24] 2252 	push	ar7
      003722 C0 06            [24] 2253 	push	ar6
      003724 C0 05            [24] 2254 	push	ar5
      003726 8A 82            [24] 2255 	mov	dpl,r2
      003728 8B 83            [24] 2256 	mov	dph,r3
      00372A 8C F0            [24] 2257 	mov	b,r4
      00372C 12 27 83         [24] 2258 	lcall	_stack_pop
      00372F AB 82            [24] 2259 	mov	r3,dpl
      003731 AC 83            [24] 2260 	mov	r4,dph
      003733 15 81            [12] 2261 	dec	sp
      003735 15 81            [12] 2262 	dec	sp
      003737 15 81            [12] 2263 	dec	sp
      003739 EB               [12] 2264 	mov	a,r3
      00373A 4C               [12] 2265 	orl	a,r4
      00373B 70 0C            [24] 2266 	jnz	00126$
      00373D 90 7E 34         [24] 2267 	mov	dptr,#___str_9
      003740 75 F0 80         [24] 2268 	mov	b,#0x80
      003743 12 5E 27         [24] 2269 	lcall	_printstr
      003746 02 4F 17         [24] 2270 	ljmp	00249$
      003749                       2271 00126$:
                                   2272 ;	calc.c:127: if (!stack_pop(ctx->ss, &d1)) {
      003749 E5 08            [12] 2273 	mov	a,_bp
      00374B 24 1E            [12] 2274 	add	a,#0x1e
      00374D FF               [12] 2275 	mov	r7,a
      00374E 7E 00            [12] 2276 	mov	r6,#0x00
      003750 7D 40            [12] 2277 	mov	r5,#0x40
      003752 E5 08            [12] 2278 	mov	a,_bp
      003754 24 17            [12] 2279 	add	a,#0x17
      003756 F8               [12] 2280 	mov	r0,a
      003757 A9 08            [24] 2281 	mov	r1,_bp
      003759 09               [12] 2282 	inc	r1
      00375A 09               [12] 2283 	inc	r1
      00375B 74 14            [12] 2284 	mov	a,#0x14
      00375D 26               [12] 2285 	add	a,@r0
      00375E F7               [12] 2286 	mov	@r1,a
      00375F 74 40            [12] 2287 	mov	a,#0x40
      003761 08               [12] 2288 	inc	r0
      003762 36               [12] 2289 	addc	a,@r0
      003763 09               [12] 2290 	inc	r1
      003764 F7               [12] 2291 	mov	@r1,a
      003765 08               [12] 2292 	inc	r0
      003766 09               [12] 2293 	inc	r1
      003767 E6               [12] 2294 	mov	a,@r0
      003768 F7               [12] 2295 	mov	@r1,a
      003769 A8 08            [24] 2296 	mov	r0,_bp
      00376B 08               [12] 2297 	inc	r0
      00376C 08               [12] 2298 	inc	r0
      00376D 86 82            [24] 2299 	mov	dpl,@r0
      00376F 08               [12] 2300 	inc	r0
      003770 86 83            [24] 2301 	mov	dph,@r0
      003772 08               [12] 2302 	inc	r0
      003773 86 F0            [24] 2303 	mov	b,@r0
      003775 12 65 6C         [24] 2304 	lcall	__gptrget
      003778 FA               [12] 2305 	mov	r2,a
      003779 A3               [24] 2306 	inc	dptr
      00377A 12 65 6C         [24] 2307 	lcall	__gptrget
      00377D FB               [12] 2308 	mov	r3,a
      00377E A3               [24] 2309 	inc	dptr
      00377F 12 65 6C         [24] 2310 	lcall	__gptrget
      003782 FC               [12] 2311 	mov	r4,a
      003783 C0 07            [24] 2312 	push	ar7
      003785 C0 06            [24] 2313 	push	ar6
      003787 C0 05            [24] 2314 	push	ar5
      003789 8A 82            [24] 2315 	mov	dpl,r2
      00378B 8B 83            [24] 2316 	mov	dph,r3
      00378D 8C F0            [24] 2317 	mov	b,r4
      00378F 12 27 83         [24] 2318 	lcall	_stack_pop
      003792 AB 82            [24] 2319 	mov	r3,dpl
      003794 AC 83            [24] 2320 	mov	r4,dph
      003796 15 81            [12] 2321 	dec	sp
      003798 15 81            [12] 2322 	dec	sp
      00379A 15 81            [12] 2323 	dec	sp
      00379C EB               [12] 2324 	mov	a,r3
      00379D 4C               [12] 2325 	orl	a,r4
      00379E 70 4A            [24] 2326 	jnz	00123$
                                   2327 ;	calc.c:128: printstr("\r\nsecondary stack underflow\r\n");
      0037A0 90 7E 48         [24] 2328 	mov	dptr,#___str_10
      0037A3 75 F0 80         [24] 2329 	mov	b,#0x80
      0037A6 12 5E 27         [24] 2330 	lcall	_printstr
                                   2331 ;	calc.c:129: (void)stack_push(ctx->ps, d0);
      0037A9 E5 08            [12] 2332 	mov	a,_bp
      0037AB 24 05            [12] 2333 	add	a,#0x05
      0037AD F8               [12] 2334 	mov	r0,a
      0037AE 86 82            [24] 2335 	mov	dpl,@r0
      0037B0 08               [12] 2336 	inc	r0
      0037B1 86 83            [24] 2337 	mov	dph,@r0
      0037B3 08               [12] 2338 	inc	r0
      0037B4 86 F0            [24] 2339 	mov	b,@r0
      0037B6 12 65 6C         [24] 2340 	lcall	__gptrget
      0037B9 FA               [12] 2341 	mov	r2,a
      0037BA A3               [24] 2342 	inc	dptr
      0037BB 12 65 6C         [24] 2343 	lcall	__gptrget
      0037BE FB               [12] 2344 	mov	r3,a
      0037BF A3               [24] 2345 	inc	dptr
      0037C0 12 65 6C         [24] 2346 	lcall	__gptrget
      0037C3 FC               [12] 2347 	mov	r4,a
      0037C4 E5 08            [12] 2348 	mov	a,_bp
      0037C6 24 1A            [12] 2349 	add	a,#0x1a
      0037C8 F8               [12] 2350 	mov	r0,a
      0037C9 E6               [12] 2351 	mov	a,@r0
      0037CA C0 E0            [24] 2352 	push	acc
      0037CC 08               [12] 2353 	inc	r0
      0037CD E6               [12] 2354 	mov	a,@r0
      0037CE C0 E0            [24] 2355 	push	acc
      0037D0 08               [12] 2356 	inc	r0
      0037D1 E6               [12] 2357 	mov	a,@r0
      0037D2 C0 E0            [24] 2358 	push	acc
      0037D4 08               [12] 2359 	inc	r0
      0037D5 E6               [12] 2360 	mov	a,@r0
      0037D6 C0 E0            [24] 2361 	push	acc
      0037D8 8A 82            [24] 2362 	mov	dpl,r2
      0037DA 8B 83            [24] 2363 	mov	dph,r3
      0037DC 8C F0            [24] 2364 	mov	b,r4
      0037DE 12 26 B5         [24] 2365 	lcall	_stack_push
      0037E1 E5 81            [12] 2366 	mov	a,sp
      0037E3 24 FC            [12] 2367 	add	a,#0xfc
      0037E5 F5 81            [12] 2368 	mov	sp,a
      0037E7 02 4F 17         [24] 2369 	ljmp	00249$
      0037EA                       2370 00123$:
                                   2371 ;	calc.c:131: (void)stack_push(ctx->ps, d1);
      0037EA E5 08            [12] 2372 	mov	a,_bp
      0037EC 24 05            [12] 2373 	add	a,#0x05
      0037EE F8               [12] 2374 	mov	r0,a
      0037EF 86 82            [24] 2375 	mov	dpl,@r0
      0037F1 08               [12] 2376 	inc	r0
      0037F2 86 83            [24] 2377 	mov	dph,@r0
      0037F4 08               [12] 2378 	inc	r0
      0037F5 86 F0            [24] 2379 	mov	b,@r0
      0037F7 12 65 6C         [24] 2380 	lcall	__gptrget
      0037FA FA               [12] 2381 	mov	r2,a
      0037FB A3               [24] 2382 	inc	dptr
      0037FC 12 65 6C         [24] 2383 	lcall	__gptrget
      0037FF FB               [12] 2384 	mov	r3,a
      003800 A3               [24] 2385 	inc	dptr
      003801 12 65 6C         [24] 2386 	lcall	__gptrget
      003804 FC               [12] 2387 	mov	r4,a
      003805 E5 08            [12] 2388 	mov	a,_bp
      003807 24 1E            [12] 2389 	add	a,#0x1e
      003809 F8               [12] 2390 	mov	r0,a
      00380A E6               [12] 2391 	mov	a,@r0
      00380B C0 E0            [24] 2392 	push	acc
      00380D 08               [12] 2393 	inc	r0
      00380E E6               [12] 2394 	mov	a,@r0
      00380F C0 E0            [24] 2395 	push	acc
      003811 08               [12] 2396 	inc	r0
      003812 E6               [12] 2397 	mov	a,@r0
      003813 C0 E0            [24] 2398 	push	acc
      003815 08               [12] 2399 	inc	r0
      003816 E6               [12] 2400 	mov	a,@r0
      003817 C0 E0            [24] 2401 	push	acc
      003819 8A 82            [24] 2402 	mov	dpl,r2
      00381B 8B 83            [24] 2403 	mov	dph,r3
      00381D 8C F0            [24] 2404 	mov	b,r4
      00381F 12 26 B5         [24] 2405 	lcall	_stack_push
      003822 E5 81            [12] 2406 	mov	a,sp
      003824 24 FC            [12] 2407 	add	a,#0xfc
      003826 F5 81            [12] 2408 	mov	sp,a
                                   2409 ;	calc.c:132: (void)stack_push(ctx->ss, d0);
      003828 A8 08            [24] 2410 	mov	r0,_bp
      00382A 08               [12] 2411 	inc	r0
      00382B 08               [12] 2412 	inc	r0
      00382C 86 82            [24] 2413 	mov	dpl,@r0
      00382E 08               [12] 2414 	inc	r0
      00382F 86 83            [24] 2415 	mov	dph,@r0
      003831 08               [12] 2416 	inc	r0
      003832 86 F0            [24] 2417 	mov	b,@r0
      003834 12 65 6C         [24] 2418 	lcall	__gptrget
      003837 FA               [12] 2419 	mov	r2,a
      003838 A3               [24] 2420 	inc	dptr
      003839 12 65 6C         [24] 2421 	lcall	__gptrget
      00383C FB               [12] 2422 	mov	r3,a
      00383D A3               [24] 2423 	inc	dptr
      00383E 12 65 6C         [24] 2424 	lcall	__gptrget
      003841 FC               [12] 2425 	mov	r4,a
      003842 E5 08            [12] 2426 	mov	a,_bp
      003844 24 1A            [12] 2427 	add	a,#0x1a
      003846 F8               [12] 2428 	mov	r0,a
      003847 E6               [12] 2429 	mov	a,@r0
      003848 C0 E0            [24] 2430 	push	acc
      00384A 08               [12] 2431 	inc	r0
      00384B E6               [12] 2432 	mov	a,@r0
      00384C C0 E0            [24] 2433 	push	acc
      00384E 08               [12] 2434 	inc	r0
      00384F E6               [12] 2435 	mov	a,@r0
      003850 C0 E0            [24] 2436 	push	acc
      003852 08               [12] 2437 	inc	r0
      003853 E6               [12] 2438 	mov	a,@r0
      003854 C0 E0            [24] 2439 	push	acc
      003856 8A 82            [24] 2440 	mov	dpl,r2
      003858 8B 83            [24] 2441 	mov	dph,r3
      00385A 8C F0            [24] 2442 	mov	b,r4
      00385C 12 26 B5         [24] 2443 	lcall	_stack_push
      00385F E5 81            [12] 2444 	mov	a,sp
      003861 24 FC            [12] 2445 	add	a,#0xfc
      003863 F5 81            [12] 2446 	mov	sp,a
                                   2447 ;	calc.c:135: break;
      003865 02 4F 17         [24] 2448 	ljmp	00249$
                                   2449 ;	calc.c:136: case 'm':
      003868                       2450 00128$:
                                   2451 ;	calc.c:137: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003868 E5 08            [12] 2452 	mov	a,_bp
      00386A 24 1A            [12] 2453 	add	a,#0x1a
      00386C FF               [12] 2454 	mov	r7,a
      00386D 7E 00            [12] 2455 	mov	r6,#0x00
      00386F 7D 40            [12] 2456 	mov	r5,#0x40
      003871 E5 08            [12] 2457 	mov	a,_bp
      003873 24 17            [12] 2458 	add	a,#0x17
      003875 F8               [12] 2459 	mov	r0,a
      003876 E5 08            [12] 2460 	mov	a,_bp
      003878 24 08            [12] 2461 	add	a,#0x08
      00387A F9               [12] 2462 	mov	r1,a
      00387B 74 11            [12] 2463 	mov	a,#0x11
      00387D 26               [12] 2464 	add	a,@r0
      00387E F7               [12] 2465 	mov	@r1,a
      00387F 74 40            [12] 2466 	mov	a,#0x40
      003881 08               [12] 2467 	inc	r0
      003882 36               [12] 2468 	addc	a,@r0
      003883 09               [12] 2469 	inc	r1
      003884 F7               [12] 2470 	mov	@r1,a
      003885 08               [12] 2471 	inc	r0
      003886 09               [12] 2472 	inc	r1
      003887 E6               [12] 2473 	mov	a,@r0
      003888 F7               [12] 2474 	mov	@r1,a
      003889 E5 08            [12] 2475 	mov	a,_bp
      00388B 24 08            [12] 2476 	add	a,#0x08
      00388D F8               [12] 2477 	mov	r0,a
      00388E 86 82            [24] 2478 	mov	dpl,@r0
      003890 08               [12] 2479 	inc	r0
      003891 86 83            [24] 2480 	mov	dph,@r0
      003893 08               [12] 2481 	inc	r0
      003894 86 F0            [24] 2482 	mov	b,@r0
      003896 12 65 6C         [24] 2483 	lcall	__gptrget
      003899 FA               [12] 2484 	mov	r2,a
      00389A A3               [24] 2485 	inc	dptr
      00389B 12 65 6C         [24] 2486 	lcall	__gptrget
      00389E FB               [12] 2487 	mov	r3,a
      00389F A3               [24] 2488 	inc	dptr
      0038A0 12 65 6C         [24] 2489 	lcall	__gptrget
      0038A3 FC               [12] 2490 	mov	r4,a
      0038A4 C0 07            [24] 2491 	push	ar7
      0038A6 C0 06            [24] 2492 	push	ar6
      0038A8 C0 05            [24] 2493 	push	ar5
      0038AA 8A 82            [24] 2494 	mov	dpl,r2
      0038AC 8B 83            [24] 2495 	mov	dph,r3
      0038AE 8C F0            [24] 2496 	mov	b,r4
      0038B0 12 27 83         [24] 2497 	lcall	_stack_pop
      0038B3 AB 82            [24] 2498 	mov	r3,dpl
      0038B5 AC 83            [24] 2499 	mov	r4,dph
      0038B7 15 81            [12] 2500 	dec	sp
      0038B9 15 81            [12] 2501 	dec	sp
      0038BB 15 81            [12] 2502 	dec	sp
      0038BD EB               [12] 2503 	mov	a,r3
      0038BE 4C               [12] 2504 	orl	a,r4
      0038BF 70 0C            [24] 2505 	jnz	00132$
      0038C1 90 7E 34         [24] 2506 	mov	dptr,#___str_9
      0038C4 75 F0 80         [24] 2507 	mov	b,#0x80
      0038C7 12 5E 27         [24] 2508 	lcall	_printstr
      0038CA 02 4F 17         [24] 2509 	ljmp	00249$
      0038CD                       2510 00132$:
                                   2511 ;	calc.c:139: if (!stack_push(ctx->ss, d0)) {
      0038CD E5 08            [12] 2512 	mov	a,_bp
      0038CF 24 17            [12] 2513 	add	a,#0x17
      0038D1 F8               [12] 2514 	mov	r0,a
      0038D2 74 14            [12] 2515 	mov	a,#0x14
      0038D4 26               [12] 2516 	add	a,@r0
      0038D5 FA               [12] 2517 	mov	r2,a
      0038D6 74 40            [12] 2518 	mov	a,#0x40
      0038D8 08               [12] 2519 	inc	r0
      0038D9 36               [12] 2520 	addc	a,@r0
      0038DA FB               [12] 2521 	mov	r3,a
      0038DB 08               [12] 2522 	inc	r0
      0038DC 86 04            [24] 2523 	mov	ar4,@r0
      0038DE 8A 82            [24] 2524 	mov	dpl,r2
      0038E0 8B 83            [24] 2525 	mov	dph,r3
      0038E2 8C F0            [24] 2526 	mov	b,r4
      0038E4 12 65 6C         [24] 2527 	lcall	__gptrget
      0038E7 FA               [12] 2528 	mov	r2,a
      0038E8 A3               [24] 2529 	inc	dptr
      0038E9 12 65 6C         [24] 2530 	lcall	__gptrget
      0038EC FB               [12] 2531 	mov	r3,a
      0038ED A3               [24] 2532 	inc	dptr
      0038EE 12 65 6C         [24] 2533 	lcall	__gptrget
      0038F1 FC               [12] 2534 	mov	r4,a
      0038F2 E5 08            [12] 2535 	mov	a,_bp
      0038F4 24 1A            [12] 2536 	add	a,#0x1a
      0038F6 F8               [12] 2537 	mov	r0,a
      0038F7 E6               [12] 2538 	mov	a,@r0
      0038F8 C0 E0            [24] 2539 	push	acc
      0038FA 08               [12] 2540 	inc	r0
      0038FB E6               [12] 2541 	mov	a,@r0
      0038FC C0 E0            [24] 2542 	push	acc
      0038FE 08               [12] 2543 	inc	r0
      0038FF E6               [12] 2544 	mov	a,@r0
      003900 C0 E0            [24] 2545 	push	acc
      003902 08               [12] 2546 	inc	r0
      003903 E6               [12] 2547 	mov	a,@r0
      003904 C0 E0            [24] 2548 	push	acc
      003906 8A 82            [24] 2549 	mov	dpl,r2
      003908 8B 83            [24] 2550 	mov	dph,r3
      00390A 8C F0            [24] 2551 	mov	b,r4
      00390C 12 26 B5         [24] 2552 	lcall	_stack_push
      00390F AB 82            [24] 2553 	mov	r3,dpl
      003911 AC 83            [24] 2554 	mov	r4,dph
      003913 E5 81            [12] 2555 	mov	a,sp
      003915 24 FC            [12] 2556 	add	a,#0xfc
      003917 F5 81            [12] 2557 	mov	sp,a
      003919 EB               [12] 2558 	mov	a,r3
      00391A 4C               [12] 2559 	orl	a,r4
      00391B 60 03            [24] 2560 	jz	00560$
      00391D 02 4F 17         [24] 2561 	ljmp	00249$
      003920                       2562 00560$:
                                   2563 ;	calc.c:140: printstr("\r\nsecondary stack overflow\r\n");
      003920 90 7E 66         [24] 2564 	mov	dptr,#___str_11
      003923 75 F0 80         [24] 2565 	mov	b,#0x80
      003926 12 5E 27         [24] 2566 	lcall	_printstr
                                   2567 ;	calc.c:141: (void)stack_push(ctx->ps, d0);
      003929 E5 08            [12] 2568 	mov	a,_bp
      00392B 24 08            [12] 2569 	add	a,#0x08
      00392D F8               [12] 2570 	mov	r0,a
      00392E 86 82            [24] 2571 	mov	dpl,@r0
      003930 08               [12] 2572 	inc	r0
      003931 86 83            [24] 2573 	mov	dph,@r0
      003933 08               [12] 2574 	inc	r0
      003934 86 F0            [24] 2575 	mov	b,@r0
      003936 12 65 6C         [24] 2576 	lcall	__gptrget
      003939 FA               [12] 2577 	mov	r2,a
      00393A A3               [24] 2578 	inc	dptr
      00393B 12 65 6C         [24] 2579 	lcall	__gptrget
      00393E FB               [12] 2580 	mov	r3,a
      00393F A3               [24] 2581 	inc	dptr
      003940 12 65 6C         [24] 2582 	lcall	__gptrget
      003943 FC               [12] 2583 	mov	r4,a
      003944 E5 08            [12] 2584 	mov	a,_bp
      003946 24 1A            [12] 2585 	add	a,#0x1a
      003948 F8               [12] 2586 	mov	r0,a
      003949 E6               [12] 2587 	mov	a,@r0
      00394A C0 E0            [24] 2588 	push	acc
      00394C 08               [12] 2589 	inc	r0
      00394D E6               [12] 2590 	mov	a,@r0
      00394E C0 E0            [24] 2591 	push	acc
      003950 08               [12] 2592 	inc	r0
      003951 E6               [12] 2593 	mov	a,@r0
      003952 C0 E0            [24] 2594 	push	acc
      003954 08               [12] 2595 	inc	r0
      003955 E6               [12] 2596 	mov	a,@r0
      003956 C0 E0            [24] 2597 	push	acc
      003958 8A 82            [24] 2598 	mov	dpl,r2
      00395A 8B 83            [24] 2599 	mov	dph,r3
      00395C 8C F0            [24] 2600 	mov	b,r4
      00395E 12 26 B5         [24] 2601 	lcall	_stack_push
      003961 E5 81            [12] 2602 	mov	a,sp
      003963 24 FC            [12] 2603 	add	a,#0xfc
      003965 F5 81            [12] 2604 	mov	sp,a
                                   2605 ;	calc.c:144: break;
      003967 02 4F 17         [24] 2606 	ljmp	00249$
                                   2607 ;	calc.c:145: case 'M':
      00396A                       2608 00134$:
                                   2609 ;	calc.c:146: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      00396A E5 08            [12] 2610 	mov	a,_bp
      00396C 24 1A            [12] 2611 	add	a,#0x1a
      00396E FF               [12] 2612 	mov	r7,a
      00396F 7E 00            [12] 2613 	mov	r6,#0x00
      003971 7D 40            [12] 2614 	mov	r5,#0x40
      003973 E5 08            [12] 2615 	mov	a,_bp
      003975 24 17            [12] 2616 	add	a,#0x17
      003977 F8               [12] 2617 	mov	r0,a
      003978 E5 08            [12] 2618 	mov	a,_bp
      00397A 24 08            [12] 2619 	add	a,#0x08
      00397C F9               [12] 2620 	mov	r1,a
      00397D 74 14            [12] 2621 	mov	a,#0x14
      00397F 26               [12] 2622 	add	a,@r0
      003980 F7               [12] 2623 	mov	@r1,a
      003981 74 40            [12] 2624 	mov	a,#0x40
      003983 08               [12] 2625 	inc	r0
      003984 36               [12] 2626 	addc	a,@r0
      003985 09               [12] 2627 	inc	r1
      003986 F7               [12] 2628 	mov	@r1,a
      003987 08               [12] 2629 	inc	r0
      003988 09               [12] 2630 	inc	r1
      003989 E6               [12] 2631 	mov	a,@r0
      00398A F7               [12] 2632 	mov	@r1,a
      00398B E5 08            [12] 2633 	mov	a,_bp
      00398D 24 08            [12] 2634 	add	a,#0x08
      00398F F8               [12] 2635 	mov	r0,a
      003990 86 82            [24] 2636 	mov	dpl,@r0
      003992 08               [12] 2637 	inc	r0
      003993 86 83            [24] 2638 	mov	dph,@r0
      003995 08               [12] 2639 	inc	r0
      003996 86 F0            [24] 2640 	mov	b,@r0
      003998 12 65 6C         [24] 2641 	lcall	__gptrget
      00399B FA               [12] 2642 	mov	r2,a
      00399C A3               [24] 2643 	inc	dptr
      00399D 12 65 6C         [24] 2644 	lcall	__gptrget
      0039A0 FB               [12] 2645 	mov	r3,a
      0039A1 A3               [24] 2646 	inc	dptr
      0039A2 12 65 6C         [24] 2647 	lcall	__gptrget
      0039A5 FC               [12] 2648 	mov	r4,a
      0039A6 C0 07            [24] 2649 	push	ar7
      0039A8 C0 06            [24] 2650 	push	ar6
      0039AA C0 05            [24] 2651 	push	ar5
      0039AC 8A 82            [24] 2652 	mov	dpl,r2
      0039AE 8B 83            [24] 2653 	mov	dph,r3
      0039B0 8C F0            [24] 2654 	mov	b,r4
      0039B2 12 27 83         [24] 2655 	lcall	_stack_pop
      0039B5 AB 82            [24] 2656 	mov	r3,dpl
      0039B7 AC 83            [24] 2657 	mov	r4,dph
      0039B9 15 81            [12] 2658 	dec	sp
      0039BB 15 81            [12] 2659 	dec	sp
      0039BD 15 81            [12] 2660 	dec	sp
      0039BF EB               [12] 2661 	mov	a,r3
      0039C0 4C               [12] 2662 	orl	a,r4
      0039C1 70 0C            [24] 2663 	jnz	00138$
      0039C3 90 7E 48         [24] 2664 	mov	dptr,#___str_10
      0039C6 75 F0 80         [24] 2665 	mov	b,#0x80
      0039C9 12 5E 27         [24] 2666 	lcall	_printstr
      0039CC 02 4F 17         [24] 2667 	ljmp	00249$
      0039CF                       2668 00138$:
                                   2669 ;	calc.c:148: if (!stack_push(ctx->ps, d0)) {
      0039CF E5 08            [12] 2670 	mov	a,_bp
      0039D1 24 17            [12] 2671 	add	a,#0x17
      0039D3 F8               [12] 2672 	mov	r0,a
      0039D4 74 11            [12] 2673 	mov	a,#0x11
      0039D6 26               [12] 2674 	add	a,@r0
      0039D7 FA               [12] 2675 	mov	r2,a
      0039D8 74 40            [12] 2676 	mov	a,#0x40
      0039DA 08               [12] 2677 	inc	r0
      0039DB 36               [12] 2678 	addc	a,@r0
      0039DC FB               [12] 2679 	mov	r3,a
      0039DD 08               [12] 2680 	inc	r0
      0039DE 86 04            [24] 2681 	mov	ar4,@r0
      0039E0 8A 82            [24] 2682 	mov	dpl,r2
      0039E2 8B 83            [24] 2683 	mov	dph,r3
      0039E4 8C F0            [24] 2684 	mov	b,r4
      0039E6 12 65 6C         [24] 2685 	lcall	__gptrget
      0039E9 FA               [12] 2686 	mov	r2,a
      0039EA A3               [24] 2687 	inc	dptr
      0039EB 12 65 6C         [24] 2688 	lcall	__gptrget
      0039EE FB               [12] 2689 	mov	r3,a
      0039EF A3               [24] 2690 	inc	dptr
      0039F0 12 65 6C         [24] 2691 	lcall	__gptrget
      0039F3 FC               [12] 2692 	mov	r4,a
      0039F4 E5 08            [12] 2693 	mov	a,_bp
      0039F6 24 1A            [12] 2694 	add	a,#0x1a
      0039F8 F8               [12] 2695 	mov	r0,a
      0039F9 E6               [12] 2696 	mov	a,@r0
      0039FA C0 E0            [24] 2697 	push	acc
      0039FC 08               [12] 2698 	inc	r0
      0039FD E6               [12] 2699 	mov	a,@r0
      0039FE C0 E0            [24] 2700 	push	acc
      003A00 08               [12] 2701 	inc	r0
      003A01 E6               [12] 2702 	mov	a,@r0
      003A02 C0 E0            [24] 2703 	push	acc
      003A04 08               [12] 2704 	inc	r0
      003A05 E6               [12] 2705 	mov	a,@r0
      003A06 C0 E0            [24] 2706 	push	acc
      003A08 8A 82            [24] 2707 	mov	dpl,r2
      003A0A 8B 83            [24] 2708 	mov	dph,r3
      003A0C 8C F0            [24] 2709 	mov	b,r4
      003A0E 12 26 B5         [24] 2710 	lcall	_stack_push
      003A11 AB 82            [24] 2711 	mov	r3,dpl
      003A13 AC 83            [24] 2712 	mov	r4,dph
      003A15 E5 81            [12] 2713 	mov	a,sp
      003A17 24 FC            [12] 2714 	add	a,#0xfc
      003A19 F5 81            [12] 2715 	mov	sp,a
      003A1B EB               [12] 2716 	mov	a,r3
      003A1C 4C               [12] 2717 	orl	a,r4
      003A1D 60 03            [24] 2718 	jz	00562$
      003A1F 02 4F 17         [24] 2719 	ljmp	00249$
      003A22                       2720 00562$:
                                   2721 ;	calc.c:149: printstr("\r\nstack overflow\r\n");
      003A22 90 7E 83         [24] 2722 	mov	dptr,#___str_12
      003A25 75 F0 80         [24] 2723 	mov	b,#0x80
      003A28 12 5E 27         [24] 2724 	lcall	_printstr
                                   2725 ;	calc.c:150: (void)stack_push(ctx->ss, d0);
      003A2B E5 08            [12] 2726 	mov	a,_bp
      003A2D 24 08            [12] 2727 	add	a,#0x08
      003A2F F8               [12] 2728 	mov	r0,a
      003A30 86 82            [24] 2729 	mov	dpl,@r0
      003A32 08               [12] 2730 	inc	r0
      003A33 86 83            [24] 2731 	mov	dph,@r0
      003A35 08               [12] 2732 	inc	r0
      003A36 86 F0            [24] 2733 	mov	b,@r0
      003A38 12 65 6C         [24] 2734 	lcall	__gptrget
      003A3B FA               [12] 2735 	mov	r2,a
      003A3C A3               [24] 2736 	inc	dptr
      003A3D 12 65 6C         [24] 2737 	lcall	__gptrget
      003A40 FB               [12] 2738 	mov	r3,a
      003A41 A3               [24] 2739 	inc	dptr
      003A42 12 65 6C         [24] 2740 	lcall	__gptrget
      003A45 FC               [12] 2741 	mov	r4,a
      003A46 E5 08            [12] 2742 	mov	a,_bp
      003A48 24 1A            [12] 2743 	add	a,#0x1a
      003A4A F8               [12] 2744 	mov	r0,a
      003A4B E6               [12] 2745 	mov	a,@r0
      003A4C C0 E0            [24] 2746 	push	acc
      003A4E 08               [12] 2747 	inc	r0
      003A4F E6               [12] 2748 	mov	a,@r0
      003A50 C0 E0            [24] 2749 	push	acc
      003A52 08               [12] 2750 	inc	r0
      003A53 E6               [12] 2751 	mov	a,@r0
      003A54 C0 E0            [24] 2752 	push	acc
      003A56 08               [12] 2753 	inc	r0
      003A57 E6               [12] 2754 	mov	a,@r0
      003A58 C0 E0            [24] 2755 	push	acc
      003A5A 8A 82            [24] 2756 	mov	dpl,r2
      003A5C 8B 83            [24] 2757 	mov	dph,r3
      003A5E 8C F0            [24] 2758 	mov	b,r4
      003A60 12 26 B5         [24] 2759 	lcall	_stack_push
      003A63 E5 81            [12] 2760 	mov	a,sp
      003A65 24 FC            [12] 2761 	add	a,#0xfc
      003A67 F5 81            [12] 2762 	mov	sp,a
                                   2763 ;	calc.c:153: break;
      003A69 02 4F 17         [24] 2764 	ljmp	00249$
                                   2765 ;	calc.c:154: case 'u':
      003A6C                       2766 00140$:
                                   2767 ;	calc.c:155: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A6C E5 08            [12] 2768 	mov	a,_bp
      003A6E 24 1A            [12] 2769 	add	a,#0x1a
      003A70 FF               [12] 2770 	mov	r7,a
      003A71 7E 00            [12] 2771 	mov	r6,#0x00
      003A73 7D 40            [12] 2772 	mov	r5,#0x40
      003A75 E5 08            [12] 2773 	mov	a,_bp
      003A77 24 17            [12] 2774 	add	a,#0x17
      003A79 F8               [12] 2775 	mov	r0,a
      003A7A 74 11            [12] 2776 	mov	a,#0x11
      003A7C 26               [12] 2777 	add	a,@r0
      003A7D FA               [12] 2778 	mov	r2,a
      003A7E ED               [12] 2779 	mov	a,r5
      003A7F 08               [12] 2780 	inc	r0
      003A80 36               [12] 2781 	addc	a,@r0
      003A81 FB               [12] 2782 	mov	r3,a
      003A82 08               [12] 2783 	inc	r0
      003A83 86 04            [24] 2784 	mov	ar4,@r0
      003A85 8A 82            [24] 2785 	mov	dpl,r2
      003A87 8B 83            [24] 2786 	mov	dph,r3
      003A89 8C F0            [24] 2787 	mov	b,r4
      003A8B 12 65 6C         [24] 2788 	lcall	__gptrget
      003A8E FA               [12] 2789 	mov	r2,a
      003A8F A3               [24] 2790 	inc	dptr
      003A90 12 65 6C         [24] 2791 	lcall	__gptrget
      003A93 FB               [12] 2792 	mov	r3,a
      003A94 A3               [24] 2793 	inc	dptr
      003A95 12 65 6C         [24] 2794 	lcall	__gptrget
      003A98 FC               [12] 2795 	mov	r4,a
      003A99 C0 07            [24] 2796 	push	ar7
      003A9B C0 06            [24] 2797 	push	ar6
      003A9D C0 05            [24] 2798 	push	ar5
      003A9F 8A 82            [24] 2799 	mov	dpl,r2
      003AA1 8B 83            [24] 2800 	mov	dph,r3
      003AA3 8C F0            [24] 2801 	mov	b,r4
      003AA5 12 28 5E         [24] 2802 	lcall	_stack_peek
      003AA8 AB 82            [24] 2803 	mov	r3,dpl
      003AAA AC 83            [24] 2804 	mov	r4,dph
      003AAC 15 81            [12] 2805 	dec	sp
      003AAE 15 81            [12] 2806 	dec	sp
      003AB0 15 81            [12] 2807 	dec	sp
      003AB2 EB               [12] 2808 	mov	a,r3
      003AB3 4C               [12] 2809 	orl	a,r4
      003AB4 70 0C            [24] 2810 	jnz	00144$
      003AB6 90 7E 34         [24] 2811 	mov	dptr,#___str_9
      003AB9 75 F0 80         [24] 2812 	mov	b,#0x80
      003ABC 12 5E 27         [24] 2813 	lcall	_printstr
      003ABF 02 4F 17         [24] 2814 	ljmp	00249$
      003AC2                       2815 00144$:
                                   2816 ;	calc.c:156: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      003AC2 E5 08            [12] 2817 	mov	a,_bp
      003AC4 24 17            [12] 2818 	add	a,#0x17
      003AC6 F8               [12] 2819 	mov	r0,a
      003AC7 74 14            [12] 2820 	mov	a,#0x14
      003AC9 26               [12] 2821 	add	a,@r0
      003ACA FA               [12] 2822 	mov	r2,a
      003ACB 74 40            [12] 2823 	mov	a,#0x40
      003ACD 08               [12] 2824 	inc	r0
      003ACE 36               [12] 2825 	addc	a,@r0
      003ACF FB               [12] 2826 	mov	r3,a
      003AD0 08               [12] 2827 	inc	r0
      003AD1 86 04            [24] 2828 	mov	ar4,@r0
      003AD3 8A 82            [24] 2829 	mov	dpl,r2
      003AD5 8B 83            [24] 2830 	mov	dph,r3
      003AD7 8C F0            [24] 2831 	mov	b,r4
      003AD9 12 65 6C         [24] 2832 	lcall	__gptrget
      003ADC FA               [12] 2833 	mov	r2,a
      003ADD A3               [24] 2834 	inc	dptr
      003ADE 12 65 6C         [24] 2835 	lcall	__gptrget
      003AE1 FB               [12] 2836 	mov	r3,a
      003AE2 A3               [24] 2837 	inc	dptr
      003AE3 12 65 6C         [24] 2838 	lcall	__gptrget
      003AE6 FC               [12] 2839 	mov	r4,a
      003AE7 E5 08            [12] 2840 	mov	a,_bp
      003AE9 24 1A            [12] 2841 	add	a,#0x1a
      003AEB F8               [12] 2842 	mov	r0,a
      003AEC E6               [12] 2843 	mov	a,@r0
      003AED C0 E0            [24] 2844 	push	acc
      003AEF 08               [12] 2845 	inc	r0
      003AF0 E6               [12] 2846 	mov	a,@r0
      003AF1 C0 E0            [24] 2847 	push	acc
      003AF3 08               [12] 2848 	inc	r0
      003AF4 E6               [12] 2849 	mov	a,@r0
      003AF5 C0 E0            [24] 2850 	push	acc
      003AF7 08               [12] 2851 	inc	r0
      003AF8 E6               [12] 2852 	mov	a,@r0
      003AF9 C0 E0            [24] 2853 	push	acc
      003AFB 8A 82            [24] 2854 	mov	dpl,r2
      003AFD 8B 83            [24] 2855 	mov	dph,r3
      003AFF 8C F0            [24] 2856 	mov	b,r4
      003B01 12 26 B5         [24] 2857 	lcall	_stack_push
      003B04 AB 82            [24] 2858 	mov	r3,dpl
      003B06 AC 83            [24] 2859 	mov	r4,dph
      003B08 E5 81            [12] 2860 	mov	a,sp
      003B0A 24 FC            [12] 2861 	add	a,#0xfc
      003B0C F5 81            [12] 2862 	mov	sp,a
      003B0E EB               [12] 2863 	mov	a,r3
      003B0F 4C               [12] 2864 	orl	a,r4
      003B10 60 03            [24] 2865 	jz	00564$
      003B12 02 4F 17         [24] 2866 	ljmp	00249$
      003B15                       2867 00564$:
      003B15 90 7E 66         [24] 2868 	mov	dptr,#___str_11
      003B18 75 F0 80         [24] 2869 	mov	b,#0x80
      003B1B 12 5E 27         [24] 2870 	lcall	_printstr
                                   2871 ;	calc.c:157: break;
      003B1E 02 4F 17         [24] 2872 	ljmp	00249$
                                   2873 ;	calc.c:158: case 'U':
      003B21                       2874 00146$:
                                   2875 ;	calc.c:159: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      003B21 E5 08            [12] 2876 	mov	a,_bp
      003B23 24 1A            [12] 2877 	add	a,#0x1a
      003B25 FF               [12] 2878 	mov	r7,a
      003B26 7E 00            [12] 2879 	mov	r6,#0x00
      003B28 7D 40            [12] 2880 	mov	r5,#0x40
      003B2A E5 08            [12] 2881 	mov	a,_bp
      003B2C 24 17            [12] 2882 	add	a,#0x17
      003B2E F8               [12] 2883 	mov	r0,a
      003B2F 74 14            [12] 2884 	mov	a,#0x14
      003B31 26               [12] 2885 	add	a,@r0
      003B32 FA               [12] 2886 	mov	r2,a
      003B33 ED               [12] 2887 	mov	a,r5
      003B34 08               [12] 2888 	inc	r0
      003B35 36               [12] 2889 	addc	a,@r0
      003B36 FB               [12] 2890 	mov	r3,a
      003B37 08               [12] 2891 	inc	r0
      003B38 86 04            [24] 2892 	mov	ar4,@r0
      003B3A 8A 82            [24] 2893 	mov	dpl,r2
      003B3C 8B 83            [24] 2894 	mov	dph,r3
      003B3E 8C F0            [24] 2895 	mov	b,r4
      003B40 12 65 6C         [24] 2896 	lcall	__gptrget
      003B43 FA               [12] 2897 	mov	r2,a
      003B44 A3               [24] 2898 	inc	dptr
      003B45 12 65 6C         [24] 2899 	lcall	__gptrget
      003B48 FB               [12] 2900 	mov	r3,a
      003B49 A3               [24] 2901 	inc	dptr
      003B4A 12 65 6C         [24] 2902 	lcall	__gptrget
      003B4D FC               [12] 2903 	mov	r4,a
      003B4E C0 07            [24] 2904 	push	ar7
      003B50 C0 06            [24] 2905 	push	ar6
      003B52 C0 05            [24] 2906 	push	ar5
      003B54 8A 82            [24] 2907 	mov	dpl,r2
      003B56 8B 83            [24] 2908 	mov	dph,r3
      003B58 8C F0            [24] 2909 	mov	b,r4
      003B5A 12 28 5E         [24] 2910 	lcall	_stack_peek
      003B5D AB 82            [24] 2911 	mov	r3,dpl
      003B5F AC 83            [24] 2912 	mov	r4,dph
      003B61 15 81            [12] 2913 	dec	sp
      003B63 15 81            [12] 2914 	dec	sp
      003B65 15 81            [12] 2915 	dec	sp
      003B67 EB               [12] 2916 	mov	a,r3
      003B68 4C               [12] 2917 	orl	a,r4
      003B69 70 0C            [24] 2918 	jnz	00150$
      003B6B 90 7E 48         [24] 2919 	mov	dptr,#___str_10
      003B6E 75 F0 80         [24] 2920 	mov	b,#0x80
      003B71 12 5E 27         [24] 2921 	lcall	_printstr
      003B74 02 4F 17         [24] 2922 	ljmp	00249$
      003B77                       2923 00150$:
                                   2924 ;	calc.c:160: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      003B77 E5 08            [12] 2925 	mov	a,_bp
      003B79 24 17            [12] 2926 	add	a,#0x17
      003B7B F8               [12] 2927 	mov	r0,a
      003B7C 74 11            [12] 2928 	mov	a,#0x11
      003B7E 26               [12] 2929 	add	a,@r0
      003B7F FA               [12] 2930 	mov	r2,a
      003B80 74 40            [12] 2931 	mov	a,#0x40
      003B82 08               [12] 2932 	inc	r0
      003B83 36               [12] 2933 	addc	a,@r0
      003B84 FB               [12] 2934 	mov	r3,a
      003B85 08               [12] 2935 	inc	r0
      003B86 86 04            [24] 2936 	mov	ar4,@r0
      003B88 8A 82            [24] 2937 	mov	dpl,r2
      003B8A 8B 83            [24] 2938 	mov	dph,r3
      003B8C 8C F0            [24] 2939 	mov	b,r4
      003B8E 12 65 6C         [24] 2940 	lcall	__gptrget
      003B91 FA               [12] 2941 	mov	r2,a
      003B92 A3               [24] 2942 	inc	dptr
      003B93 12 65 6C         [24] 2943 	lcall	__gptrget
      003B96 FB               [12] 2944 	mov	r3,a
      003B97 A3               [24] 2945 	inc	dptr
      003B98 12 65 6C         [24] 2946 	lcall	__gptrget
      003B9B FC               [12] 2947 	mov	r4,a
      003B9C E5 08            [12] 2948 	mov	a,_bp
      003B9E 24 1A            [12] 2949 	add	a,#0x1a
      003BA0 F8               [12] 2950 	mov	r0,a
      003BA1 E6               [12] 2951 	mov	a,@r0
      003BA2 C0 E0            [24] 2952 	push	acc
      003BA4 08               [12] 2953 	inc	r0
      003BA5 E6               [12] 2954 	mov	a,@r0
      003BA6 C0 E0            [24] 2955 	push	acc
      003BA8 08               [12] 2956 	inc	r0
      003BA9 E6               [12] 2957 	mov	a,@r0
      003BAA C0 E0            [24] 2958 	push	acc
      003BAC 08               [12] 2959 	inc	r0
      003BAD E6               [12] 2960 	mov	a,@r0
      003BAE C0 E0            [24] 2961 	push	acc
      003BB0 8A 82            [24] 2962 	mov	dpl,r2
      003BB2 8B 83            [24] 2963 	mov	dph,r3
      003BB4 8C F0            [24] 2964 	mov	b,r4
      003BB6 12 26 B5         [24] 2965 	lcall	_stack_push
      003BB9 AB 82            [24] 2966 	mov	r3,dpl
      003BBB AC 83            [24] 2967 	mov	r4,dph
      003BBD E5 81            [12] 2968 	mov	a,sp
      003BBF 24 FC            [12] 2969 	add	a,#0xfc
      003BC1 F5 81            [12] 2970 	mov	sp,a
      003BC3 EB               [12] 2971 	mov	a,r3
      003BC4 4C               [12] 2972 	orl	a,r4
      003BC5 60 03            [24] 2973 	jz	00566$
      003BC7 02 4F 17         [24] 2974 	ljmp	00249$
      003BCA                       2975 00566$:
      003BCA 90 7E 83         [24] 2976 	mov	dptr,#___str_12
      003BCD 75 F0 80         [24] 2977 	mov	b,#0x80
      003BD0 12 5E 27         [24] 2978 	lcall	_printstr
                                   2979 ;	calc.c:161: break;
      003BD3 02 4F 17         [24] 2980 	ljmp	00249$
                                   2981 ;	calc.c:162: case 'S':
      003BD6                       2982 00152$:
                                   2983 ;	calc.c:163: t0 = ctx->ps;
      003BD6 E5 08            [12] 2984 	mov	a,_bp
      003BD8 24 17            [12] 2985 	add	a,#0x17
      003BDA F8               [12] 2986 	mov	r0,a
      003BDB E5 08            [12] 2987 	mov	a,_bp
      003BDD 24 08            [12] 2988 	add	a,#0x08
      003BDF F9               [12] 2989 	mov	r1,a
      003BE0 74 11            [12] 2990 	mov	a,#0x11
      003BE2 26               [12] 2991 	add	a,@r0
      003BE3 F7               [12] 2992 	mov	@r1,a
      003BE4 74 40            [12] 2993 	mov	a,#0x40
      003BE6 08               [12] 2994 	inc	r0
      003BE7 36               [12] 2995 	addc	a,@r0
      003BE8 09               [12] 2996 	inc	r1
      003BE9 F7               [12] 2997 	mov	@r1,a
      003BEA 08               [12] 2998 	inc	r0
      003BEB 09               [12] 2999 	inc	r1
      003BEC E6               [12] 3000 	mov	a,@r0
      003BED F7               [12] 3001 	mov	@r1,a
      003BEE E5 08            [12] 3002 	mov	a,_bp
      003BF0 24 08            [12] 3003 	add	a,#0x08
      003BF2 F8               [12] 3004 	mov	r0,a
      003BF3 86 82            [24] 3005 	mov	dpl,@r0
      003BF5 08               [12] 3006 	inc	r0
      003BF6 86 83            [24] 3007 	mov	dph,@r0
      003BF8 08               [12] 3008 	inc	r0
      003BF9 86 F0            [24] 3009 	mov	b,@r0
      003BFB 12 65 6C         [24] 3010 	lcall	__gptrget
      003BFE FF               [12] 3011 	mov	r7,a
      003BFF A3               [24] 3012 	inc	dptr
      003C00 12 65 6C         [24] 3013 	lcall	__gptrget
      003C03 FE               [12] 3014 	mov	r6,a
      003C04 A3               [24] 3015 	inc	dptr
      003C05 12 65 6C         [24] 3016 	lcall	__gptrget
      003C08 FD               [12] 3017 	mov	r5,a
                                   3018 ;	calc.c:164: ctx->ps = ctx->ss;
      003C09 E5 08            [12] 3019 	mov	a,_bp
      003C0B 24 17            [12] 3020 	add	a,#0x17
      003C0D F8               [12] 3021 	mov	r0,a
      003C0E E5 08            [12] 3022 	mov	a,_bp
      003C10 24 05            [12] 3023 	add	a,#0x05
      003C12 F9               [12] 3024 	mov	r1,a
      003C13 74 14            [12] 3025 	mov	a,#0x14
      003C15 26               [12] 3026 	add	a,@r0
      003C16 F7               [12] 3027 	mov	@r1,a
      003C17 74 40            [12] 3028 	mov	a,#0x40
      003C19 08               [12] 3029 	inc	r0
      003C1A 36               [12] 3030 	addc	a,@r0
      003C1B 09               [12] 3031 	inc	r1
      003C1C F7               [12] 3032 	mov	@r1,a
      003C1D 08               [12] 3033 	inc	r0
      003C1E 09               [12] 3034 	inc	r1
      003C1F E6               [12] 3035 	mov	a,@r0
      003C20 F7               [12] 3036 	mov	@r1,a
      003C21 E5 08            [12] 3037 	mov	a,_bp
      003C23 24 05            [12] 3038 	add	a,#0x05
      003C25 F8               [12] 3039 	mov	r0,a
      003C26 86 82            [24] 3040 	mov	dpl,@r0
      003C28 08               [12] 3041 	inc	r0
      003C29 86 83            [24] 3042 	mov	dph,@r0
      003C2B 08               [12] 3043 	inc	r0
      003C2C 86 F0            [24] 3044 	mov	b,@r0
      003C2E 12 65 6C         [24] 3045 	lcall	__gptrget
      003C31 FA               [12] 3046 	mov	r2,a
      003C32 A3               [24] 3047 	inc	dptr
      003C33 12 65 6C         [24] 3048 	lcall	__gptrget
      003C36 FB               [12] 3049 	mov	r3,a
      003C37 A3               [24] 3050 	inc	dptr
      003C38 12 65 6C         [24] 3051 	lcall	__gptrget
      003C3B FC               [12] 3052 	mov	r4,a
      003C3C E5 08            [12] 3053 	mov	a,_bp
      003C3E 24 08            [12] 3054 	add	a,#0x08
      003C40 F8               [12] 3055 	mov	r0,a
      003C41 86 82            [24] 3056 	mov	dpl,@r0
      003C43 08               [12] 3057 	inc	r0
      003C44 86 83            [24] 3058 	mov	dph,@r0
      003C46 08               [12] 3059 	inc	r0
      003C47 86 F0            [24] 3060 	mov	b,@r0
      003C49 EA               [12] 3061 	mov	a,r2
      003C4A 12 5D DB         [24] 3062 	lcall	__gptrput
      003C4D A3               [24] 3063 	inc	dptr
      003C4E EB               [12] 3064 	mov	a,r3
      003C4F 12 5D DB         [24] 3065 	lcall	__gptrput
      003C52 A3               [24] 3066 	inc	dptr
      003C53 EC               [12] 3067 	mov	a,r4
      003C54 12 5D DB         [24] 3068 	lcall	__gptrput
                                   3069 ;	calc.c:165: ctx->ss = t0;
      003C57 E5 08            [12] 3070 	mov	a,_bp
      003C59 24 05            [12] 3071 	add	a,#0x05
      003C5B F8               [12] 3072 	mov	r0,a
      003C5C 86 82            [24] 3073 	mov	dpl,@r0
      003C5E 08               [12] 3074 	inc	r0
      003C5F 86 83            [24] 3075 	mov	dph,@r0
      003C61 08               [12] 3076 	inc	r0
      003C62 86 F0            [24] 3077 	mov	b,@r0
      003C64 EF               [12] 3078 	mov	a,r7
      003C65 12 5D DB         [24] 3079 	lcall	__gptrput
      003C68 A3               [24] 3080 	inc	dptr
      003C69 EE               [12] 3081 	mov	a,r6
      003C6A 12 5D DB         [24] 3082 	lcall	__gptrput
      003C6D A3               [24] 3083 	inc	dptr
      003C6E ED               [12] 3084 	mov	a,r5
      003C6F 12 5D DB         [24] 3085 	lcall	__gptrput
                                   3086 ;	calc.c:166: break;
      003C72 02 4F 17         [24] 3087 	ljmp	00249$
                                   3088 ;	calc.c:167: case '+':
      003C75                       3089 00153$:
                                   3090 ;	calc.c:168: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003C75 E5 08            [12] 3091 	mov	a,_bp
      003C77 24 1A            [12] 3092 	add	a,#0x1a
      003C79 FF               [12] 3093 	mov	r7,a
      003C7A 7E 00            [12] 3094 	mov	r6,#0x00
      003C7C 7D 40            [12] 3095 	mov	r5,#0x40
      003C7E E5 08            [12] 3096 	mov	a,_bp
      003C80 24 17            [12] 3097 	add	a,#0x17
      003C82 F8               [12] 3098 	mov	r0,a
      003C83 E5 08            [12] 3099 	mov	a,_bp
      003C85 24 08            [12] 3100 	add	a,#0x08
      003C87 F9               [12] 3101 	mov	r1,a
      003C88 74 11            [12] 3102 	mov	a,#0x11
      003C8A 26               [12] 3103 	add	a,@r0
      003C8B F7               [12] 3104 	mov	@r1,a
      003C8C 74 40            [12] 3105 	mov	a,#0x40
      003C8E 08               [12] 3106 	inc	r0
      003C8F 36               [12] 3107 	addc	a,@r0
      003C90 09               [12] 3108 	inc	r1
      003C91 F7               [12] 3109 	mov	@r1,a
      003C92 08               [12] 3110 	inc	r0
      003C93 09               [12] 3111 	inc	r1
      003C94 E6               [12] 3112 	mov	a,@r0
      003C95 F7               [12] 3113 	mov	@r1,a
      003C96 E5 08            [12] 3114 	mov	a,_bp
      003C98 24 08            [12] 3115 	add	a,#0x08
      003C9A F8               [12] 3116 	mov	r0,a
      003C9B 86 82            [24] 3117 	mov	dpl,@r0
      003C9D 08               [12] 3118 	inc	r0
      003C9E 86 83            [24] 3119 	mov	dph,@r0
      003CA0 08               [12] 3120 	inc	r0
      003CA1 86 F0            [24] 3121 	mov	b,@r0
      003CA3 12 65 6C         [24] 3122 	lcall	__gptrget
      003CA6 FA               [12] 3123 	mov	r2,a
      003CA7 A3               [24] 3124 	inc	dptr
      003CA8 12 65 6C         [24] 3125 	lcall	__gptrget
      003CAB FB               [12] 3126 	mov	r3,a
      003CAC A3               [24] 3127 	inc	dptr
      003CAD 12 65 6C         [24] 3128 	lcall	__gptrget
      003CB0 FC               [12] 3129 	mov	r4,a
      003CB1 C0 07            [24] 3130 	push	ar7
      003CB3 C0 06            [24] 3131 	push	ar6
      003CB5 C0 05            [24] 3132 	push	ar5
      003CB7 8A 82            [24] 3133 	mov	dpl,r2
      003CB9 8B 83            [24] 3134 	mov	dph,r3
      003CBB 8C F0            [24] 3135 	mov	b,r4
      003CBD 12 27 83         [24] 3136 	lcall	_stack_pop
      003CC0 AB 82            [24] 3137 	mov	r3,dpl
      003CC2 AC 83            [24] 3138 	mov	r4,dph
      003CC4 15 81            [12] 3139 	dec	sp
      003CC6 15 81            [12] 3140 	dec	sp
      003CC8 15 81            [12] 3141 	dec	sp
      003CCA EB               [12] 3142 	mov	a,r3
      003CCB 4C               [12] 3143 	orl	a,r4
      003CCC 70 0C            [24] 3144 	jnz	00158$
      003CCE 90 7E 34         [24] 3145 	mov	dptr,#___str_9
      003CD1 75 F0 80         [24] 3146 	mov	b,#0x80
      003CD4 12 5E 27         [24] 3147 	lcall	_printstr
      003CD7 02 4F 17         [24] 3148 	ljmp	00249$
      003CDA                       3149 00158$:
                                   3150 ;	calc.c:169: else if (!stack_pop(ctx->ps, &d1)) {
      003CDA E5 08            [12] 3151 	mov	a,_bp
      003CDC 24 1E            [12] 3152 	add	a,#0x1e
      003CDE FF               [12] 3153 	mov	r7,a
      003CDF 7E 00            [12] 3154 	mov	r6,#0x00
      003CE1 7D 40            [12] 3155 	mov	r5,#0x40
      003CE3 E5 08            [12] 3156 	mov	a,_bp
      003CE5 24 08            [12] 3157 	add	a,#0x08
      003CE7 F8               [12] 3158 	mov	r0,a
      003CE8 86 82            [24] 3159 	mov	dpl,@r0
      003CEA 08               [12] 3160 	inc	r0
      003CEB 86 83            [24] 3161 	mov	dph,@r0
      003CED 08               [12] 3162 	inc	r0
      003CEE 86 F0            [24] 3163 	mov	b,@r0
      003CF0 12 65 6C         [24] 3164 	lcall	__gptrget
      003CF3 FA               [12] 3165 	mov	r2,a
      003CF4 A3               [24] 3166 	inc	dptr
      003CF5 12 65 6C         [24] 3167 	lcall	__gptrget
      003CF8 FB               [12] 3168 	mov	r3,a
      003CF9 A3               [24] 3169 	inc	dptr
      003CFA 12 65 6C         [24] 3170 	lcall	__gptrget
      003CFD FC               [12] 3171 	mov	r4,a
      003CFE C0 07            [24] 3172 	push	ar7
      003D00 C0 06            [24] 3173 	push	ar6
      003D02 C0 05            [24] 3174 	push	ar5
      003D04 8A 82            [24] 3175 	mov	dpl,r2
      003D06 8B 83            [24] 3176 	mov	dph,r3
      003D08 8C F0            [24] 3177 	mov	b,r4
      003D0A 12 27 83         [24] 3178 	lcall	_stack_pop
      003D0D AB 82            [24] 3179 	mov	r3,dpl
      003D0F AC 83            [24] 3180 	mov	r4,dph
      003D11 15 81            [12] 3181 	dec	sp
      003D13 15 81            [12] 3182 	dec	sp
      003D15 15 81            [12] 3183 	dec	sp
      003D17 EB               [12] 3184 	mov	a,r3
      003D18 4C               [12] 3185 	orl	a,r4
      003D19 70 4A            [24] 3186 	jnz	00155$
                                   3187 ;	calc.c:170: (void)stack_push(ctx->ps, d0);
      003D1B E5 08            [12] 3188 	mov	a,_bp
      003D1D 24 08            [12] 3189 	add	a,#0x08
      003D1F F8               [12] 3190 	mov	r0,a
      003D20 86 82            [24] 3191 	mov	dpl,@r0
      003D22 08               [12] 3192 	inc	r0
      003D23 86 83            [24] 3193 	mov	dph,@r0
      003D25 08               [12] 3194 	inc	r0
      003D26 86 F0            [24] 3195 	mov	b,@r0
      003D28 12 65 6C         [24] 3196 	lcall	__gptrget
      003D2B FA               [12] 3197 	mov	r2,a
      003D2C A3               [24] 3198 	inc	dptr
      003D2D 12 65 6C         [24] 3199 	lcall	__gptrget
      003D30 FB               [12] 3200 	mov	r3,a
      003D31 A3               [24] 3201 	inc	dptr
      003D32 12 65 6C         [24] 3202 	lcall	__gptrget
      003D35 FC               [12] 3203 	mov	r4,a
      003D36 E5 08            [12] 3204 	mov	a,_bp
      003D38 24 1A            [12] 3205 	add	a,#0x1a
      003D3A F8               [12] 3206 	mov	r0,a
      003D3B E6               [12] 3207 	mov	a,@r0
      003D3C C0 E0            [24] 3208 	push	acc
      003D3E 08               [12] 3209 	inc	r0
      003D3F E6               [12] 3210 	mov	a,@r0
      003D40 C0 E0            [24] 3211 	push	acc
      003D42 08               [12] 3212 	inc	r0
      003D43 E6               [12] 3213 	mov	a,@r0
      003D44 C0 E0            [24] 3214 	push	acc
      003D46 08               [12] 3215 	inc	r0
      003D47 E6               [12] 3216 	mov	a,@r0
      003D48 C0 E0            [24] 3217 	push	acc
      003D4A 8A 82            [24] 3218 	mov	dpl,r2
      003D4C 8B 83            [24] 3219 	mov	dph,r3
      003D4E 8C F0            [24] 3220 	mov	b,r4
      003D50 12 26 B5         [24] 3221 	lcall	_stack_push
      003D53 E5 81            [12] 3222 	mov	a,sp
      003D55 24 FC            [12] 3223 	add	a,#0xfc
      003D57 F5 81            [12] 3224 	mov	sp,a
                                   3225 ;	calc.c:171: printstr("\r\nstack underflow\r\n");
      003D59 90 7E 34         [24] 3226 	mov	dptr,#___str_9
      003D5C 75 F0 80         [24] 3227 	mov	b,#0x80
      003D5F 12 5E 27         [24] 3228 	lcall	_printstr
      003D62 02 4F 17         [24] 3229 	ljmp	00249$
      003D65                       3230 00155$:
                                   3231 ;	calc.c:173: d1 += d0;
      003D65 E5 08            [12] 3232 	mov	a,_bp
      003D67 24 1E            [12] 3233 	add	a,#0x1e
      003D69 F8               [12] 3234 	mov	r0,a
      003D6A E5 08            [12] 3235 	mov	a,_bp
      003D6C 24 1A            [12] 3236 	add	a,#0x1a
      003D6E F9               [12] 3237 	mov	r1,a
      003D6F E7               [12] 3238 	mov	a,@r1
      003D70 26               [12] 3239 	add	a,@r0
      003D71 F6               [12] 3240 	mov	@r0,a
      003D72 09               [12] 3241 	inc	r1
      003D73 E7               [12] 3242 	mov	a,@r1
      003D74 08               [12] 3243 	inc	r0
      003D75 36               [12] 3244 	addc	a,@r0
      003D76 F6               [12] 3245 	mov	@r0,a
      003D77 09               [12] 3246 	inc	r1
      003D78 E7               [12] 3247 	mov	a,@r1
      003D79 08               [12] 3248 	inc	r0
      003D7A 36               [12] 3249 	addc	a,@r0
      003D7B F6               [12] 3250 	mov	@r0,a
      003D7C 09               [12] 3251 	inc	r1
      003D7D E7               [12] 3252 	mov	a,@r1
      003D7E 08               [12] 3253 	inc	r0
      003D7F 36               [12] 3254 	addc	a,@r0
      003D80 F6               [12] 3255 	mov	@r0,a
                                   3256 ;	calc.c:174: (void)stack_push(ctx->ps, d1);
      003D81 E5 08            [12] 3257 	mov	a,_bp
      003D83 24 08            [12] 3258 	add	a,#0x08
      003D85 F8               [12] 3259 	mov	r0,a
      003D86 86 82            [24] 3260 	mov	dpl,@r0
      003D88 08               [12] 3261 	inc	r0
      003D89 86 83            [24] 3262 	mov	dph,@r0
      003D8B 08               [12] 3263 	inc	r0
      003D8C 86 F0            [24] 3264 	mov	b,@r0
      003D8E 12 65 6C         [24] 3265 	lcall	__gptrget
      003D91 FA               [12] 3266 	mov	r2,a
      003D92 A3               [24] 3267 	inc	dptr
      003D93 12 65 6C         [24] 3268 	lcall	__gptrget
      003D96 FB               [12] 3269 	mov	r3,a
      003D97 A3               [24] 3270 	inc	dptr
      003D98 12 65 6C         [24] 3271 	lcall	__gptrget
      003D9B FC               [12] 3272 	mov	r4,a
      003D9C E5 08            [12] 3273 	mov	a,_bp
      003D9E 24 1E            [12] 3274 	add	a,#0x1e
      003DA0 F8               [12] 3275 	mov	r0,a
      003DA1 E6               [12] 3276 	mov	a,@r0
      003DA2 C0 E0            [24] 3277 	push	acc
      003DA4 08               [12] 3278 	inc	r0
      003DA5 E6               [12] 3279 	mov	a,@r0
      003DA6 C0 E0            [24] 3280 	push	acc
      003DA8 08               [12] 3281 	inc	r0
      003DA9 E6               [12] 3282 	mov	a,@r0
      003DAA C0 E0            [24] 3283 	push	acc
      003DAC 08               [12] 3284 	inc	r0
      003DAD E6               [12] 3285 	mov	a,@r0
      003DAE C0 E0            [24] 3286 	push	acc
      003DB0 8A 82            [24] 3287 	mov	dpl,r2
      003DB2 8B 83            [24] 3288 	mov	dph,r3
      003DB4 8C F0            [24] 3289 	mov	b,r4
      003DB6 12 26 B5         [24] 3290 	lcall	_stack_push
      003DB9 E5 81            [12] 3291 	mov	a,sp
      003DBB 24 FC            [12] 3292 	add	a,#0xfc
      003DBD F5 81            [12] 3293 	mov	sp,a
                                   3294 ;	calc.c:176: break;
      003DBF 02 4F 17         [24] 3295 	ljmp	00249$
                                   3296 ;	calc.c:177: case '-':
      003DC2                       3297 00160$:
                                   3298 ;	calc.c:178: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003DC2 E5 08            [12] 3299 	mov	a,_bp
      003DC4 24 1A            [12] 3300 	add	a,#0x1a
      003DC6 FF               [12] 3301 	mov	r7,a
      003DC7 7E 00            [12] 3302 	mov	r6,#0x00
      003DC9 7D 40            [12] 3303 	mov	r5,#0x40
      003DCB E5 08            [12] 3304 	mov	a,_bp
      003DCD 24 17            [12] 3305 	add	a,#0x17
      003DCF F8               [12] 3306 	mov	r0,a
      003DD0 E5 08            [12] 3307 	mov	a,_bp
      003DD2 24 08            [12] 3308 	add	a,#0x08
      003DD4 F9               [12] 3309 	mov	r1,a
      003DD5 74 11            [12] 3310 	mov	a,#0x11
      003DD7 26               [12] 3311 	add	a,@r0
      003DD8 F7               [12] 3312 	mov	@r1,a
      003DD9 74 40            [12] 3313 	mov	a,#0x40
      003DDB 08               [12] 3314 	inc	r0
      003DDC 36               [12] 3315 	addc	a,@r0
      003DDD 09               [12] 3316 	inc	r1
      003DDE F7               [12] 3317 	mov	@r1,a
      003DDF 08               [12] 3318 	inc	r0
      003DE0 09               [12] 3319 	inc	r1
      003DE1 E6               [12] 3320 	mov	a,@r0
      003DE2 F7               [12] 3321 	mov	@r1,a
      003DE3 E5 08            [12] 3322 	mov	a,_bp
      003DE5 24 08            [12] 3323 	add	a,#0x08
      003DE7 F8               [12] 3324 	mov	r0,a
      003DE8 86 82            [24] 3325 	mov	dpl,@r0
      003DEA 08               [12] 3326 	inc	r0
      003DEB 86 83            [24] 3327 	mov	dph,@r0
      003DED 08               [12] 3328 	inc	r0
      003DEE 86 F0            [24] 3329 	mov	b,@r0
      003DF0 12 65 6C         [24] 3330 	lcall	__gptrget
      003DF3 FA               [12] 3331 	mov	r2,a
      003DF4 A3               [24] 3332 	inc	dptr
      003DF5 12 65 6C         [24] 3333 	lcall	__gptrget
      003DF8 FB               [12] 3334 	mov	r3,a
      003DF9 A3               [24] 3335 	inc	dptr
      003DFA 12 65 6C         [24] 3336 	lcall	__gptrget
      003DFD FC               [12] 3337 	mov	r4,a
      003DFE C0 07            [24] 3338 	push	ar7
      003E00 C0 06            [24] 3339 	push	ar6
      003E02 C0 05            [24] 3340 	push	ar5
      003E04 8A 82            [24] 3341 	mov	dpl,r2
      003E06 8B 83            [24] 3342 	mov	dph,r3
      003E08 8C F0            [24] 3343 	mov	b,r4
      003E0A 12 27 83         [24] 3344 	lcall	_stack_pop
      003E0D AB 82            [24] 3345 	mov	r3,dpl
      003E0F AC 83            [24] 3346 	mov	r4,dph
      003E11 15 81            [12] 3347 	dec	sp
      003E13 15 81            [12] 3348 	dec	sp
      003E15 15 81            [12] 3349 	dec	sp
      003E17 EB               [12] 3350 	mov	a,r3
      003E18 4C               [12] 3351 	orl	a,r4
      003E19 70 0C            [24] 3352 	jnz	00165$
      003E1B 90 7E 34         [24] 3353 	mov	dptr,#___str_9
      003E1E 75 F0 80         [24] 3354 	mov	b,#0x80
      003E21 12 5E 27         [24] 3355 	lcall	_printstr
      003E24 02 4F 17         [24] 3356 	ljmp	00249$
      003E27                       3357 00165$:
                                   3358 ;	calc.c:179: else if (!stack_pop(ctx->ps, &d1)) {
      003E27 E5 08            [12] 3359 	mov	a,_bp
      003E29 24 1E            [12] 3360 	add	a,#0x1e
      003E2B FF               [12] 3361 	mov	r7,a
      003E2C 7E 00            [12] 3362 	mov	r6,#0x00
      003E2E 7D 40            [12] 3363 	mov	r5,#0x40
      003E30 E5 08            [12] 3364 	mov	a,_bp
      003E32 24 08            [12] 3365 	add	a,#0x08
      003E34 F8               [12] 3366 	mov	r0,a
      003E35 86 82            [24] 3367 	mov	dpl,@r0
      003E37 08               [12] 3368 	inc	r0
      003E38 86 83            [24] 3369 	mov	dph,@r0
      003E3A 08               [12] 3370 	inc	r0
      003E3B 86 F0            [24] 3371 	mov	b,@r0
      003E3D 12 65 6C         [24] 3372 	lcall	__gptrget
      003E40 FA               [12] 3373 	mov	r2,a
      003E41 A3               [24] 3374 	inc	dptr
      003E42 12 65 6C         [24] 3375 	lcall	__gptrget
      003E45 FB               [12] 3376 	mov	r3,a
      003E46 A3               [24] 3377 	inc	dptr
      003E47 12 65 6C         [24] 3378 	lcall	__gptrget
      003E4A FC               [12] 3379 	mov	r4,a
      003E4B C0 07            [24] 3380 	push	ar7
      003E4D C0 06            [24] 3381 	push	ar6
      003E4F C0 05            [24] 3382 	push	ar5
      003E51 8A 82            [24] 3383 	mov	dpl,r2
      003E53 8B 83            [24] 3384 	mov	dph,r3
      003E55 8C F0            [24] 3385 	mov	b,r4
      003E57 12 27 83         [24] 3386 	lcall	_stack_pop
      003E5A AB 82            [24] 3387 	mov	r3,dpl
      003E5C AC 83            [24] 3388 	mov	r4,dph
      003E5E 15 81            [12] 3389 	dec	sp
      003E60 15 81            [12] 3390 	dec	sp
      003E62 15 81            [12] 3391 	dec	sp
      003E64 EB               [12] 3392 	mov	a,r3
      003E65 4C               [12] 3393 	orl	a,r4
      003E66 70 4A            [24] 3394 	jnz	00162$
                                   3395 ;	calc.c:180: (void)stack_push(ctx->ps, d0);
      003E68 E5 08            [12] 3396 	mov	a,_bp
      003E6A 24 08            [12] 3397 	add	a,#0x08
      003E6C F8               [12] 3398 	mov	r0,a
      003E6D 86 82            [24] 3399 	mov	dpl,@r0
      003E6F 08               [12] 3400 	inc	r0
      003E70 86 83            [24] 3401 	mov	dph,@r0
      003E72 08               [12] 3402 	inc	r0
      003E73 86 F0            [24] 3403 	mov	b,@r0
      003E75 12 65 6C         [24] 3404 	lcall	__gptrget
      003E78 FA               [12] 3405 	mov	r2,a
      003E79 A3               [24] 3406 	inc	dptr
      003E7A 12 65 6C         [24] 3407 	lcall	__gptrget
      003E7D FB               [12] 3408 	mov	r3,a
      003E7E A3               [24] 3409 	inc	dptr
      003E7F 12 65 6C         [24] 3410 	lcall	__gptrget
      003E82 FC               [12] 3411 	mov	r4,a
      003E83 E5 08            [12] 3412 	mov	a,_bp
      003E85 24 1A            [12] 3413 	add	a,#0x1a
      003E87 F8               [12] 3414 	mov	r0,a
      003E88 E6               [12] 3415 	mov	a,@r0
      003E89 C0 E0            [24] 3416 	push	acc
      003E8B 08               [12] 3417 	inc	r0
      003E8C E6               [12] 3418 	mov	a,@r0
      003E8D C0 E0            [24] 3419 	push	acc
      003E8F 08               [12] 3420 	inc	r0
      003E90 E6               [12] 3421 	mov	a,@r0
      003E91 C0 E0            [24] 3422 	push	acc
      003E93 08               [12] 3423 	inc	r0
      003E94 E6               [12] 3424 	mov	a,@r0
      003E95 C0 E0            [24] 3425 	push	acc
      003E97 8A 82            [24] 3426 	mov	dpl,r2
      003E99 8B 83            [24] 3427 	mov	dph,r3
      003E9B 8C F0            [24] 3428 	mov	b,r4
      003E9D 12 26 B5         [24] 3429 	lcall	_stack_push
      003EA0 E5 81            [12] 3430 	mov	a,sp
      003EA2 24 FC            [12] 3431 	add	a,#0xfc
      003EA4 F5 81            [12] 3432 	mov	sp,a
                                   3433 ;	calc.c:181: printstr("\r\nstack underflow\r\n");
      003EA6 90 7E 34         [24] 3434 	mov	dptr,#___str_9
      003EA9 75 F0 80         [24] 3435 	mov	b,#0x80
      003EAC 12 5E 27         [24] 3436 	lcall	_printstr
      003EAF 02 4F 17         [24] 3437 	ljmp	00249$
      003EB2                       3438 00162$:
                                   3439 ;	calc.c:183: d1 -= d0;
      003EB2 E5 08            [12] 3440 	mov	a,_bp
      003EB4 24 1E            [12] 3441 	add	a,#0x1e
      003EB6 F8               [12] 3442 	mov	r0,a
      003EB7 E5 08            [12] 3443 	mov	a,_bp
      003EB9 24 1A            [12] 3444 	add	a,#0x1a
      003EBB F9               [12] 3445 	mov	r1,a
      003EBC E6               [12] 3446 	mov	a,@r0
      003EBD C3               [12] 3447 	clr	c
      003EBE 97               [12] 3448 	subb	a,@r1
      003EBF F6               [12] 3449 	mov	@r0,a
      003EC0 08               [12] 3450 	inc	r0
      003EC1 E6               [12] 3451 	mov	a,@r0
      003EC2 09               [12] 3452 	inc	r1
      003EC3 97               [12] 3453 	subb	a,@r1
      003EC4 F6               [12] 3454 	mov	@r0,a
      003EC5 08               [12] 3455 	inc	r0
      003EC6 E6               [12] 3456 	mov	a,@r0
      003EC7 09               [12] 3457 	inc	r1
      003EC8 97               [12] 3458 	subb	a,@r1
      003EC9 F6               [12] 3459 	mov	@r0,a
      003ECA 08               [12] 3460 	inc	r0
      003ECB E6               [12] 3461 	mov	a,@r0
      003ECC 09               [12] 3462 	inc	r1
      003ECD 97               [12] 3463 	subb	a,@r1
      003ECE F6               [12] 3464 	mov	@r0,a
                                   3465 ;	calc.c:184: (void)stack_push(ctx->ps, d1);
      003ECF E5 08            [12] 3466 	mov	a,_bp
      003ED1 24 08            [12] 3467 	add	a,#0x08
      003ED3 F8               [12] 3468 	mov	r0,a
      003ED4 86 82            [24] 3469 	mov	dpl,@r0
      003ED6 08               [12] 3470 	inc	r0
      003ED7 86 83            [24] 3471 	mov	dph,@r0
      003ED9 08               [12] 3472 	inc	r0
      003EDA 86 F0            [24] 3473 	mov	b,@r0
      003EDC 12 65 6C         [24] 3474 	lcall	__gptrget
      003EDF FA               [12] 3475 	mov	r2,a
      003EE0 A3               [24] 3476 	inc	dptr
      003EE1 12 65 6C         [24] 3477 	lcall	__gptrget
      003EE4 FB               [12] 3478 	mov	r3,a
      003EE5 A3               [24] 3479 	inc	dptr
      003EE6 12 65 6C         [24] 3480 	lcall	__gptrget
      003EE9 FC               [12] 3481 	mov	r4,a
      003EEA E5 08            [12] 3482 	mov	a,_bp
      003EEC 24 1E            [12] 3483 	add	a,#0x1e
      003EEE F8               [12] 3484 	mov	r0,a
      003EEF E6               [12] 3485 	mov	a,@r0
      003EF0 C0 E0            [24] 3486 	push	acc
      003EF2 08               [12] 3487 	inc	r0
      003EF3 E6               [12] 3488 	mov	a,@r0
      003EF4 C0 E0            [24] 3489 	push	acc
      003EF6 08               [12] 3490 	inc	r0
      003EF7 E6               [12] 3491 	mov	a,@r0
      003EF8 C0 E0            [24] 3492 	push	acc
      003EFA 08               [12] 3493 	inc	r0
      003EFB E6               [12] 3494 	mov	a,@r0
      003EFC C0 E0            [24] 3495 	push	acc
      003EFE 8A 82            [24] 3496 	mov	dpl,r2
      003F00 8B 83            [24] 3497 	mov	dph,r3
      003F02 8C F0            [24] 3498 	mov	b,r4
      003F04 12 26 B5         [24] 3499 	lcall	_stack_push
      003F07 E5 81            [12] 3500 	mov	a,sp
      003F09 24 FC            [12] 3501 	add	a,#0xfc
      003F0B F5 81            [12] 3502 	mov	sp,a
                                   3503 ;	calc.c:186: break;
      003F0D 02 4F 17         [24] 3504 	ljmp	00249$
                                   3505 ;	calc.c:187: case '*':
      003F10                       3506 00167$:
                                   3507 ;	calc.c:188: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003F10 E5 08            [12] 3508 	mov	a,_bp
      003F12 24 1A            [12] 3509 	add	a,#0x1a
      003F14 FF               [12] 3510 	mov	r7,a
      003F15 7E 00            [12] 3511 	mov	r6,#0x00
      003F17 7D 40            [12] 3512 	mov	r5,#0x40
      003F19 E5 08            [12] 3513 	mov	a,_bp
      003F1B 24 17            [12] 3514 	add	a,#0x17
      003F1D F8               [12] 3515 	mov	r0,a
      003F1E E5 08            [12] 3516 	mov	a,_bp
      003F20 24 08            [12] 3517 	add	a,#0x08
      003F22 F9               [12] 3518 	mov	r1,a
      003F23 74 11            [12] 3519 	mov	a,#0x11
      003F25 26               [12] 3520 	add	a,@r0
      003F26 F7               [12] 3521 	mov	@r1,a
      003F27 74 40            [12] 3522 	mov	a,#0x40
      003F29 08               [12] 3523 	inc	r0
      003F2A 36               [12] 3524 	addc	a,@r0
      003F2B 09               [12] 3525 	inc	r1
      003F2C F7               [12] 3526 	mov	@r1,a
      003F2D 08               [12] 3527 	inc	r0
      003F2E 09               [12] 3528 	inc	r1
      003F2F E6               [12] 3529 	mov	a,@r0
      003F30 F7               [12] 3530 	mov	@r1,a
      003F31 E5 08            [12] 3531 	mov	a,_bp
      003F33 24 08            [12] 3532 	add	a,#0x08
      003F35 F8               [12] 3533 	mov	r0,a
      003F36 86 82            [24] 3534 	mov	dpl,@r0
      003F38 08               [12] 3535 	inc	r0
      003F39 86 83            [24] 3536 	mov	dph,@r0
      003F3B 08               [12] 3537 	inc	r0
      003F3C 86 F0            [24] 3538 	mov	b,@r0
      003F3E 12 65 6C         [24] 3539 	lcall	__gptrget
      003F41 FA               [12] 3540 	mov	r2,a
      003F42 A3               [24] 3541 	inc	dptr
      003F43 12 65 6C         [24] 3542 	lcall	__gptrget
      003F46 FB               [12] 3543 	mov	r3,a
      003F47 A3               [24] 3544 	inc	dptr
      003F48 12 65 6C         [24] 3545 	lcall	__gptrget
      003F4B FC               [12] 3546 	mov	r4,a
      003F4C C0 07            [24] 3547 	push	ar7
      003F4E C0 06            [24] 3548 	push	ar6
      003F50 C0 05            [24] 3549 	push	ar5
      003F52 8A 82            [24] 3550 	mov	dpl,r2
      003F54 8B 83            [24] 3551 	mov	dph,r3
      003F56 8C F0            [24] 3552 	mov	b,r4
      003F58 12 27 83         [24] 3553 	lcall	_stack_pop
      003F5B AB 82            [24] 3554 	mov	r3,dpl
      003F5D AC 83            [24] 3555 	mov	r4,dph
      003F5F 15 81            [12] 3556 	dec	sp
      003F61 15 81            [12] 3557 	dec	sp
      003F63 15 81            [12] 3558 	dec	sp
      003F65 EB               [12] 3559 	mov	a,r3
      003F66 4C               [12] 3560 	orl	a,r4
      003F67 70 0C            [24] 3561 	jnz	00172$
      003F69 90 7E 34         [24] 3562 	mov	dptr,#___str_9
      003F6C 75 F0 80         [24] 3563 	mov	b,#0x80
      003F6F 12 5E 27         [24] 3564 	lcall	_printstr
      003F72 02 4F 17         [24] 3565 	ljmp	00249$
      003F75                       3566 00172$:
                                   3567 ;	calc.c:189: else if (!stack_pop(ctx->ps, &d1)) {
      003F75 E5 08            [12] 3568 	mov	a,_bp
      003F77 24 1E            [12] 3569 	add	a,#0x1e
      003F79 FF               [12] 3570 	mov	r7,a
      003F7A 7E 00            [12] 3571 	mov	r6,#0x00
      003F7C 7D 40            [12] 3572 	mov	r5,#0x40
      003F7E E5 08            [12] 3573 	mov	a,_bp
      003F80 24 08            [12] 3574 	add	a,#0x08
      003F82 F8               [12] 3575 	mov	r0,a
      003F83 86 82            [24] 3576 	mov	dpl,@r0
      003F85 08               [12] 3577 	inc	r0
      003F86 86 83            [24] 3578 	mov	dph,@r0
      003F88 08               [12] 3579 	inc	r0
      003F89 86 F0            [24] 3580 	mov	b,@r0
      003F8B 12 65 6C         [24] 3581 	lcall	__gptrget
      003F8E FA               [12] 3582 	mov	r2,a
      003F8F A3               [24] 3583 	inc	dptr
      003F90 12 65 6C         [24] 3584 	lcall	__gptrget
      003F93 FB               [12] 3585 	mov	r3,a
      003F94 A3               [24] 3586 	inc	dptr
      003F95 12 65 6C         [24] 3587 	lcall	__gptrget
      003F98 FC               [12] 3588 	mov	r4,a
      003F99 C0 07            [24] 3589 	push	ar7
      003F9B C0 06            [24] 3590 	push	ar6
      003F9D C0 05            [24] 3591 	push	ar5
      003F9F 8A 82            [24] 3592 	mov	dpl,r2
      003FA1 8B 83            [24] 3593 	mov	dph,r3
      003FA3 8C F0            [24] 3594 	mov	b,r4
      003FA5 12 27 83         [24] 3595 	lcall	_stack_pop
      003FA8 AB 82            [24] 3596 	mov	r3,dpl
      003FAA AC 83            [24] 3597 	mov	r4,dph
      003FAC 15 81            [12] 3598 	dec	sp
      003FAE 15 81            [12] 3599 	dec	sp
      003FB0 15 81            [12] 3600 	dec	sp
      003FB2 EB               [12] 3601 	mov	a,r3
      003FB3 4C               [12] 3602 	orl	a,r4
      003FB4 70 4A            [24] 3603 	jnz	00169$
                                   3604 ;	calc.c:190: (void)stack_push(ctx->ps, d0);
      003FB6 E5 08            [12] 3605 	mov	a,_bp
      003FB8 24 08            [12] 3606 	add	a,#0x08
      003FBA F8               [12] 3607 	mov	r0,a
      003FBB 86 82            [24] 3608 	mov	dpl,@r0
      003FBD 08               [12] 3609 	inc	r0
      003FBE 86 83            [24] 3610 	mov	dph,@r0
      003FC0 08               [12] 3611 	inc	r0
      003FC1 86 F0            [24] 3612 	mov	b,@r0
      003FC3 12 65 6C         [24] 3613 	lcall	__gptrget
      003FC6 FA               [12] 3614 	mov	r2,a
      003FC7 A3               [24] 3615 	inc	dptr
      003FC8 12 65 6C         [24] 3616 	lcall	__gptrget
      003FCB FB               [12] 3617 	mov	r3,a
      003FCC A3               [24] 3618 	inc	dptr
      003FCD 12 65 6C         [24] 3619 	lcall	__gptrget
      003FD0 FC               [12] 3620 	mov	r4,a
      003FD1 E5 08            [12] 3621 	mov	a,_bp
      003FD3 24 1A            [12] 3622 	add	a,#0x1a
      003FD5 F8               [12] 3623 	mov	r0,a
      003FD6 E6               [12] 3624 	mov	a,@r0
      003FD7 C0 E0            [24] 3625 	push	acc
      003FD9 08               [12] 3626 	inc	r0
      003FDA E6               [12] 3627 	mov	a,@r0
      003FDB C0 E0            [24] 3628 	push	acc
      003FDD 08               [12] 3629 	inc	r0
      003FDE E6               [12] 3630 	mov	a,@r0
      003FDF C0 E0            [24] 3631 	push	acc
      003FE1 08               [12] 3632 	inc	r0
      003FE2 E6               [12] 3633 	mov	a,@r0
      003FE3 C0 E0            [24] 3634 	push	acc
      003FE5 8A 82            [24] 3635 	mov	dpl,r2
      003FE7 8B 83            [24] 3636 	mov	dph,r3
      003FE9 8C F0            [24] 3637 	mov	b,r4
      003FEB 12 26 B5         [24] 3638 	lcall	_stack_push
      003FEE E5 81            [12] 3639 	mov	a,sp
      003FF0 24 FC            [12] 3640 	add	a,#0xfc
      003FF2 F5 81            [12] 3641 	mov	sp,a
                                   3642 ;	calc.c:191: printstr("\r\nstack underflow\r\n");
      003FF4 90 7E 34         [24] 3643 	mov	dptr,#___str_9
      003FF7 75 F0 80         [24] 3644 	mov	b,#0x80
      003FFA 12 5E 27         [24] 3645 	lcall	_printstr
      003FFD 02 4F 17         [24] 3646 	ljmp	00249$
      004000                       3647 00169$:
                                   3648 ;	calc.c:193: d1 *= d0;
      004000 E5 08            [12] 3649 	mov	a,_bp
      004002 24 1A            [12] 3650 	add	a,#0x1a
      004004 F8               [12] 3651 	mov	r0,a
      004005 E6               [12] 3652 	mov	a,@r0
      004006 C0 E0            [24] 3653 	push	acc
      004008 08               [12] 3654 	inc	r0
      004009 E6               [12] 3655 	mov	a,@r0
      00400A C0 E0            [24] 3656 	push	acc
      00400C 08               [12] 3657 	inc	r0
      00400D E6               [12] 3658 	mov	a,@r0
      00400E C0 E0            [24] 3659 	push	acc
      004010 08               [12] 3660 	inc	r0
      004011 E6               [12] 3661 	mov	a,@r0
      004012 C0 E0            [24] 3662 	push	acc
      004014 E5 08            [12] 3663 	mov	a,_bp
      004016 24 1E            [12] 3664 	add	a,#0x1e
      004018 F8               [12] 3665 	mov	r0,a
      004019 86 82            [24] 3666 	mov	dpl,@r0
      00401B 08               [12] 3667 	inc	r0
      00401C 86 83            [24] 3668 	mov	dph,@r0
      00401E 08               [12] 3669 	inc	r0
      00401F 86 F0            [24] 3670 	mov	b,@r0
      004021 08               [12] 3671 	inc	r0
      004022 E6               [12] 3672 	mov	a,@r0
      004023 12 69 65         [24] 3673 	lcall	__mullong
      004026 AF 82            [24] 3674 	mov	r7,dpl
      004028 AE 83            [24] 3675 	mov	r6,dph
      00402A AD F0            [24] 3676 	mov	r5,b
      00402C FC               [12] 3677 	mov	r4,a
      00402D E5 81            [12] 3678 	mov	a,sp
      00402F 24 FC            [12] 3679 	add	a,#0xfc
      004031 F5 81            [12] 3680 	mov	sp,a
      004033 E5 08            [12] 3681 	mov	a,_bp
      004035 24 1E            [12] 3682 	add	a,#0x1e
      004037 F8               [12] 3683 	mov	r0,a
      004038 A6 07            [24] 3684 	mov	@r0,ar7
      00403A 08               [12] 3685 	inc	r0
      00403B A6 06            [24] 3686 	mov	@r0,ar6
      00403D 08               [12] 3687 	inc	r0
      00403E A6 05            [24] 3688 	mov	@r0,ar5
      004040 08               [12] 3689 	inc	r0
      004041 A6 04            [24] 3690 	mov	@r0,ar4
                                   3691 ;	calc.c:194: (void)stack_push(ctx->ps, d1);
      004043 E5 08            [12] 3692 	mov	a,_bp
      004045 24 08            [12] 3693 	add	a,#0x08
      004047 F8               [12] 3694 	mov	r0,a
      004048 86 82            [24] 3695 	mov	dpl,@r0
      00404A 08               [12] 3696 	inc	r0
      00404B 86 83            [24] 3697 	mov	dph,@r0
      00404D 08               [12] 3698 	inc	r0
      00404E 86 F0            [24] 3699 	mov	b,@r0
      004050 12 65 6C         [24] 3700 	lcall	__gptrget
      004053 FA               [12] 3701 	mov	r2,a
      004054 A3               [24] 3702 	inc	dptr
      004055 12 65 6C         [24] 3703 	lcall	__gptrget
      004058 FB               [12] 3704 	mov	r3,a
      004059 A3               [24] 3705 	inc	dptr
      00405A 12 65 6C         [24] 3706 	lcall	__gptrget
      00405D FC               [12] 3707 	mov	r4,a
      00405E E5 08            [12] 3708 	mov	a,_bp
      004060 24 1E            [12] 3709 	add	a,#0x1e
      004062 F8               [12] 3710 	mov	r0,a
      004063 E6               [12] 3711 	mov	a,@r0
      004064 C0 E0            [24] 3712 	push	acc
      004066 08               [12] 3713 	inc	r0
      004067 E6               [12] 3714 	mov	a,@r0
      004068 C0 E0            [24] 3715 	push	acc
      00406A 08               [12] 3716 	inc	r0
      00406B E6               [12] 3717 	mov	a,@r0
      00406C C0 E0            [24] 3718 	push	acc
      00406E 08               [12] 3719 	inc	r0
      00406F E6               [12] 3720 	mov	a,@r0
      004070 C0 E0            [24] 3721 	push	acc
      004072 8A 82            [24] 3722 	mov	dpl,r2
      004074 8B 83            [24] 3723 	mov	dph,r3
      004076 8C F0            [24] 3724 	mov	b,r4
      004078 12 26 B5         [24] 3725 	lcall	_stack_push
      00407B E5 81            [12] 3726 	mov	a,sp
      00407D 24 FC            [12] 3727 	add	a,#0xfc
      00407F F5 81            [12] 3728 	mov	sp,a
                                   3729 ;	calc.c:196: break;
      004081 02 4F 17         [24] 3730 	ljmp	00249$
                                   3731 ;	calc.c:198: case '\\':
      004084                       3732 00175$:
                                   3733 ;	calc.c:199: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004084 C0 05            [24] 3734 	push	ar5
      004086 C0 06            [24] 3735 	push	ar6
      004088 C0 07            [24] 3736 	push	ar7
      00408A E5 08            [12] 3737 	mov	a,_bp
      00408C 24 1A            [12] 3738 	add	a,#0x1a
      00408E FC               [12] 3739 	mov	r4,a
      00408F 7B 00            [12] 3740 	mov	r3,#0x00
      004091 7A 40            [12] 3741 	mov	r2,#0x40
      004093 E5 08            [12] 3742 	mov	a,_bp
      004095 24 17            [12] 3743 	add	a,#0x17
      004097 F8               [12] 3744 	mov	r0,a
      004098 E5 08            [12] 3745 	mov	a,_bp
      00409A 24 0B            [12] 3746 	add	a,#0x0b
      00409C F9               [12] 3747 	mov	r1,a
      00409D 74 11            [12] 3748 	mov	a,#0x11
      00409F 26               [12] 3749 	add	a,@r0
      0040A0 F7               [12] 3750 	mov	@r1,a
      0040A1 74 40            [12] 3751 	mov	a,#0x40
      0040A3 08               [12] 3752 	inc	r0
      0040A4 36               [12] 3753 	addc	a,@r0
      0040A5 09               [12] 3754 	inc	r1
      0040A6 F7               [12] 3755 	mov	@r1,a
      0040A7 08               [12] 3756 	inc	r0
      0040A8 09               [12] 3757 	inc	r1
      0040A9 E6               [12] 3758 	mov	a,@r0
      0040AA F7               [12] 3759 	mov	@r1,a
      0040AB E5 08            [12] 3760 	mov	a,_bp
      0040AD 24 0B            [12] 3761 	add	a,#0x0b
      0040AF F8               [12] 3762 	mov	r0,a
      0040B0 86 82            [24] 3763 	mov	dpl,@r0
      0040B2 08               [12] 3764 	inc	r0
      0040B3 86 83            [24] 3765 	mov	dph,@r0
      0040B5 08               [12] 3766 	inc	r0
      0040B6 86 F0            [24] 3767 	mov	b,@r0
      0040B8 12 65 6C         [24] 3768 	lcall	__gptrget
      0040BB FD               [12] 3769 	mov	r5,a
      0040BC A3               [24] 3770 	inc	dptr
      0040BD 12 65 6C         [24] 3771 	lcall	__gptrget
      0040C0 FE               [12] 3772 	mov	r6,a
      0040C1 A3               [24] 3773 	inc	dptr
      0040C2 12 65 6C         [24] 3774 	lcall	__gptrget
      0040C5 FF               [12] 3775 	mov	r7,a
      0040C6 C0 05            [24] 3776 	push	ar5
      0040C8 C0 04            [24] 3777 	push	ar4
      0040CA C0 03            [24] 3778 	push	ar3
      0040CC C0 02            [24] 3779 	push	ar2
      0040CE 8D 82            [24] 3780 	mov	dpl,r5
      0040D0 8E 83            [24] 3781 	mov	dph,r6
      0040D2 8F F0            [24] 3782 	mov	b,r7
      0040D4 12 27 83         [24] 3783 	lcall	_stack_pop
      0040D7 AE 82            [24] 3784 	mov	r6,dpl
      0040D9 AF 83            [24] 3785 	mov	r7,dph
      0040DB 15 81            [12] 3786 	dec	sp
      0040DD 15 81            [12] 3787 	dec	sp
      0040DF 15 81            [12] 3788 	dec	sp
      0040E1 D0 05            [24] 3789 	pop	ar5
      0040E3 EE               [12] 3790 	mov	a,r6
      0040E4 4F               [12] 3791 	orl	a,r7
      0040E5 D0 07            [24] 3792 	pop	ar7
      0040E7 D0 06            [24] 3793 	pop	ar6
      0040E9 D0 05            [24] 3794 	pop	ar5
      0040EB 70 0C            [24] 3795 	jnz	00186$
      0040ED 90 7E 34         [24] 3796 	mov	dptr,#___str_9
      0040F0 75 F0 80         [24] 3797 	mov	b,#0x80
      0040F3 12 5E 27         [24] 3798 	lcall	_printstr
      0040F6 02 4F 17         [24] 3799 	ljmp	00249$
      0040F9                       3800 00186$:
                                   3801 ;	calc.c:200: else if (!stack_pop(ctx->ps, &d1)) {
      0040F9 C0 05            [24] 3802 	push	ar5
      0040FB C0 06            [24] 3803 	push	ar6
      0040FD C0 07            [24] 3804 	push	ar7
      0040FF E5 08            [12] 3805 	mov	a,_bp
      004101 24 1E            [12] 3806 	add	a,#0x1e
      004103 FC               [12] 3807 	mov	r4,a
      004104 7B 00            [12] 3808 	mov	r3,#0x00
      004106 7A 40            [12] 3809 	mov	r2,#0x40
      004108 E5 08            [12] 3810 	mov	a,_bp
      00410A 24 0B            [12] 3811 	add	a,#0x0b
      00410C F8               [12] 3812 	mov	r0,a
      00410D 86 82            [24] 3813 	mov	dpl,@r0
      00410F 08               [12] 3814 	inc	r0
      004110 86 83            [24] 3815 	mov	dph,@r0
      004112 08               [12] 3816 	inc	r0
      004113 86 F0            [24] 3817 	mov	b,@r0
      004115 12 65 6C         [24] 3818 	lcall	__gptrget
      004118 FD               [12] 3819 	mov	r5,a
      004119 A3               [24] 3820 	inc	dptr
      00411A 12 65 6C         [24] 3821 	lcall	__gptrget
      00411D FE               [12] 3822 	mov	r6,a
      00411E A3               [24] 3823 	inc	dptr
      00411F 12 65 6C         [24] 3824 	lcall	__gptrget
      004122 FF               [12] 3825 	mov	r7,a
      004123 C0 05            [24] 3826 	push	ar5
      004125 C0 04            [24] 3827 	push	ar4
      004127 C0 03            [24] 3828 	push	ar3
      004129 C0 02            [24] 3829 	push	ar2
      00412B 8D 82            [24] 3830 	mov	dpl,r5
      00412D 8E 83            [24] 3831 	mov	dph,r6
      00412F 8F F0            [24] 3832 	mov	b,r7
      004131 12 27 83         [24] 3833 	lcall	_stack_pop
      004134 AE 82            [24] 3834 	mov	r6,dpl
      004136 AF 83            [24] 3835 	mov	r7,dph
      004138 15 81            [12] 3836 	dec	sp
      00413A 15 81            [12] 3837 	dec	sp
      00413C 15 81            [12] 3838 	dec	sp
      00413E D0 05            [24] 3839 	pop	ar5
      004140 EE               [12] 3840 	mov	a,r6
      004141 4F               [12] 3841 	orl	a,r7
      004142 D0 07            [24] 3842 	pop	ar7
      004144 D0 06            [24] 3843 	pop	ar6
      004146 D0 05            [24] 3844 	pop	ar5
      004148 70 4A            [24] 3845 	jnz	00183$
                                   3846 ;	calc.c:201: (void)stack_push(ctx->ps, d0);
      00414A E5 08            [12] 3847 	mov	a,_bp
      00414C 24 0B            [12] 3848 	add	a,#0x0b
      00414E F8               [12] 3849 	mov	r0,a
      00414F 86 82            [24] 3850 	mov	dpl,@r0
      004151 08               [12] 3851 	inc	r0
      004152 86 83            [24] 3852 	mov	dph,@r0
      004154 08               [12] 3853 	inc	r0
      004155 86 F0            [24] 3854 	mov	b,@r0
      004157 12 65 6C         [24] 3855 	lcall	__gptrget
      00415A FA               [12] 3856 	mov	r2,a
      00415B A3               [24] 3857 	inc	dptr
      00415C 12 65 6C         [24] 3858 	lcall	__gptrget
      00415F FB               [12] 3859 	mov	r3,a
      004160 A3               [24] 3860 	inc	dptr
      004161 12 65 6C         [24] 3861 	lcall	__gptrget
      004164 FC               [12] 3862 	mov	r4,a
      004165 E5 08            [12] 3863 	mov	a,_bp
      004167 24 1A            [12] 3864 	add	a,#0x1a
      004169 F8               [12] 3865 	mov	r0,a
      00416A E6               [12] 3866 	mov	a,@r0
      00416B C0 E0            [24] 3867 	push	acc
      00416D 08               [12] 3868 	inc	r0
      00416E E6               [12] 3869 	mov	a,@r0
      00416F C0 E0            [24] 3870 	push	acc
      004171 08               [12] 3871 	inc	r0
      004172 E6               [12] 3872 	mov	a,@r0
      004173 C0 E0            [24] 3873 	push	acc
      004175 08               [12] 3874 	inc	r0
      004176 E6               [12] 3875 	mov	a,@r0
      004177 C0 E0            [24] 3876 	push	acc
      004179 8A 82            [24] 3877 	mov	dpl,r2
      00417B 8B 83            [24] 3878 	mov	dph,r3
      00417D 8C F0            [24] 3879 	mov	b,r4
      00417F 12 26 B5         [24] 3880 	lcall	_stack_push
      004182 E5 81            [12] 3881 	mov	a,sp
      004184 24 FC            [12] 3882 	add	a,#0xfc
      004186 F5 81            [12] 3883 	mov	sp,a
                                   3884 ;	calc.c:202: printstr("\r\nstack underflow\r\n");
      004188 90 7E 34         [24] 3885 	mov	dptr,#___str_9
      00418B 75 F0 80         [24] 3886 	mov	b,#0x80
      00418E 12 5E 27         [24] 3887 	lcall	_printstr
      004191 02 4F 17         [24] 3888 	ljmp	00249$
      004194                       3889 00183$:
                                   3890 ;	calc.c:203: } else if (!d0) {
      004194 E5 08            [12] 3891 	mov	a,_bp
      004196 24 1A            [12] 3892 	add	a,#0x1a
      004198 F8               [12] 3893 	mov	r0,a
      004199 E6               [12] 3894 	mov	a,@r0
      00419A 08               [12] 3895 	inc	r0
      00419B 46               [12] 3896 	orl	a,@r0
      00419C 08               [12] 3897 	inc	r0
      00419D 46               [12] 3898 	orl	a,@r0
      00419E 08               [12] 3899 	inc	r0
      00419F 46               [12] 3900 	orl	a,@r0
      0041A0 60 03            [24] 3901 	jz	00575$
      0041A2 02 42 2D         [24] 3902 	ljmp	00180$
      0041A5                       3903 00575$:
                                   3904 ;	calc.c:204: (void)stack_push(ctx->ps, d1);
      0041A5 E5 08            [12] 3905 	mov	a,_bp
      0041A7 24 0B            [12] 3906 	add	a,#0x0b
      0041A9 F8               [12] 3907 	mov	r0,a
      0041AA 86 82            [24] 3908 	mov	dpl,@r0
      0041AC 08               [12] 3909 	inc	r0
      0041AD 86 83            [24] 3910 	mov	dph,@r0
      0041AF 08               [12] 3911 	inc	r0
      0041B0 86 F0            [24] 3912 	mov	b,@r0
      0041B2 12 65 6C         [24] 3913 	lcall	__gptrget
      0041B5 FA               [12] 3914 	mov	r2,a
      0041B6 A3               [24] 3915 	inc	dptr
      0041B7 12 65 6C         [24] 3916 	lcall	__gptrget
      0041BA FB               [12] 3917 	mov	r3,a
      0041BB A3               [24] 3918 	inc	dptr
      0041BC 12 65 6C         [24] 3919 	lcall	__gptrget
      0041BF FC               [12] 3920 	mov	r4,a
      0041C0 E5 08            [12] 3921 	mov	a,_bp
      0041C2 24 1E            [12] 3922 	add	a,#0x1e
      0041C4 F8               [12] 3923 	mov	r0,a
      0041C5 E6               [12] 3924 	mov	a,@r0
      0041C6 C0 E0            [24] 3925 	push	acc
      0041C8 08               [12] 3926 	inc	r0
      0041C9 E6               [12] 3927 	mov	a,@r0
      0041CA C0 E0            [24] 3928 	push	acc
      0041CC 08               [12] 3929 	inc	r0
      0041CD E6               [12] 3930 	mov	a,@r0
      0041CE C0 E0            [24] 3931 	push	acc
      0041D0 08               [12] 3932 	inc	r0
      0041D1 E6               [12] 3933 	mov	a,@r0
      0041D2 C0 E0            [24] 3934 	push	acc
      0041D4 8A 82            [24] 3935 	mov	dpl,r2
      0041D6 8B 83            [24] 3936 	mov	dph,r3
      0041D8 8C F0            [24] 3937 	mov	b,r4
      0041DA 12 26 B5         [24] 3938 	lcall	_stack_push
      0041DD E5 81            [12] 3939 	mov	a,sp
      0041DF 24 FC            [12] 3940 	add	a,#0xfc
      0041E1 F5 81            [12] 3941 	mov	sp,a
                                   3942 ;	calc.c:205: (void)stack_push(ctx->ps, d0);			
      0041E3 E5 08            [12] 3943 	mov	a,_bp
      0041E5 24 0B            [12] 3944 	add	a,#0x0b
      0041E7 F8               [12] 3945 	mov	r0,a
      0041E8 86 82            [24] 3946 	mov	dpl,@r0
      0041EA 08               [12] 3947 	inc	r0
      0041EB 86 83            [24] 3948 	mov	dph,@r0
      0041ED 08               [12] 3949 	inc	r0
      0041EE 86 F0            [24] 3950 	mov	b,@r0
      0041F0 12 65 6C         [24] 3951 	lcall	__gptrget
      0041F3 FA               [12] 3952 	mov	r2,a
      0041F4 A3               [24] 3953 	inc	dptr
      0041F5 12 65 6C         [24] 3954 	lcall	__gptrget
      0041F8 FB               [12] 3955 	mov	r3,a
      0041F9 A3               [24] 3956 	inc	dptr
      0041FA 12 65 6C         [24] 3957 	lcall	__gptrget
      0041FD FC               [12] 3958 	mov	r4,a
      0041FE E5 08            [12] 3959 	mov	a,_bp
      004200 24 1A            [12] 3960 	add	a,#0x1a
      004202 F8               [12] 3961 	mov	r0,a
      004203 E6               [12] 3962 	mov	a,@r0
      004204 C0 E0            [24] 3963 	push	acc
      004206 08               [12] 3964 	inc	r0
      004207 E6               [12] 3965 	mov	a,@r0
      004208 C0 E0            [24] 3966 	push	acc
      00420A 08               [12] 3967 	inc	r0
      00420B E6               [12] 3968 	mov	a,@r0
      00420C C0 E0            [24] 3969 	push	acc
      00420E 08               [12] 3970 	inc	r0
      00420F E6               [12] 3971 	mov	a,@r0
      004210 C0 E0            [24] 3972 	push	acc
      004212 8A 82            [24] 3973 	mov	dpl,r2
      004214 8B 83            [24] 3974 	mov	dph,r3
      004216 8C F0            [24] 3975 	mov	b,r4
      004218 12 26 B5         [24] 3976 	lcall	_stack_push
      00421B E5 81            [12] 3977 	mov	a,sp
      00421D 24 FC            [12] 3978 	add	a,#0xfc
      00421F F5 81            [12] 3979 	mov	sp,a
                                   3980 ;	calc.c:206: printstr("\r\ndivision by zero\r\n");
      004221 90 7E 96         [24] 3981 	mov	dptr,#___str_13
      004224 75 F0 80         [24] 3982 	mov	b,#0x80
      004227 12 5E 27         [24] 3983 	lcall	_printstr
      00422A 02 4F 17         [24] 3984 	ljmp	00249$
      00422D                       3985 00180$:
                                   3986 ;	calc.c:208: if (ctx->digit[0] == '/') d1 /= d0;
      00422D 8D 82            [24] 3987 	mov	dpl,r5
      00422F 8E 83            [24] 3988 	mov	dph,r6
      004231 8F F0            [24] 3989 	mov	b,r7
      004233 12 65 6C         [24] 3990 	lcall	__gptrget
      004236 FC               [12] 3991 	mov	r4,a
      004237 BC 2F 45         [24] 3992 	cjne	r4,#0x2f,00177$
      00423A E5 08            [12] 3993 	mov	a,_bp
      00423C 24 1A            [12] 3994 	add	a,#0x1a
      00423E F8               [12] 3995 	mov	r0,a
      00423F E6               [12] 3996 	mov	a,@r0
      004240 C0 E0            [24] 3997 	push	acc
      004242 08               [12] 3998 	inc	r0
      004243 E6               [12] 3999 	mov	a,@r0
      004244 C0 E0            [24] 4000 	push	acc
      004246 08               [12] 4001 	inc	r0
      004247 E6               [12] 4002 	mov	a,@r0
      004248 C0 E0            [24] 4003 	push	acc
      00424A 08               [12] 4004 	inc	r0
      00424B E6               [12] 4005 	mov	a,@r0
      00424C C0 E0            [24] 4006 	push	acc
      00424E E5 08            [12] 4007 	mov	a,_bp
      004250 24 1E            [12] 4008 	add	a,#0x1e
      004252 F8               [12] 4009 	mov	r0,a
      004253 86 82            [24] 4010 	mov	dpl,@r0
      004255 08               [12] 4011 	inc	r0
      004256 86 83            [24] 4012 	mov	dph,@r0
      004258 08               [12] 4013 	inc	r0
      004259 86 F0            [24] 4014 	mov	b,@r0
      00425B 08               [12] 4015 	inc	r0
      00425C E6               [12] 4016 	mov	a,@r0
      00425D 12 63 63         [24] 4017 	lcall	__divslong
      004260 AF 82            [24] 4018 	mov	r7,dpl
      004262 AE 83            [24] 4019 	mov	r6,dph
      004264 AD F0            [24] 4020 	mov	r5,b
      004266 FC               [12] 4021 	mov	r4,a
      004267 E5 81            [12] 4022 	mov	a,sp
      004269 24 FC            [12] 4023 	add	a,#0xfc
      00426B F5 81            [12] 4024 	mov	sp,a
      00426D E5 08            [12] 4025 	mov	a,_bp
      00426F 24 1E            [12] 4026 	add	a,#0x1e
      004271 F8               [12] 4027 	mov	r0,a
      004272 A6 07            [24] 4028 	mov	@r0,ar7
      004274 08               [12] 4029 	inc	r0
      004275 A6 06            [24] 4030 	mov	@r0,ar6
      004277 08               [12] 4031 	inc	r0
      004278 A6 05            [24] 4032 	mov	@r0,ar5
      00427A 08               [12] 4033 	inc	r0
      00427B A6 04            [24] 4034 	mov	@r0,ar4
      00427D 80 63            [24] 4035 	sjmp	00178$
      00427F                       4036 00177$:
                                   4037 ;	calc.c:209: else d1 = (unsigned long)d1 / (unsigned long)d0;
      00427F E5 08            [12] 4038 	mov	a,_bp
      004281 24 1E            [12] 4039 	add	a,#0x1e
      004283 F8               [12] 4040 	mov	r0,a
      004284 86 07            [24] 4041 	mov	ar7,@r0
      004286 08               [12] 4042 	inc	r0
      004287 86 06            [24] 4043 	mov	ar6,@r0
      004289 08               [12] 4044 	inc	r0
      00428A 86 05            [24] 4045 	mov	ar5,@r0
      00428C 08               [12] 4046 	inc	r0
      00428D 86 04            [24] 4047 	mov	ar4,@r0
      00428F E5 08            [12] 4048 	mov	a,_bp
      004291 24 1A            [12] 4049 	add	a,#0x1a
      004293 F8               [12] 4050 	mov	r0,a
      004294 E5 08            [12] 4051 	mov	a,_bp
      004296 24 13            [12] 4052 	add	a,#0x13
      004298 F9               [12] 4053 	mov	r1,a
      004299 E6               [12] 4054 	mov	a,@r0
      00429A F7               [12] 4055 	mov	@r1,a
      00429B 08               [12] 4056 	inc	r0
      00429C 09               [12] 4057 	inc	r1
      00429D E6               [12] 4058 	mov	a,@r0
      00429E F7               [12] 4059 	mov	@r1,a
      00429F 08               [12] 4060 	inc	r0
      0042A0 09               [12] 4061 	inc	r1
      0042A1 E6               [12] 4062 	mov	a,@r0
      0042A2 F7               [12] 4063 	mov	@r1,a
      0042A3 08               [12] 4064 	inc	r0
      0042A4 09               [12] 4065 	inc	r1
      0042A5 E6               [12] 4066 	mov	a,@r0
      0042A6 F7               [12] 4067 	mov	@r1,a
      0042A7 E5 08            [12] 4068 	mov	a,_bp
      0042A9 24 13            [12] 4069 	add	a,#0x13
      0042AB F8               [12] 4070 	mov	r0,a
      0042AC E6               [12] 4071 	mov	a,@r0
      0042AD C0 E0            [24] 4072 	push	acc
      0042AF 08               [12] 4073 	inc	r0
      0042B0 E6               [12] 4074 	mov	a,@r0
      0042B1 C0 E0            [24] 4075 	push	acc
      0042B3 08               [12] 4076 	inc	r0
      0042B4 E6               [12] 4077 	mov	a,@r0
      0042B5 C0 E0            [24] 4078 	push	acc
      0042B7 08               [12] 4079 	inc	r0
      0042B8 E6               [12] 4080 	mov	a,@r0
      0042B9 C0 E0            [24] 4081 	push	acc
      0042BB 8F 82            [24] 4082 	mov	dpl,r7
      0042BD 8E 83            [24] 4083 	mov	dph,r6
      0042BF 8D F0            [24] 4084 	mov	b,r5
      0042C1 EC               [12] 4085 	mov	a,r4
      0042C2 12 64 60         [24] 4086 	lcall	__divulong
      0042C5 AF 82            [24] 4087 	mov	r7,dpl
      0042C7 AE 83            [24] 4088 	mov	r6,dph
      0042C9 AD F0            [24] 4089 	mov	r5,b
      0042CB FC               [12] 4090 	mov	r4,a
      0042CC E5 81            [12] 4091 	mov	a,sp
      0042CE 24 FC            [12] 4092 	add	a,#0xfc
      0042D0 F5 81            [12] 4093 	mov	sp,a
      0042D2 E5 08            [12] 4094 	mov	a,_bp
      0042D4 24 1E            [12] 4095 	add	a,#0x1e
      0042D6 F8               [12] 4096 	mov	r0,a
      0042D7 A6 07            [24] 4097 	mov	@r0,ar7
      0042D9 08               [12] 4098 	inc	r0
      0042DA A6 06            [24] 4099 	mov	@r0,ar6
      0042DC 08               [12] 4100 	inc	r0
      0042DD A6 05            [24] 4101 	mov	@r0,ar5
      0042DF 08               [12] 4102 	inc	r0
      0042E0 A6 04            [24] 4103 	mov	@r0,ar4
      0042E2                       4104 00178$:
                                   4105 ;	calc.c:210: (void)stack_push(ctx->ps, d1);
      0042E2 E5 08            [12] 4106 	mov	a,_bp
      0042E4 24 0B            [12] 4107 	add	a,#0x0b
      0042E6 F8               [12] 4108 	mov	r0,a
      0042E7 86 82            [24] 4109 	mov	dpl,@r0
      0042E9 08               [12] 4110 	inc	r0
      0042EA 86 83            [24] 4111 	mov	dph,@r0
      0042EC 08               [12] 4112 	inc	r0
      0042ED 86 F0            [24] 4113 	mov	b,@r0
      0042EF 12 65 6C         [24] 4114 	lcall	__gptrget
      0042F2 FA               [12] 4115 	mov	r2,a
      0042F3 A3               [24] 4116 	inc	dptr
      0042F4 12 65 6C         [24] 4117 	lcall	__gptrget
      0042F7 FB               [12] 4118 	mov	r3,a
      0042F8 A3               [24] 4119 	inc	dptr
      0042F9 12 65 6C         [24] 4120 	lcall	__gptrget
      0042FC FC               [12] 4121 	mov	r4,a
      0042FD E5 08            [12] 4122 	mov	a,_bp
      0042FF 24 1E            [12] 4123 	add	a,#0x1e
      004301 F8               [12] 4124 	mov	r0,a
      004302 E6               [12] 4125 	mov	a,@r0
      004303 C0 E0            [24] 4126 	push	acc
      004305 08               [12] 4127 	inc	r0
      004306 E6               [12] 4128 	mov	a,@r0
      004307 C0 E0            [24] 4129 	push	acc
      004309 08               [12] 4130 	inc	r0
      00430A E6               [12] 4131 	mov	a,@r0
      00430B C0 E0            [24] 4132 	push	acc
      00430D 08               [12] 4133 	inc	r0
      00430E E6               [12] 4134 	mov	a,@r0
      00430F C0 E0            [24] 4135 	push	acc
      004311 8A 82            [24] 4136 	mov	dpl,r2
      004313 8B 83            [24] 4137 	mov	dph,r3
      004315 8C F0            [24] 4138 	mov	b,r4
      004317 12 26 B5         [24] 4139 	lcall	_stack_push
      00431A E5 81            [12] 4140 	mov	a,sp
      00431C 24 FC            [12] 4141 	add	a,#0xfc
      00431E F5 81            [12] 4142 	mov	sp,a
                                   4143 ;	calc.c:212: break;
      004320 02 4F 17         [24] 4144 	ljmp	00249$
                                   4145 ;	calc.c:214: case '#':
      004323                       4146 00189$:
                                   4147 ;	calc.c:215: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004323 C0 05            [24] 4148 	push	ar5
      004325 C0 06            [24] 4149 	push	ar6
      004327 C0 07            [24] 4150 	push	ar7
      004329 E5 08            [12] 4151 	mov	a,_bp
      00432B 24 1A            [12] 4152 	add	a,#0x1a
      00432D FC               [12] 4153 	mov	r4,a
      00432E 7B 00            [12] 4154 	mov	r3,#0x00
      004330 7A 40            [12] 4155 	mov	r2,#0x40
      004332 E5 08            [12] 4156 	mov	a,_bp
      004334 24 17            [12] 4157 	add	a,#0x17
      004336 F8               [12] 4158 	mov	r0,a
      004337 E5 08            [12] 4159 	mov	a,_bp
      004339 24 13            [12] 4160 	add	a,#0x13
      00433B F9               [12] 4161 	mov	r1,a
      00433C 74 11            [12] 4162 	mov	a,#0x11
      00433E 26               [12] 4163 	add	a,@r0
      00433F F7               [12] 4164 	mov	@r1,a
      004340 74 40            [12] 4165 	mov	a,#0x40
      004342 08               [12] 4166 	inc	r0
      004343 36               [12] 4167 	addc	a,@r0
      004344 09               [12] 4168 	inc	r1
      004345 F7               [12] 4169 	mov	@r1,a
      004346 08               [12] 4170 	inc	r0
      004347 09               [12] 4171 	inc	r1
      004348 E6               [12] 4172 	mov	a,@r0
      004349 F7               [12] 4173 	mov	@r1,a
      00434A E5 08            [12] 4174 	mov	a,_bp
      00434C 24 13            [12] 4175 	add	a,#0x13
      00434E F8               [12] 4176 	mov	r0,a
      00434F 86 82            [24] 4177 	mov	dpl,@r0
      004351 08               [12] 4178 	inc	r0
      004352 86 83            [24] 4179 	mov	dph,@r0
      004354 08               [12] 4180 	inc	r0
      004355 86 F0            [24] 4181 	mov	b,@r0
      004357 12 65 6C         [24] 4182 	lcall	__gptrget
      00435A FD               [12] 4183 	mov	r5,a
      00435B A3               [24] 4184 	inc	dptr
      00435C 12 65 6C         [24] 4185 	lcall	__gptrget
      00435F FE               [12] 4186 	mov	r6,a
      004360 A3               [24] 4187 	inc	dptr
      004361 12 65 6C         [24] 4188 	lcall	__gptrget
      004364 FF               [12] 4189 	mov	r7,a
      004365 C0 05            [24] 4190 	push	ar5
      004367 C0 04            [24] 4191 	push	ar4
      004369 C0 03            [24] 4192 	push	ar3
      00436B C0 02            [24] 4193 	push	ar2
      00436D 8D 82            [24] 4194 	mov	dpl,r5
      00436F 8E 83            [24] 4195 	mov	dph,r6
      004371 8F F0            [24] 4196 	mov	b,r7
      004373 12 27 83         [24] 4197 	lcall	_stack_pop
      004376 AE 82            [24] 4198 	mov	r6,dpl
      004378 AF 83            [24] 4199 	mov	r7,dph
      00437A 15 81            [12] 4200 	dec	sp
      00437C 15 81            [12] 4201 	dec	sp
      00437E 15 81            [12] 4202 	dec	sp
      004380 D0 05            [24] 4203 	pop	ar5
      004382 EE               [12] 4204 	mov	a,r6
      004383 4F               [12] 4205 	orl	a,r7
      004384 D0 07            [24] 4206 	pop	ar7
      004386 D0 06            [24] 4207 	pop	ar6
      004388 D0 05            [24] 4208 	pop	ar5
      00438A 70 0C            [24] 4209 	jnz	00200$
      00438C 90 7E 34         [24] 4210 	mov	dptr,#___str_9
      00438F 75 F0 80         [24] 4211 	mov	b,#0x80
      004392 12 5E 27         [24] 4212 	lcall	_printstr
      004395 02 4F 17         [24] 4213 	ljmp	00249$
      004398                       4214 00200$:
                                   4215 ;	calc.c:216: else if (!stack_pop(ctx->ps, &d1)) {
      004398 C0 05            [24] 4216 	push	ar5
      00439A C0 06            [24] 4217 	push	ar6
      00439C C0 07            [24] 4218 	push	ar7
      00439E E5 08            [12] 4219 	mov	a,_bp
      0043A0 24 1E            [12] 4220 	add	a,#0x1e
      0043A2 FC               [12] 4221 	mov	r4,a
      0043A3 7B 00            [12] 4222 	mov	r3,#0x00
      0043A5 7A 40            [12] 4223 	mov	r2,#0x40
      0043A7 E5 08            [12] 4224 	mov	a,_bp
      0043A9 24 13            [12] 4225 	add	a,#0x13
      0043AB F8               [12] 4226 	mov	r0,a
      0043AC 86 82            [24] 4227 	mov	dpl,@r0
      0043AE 08               [12] 4228 	inc	r0
      0043AF 86 83            [24] 4229 	mov	dph,@r0
      0043B1 08               [12] 4230 	inc	r0
      0043B2 86 F0            [24] 4231 	mov	b,@r0
      0043B4 12 65 6C         [24] 4232 	lcall	__gptrget
      0043B7 FD               [12] 4233 	mov	r5,a
      0043B8 A3               [24] 4234 	inc	dptr
      0043B9 12 65 6C         [24] 4235 	lcall	__gptrget
      0043BC FE               [12] 4236 	mov	r6,a
      0043BD A3               [24] 4237 	inc	dptr
      0043BE 12 65 6C         [24] 4238 	lcall	__gptrget
      0043C1 FF               [12] 4239 	mov	r7,a
      0043C2 C0 05            [24] 4240 	push	ar5
      0043C4 C0 04            [24] 4241 	push	ar4
      0043C6 C0 03            [24] 4242 	push	ar3
      0043C8 C0 02            [24] 4243 	push	ar2
      0043CA 8D 82            [24] 4244 	mov	dpl,r5
      0043CC 8E 83            [24] 4245 	mov	dph,r6
      0043CE 8F F0            [24] 4246 	mov	b,r7
      0043D0 12 27 83         [24] 4247 	lcall	_stack_pop
      0043D3 AE 82            [24] 4248 	mov	r6,dpl
      0043D5 AF 83            [24] 4249 	mov	r7,dph
      0043D7 15 81            [12] 4250 	dec	sp
      0043D9 15 81            [12] 4251 	dec	sp
      0043DB 15 81            [12] 4252 	dec	sp
      0043DD D0 05            [24] 4253 	pop	ar5
      0043DF EE               [12] 4254 	mov	a,r6
      0043E0 4F               [12] 4255 	orl	a,r7
      0043E1 D0 07            [24] 4256 	pop	ar7
      0043E3 D0 06            [24] 4257 	pop	ar6
      0043E5 D0 05            [24] 4258 	pop	ar5
      0043E7 70 4A            [24] 4259 	jnz	00197$
                                   4260 ;	calc.c:217: (void)stack_push(ctx->ps, d0);
      0043E9 E5 08            [12] 4261 	mov	a,_bp
      0043EB 24 13            [12] 4262 	add	a,#0x13
      0043ED F8               [12] 4263 	mov	r0,a
      0043EE 86 82            [24] 4264 	mov	dpl,@r0
      0043F0 08               [12] 4265 	inc	r0
      0043F1 86 83            [24] 4266 	mov	dph,@r0
      0043F3 08               [12] 4267 	inc	r0
      0043F4 86 F0            [24] 4268 	mov	b,@r0
      0043F6 12 65 6C         [24] 4269 	lcall	__gptrget
      0043F9 FA               [12] 4270 	mov	r2,a
      0043FA A3               [24] 4271 	inc	dptr
      0043FB 12 65 6C         [24] 4272 	lcall	__gptrget
      0043FE FB               [12] 4273 	mov	r3,a
      0043FF A3               [24] 4274 	inc	dptr
      004400 12 65 6C         [24] 4275 	lcall	__gptrget
      004403 FC               [12] 4276 	mov	r4,a
      004404 E5 08            [12] 4277 	mov	a,_bp
      004406 24 1A            [12] 4278 	add	a,#0x1a
      004408 F8               [12] 4279 	mov	r0,a
      004409 E6               [12] 4280 	mov	a,@r0
      00440A C0 E0            [24] 4281 	push	acc
      00440C 08               [12] 4282 	inc	r0
      00440D E6               [12] 4283 	mov	a,@r0
      00440E C0 E0            [24] 4284 	push	acc
      004410 08               [12] 4285 	inc	r0
      004411 E6               [12] 4286 	mov	a,@r0
      004412 C0 E0            [24] 4287 	push	acc
      004414 08               [12] 4288 	inc	r0
      004415 E6               [12] 4289 	mov	a,@r0
      004416 C0 E0            [24] 4290 	push	acc
      004418 8A 82            [24] 4291 	mov	dpl,r2
      00441A 8B 83            [24] 4292 	mov	dph,r3
      00441C 8C F0            [24] 4293 	mov	b,r4
      00441E 12 26 B5         [24] 4294 	lcall	_stack_push
      004421 E5 81            [12] 4295 	mov	a,sp
      004423 24 FC            [12] 4296 	add	a,#0xfc
      004425 F5 81            [12] 4297 	mov	sp,a
                                   4298 ;	calc.c:218: printstr("\r\nstack underflow\r\n");
      004427 90 7E 34         [24] 4299 	mov	dptr,#___str_9
      00442A 75 F0 80         [24] 4300 	mov	b,#0x80
      00442D 12 5E 27         [24] 4301 	lcall	_printstr
      004430 02 4F 17         [24] 4302 	ljmp	00249$
      004433                       4303 00197$:
                                   4304 ;	calc.c:219: } else if (!d0) {
      004433 E5 08            [12] 4305 	mov	a,_bp
      004435 24 1A            [12] 4306 	add	a,#0x1a
      004437 F8               [12] 4307 	mov	r0,a
      004438 E6               [12] 4308 	mov	a,@r0
      004439 08               [12] 4309 	inc	r0
      00443A 46               [12] 4310 	orl	a,@r0
      00443B 08               [12] 4311 	inc	r0
      00443C 46               [12] 4312 	orl	a,@r0
      00443D 08               [12] 4313 	inc	r0
      00443E 46               [12] 4314 	orl	a,@r0
      00443F 60 03            [24] 4315 	jz	00580$
      004441 02 44 CC         [24] 4316 	ljmp	00194$
      004444                       4317 00580$:
                                   4318 ;	calc.c:220: (void)stack_push(ctx->ps, d1);
      004444 E5 08            [12] 4319 	mov	a,_bp
      004446 24 13            [12] 4320 	add	a,#0x13
      004448 F8               [12] 4321 	mov	r0,a
      004449 86 82            [24] 4322 	mov	dpl,@r0
      00444B 08               [12] 4323 	inc	r0
      00444C 86 83            [24] 4324 	mov	dph,@r0
      00444E 08               [12] 4325 	inc	r0
      00444F 86 F0            [24] 4326 	mov	b,@r0
      004451 12 65 6C         [24] 4327 	lcall	__gptrget
      004454 FA               [12] 4328 	mov	r2,a
      004455 A3               [24] 4329 	inc	dptr
      004456 12 65 6C         [24] 4330 	lcall	__gptrget
      004459 FB               [12] 4331 	mov	r3,a
      00445A A3               [24] 4332 	inc	dptr
      00445B 12 65 6C         [24] 4333 	lcall	__gptrget
      00445E FC               [12] 4334 	mov	r4,a
      00445F E5 08            [12] 4335 	mov	a,_bp
      004461 24 1E            [12] 4336 	add	a,#0x1e
      004463 F8               [12] 4337 	mov	r0,a
      004464 E6               [12] 4338 	mov	a,@r0
      004465 C0 E0            [24] 4339 	push	acc
      004467 08               [12] 4340 	inc	r0
      004468 E6               [12] 4341 	mov	a,@r0
      004469 C0 E0            [24] 4342 	push	acc
      00446B 08               [12] 4343 	inc	r0
      00446C E6               [12] 4344 	mov	a,@r0
      00446D C0 E0            [24] 4345 	push	acc
      00446F 08               [12] 4346 	inc	r0
      004470 E6               [12] 4347 	mov	a,@r0
      004471 C0 E0            [24] 4348 	push	acc
      004473 8A 82            [24] 4349 	mov	dpl,r2
      004475 8B 83            [24] 4350 	mov	dph,r3
      004477 8C F0            [24] 4351 	mov	b,r4
      004479 12 26 B5         [24] 4352 	lcall	_stack_push
      00447C E5 81            [12] 4353 	mov	a,sp
      00447E 24 FC            [12] 4354 	add	a,#0xfc
      004480 F5 81            [12] 4355 	mov	sp,a
                                   4356 ;	calc.c:221: (void)stack_push(ctx->ps, d0);			
      004482 E5 08            [12] 4357 	mov	a,_bp
      004484 24 13            [12] 4358 	add	a,#0x13
      004486 F8               [12] 4359 	mov	r0,a
      004487 86 82            [24] 4360 	mov	dpl,@r0
      004489 08               [12] 4361 	inc	r0
      00448A 86 83            [24] 4362 	mov	dph,@r0
      00448C 08               [12] 4363 	inc	r0
      00448D 86 F0            [24] 4364 	mov	b,@r0
      00448F 12 65 6C         [24] 4365 	lcall	__gptrget
      004492 FA               [12] 4366 	mov	r2,a
      004493 A3               [24] 4367 	inc	dptr
      004494 12 65 6C         [24] 4368 	lcall	__gptrget
      004497 FB               [12] 4369 	mov	r3,a
      004498 A3               [24] 4370 	inc	dptr
      004499 12 65 6C         [24] 4371 	lcall	__gptrget
      00449C FC               [12] 4372 	mov	r4,a
      00449D E5 08            [12] 4373 	mov	a,_bp
      00449F 24 1A            [12] 4374 	add	a,#0x1a
      0044A1 F8               [12] 4375 	mov	r0,a
      0044A2 E6               [12] 4376 	mov	a,@r0
      0044A3 C0 E0            [24] 4377 	push	acc
      0044A5 08               [12] 4378 	inc	r0
      0044A6 E6               [12] 4379 	mov	a,@r0
      0044A7 C0 E0            [24] 4380 	push	acc
      0044A9 08               [12] 4381 	inc	r0
      0044AA E6               [12] 4382 	mov	a,@r0
      0044AB C0 E0            [24] 4383 	push	acc
      0044AD 08               [12] 4384 	inc	r0
      0044AE E6               [12] 4385 	mov	a,@r0
      0044AF C0 E0            [24] 4386 	push	acc
      0044B1 8A 82            [24] 4387 	mov	dpl,r2
      0044B3 8B 83            [24] 4388 	mov	dph,r3
      0044B5 8C F0            [24] 4389 	mov	b,r4
      0044B7 12 26 B5         [24] 4390 	lcall	_stack_push
      0044BA E5 81            [12] 4391 	mov	a,sp
      0044BC 24 FC            [12] 4392 	add	a,#0xfc
      0044BE F5 81            [12] 4393 	mov	sp,a
                                   4394 ;	calc.c:222: printstr("\r\ndivision by zero\r\n");
      0044C0 90 7E 96         [24] 4395 	mov	dptr,#___str_13
      0044C3 75 F0 80         [24] 4396 	mov	b,#0x80
      0044C6 12 5E 27         [24] 4397 	lcall	_printstr
      0044C9 02 4F 17         [24] 4398 	ljmp	00249$
      0044CC                       4399 00194$:
                                   4400 ;	calc.c:224: if (ctx->digit[0] == '%') d1 %= d0;
      0044CC 8D 82            [24] 4401 	mov	dpl,r5
      0044CE 8E 83            [24] 4402 	mov	dph,r6
      0044D0 8F F0            [24] 4403 	mov	b,r7
      0044D2 12 65 6C         [24] 4404 	lcall	__gptrget
      0044D5 FD               [12] 4405 	mov	r5,a
      0044D6 BD 25 45         [24] 4406 	cjne	r5,#0x25,00191$
      0044D9 E5 08            [12] 4407 	mov	a,_bp
      0044DB 24 1A            [12] 4408 	add	a,#0x1a
      0044DD F8               [12] 4409 	mov	r0,a
      0044DE E6               [12] 4410 	mov	a,@r0
      0044DF C0 E0            [24] 4411 	push	acc
      0044E1 08               [12] 4412 	inc	r0
      0044E2 E6               [12] 4413 	mov	a,@r0
      0044E3 C0 E0            [24] 4414 	push	acc
      0044E5 08               [12] 4415 	inc	r0
      0044E6 E6               [12] 4416 	mov	a,@r0
      0044E7 C0 E0            [24] 4417 	push	acc
      0044E9 08               [12] 4418 	inc	r0
      0044EA E6               [12] 4419 	mov	a,@r0
      0044EB C0 E0            [24] 4420 	push	acc
      0044ED E5 08            [12] 4421 	mov	a,_bp
      0044EF 24 1E            [12] 4422 	add	a,#0x1e
      0044F1 F8               [12] 4423 	mov	r0,a
      0044F2 86 82            [24] 4424 	mov	dpl,@r0
      0044F4 08               [12] 4425 	inc	r0
      0044F5 86 83            [24] 4426 	mov	dph,@r0
      0044F7 08               [12] 4427 	inc	r0
      0044F8 86 F0            [24] 4428 	mov	b,@r0
      0044FA 08               [12] 4429 	inc	r0
      0044FB E6               [12] 4430 	mov	a,@r0
      0044FC 12 61 AA         [24] 4431 	lcall	__modslong
      0044FF AC 82            [24] 4432 	mov	r4,dpl
      004501 AD 83            [24] 4433 	mov	r5,dph
      004503 AE F0            [24] 4434 	mov	r6,b
      004505 FF               [12] 4435 	mov	r7,a
      004506 E5 81            [12] 4436 	mov	a,sp
      004508 24 FC            [12] 4437 	add	a,#0xfc
      00450A F5 81            [12] 4438 	mov	sp,a
      00450C E5 08            [12] 4439 	mov	a,_bp
      00450E 24 1E            [12] 4440 	add	a,#0x1e
      004510 F8               [12] 4441 	mov	r0,a
      004511 A6 04            [24] 4442 	mov	@r0,ar4
      004513 08               [12] 4443 	inc	r0
      004514 A6 05            [24] 4444 	mov	@r0,ar5
      004516 08               [12] 4445 	inc	r0
      004517 A6 06            [24] 4446 	mov	@r0,ar6
      004519 08               [12] 4447 	inc	r0
      00451A A6 07            [24] 4448 	mov	@r0,ar7
      00451C 80 5F            [24] 4449 	sjmp	00192$
      00451E                       4450 00191$:
                                   4451 ;	calc.c:225: else d1 = (unsigned long)d1 % (unsigned long)d0;
      00451E E5 08            [12] 4452 	mov	a,_bp
      004520 24 1E            [12] 4453 	add	a,#0x1e
      004522 F8               [12] 4454 	mov	r0,a
      004523 E5 08            [12] 4455 	mov	a,_bp
      004525 24 0F            [12] 4456 	add	a,#0x0f
      004527 F9               [12] 4457 	mov	r1,a
      004528 E6               [12] 4458 	mov	a,@r0
      004529 F7               [12] 4459 	mov	@r1,a
      00452A 08               [12] 4460 	inc	r0
      00452B 09               [12] 4461 	inc	r1
      00452C E6               [12] 4462 	mov	a,@r0
      00452D F7               [12] 4463 	mov	@r1,a
      00452E 08               [12] 4464 	inc	r0
      00452F 09               [12] 4465 	inc	r1
      004530 E6               [12] 4466 	mov	a,@r0
      004531 F7               [12] 4467 	mov	@r1,a
      004532 08               [12] 4468 	inc	r0
      004533 09               [12] 4469 	inc	r1
      004534 E6               [12] 4470 	mov	a,@r0
      004535 F7               [12] 4471 	mov	@r1,a
      004536 E5 08            [12] 4472 	mov	a,_bp
      004538 24 1A            [12] 4473 	add	a,#0x1a
      00453A F8               [12] 4474 	mov	r0,a
      00453B 86 02            [24] 4475 	mov	ar2,@r0
      00453D 08               [12] 4476 	inc	r0
      00453E 86 03            [24] 4477 	mov	ar3,@r0
      004540 08               [12] 4478 	inc	r0
      004541 86 06            [24] 4479 	mov	ar6,@r0
      004543 08               [12] 4480 	inc	r0
      004544 86 07            [24] 4481 	mov	ar7,@r0
      004546 C0 02            [24] 4482 	push	ar2
      004548 C0 03            [24] 4483 	push	ar3
      00454A C0 06            [24] 4484 	push	ar6
      00454C C0 07            [24] 4485 	push	ar7
      00454E E5 08            [12] 4486 	mov	a,_bp
      004550 24 0F            [12] 4487 	add	a,#0x0f
      004552 F8               [12] 4488 	mov	r0,a
      004553 86 82            [24] 4489 	mov	dpl,@r0
      004555 08               [12] 4490 	inc	r0
      004556 86 83            [24] 4491 	mov	dph,@r0
      004558 08               [12] 4492 	inc	r0
      004559 86 F0            [24] 4493 	mov	b,@r0
      00455B 08               [12] 4494 	inc	r0
      00455C E6               [12] 4495 	mov	a,@r0
      00455D 12 62 A1         [24] 4496 	lcall	__modulong
      004560 AC 82            [24] 4497 	mov	r4,dpl
      004562 AD 83            [24] 4498 	mov	r5,dph
      004564 AE F0            [24] 4499 	mov	r6,b
      004566 FF               [12] 4500 	mov	r7,a
      004567 E5 81            [12] 4501 	mov	a,sp
      004569 24 FC            [12] 4502 	add	a,#0xfc
      00456B F5 81            [12] 4503 	mov	sp,a
      00456D E5 08            [12] 4504 	mov	a,_bp
      00456F 24 1E            [12] 4505 	add	a,#0x1e
      004571 F8               [12] 4506 	mov	r0,a
      004572 A6 04            [24] 4507 	mov	@r0,ar4
      004574 08               [12] 4508 	inc	r0
      004575 A6 05            [24] 4509 	mov	@r0,ar5
      004577 08               [12] 4510 	inc	r0
      004578 A6 06            [24] 4511 	mov	@r0,ar6
      00457A 08               [12] 4512 	inc	r0
      00457B A6 07            [24] 4513 	mov	@r0,ar7
      00457D                       4514 00192$:
                                   4515 ;	calc.c:226: (void)stack_push(ctx->ps, d1);
      00457D E5 08            [12] 4516 	mov	a,_bp
      00457F 24 13            [12] 4517 	add	a,#0x13
      004581 F8               [12] 4518 	mov	r0,a
      004582 86 82            [24] 4519 	mov	dpl,@r0
      004584 08               [12] 4520 	inc	r0
      004585 86 83            [24] 4521 	mov	dph,@r0
      004587 08               [12] 4522 	inc	r0
      004588 86 F0            [24] 4523 	mov	b,@r0
      00458A 12 65 6C         [24] 4524 	lcall	__gptrget
      00458D FD               [12] 4525 	mov	r5,a
      00458E A3               [24] 4526 	inc	dptr
      00458F 12 65 6C         [24] 4527 	lcall	__gptrget
      004592 FE               [12] 4528 	mov	r6,a
      004593 A3               [24] 4529 	inc	dptr
      004594 12 65 6C         [24] 4530 	lcall	__gptrget
      004597 FF               [12] 4531 	mov	r7,a
      004598 E5 08            [12] 4532 	mov	a,_bp
      00459A 24 1E            [12] 4533 	add	a,#0x1e
      00459C F8               [12] 4534 	mov	r0,a
      00459D E6               [12] 4535 	mov	a,@r0
      00459E C0 E0            [24] 4536 	push	acc
      0045A0 08               [12] 4537 	inc	r0
      0045A1 E6               [12] 4538 	mov	a,@r0
      0045A2 C0 E0            [24] 4539 	push	acc
      0045A4 08               [12] 4540 	inc	r0
      0045A5 E6               [12] 4541 	mov	a,@r0
      0045A6 C0 E0            [24] 4542 	push	acc
      0045A8 08               [12] 4543 	inc	r0
      0045A9 E6               [12] 4544 	mov	a,@r0
      0045AA C0 E0            [24] 4545 	push	acc
      0045AC 8D 82            [24] 4546 	mov	dpl,r5
      0045AE 8E 83            [24] 4547 	mov	dph,r6
      0045B0 8F F0            [24] 4548 	mov	b,r7
      0045B2 12 26 B5         [24] 4549 	lcall	_stack_push
      0045B5 E5 81            [12] 4550 	mov	a,sp
      0045B7 24 FC            [12] 4551 	add	a,#0xfc
      0045B9 F5 81            [12] 4552 	mov	sp,a
                                   4553 ;	calc.c:228: break;
      0045BB 02 4F 17         [24] 4554 	ljmp	00249$
                                   4555 ;	calc.c:229: case '&':
      0045BE                       4556 00202$:
                                   4557 ;	calc.c:230: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0045BE E5 08            [12] 4558 	mov	a,_bp
      0045C0 24 1A            [12] 4559 	add	a,#0x1a
      0045C2 FF               [12] 4560 	mov	r7,a
      0045C3 E5 08            [12] 4561 	mov	a,_bp
      0045C5 24 13            [12] 4562 	add	a,#0x13
      0045C7 F8               [12] 4563 	mov	r0,a
      0045C8 A6 07            [24] 4564 	mov	@r0,ar7
      0045CA 08               [12] 4565 	inc	r0
      0045CB 76 00            [12] 4566 	mov	@r0,#0x00
      0045CD 08               [12] 4567 	inc	r0
      0045CE 76 40            [12] 4568 	mov	@r0,#0x40
      0045D0 E5 08            [12] 4569 	mov	a,_bp
      0045D2 24 17            [12] 4570 	add	a,#0x17
      0045D4 F8               [12] 4571 	mov	r0,a
      0045D5 74 11            [12] 4572 	mov	a,#0x11
      0045D7 26               [12] 4573 	add	a,@r0
      0045D8 FA               [12] 4574 	mov	r2,a
      0045D9 74 40            [12] 4575 	mov	a,#0x40
      0045DB 08               [12] 4576 	inc	r0
      0045DC 36               [12] 4577 	addc	a,@r0
      0045DD FB               [12] 4578 	mov	r3,a
      0045DE 08               [12] 4579 	inc	r0
      0045DF 86 04            [24] 4580 	mov	ar4,@r0
      0045E1 8A 82            [24] 4581 	mov	dpl,r2
      0045E3 8B 83            [24] 4582 	mov	dph,r3
      0045E5 8C F0            [24] 4583 	mov	b,r4
      0045E7 12 65 6C         [24] 4584 	lcall	__gptrget
      0045EA FD               [12] 4585 	mov	r5,a
      0045EB A3               [24] 4586 	inc	dptr
      0045EC 12 65 6C         [24] 4587 	lcall	__gptrget
      0045EF FE               [12] 4588 	mov	r6,a
      0045F0 A3               [24] 4589 	inc	dptr
      0045F1 12 65 6C         [24] 4590 	lcall	__gptrget
      0045F4 FF               [12] 4591 	mov	r7,a
      0045F5 C0 04            [24] 4592 	push	ar4
      0045F7 C0 03            [24] 4593 	push	ar3
      0045F9 C0 02            [24] 4594 	push	ar2
      0045FB E5 08            [12] 4595 	mov	a,_bp
      0045FD 24 13            [12] 4596 	add	a,#0x13
      0045FF F8               [12] 4597 	mov	r0,a
      004600 E6               [12] 4598 	mov	a,@r0
      004601 C0 E0            [24] 4599 	push	acc
      004603 08               [12] 4600 	inc	r0
      004604 E6               [12] 4601 	mov	a,@r0
      004605 C0 E0            [24] 4602 	push	acc
      004607 08               [12] 4603 	inc	r0
      004608 E6               [12] 4604 	mov	a,@r0
      004609 C0 E0            [24] 4605 	push	acc
      00460B 8D 82            [24] 4606 	mov	dpl,r5
      00460D 8E 83            [24] 4607 	mov	dph,r6
      00460F 8F F0            [24] 4608 	mov	b,r7
      004611 12 27 83         [24] 4609 	lcall	_stack_pop
      004614 AE 82            [24] 4610 	mov	r6,dpl
      004616 AF 83            [24] 4611 	mov	r7,dph
      004618 15 81            [12] 4612 	dec	sp
      00461A 15 81            [12] 4613 	dec	sp
      00461C 15 81            [12] 4614 	dec	sp
      00461E D0 02            [24] 4615 	pop	ar2
      004620 D0 03            [24] 4616 	pop	ar3
      004622 D0 04            [24] 4617 	pop	ar4
      004624 EE               [12] 4618 	mov	a,r6
      004625 4F               [12] 4619 	orl	a,r7
      004626 70 0C            [24] 4620 	jnz	00207$
      004628 90 7E 34         [24] 4621 	mov	dptr,#___str_9
      00462B 75 F0 80         [24] 4622 	mov	b,#0x80
      00462E 12 5E 27         [24] 4623 	lcall	_printstr
      004631 02 4F 17         [24] 4624 	ljmp	00249$
      004634                       4625 00207$:
                                   4626 ;	calc.c:231: else if (!stack_pop(ctx->ps, &d1)) {
      004634 E5 08            [12] 4627 	mov	a,_bp
      004636 24 1E            [12] 4628 	add	a,#0x1e
      004638 FF               [12] 4629 	mov	r7,a
      004639 E5 08            [12] 4630 	mov	a,_bp
      00463B 24 13            [12] 4631 	add	a,#0x13
      00463D F8               [12] 4632 	mov	r0,a
      00463E A6 07            [24] 4633 	mov	@r0,ar7
      004640 08               [12] 4634 	inc	r0
      004641 76 00            [12] 4635 	mov	@r0,#0x00
      004643 08               [12] 4636 	inc	r0
      004644 76 40            [12] 4637 	mov	@r0,#0x40
      004646 8A 82            [24] 4638 	mov	dpl,r2
      004648 8B 83            [24] 4639 	mov	dph,r3
      00464A 8C F0            [24] 4640 	mov	b,r4
      00464C 12 65 6C         [24] 4641 	lcall	__gptrget
      00464F FD               [12] 4642 	mov	r5,a
      004650 A3               [24] 4643 	inc	dptr
      004651 12 65 6C         [24] 4644 	lcall	__gptrget
      004654 FE               [12] 4645 	mov	r6,a
      004655 A3               [24] 4646 	inc	dptr
      004656 12 65 6C         [24] 4647 	lcall	__gptrget
      004659 FF               [12] 4648 	mov	r7,a
      00465A C0 04            [24] 4649 	push	ar4
      00465C C0 03            [24] 4650 	push	ar3
      00465E C0 02            [24] 4651 	push	ar2
      004660 E5 08            [12] 4652 	mov	a,_bp
      004662 24 13            [12] 4653 	add	a,#0x13
      004664 F8               [12] 4654 	mov	r0,a
      004665 E6               [12] 4655 	mov	a,@r0
      004666 C0 E0            [24] 4656 	push	acc
      004668 08               [12] 4657 	inc	r0
      004669 E6               [12] 4658 	mov	a,@r0
      00466A C0 E0            [24] 4659 	push	acc
      00466C 08               [12] 4660 	inc	r0
      00466D E6               [12] 4661 	mov	a,@r0
      00466E C0 E0            [24] 4662 	push	acc
      004670 8D 82            [24] 4663 	mov	dpl,r5
      004672 8E 83            [24] 4664 	mov	dph,r6
      004674 8F F0            [24] 4665 	mov	b,r7
      004676 12 27 83         [24] 4666 	lcall	_stack_pop
      004679 AE 82            [24] 4667 	mov	r6,dpl
      00467B AF 83            [24] 4668 	mov	r7,dph
      00467D 15 81            [12] 4669 	dec	sp
      00467F 15 81            [12] 4670 	dec	sp
      004681 15 81            [12] 4671 	dec	sp
      004683 D0 02            [24] 4672 	pop	ar2
      004685 D0 03            [24] 4673 	pop	ar3
      004687 D0 04            [24] 4674 	pop	ar4
      004689 EE               [12] 4675 	mov	a,r6
      00468A 4F               [12] 4676 	orl	a,r7
      00468B 70 43            [24] 4677 	jnz	00204$
                                   4678 ;	calc.c:232: (void)stack_push(ctx->ps, d0);
      00468D 8A 82            [24] 4679 	mov	dpl,r2
      00468F 8B 83            [24] 4680 	mov	dph,r3
      004691 8C F0            [24] 4681 	mov	b,r4
      004693 12 65 6C         [24] 4682 	lcall	__gptrget
      004696 FD               [12] 4683 	mov	r5,a
      004697 A3               [24] 4684 	inc	dptr
      004698 12 65 6C         [24] 4685 	lcall	__gptrget
      00469B FE               [12] 4686 	mov	r6,a
      00469C A3               [24] 4687 	inc	dptr
      00469D 12 65 6C         [24] 4688 	lcall	__gptrget
      0046A0 FF               [12] 4689 	mov	r7,a
      0046A1 E5 08            [12] 4690 	mov	a,_bp
      0046A3 24 1A            [12] 4691 	add	a,#0x1a
      0046A5 F8               [12] 4692 	mov	r0,a
      0046A6 E6               [12] 4693 	mov	a,@r0
      0046A7 C0 E0            [24] 4694 	push	acc
      0046A9 08               [12] 4695 	inc	r0
      0046AA E6               [12] 4696 	mov	a,@r0
      0046AB C0 E0            [24] 4697 	push	acc
      0046AD 08               [12] 4698 	inc	r0
      0046AE E6               [12] 4699 	mov	a,@r0
      0046AF C0 E0            [24] 4700 	push	acc
      0046B1 08               [12] 4701 	inc	r0
      0046B2 E6               [12] 4702 	mov	a,@r0
      0046B3 C0 E0            [24] 4703 	push	acc
      0046B5 8D 82            [24] 4704 	mov	dpl,r5
      0046B7 8E 83            [24] 4705 	mov	dph,r6
      0046B9 8F F0            [24] 4706 	mov	b,r7
      0046BB 12 26 B5         [24] 4707 	lcall	_stack_push
      0046BE E5 81            [12] 4708 	mov	a,sp
      0046C0 24 FC            [12] 4709 	add	a,#0xfc
      0046C2 F5 81            [12] 4710 	mov	sp,a
                                   4711 ;	calc.c:233: printstr("\r\nstack underflow\r\n");
      0046C4 90 7E 34         [24] 4712 	mov	dptr,#___str_9
      0046C7 75 F0 80         [24] 4713 	mov	b,#0x80
      0046CA 12 5E 27         [24] 4714 	lcall	_printstr
      0046CD 02 4F 17         [24] 4715 	ljmp	00249$
      0046D0                       4716 00204$:
                                   4717 ;	calc.c:235: d1 &= d0;
      0046D0 E5 08            [12] 4718 	mov	a,_bp
      0046D2 24 1E            [12] 4719 	add	a,#0x1e
      0046D4 F8               [12] 4720 	mov	r0,a
      0046D5 E5 08            [12] 4721 	mov	a,_bp
      0046D7 24 1A            [12] 4722 	add	a,#0x1a
      0046D9 F9               [12] 4723 	mov	r1,a
      0046DA E7               [12] 4724 	mov	a,@r1
      0046DB 56               [12] 4725 	anl	a,@r0
      0046DC F6               [12] 4726 	mov	@r0,a
      0046DD 09               [12] 4727 	inc	r1
      0046DE E7               [12] 4728 	mov	a,@r1
      0046DF 08               [12] 4729 	inc	r0
      0046E0 56               [12] 4730 	anl	a,@r0
      0046E1 F6               [12] 4731 	mov	@r0,a
      0046E2 09               [12] 4732 	inc	r1
      0046E3 E7               [12] 4733 	mov	a,@r1
      0046E4 08               [12] 4734 	inc	r0
      0046E5 56               [12] 4735 	anl	a,@r0
      0046E6 F6               [12] 4736 	mov	@r0,a
      0046E7 09               [12] 4737 	inc	r1
      0046E8 E7               [12] 4738 	mov	a,@r1
      0046E9 08               [12] 4739 	inc	r0
      0046EA 56               [12] 4740 	anl	a,@r0
      0046EB F6               [12] 4741 	mov	@r0,a
                                   4742 ;	calc.c:236: (void)stack_push(ctx->ps, d1);
      0046EC 8A 82            [24] 4743 	mov	dpl,r2
      0046EE 8B 83            [24] 4744 	mov	dph,r3
      0046F0 8C F0            [24] 4745 	mov	b,r4
      0046F2 12 65 6C         [24] 4746 	lcall	__gptrget
      0046F5 FA               [12] 4747 	mov	r2,a
      0046F6 A3               [24] 4748 	inc	dptr
      0046F7 12 65 6C         [24] 4749 	lcall	__gptrget
      0046FA FB               [12] 4750 	mov	r3,a
      0046FB A3               [24] 4751 	inc	dptr
      0046FC 12 65 6C         [24] 4752 	lcall	__gptrget
      0046FF FC               [12] 4753 	mov	r4,a
      004700 E5 08            [12] 4754 	mov	a,_bp
      004702 24 1E            [12] 4755 	add	a,#0x1e
      004704 F8               [12] 4756 	mov	r0,a
      004705 E6               [12] 4757 	mov	a,@r0
      004706 C0 E0            [24] 4758 	push	acc
      004708 08               [12] 4759 	inc	r0
      004709 E6               [12] 4760 	mov	a,@r0
      00470A C0 E0            [24] 4761 	push	acc
      00470C 08               [12] 4762 	inc	r0
      00470D E6               [12] 4763 	mov	a,@r0
      00470E C0 E0            [24] 4764 	push	acc
      004710 08               [12] 4765 	inc	r0
      004711 E6               [12] 4766 	mov	a,@r0
      004712 C0 E0            [24] 4767 	push	acc
      004714 8A 82            [24] 4768 	mov	dpl,r2
      004716 8B 83            [24] 4769 	mov	dph,r3
      004718 8C F0            [24] 4770 	mov	b,r4
      00471A 12 26 B5         [24] 4771 	lcall	_stack_push
      00471D E5 81            [12] 4772 	mov	a,sp
      00471F 24 FC            [12] 4773 	add	a,#0xfc
      004721 F5 81            [12] 4774 	mov	sp,a
                                   4775 ;	calc.c:238: break;
      004723 02 4F 17         [24] 4776 	ljmp	00249$
                                   4777 ;	calc.c:239: case '|':
      004726                       4778 00209$:
                                   4779 ;	calc.c:240: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004726 E5 08            [12] 4780 	mov	a,_bp
      004728 24 1A            [12] 4781 	add	a,#0x1a
      00472A FF               [12] 4782 	mov	r7,a
      00472B E5 08            [12] 4783 	mov	a,_bp
      00472D 24 13            [12] 4784 	add	a,#0x13
      00472F F8               [12] 4785 	mov	r0,a
      004730 A6 07            [24] 4786 	mov	@r0,ar7
      004732 08               [12] 4787 	inc	r0
      004733 76 00            [12] 4788 	mov	@r0,#0x00
      004735 08               [12] 4789 	inc	r0
      004736 76 40            [12] 4790 	mov	@r0,#0x40
      004738 E5 08            [12] 4791 	mov	a,_bp
      00473A 24 17            [12] 4792 	add	a,#0x17
      00473C F8               [12] 4793 	mov	r0,a
      00473D 74 11            [12] 4794 	mov	a,#0x11
      00473F 26               [12] 4795 	add	a,@r0
      004740 FA               [12] 4796 	mov	r2,a
      004741 74 40            [12] 4797 	mov	a,#0x40
      004743 08               [12] 4798 	inc	r0
      004744 36               [12] 4799 	addc	a,@r0
      004745 FB               [12] 4800 	mov	r3,a
      004746 08               [12] 4801 	inc	r0
      004747 86 04            [24] 4802 	mov	ar4,@r0
      004749 8A 82            [24] 4803 	mov	dpl,r2
      00474B 8B 83            [24] 4804 	mov	dph,r3
      00474D 8C F0            [24] 4805 	mov	b,r4
      00474F 12 65 6C         [24] 4806 	lcall	__gptrget
      004752 FD               [12] 4807 	mov	r5,a
      004753 A3               [24] 4808 	inc	dptr
      004754 12 65 6C         [24] 4809 	lcall	__gptrget
      004757 FE               [12] 4810 	mov	r6,a
      004758 A3               [24] 4811 	inc	dptr
      004759 12 65 6C         [24] 4812 	lcall	__gptrget
      00475C FF               [12] 4813 	mov	r7,a
      00475D C0 04            [24] 4814 	push	ar4
      00475F C0 03            [24] 4815 	push	ar3
      004761 C0 02            [24] 4816 	push	ar2
      004763 E5 08            [12] 4817 	mov	a,_bp
      004765 24 13            [12] 4818 	add	a,#0x13
      004767 F8               [12] 4819 	mov	r0,a
      004768 E6               [12] 4820 	mov	a,@r0
      004769 C0 E0            [24] 4821 	push	acc
      00476B 08               [12] 4822 	inc	r0
      00476C E6               [12] 4823 	mov	a,@r0
      00476D C0 E0            [24] 4824 	push	acc
      00476F 08               [12] 4825 	inc	r0
      004770 E6               [12] 4826 	mov	a,@r0
      004771 C0 E0            [24] 4827 	push	acc
      004773 8D 82            [24] 4828 	mov	dpl,r5
      004775 8E 83            [24] 4829 	mov	dph,r6
      004777 8F F0            [24] 4830 	mov	b,r7
      004779 12 27 83         [24] 4831 	lcall	_stack_pop
      00477C AE 82            [24] 4832 	mov	r6,dpl
      00477E AF 83            [24] 4833 	mov	r7,dph
      004780 15 81            [12] 4834 	dec	sp
      004782 15 81            [12] 4835 	dec	sp
      004784 15 81            [12] 4836 	dec	sp
      004786 D0 02            [24] 4837 	pop	ar2
      004788 D0 03            [24] 4838 	pop	ar3
      00478A D0 04            [24] 4839 	pop	ar4
      00478C EE               [12] 4840 	mov	a,r6
      00478D 4F               [12] 4841 	orl	a,r7
      00478E 70 0C            [24] 4842 	jnz	00214$
      004790 90 7E 34         [24] 4843 	mov	dptr,#___str_9
      004793 75 F0 80         [24] 4844 	mov	b,#0x80
      004796 12 5E 27         [24] 4845 	lcall	_printstr
      004799 02 4F 17         [24] 4846 	ljmp	00249$
      00479C                       4847 00214$:
                                   4848 ;	calc.c:241: else if (!stack_pop(ctx->ps, &d1)) {
      00479C E5 08            [12] 4849 	mov	a,_bp
      00479E 24 1E            [12] 4850 	add	a,#0x1e
      0047A0 FF               [12] 4851 	mov	r7,a
      0047A1 E5 08            [12] 4852 	mov	a,_bp
      0047A3 24 13            [12] 4853 	add	a,#0x13
      0047A5 F8               [12] 4854 	mov	r0,a
      0047A6 A6 07            [24] 4855 	mov	@r0,ar7
      0047A8 08               [12] 4856 	inc	r0
      0047A9 76 00            [12] 4857 	mov	@r0,#0x00
      0047AB 08               [12] 4858 	inc	r0
      0047AC 76 40            [12] 4859 	mov	@r0,#0x40
      0047AE 8A 82            [24] 4860 	mov	dpl,r2
      0047B0 8B 83            [24] 4861 	mov	dph,r3
      0047B2 8C F0            [24] 4862 	mov	b,r4
      0047B4 12 65 6C         [24] 4863 	lcall	__gptrget
      0047B7 FD               [12] 4864 	mov	r5,a
      0047B8 A3               [24] 4865 	inc	dptr
      0047B9 12 65 6C         [24] 4866 	lcall	__gptrget
      0047BC FE               [12] 4867 	mov	r6,a
      0047BD A3               [24] 4868 	inc	dptr
      0047BE 12 65 6C         [24] 4869 	lcall	__gptrget
      0047C1 FF               [12] 4870 	mov	r7,a
      0047C2 C0 04            [24] 4871 	push	ar4
      0047C4 C0 03            [24] 4872 	push	ar3
      0047C6 C0 02            [24] 4873 	push	ar2
      0047C8 E5 08            [12] 4874 	mov	a,_bp
      0047CA 24 13            [12] 4875 	add	a,#0x13
      0047CC F8               [12] 4876 	mov	r0,a
      0047CD E6               [12] 4877 	mov	a,@r0
      0047CE C0 E0            [24] 4878 	push	acc
      0047D0 08               [12] 4879 	inc	r0
      0047D1 E6               [12] 4880 	mov	a,@r0
      0047D2 C0 E0            [24] 4881 	push	acc
      0047D4 08               [12] 4882 	inc	r0
      0047D5 E6               [12] 4883 	mov	a,@r0
      0047D6 C0 E0            [24] 4884 	push	acc
      0047D8 8D 82            [24] 4885 	mov	dpl,r5
      0047DA 8E 83            [24] 4886 	mov	dph,r6
      0047DC 8F F0            [24] 4887 	mov	b,r7
      0047DE 12 27 83         [24] 4888 	lcall	_stack_pop
      0047E1 AE 82            [24] 4889 	mov	r6,dpl
      0047E3 AF 83            [24] 4890 	mov	r7,dph
      0047E5 15 81            [12] 4891 	dec	sp
      0047E7 15 81            [12] 4892 	dec	sp
      0047E9 15 81            [12] 4893 	dec	sp
      0047EB D0 02            [24] 4894 	pop	ar2
      0047ED D0 03            [24] 4895 	pop	ar3
      0047EF D0 04            [24] 4896 	pop	ar4
      0047F1 EE               [12] 4897 	mov	a,r6
      0047F2 4F               [12] 4898 	orl	a,r7
      0047F3 70 43            [24] 4899 	jnz	00211$
                                   4900 ;	calc.c:242: (void)stack_push(ctx->ps, d0);
      0047F5 8A 82            [24] 4901 	mov	dpl,r2
      0047F7 8B 83            [24] 4902 	mov	dph,r3
      0047F9 8C F0            [24] 4903 	mov	b,r4
      0047FB 12 65 6C         [24] 4904 	lcall	__gptrget
      0047FE FD               [12] 4905 	mov	r5,a
      0047FF A3               [24] 4906 	inc	dptr
      004800 12 65 6C         [24] 4907 	lcall	__gptrget
      004803 FE               [12] 4908 	mov	r6,a
      004804 A3               [24] 4909 	inc	dptr
      004805 12 65 6C         [24] 4910 	lcall	__gptrget
      004808 FF               [12] 4911 	mov	r7,a
      004809 E5 08            [12] 4912 	mov	a,_bp
      00480B 24 1A            [12] 4913 	add	a,#0x1a
      00480D F8               [12] 4914 	mov	r0,a
      00480E E6               [12] 4915 	mov	a,@r0
      00480F C0 E0            [24] 4916 	push	acc
      004811 08               [12] 4917 	inc	r0
      004812 E6               [12] 4918 	mov	a,@r0
      004813 C0 E0            [24] 4919 	push	acc
      004815 08               [12] 4920 	inc	r0
      004816 E6               [12] 4921 	mov	a,@r0
      004817 C0 E0            [24] 4922 	push	acc
      004819 08               [12] 4923 	inc	r0
      00481A E6               [12] 4924 	mov	a,@r0
      00481B C0 E0            [24] 4925 	push	acc
      00481D 8D 82            [24] 4926 	mov	dpl,r5
      00481F 8E 83            [24] 4927 	mov	dph,r6
      004821 8F F0            [24] 4928 	mov	b,r7
      004823 12 26 B5         [24] 4929 	lcall	_stack_push
      004826 E5 81            [12] 4930 	mov	a,sp
      004828 24 FC            [12] 4931 	add	a,#0xfc
      00482A F5 81            [12] 4932 	mov	sp,a
                                   4933 ;	calc.c:243: printstr("\r\nstack underflow\r\n");
      00482C 90 7E 34         [24] 4934 	mov	dptr,#___str_9
      00482F 75 F0 80         [24] 4935 	mov	b,#0x80
      004832 12 5E 27         [24] 4936 	lcall	_printstr
      004835 02 4F 17         [24] 4937 	ljmp	00249$
      004838                       4938 00211$:
                                   4939 ;	calc.c:245: d1 |= d0;
      004838 E5 08            [12] 4940 	mov	a,_bp
      00483A 24 1E            [12] 4941 	add	a,#0x1e
      00483C F8               [12] 4942 	mov	r0,a
      00483D E5 08            [12] 4943 	mov	a,_bp
      00483F 24 1A            [12] 4944 	add	a,#0x1a
      004841 F9               [12] 4945 	mov	r1,a
      004842 E7               [12] 4946 	mov	a,@r1
      004843 46               [12] 4947 	orl	a,@r0
      004844 F6               [12] 4948 	mov	@r0,a
      004845 09               [12] 4949 	inc	r1
      004846 E7               [12] 4950 	mov	a,@r1
      004847 08               [12] 4951 	inc	r0
      004848 46               [12] 4952 	orl	a,@r0
      004849 F6               [12] 4953 	mov	@r0,a
      00484A 09               [12] 4954 	inc	r1
      00484B E7               [12] 4955 	mov	a,@r1
      00484C 08               [12] 4956 	inc	r0
      00484D 46               [12] 4957 	orl	a,@r0
      00484E F6               [12] 4958 	mov	@r0,a
      00484F 09               [12] 4959 	inc	r1
      004850 E7               [12] 4960 	mov	a,@r1
      004851 08               [12] 4961 	inc	r0
      004852 46               [12] 4962 	orl	a,@r0
      004853 F6               [12] 4963 	mov	@r0,a
                                   4964 ;	calc.c:246: (void)stack_push(ctx->ps, d1);
      004854 8A 82            [24] 4965 	mov	dpl,r2
      004856 8B 83            [24] 4966 	mov	dph,r3
      004858 8C F0            [24] 4967 	mov	b,r4
      00485A 12 65 6C         [24] 4968 	lcall	__gptrget
      00485D FA               [12] 4969 	mov	r2,a
      00485E A3               [24] 4970 	inc	dptr
      00485F 12 65 6C         [24] 4971 	lcall	__gptrget
      004862 FB               [12] 4972 	mov	r3,a
      004863 A3               [24] 4973 	inc	dptr
      004864 12 65 6C         [24] 4974 	lcall	__gptrget
      004867 FC               [12] 4975 	mov	r4,a
      004868 E5 08            [12] 4976 	mov	a,_bp
      00486A 24 1E            [12] 4977 	add	a,#0x1e
      00486C F8               [12] 4978 	mov	r0,a
      00486D E6               [12] 4979 	mov	a,@r0
      00486E C0 E0            [24] 4980 	push	acc
      004870 08               [12] 4981 	inc	r0
      004871 E6               [12] 4982 	mov	a,@r0
      004872 C0 E0            [24] 4983 	push	acc
      004874 08               [12] 4984 	inc	r0
      004875 E6               [12] 4985 	mov	a,@r0
      004876 C0 E0            [24] 4986 	push	acc
      004878 08               [12] 4987 	inc	r0
      004879 E6               [12] 4988 	mov	a,@r0
      00487A C0 E0            [24] 4989 	push	acc
      00487C 8A 82            [24] 4990 	mov	dpl,r2
      00487E 8B 83            [24] 4991 	mov	dph,r3
      004880 8C F0            [24] 4992 	mov	b,r4
      004882 12 26 B5         [24] 4993 	lcall	_stack_push
      004885 E5 81            [12] 4994 	mov	a,sp
      004887 24 FC            [12] 4995 	add	a,#0xfc
      004889 F5 81            [12] 4996 	mov	sp,a
                                   4997 ;	calc.c:248: break;
      00488B 02 4F 17         [24] 4998 	ljmp	00249$
                                   4999 ;	calc.c:249: case '^':
      00488E                       5000 00216$:
                                   5001 ;	calc.c:250: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      00488E E5 08            [12] 5002 	mov	a,_bp
      004890 24 1A            [12] 5003 	add	a,#0x1a
      004892 FF               [12] 5004 	mov	r7,a
      004893 E5 08            [12] 5005 	mov	a,_bp
      004895 24 13            [12] 5006 	add	a,#0x13
      004897 F8               [12] 5007 	mov	r0,a
      004898 A6 07            [24] 5008 	mov	@r0,ar7
      00489A 08               [12] 5009 	inc	r0
      00489B 76 00            [12] 5010 	mov	@r0,#0x00
      00489D 08               [12] 5011 	inc	r0
      00489E 76 40            [12] 5012 	mov	@r0,#0x40
      0048A0 E5 08            [12] 5013 	mov	a,_bp
      0048A2 24 17            [12] 5014 	add	a,#0x17
      0048A4 F8               [12] 5015 	mov	r0,a
      0048A5 74 11            [12] 5016 	mov	a,#0x11
      0048A7 26               [12] 5017 	add	a,@r0
      0048A8 FA               [12] 5018 	mov	r2,a
      0048A9 74 40            [12] 5019 	mov	a,#0x40
      0048AB 08               [12] 5020 	inc	r0
      0048AC 36               [12] 5021 	addc	a,@r0
      0048AD FB               [12] 5022 	mov	r3,a
      0048AE 08               [12] 5023 	inc	r0
      0048AF 86 04            [24] 5024 	mov	ar4,@r0
      0048B1 8A 82            [24] 5025 	mov	dpl,r2
      0048B3 8B 83            [24] 5026 	mov	dph,r3
      0048B5 8C F0            [24] 5027 	mov	b,r4
      0048B7 12 65 6C         [24] 5028 	lcall	__gptrget
      0048BA FD               [12] 5029 	mov	r5,a
      0048BB A3               [24] 5030 	inc	dptr
      0048BC 12 65 6C         [24] 5031 	lcall	__gptrget
      0048BF FE               [12] 5032 	mov	r6,a
      0048C0 A3               [24] 5033 	inc	dptr
      0048C1 12 65 6C         [24] 5034 	lcall	__gptrget
      0048C4 FF               [12] 5035 	mov	r7,a
      0048C5 C0 04            [24] 5036 	push	ar4
      0048C7 C0 03            [24] 5037 	push	ar3
      0048C9 C0 02            [24] 5038 	push	ar2
      0048CB E5 08            [12] 5039 	mov	a,_bp
      0048CD 24 13            [12] 5040 	add	a,#0x13
      0048CF F8               [12] 5041 	mov	r0,a
      0048D0 E6               [12] 5042 	mov	a,@r0
      0048D1 C0 E0            [24] 5043 	push	acc
      0048D3 08               [12] 5044 	inc	r0
      0048D4 E6               [12] 5045 	mov	a,@r0
      0048D5 C0 E0            [24] 5046 	push	acc
      0048D7 08               [12] 5047 	inc	r0
      0048D8 E6               [12] 5048 	mov	a,@r0
      0048D9 C0 E0            [24] 5049 	push	acc
      0048DB 8D 82            [24] 5050 	mov	dpl,r5
      0048DD 8E 83            [24] 5051 	mov	dph,r6
      0048DF 8F F0            [24] 5052 	mov	b,r7
      0048E1 12 27 83         [24] 5053 	lcall	_stack_pop
      0048E4 AE 82            [24] 5054 	mov	r6,dpl
      0048E6 AF 83            [24] 5055 	mov	r7,dph
      0048E8 15 81            [12] 5056 	dec	sp
      0048EA 15 81            [12] 5057 	dec	sp
      0048EC 15 81            [12] 5058 	dec	sp
      0048EE D0 02            [24] 5059 	pop	ar2
      0048F0 D0 03            [24] 5060 	pop	ar3
      0048F2 D0 04            [24] 5061 	pop	ar4
      0048F4 EE               [12] 5062 	mov	a,r6
      0048F5 4F               [12] 5063 	orl	a,r7
      0048F6 70 0C            [24] 5064 	jnz	00221$
      0048F8 90 7E 34         [24] 5065 	mov	dptr,#___str_9
      0048FB 75 F0 80         [24] 5066 	mov	b,#0x80
      0048FE 12 5E 27         [24] 5067 	lcall	_printstr
      004901 02 4F 17         [24] 5068 	ljmp	00249$
      004904                       5069 00221$:
                                   5070 ;	calc.c:251: else if (!stack_pop(ctx->ps, &d1)) {
      004904 E5 08            [12] 5071 	mov	a,_bp
      004906 24 1E            [12] 5072 	add	a,#0x1e
      004908 FF               [12] 5073 	mov	r7,a
      004909 E5 08            [12] 5074 	mov	a,_bp
      00490B 24 13            [12] 5075 	add	a,#0x13
      00490D F8               [12] 5076 	mov	r0,a
      00490E A6 07            [24] 5077 	mov	@r0,ar7
      004910 08               [12] 5078 	inc	r0
      004911 76 00            [12] 5079 	mov	@r0,#0x00
      004913 08               [12] 5080 	inc	r0
      004914 76 40            [12] 5081 	mov	@r0,#0x40
      004916 8A 82            [24] 5082 	mov	dpl,r2
      004918 8B 83            [24] 5083 	mov	dph,r3
      00491A 8C F0            [24] 5084 	mov	b,r4
      00491C 12 65 6C         [24] 5085 	lcall	__gptrget
      00491F FD               [12] 5086 	mov	r5,a
      004920 A3               [24] 5087 	inc	dptr
      004921 12 65 6C         [24] 5088 	lcall	__gptrget
      004924 FE               [12] 5089 	mov	r6,a
      004925 A3               [24] 5090 	inc	dptr
      004926 12 65 6C         [24] 5091 	lcall	__gptrget
      004929 FF               [12] 5092 	mov	r7,a
      00492A C0 04            [24] 5093 	push	ar4
      00492C C0 03            [24] 5094 	push	ar3
      00492E C0 02            [24] 5095 	push	ar2
      004930 E5 08            [12] 5096 	mov	a,_bp
      004932 24 13            [12] 5097 	add	a,#0x13
      004934 F8               [12] 5098 	mov	r0,a
      004935 E6               [12] 5099 	mov	a,@r0
      004936 C0 E0            [24] 5100 	push	acc
      004938 08               [12] 5101 	inc	r0
      004939 E6               [12] 5102 	mov	a,@r0
      00493A C0 E0            [24] 5103 	push	acc
      00493C 08               [12] 5104 	inc	r0
      00493D E6               [12] 5105 	mov	a,@r0
      00493E C0 E0            [24] 5106 	push	acc
      004940 8D 82            [24] 5107 	mov	dpl,r5
      004942 8E 83            [24] 5108 	mov	dph,r6
      004944 8F F0            [24] 5109 	mov	b,r7
      004946 12 27 83         [24] 5110 	lcall	_stack_pop
      004949 AE 82            [24] 5111 	mov	r6,dpl
      00494B AF 83            [24] 5112 	mov	r7,dph
      00494D 15 81            [12] 5113 	dec	sp
      00494F 15 81            [12] 5114 	dec	sp
      004951 15 81            [12] 5115 	dec	sp
      004953 D0 02            [24] 5116 	pop	ar2
      004955 D0 03            [24] 5117 	pop	ar3
      004957 D0 04            [24] 5118 	pop	ar4
      004959 EE               [12] 5119 	mov	a,r6
      00495A 4F               [12] 5120 	orl	a,r7
      00495B 70 43            [24] 5121 	jnz	00218$
                                   5122 ;	calc.c:252: (void)stack_push(ctx->ps, d0);
      00495D 8A 82            [24] 5123 	mov	dpl,r2
      00495F 8B 83            [24] 5124 	mov	dph,r3
      004961 8C F0            [24] 5125 	mov	b,r4
      004963 12 65 6C         [24] 5126 	lcall	__gptrget
      004966 FD               [12] 5127 	mov	r5,a
      004967 A3               [24] 5128 	inc	dptr
      004968 12 65 6C         [24] 5129 	lcall	__gptrget
      00496B FE               [12] 5130 	mov	r6,a
      00496C A3               [24] 5131 	inc	dptr
      00496D 12 65 6C         [24] 5132 	lcall	__gptrget
      004970 FF               [12] 5133 	mov	r7,a
      004971 E5 08            [12] 5134 	mov	a,_bp
      004973 24 1A            [12] 5135 	add	a,#0x1a
      004975 F8               [12] 5136 	mov	r0,a
      004976 E6               [12] 5137 	mov	a,@r0
      004977 C0 E0            [24] 5138 	push	acc
      004979 08               [12] 5139 	inc	r0
      00497A E6               [12] 5140 	mov	a,@r0
      00497B C0 E0            [24] 5141 	push	acc
      00497D 08               [12] 5142 	inc	r0
      00497E E6               [12] 5143 	mov	a,@r0
      00497F C0 E0            [24] 5144 	push	acc
      004981 08               [12] 5145 	inc	r0
      004982 E6               [12] 5146 	mov	a,@r0
      004983 C0 E0            [24] 5147 	push	acc
      004985 8D 82            [24] 5148 	mov	dpl,r5
      004987 8E 83            [24] 5149 	mov	dph,r6
      004989 8F F0            [24] 5150 	mov	b,r7
      00498B 12 26 B5         [24] 5151 	lcall	_stack_push
      00498E E5 81            [12] 5152 	mov	a,sp
      004990 24 FC            [12] 5153 	add	a,#0xfc
      004992 F5 81            [12] 5154 	mov	sp,a
                                   5155 ;	calc.c:253: printstr("\r\nstack underflow\r\n");
      004994 90 7E 34         [24] 5156 	mov	dptr,#___str_9
      004997 75 F0 80         [24] 5157 	mov	b,#0x80
      00499A 12 5E 27         [24] 5158 	lcall	_printstr
      00499D 02 4F 17         [24] 5159 	ljmp	00249$
      0049A0                       5160 00218$:
                                   5161 ;	calc.c:255: d1 ^= d0;
      0049A0 E5 08            [12] 5162 	mov	a,_bp
      0049A2 24 1E            [12] 5163 	add	a,#0x1e
      0049A4 F8               [12] 5164 	mov	r0,a
      0049A5 E5 08            [12] 5165 	mov	a,_bp
      0049A7 24 1A            [12] 5166 	add	a,#0x1a
      0049A9 F9               [12] 5167 	mov	r1,a
      0049AA E7               [12] 5168 	mov	a,@r1
      0049AB 66               [12] 5169 	xrl	a,@r0
      0049AC F6               [12] 5170 	mov	@r0,a
      0049AD 09               [12] 5171 	inc	r1
      0049AE E7               [12] 5172 	mov	a,@r1
      0049AF 08               [12] 5173 	inc	r0
      0049B0 66               [12] 5174 	xrl	a,@r0
      0049B1 F6               [12] 5175 	mov	@r0,a
      0049B2 09               [12] 5176 	inc	r1
      0049B3 E7               [12] 5177 	mov	a,@r1
      0049B4 08               [12] 5178 	inc	r0
      0049B5 66               [12] 5179 	xrl	a,@r0
      0049B6 F6               [12] 5180 	mov	@r0,a
      0049B7 09               [12] 5181 	inc	r1
      0049B8 E7               [12] 5182 	mov	a,@r1
      0049B9 08               [12] 5183 	inc	r0
      0049BA 66               [12] 5184 	xrl	a,@r0
      0049BB F6               [12] 5185 	mov	@r0,a
                                   5186 ;	calc.c:256: (void)stack_push(ctx->ps, d1);
      0049BC 8A 82            [24] 5187 	mov	dpl,r2
      0049BE 8B 83            [24] 5188 	mov	dph,r3
      0049C0 8C F0            [24] 5189 	mov	b,r4
      0049C2 12 65 6C         [24] 5190 	lcall	__gptrget
      0049C5 FA               [12] 5191 	mov	r2,a
      0049C6 A3               [24] 5192 	inc	dptr
      0049C7 12 65 6C         [24] 5193 	lcall	__gptrget
      0049CA FB               [12] 5194 	mov	r3,a
      0049CB A3               [24] 5195 	inc	dptr
      0049CC 12 65 6C         [24] 5196 	lcall	__gptrget
      0049CF FC               [12] 5197 	mov	r4,a
      0049D0 E5 08            [12] 5198 	mov	a,_bp
      0049D2 24 1E            [12] 5199 	add	a,#0x1e
      0049D4 F8               [12] 5200 	mov	r0,a
      0049D5 E6               [12] 5201 	mov	a,@r0
      0049D6 C0 E0            [24] 5202 	push	acc
      0049D8 08               [12] 5203 	inc	r0
      0049D9 E6               [12] 5204 	mov	a,@r0
      0049DA C0 E0            [24] 5205 	push	acc
      0049DC 08               [12] 5206 	inc	r0
      0049DD E6               [12] 5207 	mov	a,@r0
      0049DE C0 E0            [24] 5208 	push	acc
      0049E0 08               [12] 5209 	inc	r0
      0049E1 E6               [12] 5210 	mov	a,@r0
      0049E2 C0 E0            [24] 5211 	push	acc
      0049E4 8A 82            [24] 5212 	mov	dpl,r2
      0049E6 8B 83            [24] 5213 	mov	dph,r3
      0049E8 8C F0            [24] 5214 	mov	b,r4
      0049EA 12 26 B5         [24] 5215 	lcall	_stack_push
      0049ED E5 81            [12] 5216 	mov	a,sp
      0049EF 24 FC            [12] 5217 	add	a,#0xfc
      0049F1 F5 81            [12] 5218 	mov	sp,a
                                   5219 ;	calc.c:258: break;
      0049F3 02 4F 17         [24] 5220 	ljmp	00249$
                                   5221 ;	calc.c:259: case '>':
      0049F6                       5222 00223$:
                                   5223 ;	calc.c:260: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0049F6 E5 08            [12] 5224 	mov	a,_bp
      0049F8 24 1A            [12] 5225 	add	a,#0x1a
      0049FA FC               [12] 5226 	mov	r4,a
      0049FB 7B 00            [12] 5227 	mov	r3,#0x00
      0049FD 7A 40            [12] 5228 	mov	r2,#0x40
      0049FF E5 08            [12] 5229 	mov	a,_bp
      004A01 24 17            [12] 5230 	add	a,#0x17
      004A03 F8               [12] 5231 	mov	r0,a
      004A04 E5 08            [12] 5232 	mov	a,_bp
      004A06 24 0F            [12] 5233 	add	a,#0x0f
      004A08 F9               [12] 5234 	mov	r1,a
      004A09 74 11            [12] 5235 	mov	a,#0x11
      004A0B 26               [12] 5236 	add	a,@r0
      004A0C F7               [12] 5237 	mov	@r1,a
      004A0D 74 40            [12] 5238 	mov	a,#0x40
      004A0F 08               [12] 5239 	inc	r0
      004A10 36               [12] 5240 	addc	a,@r0
      004A11 09               [12] 5241 	inc	r1
      004A12 F7               [12] 5242 	mov	@r1,a
      004A13 08               [12] 5243 	inc	r0
      004A14 09               [12] 5244 	inc	r1
      004A15 E6               [12] 5245 	mov	a,@r0
      004A16 F7               [12] 5246 	mov	@r1,a
      004A17 E5 08            [12] 5247 	mov	a,_bp
      004A19 24 0F            [12] 5248 	add	a,#0x0f
      004A1B F8               [12] 5249 	mov	r0,a
      004A1C 86 82            [24] 5250 	mov	dpl,@r0
      004A1E 08               [12] 5251 	inc	r0
      004A1F 86 83            [24] 5252 	mov	dph,@r0
      004A21 08               [12] 5253 	inc	r0
      004A22 86 F0            [24] 5254 	mov	b,@r0
      004A24 12 65 6C         [24] 5255 	lcall	__gptrget
      004A27 FD               [12] 5256 	mov	r5,a
      004A28 A3               [24] 5257 	inc	dptr
      004A29 12 65 6C         [24] 5258 	lcall	__gptrget
      004A2C FE               [12] 5259 	mov	r6,a
      004A2D A3               [24] 5260 	inc	dptr
      004A2E 12 65 6C         [24] 5261 	lcall	__gptrget
      004A31 FF               [12] 5262 	mov	r7,a
      004A32 C0 04            [24] 5263 	push	ar4
      004A34 C0 03            [24] 5264 	push	ar3
      004A36 C0 02            [24] 5265 	push	ar2
      004A38 8D 82            [24] 5266 	mov	dpl,r5
      004A3A 8E 83            [24] 5267 	mov	dph,r6
      004A3C 8F F0            [24] 5268 	mov	b,r7
      004A3E 12 27 83         [24] 5269 	lcall	_stack_pop
      004A41 AE 82            [24] 5270 	mov	r6,dpl
      004A43 AF 83            [24] 5271 	mov	r7,dph
      004A45 15 81            [12] 5272 	dec	sp
      004A47 15 81            [12] 5273 	dec	sp
      004A49 15 81            [12] 5274 	dec	sp
      004A4B EE               [12] 5275 	mov	a,r6
      004A4C 4F               [12] 5276 	orl	a,r7
      004A4D 70 0C            [24] 5277 	jnz	00228$
      004A4F 90 7E 34         [24] 5278 	mov	dptr,#___str_9
      004A52 75 F0 80         [24] 5279 	mov	b,#0x80
      004A55 12 5E 27         [24] 5280 	lcall	_printstr
      004A58 02 4F 17         [24] 5281 	ljmp	00249$
      004A5B                       5282 00228$:
                                   5283 ;	calc.c:261: else if (!stack_pop(ctx->ps, &d1)) {
      004A5B E5 08            [12] 5284 	mov	a,_bp
      004A5D 24 1E            [12] 5285 	add	a,#0x1e
      004A5F FC               [12] 5286 	mov	r4,a
      004A60 7B 00            [12] 5287 	mov	r3,#0x00
      004A62 7A 40            [12] 5288 	mov	r2,#0x40
      004A64 E5 08            [12] 5289 	mov	a,_bp
      004A66 24 0F            [12] 5290 	add	a,#0x0f
      004A68 F8               [12] 5291 	mov	r0,a
      004A69 86 82            [24] 5292 	mov	dpl,@r0
      004A6B 08               [12] 5293 	inc	r0
      004A6C 86 83            [24] 5294 	mov	dph,@r0
      004A6E 08               [12] 5295 	inc	r0
      004A6F 86 F0            [24] 5296 	mov	b,@r0
      004A71 12 65 6C         [24] 5297 	lcall	__gptrget
      004A74 FD               [12] 5298 	mov	r5,a
      004A75 A3               [24] 5299 	inc	dptr
      004A76 12 65 6C         [24] 5300 	lcall	__gptrget
      004A79 FE               [12] 5301 	mov	r6,a
      004A7A A3               [24] 5302 	inc	dptr
      004A7B 12 65 6C         [24] 5303 	lcall	__gptrget
      004A7E FF               [12] 5304 	mov	r7,a
      004A7F C0 04            [24] 5305 	push	ar4
      004A81 C0 03            [24] 5306 	push	ar3
      004A83 C0 02            [24] 5307 	push	ar2
      004A85 8D 82            [24] 5308 	mov	dpl,r5
      004A87 8E 83            [24] 5309 	mov	dph,r6
      004A89 8F F0            [24] 5310 	mov	b,r7
      004A8B 12 27 83         [24] 5311 	lcall	_stack_pop
      004A8E AE 82            [24] 5312 	mov	r6,dpl
      004A90 AF 83            [24] 5313 	mov	r7,dph
      004A92 15 81            [12] 5314 	dec	sp
      004A94 15 81            [12] 5315 	dec	sp
      004A96 15 81            [12] 5316 	dec	sp
      004A98 EE               [12] 5317 	mov	a,r6
      004A99 4F               [12] 5318 	orl	a,r7
      004A9A 70 4A            [24] 5319 	jnz	00225$
                                   5320 ;	calc.c:262: (void)stack_push(ctx->ps, d0);
      004A9C E5 08            [12] 5321 	mov	a,_bp
      004A9E 24 0F            [12] 5322 	add	a,#0x0f
      004AA0 F8               [12] 5323 	mov	r0,a
      004AA1 86 82            [24] 5324 	mov	dpl,@r0
      004AA3 08               [12] 5325 	inc	r0
      004AA4 86 83            [24] 5326 	mov	dph,@r0
      004AA6 08               [12] 5327 	inc	r0
      004AA7 86 F0            [24] 5328 	mov	b,@r0
      004AA9 12 65 6C         [24] 5329 	lcall	__gptrget
      004AAC FD               [12] 5330 	mov	r5,a
      004AAD A3               [24] 5331 	inc	dptr
      004AAE 12 65 6C         [24] 5332 	lcall	__gptrget
      004AB1 FE               [12] 5333 	mov	r6,a
      004AB2 A3               [24] 5334 	inc	dptr
      004AB3 12 65 6C         [24] 5335 	lcall	__gptrget
      004AB6 FF               [12] 5336 	mov	r7,a
      004AB7 E5 08            [12] 5337 	mov	a,_bp
      004AB9 24 1A            [12] 5338 	add	a,#0x1a
      004ABB F8               [12] 5339 	mov	r0,a
      004ABC E6               [12] 5340 	mov	a,@r0
      004ABD C0 E0            [24] 5341 	push	acc
      004ABF 08               [12] 5342 	inc	r0
      004AC0 E6               [12] 5343 	mov	a,@r0
      004AC1 C0 E0            [24] 5344 	push	acc
      004AC3 08               [12] 5345 	inc	r0
      004AC4 E6               [12] 5346 	mov	a,@r0
      004AC5 C0 E0            [24] 5347 	push	acc
      004AC7 08               [12] 5348 	inc	r0
      004AC8 E6               [12] 5349 	mov	a,@r0
      004AC9 C0 E0            [24] 5350 	push	acc
      004ACB 8D 82            [24] 5351 	mov	dpl,r5
      004ACD 8E 83            [24] 5352 	mov	dph,r6
      004ACF 8F F0            [24] 5353 	mov	b,r7
      004AD1 12 26 B5         [24] 5354 	lcall	_stack_push
      004AD4 E5 81            [12] 5355 	mov	a,sp
      004AD6 24 FC            [12] 5356 	add	a,#0xfc
      004AD8 F5 81            [12] 5357 	mov	sp,a
                                   5358 ;	calc.c:263: printstr("\r\nstack underflow\r\n");
      004ADA 90 7E 34         [24] 5359 	mov	dptr,#___str_9
      004ADD 75 F0 80         [24] 5360 	mov	b,#0x80
      004AE0 12 5E 27         [24] 5361 	lcall	_printstr
      004AE3 02 4F 17         [24] 5362 	ljmp	00249$
      004AE6                       5363 00225$:
                                   5364 ;	calc.c:265: d1 = (unsigned long)d1 >> d0;
      004AE6 E5 08            [12] 5365 	mov	a,_bp
      004AE8 24 1E            [12] 5366 	add	a,#0x1e
      004AEA F8               [12] 5367 	mov	r0,a
      004AEB 86 04            [24] 5368 	mov	ar4,@r0
      004AED 08               [12] 5369 	inc	r0
      004AEE 86 05            [24] 5370 	mov	ar5,@r0
      004AF0 08               [12] 5371 	inc	r0
      004AF1 86 06            [24] 5372 	mov	ar6,@r0
      004AF3 08               [12] 5373 	inc	r0
      004AF4 86 07            [24] 5374 	mov	ar7,@r0
      004AF6 E5 08            [12] 5375 	mov	a,_bp
      004AF8 24 1A            [12] 5376 	add	a,#0x1a
      004AFA F8               [12] 5377 	mov	r0,a
      004AFB 86 F0            [24] 5378 	mov	b,@r0
      004AFD 05 F0            [12] 5379 	inc	b
      004AFF 80 0D            [24] 5380 	sjmp	00592$
      004B01                       5381 00591$:
      004B01 C3               [12] 5382 	clr	c
      004B02 EF               [12] 5383 	mov	a,r7
      004B03 13               [12] 5384 	rrc	a
      004B04 FF               [12] 5385 	mov	r7,a
      004B05 EE               [12] 5386 	mov	a,r6
      004B06 13               [12] 5387 	rrc	a
      004B07 FE               [12] 5388 	mov	r6,a
      004B08 ED               [12] 5389 	mov	a,r5
      004B09 13               [12] 5390 	rrc	a
      004B0A FD               [12] 5391 	mov	r5,a
      004B0B EC               [12] 5392 	mov	a,r4
      004B0C 13               [12] 5393 	rrc	a
      004B0D FC               [12] 5394 	mov	r4,a
      004B0E                       5395 00592$:
      004B0E D5 F0 F0         [24] 5396 	djnz	b,00591$
      004B11 E5 08            [12] 5397 	mov	a,_bp
      004B13 24 1E            [12] 5398 	add	a,#0x1e
      004B15 F8               [12] 5399 	mov	r0,a
      004B16 A6 04            [24] 5400 	mov	@r0,ar4
      004B18 08               [12] 5401 	inc	r0
      004B19 A6 05            [24] 5402 	mov	@r0,ar5
      004B1B 08               [12] 5403 	inc	r0
      004B1C A6 06            [24] 5404 	mov	@r0,ar6
      004B1E 08               [12] 5405 	inc	r0
      004B1F A6 07            [24] 5406 	mov	@r0,ar7
                                   5407 ;	calc.c:266: (void)stack_push(ctx->ps, d1);
      004B21 E5 08            [12] 5408 	mov	a,_bp
      004B23 24 0F            [12] 5409 	add	a,#0x0f
      004B25 F8               [12] 5410 	mov	r0,a
      004B26 86 82            [24] 5411 	mov	dpl,@r0
      004B28 08               [12] 5412 	inc	r0
      004B29 86 83            [24] 5413 	mov	dph,@r0
      004B2B 08               [12] 5414 	inc	r0
      004B2C 86 F0            [24] 5415 	mov	b,@r0
      004B2E 12 65 6C         [24] 5416 	lcall	__gptrget
      004B31 FD               [12] 5417 	mov	r5,a
      004B32 A3               [24] 5418 	inc	dptr
      004B33 12 65 6C         [24] 5419 	lcall	__gptrget
      004B36 FE               [12] 5420 	mov	r6,a
      004B37 A3               [24] 5421 	inc	dptr
      004B38 12 65 6C         [24] 5422 	lcall	__gptrget
      004B3B FF               [12] 5423 	mov	r7,a
      004B3C E5 08            [12] 5424 	mov	a,_bp
      004B3E 24 1E            [12] 5425 	add	a,#0x1e
      004B40 F8               [12] 5426 	mov	r0,a
      004B41 E6               [12] 5427 	mov	a,@r0
      004B42 C0 E0            [24] 5428 	push	acc
      004B44 08               [12] 5429 	inc	r0
      004B45 E6               [12] 5430 	mov	a,@r0
      004B46 C0 E0            [24] 5431 	push	acc
      004B48 08               [12] 5432 	inc	r0
      004B49 E6               [12] 5433 	mov	a,@r0
      004B4A C0 E0            [24] 5434 	push	acc
      004B4C 08               [12] 5435 	inc	r0
      004B4D E6               [12] 5436 	mov	a,@r0
      004B4E C0 E0            [24] 5437 	push	acc
      004B50 8D 82            [24] 5438 	mov	dpl,r5
      004B52 8E 83            [24] 5439 	mov	dph,r6
      004B54 8F F0            [24] 5440 	mov	b,r7
      004B56 12 26 B5         [24] 5441 	lcall	_stack_push
      004B59 E5 81            [12] 5442 	mov	a,sp
      004B5B 24 FC            [12] 5443 	add	a,#0xfc
      004B5D F5 81            [12] 5444 	mov	sp,a
                                   5445 ;	calc.c:268: break;
      004B5F 02 4F 17         [24] 5446 	ljmp	00249$
                                   5447 ;	calc.c:269: case ']':
      004B62                       5448 00230$:
                                   5449 ;	calc.c:270: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004B62 E5 08            [12] 5450 	mov	a,_bp
      004B64 24 1A            [12] 5451 	add	a,#0x1a
      004B66 FF               [12] 5452 	mov	r7,a
      004B67 E5 08            [12] 5453 	mov	a,_bp
      004B69 24 13            [12] 5454 	add	a,#0x13
      004B6B F8               [12] 5455 	mov	r0,a
      004B6C A6 07            [24] 5456 	mov	@r0,ar7
      004B6E 08               [12] 5457 	inc	r0
      004B6F 76 00            [12] 5458 	mov	@r0,#0x00
      004B71 08               [12] 5459 	inc	r0
      004B72 76 40            [12] 5460 	mov	@r0,#0x40
      004B74 E5 08            [12] 5461 	mov	a,_bp
      004B76 24 17            [12] 5462 	add	a,#0x17
      004B78 F8               [12] 5463 	mov	r0,a
      004B79 74 11            [12] 5464 	mov	a,#0x11
      004B7B 26               [12] 5465 	add	a,@r0
      004B7C FA               [12] 5466 	mov	r2,a
      004B7D 74 40            [12] 5467 	mov	a,#0x40
      004B7F 08               [12] 5468 	inc	r0
      004B80 36               [12] 5469 	addc	a,@r0
      004B81 FB               [12] 5470 	mov	r3,a
      004B82 08               [12] 5471 	inc	r0
      004B83 86 04            [24] 5472 	mov	ar4,@r0
      004B85 8A 82            [24] 5473 	mov	dpl,r2
      004B87 8B 83            [24] 5474 	mov	dph,r3
      004B89 8C F0            [24] 5475 	mov	b,r4
      004B8B 12 65 6C         [24] 5476 	lcall	__gptrget
      004B8E FD               [12] 5477 	mov	r5,a
      004B8F A3               [24] 5478 	inc	dptr
      004B90 12 65 6C         [24] 5479 	lcall	__gptrget
      004B93 FE               [12] 5480 	mov	r6,a
      004B94 A3               [24] 5481 	inc	dptr
      004B95 12 65 6C         [24] 5482 	lcall	__gptrget
      004B98 FF               [12] 5483 	mov	r7,a
      004B99 C0 04            [24] 5484 	push	ar4
      004B9B C0 03            [24] 5485 	push	ar3
      004B9D C0 02            [24] 5486 	push	ar2
      004B9F E5 08            [12] 5487 	mov	a,_bp
      004BA1 24 13            [12] 5488 	add	a,#0x13
      004BA3 F8               [12] 5489 	mov	r0,a
      004BA4 E6               [12] 5490 	mov	a,@r0
      004BA5 C0 E0            [24] 5491 	push	acc
      004BA7 08               [12] 5492 	inc	r0
      004BA8 E6               [12] 5493 	mov	a,@r0
      004BA9 C0 E0            [24] 5494 	push	acc
      004BAB 08               [12] 5495 	inc	r0
      004BAC E6               [12] 5496 	mov	a,@r0
      004BAD C0 E0            [24] 5497 	push	acc
      004BAF 8D 82            [24] 5498 	mov	dpl,r5
      004BB1 8E 83            [24] 5499 	mov	dph,r6
      004BB3 8F F0            [24] 5500 	mov	b,r7
      004BB5 12 27 83         [24] 5501 	lcall	_stack_pop
      004BB8 AE 82            [24] 5502 	mov	r6,dpl
      004BBA AF 83            [24] 5503 	mov	r7,dph
      004BBC 15 81            [12] 5504 	dec	sp
      004BBE 15 81            [12] 5505 	dec	sp
      004BC0 15 81            [12] 5506 	dec	sp
      004BC2 D0 02            [24] 5507 	pop	ar2
      004BC4 D0 03            [24] 5508 	pop	ar3
      004BC6 D0 04            [24] 5509 	pop	ar4
      004BC8 EE               [12] 5510 	mov	a,r6
      004BC9 4F               [12] 5511 	orl	a,r7
      004BCA 70 0C            [24] 5512 	jnz	00235$
      004BCC 90 7E 34         [24] 5513 	mov	dptr,#___str_9
      004BCF 75 F0 80         [24] 5514 	mov	b,#0x80
      004BD2 12 5E 27         [24] 5515 	lcall	_printstr
      004BD5 02 4F 17         [24] 5516 	ljmp	00249$
      004BD8                       5517 00235$:
                                   5518 ;	calc.c:271: else if (!stack_pop(ctx->ps, &d1)) {
      004BD8 E5 08            [12] 5519 	mov	a,_bp
      004BDA 24 1E            [12] 5520 	add	a,#0x1e
      004BDC FF               [12] 5521 	mov	r7,a
      004BDD E5 08            [12] 5522 	mov	a,_bp
      004BDF 24 13            [12] 5523 	add	a,#0x13
      004BE1 F8               [12] 5524 	mov	r0,a
      004BE2 A6 07            [24] 5525 	mov	@r0,ar7
      004BE4 08               [12] 5526 	inc	r0
      004BE5 76 00            [12] 5527 	mov	@r0,#0x00
      004BE7 08               [12] 5528 	inc	r0
      004BE8 76 40            [12] 5529 	mov	@r0,#0x40
      004BEA 8A 82            [24] 5530 	mov	dpl,r2
      004BEC 8B 83            [24] 5531 	mov	dph,r3
      004BEE 8C F0            [24] 5532 	mov	b,r4
      004BF0 12 65 6C         [24] 5533 	lcall	__gptrget
      004BF3 FD               [12] 5534 	mov	r5,a
      004BF4 A3               [24] 5535 	inc	dptr
      004BF5 12 65 6C         [24] 5536 	lcall	__gptrget
      004BF8 FE               [12] 5537 	mov	r6,a
      004BF9 A3               [24] 5538 	inc	dptr
      004BFA 12 65 6C         [24] 5539 	lcall	__gptrget
      004BFD FF               [12] 5540 	mov	r7,a
      004BFE C0 04            [24] 5541 	push	ar4
      004C00 C0 03            [24] 5542 	push	ar3
      004C02 C0 02            [24] 5543 	push	ar2
      004C04 E5 08            [12] 5544 	mov	a,_bp
      004C06 24 13            [12] 5545 	add	a,#0x13
      004C08 F8               [12] 5546 	mov	r0,a
      004C09 E6               [12] 5547 	mov	a,@r0
      004C0A C0 E0            [24] 5548 	push	acc
      004C0C 08               [12] 5549 	inc	r0
      004C0D E6               [12] 5550 	mov	a,@r0
      004C0E C0 E0            [24] 5551 	push	acc
      004C10 08               [12] 5552 	inc	r0
      004C11 E6               [12] 5553 	mov	a,@r0
      004C12 C0 E0            [24] 5554 	push	acc
      004C14 8D 82            [24] 5555 	mov	dpl,r5
      004C16 8E 83            [24] 5556 	mov	dph,r6
      004C18 8F F0            [24] 5557 	mov	b,r7
      004C1A 12 27 83         [24] 5558 	lcall	_stack_pop
      004C1D AE 82            [24] 5559 	mov	r6,dpl
      004C1F AF 83            [24] 5560 	mov	r7,dph
      004C21 15 81            [12] 5561 	dec	sp
      004C23 15 81            [12] 5562 	dec	sp
      004C25 15 81            [12] 5563 	dec	sp
      004C27 D0 02            [24] 5564 	pop	ar2
      004C29 D0 03            [24] 5565 	pop	ar3
      004C2B D0 04            [24] 5566 	pop	ar4
      004C2D EE               [12] 5567 	mov	a,r6
      004C2E 4F               [12] 5568 	orl	a,r7
      004C2F 70 43            [24] 5569 	jnz	00232$
                                   5570 ;	calc.c:272: (void)stack_push(ctx->ps, d0);
      004C31 8A 82            [24] 5571 	mov	dpl,r2
      004C33 8B 83            [24] 5572 	mov	dph,r3
      004C35 8C F0            [24] 5573 	mov	b,r4
      004C37 12 65 6C         [24] 5574 	lcall	__gptrget
      004C3A FD               [12] 5575 	mov	r5,a
      004C3B A3               [24] 5576 	inc	dptr
      004C3C 12 65 6C         [24] 5577 	lcall	__gptrget
      004C3F FE               [12] 5578 	mov	r6,a
      004C40 A3               [24] 5579 	inc	dptr
      004C41 12 65 6C         [24] 5580 	lcall	__gptrget
      004C44 FF               [12] 5581 	mov	r7,a
      004C45 E5 08            [12] 5582 	mov	a,_bp
      004C47 24 1A            [12] 5583 	add	a,#0x1a
      004C49 F8               [12] 5584 	mov	r0,a
      004C4A E6               [12] 5585 	mov	a,@r0
      004C4B C0 E0            [24] 5586 	push	acc
      004C4D 08               [12] 5587 	inc	r0
      004C4E E6               [12] 5588 	mov	a,@r0
      004C4F C0 E0            [24] 5589 	push	acc
      004C51 08               [12] 5590 	inc	r0
      004C52 E6               [12] 5591 	mov	a,@r0
      004C53 C0 E0            [24] 5592 	push	acc
      004C55 08               [12] 5593 	inc	r0
      004C56 E6               [12] 5594 	mov	a,@r0
      004C57 C0 E0            [24] 5595 	push	acc
      004C59 8D 82            [24] 5596 	mov	dpl,r5
      004C5B 8E 83            [24] 5597 	mov	dph,r6
      004C5D 8F F0            [24] 5598 	mov	b,r7
      004C5F 12 26 B5         [24] 5599 	lcall	_stack_push
      004C62 E5 81            [12] 5600 	mov	a,sp
      004C64 24 FC            [12] 5601 	add	a,#0xfc
      004C66 F5 81            [12] 5602 	mov	sp,a
                                   5603 ;	calc.c:273: printstr("\r\nstack underflow\r\n");
      004C68 90 7E 34         [24] 5604 	mov	dptr,#___str_9
      004C6B 75 F0 80         [24] 5605 	mov	b,#0x80
      004C6E 12 5E 27         [24] 5606 	lcall	_printstr
      004C71 02 4F 17         [24] 5607 	ljmp	00249$
      004C74                       5608 00232$:
                                   5609 ;	calc.c:275: d1 >>= d0;
      004C74 E5 08            [12] 5610 	mov	a,_bp
      004C76 24 1A            [12] 5611 	add	a,#0x1a
      004C78 F8               [12] 5612 	mov	r0,a
      004C79 86 F0            [24] 5613 	mov	b,@r0
      004C7B 05 F0            [12] 5614 	inc	b
      004C7D E5 08            [12] 5615 	mov	a,_bp
      004C7F 24 1E            [12] 5616 	add	a,#0x1e
      004C81 F8               [12] 5617 	mov	r0,a
      004C82 08               [12] 5618 	inc	r0
      004C83 08               [12] 5619 	inc	r0
      004C84 08               [12] 5620 	inc	r0
      004C85 E6               [12] 5621 	mov	a,@r0
      004C86 33               [12] 5622 	rlc	a
      004C87 92 D2            [24] 5623 	mov	ov,c
      004C89 18               [12] 5624 	dec	r0
      004C8A 18               [12] 5625 	dec	r0
      004C8B 18               [12] 5626 	dec	r0
      004C8C 80 14            [24] 5627 	sjmp	00596$
      004C8E                       5628 00595$:
      004C8E A2 D2            [12] 5629 	mov	c,ov
      004C90 08               [12] 5630 	inc	r0
      004C91 08               [12] 5631 	inc	r0
      004C92 08               [12] 5632 	inc	r0
      004C93 E6               [12] 5633 	mov	a,@r0
      004C94 13               [12] 5634 	rrc	a
      004C95 F6               [12] 5635 	mov	@r0,a
      004C96 18               [12] 5636 	dec	r0
      004C97 E6               [12] 5637 	mov	a,@r0
      004C98 13               [12] 5638 	rrc	a
      004C99 F6               [12] 5639 	mov	@r0,a
      004C9A 18               [12] 5640 	dec	r0
      004C9B E6               [12] 5641 	mov	a,@r0
      004C9C 13               [12] 5642 	rrc	a
      004C9D F6               [12] 5643 	mov	@r0,a
      004C9E 18               [12] 5644 	dec	r0
      004C9F E6               [12] 5645 	mov	a,@r0
      004CA0 13               [12] 5646 	rrc	a
      004CA1 F6               [12] 5647 	mov	@r0,a
      004CA2                       5648 00596$:
      004CA2 D5 F0 E9         [24] 5649 	djnz	b,00595$
                                   5650 ;	calc.c:276: (void)stack_push(ctx->ps, d1);
      004CA5 8A 82            [24] 5651 	mov	dpl,r2
      004CA7 8B 83            [24] 5652 	mov	dph,r3
      004CA9 8C F0            [24] 5653 	mov	b,r4
      004CAB 12 65 6C         [24] 5654 	lcall	__gptrget
      004CAE FA               [12] 5655 	mov	r2,a
      004CAF A3               [24] 5656 	inc	dptr
      004CB0 12 65 6C         [24] 5657 	lcall	__gptrget
      004CB3 FB               [12] 5658 	mov	r3,a
      004CB4 A3               [24] 5659 	inc	dptr
      004CB5 12 65 6C         [24] 5660 	lcall	__gptrget
      004CB8 FC               [12] 5661 	mov	r4,a
      004CB9 E5 08            [12] 5662 	mov	a,_bp
      004CBB 24 1E            [12] 5663 	add	a,#0x1e
      004CBD F8               [12] 5664 	mov	r0,a
      004CBE E6               [12] 5665 	mov	a,@r0
      004CBF C0 E0            [24] 5666 	push	acc
      004CC1 08               [12] 5667 	inc	r0
      004CC2 E6               [12] 5668 	mov	a,@r0
      004CC3 C0 E0            [24] 5669 	push	acc
      004CC5 08               [12] 5670 	inc	r0
      004CC6 E6               [12] 5671 	mov	a,@r0
      004CC7 C0 E0            [24] 5672 	push	acc
      004CC9 08               [12] 5673 	inc	r0
      004CCA E6               [12] 5674 	mov	a,@r0
      004CCB C0 E0            [24] 5675 	push	acc
      004CCD 8A 82            [24] 5676 	mov	dpl,r2
      004CCF 8B 83            [24] 5677 	mov	dph,r3
      004CD1 8C F0            [24] 5678 	mov	b,r4
      004CD3 12 26 B5         [24] 5679 	lcall	_stack_push
      004CD6 E5 81            [12] 5680 	mov	a,sp
      004CD8 24 FC            [12] 5681 	add	a,#0xfc
      004CDA F5 81            [12] 5682 	mov	sp,a
                                   5683 ;	calc.c:278: break;
      004CDC 02 4F 17         [24] 5684 	ljmp	00249$
                                   5685 ;	calc.c:279: case '<':
      004CDF                       5686 00237$:
                                   5687 ;	calc.c:280: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004CDF E5 08            [12] 5688 	mov	a,_bp
      004CE1 24 1A            [12] 5689 	add	a,#0x1a
      004CE3 FF               [12] 5690 	mov	r7,a
      004CE4 E5 08            [12] 5691 	mov	a,_bp
      004CE6 24 13            [12] 5692 	add	a,#0x13
      004CE8 F8               [12] 5693 	mov	r0,a
      004CE9 A6 07            [24] 5694 	mov	@r0,ar7
      004CEB 08               [12] 5695 	inc	r0
      004CEC 76 00            [12] 5696 	mov	@r0,#0x00
      004CEE 08               [12] 5697 	inc	r0
      004CEF 76 40            [12] 5698 	mov	@r0,#0x40
      004CF1 E5 08            [12] 5699 	mov	a,_bp
      004CF3 24 17            [12] 5700 	add	a,#0x17
      004CF5 F8               [12] 5701 	mov	r0,a
      004CF6 74 11            [12] 5702 	mov	a,#0x11
      004CF8 26               [12] 5703 	add	a,@r0
      004CF9 FA               [12] 5704 	mov	r2,a
      004CFA 74 40            [12] 5705 	mov	a,#0x40
      004CFC 08               [12] 5706 	inc	r0
      004CFD 36               [12] 5707 	addc	a,@r0
      004CFE FB               [12] 5708 	mov	r3,a
      004CFF 08               [12] 5709 	inc	r0
      004D00 86 04            [24] 5710 	mov	ar4,@r0
      004D02 8A 82            [24] 5711 	mov	dpl,r2
      004D04 8B 83            [24] 5712 	mov	dph,r3
      004D06 8C F0            [24] 5713 	mov	b,r4
      004D08 12 65 6C         [24] 5714 	lcall	__gptrget
      004D0B FD               [12] 5715 	mov	r5,a
      004D0C A3               [24] 5716 	inc	dptr
      004D0D 12 65 6C         [24] 5717 	lcall	__gptrget
      004D10 FE               [12] 5718 	mov	r6,a
      004D11 A3               [24] 5719 	inc	dptr
      004D12 12 65 6C         [24] 5720 	lcall	__gptrget
      004D15 FF               [12] 5721 	mov	r7,a
      004D16 C0 04            [24] 5722 	push	ar4
      004D18 C0 03            [24] 5723 	push	ar3
      004D1A C0 02            [24] 5724 	push	ar2
      004D1C E5 08            [12] 5725 	mov	a,_bp
      004D1E 24 13            [12] 5726 	add	a,#0x13
      004D20 F8               [12] 5727 	mov	r0,a
      004D21 E6               [12] 5728 	mov	a,@r0
      004D22 C0 E0            [24] 5729 	push	acc
      004D24 08               [12] 5730 	inc	r0
      004D25 E6               [12] 5731 	mov	a,@r0
      004D26 C0 E0            [24] 5732 	push	acc
      004D28 08               [12] 5733 	inc	r0
      004D29 E6               [12] 5734 	mov	a,@r0
      004D2A C0 E0            [24] 5735 	push	acc
      004D2C 8D 82            [24] 5736 	mov	dpl,r5
      004D2E 8E 83            [24] 5737 	mov	dph,r6
      004D30 8F F0            [24] 5738 	mov	b,r7
      004D32 12 27 83         [24] 5739 	lcall	_stack_pop
      004D35 AE 82            [24] 5740 	mov	r6,dpl
      004D37 AF 83            [24] 5741 	mov	r7,dph
      004D39 15 81            [12] 5742 	dec	sp
      004D3B 15 81            [12] 5743 	dec	sp
      004D3D 15 81            [12] 5744 	dec	sp
      004D3F D0 02            [24] 5745 	pop	ar2
      004D41 D0 03            [24] 5746 	pop	ar3
      004D43 D0 04            [24] 5747 	pop	ar4
      004D45 EE               [12] 5748 	mov	a,r6
      004D46 4F               [12] 5749 	orl	a,r7
      004D47 70 0C            [24] 5750 	jnz	00242$
      004D49 90 7E 34         [24] 5751 	mov	dptr,#___str_9
      004D4C 75 F0 80         [24] 5752 	mov	b,#0x80
      004D4F 12 5E 27         [24] 5753 	lcall	_printstr
      004D52 02 4F 17         [24] 5754 	ljmp	00249$
      004D55                       5755 00242$:
                                   5756 ;	calc.c:281: else if (!stack_pop(ctx->ps, &d1)) {
      004D55 E5 08            [12] 5757 	mov	a,_bp
      004D57 24 1E            [12] 5758 	add	a,#0x1e
      004D59 FF               [12] 5759 	mov	r7,a
      004D5A E5 08            [12] 5760 	mov	a,_bp
      004D5C 24 13            [12] 5761 	add	a,#0x13
      004D5E F8               [12] 5762 	mov	r0,a
      004D5F A6 07            [24] 5763 	mov	@r0,ar7
      004D61 08               [12] 5764 	inc	r0
      004D62 76 00            [12] 5765 	mov	@r0,#0x00
      004D64 08               [12] 5766 	inc	r0
      004D65 76 40            [12] 5767 	mov	@r0,#0x40
      004D67 8A 82            [24] 5768 	mov	dpl,r2
      004D69 8B 83            [24] 5769 	mov	dph,r3
      004D6B 8C F0            [24] 5770 	mov	b,r4
      004D6D 12 65 6C         [24] 5771 	lcall	__gptrget
      004D70 FD               [12] 5772 	mov	r5,a
      004D71 A3               [24] 5773 	inc	dptr
      004D72 12 65 6C         [24] 5774 	lcall	__gptrget
      004D75 FE               [12] 5775 	mov	r6,a
      004D76 A3               [24] 5776 	inc	dptr
      004D77 12 65 6C         [24] 5777 	lcall	__gptrget
      004D7A FF               [12] 5778 	mov	r7,a
      004D7B C0 04            [24] 5779 	push	ar4
      004D7D C0 03            [24] 5780 	push	ar3
      004D7F C0 02            [24] 5781 	push	ar2
      004D81 E5 08            [12] 5782 	mov	a,_bp
      004D83 24 13            [12] 5783 	add	a,#0x13
      004D85 F8               [12] 5784 	mov	r0,a
      004D86 E6               [12] 5785 	mov	a,@r0
      004D87 C0 E0            [24] 5786 	push	acc
      004D89 08               [12] 5787 	inc	r0
      004D8A E6               [12] 5788 	mov	a,@r0
      004D8B C0 E0            [24] 5789 	push	acc
      004D8D 08               [12] 5790 	inc	r0
      004D8E E6               [12] 5791 	mov	a,@r0
      004D8F C0 E0            [24] 5792 	push	acc
      004D91 8D 82            [24] 5793 	mov	dpl,r5
      004D93 8E 83            [24] 5794 	mov	dph,r6
      004D95 8F F0            [24] 5795 	mov	b,r7
      004D97 12 27 83         [24] 5796 	lcall	_stack_pop
      004D9A AE 82            [24] 5797 	mov	r6,dpl
      004D9C AF 83            [24] 5798 	mov	r7,dph
      004D9E 15 81            [12] 5799 	dec	sp
      004DA0 15 81            [12] 5800 	dec	sp
      004DA2 15 81            [12] 5801 	dec	sp
      004DA4 D0 02            [24] 5802 	pop	ar2
      004DA6 D0 03            [24] 5803 	pop	ar3
      004DA8 D0 04            [24] 5804 	pop	ar4
      004DAA EE               [12] 5805 	mov	a,r6
      004DAB 4F               [12] 5806 	orl	a,r7
      004DAC 70 43            [24] 5807 	jnz	00239$
                                   5808 ;	calc.c:282: (void)stack_push(ctx->ps, d0);
      004DAE 8A 82            [24] 5809 	mov	dpl,r2
      004DB0 8B 83            [24] 5810 	mov	dph,r3
      004DB2 8C F0            [24] 5811 	mov	b,r4
      004DB4 12 65 6C         [24] 5812 	lcall	__gptrget
      004DB7 FD               [12] 5813 	mov	r5,a
      004DB8 A3               [24] 5814 	inc	dptr
      004DB9 12 65 6C         [24] 5815 	lcall	__gptrget
      004DBC FE               [12] 5816 	mov	r6,a
      004DBD A3               [24] 5817 	inc	dptr
      004DBE 12 65 6C         [24] 5818 	lcall	__gptrget
      004DC1 FF               [12] 5819 	mov	r7,a
      004DC2 E5 08            [12] 5820 	mov	a,_bp
      004DC4 24 1A            [12] 5821 	add	a,#0x1a
      004DC6 F8               [12] 5822 	mov	r0,a
      004DC7 E6               [12] 5823 	mov	a,@r0
      004DC8 C0 E0            [24] 5824 	push	acc
      004DCA 08               [12] 5825 	inc	r0
      004DCB E6               [12] 5826 	mov	a,@r0
      004DCC C0 E0            [24] 5827 	push	acc
      004DCE 08               [12] 5828 	inc	r0
      004DCF E6               [12] 5829 	mov	a,@r0
      004DD0 C0 E0            [24] 5830 	push	acc
      004DD2 08               [12] 5831 	inc	r0
      004DD3 E6               [12] 5832 	mov	a,@r0
      004DD4 C0 E0            [24] 5833 	push	acc
      004DD6 8D 82            [24] 5834 	mov	dpl,r5
      004DD8 8E 83            [24] 5835 	mov	dph,r6
      004DDA 8F F0            [24] 5836 	mov	b,r7
      004DDC 12 26 B5         [24] 5837 	lcall	_stack_push
      004DDF E5 81            [12] 5838 	mov	a,sp
      004DE1 24 FC            [12] 5839 	add	a,#0xfc
      004DE3 F5 81            [12] 5840 	mov	sp,a
                                   5841 ;	calc.c:283: printstr("\r\nstack underflow\r\n");
      004DE5 90 7E 34         [24] 5842 	mov	dptr,#___str_9
      004DE8 75 F0 80         [24] 5843 	mov	b,#0x80
      004DEB 12 5E 27         [24] 5844 	lcall	_printstr
      004DEE 02 4F 17         [24] 5845 	ljmp	00249$
      004DF1                       5846 00239$:
                                   5847 ;	calc.c:285: d1 <<= d0;
      004DF1 E5 08            [12] 5848 	mov	a,_bp
      004DF3 24 1A            [12] 5849 	add	a,#0x1a
      004DF5 F8               [12] 5850 	mov	r0,a
      004DF6 86 F0            [24] 5851 	mov	b,@r0
      004DF8 05 F0            [12] 5852 	inc	b
      004DFA E5 08            [12] 5853 	mov	a,_bp
      004DFC 24 1E            [12] 5854 	add	a,#0x1e
      004DFE F8               [12] 5855 	mov	r0,a
      004DFF 80 12            [24] 5856 	sjmp	00600$
      004E01                       5857 00599$:
      004E01 E6               [12] 5858 	mov	a,@r0
      004E02 26               [12] 5859 	add	a,@r0
      004E03 F6               [12] 5860 	mov	@r0,a
      004E04 08               [12] 5861 	inc	r0
      004E05 E6               [12] 5862 	mov	a,@r0
      004E06 33               [12] 5863 	rlc	a
      004E07 F6               [12] 5864 	mov	@r0,a
      004E08 08               [12] 5865 	inc	r0
      004E09 E6               [12] 5866 	mov	a,@r0
      004E0A 33               [12] 5867 	rlc	a
      004E0B F6               [12] 5868 	mov	@r0,a
      004E0C 08               [12] 5869 	inc	r0
      004E0D E6               [12] 5870 	mov	a,@r0
      004E0E 33               [12] 5871 	rlc	a
      004E0F F6               [12] 5872 	mov	@r0,a
      004E10 18               [12] 5873 	dec	r0
      004E11 18               [12] 5874 	dec	r0
      004E12 18               [12] 5875 	dec	r0
      004E13                       5876 00600$:
      004E13 D5 F0 EB         [24] 5877 	djnz	b,00599$
                                   5878 ;	calc.c:286: (void)stack_push(ctx->ps, d1);
      004E16 8A 82            [24] 5879 	mov	dpl,r2
      004E18 8B 83            [24] 5880 	mov	dph,r3
      004E1A 8C F0            [24] 5881 	mov	b,r4
      004E1C 12 65 6C         [24] 5882 	lcall	__gptrget
      004E1F FA               [12] 5883 	mov	r2,a
      004E20 A3               [24] 5884 	inc	dptr
      004E21 12 65 6C         [24] 5885 	lcall	__gptrget
      004E24 FB               [12] 5886 	mov	r3,a
      004E25 A3               [24] 5887 	inc	dptr
      004E26 12 65 6C         [24] 5888 	lcall	__gptrget
      004E29 FC               [12] 5889 	mov	r4,a
      004E2A E5 08            [12] 5890 	mov	a,_bp
      004E2C 24 1E            [12] 5891 	add	a,#0x1e
      004E2E F8               [12] 5892 	mov	r0,a
      004E2F E6               [12] 5893 	mov	a,@r0
      004E30 C0 E0            [24] 5894 	push	acc
      004E32 08               [12] 5895 	inc	r0
      004E33 E6               [12] 5896 	mov	a,@r0
      004E34 C0 E0            [24] 5897 	push	acc
      004E36 08               [12] 5898 	inc	r0
      004E37 E6               [12] 5899 	mov	a,@r0
      004E38 C0 E0            [24] 5900 	push	acc
      004E3A 08               [12] 5901 	inc	r0
      004E3B E6               [12] 5902 	mov	a,@r0
      004E3C C0 E0            [24] 5903 	push	acc
      004E3E 8A 82            [24] 5904 	mov	dpl,r2
      004E40 8B 83            [24] 5905 	mov	dph,r3
      004E42 8C F0            [24] 5906 	mov	b,r4
      004E44 12 26 B5         [24] 5907 	lcall	_stack_push
      004E47 E5 81            [12] 5908 	mov	a,sp
      004E49 24 FC            [12] 5909 	add	a,#0xfc
      004E4B F5 81            [12] 5910 	mov	sp,a
                                   5911 ;	calc.c:288: break;
      004E4D 02 4F 17         [24] 5912 	ljmp	00249$
                                   5913 ;	calc.c:289: case '~':
      004E50                       5914 00244$:
                                   5915 ;	calc.c:290: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      004E50 E5 08            [12] 5916 	mov	a,_bp
      004E52 24 1A            [12] 5917 	add	a,#0x1a
      004E54 FF               [12] 5918 	mov	r7,a
      004E55 E5 08            [12] 5919 	mov	a,_bp
      004E57 24 13            [12] 5920 	add	a,#0x13
      004E59 F8               [12] 5921 	mov	r0,a
      004E5A A6 07            [24] 5922 	mov	@r0,ar7
      004E5C 08               [12] 5923 	inc	r0
      004E5D 76 00            [12] 5924 	mov	@r0,#0x00
      004E5F 08               [12] 5925 	inc	r0
      004E60 76 40            [12] 5926 	mov	@r0,#0x40
      004E62 E5 08            [12] 5927 	mov	a,_bp
      004E64 24 17            [12] 5928 	add	a,#0x17
      004E66 F8               [12] 5929 	mov	r0,a
      004E67 74 11            [12] 5930 	mov	a,#0x11
      004E69 26               [12] 5931 	add	a,@r0
      004E6A FA               [12] 5932 	mov	r2,a
      004E6B 74 40            [12] 5933 	mov	a,#0x40
      004E6D 08               [12] 5934 	inc	r0
      004E6E 36               [12] 5935 	addc	a,@r0
      004E6F FB               [12] 5936 	mov	r3,a
      004E70 08               [12] 5937 	inc	r0
      004E71 86 04            [24] 5938 	mov	ar4,@r0
      004E73 8A 82            [24] 5939 	mov	dpl,r2
      004E75 8B 83            [24] 5940 	mov	dph,r3
      004E77 8C F0            [24] 5941 	mov	b,r4
      004E79 12 65 6C         [24] 5942 	lcall	__gptrget
      004E7C FD               [12] 5943 	mov	r5,a
      004E7D A3               [24] 5944 	inc	dptr
      004E7E 12 65 6C         [24] 5945 	lcall	__gptrget
      004E81 FE               [12] 5946 	mov	r6,a
      004E82 A3               [24] 5947 	inc	dptr
      004E83 12 65 6C         [24] 5948 	lcall	__gptrget
      004E86 FF               [12] 5949 	mov	r7,a
      004E87 C0 04            [24] 5950 	push	ar4
      004E89 C0 03            [24] 5951 	push	ar3
      004E8B C0 02            [24] 5952 	push	ar2
      004E8D E5 08            [12] 5953 	mov	a,_bp
      004E8F 24 13            [12] 5954 	add	a,#0x13
      004E91 F8               [12] 5955 	mov	r0,a
      004E92 E6               [12] 5956 	mov	a,@r0
      004E93 C0 E0            [24] 5957 	push	acc
      004E95 08               [12] 5958 	inc	r0
      004E96 E6               [12] 5959 	mov	a,@r0
      004E97 C0 E0            [24] 5960 	push	acc
      004E99 08               [12] 5961 	inc	r0
      004E9A E6               [12] 5962 	mov	a,@r0
      004E9B C0 E0            [24] 5963 	push	acc
      004E9D 8D 82            [24] 5964 	mov	dpl,r5
      004E9F 8E 83            [24] 5965 	mov	dph,r6
      004EA1 8F F0            [24] 5966 	mov	b,r7
      004EA3 12 27 83         [24] 5967 	lcall	_stack_pop
      004EA6 AE 82            [24] 5968 	mov	r6,dpl
      004EA8 AF 83            [24] 5969 	mov	r7,dph
      004EAA 15 81            [12] 5970 	dec	sp
      004EAC 15 81            [12] 5971 	dec	sp
      004EAE 15 81            [12] 5972 	dec	sp
      004EB0 D0 02            [24] 5973 	pop	ar2
      004EB2 D0 03            [24] 5974 	pop	ar3
      004EB4 D0 04            [24] 5975 	pop	ar4
      004EB6 EE               [12] 5976 	mov	a,r6
      004EB7 4F               [12] 5977 	orl	a,r7
      004EB8 70 0B            [24] 5978 	jnz	00246$
      004EBA 90 7E 34         [24] 5979 	mov	dptr,#___str_9
      004EBD 75 F0 80         [24] 5980 	mov	b,#0x80
      004EC0 12 5E 27         [24] 5981 	lcall	_printstr
      004EC3 80 52            [24] 5982 	sjmp	00249$
      004EC5                       5983 00246$:
                                   5984 ;	calc.c:292: d0 = ~d0;
      004EC5 E5 08            [12] 5985 	mov	a,_bp
      004EC7 24 1A            [12] 5986 	add	a,#0x1a
      004EC9 F8               [12] 5987 	mov	r0,a
      004ECA E6               [12] 5988 	mov	a,@r0
      004ECB F4               [12] 5989 	cpl	a
      004ECC F6               [12] 5990 	mov	@r0,a
      004ECD 08               [12] 5991 	inc	r0
      004ECE E6               [12] 5992 	mov	a,@r0
      004ECF F4               [12] 5993 	cpl	a
      004ED0 F6               [12] 5994 	mov	@r0,a
      004ED1 08               [12] 5995 	inc	r0
      004ED2 E6               [12] 5996 	mov	a,@r0
      004ED3 F4               [12] 5997 	cpl	a
      004ED4 F6               [12] 5998 	mov	@r0,a
      004ED5 08               [12] 5999 	inc	r0
      004ED6 E6               [12] 6000 	mov	a,@r0
      004ED7 F4               [12] 6001 	cpl	a
      004ED8 F6               [12] 6002 	mov	@r0,a
                                   6003 ;	calc.c:293: (void)stack_push(ctx->ps, d0);
      004ED9 8A 82            [24] 6004 	mov	dpl,r2
      004EDB 8B 83            [24] 6005 	mov	dph,r3
      004EDD 8C F0            [24] 6006 	mov	b,r4
      004EDF 12 65 6C         [24] 6007 	lcall	__gptrget
      004EE2 FA               [12] 6008 	mov	r2,a
      004EE3 A3               [24] 6009 	inc	dptr
      004EE4 12 65 6C         [24] 6010 	lcall	__gptrget
      004EE7 FB               [12] 6011 	mov	r3,a
      004EE8 A3               [24] 6012 	inc	dptr
      004EE9 12 65 6C         [24] 6013 	lcall	__gptrget
      004EEC FC               [12] 6014 	mov	r4,a
      004EED E5 08            [12] 6015 	mov	a,_bp
      004EEF 24 1A            [12] 6016 	add	a,#0x1a
      004EF1 F8               [12] 6017 	mov	r0,a
      004EF2 E6               [12] 6018 	mov	a,@r0
      004EF3 C0 E0            [24] 6019 	push	acc
      004EF5 08               [12] 6020 	inc	r0
      004EF6 E6               [12] 6021 	mov	a,@r0
      004EF7 C0 E0            [24] 6022 	push	acc
      004EF9 08               [12] 6023 	inc	r0
      004EFA E6               [12] 6024 	mov	a,@r0
      004EFB C0 E0            [24] 6025 	push	acc
      004EFD 08               [12] 6026 	inc	r0
      004EFE E6               [12] 6027 	mov	a,@r0
      004EFF C0 E0            [24] 6028 	push	acc
      004F01 8A 82            [24] 6029 	mov	dpl,r2
      004F03 8B 83            [24] 6030 	mov	dph,r3
      004F05 8C F0            [24] 6031 	mov	b,r4
      004F07 12 26 B5         [24] 6032 	lcall	_stack_push
      004F0A E5 81            [12] 6033 	mov	a,sp
      004F0C 24 FC            [12] 6034 	add	a,#0xfc
      004F0E F5 81            [12] 6035 	mov	sp,a
                                   6036 ;	calc.c:295: break;
                                   6037 ;	calc.c:296: default:
      004F10 80 05            [24] 6038 	sjmp	00249$
      004F12                       6039 00248$:
                                   6040 ;	calc.c:297: return UNDEF;
      004F12 90 80 00         [24] 6041 	mov	dptr,#0x8000
                                   6042 ;	calc.c:298: }
      004F15 80 03            [24] 6043 	sjmp	00252$
      004F17                       6044 00249$:
                                   6045 ;	calc.c:300: return 1;
      004F17 90 00 01         [24] 6046 	mov	dptr,#0x0001
      004F1A                       6047 00252$:
                                   6048 ;	calc.c:301: }
      004F1A 85 08 81         [24] 6049 	mov	sp,_bp
      004F1D D0 08            [24] 6050 	pop	_bp
      004F1F 22               [24] 6051 	ret
                                   6052 ;------------------------------------------------------------
                                   6053 ;Allocation info for local variables in function 'push_acc'
                                   6054 ;------------------------------------------------------------
                                   6055 ;delta                     Allocated to stack - _bp -5
                                   6056 ;_ctx                      Allocated to stack - _bp +1
                                   6057 ;ctx                       Allocated to registers r2 r3 r4 
                                   6058 ;sloc0                     Allocated to stack - _bp +4
                                   6059 ;------------------------------------------------------------
                                   6060 ;	calc.c:303: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   6061 ;	-----------------------------------------
                                   6062 ;	 function push_acc
                                   6063 ;	-----------------------------------------
      004F20                       6064 _push_acc:
      004F20 C0 08            [24] 6065 	push	_bp
      004F22 85 81 08         [24] 6066 	mov	_bp,sp
      004F25 C0 82            [24] 6067 	push	dpl
      004F27 C0 83            [24] 6068 	push	dph
      004F29 C0 F0            [24] 6069 	push	b
      004F2B E5 81            [12] 6070 	mov	a,sp
      004F2D 24 04            [12] 6071 	add	a,#0x04
      004F2F F5 81            [12] 6072 	mov	sp,a
                                   6073 ;	calc.c:304: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      004F31 A8 08            [24] 6074 	mov	r0,_bp
      004F33 08               [12] 6075 	inc	r0
      004F34 86 02            [24] 6076 	mov	ar2,@r0
      004F36 08               [12] 6077 	inc	r0
      004F37 86 03            [24] 6078 	mov	ar3,@r0
      004F39 08               [12] 6079 	inc	r0
      004F3A 86 04            [24] 6080 	mov	ar4,@r0
                                   6081 ;	calc.c:308: ctx->acc_valid = 0;
      004F3C 74 06            [12] 6082 	mov	a,#0x06
      004F3E 2A               [12] 6083 	add	a,r2
      004F3F FD               [12] 6084 	mov	r5,a
      004F40 E4               [12] 6085 	clr	a
      004F41 3B               [12] 6086 	addc	a,r3
      004F42 FE               [12] 6087 	mov	r6,a
      004F43 8C 07            [24] 6088 	mov	ar7,r4
      004F45 8D 82            [24] 6089 	mov	dpl,r5
      004F47 8E 83            [24] 6090 	mov	dph,r6
      004F49 8F F0            [24] 6091 	mov	b,r7
      004F4B E4               [12] 6092 	clr	a
      004F4C 12 5D DB         [24] 6093 	lcall	__gptrput
                                   6094 ;	calc.c:309: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      004F4F 74 02            [12] 6095 	mov	a,#0x02
      004F51 2A               [12] 6096 	add	a,r2
      004F52 FF               [12] 6097 	mov	r7,a
      004F53 E4               [12] 6098 	clr	a
      004F54 3B               [12] 6099 	addc	a,r3
      004F55 FD               [12] 6100 	mov	r5,a
      004F56 8C 06            [24] 6101 	mov	ar6,r4
      004F58 8F 82            [24] 6102 	mov	dpl,r7
      004F5A 8D 83            [24] 6103 	mov	dph,r5
      004F5C 8E F0            [24] 6104 	mov	b,r6
      004F5E E5 08            [12] 6105 	mov	a,_bp
      004F60 24 04            [12] 6106 	add	a,#0x04
      004F62 F8               [12] 6107 	mov	r0,a
      004F63 12 65 6C         [24] 6108 	lcall	__gptrget
      004F66 F6               [12] 6109 	mov	@r0,a
      004F67 A3               [24] 6110 	inc	dptr
      004F68 12 65 6C         [24] 6111 	lcall	__gptrget
      004F6B 08               [12] 6112 	inc	r0
      004F6C F6               [12] 6113 	mov	@r0,a
      004F6D A3               [24] 6114 	inc	dptr
      004F6E 12 65 6C         [24] 6115 	lcall	__gptrget
      004F71 08               [12] 6116 	inc	r0
      004F72 F6               [12] 6117 	mov	@r0,a
      004F73 A3               [24] 6118 	inc	dptr
      004F74 12 65 6C         [24] 6119 	lcall	__gptrget
      004F77 08               [12] 6120 	inc	r0
      004F78 F6               [12] 6121 	mov	@r0,a
      004F79 74 11            [12] 6122 	mov	a,#0x11
      004F7B 2A               [12] 6123 	add	a,r2
      004F7C FA               [12] 6124 	mov	r2,a
      004F7D 74 40            [12] 6125 	mov	a,#0x40
      004F7F 3B               [12] 6126 	addc	a,r3
      004F80 FB               [12] 6127 	mov	r3,a
      004F81 8C 07            [24] 6128 	mov	ar7,r4
      004F83 8A 82            [24] 6129 	mov	dpl,r2
      004F85 8B 83            [24] 6130 	mov	dph,r3
      004F87 8F F0            [24] 6131 	mov	b,r7
      004F89 12 65 6C         [24] 6132 	lcall	__gptrget
      004F8C FA               [12] 6133 	mov	r2,a
      004F8D A3               [24] 6134 	inc	dptr
      004F8E 12 65 6C         [24] 6135 	lcall	__gptrget
      004F91 FB               [12] 6136 	mov	r3,a
      004F92 A3               [24] 6137 	inc	dptr
      004F93 12 65 6C         [24] 6138 	lcall	__gptrget
      004F96 FF               [12] 6139 	mov	r7,a
      004F97 E5 08            [12] 6140 	mov	a,_bp
      004F99 24 04            [12] 6141 	add	a,#0x04
      004F9B F8               [12] 6142 	mov	r0,a
      004F9C E6               [12] 6143 	mov	a,@r0
      004F9D C0 E0            [24] 6144 	push	acc
      004F9F 08               [12] 6145 	inc	r0
      004FA0 E6               [12] 6146 	mov	a,@r0
      004FA1 C0 E0            [24] 6147 	push	acc
      004FA3 08               [12] 6148 	inc	r0
      004FA4 E6               [12] 6149 	mov	a,@r0
      004FA5 C0 E0            [24] 6150 	push	acc
      004FA7 08               [12] 6151 	inc	r0
      004FA8 E6               [12] 6152 	mov	a,@r0
      004FA9 C0 E0            [24] 6153 	push	acc
      004FAB 8A 82            [24] 6154 	mov	dpl,r2
      004FAD 8B 83            [24] 6155 	mov	dph,r3
      004FAF 8F F0            [24] 6156 	mov	b,r7
      004FB1 12 26 B5         [24] 6157 	lcall	_stack_push
      004FB4 AE 82            [24] 6158 	mov	r6,dpl
      004FB6 AF 83            [24] 6159 	mov	r7,dph
      004FB8 E5 81            [12] 6160 	mov	a,sp
      004FBA 24 FC            [12] 6161 	add	a,#0xfc
      004FBC F5 81            [12] 6162 	mov	sp,a
      004FBE EE               [12] 6163 	mov	a,r6
      004FBF 4F               [12] 6164 	orl	a,r7
      004FC0 70 09            [24] 6165 	jnz	00102$
      004FC2 90 7E 83         [24] 6166 	mov	dptr,#___str_12
      004FC5 75 F0 80         [24] 6167 	mov	b,#0x80
      004FC8 12 5E 27         [24] 6168 	lcall	_printstr
      004FCB                       6169 00102$:
                                   6170 ;	calc.c:311: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      004FCB E5 08            [12] 6171 	mov	a,_bp
      004FCD 24 FB            [12] 6172 	add	a,#0xfb
      004FCF F8               [12] 6173 	mov	r0,a
      004FD0 86 05            [24] 6174 	mov	ar5,@r0
      004FD2 08               [12] 6175 	inc	r0
      004FD3 86 06            [24] 6176 	mov	ar6,@r0
      004FD5 08               [12] 6177 	inc	r0
      004FD6 86 07            [24] 6178 	mov	ar7,@r0
      004FD8 74 02            [12] 6179 	mov	a,#0x02
      004FDA 2D               [12] 6180 	add	a,r5
      004FDB FA               [12] 6181 	mov	r2,a
      004FDC E4               [12] 6182 	clr	a
      004FDD 3E               [12] 6183 	addc	a,r6
      004FDE FB               [12] 6184 	mov	r3,a
      004FDF 8F 04            [24] 6185 	mov	ar4,r7
      004FE1 8A 82            [24] 6186 	mov	dpl,r2
      004FE3 8B 83            [24] 6187 	mov	dph,r3
      004FE5 8C F0            [24] 6188 	mov	b,r4
      004FE7 12 65 6C         [24] 6189 	lcall	__gptrget
      004FEA FA               [12] 6190 	mov	r2,a
      004FEB A3               [24] 6191 	inc	dptr
      004FEC 12 65 6C         [24] 6192 	lcall	__gptrget
      004FEF FB               [12] 6193 	mov	r3,a
      004FF0 BA 02 27         [24] 6194 	cjne	r2,#0x02,00104$
      004FF3 BB 00 24         [24] 6195 	cjne	r3,#0x00,00104$
      004FF6 C0 05            [24] 6196 	push	ar5
      004FF8 C0 06            [24] 6197 	push	ar6
      004FFA C0 07            [24] 6198 	push	ar7
      004FFC A8 08            [24] 6199 	mov	r0,_bp
      004FFE 08               [12] 6200 	inc	r0
      004FFF 86 82            [24] 6201 	mov	dpl,@r0
      005001 08               [12] 6202 	inc	r0
      005002 86 83            [24] 6203 	mov	dph,@r0
      005004 08               [12] 6204 	inc	r0
      005005 86 F0            [24] 6205 	mov	b,@r0
      005007 12 31 AB         [24] 6206 	lcall	_operator
      00500A AE 82            [24] 6207 	mov	r6,dpl
      00500C AF 83            [24] 6208 	mov	r7,dph
      00500E 15 81            [12] 6209 	dec	sp
      005010 15 81            [12] 6210 	dec	sp
      005012 15 81            [12] 6211 	dec	sp
      005014 8E 82            [24] 6212 	mov	dpl,r6
      005016 8F 83            [24] 6213 	mov	dph,r7
      005018 80 03            [24] 6214 	sjmp	00106$
      00501A                       6215 00104$:
                                   6216 ;	calc.c:312: else return 1;
      00501A 90 00 01         [24] 6217 	mov	dptr,#0x0001
      00501D                       6218 00106$:
                                   6219 ;	calc.c:313: }
      00501D 85 08 81         [24] 6220 	mov	sp,_bp
      005020 D0 08            [24] 6221 	pop	_bp
      005022 22               [24] 6222 	ret
                                   6223 ;------------------------------------------------------------
                                   6224 ;Allocation info for local variables in function 'reset_acc'
                                   6225 ;------------------------------------------------------------
                                   6226 ;delta                     Allocated to stack - _bp -5
                                   6227 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6228 ;ctx                       Allocated to registers r5 r6 r7 
                                   6229 ;------------------------------------------------------------
                                   6230 ;	calc.c:315: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   6231 ;	-----------------------------------------
                                   6232 ;	 function reset_acc
                                   6233 ;	-----------------------------------------
      005023                       6234 _reset_acc:
      005023 C0 08            [24] 6235 	push	_bp
      005025 85 81 08         [24] 6236 	mov	_bp,sp
      005028 AD 82            [24] 6237 	mov	r5,dpl
      00502A AE 83            [24] 6238 	mov	r6,dph
      00502C AF F0            [24] 6239 	mov	r7,b
                                   6240 ;	calc.c:316: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6241 ;	calc.c:318: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      00502E E5 08            [12] 6242 	mov	a,_bp
      005030 24 FB            [12] 6243 	add	a,#0xfb
      005032 F8               [12] 6244 	mov	r0,a
      005033 86 02            [24] 6245 	mov	ar2,@r0
      005035 08               [12] 6246 	inc	r0
      005036 86 03            [24] 6247 	mov	ar3,@r0
      005038 08               [12] 6248 	inc	r0
      005039 86 04            [24] 6249 	mov	ar4,@r0
      00503B 74 02            [12] 6250 	mov	a,#0x02
      00503D 2A               [12] 6251 	add	a,r2
      00503E FA               [12] 6252 	mov	r2,a
      00503F E4               [12] 6253 	clr	a
      005040 3B               [12] 6254 	addc	a,r3
      005041 FB               [12] 6255 	mov	r3,a
      005042 8A 82            [24] 6256 	mov	dpl,r2
      005044 8B 83            [24] 6257 	mov	dph,r3
      005046 8C F0            [24] 6258 	mov	b,r4
      005048 12 65 6C         [24] 6259 	lcall	__gptrget
      00504B FA               [12] 6260 	mov	r2,a
      00504C A3               [24] 6261 	inc	dptr
      00504D 12 65 6C         [24] 6262 	lcall	__gptrget
      005050 FB               [12] 6263 	mov	r3,a
      005051 BA 07 16         [24] 6264 	cjne	r2,#0x07,00102$
      005054 BB 00 13         [24] 6265 	cjne	r3,#0x00,00102$
      005057 74 06            [12] 6266 	mov	a,#0x06
      005059 2D               [12] 6267 	add	a,r5
      00505A FA               [12] 6268 	mov	r2,a
      00505B E4               [12] 6269 	clr	a
      00505C 3E               [12] 6270 	addc	a,r6
      00505D FB               [12] 6271 	mov	r3,a
      00505E 8F 04            [24] 6272 	mov	ar4,r7
      005060 8A 82            [24] 6273 	mov	dpl,r2
      005062 8B 83            [24] 6274 	mov	dph,r3
      005064 8C F0            [24] 6275 	mov	b,r4
      005066 E4               [12] 6276 	clr	a
      005067 12 5D DB         [24] 6277 	lcall	__gptrput
      00506A                       6278 00102$:
                                   6279 ;	calc.c:319: ctx->acc = 0l;
      00506A 74 02            [12] 6280 	mov	a,#0x02
      00506C 2D               [12] 6281 	add	a,r5
      00506D FD               [12] 6282 	mov	r5,a
      00506E E4               [12] 6283 	clr	a
      00506F 3E               [12] 6284 	addc	a,r6
      005070 FE               [12] 6285 	mov	r6,a
      005071 8D 82            [24] 6286 	mov	dpl,r5
      005073 8E 83            [24] 6287 	mov	dph,r6
      005075 8F F0            [24] 6288 	mov	b,r7
      005077 E4               [12] 6289 	clr	a
      005078 12 5D DB         [24] 6290 	lcall	__gptrput
      00507B A3               [24] 6291 	inc	dptr
      00507C 12 5D DB         [24] 6292 	lcall	__gptrput
      00507F A3               [24] 6293 	inc	dptr
      005080 12 5D DB         [24] 6294 	lcall	__gptrput
      005083 A3               [24] 6295 	inc	dptr
      005084 12 5D DB         [24] 6296 	lcall	__gptrput
                                   6297 ;	calc.c:321: return 1;
      005087 90 00 01         [24] 6298 	mov	dptr,#0x0001
                                   6299 ;	calc.c:322: }
      00508A D0 08            [24] 6300 	pop	_bp
      00508C 22               [24] 6301 	ret
                                   6302 ;------------------------------------------------------------
                                   6303 ;Allocation info for local variables in function 'reset_base'
                                   6304 ;------------------------------------------------------------
                                   6305 ;delta                     Allocated to stack - _bp -5
                                   6306 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6307 ;ctx                       Allocated to registers r5 r6 r7 
                                   6308 ;------------------------------------------------------------
                                   6309 ;	calc.c:324: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   6310 ;	-----------------------------------------
                                   6311 ;	 function reset_base
                                   6312 ;	-----------------------------------------
      00508D                       6313 _reset_base:
      00508D C0 08            [24] 6314 	push	_bp
      00508F 85 81 08         [24] 6315 	mov	_bp,sp
      005092 AD 82            [24] 6316 	mov	r5,dpl
      005094 AE 83            [24] 6317 	mov	r6,dph
      005096 AF F0            [24] 6318 	mov	r7,b
                                   6319 ;	calc.c:325: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6320 ;	calc.c:329: switch (ctx->digit[0]) {
      005098 74 07            [12] 6321 	mov	a,#0x07
      00509A 2D               [12] 6322 	add	a,r5
      00509B FA               [12] 6323 	mov	r2,a
      00509C E4               [12] 6324 	clr	a
      00509D 3E               [12] 6325 	addc	a,r6
      00509E FB               [12] 6326 	mov	r3,a
      00509F 8F 04            [24] 6327 	mov	ar4,r7
      0050A1 8A 82            [24] 6328 	mov	dpl,r2
      0050A3 8B 83            [24] 6329 	mov	dph,r3
      0050A5 8C F0            [24] 6330 	mov	b,r4
      0050A7 12 65 6C         [24] 6331 	lcall	__gptrget
      0050AA FC               [12] 6332 	mov	r4,a
      0050AB BC 48 02         [24] 6333 	cjne	r4,#0x48,00124$
      0050AE 80 0F            [24] 6334 	sjmp	00101$
      0050B0                       6335 00124$:
      0050B0 BC 4F 02         [24] 6336 	cjne	r4,#0x4f,00125$
      0050B3 80 2E            [24] 6337 	sjmp	00103$
      0050B5                       6338 00125$:
      0050B5 BC 68 02         [24] 6339 	cjne	r4,#0x68,00126$
      0050B8 80 17            [24] 6340 	sjmp	00102$
      0050BA                       6341 00126$:
                                   6342 ;	calc.c:330: case 'H':
      0050BA BC 6F 48         [24] 6343 	cjne	r4,#0x6f,00105$
      0050BD 80 36            [24] 6344 	sjmp	00104$
      0050BF                       6345 00101$:
                                   6346 ;	calc.c:331: ctx->base = 16;
      0050BF 8D 82            [24] 6347 	mov	dpl,r5
      0050C1 8E 83            [24] 6348 	mov	dph,r6
      0050C3 8F F0            [24] 6349 	mov	b,r7
      0050C5 74 10            [12] 6350 	mov	a,#0x10
      0050C7 12 5D DB         [24] 6351 	lcall	__gptrput
      0050CA A3               [24] 6352 	inc	dptr
      0050CB E4               [12] 6353 	clr	a
      0050CC 12 5D DB         [24] 6354 	lcall	__gptrput
                                   6355 ;	calc.c:332: break;
                                   6356 ;	calc.c:333: case 'h':
      0050CF 80 34            [24] 6357 	sjmp	00105$
      0050D1                       6358 00102$:
                                   6359 ;	calc.c:334: ctx->base = 10;
      0050D1 8D 82            [24] 6360 	mov	dpl,r5
      0050D3 8E 83            [24] 6361 	mov	dph,r6
      0050D5 8F F0            [24] 6362 	mov	b,r7
      0050D7 74 0A            [12] 6363 	mov	a,#0x0a
      0050D9 12 5D DB         [24] 6364 	lcall	__gptrput
      0050DC A3               [24] 6365 	inc	dptr
      0050DD E4               [12] 6366 	clr	a
      0050DE 12 5D DB         [24] 6367 	lcall	__gptrput
                                   6368 ;	calc.c:335: break;
                                   6369 ;	calc.c:336: case 'O':
      0050E1 80 22            [24] 6370 	sjmp	00105$
      0050E3                       6371 00103$:
                                   6372 ;	calc.c:337: ctx->base = 8;
      0050E3 8D 82            [24] 6373 	mov	dpl,r5
      0050E5 8E 83            [24] 6374 	mov	dph,r6
      0050E7 8F F0            [24] 6375 	mov	b,r7
      0050E9 74 08            [12] 6376 	mov	a,#0x08
      0050EB 12 5D DB         [24] 6377 	lcall	__gptrput
      0050EE A3               [24] 6378 	inc	dptr
      0050EF E4               [12] 6379 	clr	a
      0050F0 12 5D DB         [24] 6380 	lcall	__gptrput
                                   6381 ;	calc.c:338: break;
                                   6382 ;	calc.c:339: case 'o':
      0050F3 80 10            [24] 6383 	sjmp	00105$
      0050F5                       6384 00104$:
                                   6385 ;	calc.c:340: ctx->base = 2;
      0050F5 8D 82            [24] 6386 	mov	dpl,r5
      0050F7 8E 83            [24] 6387 	mov	dph,r6
      0050F9 8F F0            [24] 6388 	mov	b,r7
      0050FB 74 02            [12] 6389 	mov	a,#0x02
      0050FD 12 5D DB         [24] 6390 	lcall	__gptrput
      005100 A3               [24] 6391 	inc	dptr
      005101 E4               [12] 6392 	clr	a
      005102 12 5D DB         [24] 6393 	lcall	__gptrput
                                   6394 ;	calc.c:342: }
      005105                       6395 00105$:
                                   6396 ;	calc.c:344: return 1;
      005105 90 00 01         [24] 6397 	mov	dptr,#0x0001
                                   6398 ;	calc.c:345: }
      005108 D0 08            [24] 6399 	pop	_bp
      00510A 22               [24] 6400 	ret
                                   6401 ;------------------------------------------------------------
                                   6402 ;Allocation info for local variables in function 'status'
                                   6403 ;------------------------------------------------------------
                                   6404 ;delta                     Allocated to stack - _bp -5
                                   6405 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6406 ;ctx                       Allocated to stack - _bp +9
                                   6407 ;vals                      Allocated to stack - _bp +12
                                   6408 ;n                         Allocated to registers r6 r7 
                                   6409 ;__1310720011              Allocated to registers r5 r6 r7 r4 
                                   6410 ;d                         Allocated to registers 
                                   6411 ;__1310720013              Allocated to registers r2 r3 r4 r5 
                                   6412 ;d                         Allocated to registers 
                                   6413 ;__1310720015              Allocated to registers r4 r5 r6 r7 
                                   6414 ;d                         Allocated to registers 
                                   6415 ;__1310720017              Allocated to registers r2 r3 r4 r5 
                                   6416 ;d                         Allocated to registers 
                                   6417 ;__1310720019              Allocated to registers r4 r5 r6 r7 
                                   6418 ;d                         Allocated to registers 
                                   6419 ;sloc0                     Allocated to stack - _bp +1
                                   6420 ;sloc1                     Allocated to stack - _bp +4
                                   6421 ;sloc2                     Allocated to stack - _bp +7
                                   6422 ;------------------------------------------------------------
                                   6423 ;	calc.c:347: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   6424 ;	-----------------------------------------
                                   6425 ;	 function status
                                   6426 ;	-----------------------------------------
      00510B                       6427 _status:
      00510B C0 08            [24] 6428 	push	_bp
      00510D E5 81            [12] 6429 	mov	a,sp
      00510F F5 08            [12] 6430 	mov	_bp,a
      005111 24 13            [12] 6431 	add	a,#0x13
      005113 F5 81            [12] 6432 	mov	sp,a
      005115 AD 82            [24] 6433 	mov	r5,dpl
      005117 AE 83            [24] 6434 	mov	r6,dph
      005119 AF F0            [24] 6435 	mov	r7,b
                                   6436 ;	calc.c:348: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      00511B E5 08            [12] 6437 	mov	a,_bp
      00511D 24 09            [12] 6438 	add	a,#0x09
      00511F F8               [12] 6439 	mov	r0,a
      005120 A6 05            [24] 6440 	mov	@r0,ar5
      005122 08               [12] 6441 	inc	r0
      005123 A6 06            [24] 6442 	mov	@r0,ar6
      005125 08               [12] 6443 	inc	r0
      005126 A6 07            [24] 6444 	mov	@r0,ar7
                                   6445 ;	calc.c:354: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      005128 E5 08            [12] 6446 	mov	a,_bp
      00512A 24 09            [12] 6447 	add	a,#0x09
      00512C F8               [12] 6448 	mov	r0,a
      00512D 86 82            [24] 6449 	mov	dpl,@r0
      00512F 08               [12] 6450 	inc	r0
      005130 86 83            [24] 6451 	mov	dph,@r0
      005132 08               [12] 6452 	inc	r0
      005133 86 F0            [24] 6453 	mov	b,@r0
      005135 E5 08            [12] 6454 	mov	a,_bp
      005137 24 07            [12] 6455 	add	a,#0x07
      005139 F9               [12] 6456 	mov	r1,a
      00513A 12 65 6C         [24] 6457 	lcall	__gptrget
      00513D F7               [12] 6458 	mov	@r1,a
      00513E A3               [24] 6459 	inc	dptr
      00513F 12 65 6C         [24] 6460 	lcall	__gptrget
      005142 09               [12] 6461 	inc	r1
      005143 F7               [12] 6462 	mov	@r1,a
      005144 E5 08            [12] 6463 	mov	a,_bp
      005146 24 09            [12] 6464 	add	a,#0x09
      005148 F8               [12] 6465 	mov	r0,a
      005149 A9 08            [24] 6466 	mov	r1,_bp
      00514B 09               [12] 6467 	inc	r1
      00514C 74 14            [12] 6468 	mov	a,#0x14
      00514E 26               [12] 6469 	add	a,@r0
      00514F F7               [12] 6470 	mov	@r1,a
      005150 74 40            [12] 6471 	mov	a,#0x40
      005152 08               [12] 6472 	inc	r0
      005153 36               [12] 6473 	addc	a,@r0
      005154 09               [12] 6474 	inc	r1
      005155 F7               [12] 6475 	mov	@r1,a
      005156 08               [12] 6476 	inc	r0
      005157 09               [12] 6477 	inc	r1
      005158 E6               [12] 6478 	mov	a,@r0
      005159 F7               [12] 6479 	mov	@r1,a
      00515A A8 08            [24] 6480 	mov	r0,_bp
      00515C 08               [12] 6481 	inc	r0
      00515D 86 82            [24] 6482 	mov	dpl,@r0
      00515F 08               [12] 6483 	inc	r0
      005160 86 83            [24] 6484 	mov	dph,@r0
      005162 08               [12] 6485 	inc	r0
      005163 86 F0            [24] 6486 	mov	b,@r0
      005165 12 65 6C         [24] 6487 	lcall	__gptrget
      005168 FA               [12] 6488 	mov	r2,a
      005169 A3               [24] 6489 	inc	dptr
      00516A 12 65 6C         [24] 6490 	lcall	__gptrget
      00516D FE               [12] 6491 	mov	r6,a
      00516E A3               [24] 6492 	inc	dptr
      00516F 12 65 6C         [24] 6493 	lcall	__gptrget
      005172 FF               [12] 6494 	mov	r7,a
      005173 E5 08            [12] 6495 	mov	a,_bp
      005175 24 09            [12] 6496 	add	a,#0x09
      005177 F8               [12] 6497 	mov	r0,a
      005178 E5 08            [12] 6498 	mov	a,_bp
      00517A 24 04            [12] 6499 	add	a,#0x04
      00517C F9               [12] 6500 	mov	r1,a
      00517D 74 11            [12] 6501 	mov	a,#0x11
      00517F 26               [12] 6502 	add	a,@r0
      005180 F7               [12] 6503 	mov	@r1,a
      005181 74 40            [12] 6504 	mov	a,#0x40
      005183 08               [12] 6505 	inc	r0
      005184 36               [12] 6506 	addc	a,@r0
      005185 09               [12] 6507 	inc	r1
      005186 F7               [12] 6508 	mov	@r1,a
      005187 08               [12] 6509 	inc	r0
      005188 09               [12] 6510 	inc	r1
      005189 E6               [12] 6511 	mov	a,@r0
      00518A F7               [12] 6512 	mov	@r1,a
      00518B E5 08            [12] 6513 	mov	a,_bp
      00518D 24 04            [12] 6514 	add	a,#0x04
      00518F F8               [12] 6515 	mov	r0,a
      005190 86 82            [24] 6516 	mov	dpl,@r0
      005192 08               [12] 6517 	inc	r0
      005193 86 83            [24] 6518 	mov	dph,@r0
      005195 08               [12] 6519 	inc	r0
      005196 86 F0            [24] 6520 	mov	b,@r0
      005198 12 65 6C         [24] 6521 	lcall	__gptrget
      00519B FB               [12] 6522 	mov	r3,a
      00519C A3               [24] 6523 	inc	dptr
      00519D 12 65 6C         [24] 6524 	lcall	__gptrget
      0051A0 FC               [12] 6525 	mov	r4,a
      0051A1 A3               [24] 6526 	inc	dptr
      0051A2 12 65 6C         [24] 6527 	lcall	__gptrget
      0051A5 FD               [12] 6528 	mov	r5,a
      0051A6 E5 08            [12] 6529 	mov	a,_bp
      0051A8 24 07            [12] 6530 	add	a,#0x07
      0051AA F8               [12] 6531 	mov	r0,a
      0051AB E6               [12] 6532 	mov	a,@r0
      0051AC C0 E0            [24] 6533 	push	acc
      0051AE 08               [12] 6534 	inc	r0
      0051AF E6               [12] 6535 	mov	a,@r0
      0051B0 C0 E0            [24] 6536 	push	acc
      0051B2 C0 02            [24] 6537 	push	ar2
      0051B4 C0 06            [24] 6538 	push	ar6
      0051B6 C0 07            [24] 6539 	push	ar7
      0051B8 C0 03            [24] 6540 	push	ar3
      0051BA C0 04            [24] 6541 	push	ar4
      0051BC C0 05            [24] 6542 	push	ar5
      0051BE 74 AB            [12] 6543 	mov	a,#___str_14
      0051C0 C0 E0            [24] 6544 	push	acc
      0051C2 74 7E            [12] 6545 	mov	a,#(___str_14 >> 8)
      0051C4 C0 E0            [24] 6546 	push	acc
      0051C6 74 80            [12] 6547 	mov	a,#0x80
      0051C8 C0 E0            [24] 6548 	push	acc
      0051CA 12 65 33         [24] 6549 	lcall	_printf
      0051CD E5 81            [12] 6550 	mov	a,sp
      0051CF 24 F5            [12] 6551 	add	a,#0xf5
      0051D1 F5 81            [12] 6552 	mov	sp,a
                                   6553 ;	calc.c:356: printstr("ACC\t");
      0051D3 90 7E CB         [24] 6554 	mov	dptr,#___str_15
      0051D6 75 F0 80         [24] 6555 	mov	b,#0x80
      0051D9 12 5E 27         [24] 6556 	lcall	_printstr
                                   6557 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      0051DC E5 08            [12] 6558 	mov	a,_bp
      0051DE 24 09            [12] 6559 	add	a,#0x09
      0051E0 F8               [12] 6560 	mov	r0,a
      0051E1 74 06            [12] 6561 	mov	a,#0x06
      0051E3 26               [12] 6562 	add	a,@r0
      0051E4 FD               [12] 6563 	mov	r5,a
      0051E5 E4               [12] 6564 	clr	a
      0051E6 08               [12] 6565 	inc	r0
      0051E7 36               [12] 6566 	addc	a,@r0
      0051E8 FE               [12] 6567 	mov	r6,a
      0051E9 08               [12] 6568 	inc	r0
      0051EA 86 07            [24] 6569 	mov	ar7,@r0
      0051EC 8D 82            [24] 6570 	mov	dpl,r5
      0051EE 8E 83            [24] 6571 	mov	dph,r6
      0051F0 8F F0            [24] 6572 	mov	b,r7
      0051F2 12 65 6C         [24] 6573 	lcall	__gptrget
      0051F5 70 03            [24] 6574 	jnz	00143$
      0051F7 02 52 A0         [24] 6575 	ljmp	00102$
      0051FA                       6576 00143$:
      0051FA E5 08            [12] 6577 	mov	a,_bp
      0051FC 24 09            [12] 6578 	add	a,#0x09
      0051FE F8               [12] 6579 	mov	r0,a
      0051FF 74 02            [12] 6580 	mov	a,#0x02
      005201 26               [12] 6581 	add	a,@r0
      005202 FD               [12] 6582 	mov	r5,a
      005203 E4               [12] 6583 	clr	a
      005204 08               [12] 6584 	inc	r0
      005205 36               [12] 6585 	addc	a,@r0
      005206 FE               [12] 6586 	mov	r6,a
      005207 08               [12] 6587 	inc	r0
      005208 86 07            [24] 6588 	mov	ar7,@r0
      00520A 8D 82            [24] 6589 	mov	dpl,r5
      00520C 8E 83            [24] 6590 	mov	dph,r6
      00520E 8F F0            [24] 6591 	mov	b,r7
      005210 12 65 6C         [24] 6592 	lcall	__gptrget
      005213 FD               [12] 6593 	mov	r5,a
      005214 A3               [24] 6594 	inc	dptr
      005215 12 65 6C         [24] 6595 	lcall	__gptrget
      005218 FE               [12] 6596 	mov	r6,a
      005219 A3               [24] 6597 	inc	dptr
      00521A 12 65 6C         [24] 6598 	lcall	__gptrget
      00521D FF               [12] 6599 	mov	r7,a
      00521E A3               [24] 6600 	inc	dptr
      00521F 12 65 6C         [24] 6601 	lcall	__gptrget
                                   6602 ;	calc.c:18: print32x(d);
      005222 FC               [12] 6603 	mov	r4,a
      005223 8D 82            [24] 6604 	mov	dpl,r5
      005225 8E 83            [24] 6605 	mov	dph,r6
      005227 8F F0            [24] 6606 	mov	b,r7
      005229 C0 07            [24] 6607 	push	ar7
      00522B C0 06            [24] 6608 	push	ar6
      00522D C0 05            [24] 6609 	push	ar5
      00522F C0 04            [24] 6610 	push	ar4
      005231 12 5F D7         [24] 6611 	lcall	_print32x
      005234 D0 04            [24] 6612 	pop	ar4
      005236 D0 05            [24] 6613 	pop	ar5
      005238 D0 06            [24] 6614 	pop	ar6
      00523A D0 07            [24] 6615 	pop	ar7
                                   6616 ;	calc.c:19: printf("% 11ld\t", d);
      00523C C0 07            [24] 6617 	push	ar7
      00523E C0 06            [24] 6618 	push	ar6
      005240 C0 05            [24] 6619 	push	ar5
      005242 C0 04            [24] 6620 	push	ar4
      005244 C0 05            [24] 6621 	push	ar5
      005246 C0 06            [24] 6622 	push	ar6
      005248 C0 07            [24] 6623 	push	ar7
      00524A C0 04            [24] 6624 	push	ar4
      00524C 74 ED            [12] 6625 	mov	a,#___str_0
      00524E C0 E0            [24] 6626 	push	acc
      005250 74 7D            [12] 6627 	mov	a,#(___str_0 >> 8)
      005252 C0 E0            [24] 6628 	push	acc
      005254 74 80            [12] 6629 	mov	a,#0x80
      005256 C0 E0            [24] 6630 	push	acc
      005258 12 65 33         [24] 6631 	lcall	_printf
      00525B E5 81            [12] 6632 	mov	a,sp
      00525D 24 F9            [12] 6633 	add	a,#0xf9
      00525F F5 81            [12] 6634 	mov	sp,a
      005261 D0 04            [24] 6635 	pop	ar4
      005263 D0 05            [24] 6636 	pop	ar5
      005265 D0 06            [24] 6637 	pop	ar6
      005267 D0 07            [24] 6638 	pop	ar7
                                   6639 ;	calc.c:20: printf("%011lo\t", d);
      005269 C0 07            [24] 6640 	push	ar7
      00526B C0 06            [24] 6641 	push	ar6
      00526D C0 05            [24] 6642 	push	ar5
      00526F C0 04            [24] 6643 	push	ar4
      005271 C0 05            [24] 6644 	push	ar5
      005273 C0 06            [24] 6645 	push	ar6
      005275 C0 07            [24] 6646 	push	ar7
      005277 C0 04            [24] 6647 	push	ar4
      005279 74 F5            [12] 6648 	mov	a,#___str_1
      00527B C0 E0            [24] 6649 	push	acc
      00527D 74 7D            [12] 6650 	mov	a,#(___str_1 >> 8)
      00527F C0 E0            [24] 6651 	push	acc
      005281 74 80            [12] 6652 	mov	a,#0x80
      005283 C0 E0            [24] 6653 	push	acc
      005285 12 65 33         [24] 6654 	lcall	_printf
      005288 E5 81            [12] 6655 	mov	a,sp
      00528A 24 F9            [12] 6656 	add	a,#0xf9
      00528C F5 81            [12] 6657 	mov	sp,a
      00528E D0 04            [24] 6658 	pop	ar4
      005290 D0 05            [24] 6659 	pop	ar5
      005292 D0 06            [24] 6660 	pop	ar6
      005294 D0 07            [24] 6661 	pop	ar7
                                   6662 ;	calc.c:21: print32bin(d);
      005296 8D 82            [24] 6663 	mov	dpl,r5
      005298 8E 83            [24] 6664 	mov	dph,r6
      00529A 8F F0            [24] 6665 	mov	b,r7
      00529C EC               [12] 6666 	mov	a,r4
      00529D 12 5E 96         [24] 6667 	lcall	_print32bin
                                   6668 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      0052A0                       6669 00102$:
                                   6670 ;	calc.c:359: n = stack_peek2(ctx->ps, vals);
      0052A0 E5 08            [12] 6671 	mov	a,_bp
      0052A2 24 0C            [12] 6672 	add	a,#0x0c
      0052A4 F9               [12] 6673 	mov	r1,a
      0052A5 FD               [12] 6674 	mov	r5,a
      0052A6 7E 00            [12] 6675 	mov	r6,#0x00
      0052A8 7F 40            [12] 6676 	mov	r7,#0x40
      0052AA E5 08            [12] 6677 	mov	a,_bp
      0052AC 24 04            [12] 6678 	add	a,#0x04
      0052AE F8               [12] 6679 	mov	r0,a
      0052AF 86 82            [24] 6680 	mov	dpl,@r0
      0052B1 08               [12] 6681 	inc	r0
      0052B2 86 83            [24] 6682 	mov	dph,@r0
      0052B4 08               [12] 6683 	inc	r0
      0052B5 86 F0            [24] 6684 	mov	b,@r0
      0052B7 12 65 6C         [24] 6685 	lcall	__gptrget
      0052BA FA               [12] 6686 	mov	r2,a
      0052BB A3               [24] 6687 	inc	dptr
      0052BC 12 65 6C         [24] 6688 	lcall	__gptrget
      0052BF FB               [12] 6689 	mov	r3,a
      0052C0 A3               [24] 6690 	inc	dptr
      0052C1 12 65 6C         [24] 6691 	lcall	__gptrget
      0052C4 FC               [12] 6692 	mov	r4,a
      0052C5 C0 01            [24] 6693 	push	ar1
      0052C7 C0 05            [24] 6694 	push	ar5
      0052C9 C0 06            [24] 6695 	push	ar6
      0052CB C0 07            [24] 6696 	push	ar7
      0052CD 8A 82            [24] 6697 	mov	dpl,r2
      0052CF 8B 83            [24] 6698 	mov	dph,r3
      0052D1 8C F0            [24] 6699 	mov	b,r4
      0052D3 12 28 FF         [24] 6700 	lcall	_stack_peek2
      0052D6 AE 82            [24] 6701 	mov	r6,dpl
      0052D8 AF 83            [24] 6702 	mov	r7,dph
      0052DA 15 81            [12] 6703 	dec	sp
      0052DC 15 81            [12] 6704 	dec	sp
      0052DE 15 81            [12] 6705 	dec	sp
      0052E0 D0 01            [24] 6706 	pop	ar1
                                   6707 ;	calc.c:360: printstr("\r\nPSTOP1\t");
      0052E2 90 7E D0         [24] 6708 	mov	dptr,#___str_16
      0052E5 75 F0 80         [24] 6709 	mov	b,#0x80
      0052E8 C0 07            [24] 6710 	push	ar7
      0052EA C0 06            [24] 6711 	push	ar6
      0052EC C0 01            [24] 6712 	push	ar1
      0052EE 12 5E 27         [24] 6713 	lcall	_printstr
      0052F1 D0 01            [24] 6714 	pop	ar1
      0052F3 D0 06            [24] 6715 	pop	ar6
      0052F5 D0 07            [24] 6716 	pop	ar7
                                   6717 ;	calc.c:361: if (n > 0) printall(vals[1]);
      0052F7 C3               [12] 6718 	clr	c
      0052F8 E4               [12] 6719 	clr	a
      0052F9 9E               [12] 6720 	subb	a,r6
      0052FA 74 80            [12] 6721 	mov	a,#(0x00 ^ 0x80)
      0052FC 8F F0            [24] 6722 	mov	b,r7
      0052FE 63 F0 80         [24] 6723 	xrl	b,#0x80
      005301 95 F0            [12] 6724 	subb	a,b
      005303 40 03            [24] 6725 	jc	00144$
      005305 02 53 AD         [24] 6726 	ljmp	00104$
      005308                       6727 00144$:
      005308 74 04            [12] 6728 	mov	a,#0x04
      00530A 29               [12] 6729 	add	a,r1
      00530B F8               [12] 6730 	mov	r0,a
      00530C 86 02            [24] 6731 	mov	ar2,@r0
      00530E 08               [12] 6732 	inc	r0
      00530F 86 03            [24] 6733 	mov	ar3,@r0
      005311 08               [12] 6734 	inc	r0
      005312 86 04            [24] 6735 	mov	ar4,@r0
      005314 08               [12] 6736 	inc	r0
      005315 86 05            [24] 6737 	mov	ar5,@r0
                                   6738 ;	calc.c:18: print32x(d);
      005317 8A 82            [24] 6739 	mov	dpl,r2
      005319 8B 83            [24] 6740 	mov	dph,r3
      00531B 8C F0            [24] 6741 	mov	b,r4
      00531D ED               [12] 6742 	mov	a,r5
      00531E C0 07            [24] 6743 	push	ar7
      005320 C0 06            [24] 6744 	push	ar6
      005322 C0 05            [24] 6745 	push	ar5
      005324 C0 04            [24] 6746 	push	ar4
      005326 C0 03            [24] 6747 	push	ar3
      005328 C0 02            [24] 6748 	push	ar2
      00532A C0 01            [24] 6749 	push	ar1
      00532C 12 5F D7         [24] 6750 	lcall	_print32x
      00532F D0 01            [24] 6751 	pop	ar1
      005331 D0 02            [24] 6752 	pop	ar2
      005333 D0 03            [24] 6753 	pop	ar3
      005335 D0 04            [24] 6754 	pop	ar4
      005337 D0 05            [24] 6755 	pop	ar5
                                   6756 ;	calc.c:19: printf("% 11ld\t", d);
      005339 C0 05            [24] 6757 	push	ar5
      00533B C0 04            [24] 6758 	push	ar4
      00533D C0 03            [24] 6759 	push	ar3
      00533F C0 02            [24] 6760 	push	ar2
      005341 C0 01            [24] 6761 	push	ar1
      005343 C0 02            [24] 6762 	push	ar2
      005345 C0 03            [24] 6763 	push	ar3
      005347 C0 04            [24] 6764 	push	ar4
      005349 C0 05            [24] 6765 	push	ar5
      00534B 74 ED            [12] 6766 	mov	a,#___str_0
      00534D C0 E0            [24] 6767 	push	acc
      00534F 74 7D            [12] 6768 	mov	a,#(___str_0 >> 8)
      005351 C0 E0            [24] 6769 	push	acc
      005353 74 80            [12] 6770 	mov	a,#0x80
      005355 C0 E0            [24] 6771 	push	acc
      005357 12 65 33         [24] 6772 	lcall	_printf
      00535A E5 81            [12] 6773 	mov	a,sp
      00535C 24 F9            [12] 6774 	add	a,#0xf9
      00535E F5 81            [12] 6775 	mov	sp,a
      005360 D0 01            [24] 6776 	pop	ar1
      005362 D0 02            [24] 6777 	pop	ar2
      005364 D0 03            [24] 6778 	pop	ar3
      005366 D0 04            [24] 6779 	pop	ar4
      005368 D0 05            [24] 6780 	pop	ar5
                                   6781 ;	calc.c:20: printf("%011lo\t", d);
      00536A C0 05            [24] 6782 	push	ar5
      00536C C0 04            [24] 6783 	push	ar4
      00536E C0 03            [24] 6784 	push	ar3
      005370 C0 02            [24] 6785 	push	ar2
      005372 C0 01            [24] 6786 	push	ar1
      005374 C0 02            [24] 6787 	push	ar2
      005376 C0 03            [24] 6788 	push	ar3
      005378 C0 04            [24] 6789 	push	ar4
      00537A C0 05            [24] 6790 	push	ar5
      00537C 74 F5            [12] 6791 	mov	a,#___str_1
      00537E C0 E0            [24] 6792 	push	acc
      005380 74 7D            [12] 6793 	mov	a,#(___str_1 >> 8)
      005382 C0 E0            [24] 6794 	push	acc
      005384 74 80            [12] 6795 	mov	a,#0x80
      005386 C0 E0            [24] 6796 	push	acc
      005388 12 65 33         [24] 6797 	lcall	_printf
      00538B E5 81            [12] 6798 	mov	a,sp
      00538D 24 F9            [12] 6799 	add	a,#0xf9
      00538F F5 81            [12] 6800 	mov	sp,a
      005391 D0 01            [24] 6801 	pop	ar1
      005393 D0 02            [24] 6802 	pop	ar2
      005395 D0 03            [24] 6803 	pop	ar3
      005397 D0 04            [24] 6804 	pop	ar4
      005399 D0 05            [24] 6805 	pop	ar5
                                   6806 ;	calc.c:21: print32bin(d);
      00539B 8A 82            [24] 6807 	mov	dpl,r2
      00539D 8B 83            [24] 6808 	mov	dph,r3
      00539F 8C F0            [24] 6809 	mov	b,r4
      0053A1 ED               [12] 6810 	mov	a,r5
      0053A2 C0 01            [24] 6811 	push	ar1
      0053A4 12 5E 96         [24] 6812 	lcall	_print32bin
      0053A7 D0 01            [24] 6813 	pop	ar1
      0053A9 D0 06            [24] 6814 	pop	ar6
      0053AB D0 07            [24] 6815 	pop	ar7
                                   6816 ;	calc.c:361: if (n > 0) printall(vals[1]);
      0053AD                       6817 00104$:
                                   6818 ;	calc.c:362: printstr("\r\nPSTOP0\t");
      0053AD 90 7E DA         [24] 6819 	mov	dptr,#___str_17
      0053B0 75 F0 80         [24] 6820 	mov	b,#0x80
      0053B3 C0 07            [24] 6821 	push	ar7
      0053B5 C0 06            [24] 6822 	push	ar6
      0053B7 C0 01            [24] 6823 	push	ar1
      0053B9 12 5E 27         [24] 6824 	lcall	_printstr
      0053BC D0 01            [24] 6825 	pop	ar1
      0053BE D0 06            [24] 6826 	pop	ar6
      0053C0 D0 07            [24] 6827 	pop	ar7
                                   6828 ;	calc.c:363: if (n > 1) printall(vals[0]);
      0053C2 C3               [12] 6829 	clr	c
      0053C3 74 01            [12] 6830 	mov	a,#0x01
      0053C5 9E               [12] 6831 	subb	a,r6
      0053C6 74 80            [12] 6832 	mov	a,#(0x00 ^ 0x80)
      0053C8 8F F0            [24] 6833 	mov	b,r7
      0053CA 63 F0 80         [24] 6834 	xrl	b,#0x80
      0053CD 95 F0            [12] 6835 	subb	a,b
      0053CF 40 03            [24] 6836 	jc	00145$
      0053D1 02 54 70         [24] 6837 	ljmp	00106$
      0053D4                       6838 00145$:
      0053D4 87 04            [24] 6839 	mov	ar4,@r1
      0053D6 09               [12] 6840 	inc	r1
      0053D7 87 05            [24] 6841 	mov	ar5,@r1
      0053D9 09               [12] 6842 	inc	r1
      0053DA 87 06            [24] 6843 	mov	ar6,@r1
      0053DC 09               [12] 6844 	inc	r1
      0053DD 87 07            [24] 6845 	mov	ar7,@r1
      0053DF 19               [12] 6846 	dec	r1
      0053E0 19               [12] 6847 	dec	r1
      0053E1 19               [12] 6848 	dec	r1
                                   6849 ;	calc.c:18: print32x(d);
      0053E2 8C 82            [24] 6850 	mov	dpl,r4
      0053E4 8D 83            [24] 6851 	mov	dph,r5
      0053E6 8E F0            [24] 6852 	mov	b,r6
      0053E8 EF               [12] 6853 	mov	a,r7
      0053E9 C0 07            [24] 6854 	push	ar7
      0053EB C0 06            [24] 6855 	push	ar6
      0053ED C0 05            [24] 6856 	push	ar5
      0053EF C0 04            [24] 6857 	push	ar4
      0053F1 C0 01            [24] 6858 	push	ar1
      0053F3 12 5F D7         [24] 6859 	lcall	_print32x
      0053F6 D0 01            [24] 6860 	pop	ar1
      0053F8 D0 04            [24] 6861 	pop	ar4
      0053FA D0 05            [24] 6862 	pop	ar5
      0053FC D0 06            [24] 6863 	pop	ar6
      0053FE D0 07            [24] 6864 	pop	ar7
                                   6865 ;	calc.c:19: printf("% 11ld\t", d);
      005400 C0 07            [24] 6866 	push	ar7
      005402 C0 06            [24] 6867 	push	ar6
      005404 C0 05            [24] 6868 	push	ar5
      005406 C0 04            [24] 6869 	push	ar4
      005408 C0 01            [24] 6870 	push	ar1
      00540A C0 04            [24] 6871 	push	ar4
      00540C C0 05            [24] 6872 	push	ar5
      00540E C0 06            [24] 6873 	push	ar6
      005410 C0 07            [24] 6874 	push	ar7
      005412 74 ED            [12] 6875 	mov	a,#___str_0
      005414 C0 E0            [24] 6876 	push	acc
      005416 74 7D            [12] 6877 	mov	a,#(___str_0 >> 8)
      005418 C0 E0            [24] 6878 	push	acc
      00541A 74 80            [12] 6879 	mov	a,#0x80
      00541C C0 E0            [24] 6880 	push	acc
      00541E 12 65 33         [24] 6881 	lcall	_printf
      005421 E5 81            [12] 6882 	mov	a,sp
      005423 24 F9            [12] 6883 	add	a,#0xf9
      005425 F5 81            [12] 6884 	mov	sp,a
      005427 D0 01            [24] 6885 	pop	ar1
      005429 D0 04            [24] 6886 	pop	ar4
      00542B D0 05            [24] 6887 	pop	ar5
      00542D D0 06            [24] 6888 	pop	ar6
      00542F D0 07            [24] 6889 	pop	ar7
                                   6890 ;	calc.c:20: printf("%011lo\t", d);
      005431 C0 07            [24] 6891 	push	ar7
      005433 C0 06            [24] 6892 	push	ar6
      005435 C0 05            [24] 6893 	push	ar5
      005437 C0 04            [24] 6894 	push	ar4
      005439 C0 01            [24] 6895 	push	ar1
      00543B C0 04            [24] 6896 	push	ar4
      00543D C0 05            [24] 6897 	push	ar5
      00543F C0 06            [24] 6898 	push	ar6
      005441 C0 07            [24] 6899 	push	ar7
      005443 74 F5            [12] 6900 	mov	a,#___str_1
      005445 C0 E0            [24] 6901 	push	acc
      005447 74 7D            [12] 6902 	mov	a,#(___str_1 >> 8)
      005449 C0 E0            [24] 6903 	push	acc
      00544B 74 80            [12] 6904 	mov	a,#0x80
      00544D C0 E0            [24] 6905 	push	acc
      00544F 12 65 33         [24] 6906 	lcall	_printf
      005452 E5 81            [12] 6907 	mov	a,sp
      005454 24 F9            [12] 6908 	add	a,#0xf9
      005456 F5 81            [12] 6909 	mov	sp,a
      005458 D0 01            [24] 6910 	pop	ar1
      00545A D0 04            [24] 6911 	pop	ar4
      00545C D0 05            [24] 6912 	pop	ar5
      00545E D0 06            [24] 6913 	pop	ar6
      005460 D0 07            [24] 6914 	pop	ar7
                                   6915 ;	calc.c:21: print32bin(d);
      005462 8C 82            [24] 6916 	mov	dpl,r4
      005464 8D 83            [24] 6917 	mov	dph,r5
      005466 8E F0            [24] 6918 	mov	b,r6
      005468 EF               [12] 6919 	mov	a,r7
      005469 C0 01            [24] 6920 	push	ar1
      00546B 12 5E 96         [24] 6921 	lcall	_print32bin
      00546E D0 01            [24] 6922 	pop	ar1
                                   6923 ;	calc.c:363: if (n > 1) printall(vals[0]);
      005470                       6924 00106$:
                                   6925 ;	calc.c:365: n = stack_peek2(ctx->ss, vals);
      005470 89 07            [24] 6926 	mov	ar7,r1
      005472 7E 00            [12] 6927 	mov	r6,#0x00
      005474 7D 40            [12] 6928 	mov	r5,#0x40
      005476 A8 08            [24] 6929 	mov	r0,_bp
      005478 08               [12] 6930 	inc	r0
      005479 86 82            [24] 6931 	mov	dpl,@r0
      00547B 08               [12] 6932 	inc	r0
      00547C 86 83            [24] 6933 	mov	dph,@r0
      00547E 08               [12] 6934 	inc	r0
      00547F 86 F0            [24] 6935 	mov	b,@r0
      005481 12 65 6C         [24] 6936 	lcall	__gptrget
      005484 FA               [12] 6937 	mov	r2,a
      005485 A3               [24] 6938 	inc	dptr
      005486 12 65 6C         [24] 6939 	lcall	__gptrget
      005489 FB               [12] 6940 	mov	r3,a
      00548A A3               [24] 6941 	inc	dptr
      00548B 12 65 6C         [24] 6942 	lcall	__gptrget
      00548E FC               [12] 6943 	mov	r4,a
      00548F C0 01            [24] 6944 	push	ar1
      005491 C0 07            [24] 6945 	push	ar7
      005493 C0 06            [24] 6946 	push	ar6
      005495 C0 05            [24] 6947 	push	ar5
      005497 8A 82            [24] 6948 	mov	dpl,r2
      005499 8B 83            [24] 6949 	mov	dph,r3
      00549B 8C F0            [24] 6950 	mov	b,r4
      00549D 12 28 FF         [24] 6951 	lcall	_stack_peek2
      0054A0 AE 82            [24] 6952 	mov	r6,dpl
      0054A2 AF 83            [24] 6953 	mov	r7,dph
      0054A4 15 81            [12] 6954 	dec	sp
      0054A6 15 81            [12] 6955 	dec	sp
      0054A8 15 81            [12] 6956 	dec	sp
      0054AA D0 01            [24] 6957 	pop	ar1
                                   6958 ;	calc.c:366: printstr("\r\nSSTOP1\t");
      0054AC 90 7E E4         [24] 6959 	mov	dptr,#___str_18
      0054AF 75 F0 80         [24] 6960 	mov	b,#0x80
      0054B2 C0 07            [24] 6961 	push	ar7
      0054B4 C0 06            [24] 6962 	push	ar6
      0054B6 C0 01            [24] 6963 	push	ar1
      0054B8 12 5E 27         [24] 6964 	lcall	_printstr
      0054BB D0 01            [24] 6965 	pop	ar1
      0054BD D0 06            [24] 6966 	pop	ar6
      0054BF D0 07            [24] 6967 	pop	ar7
                                   6968 ;	calc.c:367: if (n > 0) printall(vals[1]);
      0054C1 C3               [12] 6969 	clr	c
      0054C2 E4               [12] 6970 	clr	a
      0054C3 9E               [12] 6971 	subb	a,r6
      0054C4 74 80            [12] 6972 	mov	a,#(0x00 ^ 0x80)
      0054C6 8F F0            [24] 6973 	mov	b,r7
      0054C8 63 F0 80         [24] 6974 	xrl	b,#0x80
      0054CB 95 F0            [12] 6975 	subb	a,b
      0054CD 40 03            [24] 6976 	jc	00146$
      0054CF 02 55 77         [24] 6977 	ljmp	00108$
      0054D2                       6978 00146$:
      0054D2 74 04            [12] 6979 	mov	a,#0x04
      0054D4 29               [12] 6980 	add	a,r1
      0054D5 F8               [12] 6981 	mov	r0,a
      0054D6 86 02            [24] 6982 	mov	ar2,@r0
      0054D8 08               [12] 6983 	inc	r0
      0054D9 86 03            [24] 6984 	mov	ar3,@r0
      0054DB 08               [12] 6985 	inc	r0
      0054DC 86 04            [24] 6986 	mov	ar4,@r0
      0054DE 08               [12] 6987 	inc	r0
      0054DF 86 05            [24] 6988 	mov	ar5,@r0
                                   6989 ;	calc.c:18: print32x(d);
      0054E1 8A 82            [24] 6990 	mov	dpl,r2
      0054E3 8B 83            [24] 6991 	mov	dph,r3
      0054E5 8C F0            [24] 6992 	mov	b,r4
      0054E7 ED               [12] 6993 	mov	a,r5
      0054E8 C0 07            [24] 6994 	push	ar7
      0054EA C0 06            [24] 6995 	push	ar6
      0054EC C0 05            [24] 6996 	push	ar5
      0054EE C0 04            [24] 6997 	push	ar4
      0054F0 C0 03            [24] 6998 	push	ar3
      0054F2 C0 02            [24] 6999 	push	ar2
      0054F4 C0 01            [24] 7000 	push	ar1
      0054F6 12 5F D7         [24] 7001 	lcall	_print32x
      0054F9 D0 01            [24] 7002 	pop	ar1
      0054FB D0 02            [24] 7003 	pop	ar2
      0054FD D0 03            [24] 7004 	pop	ar3
      0054FF D0 04            [24] 7005 	pop	ar4
      005501 D0 05            [24] 7006 	pop	ar5
                                   7007 ;	calc.c:19: printf("% 11ld\t", d);
      005503 C0 05            [24] 7008 	push	ar5
      005505 C0 04            [24] 7009 	push	ar4
      005507 C0 03            [24] 7010 	push	ar3
      005509 C0 02            [24] 7011 	push	ar2
      00550B C0 01            [24] 7012 	push	ar1
      00550D C0 02            [24] 7013 	push	ar2
      00550F C0 03            [24] 7014 	push	ar3
      005511 C0 04            [24] 7015 	push	ar4
      005513 C0 05            [24] 7016 	push	ar5
      005515 74 ED            [12] 7017 	mov	a,#___str_0
      005517 C0 E0            [24] 7018 	push	acc
      005519 74 7D            [12] 7019 	mov	a,#(___str_0 >> 8)
      00551B C0 E0            [24] 7020 	push	acc
      00551D 74 80            [12] 7021 	mov	a,#0x80
      00551F C0 E0            [24] 7022 	push	acc
      005521 12 65 33         [24] 7023 	lcall	_printf
      005524 E5 81            [12] 7024 	mov	a,sp
      005526 24 F9            [12] 7025 	add	a,#0xf9
      005528 F5 81            [12] 7026 	mov	sp,a
      00552A D0 01            [24] 7027 	pop	ar1
      00552C D0 02            [24] 7028 	pop	ar2
      00552E D0 03            [24] 7029 	pop	ar3
      005530 D0 04            [24] 7030 	pop	ar4
      005532 D0 05            [24] 7031 	pop	ar5
                                   7032 ;	calc.c:20: printf("%011lo\t", d);
      005534 C0 05            [24] 7033 	push	ar5
      005536 C0 04            [24] 7034 	push	ar4
      005538 C0 03            [24] 7035 	push	ar3
      00553A C0 02            [24] 7036 	push	ar2
      00553C C0 01            [24] 7037 	push	ar1
      00553E C0 02            [24] 7038 	push	ar2
      005540 C0 03            [24] 7039 	push	ar3
      005542 C0 04            [24] 7040 	push	ar4
      005544 C0 05            [24] 7041 	push	ar5
      005546 74 F5            [12] 7042 	mov	a,#___str_1
      005548 C0 E0            [24] 7043 	push	acc
      00554A 74 7D            [12] 7044 	mov	a,#(___str_1 >> 8)
      00554C C0 E0            [24] 7045 	push	acc
      00554E 74 80            [12] 7046 	mov	a,#0x80
      005550 C0 E0            [24] 7047 	push	acc
      005552 12 65 33         [24] 7048 	lcall	_printf
      005555 E5 81            [12] 7049 	mov	a,sp
      005557 24 F9            [12] 7050 	add	a,#0xf9
      005559 F5 81            [12] 7051 	mov	sp,a
      00555B D0 01            [24] 7052 	pop	ar1
      00555D D0 02            [24] 7053 	pop	ar2
      00555F D0 03            [24] 7054 	pop	ar3
      005561 D0 04            [24] 7055 	pop	ar4
      005563 D0 05            [24] 7056 	pop	ar5
                                   7057 ;	calc.c:21: print32bin(d);
      005565 8A 82            [24] 7058 	mov	dpl,r2
      005567 8B 83            [24] 7059 	mov	dph,r3
      005569 8C F0            [24] 7060 	mov	b,r4
      00556B ED               [12] 7061 	mov	a,r5
      00556C C0 01            [24] 7062 	push	ar1
      00556E 12 5E 96         [24] 7063 	lcall	_print32bin
      005571 D0 01            [24] 7064 	pop	ar1
      005573 D0 06            [24] 7065 	pop	ar6
      005575 D0 07            [24] 7066 	pop	ar7
                                   7067 ;	calc.c:367: if (n > 0) printall(vals[1]);
      005577                       7068 00108$:
                                   7069 ;	calc.c:368: printstr("\r\nSSTOP0\t");
      005577 90 7E EE         [24] 7070 	mov	dptr,#___str_19
      00557A 75 F0 80         [24] 7071 	mov	b,#0x80
      00557D C0 07            [24] 7072 	push	ar7
      00557F C0 06            [24] 7073 	push	ar6
      005581 C0 01            [24] 7074 	push	ar1
      005583 12 5E 27         [24] 7075 	lcall	_printstr
      005586 D0 01            [24] 7076 	pop	ar1
      005588 D0 06            [24] 7077 	pop	ar6
      00558A D0 07            [24] 7078 	pop	ar7
                                   7079 ;	calc.c:369: if (n > 1) printall(vals[0]);
      00558C C3               [12] 7080 	clr	c
      00558D 74 01            [12] 7081 	mov	a,#0x01
      00558F 9E               [12] 7082 	subb	a,r6
      005590 74 80            [12] 7083 	mov	a,#(0x00 ^ 0x80)
      005592 8F F0            [24] 7084 	mov	b,r7
      005594 63 F0 80         [24] 7085 	xrl	b,#0x80
      005597 95 F0            [12] 7086 	subb	a,b
      005599 40 03            [24] 7087 	jc	00147$
      00559B 02 56 27         [24] 7088 	ljmp	00110$
      00559E                       7089 00147$:
      00559E 87 04            [24] 7090 	mov	ar4,@r1
      0055A0 09               [12] 7091 	inc	r1
      0055A1 87 05            [24] 7092 	mov	ar5,@r1
      0055A3 09               [12] 7093 	inc	r1
      0055A4 87 06            [24] 7094 	mov	ar6,@r1
      0055A6 09               [12] 7095 	inc	r1
      0055A7 87 07            [24] 7096 	mov	ar7,@r1
                                   7097 ;	calc.c:18: print32x(d);
      0055A9 8C 82            [24] 7098 	mov	dpl,r4
      0055AB 8D 83            [24] 7099 	mov	dph,r5
      0055AD 8E F0            [24] 7100 	mov	b,r6
      0055AF EF               [12] 7101 	mov	a,r7
      0055B0 C0 07            [24] 7102 	push	ar7
      0055B2 C0 06            [24] 7103 	push	ar6
      0055B4 C0 05            [24] 7104 	push	ar5
      0055B6 C0 04            [24] 7105 	push	ar4
      0055B8 12 5F D7         [24] 7106 	lcall	_print32x
      0055BB D0 04            [24] 7107 	pop	ar4
      0055BD D0 05            [24] 7108 	pop	ar5
      0055BF D0 06            [24] 7109 	pop	ar6
      0055C1 D0 07            [24] 7110 	pop	ar7
                                   7111 ;	calc.c:19: printf("% 11ld\t", d);
      0055C3 C0 07            [24] 7112 	push	ar7
      0055C5 C0 06            [24] 7113 	push	ar6
      0055C7 C0 05            [24] 7114 	push	ar5
      0055C9 C0 04            [24] 7115 	push	ar4
      0055CB C0 04            [24] 7116 	push	ar4
      0055CD C0 05            [24] 7117 	push	ar5
      0055CF C0 06            [24] 7118 	push	ar6
      0055D1 C0 07            [24] 7119 	push	ar7
      0055D3 74 ED            [12] 7120 	mov	a,#___str_0
      0055D5 C0 E0            [24] 7121 	push	acc
      0055D7 74 7D            [12] 7122 	mov	a,#(___str_0 >> 8)
      0055D9 C0 E0            [24] 7123 	push	acc
      0055DB 74 80            [12] 7124 	mov	a,#0x80
      0055DD C0 E0            [24] 7125 	push	acc
      0055DF 12 65 33         [24] 7126 	lcall	_printf
      0055E2 E5 81            [12] 7127 	mov	a,sp
      0055E4 24 F9            [12] 7128 	add	a,#0xf9
      0055E6 F5 81            [12] 7129 	mov	sp,a
      0055E8 D0 04            [24] 7130 	pop	ar4
      0055EA D0 05            [24] 7131 	pop	ar5
      0055EC D0 06            [24] 7132 	pop	ar6
      0055EE D0 07            [24] 7133 	pop	ar7
                                   7134 ;	calc.c:20: printf("%011lo\t", d);
      0055F0 C0 07            [24] 7135 	push	ar7
      0055F2 C0 06            [24] 7136 	push	ar6
      0055F4 C0 05            [24] 7137 	push	ar5
      0055F6 C0 04            [24] 7138 	push	ar4
      0055F8 C0 04            [24] 7139 	push	ar4
      0055FA C0 05            [24] 7140 	push	ar5
      0055FC C0 06            [24] 7141 	push	ar6
      0055FE C0 07            [24] 7142 	push	ar7
      005600 74 F5            [12] 7143 	mov	a,#___str_1
      005602 C0 E0            [24] 7144 	push	acc
      005604 74 7D            [12] 7145 	mov	a,#(___str_1 >> 8)
      005606 C0 E0            [24] 7146 	push	acc
      005608 74 80            [12] 7147 	mov	a,#0x80
      00560A C0 E0            [24] 7148 	push	acc
      00560C 12 65 33         [24] 7149 	lcall	_printf
      00560F E5 81            [12] 7150 	mov	a,sp
      005611 24 F9            [12] 7151 	add	a,#0xf9
      005613 F5 81            [12] 7152 	mov	sp,a
      005615 D0 04            [24] 7153 	pop	ar4
      005617 D0 05            [24] 7154 	pop	ar5
      005619 D0 06            [24] 7155 	pop	ar6
      00561B D0 07            [24] 7156 	pop	ar7
                                   7157 ;	calc.c:21: print32bin(d);
      00561D 8C 82            [24] 7158 	mov	dpl,r4
      00561F 8D 83            [24] 7159 	mov	dph,r5
      005621 8E F0            [24] 7160 	mov	b,r6
      005623 EF               [12] 7161 	mov	a,r7
      005624 12 5E 96         [24] 7162 	lcall	_print32bin
                                   7163 ;	calc.c:369: if (n > 1) printall(vals[0]);
      005627                       7164 00110$:
                                   7165 ;	calc.c:370: printstr("\r\n");
      005627 90 7D FD         [24] 7166 	mov	dptr,#___str_2
      00562A 75 F0 80         [24] 7167 	mov	b,#0x80
      00562D 12 5E 27         [24] 7168 	lcall	_printstr
                                   7169 ;	calc.c:372: return 1;
      005630 90 00 01         [24] 7170 	mov	dptr,#0x0001
                                   7171 ;	calc.c:373: }
      005633 85 08 81         [24] 7172 	mov	sp,_bp
      005636 D0 08            [24] 7173 	pop	_bp
      005638 22               [24] 7174 	ret
                                   7175 ;------------------------------------------------------------
                                   7176 ;Allocation info for local variables in function 'help'
                                   7177 ;------------------------------------------------------------
                                   7178 ;delta                     Allocated to stack - _bp -5
                                   7179 ;_ctx                      Allocated to registers 
                                   7180 ;------------------------------------------------------------
                                   7181 ;	calc.c:375: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   7182 ;	-----------------------------------------
                                   7183 ;	 function help
                                   7184 ;	-----------------------------------------
      005639                       7185 _help:
      005639 C0 08            [24] 7186 	push	_bp
      00563B 85 81 08         [24] 7187 	mov	_bp,sp
                                   7188 ;	calc.c:379: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      00563E 90 7E F8         [24] 7189 	mov	dptr,#___str_20
      005641 75 F0 80         [24] 7190 	mov	b,#0x80
      005644 12 5E 27         [24] 7191 	lcall	_printstr
                                   7192 ;	calc.c:380: printstr("p.\tpop top\r\n");
      005647 90 7F 10         [24] 7193 	mov	dptr,#___str_21
      00564A 75 F0 80         [24] 7194 	mov	b,#0x80
      00564D 12 5E 27         [24] 7195 	lcall	_printstr
                                   7196 ;	calc.c:381: printstr("P\tpop stack\r\n");
      005650 90 7F 1D         [24] 7197 	mov	dptr,#___str_22
      005653 75 F0 80         [24] 7198 	mov	b,#0x80
      005656 12 5E 27         [24] 7199 	lcall	_printstr
                                   7200 ;	calc.c:382: printstr("v\tpeek top\r\n");
      005659 90 7F 2B         [24] 7201 	mov	dptr,#___str_23
      00565C 75 F0 80         [24] 7202 	mov	b,#0x80
      00565F 12 5E 27         [24] 7203 	lcall	_printstr
                                   7204 ;	calc.c:383: printstr("V\tpeek stack\r\n");
      005662 90 7F 38         [24] 7205 	mov	dptr,#___str_24
      005665 75 F0 80         [24] 7206 	mov	b,#0x80
      005668 12 5E 27         [24] 7207 	lcall	_printstr
                                   7208 ;	calc.c:384: printstr("i\treset acc\r\n");
      00566B 90 7F 47         [24] 7209 	mov	dptr,#___str_25
      00566E 75 F0 80         [24] 7210 	mov	b,#0x80
      005671 12 5E 27         [24] 7211 	lcall	_printstr
                                   7212 ;	calc.c:385: printstr("I\treset and discard acc\r\n");
      005674 90 7F 55         [24] 7213 	mov	dptr,#___str_26
      005677 75 F0 80         [24] 7214 	mov	b,#0x80
      00567A 12 5E 27         [24] 7215 	lcall	_printstr
                                   7216 ;	calc.c:386: printstr("X\texchange tops primary <-> secondary\r\n");
      00567D 90 7F 6F         [24] 7217 	mov	dptr,#___str_27
      005680 75 F0 80         [24] 7218 	mov	b,#0x80
      005683 12 5E 27         [24] 7219 	lcall	_printstr
                                   7220 ;	calc.c:387: printstr("x\texchange top 2\r\n");
      005686 90 7F 97         [24] 7221 	mov	dptr,#___str_28
      005689 75 F0 80         [24] 7222 	mov	b,#0x80
      00568C 12 5E 27         [24] 7223 	lcall	_printstr
                                   7224 ;	calc.c:388: printstr("U\tcopy top secondary -> primary\r\n");
      00568F 90 7F AA         [24] 7225 	mov	dptr,#___str_29
      005692 75 F0 80         [24] 7226 	mov	b,#0x80
      005695 12 5E 27         [24] 7227 	lcall	_printstr
                                   7228 ;	calc.c:389: printstr("u\tcopy top primary -> secondary\r\n");
      005698 90 7F CC         [24] 7229 	mov	dptr,#___str_30
      00569B 75 F0 80         [24] 7230 	mov	b,#0x80
      00569E 12 5E 27         [24] 7231 	lcall	_printstr
                                   7232 ;	calc.c:390: printstr("M\tmove top secondary -> primary\r\n");
      0056A1 90 7F EE         [24] 7233 	mov	dptr,#___str_31
      0056A4 75 F0 80         [24] 7234 	mov	b,#0x80
      0056A7 12 5E 27         [24] 7235 	lcall	_printstr
                                   7236 ;	calc.c:391: printstr("m\tmove top primary -> secondary\r\n");
      0056AA 90 80 10         [24] 7237 	mov	dptr,#___str_32
      0056AD 75 F0 80         [24] 7238 	mov	b,#0x80
      0056B0 12 5E 27         [24] 7239 	lcall	_printstr
                                   7240 ;	calc.c:392: printstr("S\tswitch stacks primary <-> secondary\r\n");
      0056B3 90 80 32         [24] 7241 	mov	dptr,#___str_33
      0056B6 75 F0 80         [24] 7242 	mov	b,#0x80
      0056B9 12 5E 27         [24] 7243 	lcall	_printstr
                                   7244 ;	calc.c:393: printstr("+\tadd top 2\r\n");
      0056BC 90 80 5A         [24] 7245 	mov	dptr,#___str_34
      0056BF 75 F0 80         [24] 7246 	mov	b,#0x80
      0056C2 12 5E 27         [24] 7247 	lcall	_printstr
                                   7248 ;	calc.c:394: printstr("-\tsubtract top 2\r\n");
      0056C5 90 80 68         [24] 7249 	mov	dptr,#___str_35
      0056C8 75 F0 80         [24] 7250 	mov	b,#0x80
      0056CB 12 5E 27         [24] 7251 	lcall	_printstr
                                   7252 ;	calc.c:395: printstr("*\tmultiply top 2\r\n");
      0056CE 90 80 7B         [24] 7253 	mov	dptr,#___str_36
      0056D1 75 F0 80         [24] 7254 	mov	b,#0x80
      0056D4 12 5E 27         [24] 7255 	lcall	_printstr
                                   7256 ;	calc.c:396: printstr("/\tdivide top 2\r\n");
      0056D7 90 80 8E         [24] 7257 	mov	dptr,#___str_37
      0056DA 75 F0 80         [24] 7258 	mov	b,#0x80
      0056DD 12 5E 27         [24] 7259 	lcall	_printstr
                                   7260 ;	calc.c:397: printstr("\\\tdivide top 2 unsigned\r\n");	
      0056E0 90 80 9F         [24] 7261 	mov	dptr,#___str_38
      0056E3 75 F0 80         [24] 7262 	mov	b,#0x80
      0056E6 12 5E 27         [24] 7263 	lcall	_printstr
                                   7264 ;	calc.c:398: printstr("%\tmodulus top 2\r\n");
      0056E9 90 80 B9         [24] 7265 	mov	dptr,#___str_39
      0056EC 75 F0 80         [24] 7266 	mov	b,#0x80
      0056EF 12 5E 27         [24] 7267 	lcall	_printstr
                                   7268 ;	calc.c:399: printstr("#\tmodulus top 2 unsigned\r\n");
      0056F2 90 80 CB         [24] 7269 	mov	dptr,#___str_40
      0056F5 75 F0 80         [24] 7270 	mov	b,#0x80
      0056F8 12 5E 27         [24] 7271 	lcall	_printstr
                                   7272 ;	calc.c:400: printstr("&\tand top 2\r\n");
      0056FB 90 80 E6         [24] 7273 	mov	dptr,#___str_41
      0056FE 75 F0 80         [24] 7274 	mov	b,#0x80
      005701 12 5E 27         [24] 7275 	lcall	_printstr
                                   7276 ;	calc.c:401: printstr("|\tor top 2\r\n");
      005704 90 80 F4         [24] 7277 	mov	dptr,#___str_42
      005707 75 F0 80         [24] 7278 	mov	b,#0x80
      00570A 12 5E 27         [24] 7279 	lcall	_printstr
                                   7280 ;	calc.c:402: printstr("^\txor top 2\r\n");
      00570D 90 81 01         [24] 7281 	mov	dptr,#___str_43
      005710 75 F0 80         [24] 7282 	mov	b,#0x80
      005713 12 5E 27         [24] 7283 	lcall	_printstr
                                   7284 ;	calc.c:403: printstr(">\tshift right top 2\r\n");
      005716 90 81 0F         [24] 7285 	mov	dptr,#___str_44
      005719 75 F0 80         [24] 7286 	mov	b,#0x80
      00571C 12 5E 27         [24] 7287 	lcall	_printstr
                                   7288 ;	calc.c:404: printstr("]\tarithmetic shift right top 2\r\n");
      00571F 90 81 25         [24] 7289 	mov	dptr,#___str_45
      005722 75 F0 80         [24] 7290 	mov	b,#0x80
      005725 12 5E 27         [24] 7291 	lcall	_printstr
                                   7292 ;	calc.c:405: printstr("<\tshift left top 2\r\n");
      005728 90 81 46         [24] 7293 	mov	dptr,#___str_46
      00572B 75 F0 80         [24] 7294 	mov	b,#0x80
      00572E 12 5E 27         [24] 7295 	lcall	_printstr
                                   7296 ;	calc.c:406: printstr("~\tbitwise not top\r\n");
      005731 90 81 5B         [24] 7297 	mov	dptr,#___str_47
      005734 75 F0 80         [24] 7298 	mov	b,#0x80
      005737 12 5E 27         [24] 7299 	lcall	_printstr
                                   7300 ;	calc.c:407: printstr("s\tstatus\r\n");
      00573A 90 81 6F         [24] 7301 	mov	dptr,#___str_48
      00573D 75 F0 80         [24] 7302 	mov	b,#0x80
      005740 12 5E 27         [24] 7303 	lcall	_printstr
                                   7304 ;	calc.c:408: printstr("?\thelp\r\n");
      005743 90 81 7A         [24] 7305 	mov	dptr,#___str_49
      005746 75 F0 80         [24] 7306 	mov	b,#0x80
      005749 12 5E 27         [24] 7307 	lcall	_printstr
                                   7308 ;	calc.c:409: printstr("q\tquit\r\n");
      00574C 90 81 83         [24] 7309 	mov	dptr,#___str_50
      00574F 75 F0 80         [24] 7310 	mov	b,#0x80
      005752 12 5E 27         [24] 7311 	lcall	_printstr
                                   7312 ;	calc.c:411: return 1;
      005755 90 00 01         [24] 7313 	mov	dptr,#0x0001
                                   7314 ;	calc.c:412: }
      005758 D0 08            [24] 7315 	pop	_bp
      00575A 22               [24] 7316 	ret
                                   7317 ;------------------------------------------------------------
                                   7318 ;Allocation info for local variables in function 'main'
                                   7319 ;------------------------------------------------------------
                                   7320 ;input                     Allocated to registers r6 r7 
                                   7321 ;------------------------------------------------------------
                                   7322 ;	calc.c:442: void main(void) {
                                   7323 ;	-----------------------------------------
                                   7324 ;	 function main
                                   7325 ;	-----------------------------------------
      00575B                       7326 _main:
                                   7327 ;	calc.c:445: giant = 0;
      00575B 78 09            [12] 7328 	mov	r0,#_giant
      00575D 76 00            [12] 7329 	mov	@r0,#0x00
                                   7330 ;	calc.c:447: c.base = 10;
      00575F 90 A0 0C         [24] 7331 	mov	dptr,#_c
      005762 74 0A            [12] 7332 	mov	a,#0x0a
      005764 F0               [24] 7333 	movx	@dptr,a
      005765 E4               [12] 7334 	clr	a
      005766 A3               [24] 7335 	inc	dptr
      005767 F0               [24] 7336 	movx	@dptr,a
                                   7337 ;	calc.c:448: c.acc = 0l;
      005768 90 A0 0E         [24] 7338 	mov	dptr,#(_c + 0x0002)
      00576B F0               [24] 7339 	movx	@dptr,a
      00576C A3               [24] 7340 	inc	dptr
      00576D F0               [24] 7341 	movx	@dptr,a
      00576E A3               [24] 7342 	inc	dptr
      00576F F0               [24] 7343 	movx	@dptr,a
      005770 A3               [24] 7344 	inc	dptr
      005771 F0               [24] 7345 	movx	@dptr,a
                                   7346 ;	calc.c:449: c.acc_valid = (char)0;
      005772 90 A0 12         [24] 7347 	mov	dptr,#(_c + 0x0006)
      005775 F0               [24] 7348 	movx	@dptr,a
                                   7349 ;	calc.c:450: c.digit[0] = c.digit[1] = '\0';
      005776 90 A0 14         [24] 7350 	mov	dptr,#(_c + 0x0008)
      005779 F0               [24] 7351 	movx	@dptr,a
      00577A 90 A0 13         [24] 7352 	mov	dptr,#(_c + 0x0007)
      00577D F0               [24] 7353 	movx	@dptr,a
                                   7354 ;	calc.c:452: c.ps = &c.s0;
      00577E 90 E0 1D         [24] 7355 	mov	dptr,#(_c + 0x4011)
      005781 74 15            [12] 7356 	mov	a,#(_c + 0x0009)
      005783 F0               [24] 7357 	movx	@dptr,a
      005784 74 A0            [12] 7358 	mov	a,#((_c + 0x0009) >> 8)
      005786 A3               [24] 7359 	inc	dptr
      005787 F0               [24] 7360 	movx	@dptr,a
      005788 E4               [12] 7361 	clr	a
      005789 A3               [24] 7362 	inc	dptr
      00578A F0               [24] 7363 	movx	@dptr,a
                                   7364 ;	calc.c:453: c.ss = &c.s1;
      00578B 90 E0 20         [24] 7365 	mov	dptr,#(_c + 0x4014)
      00578E 74 19            [12] 7366 	mov	a,#(_c + 0x200d)
      005790 F0               [24] 7367 	movx	@dptr,a
      005791 74 C0            [12] 7368 	mov	a,#((_c + 0x200d) >> 8)
      005793 A3               [24] 7369 	inc	dptr
      005794 F0               [24] 7370 	movx	@dptr,a
      005795 E4               [12] 7371 	clr	a
      005796 A3               [24] 7372 	inc	dptr
      005797 F0               [24] 7373 	movx	@dptr,a
                                   7374 ;	calc.c:454: stack_init(c.ps);
      005798 90 A0 15         [24] 7375 	mov	dptr,#(_c + 0x0009)
      00579B 75 F0 00         [24] 7376 	mov	b,#0x00
      00579E 12 26 80         [24] 7377 	lcall	_stack_init
                                   7378 ;	calc.c:455: stack_init(c.ss);
      0057A1 90 E0 20         [24] 7379 	mov	dptr,#(_c + 0x4014)
      0057A4 E0               [24] 7380 	movx	a,@dptr
      0057A5 FD               [12] 7381 	mov	r5,a
      0057A6 A3               [24] 7382 	inc	dptr
      0057A7 E0               [24] 7383 	movx	a,@dptr
      0057A8 FE               [12] 7384 	mov	r6,a
      0057A9 A3               [24] 7385 	inc	dptr
      0057AA E0               [24] 7386 	movx	a,@dptr
      0057AB FF               [12] 7387 	mov	r7,a
      0057AC 8D 82            [24] 7388 	mov	dpl,r5
      0057AE 8E 83            [24] 7389 	mov	dph,r6
      0057B0 8F F0            [24] 7390 	mov	b,r7
      0057B2 12 26 80         [24] 7391 	lcall	_stack_init
                                   7392 ;	calc.c:457: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0057B5 74 0C            [12] 7393 	mov	a,#_c
      0057B7 C0 E0            [24] 7394 	push	acc
      0057B9 74 A0            [12] 7395 	mov	a,#(_c >> 8)
      0057BB C0 E0            [24] 7396 	push	acc
      0057BD E4               [12] 7397 	clr	a
      0057BE C0 E0            [24] 7398 	push	acc
      0057C0 74 25            [12] 7399 	mov	a,#_deltas
      0057C2 C0 E0            [24] 7400 	push	acc
      0057C4 74 E0            [12] 7401 	mov	a,#(_deltas >> 8)
      0057C6 C0 E0            [24] 7402 	push	acc
      0057C8 E4               [12] 7403 	clr	a
      0057C9 C0 E0            [24] 7404 	push	acc
      0057CB C0 E0            [24] 7405 	push	acc
      0057CD 74 80            [12] 7406 	mov	a,#0x80
      0057CF C0 E0            [24] 7407 	push	acc
      0057D1 74 03            [12] 7408 	mov	a,#0x03
      0057D3 C0 E0            [24] 7409 	push	acc
      0057D5 E4               [12] 7410 	clr	a
      0057D6 C0 E0            [24] 7411 	push	acc
      0057D8 C0 E0            [24] 7412 	push	acc
      0057DA C0 E0            [24] 7413 	push	acc
      0057DC 90 A0 00         [24] 7414 	mov	dptr,#_s
      0057DF 75 F0 00         [24] 7415 	mov	b,#0x00
      0057E2 12 20 90         [24] 7416 	lcall	_state_init
      0057E5 E5 81            [12] 7417 	mov	a,sp
      0057E7 24 F4            [12] 7418 	add	a,#0xf4
      0057E9 F5 81            [12] 7419 	mov	sp,a
                                   7420 ;	calc.c:459: (void)status(&c, deltas);
      0057EB 74 25            [12] 7421 	mov	a,#_deltas
      0057ED C0 E0            [24] 7422 	push	acc
      0057EF 74 E0            [12] 7423 	mov	a,#(_deltas >> 8)
      0057F1 C0 E0            [24] 7424 	push	acc
      0057F3 E4               [12] 7425 	clr	a
      0057F4 C0 E0            [24] 7426 	push	acc
      0057F6 90 A0 0C         [24] 7427 	mov	dptr,#_c
      0057F9 75 F0 00         [24] 7428 	mov	b,#0x00
      0057FC 12 51 0B         [24] 7429 	lcall	_status
      0057FF 15 81            [12] 7430 	dec	sp
      005801 15 81            [12] 7431 	dec	sp
      005803 15 81            [12] 7432 	dec	sp
                                   7433 ;	calc.c:461: while (1) {
      005805                       7434 00192$:
                                   7435 ;	calc.c:462: input = getchar();
      005805 12 5E 00         [24] 7436 	lcall	_getchar
      005808 AE 82            [24] 7437 	mov	r6,dpl
      00580A AF 83            [24] 7438 	mov	r7,dph
                                   7439 ;	calc.c:463: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      00580C 8E 05            [24] 7440 	mov	ar5,r6
      00580E BD 0D 02         [24] 7441 	cjne	r5,#0x0d,00372$
      005811 80 03            [24] 7442 	sjmp	00101$
      005813                       7443 00372$:
      005813 BD 0A 17         [24] 7444 	cjne	r5,#0x0a,00102$
      005816                       7445 00101$:
      005816 90 7D FD         [24] 7446 	mov	dptr,#___str_2
      005819 75 F0 80         [24] 7447 	mov	b,#0x80
      00581C C0 07            [24] 7448 	push	ar7
      00581E C0 06            [24] 7449 	push	ar6
      005820 C0 05            [24] 7450 	push	ar5
      005822 12 5E 27         [24] 7451 	lcall	_printstr
      005825 D0 05            [24] 7452 	pop	ar5
      005827 D0 06            [24] 7453 	pop	ar6
      005829 D0 07            [24] 7454 	pop	ar7
      00582B 80 13            [24] 7455 	sjmp	00103$
      00582D                       7456 00102$:
                                   7457 ;	calc.c:464: else (void)putchar(input);
      00582D 8E 82            [24] 7458 	mov	dpl,r6
      00582F 8F 83            [24] 7459 	mov	dph,r7
      005831 C0 07            [24] 7460 	push	ar7
      005833 C0 06            [24] 7461 	push	ar6
      005835 C0 05            [24] 7462 	push	ar5
      005837 12 5D F6         [24] 7463 	lcall	_putchar
      00583A D0 05            [24] 7464 	pop	ar5
      00583C D0 06            [24] 7465 	pop	ar6
      00583E D0 07            [24] 7466 	pop	ar7
      005840                       7467 00103$:
                                   7468 ;	calc.c:465: c.digit[0] = (char)input;
      005840 90 A0 13         [24] 7469 	mov	dptr,#(_c + 0x0007)
      005843 ED               [12] 7470 	mov	a,r5
      005844 F0               [24] 7471 	movx	@dptr,a
                                   7472 ;	calc.c:467: if ((char)input == 'q') {
      005845 BD 71 29         [24] 7473 	cjne	r5,#0x71,00189$
                                   7474 ;	calc.c:468: if (state_exec(&s, EVENT_TERM) <= 0) break;
      005848 74 08            [12] 7475 	mov	a,#0x08
      00584A C0 E0            [24] 7476 	push	acc
      00584C E4               [12] 7477 	clr	a
      00584D C0 E0            [24] 7478 	push	acc
      00584F 90 A0 00         [24] 7479 	mov	dptr,#_s
      005852 75 F0 00         [24] 7480 	mov	b,#0x00
      005855 12 21 46         [24] 7481 	lcall	_state_exec
      005858 AB 82            [24] 7482 	mov	r3,dpl
      00585A AC 83            [24] 7483 	mov	r4,dph
      00585C 15 81            [12] 7484 	dec	sp
      00585E 15 81            [12] 7485 	dec	sp
      005860 C3               [12] 7486 	clr	c
      005861 E4               [12] 7487 	clr	a
      005862 9B               [12] 7488 	subb	a,r3
      005863 74 80            [12] 7489 	mov	a,#(0x00 ^ 0x80)
      005865 8C F0            [24] 7490 	mov	b,r4
      005867 63 F0 80         [24] 7491 	xrl	b,#0x80
      00586A 95 F0            [12] 7492 	subb	a,b
      00586C 40 97            [24] 7493 	jc	00192$
      00586E 02 5B 20         [24] 7494 	ljmp	00193$
      005871                       7495 00189$:
                                   7496 ;	calc.c:469: } else if ((char)input == 's') {
      005871 BD 73 2C         [24] 7497 	cjne	r5,#0x73,00186$
                                   7498 ;	calc.c:470: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      005874 74 03            [12] 7499 	mov	a,#0x03
      005876 C0 E0            [24] 7500 	push	acc
      005878 E4               [12] 7501 	clr	a
      005879 C0 E0            [24] 7502 	push	acc
      00587B 90 A0 00         [24] 7503 	mov	dptr,#_s
      00587E 75 F0 00         [24] 7504 	mov	b,#0x00
      005881 12 21 46         [24] 7505 	lcall	_state_exec
      005884 AB 82            [24] 7506 	mov	r3,dpl
      005886 AC 83            [24] 7507 	mov	r4,dph
      005888 15 81            [12] 7508 	dec	sp
      00588A 15 81            [12] 7509 	dec	sp
      00588C C3               [12] 7510 	clr	c
      00588D E4               [12] 7511 	clr	a
      00588E 9B               [12] 7512 	subb	a,r3
      00588F 74 80            [12] 7513 	mov	a,#(0x00 ^ 0x80)
      005891 8C F0            [24] 7514 	mov	b,r4
      005893 63 F0 80         [24] 7515 	xrl	b,#0x80
      005896 95 F0            [12] 7516 	subb	a,b
      005898 50 03            [24] 7517 	jnc	00380$
      00589A 02 58 05         [24] 7518 	ljmp	00192$
      00589D                       7519 00380$:
      00589D 02 5B 20         [24] 7520 	ljmp	00193$
      0058A0                       7521 00186$:
                                   7522 ;	calc.c:471: } else if ((char)input == '?') {
      0058A0 BD 3F 2C         [24] 7523 	cjne	r5,#0x3f,00183$
                                   7524 ;	calc.c:472: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0058A3 74 04            [12] 7525 	mov	a,#0x04
      0058A5 C0 E0            [24] 7526 	push	acc
      0058A7 E4               [12] 7527 	clr	a
      0058A8 C0 E0            [24] 7528 	push	acc
      0058AA 90 A0 00         [24] 7529 	mov	dptr,#_s
      0058AD 75 F0 00         [24] 7530 	mov	b,#0x00
      0058B0 12 21 46         [24] 7531 	lcall	_state_exec
      0058B3 AB 82            [24] 7532 	mov	r3,dpl
      0058B5 AC 83            [24] 7533 	mov	r4,dph
      0058B7 15 81            [12] 7534 	dec	sp
      0058B9 15 81            [12] 7535 	dec	sp
      0058BB C3               [12] 7536 	clr	c
      0058BC E4               [12] 7537 	clr	a
      0058BD 9B               [12] 7538 	subb	a,r3
      0058BE 74 80            [12] 7539 	mov	a,#(0x00 ^ 0x80)
      0058C0 8C F0            [24] 7540 	mov	b,r4
      0058C2 63 F0 80         [24] 7541 	xrl	b,#0x80
      0058C5 95 F0            [12] 7542 	subb	a,b
      0058C7 50 03            [24] 7543 	jnc	00383$
      0058C9 02 58 05         [24] 7544 	ljmp	00192$
      0058CC                       7545 00383$:
      0058CC 02 5B 20         [24] 7546 	ljmp	00193$
      0058CF                       7547 00183$:
                                   7548 ;	calc.c:473: } else if ((char)input == 'i') {
      0058CF BD 69 2C         [24] 7549 	cjne	r5,#0x69,00180$
                                   7550 ;	calc.c:474: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      0058D2 74 06            [12] 7551 	mov	a,#0x06
      0058D4 C0 E0            [24] 7552 	push	acc
      0058D6 E4               [12] 7553 	clr	a
      0058D7 C0 E0            [24] 7554 	push	acc
      0058D9 90 A0 00         [24] 7555 	mov	dptr,#_s
      0058DC 75 F0 00         [24] 7556 	mov	b,#0x00
      0058DF 12 21 46         [24] 7557 	lcall	_state_exec
      0058E2 AB 82            [24] 7558 	mov	r3,dpl
      0058E4 AC 83            [24] 7559 	mov	r4,dph
      0058E6 15 81            [12] 7560 	dec	sp
      0058E8 15 81            [12] 7561 	dec	sp
      0058EA C3               [12] 7562 	clr	c
      0058EB E4               [12] 7563 	clr	a
      0058EC 9B               [12] 7564 	subb	a,r3
      0058ED 74 80            [12] 7565 	mov	a,#(0x00 ^ 0x80)
      0058EF 8C F0            [24] 7566 	mov	b,r4
      0058F1 63 F0 80         [24] 7567 	xrl	b,#0x80
      0058F4 95 F0            [12] 7568 	subb	a,b
      0058F6 50 03            [24] 7569 	jnc	00386$
      0058F8 02 58 05         [24] 7570 	ljmp	00192$
      0058FB                       7571 00386$:
      0058FB 02 5B 20         [24] 7572 	ljmp	00193$
      0058FE                       7573 00180$:
                                   7574 ;	calc.c:475: } else if ((char)input == 'I') {
      0058FE BD 49 2C         [24] 7575 	cjne	r5,#0x49,00177$
                                   7576 ;	calc.c:476: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      005901 74 07            [12] 7577 	mov	a,#0x07
      005903 C0 E0            [24] 7578 	push	acc
      005905 E4               [12] 7579 	clr	a
      005906 C0 E0            [24] 7580 	push	acc
      005908 90 A0 00         [24] 7581 	mov	dptr,#_s
      00590B 75 F0 00         [24] 7582 	mov	b,#0x00
      00590E 12 21 46         [24] 7583 	lcall	_state_exec
      005911 AB 82            [24] 7584 	mov	r3,dpl
      005913 AC 83            [24] 7585 	mov	r4,dph
      005915 15 81            [12] 7586 	dec	sp
      005917 15 81            [12] 7587 	dec	sp
      005919 C3               [12] 7588 	clr	c
      00591A E4               [12] 7589 	clr	a
      00591B 9B               [12] 7590 	subb	a,r3
      00591C 74 80            [12] 7591 	mov	a,#(0x00 ^ 0x80)
      00591E 8C F0            [24] 7592 	mov	b,r4
      005920 63 F0 80         [24] 7593 	xrl	b,#0x80
      005923 95 F0            [12] 7594 	subb	a,b
      005925 50 03            [24] 7595 	jnc	00389$
      005927 02 58 05         [24] 7596 	ljmp	00192$
      00592A                       7597 00389$:
      00592A 02 5B 20         [24] 7598 	ljmp	00193$
      00592D                       7599 00177$:
                                   7600 ;	calc.c:478: ((char)input == 'h') || ((char)input == 'H') ||
      00592D BD 68 02         [24] 7601 	cjne	r5,#0x68,00390$
      005930 80 0D            [24] 7602 	sjmp	00170$
      005932                       7603 00390$:
      005932 BD 48 02         [24] 7604 	cjne	r5,#0x48,00391$
      005935 80 08            [24] 7605 	sjmp	00170$
      005937                       7606 00391$:
                                   7607 ;	calc.c:479: ((char)input == 'o') || ((char)input == 'O')
      005937 BD 6F 02         [24] 7608 	cjne	r5,#0x6f,00392$
      00593A 80 03            [24] 7609 	sjmp	00170$
      00593C                       7610 00392$:
      00593C BD 4F 2C         [24] 7611 	cjne	r5,#0x4f,00171$
      00593F                       7612 00170$:
                                   7613 ;	calc.c:481: if (state_exec(&s, EVENT_BASE) <= 0) break;
      00593F 74 05            [12] 7614 	mov	a,#0x05
      005941 C0 E0            [24] 7615 	push	acc
      005943 E4               [12] 7616 	clr	a
      005944 C0 E0            [24] 7617 	push	acc
      005946 90 A0 00         [24] 7618 	mov	dptr,#_s
      005949 75 F0 00         [24] 7619 	mov	b,#0x00
      00594C 12 21 46         [24] 7620 	lcall	_state_exec
      00594F AB 82            [24] 7621 	mov	r3,dpl
      005951 AC 83            [24] 7622 	mov	r4,dph
      005953 15 81            [12] 7623 	dec	sp
      005955 15 81            [12] 7624 	dec	sp
      005957 C3               [12] 7625 	clr	c
      005958 E4               [12] 7626 	clr	a
      005959 9B               [12] 7627 	subb	a,r3
      00595A 74 80            [12] 7628 	mov	a,#(0x00 ^ 0x80)
      00595C 8C F0            [24] 7629 	mov	b,r4
      00595E 63 F0 80         [24] 7630 	xrl	b,#0x80
      005961 95 F0            [12] 7631 	subb	a,b
      005963 50 03            [24] 7632 	jnc	00395$
      005965 02 58 05         [24] 7633 	ljmp	00192$
      005968                       7634 00395$:
      005968 02 5B 20         [24] 7635 	ljmp	00193$
      00596B                       7636 00171$:
                                   7637 ;	calc.c:482: } else if (isxdigit(input)) {
      00596B 8E 82            [24] 7638 	mov	dpl,r6
      00596D 8F 83            [24] 7639 	mov	dph,r7
      00596F C0 05            [24] 7640 	push	ar5
      005971 12 5B 2D         [24] 7641 	lcall	_isxdigit
      005974 E5 82            [12] 7642 	mov	a,dpl
      005976 85 83 F0         [24] 7643 	mov	b,dph
      005979 D0 05            [24] 7644 	pop	ar5
      00597B 45 F0            [12] 7645 	orl	a,b
      00597D 60 2C            [24] 7646 	jz	00168$
                                   7647 ;	calc.c:483: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      00597F 74 01            [12] 7648 	mov	a,#0x01
      005981 C0 E0            [24] 7649 	push	acc
      005983 E4               [12] 7650 	clr	a
      005984 C0 E0            [24] 7651 	push	acc
      005986 90 A0 00         [24] 7652 	mov	dptr,#_s
      005989 75 F0 00         [24] 7653 	mov	b,#0x00
      00598C 12 21 46         [24] 7654 	lcall	_state_exec
      00598F AE 82            [24] 7655 	mov	r6,dpl
      005991 AF 83            [24] 7656 	mov	r7,dph
      005993 15 81            [12] 7657 	dec	sp
      005995 15 81            [12] 7658 	dec	sp
      005997 C3               [12] 7659 	clr	c
      005998 E4               [12] 7660 	clr	a
      005999 9E               [12] 7661 	subb	a,r6
      00599A 74 80            [12] 7662 	mov	a,#(0x00 ^ 0x80)
      00599C 8F F0            [24] 7663 	mov	b,r7
      00599E 63 F0 80         [24] 7664 	xrl	b,#0x80
      0059A1 95 F0            [12] 7665 	subb	a,b
      0059A3 50 03            [24] 7666 	jnc	00397$
      0059A5 02 58 05         [24] 7667 	ljmp	00192$
      0059A8                       7668 00397$:
      0059A8 02 5B 20         [24] 7669 	ljmp	00193$
      0059AB                       7670 00168$:
                                   7671 ;	calc.c:485: ((char)input == 'p') || ((char)input == 'P') ||
      0059AB BD 70 02         [24] 7672 	cjne	r5,#0x70,00398$
      0059AE 80 17            [24] 7673 	sjmp	00159$
      0059B0                       7674 00398$:
      0059B0 BD 50 02         [24] 7675 	cjne	r5,#0x50,00399$
      0059B3 80 12            [24] 7676 	sjmp	00159$
      0059B5                       7677 00399$:
                                   7678 ;	calc.c:486: ((char)input == 'v') || ((char)input == 'V') ||
      0059B5 BD 76 02         [24] 7679 	cjne	r5,#0x76,00400$
      0059B8 80 0D            [24] 7680 	sjmp	00159$
      0059BA                       7681 00400$:
      0059BA BD 56 02         [24] 7682 	cjne	r5,#0x56,00401$
      0059BD 80 08            [24] 7683 	sjmp	00159$
      0059BF                       7684 00401$:
                                   7685 ;	calc.c:487: ((char)input == '.') ||
      0059BF BD 2E 02         [24] 7686 	cjne	r5,#0x2e,00402$
      0059C2 80 03            [24] 7687 	sjmp	00159$
      0059C4                       7688 00402$:
                                   7689 ;	calc.c:488: ((char)input == 'x')
      0059C4 BD 78 2C         [24] 7690 	cjne	r5,#0x78,00160$
      0059C7                       7691 00159$:
                                   7692 ;	calc.c:490: if (state_exec(&s, EVENT_OP) <= 0) break;
      0059C7 74 02            [12] 7693 	mov	a,#0x02
      0059C9 C0 E0            [24] 7694 	push	acc
      0059CB E4               [12] 7695 	clr	a
      0059CC C0 E0            [24] 7696 	push	acc
      0059CE 90 A0 00         [24] 7697 	mov	dptr,#_s
      0059D1 75 F0 00         [24] 7698 	mov	b,#0x00
      0059D4 12 21 46         [24] 7699 	lcall	_state_exec
      0059D7 AE 82            [24] 7700 	mov	r6,dpl
      0059D9 AF 83            [24] 7701 	mov	r7,dph
      0059DB 15 81            [12] 7702 	dec	sp
      0059DD 15 81            [12] 7703 	dec	sp
      0059DF C3               [12] 7704 	clr	c
      0059E0 E4               [12] 7705 	clr	a
      0059E1 9E               [12] 7706 	subb	a,r6
      0059E2 74 80            [12] 7707 	mov	a,#(0x00 ^ 0x80)
      0059E4 8F F0            [24] 7708 	mov	b,r7
      0059E6 63 F0 80         [24] 7709 	xrl	b,#0x80
      0059E9 95 F0            [12] 7710 	subb	a,b
      0059EB 50 03            [24] 7711 	jnc	00405$
      0059ED 02 58 05         [24] 7712 	ljmp	00192$
      0059F0                       7713 00405$:
      0059F0 02 5B 20         [24] 7714 	ljmp	00193$
      0059F3                       7715 00160$:
                                   7716 ;	calc.c:492: ((char)input == 'X') ||
      0059F3 BD 58 02         [24] 7717 	cjne	r5,#0x58,00406$
      0059F6 80 17            [24] 7718 	sjmp	00151$
      0059F8                       7719 00406$:
                                   7720 ;	calc.c:493: ((char)input == 'm') || ((char)input == 'M') ||
      0059F8 BD 6D 02         [24] 7721 	cjne	r5,#0x6d,00407$
      0059FB 80 12            [24] 7722 	sjmp	00151$
      0059FD                       7723 00407$:
      0059FD BD 4D 02         [24] 7724 	cjne	r5,#0x4d,00408$
      005A00 80 0D            [24] 7725 	sjmp	00151$
      005A02                       7726 00408$:
                                   7727 ;	calc.c:494: ((char)input == 'u') || ((char)input == 'U') ||
      005A02 BD 75 02         [24] 7728 	cjne	r5,#0x75,00409$
      005A05 80 08            [24] 7729 	sjmp	00151$
      005A07                       7730 00409$:
      005A07 BD 55 02         [24] 7731 	cjne	r5,#0x55,00410$
      005A0A 80 03            [24] 7732 	sjmp	00151$
      005A0C                       7733 00410$:
                                   7734 ;	calc.c:495: ((char)input == 'S')
      005A0C BD 53 2C         [24] 7735 	cjne	r5,#0x53,00152$
      005A0F                       7736 00151$:
                                   7737 ;	calc.c:497: if (state_exec(&s, EVENT_OP) <= 0) break;
      005A0F 74 02            [12] 7738 	mov	a,#0x02
      005A11 C0 E0            [24] 7739 	push	acc
      005A13 E4               [12] 7740 	clr	a
      005A14 C0 E0            [24] 7741 	push	acc
      005A16 90 A0 00         [24] 7742 	mov	dptr,#_s
      005A19 75 F0 00         [24] 7743 	mov	b,#0x00
      005A1C 12 21 46         [24] 7744 	lcall	_state_exec
      005A1F AE 82            [24] 7745 	mov	r6,dpl
      005A21 AF 83            [24] 7746 	mov	r7,dph
      005A23 15 81            [12] 7747 	dec	sp
      005A25 15 81            [12] 7748 	dec	sp
      005A27 C3               [12] 7749 	clr	c
      005A28 E4               [12] 7750 	clr	a
      005A29 9E               [12] 7751 	subb	a,r6
      005A2A 74 80            [12] 7752 	mov	a,#(0x00 ^ 0x80)
      005A2C 8F F0            [24] 7753 	mov	b,r7
      005A2E 63 F0 80         [24] 7754 	xrl	b,#0x80
      005A31 95 F0            [12] 7755 	subb	a,b
      005A33 50 03            [24] 7756 	jnc	00413$
      005A35 02 58 05         [24] 7757 	ljmp	00192$
      005A38                       7758 00413$:
      005A38 02 5B 20         [24] 7759 	ljmp	00193$
      005A3B                       7760 00152$:
                                   7761 ;	calc.c:499: ((char)input == '+') || ((char)input == '-')
      005A3B BD 2B 02         [24] 7762 	cjne	r5,#0x2b,00414$
      005A3E 80 03            [24] 7763 	sjmp	00147$
      005A40                       7764 00414$:
      005A40 BD 2D 2C         [24] 7765 	cjne	r5,#0x2d,00148$
      005A43                       7766 00147$:
                                   7767 ;	calc.c:501: if (state_exec(&s, EVENT_OP) <= 0) break;
      005A43 74 02            [12] 7768 	mov	a,#0x02
      005A45 C0 E0            [24] 7769 	push	acc
      005A47 E4               [12] 7770 	clr	a
      005A48 C0 E0            [24] 7771 	push	acc
      005A4A 90 A0 00         [24] 7772 	mov	dptr,#_s
      005A4D 75 F0 00         [24] 7773 	mov	b,#0x00
      005A50 12 21 46         [24] 7774 	lcall	_state_exec
      005A53 AE 82            [24] 7775 	mov	r6,dpl
      005A55 AF 83            [24] 7776 	mov	r7,dph
      005A57 15 81            [12] 7777 	dec	sp
      005A59 15 81            [12] 7778 	dec	sp
      005A5B C3               [12] 7779 	clr	c
      005A5C E4               [12] 7780 	clr	a
      005A5D 9E               [12] 7781 	subb	a,r6
      005A5E 74 80            [12] 7782 	mov	a,#(0x00 ^ 0x80)
      005A60 8F F0            [24] 7783 	mov	b,r7
      005A62 63 F0 80         [24] 7784 	xrl	b,#0x80
      005A65 95 F0            [12] 7785 	subb	a,b
      005A67 50 03            [24] 7786 	jnc	00417$
      005A69 02 58 05         [24] 7787 	ljmp	00192$
      005A6C                       7788 00417$:
      005A6C 02 5B 20         [24] 7789 	ljmp	00193$
      005A6F                       7790 00148$:
                                   7791 ;	calc.c:503: ((char)input == '*') ||
      005A6F BD 2A 02         [24] 7792 	cjne	r5,#0x2a,00418$
      005A72 80 12            [24] 7793 	sjmp	00140$
      005A74                       7794 00418$:
                                   7795 ;	calc.c:504: ((char)input == '/') || ((char)input == '\\') ||
      005A74 BD 2F 02         [24] 7796 	cjne	r5,#0x2f,00419$
      005A77 80 0D            [24] 7797 	sjmp	00140$
      005A79                       7798 00419$:
      005A79 BD 5C 02         [24] 7799 	cjne	r5,#0x5c,00420$
      005A7C 80 08            [24] 7800 	sjmp	00140$
      005A7E                       7801 00420$:
                                   7802 ;	calc.c:505: ((char)input == '%') || ((char)input == '#')
      005A7E BD 25 02         [24] 7803 	cjne	r5,#0x25,00421$
      005A81 80 03            [24] 7804 	sjmp	00140$
      005A83                       7805 00421$:
      005A83 BD 23 29         [24] 7806 	cjne	r5,#0x23,00141$
      005A86                       7807 00140$:
                                   7808 ;	calc.c:507: if (state_exec(&s, EVENT_OP) <= 0) break;
      005A86 74 02            [12] 7809 	mov	a,#0x02
      005A88 C0 E0            [24] 7810 	push	acc
      005A8A E4               [12] 7811 	clr	a
      005A8B C0 E0            [24] 7812 	push	acc
      005A8D 90 A0 00         [24] 7813 	mov	dptr,#_s
      005A90 75 F0 00         [24] 7814 	mov	b,#0x00
      005A93 12 21 46         [24] 7815 	lcall	_state_exec
      005A96 AE 82            [24] 7816 	mov	r6,dpl
      005A98 AF 83            [24] 7817 	mov	r7,dph
      005A9A 15 81            [12] 7818 	dec	sp
      005A9C 15 81            [12] 7819 	dec	sp
      005A9E C3               [12] 7820 	clr	c
      005A9F E4               [12] 7821 	clr	a
      005AA0 9E               [12] 7822 	subb	a,r6
      005AA1 74 80            [12] 7823 	mov	a,#(0x00 ^ 0x80)
      005AA3 8F F0            [24] 7824 	mov	b,r7
      005AA5 63 F0 80         [24] 7825 	xrl	b,#0x80
      005AA8 95 F0            [12] 7826 	subb	a,b
      005AAA 50 74            [24] 7827 	jnc	00193$
      005AAC 02 58 05         [24] 7828 	ljmp	00192$
      005AAF                       7829 00141$:
                                   7830 ;	calc.c:509: ((char)input == '&') ||
      005AAF BD 26 02         [24] 7831 	cjne	r5,#0x26,00425$
      005AB2 80 1C            [24] 7832 	sjmp	00131$
      005AB4                       7833 00425$:
                                   7834 ;	calc.c:510: ((char)input == '|') || ((char)input == '^') ||
      005AB4 BD 7C 02         [24] 7835 	cjne	r5,#0x7c,00426$
      005AB7 80 17            [24] 7836 	sjmp	00131$
      005AB9                       7837 00426$:
      005AB9 BD 5E 02         [24] 7838 	cjne	r5,#0x5e,00427$
      005ABC 80 12            [24] 7839 	sjmp	00131$
      005ABE                       7840 00427$:
                                   7841 ;	calc.c:511: ((char)input == '~') ||
      005ABE BD 7E 02         [24] 7842 	cjne	r5,#0x7e,00428$
      005AC1 80 0D            [24] 7843 	sjmp	00131$
      005AC3                       7844 00428$:
                                   7845 ;	calc.c:512: ((char)input == '>') || ((char)input == ']') ||
      005AC3 BD 3E 02         [24] 7846 	cjne	r5,#0x3e,00429$
      005AC6 80 08            [24] 7847 	sjmp	00131$
      005AC8                       7848 00429$:
      005AC8 BD 5D 02         [24] 7849 	cjne	r5,#0x5d,00430$
      005ACB 80 03            [24] 7850 	sjmp	00131$
      005ACD                       7851 00430$:
                                   7852 ;	calc.c:513: ((char)input == '<')
      005ACD BD 3C 29         [24] 7853 	cjne	r5,#0x3c,00132$
      005AD0                       7854 00131$:
                                   7855 ;	calc.c:515: if (state_exec(&s, EVENT_OP) <= 0) break;
      005AD0 74 02            [12] 7856 	mov	a,#0x02
      005AD2 C0 E0            [24] 7857 	push	acc
      005AD4 E4               [12] 7858 	clr	a
      005AD5 C0 E0            [24] 7859 	push	acc
      005AD7 90 A0 00         [24] 7860 	mov	dptr,#_s
      005ADA 75 F0 00         [24] 7861 	mov	b,#0x00
      005ADD 12 21 46         [24] 7862 	lcall	_state_exec
      005AE0 AE 82            [24] 7863 	mov	r6,dpl
      005AE2 AF 83            [24] 7864 	mov	r7,dph
      005AE4 15 81            [12] 7865 	dec	sp
      005AE6 15 81            [12] 7866 	dec	sp
      005AE8 C3               [12] 7867 	clr	c
      005AE9 E4               [12] 7868 	clr	a
      005AEA 9E               [12] 7869 	subb	a,r6
      005AEB 74 80            [12] 7870 	mov	a,#(0x00 ^ 0x80)
      005AED 8F F0            [24] 7871 	mov	b,r7
      005AEF 63 F0 80         [24] 7872 	xrl	b,#0x80
      005AF2 95 F0            [12] 7873 	subb	a,b
      005AF4 50 2A            [24] 7874 	jnc	00193$
      005AF6 02 58 05         [24] 7875 	ljmp	00192$
      005AF9                       7876 00132$:
                                   7877 ;	calc.c:517: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      005AF9 E4               [12] 7878 	clr	a
      005AFA C0 E0            [24] 7879 	push	acc
      005AFC C0 E0            [24] 7880 	push	acc
      005AFE 90 A0 00         [24] 7881 	mov	dptr,#_s
      005B01 75 F0 00         [24] 7882 	mov	b,#0x00
      005B04 12 21 46         [24] 7883 	lcall	_state_exec
      005B07 AE 82            [24] 7884 	mov	r6,dpl
      005B09 AF 83            [24] 7885 	mov	r7,dph
      005B0B 15 81            [12] 7886 	dec	sp
      005B0D 15 81            [12] 7887 	dec	sp
      005B0F C3               [12] 7888 	clr	c
      005B10 E4               [12] 7889 	clr	a
      005B11 9E               [12] 7890 	subb	a,r6
      005B12 74 80            [12] 7891 	mov	a,#(0x00 ^ 0x80)
      005B14 8F F0            [24] 7892 	mov	b,r7
      005B16 63 F0 80         [24] 7893 	xrl	b,#0x80
      005B19 95 F0            [12] 7894 	subb	a,b
      005B1B 50 03            [24] 7895 	jnc	00434$
      005B1D 02 58 05         [24] 7896 	ljmp	00192$
      005B20                       7897 00434$:
      005B20                       7898 00193$:
                                   7899 ;	calc.c:521: printstr("TERM\r\n");
      005B20 90 81 8C         [24] 7900 	mov	dptr,#___str_51
      005B23 75 F0 80         [24] 7901 	mov	b,#0x80
      005B26 12 5E 27         [24] 7902 	lcall	_printstr
                                   7903 ;	calc.c:523: PCON |= 2;
      005B29 43 87 02         [24] 7904 	orl	_PCON,#0x02
                                   7905 ;	calc.c:525: return;
                                   7906 ;	calc.c:526: }
      005B2C 22               [24] 7907 	ret
                                   7908 	.area CSEG    (CODE)
                                   7909 	.area CONST   (CODE)
                                   7910 	.area CONST   (CODE)
      007DED                       7911 ___str_0:
      007DED 25 20 31 31 6C 64     7912 	.ascii "% 11ld"
      007DF3 09                    7913 	.db 0x09
      007DF4 00                    7914 	.db 0x00
                                   7915 	.area CSEG    (CODE)
                                   7916 	.area CONST   (CODE)
      007DF5                       7917 ___str_1:
      007DF5 25 30 31 31 6C 6F     7918 	.ascii "%011lo"
      007DFB 09                    7919 	.db 0x09
      007DFC 00                    7920 	.db 0x00
                                   7921 	.area CSEG    (CODE)
                                   7922 	.area CONST   (CODE)
      007DFD                       7923 ___str_2:
      007DFD 0D                    7924 	.db 0x0d
      007DFE 0A                    7925 	.db 0x0a
      007DFF 00                    7926 	.db 0x00
                                   7927 	.area CSEG    (CODE)
                                   7928 	.area CONST   (CODE)
      007E00                       7929 ___str_3:
      007E00 73 74 61 63 6B 20 75  7930 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007E0F 0D                    7931 	.db 0x0d
      007E10 0A                    7932 	.db 0x0a
      007E11 00                    7933 	.db 0x00
                                   7934 	.area CSEG    (CODE)
                                   7935 	.area CONST   (CODE)
      007E12                       7936 ___str_4:
      007E12 50 53 50 41           7937 	.ascii "PSPA"
      007E16 09                    7938 	.db 0x09
      007E17 00                    7939 	.db 0x00
                                   7940 	.area CSEG    (CODE)
                                   7941 	.area CONST   (CODE)
      007E18                       7942 ___str_5:
      007E18 53 53 50 41           7943 	.ascii "SSPA"
      007E1C 09                    7944 	.db 0x09
      007E1D 00                    7945 	.db 0x00
                                   7946 	.area CSEG    (CODE)
                                   7947 	.area CONST   (CODE)
      007E1E                       7948 ___str_6:
      007E1E 50 53 56 41           7949 	.ascii "PSVA"
      007E22 09                    7950 	.db 0x09
      007E23 00                    7951 	.db 0x00
                                   7952 	.area CSEG    (CODE)
                                   7953 	.area CONST   (CODE)
      007E24                       7954 ___str_7:
      007E24 50 53 56 54 4F 50     7955 	.ascii "PSVTOP"
      007E2A 09                    7956 	.db 0x09
      007E2B 00                    7957 	.db 0x00
                                   7958 	.area CSEG    (CODE)
                                   7959 	.area CONST   (CODE)
      007E2C                       7960 ___str_8:
      007E2C 50 53 50 54 4F 50     7961 	.ascii "PSPTOP"
      007E32 09                    7962 	.db 0x09
      007E33 00                    7963 	.db 0x00
                                   7964 	.area CSEG    (CODE)
                                   7965 	.area CONST   (CODE)
      007E34                       7966 ___str_9:
      007E34 0D                    7967 	.db 0x0d
      007E35 0A                    7968 	.db 0x0a
      007E36 73 74 61 63 6B 20 75  7969 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007E45 0D                    7970 	.db 0x0d
      007E46 0A                    7971 	.db 0x0a
      007E47 00                    7972 	.db 0x00
                                   7973 	.area CSEG    (CODE)
                                   7974 	.area CONST   (CODE)
      007E48                       7975 ___str_10:
      007E48 0D                    7976 	.db 0x0d
      007E49 0A                    7977 	.db 0x0a
      007E4A 73 65 63 6F 6E 64 61  7978 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      007E63 0D                    7979 	.db 0x0d
      007E64 0A                    7980 	.db 0x0a
      007E65 00                    7981 	.db 0x00
                                   7982 	.area CSEG    (CODE)
                                   7983 	.area CONST   (CODE)
      007E66                       7984 ___str_11:
      007E66 0D                    7985 	.db 0x0d
      007E67 0A                    7986 	.db 0x0a
      007E68 73 65 63 6F 6E 64 61  7987 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      007E80 0D                    7988 	.db 0x0d
      007E81 0A                    7989 	.db 0x0a
      007E82 00                    7990 	.db 0x00
                                   7991 	.area CSEG    (CODE)
                                   7992 	.area CONST   (CODE)
      007E83                       7993 ___str_12:
      007E83 0D                    7994 	.db 0x0d
      007E84 0A                    7995 	.db 0x0a
      007E85 73 74 61 63 6B 20 6F  7996 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      007E93 0D                    7997 	.db 0x0d
      007E94 0A                    7998 	.db 0x0a
      007E95 00                    7999 	.db 0x00
                                   8000 	.area CSEG    (CODE)
                                   8001 	.area CONST   (CODE)
      007E96                       8002 ___str_13:
      007E96 0D                    8003 	.db 0x0d
      007E97 0A                    8004 	.db 0x0a
      007E98 64 69 76 69 73 69 6F  8005 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      007EA8 0D                    8006 	.db 0x0d
      007EA9 0A                    8007 	.db 0x0a
      007EAA 00                    8008 	.db 0x00
                                   8009 	.area CSEG    (CODE)
                                   8010 	.area CONST   (CODE)
      007EAB                       8011 ___str_14:
      007EAB 0D                    8012 	.db 0x0d
      007EAC 0A                    8013 	.db 0x0a
      007EAD 50 53 20 3D 20 25 70  8014 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      007EC8 0D                    8015 	.db 0x0d
      007EC9 0A                    8016 	.db 0x0a
      007ECA 00                    8017 	.db 0x00
                                   8018 	.area CSEG    (CODE)
                                   8019 	.area CONST   (CODE)
      007ECB                       8020 ___str_15:
      007ECB 41 43 43              8021 	.ascii "ACC"
      007ECE 09                    8022 	.db 0x09
      007ECF 00                    8023 	.db 0x00
                                   8024 	.area CSEG    (CODE)
                                   8025 	.area CONST   (CODE)
      007ED0                       8026 ___str_16:
      007ED0 0D                    8027 	.db 0x0d
      007ED1 0A                    8028 	.db 0x0a
      007ED2 50 53 54 4F 50 31     8029 	.ascii "PSTOP1"
      007ED8 09                    8030 	.db 0x09
      007ED9 00                    8031 	.db 0x00
                                   8032 	.area CSEG    (CODE)
                                   8033 	.area CONST   (CODE)
      007EDA                       8034 ___str_17:
      007EDA 0D                    8035 	.db 0x0d
      007EDB 0A                    8036 	.db 0x0a
      007EDC 50 53 54 4F 50 30     8037 	.ascii "PSTOP0"
      007EE2 09                    8038 	.db 0x09
      007EE3 00                    8039 	.db 0x00
                                   8040 	.area CSEG    (CODE)
                                   8041 	.area CONST   (CODE)
      007EE4                       8042 ___str_18:
      007EE4 0D                    8043 	.db 0x0d
      007EE5 0A                    8044 	.db 0x0a
      007EE6 53 53 54 4F 50 31     8045 	.ascii "SSTOP1"
      007EEC 09                    8046 	.db 0x09
      007EED 00                    8047 	.db 0x00
                                   8048 	.area CSEG    (CODE)
                                   8049 	.area CONST   (CODE)
      007EEE                       8050 ___str_19:
      007EEE 0D                    8051 	.db 0x0d
      007EEF 0A                    8052 	.db 0x0a
      007EF0 53 53 54 4F 50 30     8053 	.ascii "SSTOP0"
      007EF6 09                    8054 	.db 0x09
      007EF7 00                    8055 	.db 0x00
                                   8056 	.area CSEG    (CODE)
                                   8057 	.area CONST   (CODE)
      007EF8                       8058 ___str_20:
      007EF8 0D                    8059 	.db 0x0d
      007EF9 0A                    8060 	.db 0x0a
      007EFA 48 68 4F 6F           8061 	.ascii "HhOo"
      007EFE 09                    8062 	.db 0x09
      007EFF 62 61 73 65 20 31 36  8063 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      007F0D 0D                    8064 	.db 0x0d
      007F0E 0A                    8065 	.db 0x0a
      007F0F 00                    8066 	.db 0x00
                                   8067 	.area CSEG    (CODE)
                                   8068 	.area CONST   (CODE)
      007F10                       8069 ___str_21:
      007F10 70 2E                 8070 	.ascii "p."
      007F12 09                    8071 	.db 0x09
      007F13 70 6F 70 20 74 6F 70  8072 	.ascii "pop top"
      007F1A 0D                    8073 	.db 0x0d
      007F1B 0A                    8074 	.db 0x0a
      007F1C 00                    8075 	.db 0x00
                                   8076 	.area CSEG    (CODE)
                                   8077 	.area CONST   (CODE)
      007F1D                       8078 ___str_22:
      007F1D 50                    8079 	.ascii "P"
      007F1E 09                    8080 	.db 0x09
      007F1F 70 6F 70 20 73 74 61  8081 	.ascii "pop stack"
             63 6B
      007F28 0D                    8082 	.db 0x0d
      007F29 0A                    8083 	.db 0x0a
      007F2A 00                    8084 	.db 0x00
                                   8085 	.area CSEG    (CODE)
                                   8086 	.area CONST   (CODE)
      007F2B                       8087 ___str_23:
      007F2B 76                    8088 	.ascii "v"
      007F2C 09                    8089 	.db 0x09
      007F2D 70 65 65 6B 20 74 6F  8090 	.ascii "peek top"
             70
      007F35 0D                    8091 	.db 0x0d
      007F36 0A                    8092 	.db 0x0a
      007F37 00                    8093 	.db 0x00
                                   8094 	.area CSEG    (CODE)
                                   8095 	.area CONST   (CODE)
      007F38                       8096 ___str_24:
      007F38 56                    8097 	.ascii "V"
      007F39 09                    8098 	.db 0x09
      007F3A 70 65 65 6B 20 73 74  8099 	.ascii "peek stack"
             61 63 6B
      007F44 0D                    8100 	.db 0x0d
      007F45 0A                    8101 	.db 0x0a
      007F46 00                    8102 	.db 0x00
                                   8103 	.area CSEG    (CODE)
                                   8104 	.area CONST   (CODE)
      007F47                       8105 ___str_25:
      007F47 69                    8106 	.ascii "i"
      007F48 09                    8107 	.db 0x09
      007F49 72 65 73 65 74 20 61  8108 	.ascii "reset acc"
             63 63
      007F52 0D                    8109 	.db 0x0d
      007F53 0A                    8110 	.db 0x0a
      007F54 00                    8111 	.db 0x00
                                   8112 	.area CSEG    (CODE)
                                   8113 	.area CONST   (CODE)
      007F55                       8114 ___str_26:
      007F55 49                    8115 	.ascii "I"
      007F56 09                    8116 	.db 0x09
      007F57 72 65 73 65 74 20 61  8117 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      007F6C 0D                    8118 	.db 0x0d
      007F6D 0A                    8119 	.db 0x0a
      007F6E 00                    8120 	.db 0x00
                                   8121 	.area CSEG    (CODE)
                                   8122 	.area CONST   (CODE)
      007F6F                       8123 ___str_27:
      007F6F 58                    8124 	.ascii "X"
      007F70 09                    8125 	.db 0x09
      007F71 65 78 63 68 61 6E 67  8126 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      007F94 0D                    8127 	.db 0x0d
      007F95 0A                    8128 	.db 0x0a
      007F96 00                    8129 	.db 0x00
                                   8130 	.area CSEG    (CODE)
                                   8131 	.area CONST   (CODE)
      007F97                       8132 ___str_28:
      007F97 78                    8133 	.ascii "x"
      007F98 09                    8134 	.db 0x09
      007F99 65 78 63 68 61 6E 67  8135 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      007FA7 0D                    8136 	.db 0x0d
      007FA8 0A                    8137 	.db 0x0a
      007FA9 00                    8138 	.db 0x00
                                   8139 	.area CSEG    (CODE)
                                   8140 	.area CONST   (CODE)
      007FAA                       8141 ___str_29:
      007FAA 55                    8142 	.ascii "U"
      007FAB 09                    8143 	.db 0x09
      007FAC 63 6F 70 79 20 74 6F  8144 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      007FC9 0D                    8145 	.db 0x0d
      007FCA 0A                    8146 	.db 0x0a
      007FCB 00                    8147 	.db 0x00
                                   8148 	.area CSEG    (CODE)
                                   8149 	.area CONST   (CODE)
      007FCC                       8150 ___str_30:
      007FCC 75                    8151 	.ascii "u"
      007FCD 09                    8152 	.db 0x09
      007FCE 63 6F 70 79 20 74 6F  8153 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      007FEB 0D                    8154 	.db 0x0d
      007FEC 0A                    8155 	.db 0x0a
      007FED 00                    8156 	.db 0x00
                                   8157 	.area CSEG    (CODE)
                                   8158 	.area CONST   (CODE)
      007FEE                       8159 ___str_31:
      007FEE 4D                    8160 	.ascii "M"
      007FEF 09                    8161 	.db 0x09
      007FF0 6D 6F 76 65 20 74 6F  8162 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      00800D 0D                    8163 	.db 0x0d
      00800E 0A                    8164 	.db 0x0a
      00800F 00                    8165 	.db 0x00
                                   8166 	.area CSEG    (CODE)
                                   8167 	.area CONST   (CODE)
      008010                       8168 ___str_32:
      008010 6D                    8169 	.ascii "m"
      008011 09                    8170 	.db 0x09
      008012 6D 6F 76 65 20 74 6F  8171 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      00802F 0D                    8172 	.db 0x0d
      008030 0A                    8173 	.db 0x0a
      008031 00                    8174 	.db 0x00
                                   8175 	.area CSEG    (CODE)
                                   8176 	.area CONST   (CODE)
      008032                       8177 ___str_33:
      008032 53                    8178 	.ascii "S"
      008033 09                    8179 	.db 0x09
      008034 73 77 69 74 63 68 20  8180 	.ascii "switch stacks primary <-> secondary"
             73 74 61 63 6B 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      008057 0D                    8181 	.db 0x0d
      008058 0A                    8182 	.db 0x0a
      008059 00                    8183 	.db 0x00
                                   8184 	.area CSEG    (CODE)
                                   8185 	.area CONST   (CODE)
      00805A                       8186 ___str_34:
      00805A 2B                    8187 	.ascii "+"
      00805B 09                    8188 	.db 0x09
      00805C 61 64 64 20 74 6F 70  8189 	.ascii "add top 2"
             20 32
      008065 0D                    8190 	.db 0x0d
      008066 0A                    8191 	.db 0x0a
      008067 00                    8192 	.db 0x00
                                   8193 	.area CSEG    (CODE)
                                   8194 	.area CONST   (CODE)
      008068                       8195 ___str_35:
      008068 2D                    8196 	.ascii "-"
      008069 09                    8197 	.db 0x09
      00806A 73 75 62 74 72 61 63  8198 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008078 0D                    8199 	.db 0x0d
      008079 0A                    8200 	.db 0x0a
      00807A 00                    8201 	.db 0x00
                                   8202 	.area CSEG    (CODE)
                                   8203 	.area CONST   (CODE)
      00807B                       8204 ___str_36:
      00807B 2A                    8205 	.ascii "*"
      00807C 09                    8206 	.db 0x09
      00807D 6D 75 6C 74 69 70 6C  8207 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      00808B 0D                    8208 	.db 0x0d
      00808C 0A                    8209 	.db 0x0a
      00808D 00                    8210 	.db 0x00
                                   8211 	.area CSEG    (CODE)
                                   8212 	.area CONST   (CODE)
      00808E                       8213 ___str_37:
      00808E 2F                    8214 	.ascii "/"
      00808F 09                    8215 	.db 0x09
      008090 64 69 76 69 64 65 20  8216 	.ascii "divide top 2"
             74 6F 70 20 32
      00809C 0D                    8217 	.db 0x0d
      00809D 0A                    8218 	.db 0x0a
      00809E 00                    8219 	.db 0x00
                                   8220 	.area CSEG    (CODE)
                                   8221 	.area CONST   (CODE)
      00809F                       8222 ___str_38:
      00809F 5C                    8223 	.db 0x5c
      0080A0 09                    8224 	.db 0x09
      0080A1 64 69 76 69 64 65 20  8225 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      0080B6 0D                    8226 	.db 0x0d
      0080B7 0A                    8227 	.db 0x0a
      0080B8 00                    8228 	.db 0x00
                                   8229 	.area CSEG    (CODE)
                                   8230 	.area CONST   (CODE)
      0080B9                       8231 ___str_39:
      0080B9 25                    8232 	.ascii "%"
      0080BA 09                    8233 	.db 0x09
      0080BB 6D 6F 64 75 6C 75 73  8234 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      0080C8 0D                    8235 	.db 0x0d
      0080C9 0A                    8236 	.db 0x0a
      0080CA 00                    8237 	.db 0x00
                                   8238 	.area CSEG    (CODE)
                                   8239 	.area CONST   (CODE)
      0080CB                       8240 ___str_40:
      0080CB 23                    8241 	.ascii "#"
      0080CC 09                    8242 	.db 0x09
      0080CD 6D 6F 64 75 6C 75 73  8243 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      0080E3 0D                    8244 	.db 0x0d
      0080E4 0A                    8245 	.db 0x0a
      0080E5 00                    8246 	.db 0x00
                                   8247 	.area CSEG    (CODE)
                                   8248 	.area CONST   (CODE)
      0080E6                       8249 ___str_41:
      0080E6 26                    8250 	.ascii "&"
      0080E7 09                    8251 	.db 0x09
      0080E8 61 6E 64 20 74 6F 70  8252 	.ascii "and top 2"
             20 32
      0080F1 0D                    8253 	.db 0x0d
      0080F2 0A                    8254 	.db 0x0a
      0080F3 00                    8255 	.db 0x00
                                   8256 	.area CSEG    (CODE)
                                   8257 	.area CONST   (CODE)
      0080F4                       8258 ___str_42:
      0080F4 7C                    8259 	.ascii "|"
      0080F5 09                    8260 	.db 0x09
      0080F6 6F 72 20 74 6F 70 20  8261 	.ascii "or top 2"
             32
      0080FE 0D                    8262 	.db 0x0d
      0080FF 0A                    8263 	.db 0x0a
      008100 00                    8264 	.db 0x00
                                   8265 	.area CSEG    (CODE)
                                   8266 	.area CONST   (CODE)
      008101                       8267 ___str_43:
      008101 5E                    8268 	.ascii "^"
      008102 09                    8269 	.db 0x09
      008103 78 6F 72 20 74 6F 70  8270 	.ascii "xor top 2"
             20 32
      00810C 0D                    8271 	.db 0x0d
      00810D 0A                    8272 	.db 0x0a
      00810E 00                    8273 	.db 0x00
                                   8274 	.area CSEG    (CODE)
                                   8275 	.area CONST   (CODE)
      00810F                       8276 ___str_44:
      00810F 3E                    8277 	.ascii ">"
      008110 09                    8278 	.db 0x09
      008111 73 68 69 66 74 20 72  8279 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      008122 0D                    8280 	.db 0x0d
      008123 0A                    8281 	.db 0x0a
      008124 00                    8282 	.db 0x00
                                   8283 	.area CSEG    (CODE)
                                   8284 	.area CONST   (CODE)
      008125                       8285 ___str_45:
      008125 5D                    8286 	.ascii "]"
      008126 09                    8287 	.db 0x09
      008127 61 72 69 74 68 6D 65  8288 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      008143 0D                    8289 	.db 0x0d
      008144 0A                    8290 	.db 0x0a
      008145 00                    8291 	.db 0x00
                                   8292 	.area CSEG    (CODE)
                                   8293 	.area CONST   (CODE)
      008146                       8294 ___str_46:
      008146 3C                    8295 	.ascii "<"
      008147 09                    8296 	.db 0x09
      008148 73 68 69 66 74 20 6C  8297 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008158 0D                    8298 	.db 0x0d
      008159 0A                    8299 	.db 0x0a
      00815A 00                    8300 	.db 0x00
                                   8301 	.area CSEG    (CODE)
                                   8302 	.area CONST   (CODE)
      00815B                       8303 ___str_47:
      00815B 7E                    8304 	.ascii "~"
      00815C 09                    8305 	.db 0x09
      00815D 62 69 74 77 69 73 65  8306 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      00816C 0D                    8307 	.db 0x0d
      00816D 0A                    8308 	.db 0x0a
      00816E 00                    8309 	.db 0x00
                                   8310 	.area CSEG    (CODE)
                                   8311 	.area CONST   (CODE)
      00816F                       8312 ___str_48:
      00816F 73                    8313 	.ascii "s"
      008170 09                    8314 	.db 0x09
      008171 73 74 61 74 75 73     8315 	.ascii "status"
      008177 0D                    8316 	.db 0x0d
      008178 0A                    8317 	.db 0x0a
      008179 00                    8318 	.db 0x00
                                   8319 	.area CSEG    (CODE)
                                   8320 	.area CONST   (CODE)
      00817A                       8321 ___str_49:
      00817A 3F                    8322 	.ascii "?"
      00817B 09                    8323 	.db 0x09
      00817C 68 65 6C 70           8324 	.ascii "help"
      008180 0D                    8325 	.db 0x0d
      008181 0A                    8326 	.db 0x0a
      008182 00                    8327 	.db 0x00
                                   8328 	.area CSEG    (CODE)
                                   8329 	.area CONST   (CODE)
      008183                       8330 ___str_50:
      008183 71                    8331 	.ascii "q"
      008184 09                    8332 	.db 0x09
      008185 71 75 69 74           8333 	.ascii "quit"
      008189 0D                    8334 	.db 0x0d
      00818A 0A                    8335 	.db 0x0a
      00818B 00                    8336 	.db 0x00
                                   8337 	.area CSEG    (CODE)
                                   8338 	.area CONST   (CODE)
      00818C                       8339 ___str_51:
      00818C 54 45 52 4D           8340 	.ascii "TERM"
      008190 0D                    8341 	.db 0x0d
      008191 0A                    8342 	.db 0x0a
      008192 00                    8343 	.db 0x00
                                   8344 	.area CSEG    (CODE)
                                   8345 	.area XINIT   (CODE)
      0081B4                       8346 __xinit__deltas:
      0081B4 00 00                 8347 	.byte #0x00, #0x00	;  0
      0081B6 00 00                 8348 	.byte #0x00, #0x00	;  0
      0081B8 00 00                 8349 	.byte #0x00, #0x00	;  0
      0081BA 00 00                 8350 	.byte #0x00,#0x00
      0081BC 00 00                 8351 	.byte #0x00,#0x00
      0081BE 00 00                 8352 	.byte #0x00, #0x00	;  0
      0081C0 01 00                 8353 	.byte #0x01, #0x00	;  1
      0081C2 02 00                 8354 	.byte #0x02, #0x00	;  2
      0081C4 00 00                 8355 	.byte #0x00,#0x00
      0081C6 70 2B                 8356 	.byte _accumulate, (_accumulate >> 8)
      0081C8 00 00                 8357 	.byte #0x00, #0x00	;  0
      0081CA 02 00                 8358 	.byte #0x02, #0x00	;  2
      0081CC 01 00                 8359 	.byte #0x01, #0x00	;  1
      0081CE 00 00                 8360 	.byte #0x00,#0x00
      0081D0 AB 31                 8361 	.byte _operator, (_operator >> 8)
      0081D2 01 00                 8362 	.byte #0x01, #0x00	;  1
      0081D4 00 00                 8363 	.byte #0x00, #0x00	;  0
      0081D6 00 00                 8364 	.byte #0x00, #0x00	;  0
      0081D8 00 00                 8365 	.byte #0x00,#0x00
      0081DA 00 00                 8366 	.byte #0x00,#0x00
      0081DC 01 00                 8367 	.byte #0x01, #0x00	;  1
      0081DE 02 00                 8368 	.byte #0x02, #0x00	;  2
      0081E0 01 00                 8369 	.byte #0x01, #0x00	;  1
      0081E2 00 00                 8370 	.byte #0x00,#0x00
      0081E4 AB 31                 8371 	.byte _operator, (_operator >> 8)
      0081E6 01 00                 8372 	.byte #0x01, #0x00	;  1
      0081E8 01 00                 8373 	.byte #0x01, #0x00	;  1
      0081EA 02 00                 8374 	.byte #0x02, #0x00	;  2
      0081EC 00 00                 8375 	.byte #0x00,#0x00
      0081EE 70 2B                 8376 	.byte _accumulate, (_accumulate >> 8)
      0081F0 02 00                 8377 	.byte #0x02, #0x00	;  2
      0081F2 00 00                 8378 	.byte #0x00, #0x00	;  0
      0081F4 00 00                 8379 	.byte #0x00, #0x00	;  0
      0081F6 00 00                 8380 	.byte #0x00,#0x00
      0081F8 20 4F                 8381 	.byte _push_acc, (_push_acc >> 8)
      0081FA 02 00                 8382 	.byte #0x02, #0x00	;  2
      0081FC 07 00                 8383 	.byte #0x07, #0x00	;  7
      0081FE 00 00                 8384 	.byte #0x00, #0x00	;  0
      008200 00 00                 8385 	.byte #0x00,#0x00
      008202 23 50                 8386 	.byte _reset_acc, (_reset_acc >> 8)
      008204 02 00                 8387 	.byte #0x02, #0x00	;  2
      008206 01 00                 8388 	.byte #0x01, #0x00	;  1
      008208 02 00                 8389 	.byte #0x02, #0x00	;  2
      00820A 00 00                 8390 	.byte #0x00,#0x00
      00820C 70 2B                 8391 	.byte _accumulate, (_accumulate >> 8)
      00820E 02 00                 8392 	.byte #0x02, #0x00	;  2
      008210 02 00                 8393 	.byte #0x02, #0x00	;  2
      008212 01 00                 8394 	.byte #0x01, #0x00	;  1
      008214 00 00                 8395 	.byte #0x00,#0x00
      008216 20 4F                 8396 	.byte _push_acc, (_push_acc >> 8)
      008218 FF 7F                 8397 	.byte #0xff, #0x7f	;  32767
      00821A 06 00                 8398 	.byte #0x06, #0x00	;  6
      00821C FF 7F                 8399 	.byte #0xff, #0x7f	;  32767
      00821E 00 00                 8400 	.byte #0x00,#0x00
      008220 23 50                 8401 	.byte _reset_acc, (_reset_acc >> 8)
      008222 FF 7F                 8402 	.byte #0xff, #0x7f	;  32767
      008224 07 00                 8403 	.byte #0x07, #0x00	;  7
      008226 FF 7F                 8404 	.byte #0xff, #0x7f	;  32767
      008228 00 00                 8405 	.byte #0x00,#0x00
      00822A 00 00                 8406 	.byte #0x00,#0x00
      00822C FF 7F                 8407 	.byte #0xff, #0x7f	;  32767
      00822E 05 00                 8408 	.byte #0x05, #0x00	;  5
      008230 FF 7F                 8409 	.byte #0xff, #0x7f	;  32767
      008232 00 00                 8410 	.byte #0x00,#0x00
      008234 8D 50                 8411 	.byte _reset_base, (_reset_base >> 8)
      008236 FF 7F                 8412 	.byte #0xff, #0x7f	;  32767
      008238 03 00                 8413 	.byte #0x03, #0x00	;  3
      00823A FF 7F                 8414 	.byte #0xff, #0x7f	;  32767
      00823C 00 00                 8415 	.byte #0x00,#0x00
      00823E 0B 51                 8416 	.byte _status, (_status >> 8)
      008240 FF 7F                 8417 	.byte #0xff, #0x7f	;  32767
      008242 04 00                 8418 	.byte #0x04, #0x00	;  4
      008244 FF 7F                 8419 	.byte #0xff, #0x7f	;  32767
      008246 00 00                 8420 	.byte #0x00,#0x00
      008248 39 56                 8421 	.byte _help, (_help >> 8)
      00824A FF 7F                 8422 	.byte #0xff, #0x7f	;  32767
      00824C 08 00                 8423 	.byte #0x08, #0x00	;  8
      00824E 03 00                 8424 	.byte #0x03, #0x00	;  3
      008250 00 00                 8425 	.byte #0x00,#0x00
      008252 E1 2C                 8426 	.byte _dump_pop, (_dump_pop >> 8)
      008254 00 80                 8427 	.byte #0x00, #0x80	; -32768
      008256 00 80                 8428 	.byte #0x00, #0x80	; -32768
      008258 00 80                 8429 	.byte #0x00, #0x80	; -32768
      00825A 00 00                 8430 	.byte #0x00,#0x00
      00825C 00 00                 8431 	.byte #0x00,#0x00
                                   8432 	.area CABS    (ABS,CODE)
