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
      002003 02 57 62         [24]  378 	ljmp	_main
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
      002BA3 12 65 73         [24]  440 	lcall	__gptrget
      002BA6 70 31            [24]  441 	jnz	00102$
                                    442 ;	calc.c:33: ctx->acc_valid = 1;
      002BA8 8A 82            [24]  443 	mov	dpl,r2
      002BAA 8B 83            [24]  444 	mov	dph,r3
      002BAC 8C F0            [24]  445 	mov	b,r4
      002BAE 74 01            [12]  446 	mov	a,#0x01
      002BB0 12 5D E2         [24]  447 	lcall	__gptrput
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
      002BCA 12 5D E2         [24]  465 	lcall	__gptrput
      002BCD A3               [24]  466 	inc	dptr
      002BCE 12 5D E2         [24]  467 	lcall	__gptrput
      002BD1 A3               [24]  468 	inc	dptr
      002BD2 12 5D E2         [24]  469 	lcall	__gptrput
      002BD5 A3               [24]  470 	inc	dptr
      002BD6 12 5D E2         [24]  471 	lcall	__gptrput
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
      002BE6 12 65 73         [24]  482 	lcall	__gptrget
      002BE9 FB               [12]  483 	mov	r3,a
      002BEA A3               [24]  484 	inc	dptr
      002BEB 12 65 73         [24]  485 	lcall	__gptrget
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
      002C10 12 5B A4         [24]  508 	lcall	_strtol
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
      002C4E 12 65 73         [24]  551 	lcall	__gptrget
      002C51 F7               [12]  552 	mov	@r1,a
      002C52 A3               [24]  553 	inc	dptr
      002C53 12 65 73         [24]  554 	lcall	__gptrget
      002C56 09               [12]  555 	inc	r1
      002C57 F7               [12]  556 	mov	@r1,a
      002C58 A3               [24]  557 	inc	dptr
      002C59 12 65 73         [24]  558 	lcall	__gptrget
      002C5C 09               [12]  559 	inc	r1
      002C5D F7               [12]  560 	mov	@r1,a
      002C5E A3               [24]  561 	inc	dptr
      002C5F 12 65 73         [24]  562 	lcall	__gptrget
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
      002C71 12 65 73         [24]  573 	lcall	__gptrget
      002C74 FA               [12]  574 	mov	r2,a
      002C75 A3               [24]  575 	inc	dptr
      002C76 12 65 73         [24]  576 	lcall	__gptrget
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
      002C96 12 69 6C         [24]  596 	lcall	__mullong
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
      002CC6 12 5D E2         [24]  630 	lcall	__gptrput
      002CC9 A3               [24]  631 	inc	dptr
      002CCA ED               [12]  632 	mov	a,r5
      002CCB 12 5D E2         [24]  633 	lcall	__gptrput
      002CCE A3               [24]  634 	inc	dptr
      002CCF EE               [12]  635 	mov	a,r6
      002CD0 12 5D E2         [24]  636 	lcall	__gptrput
      002CD3 A3               [24]  637 	inc	dptr
      002CD4 EF               [12]  638 	mov	a,r7
      002CD5 12 5D E2         [24]  639 	lcall	__gptrput
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
      002D18 12 65 73         [24]  703 	lcall	__gptrget
      002D1B FE               [12]  704 	mov	r6,a
      002D1C A3               [24]  705 	inc	dptr
      002D1D 12 65 73         [24]  706 	lcall	__gptrget
      002D20 FF               [12]  707 	mov	r7,a
      002D21 BE 08 18         [24]  708 	cjne	r6,#0x08,00102$
      002D24 BF 00 15         [24]  709 	cjne	r7,#0x00,00102$
      002D27 90 7E 04         [24]  710 	mov	dptr,#___str_2
      002D2A 75 F0 80         [24]  711 	mov	b,#0x80
      002D2D C0 04            [24]  712 	push	ar4
      002D2F C0 03            [24]  713 	push	ar3
      002D31 C0 02            [24]  714 	push	ar2
      002D33 12 5E 2E         [24]  715 	lcall	_printstr
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
      002D75 12 65 73         [24]  759 	lcall	__gptrget
      002D78 FA               [12]  760 	mov	r2,a
      002D79 A3               [24]  761 	inc	dptr
      002D7A 12 65 73         [24]  762 	lcall	__gptrget
      002D7D FB               [12]  763 	mov	r3,a
      002D7E A3               [24]  764 	inc	dptr
      002D7F 12 65 73         [24]  765 	lcall	__gptrget
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
      002DC6 12 65 73         [24]  806 	lcall	__gptrget
      002DC9 FD               [12]  807 	mov	r5,a
      002DCA A3               [24]  808 	inc	dptr
      002DCB 12 65 73         [24]  809 	lcall	__gptrget
      002DCE FE               [12]  810 	mov	r6,a
      002DCF BD 08 06         [24]  811 	cjne	r5,#0x08,00164$
      002DD2 BE 00 03         [24]  812 	cjne	r6,#0x00,00164$
      002DD5 02 2F 49         [24]  813 	ljmp	00110$
      002DD8                        814 00164$:
      002DD8 90 7E 07         [24]  815 	mov	dptr,#___str_3
      002DDB 75 F0 80         [24]  816 	mov	b,#0x80
      002DDE C0 07            [24]  817 	push	ar7
      002DE0 C0 04            [24]  818 	push	ar4
      002DE2 C0 03            [24]  819 	push	ar3
      002DE4 C0 02            [24]  820 	push	ar2
      002DE6 12 5E 2E         [24]  821 	lcall	_printstr
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
      002E12 90 7E 19         [24]  848 	mov	dptr,#___str_4
      002E15 75 F0 80         [24]  849 	mov	b,#0x80
      002E18 C0 07            [24]  850 	push	ar7
      002E1A C0 04            [24]  851 	push	ar4
      002E1C C0 03            [24]  852 	push	ar3
      002E1E C0 02            [24]  853 	push	ar2
      002E20 12 5E 2E         [24]  854 	lcall	_printstr
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
      002E68 12 5F DE         [24]  904 	lcall	_print32x
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
      002E83 74 F4            [12]  918 	mov	a,#___str_0
      002E85 C0 E0            [24]  919 	push	acc
      002E87 74 7D            [12]  920 	mov	a,#(___str_0 >> 8)
      002E89 C0 E0            [24]  921 	push	acc
      002E8B 74 80            [12]  922 	mov	a,#0x80
      002E8D C0 E0            [24]  923 	push	acc
      002E8F 12 65 3A         [24]  924 	lcall	_printf
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
      002EB0 74 FC            [12]  941 	mov	a,#___str_1
      002EB2 C0 E0            [24]  942 	push	acc
      002EB4 74 7D            [12]  943 	mov	a,#(___str_1 >> 8)
      002EB6 C0 E0            [24]  944 	push	acc
      002EB8 74 80            [12]  945 	mov	a,#0x80
      002EBA C0 E0            [24]  946 	push	acc
      002EBC 12 65 3A         [24]  947 	lcall	_printf
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
      002EDA 12 5E 9D         [24]  963 	lcall	_print32bin
                                    964 ;	calc.c:55: printstr("\r\n");
      002EDD 90 7E 04         [24]  965 	mov	dptr,#___str_2
      002EE0 75 F0 80         [24]  966 	mov	b,#0x80
      002EE3 12 5E 2E         [24]  967 	lcall	_printstr
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
      002F05 12 65 73         [24]  989 	lcall	__gptrget
      002F08 FA               [12]  990 	mov	r2,a
      002F09 A3               [24]  991 	inc	dptr
      002F0A 12 65 73         [24]  992 	lcall	__gptrget
      002F0D FD               [12]  993 	mov	r5,a
      002F0E A3               [24]  994 	inc	dptr
      002F0F 12 65 73         [24]  995 	lcall	__gptrget
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
      002F4F 12 65 73         [24] 1031 	lcall	__gptrget
      002F52 FA               [12] 1032 	mov	r2,a
      002F53 A3               [24] 1033 	inc	dptr
      002F54 12 65 73         [24] 1034 	lcall	__gptrget
      002F57 FB               [12] 1035 	mov	r3,a
      002F58 BA 08 05         [24] 1036 	cjne	r2,#0x08,00166$
      002F5B BB 00 02         [24] 1037 	cjne	r3,#0x00,00166$
      002F5E 80 03            [24] 1038 	sjmp	00167$
      002F60                       1039 00166$:
      002F60 02 30 F7         [24] 1040 	ljmp	00113$
      002F63                       1041 00167$:
                                   1042 ;	calc.c:60: printstr("\r\n");
      002F63 90 7E 04         [24] 1043 	mov	dptr,#___str_2
      002F66 75 F0 80         [24] 1044 	mov	b,#0x80
      002F69 C0 07            [24] 1045 	push	ar7
      002F6B 12 5E 2E         [24] 1046 	lcall	_printstr
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
      002FA4 12 65 73         [24] 1084 	lcall	__gptrget
      002FA7 FA               [12] 1085 	mov	r2,a
      002FA8 A3               [24] 1086 	inc	dptr
      002FA9 12 65 73         [24] 1087 	lcall	__gptrget
      002FAC FB               [12] 1088 	mov	r3,a
      002FAD A3               [24] 1089 	inc	dptr
      002FAE 12 65 73         [24] 1090 	lcall	__gptrget
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
      002FF1 90 7E 1F         [24] 1130 	mov	dptr,#___str_5
      002FF4 75 F0 80         [24] 1131 	mov	b,#0x80
      002FF7 12 5E 2E         [24] 1132 	lcall	_printstr
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
      003039 12 5F DE         [24] 1179 	lcall	_print32x
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
      003054 74 F4            [12] 1193 	mov	a,#___str_0
      003056 C0 E0            [24] 1194 	push	acc
      003058 74 7D            [12] 1195 	mov	a,#(___str_0 >> 8)
      00305A C0 E0            [24] 1196 	push	acc
      00305C 74 80            [12] 1197 	mov	a,#0x80
      00305E C0 E0            [24] 1198 	push	acc
      003060 12 65 3A         [24] 1199 	lcall	_printf
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
      003081 74 FC            [12] 1216 	mov	a,#___str_1
      003083 C0 E0            [24] 1217 	push	acc
      003085 74 7D            [12] 1218 	mov	a,#(___str_1 >> 8)
      003087 C0 E0            [24] 1219 	push	acc
      003089 74 80            [12] 1220 	mov	a,#0x80
      00308B C0 E0            [24] 1221 	push	acc
      00308D 12 65 3A         [24] 1222 	lcall	_printf
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
      0030A5 12 5E 9D         [24] 1235 	lcall	_print32bin
                                   1236 ;	calc.c:64: printstr("\r\n");
      0030A8 90 7E 04         [24] 1237 	mov	dptr,#___str_2
      0030AB 75 F0 80         [24] 1238 	mov	b,#0x80
      0030AE 12 5E 2E         [24] 1239 	lcall	_printstr
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
      0030C9 12 65 73         [24] 1255 	lcall	__gptrget
      0030CC FA               [12] 1256 	mov	r2,a
      0030CD A3               [24] 1257 	inc	dptr
      0030CE 12 65 73         [24] 1258 	lcall	__gptrget
      0030D1 FC               [12] 1259 	mov	r4,a
      0030D2 A3               [24] 1260 	inc	dptr
      0030D3 12 65 73         [24] 1261 	lcall	__gptrget
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
      003105 90 7E 25         [24] 1301 	mov	dptr,#___str_6
      003108 75 F0 80         [24] 1302 	mov	b,#0x80
      00310B 12 5E 2E         [24] 1303 	lcall	_printstr
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
      00312D 12 5F DE         [24] 1324 	lcall	_print32x
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
      003148 74 F4            [12] 1338 	mov	a,#___str_0
      00314A C0 E0            [24] 1339 	push	acc
      00314C 74 7D            [12] 1340 	mov	a,#(___str_0 >> 8)
      00314E C0 E0            [24] 1341 	push	acc
      003150 74 80            [12] 1342 	mov	a,#0x80
      003152 C0 E0            [24] 1343 	push	acc
      003154 12 65 3A         [24] 1344 	lcall	_printf
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
      003175 74 FC            [12] 1361 	mov	a,#___str_1
      003177 C0 E0            [24] 1362 	push	acc
      003179 74 7D            [12] 1363 	mov	a,#(___str_1 >> 8)
      00317B C0 E0            [24] 1364 	push	acc
      00317D 74 80            [12] 1365 	mov	a,#0x80
      00317F C0 E0            [24] 1366 	push	acc
      003181 12 65 3A         [24] 1367 	lcall	_printf
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
      003199 12 5E 9D         [24] 1380 	lcall	_print32bin
                                   1381 ;	calc.c:76: printstr("\r\n");
      00319C 90 7E 04         [24] 1382 	mov	dptr,#___str_2
      00319F 75 F0 80         [24] 1383 	mov	b,#0x80
      0031A2 12 5E 2E         [24] 1384 	lcall	_printstr
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
      0031E1 12 65 73         [24] 1451 	lcall	__gptrget
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
      003245 02 37 E6         [24] 1506 	ljmp	00127$
      003248                       1507 00536$:
      003248 A8 08            [24] 1508 	mov	r0,_bp
      00324A 08               [12] 1509 	inc	r0
      00324B B6 50 03         [24] 1510 	cjne	@r0,#0x50,00537$
      00324E 02 35 44         [24] 1511 	ljmp	00113$
      003251                       1512 00537$:
      003251 A8 08            [24] 1513 	mov	r0,_bp
      003253 08               [12] 1514 	inc	r0
      003254 B6 54 03         [24] 1515 	cjne	@r0,#0x54,00538$
      003257 02 3A 52         [24] 1516 	ljmp	00145$
      00325A                       1517 00538$:
      00325A A8 08            [24] 1518 	mov	r0,_bp
      00325C 08               [12] 1519 	inc	r0
      00325D B6 55 03         [24] 1520 	cjne	@r0,#0x55,00539$
      003260 02 39 9D         [24] 1521 	ljmp	00139$
      003263                       1522 00539$:
      003263 A8 08            [24] 1523 	mov	r0,_bp
      003265 08               [12] 1524 	inc	r0
      003266 B6 56 03         [24] 1525 	cjne	@r0,#0x56,00540$
      003269 02 33 D3         [24] 1526 	ljmp	00105$
      00326C                       1527 00540$:
      00326C A8 08            [24] 1528 	mov	r0,_bp
      00326E 08               [12] 1529 	inc	r0
      00326F B6 58 03         [24] 1530 	cjne	@r0,#0x58,00541$
      003272 02 3B D6         [24] 1531 	ljmp	00152$
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
      003296 02 36 E4         [24] 1551 	ljmp	00121$
      003299                       1552 00545$:
      003299 A8 08            [24] 1553 	mov	r0,_bp
      00329B 08               [12] 1554 	inc	r0
      00329C B6 70 03         [24] 1555 	cjne	@r0,#0x70,00546$
      00329F 02 34 42         [24] 1556 	ljmp	00109$
      0032A2                       1557 00546$:
      0032A2 A8 08            [24] 1558 	mov	r0,_bp
      0032A4 08               [12] 1559 	inc	r0
      0032A5 B6 75 03         [24] 1560 	cjne	@r0,#0x75,00547$
      0032A8 02 38 E8         [24] 1561 	ljmp	00133$
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
      0032D1 90 7E 04         [24] 1587 	mov	dptr,#___str_2
      0032D4 75 F0 80         [24] 1588 	mov	b,#0x80
      0032D7 12 5E 2E         [24] 1589 	lcall	_printstr
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
      0032F9 12 65 73         [24] 1611 	lcall	__gptrget
      0032FC FA               [12] 1612 	mov	r2,a
      0032FD A3               [24] 1613 	inc	dptr
      0032FE 12 65 73         [24] 1614 	lcall	__gptrget
      003301 FB               [12] 1615 	mov	r3,a
      003302 A3               [24] 1616 	inc	dptr
      003303 12 65 73         [24] 1617 	lcall	__gptrget
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
      003324 90 7E 07         [24] 1634 	mov	dptr,#___str_3
      003327 75 F0 80         [24] 1635 	mov	b,#0x80
      00332A 12 5E 2E         [24] 1636 	lcall	_printstr
      00332D 02 4F 17         [24] 1637 	ljmp	00249$
      003330                       1638 00103$:
                                   1639 ;	calc.c:91: printstr("PSVTOP\t");
      003330 90 7E 2B         [24] 1640 	mov	dptr,#___str_7
      003333 75 F0 80         [24] 1641 	mov	b,#0x80
      003336 12 5E 2E         [24] 1642 	lcall	_printstr
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
      003360 12 5F DE         [24] 1669 	lcall	_print32x
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
      003377 74 F4            [12] 1685 	mov	a,#___str_0
      003379 C0 E0            [24] 1686 	push	acc
      00337B 74 7D            [12] 1687 	mov	a,#(___str_0 >> 8)
      00337D C0 E0            [24] 1688 	push	acc
      00337F 74 80            [12] 1689 	mov	a,#0x80
      003381 C0 E0            [24] 1690 	push	acc
      003383 12 65 3A         [24] 1691 	lcall	_printf
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
      0033A0 74 FC            [12] 1710 	mov	a,#___str_1
      0033A2 C0 E0            [24] 1711 	push	acc
      0033A4 74 7D            [12] 1712 	mov	a,#(___str_1 >> 8)
      0033A6 C0 E0            [24] 1713 	push	acc
      0033A8 74 80            [12] 1714 	mov	a,#0x80
      0033AA C0 E0            [24] 1715 	push	acc
      0033AC 12 65 3A         [24] 1716 	lcall	_printf
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
      0033C4 12 5E 9D         [24] 1731 	lcall	_print32bin
                                   1732 ;	calc.c:93: printstr("\r\n");
      0033C7 90 7E 04         [24] 1733 	mov	dptr,#___str_2
      0033CA 75 F0 80         [24] 1734 	mov	b,#0x80
      0033CD 12 5E 2E         [24] 1735 	lcall	_printstr
                                   1736 ;	calc.c:95: break;
      0033D0 02 4F 17         [24] 1737 	ljmp	00249$
                                   1738 ;	calc.c:96: case 'V':
      0033D3                       1739 00105$:
                                   1740 ;	calc.c:97: printstr("\r\n");
      0033D3 90 7E 04         [24] 1741 	mov	dptr,#___str_2
      0033D6 75 F0 80         [24] 1742 	mov	b,#0x80
      0033D9 12 5E 2E         [24] 1743 	lcall	_printstr
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
      003400 12 65 73         [24] 1768 	lcall	__gptrget
      003403 FA               [12] 1769 	mov	r2,a
      003404 A3               [24] 1770 	inc	dptr
      003405 12 65 73         [24] 1771 	lcall	__gptrget
      003408 FB               [12] 1772 	mov	r3,a
      003409 A3               [24] 1773 	inc	dptr
      00340A 12 65 73         [24] 1774 	lcall	__gptrget
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
      003436 90 7E 07         [24] 1797 	mov	dptr,#___str_3
      003439 75 F0 80         [24] 1798 	mov	b,#0x80
      00343C 12 5E 2E         [24] 1799 	lcall	_printstr
                                   1800 ;	calc.c:99: break;
      00343F 02 4F 17         [24] 1801 	ljmp	00249$
                                   1802 ;	calc.c:101: case 'p':
      003442                       1803 00109$:
                                   1804 ;	calc.c:102: printstr("\r\n");
      003442 90 7E 04         [24] 1805 	mov	dptr,#___str_2
      003445 75 F0 80         [24] 1806 	mov	b,#0x80
      003448 12 5E 2E         [24] 1807 	lcall	_printstr
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
      00346A 12 65 73         [24] 1829 	lcall	__gptrget
      00346D FA               [12] 1830 	mov	r2,a
      00346E A3               [24] 1831 	inc	dptr
      00346F 12 65 73         [24] 1832 	lcall	__gptrget
      003472 FB               [12] 1833 	mov	r3,a
      003473 A3               [24] 1834 	inc	dptr
      003474 12 65 73         [24] 1835 	lcall	__gptrget
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
      003495 90 7E 07         [24] 1852 	mov	dptr,#___str_3
      003498 75 F0 80         [24] 1853 	mov	b,#0x80
      00349B 12 5E 2E         [24] 1854 	lcall	_printstr
      00349E 02 4F 17         [24] 1855 	ljmp	00249$
      0034A1                       1856 00111$:
                                   1857 ;	calc.c:105: printstr("PSPTOP\t");
      0034A1 90 7E 33         [24] 1858 	mov	dptr,#___str_8
      0034A4 75 F0 80         [24] 1859 	mov	b,#0x80
      0034A7 12 5E 2E         [24] 1860 	lcall	_printstr
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
      0034D1 12 5F DE         [24] 1887 	lcall	_print32x
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
      0034E8 74 F4            [12] 1903 	mov	a,#___str_0
      0034EA C0 E0            [24] 1904 	push	acc
      0034EC 74 7D            [12] 1905 	mov	a,#(___str_0 >> 8)
      0034EE C0 E0            [24] 1906 	push	acc
      0034F0 74 80            [12] 1907 	mov	a,#0x80
      0034F2 C0 E0            [24] 1908 	push	acc
      0034F4 12 65 3A         [24] 1909 	lcall	_printf
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
      003511 74 FC            [12] 1928 	mov	a,#___str_1
      003513 C0 E0            [24] 1929 	push	acc
      003515 74 7D            [12] 1930 	mov	a,#(___str_1 >> 8)
      003517 C0 E0            [24] 1931 	push	acc
      003519 74 80            [12] 1932 	mov	a,#0x80
      00351B C0 E0            [24] 1933 	push	acc
      00351D 12 65 3A         [24] 1934 	lcall	_printf
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
      003535 12 5E 9D         [24] 1949 	lcall	_print32bin
                                   1950 ;	calc.c:107: printstr("\r\n");
      003538 90 7E 04         [24] 1951 	mov	dptr,#___str_2
      00353B 75 F0 80         [24] 1952 	mov	b,#0x80
      00353E 12 5E 2E         [24] 1953 	lcall	_printstr
                                   1954 ;	calc.c:109: break;
      003541 02 4F 17         [24] 1955 	ljmp	00249$
                                   1956 ;	calc.c:110: case 'P':
      003544                       1957 00113$:
                                   1958 ;	calc.c:111: printstr("\r\n");
      003544 90 7E 04         [24] 1959 	mov	dptr,#___str_2
      003547 75 F0 80         [24] 1960 	mov	b,#0x80
      00354A C0 04            [24] 1961 	push	ar4
      00354C C0 03            [24] 1962 	push	ar3
      00354E C0 02            [24] 1963 	push	ar2
      003550 12 5E 2E         [24] 1964 	lcall	_printstr
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
      0035A7 12 65 73         [24] 2023 	lcall	__gptrget
      0035AA FA               [12] 2024 	mov	r2,a
      0035AB A3               [24] 2025 	inc	dptr
      0035AC 12 65 73         [24] 2026 	lcall	__gptrget
      0035AF FB               [12] 2027 	mov	r3,a
      0035B0 A3               [24] 2028 	inc	dptr
      0035B1 12 65 73         [24] 2029 	lcall	__gptrget
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
      0035D2 90 7E 3B         [24] 2046 	mov	dptr,#___str_9
      0035D5 75 F0 80         [24] 2047 	mov	b,#0x80
      0035D8 12 5E 2E         [24] 2048 	lcall	_printstr
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
      0035F3 12 65 73         [24] 2065 	lcall	__gptrget
      0035F6 FA               [12] 2066 	mov	r2,a
      0035F7 A3               [24] 2067 	inc	dptr
      0035F8 12 65 73         [24] 2068 	lcall	__gptrget
      0035FB FB               [12] 2069 	mov	r3,a
      0035FC A3               [24] 2070 	inc	dptr
      0035FD 12 65 73         [24] 2071 	lcall	__gptrget
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
      00362A 12 65 73         [24] 2097 	lcall	__gptrget
      00362D FA               [12] 2098 	mov	r2,a
      00362E A3               [24] 2099 	inc	dptr
      00362F 12 65 73         [24] 2100 	lcall	__gptrget
      003632 FB               [12] 2101 	mov	r3,a
      003633 A3               [24] 2102 	inc	dptr
      003634 12 65 73         [24] 2103 	lcall	__gptrget
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
      00365B 90 7E 3B         [24] 2127 	mov	dptr,#___str_9
      00365E 75 F0 80         [24] 2128 	mov	b,#0x80
      003661 12 5E 2E         [24] 2129 	lcall	_printstr
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
      003673 12 65 73         [24] 2141 	lcall	__gptrget
      003676 FA               [12] 2142 	mov	r2,a
      003677 A3               [24] 2143 	inc	dptr
      003678 12 65 73         [24] 2144 	lcall	__gptrget
      00367B FB               [12] 2145 	mov	r3,a
      00367C A3               [24] 2146 	inc	dptr
      00367D 12 65 73         [24] 2147 	lcall	__gptrget
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
      0036B0 12 65 73         [24] 2179 	lcall	__gptrget
      0036B3 FA               [12] 2180 	mov	r2,a
      0036B4 A3               [24] 2181 	inc	dptr
      0036B5 12 65 73         [24] 2182 	lcall	__gptrget
      0036B8 FB               [12] 2183 	mov	r3,a
      0036B9 A3               [24] 2184 	inc	dptr
      0036BA 12 65 73         [24] 2185 	lcall	__gptrget
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
                                   2210 ;	calc.c:124: case 'm':
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
      003712 12 65 73         [24] 2244 	lcall	__gptrget
      003715 FA               [12] 2245 	mov	r2,a
      003716 A3               [24] 2246 	inc	dptr
      003717 12 65 73         [24] 2247 	lcall	__gptrget
      00371A FB               [12] 2248 	mov	r3,a
      00371B A3               [24] 2249 	inc	dptr
      00371C 12 65 73         [24] 2250 	lcall	__gptrget
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
      00373B 70 0C            [24] 2266 	jnz	00125$
      00373D 90 7E 3B         [24] 2267 	mov	dptr,#___str_9
      003740 75 F0 80         [24] 2268 	mov	b,#0x80
      003743 12 5E 2E         [24] 2269 	lcall	_printstr
      003746 02 4F 17         [24] 2270 	ljmp	00249$
      003749                       2271 00125$:
                                   2272 ;	calc.c:127: if (!stack_push(ctx->ss, d0)) {
      003749 E5 08            [12] 2273 	mov	a,_bp
      00374B 24 17            [12] 2274 	add	a,#0x17
      00374D F8               [12] 2275 	mov	r0,a
      00374E 74 14            [12] 2276 	mov	a,#0x14
      003750 26               [12] 2277 	add	a,@r0
      003751 FA               [12] 2278 	mov	r2,a
      003752 74 40            [12] 2279 	mov	a,#0x40
      003754 08               [12] 2280 	inc	r0
      003755 36               [12] 2281 	addc	a,@r0
      003756 FB               [12] 2282 	mov	r3,a
      003757 08               [12] 2283 	inc	r0
      003758 86 04            [24] 2284 	mov	ar4,@r0
      00375A 8A 82            [24] 2285 	mov	dpl,r2
      00375C 8B 83            [24] 2286 	mov	dph,r3
      00375E 8C F0            [24] 2287 	mov	b,r4
      003760 12 65 73         [24] 2288 	lcall	__gptrget
      003763 FA               [12] 2289 	mov	r2,a
      003764 A3               [24] 2290 	inc	dptr
      003765 12 65 73         [24] 2291 	lcall	__gptrget
      003768 FB               [12] 2292 	mov	r3,a
      003769 A3               [24] 2293 	inc	dptr
      00376A 12 65 73         [24] 2294 	lcall	__gptrget
      00376D FC               [12] 2295 	mov	r4,a
      00376E E5 08            [12] 2296 	mov	a,_bp
      003770 24 1A            [12] 2297 	add	a,#0x1a
      003772 F8               [12] 2298 	mov	r0,a
      003773 E6               [12] 2299 	mov	a,@r0
      003774 C0 E0            [24] 2300 	push	acc
      003776 08               [12] 2301 	inc	r0
      003777 E6               [12] 2302 	mov	a,@r0
      003778 C0 E0            [24] 2303 	push	acc
      00377A 08               [12] 2304 	inc	r0
      00377B E6               [12] 2305 	mov	a,@r0
      00377C C0 E0            [24] 2306 	push	acc
      00377E 08               [12] 2307 	inc	r0
      00377F E6               [12] 2308 	mov	a,@r0
      003780 C0 E0            [24] 2309 	push	acc
      003782 8A 82            [24] 2310 	mov	dpl,r2
      003784 8B 83            [24] 2311 	mov	dph,r3
      003786 8C F0            [24] 2312 	mov	b,r4
      003788 12 26 B5         [24] 2313 	lcall	_stack_push
      00378B AB 82            [24] 2314 	mov	r3,dpl
      00378D AC 83            [24] 2315 	mov	r4,dph
      00378F E5 81            [12] 2316 	mov	a,sp
      003791 24 FC            [12] 2317 	add	a,#0xfc
      003793 F5 81            [12] 2318 	mov	sp,a
      003795 EB               [12] 2319 	mov	a,r3
      003796 4C               [12] 2320 	orl	a,r4
      003797 60 03            [24] 2321 	jz	00558$
      003799 02 4F 17         [24] 2322 	ljmp	00249$
      00379C                       2323 00558$:
                                   2324 ;	calc.c:128: printstr("\r\nsecondary stack overflow\r\n");
      00379C 90 7E 4F         [24] 2325 	mov	dptr,#___str_10
      00379F 75 F0 80         [24] 2326 	mov	b,#0x80
      0037A2 12 5E 2E         [24] 2327 	lcall	_printstr
                                   2328 ;	calc.c:129: (void)stack_push(ctx->ps, d0);
      0037A5 E5 08            [12] 2329 	mov	a,_bp
      0037A7 24 05            [12] 2330 	add	a,#0x05
      0037A9 F8               [12] 2331 	mov	r0,a
      0037AA 86 82            [24] 2332 	mov	dpl,@r0
      0037AC 08               [12] 2333 	inc	r0
      0037AD 86 83            [24] 2334 	mov	dph,@r0
      0037AF 08               [12] 2335 	inc	r0
      0037B0 86 F0            [24] 2336 	mov	b,@r0
      0037B2 12 65 73         [24] 2337 	lcall	__gptrget
      0037B5 FA               [12] 2338 	mov	r2,a
      0037B6 A3               [24] 2339 	inc	dptr
      0037B7 12 65 73         [24] 2340 	lcall	__gptrget
      0037BA FB               [12] 2341 	mov	r3,a
      0037BB A3               [24] 2342 	inc	dptr
      0037BC 12 65 73         [24] 2343 	lcall	__gptrget
      0037BF FC               [12] 2344 	mov	r4,a
      0037C0 E5 08            [12] 2345 	mov	a,_bp
      0037C2 24 1A            [12] 2346 	add	a,#0x1a
      0037C4 F8               [12] 2347 	mov	r0,a
      0037C5 E6               [12] 2348 	mov	a,@r0
      0037C6 C0 E0            [24] 2349 	push	acc
      0037C8 08               [12] 2350 	inc	r0
      0037C9 E6               [12] 2351 	mov	a,@r0
      0037CA C0 E0            [24] 2352 	push	acc
      0037CC 08               [12] 2353 	inc	r0
      0037CD E6               [12] 2354 	mov	a,@r0
      0037CE C0 E0            [24] 2355 	push	acc
      0037D0 08               [12] 2356 	inc	r0
      0037D1 E6               [12] 2357 	mov	a,@r0
      0037D2 C0 E0            [24] 2358 	push	acc
      0037D4 8A 82            [24] 2359 	mov	dpl,r2
      0037D6 8B 83            [24] 2360 	mov	dph,r3
      0037D8 8C F0            [24] 2361 	mov	b,r4
      0037DA 12 26 B5         [24] 2362 	lcall	_stack_push
      0037DD E5 81            [12] 2363 	mov	a,sp
      0037DF 24 FC            [12] 2364 	add	a,#0xfc
      0037E1 F5 81            [12] 2365 	mov	sp,a
                                   2366 ;	calc.c:132: break;
      0037E3 02 4F 17         [24] 2367 	ljmp	00249$
                                   2368 ;	calc.c:133: case 'M':
      0037E6                       2369 00127$:
                                   2370 ;	calc.c:134: if (!stack_pop(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      0037E6 E5 08            [12] 2371 	mov	a,_bp
      0037E8 24 1A            [12] 2372 	add	a,#0x1a
      0037EA FF               [12] 2373 	mov	r7,a
      0037EB 7E 00            [12] 2374 	mov	r6,#0x00
      0037ED 7D 40            [12] 2375 	mov	r5,#0x40
      0037EF E5 08            [12] 2376 	mov	a,_bp
      0037F1 24 17            [12] 2377 	add	a,#0x17
      0037F3 F8               [12] 2378 	mov	r0,a
      0037F4 E5 08            [12] 2379 	mov	a,_bp
      0037F6 24 05            [12] 2380 	add	a,#0x05
      0037F8 F9               [12] 2381 	mov	r1,a
      0037F9 74 14            [12] 2382 	mov	a,#0x14
      0037FB 26               [12] 2383 	add	a,@r0
      0037FC F7               [12] 2384 	mov	@r1,a
      0037FD 74 40            [12] 2385 	mov	a,#0x40
      0037FF 08               [12] 2386 	inc	r0
      003800 36               [12] 2387 	addc	a,@r0
      003801 09               [12] 2388 	inc	r1
      003802 F7               [12] 2389 	mov	@r1,a
      003803 08               [12] 2390 	inc	r0
      003804 09               [12] 2391 	inc	r1
      003805 E6               [12] 2392 	mov	a,@r0
      003806 F7               [12] 2393 	mov	@r1,a
      003807 E5 08            [12] 2394 	mov	a,_bp
      003809 24 05            [12] 2395 	add	a,#0x05
      00380B F8               [12] 2396 	mov	r0,a
      00380C 86 82            [24] 2397 	mov	dpl,@r0
      00380E 08               [12] 2398 	inc	r0
      00380F 86 83            [24] 2399 	mov	dph,@r0
      003811 08               [12] 2400 	inc	r0
      003812 86 F0            [24] 2401 	mov	b,@r0
      003814 12 65 73         [24] 2402 	lcall	__gptrget
      003817 FA               [12] 2403 	mov	r2,a
      003818 A3               [24] 2404 	inc	dptr
      003819 12 65 73         [24] 2405 	lcall	__gptrget
      00381C FB               [12] 2406 	mov	r3,a
      00381D A3               [24] 2407 	inc	dptr
      00381E 12 65 73         [24] 2408 	lcall	__gptrget
      003821 FC               [12] 2409 	mov	r4,a
      003822 C0 07            [24] 2410 	push	ar7
      003824 C0 06            [24] 2411 	push	ar6
      003826 C0 05            [24] 2412 	push	ar5
      003828 8A 82            [24] 2413 	mov	dpl,r2
      00382A 8B 83            [24] 2414 	mov	dph,r3
      00382C 8C F0            [24] 2415 	mov	b,r4
      00382E 12 27 83         [24] 2416 	lcall	_stack_pop
      003831 AB 82            [24] 2417 	mov	r3,dpl
      003833 AC 83            [24] 2418 	mov	r4,dph
      003835 15 81            [12] 2419 	dec	sp
      003837 15 81            [12] 2420 	dec	sp
      003839 15 81            [12] 2421 	dec	sp
      00383B EB               [12] 2422 	mov	a,r3
      00383C 4C               [12] 2423 	orl	a,r4
      00383D 70 0C            [24] 2424 	jnz	00131$
      00383F 90 7E 6C         [24] 2425 	mov	dptr,#___str_11
      003842 75 F0 80         [24] 2426 	mov	b,#0x80
      003845 12 5E 2E         [24] 2427 	lcall	_printstr
      003848 02 4F 17         [24] 2428 	ljmp	00249$
      00384B                       2429 00131$:
                                   2430 ;	calc.c:136: if (!stack_push(ctx->ps, d0)) {
      00384B E5 08            [12] 2431 	mov	a,_bp
      00384D 24 17            [12] 2432 	add	a,#0x17
      00384F F8               [12] 2433 	mov	r0,a
      003850 74 11            [12] 2434 	mov	a,#0x11
      003852 26               [12] 2435 	add	a,@r0
      003853 FA               [12] 2436 	mov	r2,a
      003854 74 40            [12] 2437 	mov	a,#0x40
      003856 08               [12] 2438 	inc	r0
      003857 36               [12] 2439 	addc	a,@r0
      003858 FB               [12] 2440 	mov	r3,a
      003859 08               [12] 2441 	inc	r0
      00385A 86 04            [24] 2442 	mov	ar4,@r0
      00385C 8A 82            [24] 2443 	mov	dpl,r2
      00385E 8B 83            [24] 2444 	mov	dph,r3
      003860 8C F0            [24] 2445 	mov	b,r4
      003862 12 65 73         [24] 2446 	lcall	__gptrget
      003865 FA               [12] 2447 	mov	r2,a
      003866 A3               [24] 2448 	inc	dptr
      003867 12 65 73         [24] 2449 	lcall	__gptrget
      00386A FB               [12] 2450 	mov	r3,a
      00386B A3               [24] 2451 	inc	dptr
      00386C 12 65 73         [24] 2452 	lcall	__gptrget
      00386F FC               [12] 2453 	mov	r4,a
      003870 E5 08            [12] 2454 	mov	a,_bp
      003872 24 1A            [12] 2455 	add	a,#0x1a
      003874 F8               [12] 2456 	mov	r0,a
      003875 E6               [12] 2457 	mov	a,@r0
      003876 C0 E0            [24] 2458 	push	acc
      003878 08               [12] 2459 	inc	r0
      003879 E6               [12] 2460 	mov	a,@r0
      00387A C0 E0            [24] 2461 	push	acc
      00387C 08               [12] 2462 	inc	r0
      00387D E6               [12] 2463 	mov	a,@r0
      00387E C0 E0            [24] 2464 	push	acc
      003880 08               [12] 2465 	inc	r0
      003881 E6               [12] 2466 	mov	a,@r0
      003882 C0 E0            [24] 2467 	push	acc
      003884 8A 82            [24] 2468 	mov	dpl,r2
      003886 8B 83            [24] 2469 	mov	dph,r3
      003888 8C F0            [24] 2470 	mov	b,r4
      00388A 12 26 B5         [24] 2471 	lcall	_stack_push
      00388D AB 82            [24] 2472 	mov	r3,dpl
      00388F AC 83            [24] 2473 	mov	r4,dph
      003891 E5 81            [12] 2474 	mov	a,sp
      003893 24 FC            [12] 2475 	add	a,#0xfc
      003895 F5 81            [12] 2476 	mov	sp,a
      003897 EB               [12] 2477 	mov	a,r3
      003898 4C               [12] 2478 	orl	a,r4
      003899 60 03            [24] 2479 	jz	00560$
      00389B 02 4F 17         [24] 2480 	ljmp	00249$
      00389E                       2481 00560$:
                                   2482 ;	calc.c:137: printstr("\r\nstack overflow\r\n");
      00389E 90 7E 8A         [24] 2483 	mov	dptr,#___str_12
      0038A1 75 F0 80         [24] 2484 	mov	b,#0x80
      0038A4 12 5E 2E         [24] 2485 	lcall	_printstr
                                   2486 ;	calc.c:138: (void)stack_push(ctx->ss, d0);
      0038A7 E5 08            [12] 2487 	mov	a,_bp
      0038A9 24 05            [12] 2488 	add	a,#0x05
      0038AB F8               [12] 2489 	mov	r0,a
      0038AC 86 82            [24] 2490 	mov	dpl,@r0
      0038AE 08               [12] 2491 	inc	r0
      0038AF 86 83            [24] 2492 	mov	dph,@r0
      0038B1 08               [12] 2493 	inc	r0
      0038B2 86 F0            [24] 2494 	mov	b,@r0
      0038B4 12 65 73         [24] 2495 	lcall	__gptrget
      0038B7 FA               [12] 2496 	mov	r2,a
      0038B8 A3               [24] 2497 	inc	dptr
      0038B9 12 65 73         [24] 2498 	lcall	__gptrget
      0038BC FB               [12] 2499 	mov	r3,a
      0038BD A3               [24] 2500 	inc	dptr
      0038BE 12 65 73         [24] 2501 	lcall	__gptrget
      0038C1 FC               [12] 2502 	mov	r4,a
      0038C2 E5 08            [12] 2503 	mov	a,_bp
      0038C4 24 1A            [12] 2504 	add	a,#0x1a
      0038C6 F8               [12] 2505 	mov	r0,a
      0038C7 E6               [12] 2506 	mov	a,@r0
      0038C8 C0 E0            [24] 2507 	push	acc
      0038CA 08               [12] 2508 	inc	r0
      0038CB E6               [12] 2509 	mov	a,@r0
      0038CC C0 E0            [24] 2510 	push	acc
      0038CE 08               [12] 2511 	inc	r0
      0038CF E6               [12] 2512 	mov	a,@r0
      0038D0 C0 E0            [24] 2513 	push	acc
      0038D2 08               [12] 2514 	inc	r0
      0038D3 E6               [12] 2515 	mov	a,@r0
      0038D4 C0 E0            [24] 2516 	push	acc
      0038D6 8A 82            [24] 2517 	mov	dpl,r2
      0038D8 8B 83            [24] 2518 	mov	dph,r3
      0038DA 8C F0            [24] 2519 	mov	b,r4
      0038DC 12 26 B5         [24] 2520 	lcall	_stack_push
      0038DF E5 81            [12] 2521 	mov	a,sp
      0038E1 24 FC            [12] 2522 	add	a,#0xfc
      0038E3 F5 81            [12] 2523 	mov	sp,a
                                   2524 ;	calc.c:141: break;
      0038E5 02 4F 17         [24] 2525 	ljmp	00249$
                                   2526 ;	calc.c:142: case 'u':
      0038E8                       2527 00133$:
                                   2528 ;	calc.c:143: if (!stack_peek(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      0038E8 E5 08            [12] 2529 	mov	a,_bp
      0038EA 24 1A            [12] 2530 	add	a,#0x1a
      0038EC FF               [12] 2531 	mov	r7,a
      0038ED 7E 00            [12] 2532 	mov	r6,#0x00
      0038EF 7D 40            [12] 2533 	mov	r5,#0x40
      0038F1 E5 08            [12] 2534 	mov	a,_bp
      0038F3 24 17            [12] 2535 	add	a,#0x17
      0038F5 F8               [12] 2536 	mov	r0,a
      0038F6 74 11            [12] 2537 	mov	a,#0x11
      0038F8 26               [12] 2538 	add	a,@r0
      0038F9 FA               [12] 2539 	mov	r2,a
      0038FA ED               [12] 2540 	mov	a,r5
      0038FB 08               [12] 2541 	inc	r0
      0038FC 36               [12] 2542 	addc	a,@r0
      0038FD FB               [12] 2543 	mov	r3,a
      0038FE 08               [12] 2544 	inc	r0
      0038FF 86 04            [24] 2545 	mov	ar4,@r0
      003901 8A 82            [24] 2546 	mov	dpl,r2
      003903 8B 83            [24] 2547 	mov	dph,r3
      003905 8C F0            [24] 2548 	mov	b,r4
      003907 12 65 73         [24] 2549 	lcall	__gptrget
      00390A FA               [12] 2550 	mov	r2,a
      00390B A3               [24] 2551 	inc	dptr
      00390C 12 65 73         [24] 2552 	lcall	__gptrget
      00390F FB               [12] 2553 	mov	r3,a
      003910 A3               [24] 2554 	inc	dptr
      003911 12 65 73         [24] 2555 	lcall	__gptrget
      003914 FC               [12] 2556 	mov	r4,a
      003915 C0 07            [24] 2557 	push	ar7
      003917 C0 06            [24] 2558 	push	ar6
      003919 C0 05            [24] 2559 	push	ar5
      00391B 8A 82            [24] 2560 	mov	dpl,r2
      00391D 8B 83            [24] 2561 	mov	dph,r3
      00391F 8C F0            [24] 2562 	mov	b,r4
      003921 12 28 5E         [24] 2563 	lcall	_stack_peek
      003924 AB 82            [24] 2564 	mov	r3,dpl
      003926 AC 83            [24] 2565 	mov	r4,dph
      003928 15 81            [12] 2566 	dec	sp
      00392A 15 81            [12] 2567 	dec	sp
      00392C 15 81            [12] 2568 	dec	sp
      00392E EB               [12] 2569 	mov	a,r3
      00392F 4C               [12] 2570 	orl	a,r4
      003930 70 0C            [24] 2571 	jnz	00137$
      003932 90 7E 3B         [24] 2572 	mov	dptr,#___str_9
      003935 75 F0 80         [24] 2573 	mov	b,#0x80
      003938 12 5E 2E         [24] 2574 	lcall	_printstr
      00393B 02 4F 17         [24] 2575 	ljmp	00249$
      00393E                       2576 00137$:
                                   2577 ;	calc.c:144: else if (!stack_push(ctx->ss, d0)) printstr("\r\nsecondary stack overflow\r\n");
      00393E E5 08            [12] 2578 	mov	a,_bp
      003940 24 17            [12] 2579 	add	a,#0x17
      003942 F8               [12] 2580 	mov	r0,a
      003943 74 14            [12] 2581 	mov	a,#0x14
      003945 26               [12] 2582 	add	a,@r0
      003946 FA               [12] 2583 	mov	r2,a
      003947 74 40            [12] 2584 	mov	a,#0x40
      003949 08               [12] 2585 	inc	r0
      00394A 36               [12] 2586 	addc	a,@r0
      00394B FB               [12] 2587 	mov	r3,a
      00394C 08               [12] 2588 	inc	r0
      00394D 86 04            [24] 2589 	mov	ar4,@r0
      00394F 8A 82            [24] 2590 	mov	dpl,r2
      003951 8B 83            [24] 2591 	mov	dph,r3
      003953 8C F0            [24] 2592 	mov	b,r4
      003955 12 65 73         [24] 2593 	lcall	__gptrget
      003958 FA               [12] 2594 	mov	r2,a
      003959 A3               [24] 2595 	inc	dptr
      00395A 12 65 73         [24] 2596 	lcall	__gptrget
      00395D FB               [12] 2597 	mov	r3,a
      00395E A3               [24] 2598 	inc	dptr
      00395F 12 65 73         [24] 2599 	lcall	__gptrget
      003962 FC               [12] 2600 	mov	r4,a
      003963 E5 08            [12] 2601 	mov	a,_bp
      003965 24 1A            [12] 2602 	add	a,#0x1a
      003967 F8               [12] 2603 	mov	r0,a
      003968 E6               [12] 2604 	mov	a,@r0
      003969 C0 E0            [24] 2605 	push	acc
      00396B 08               [12] 2606 	inc	r0
      00396C E6               [12] 2607 	mov	a,@r0
      00396D C0 E0            [24] 2608 	push	acc
      00396F 08               [12] 2609 	inc	r0
      003970 E6               [12] 2610 	mov	a,@r0
      003971 C0 E0            [24] 2611 	push	acc
      003973 08               [12] 2612 	inc	r0
      003974 E6               [12] 2613 	mov	a,@r0
      003975 C0 E0            [24] 2614 	push	acc
      003977 8A 82            [24] 2615 	mov	dpl,r2
      003979 8B 83            [24] 2616 	mov	dph,r3
      00397B 8C F0            [24] 2617 	mov	b,r4
      00397D 12 26 B5         [24] 2618 	lcall	_stack_push
      003980 AB 82            [24] 2619 	mov	r3,dpl
      003982 AC 83            [24] 2620 	mov	r4,dph
      003984 E5 81            [12] 2621 	mov	a,sp
      003986 24 FC            [12] 2622 	add	a,#0xfc
      003988 F5 81            [12] 2623 	mov	sp,a
      00398A EB               [12] 2624 	mov	a,r3
      00398B 4C               [12] 2625 	orl	a,r4
      00398C 60 03            [24] 2626 	jz	00562$
      00398E 02 4F 17         [24] 2627 	ljmp	00249$
      003991                       2628 00562$:
      003991 90 7E 4F         [24] 2629 	mov	dptr,#___str_10
      003994 75 F0 80         [24] 2630 	mov	b,#0x80
      003997 12 5E 2E         [24] 2631 	lcall	_printstr
                                   2632 ;	calc.c:145: break;
      00399A 02 4F 17         [24] 2633 	ljmp	00249$
                                   2634 ;	calc.c:146: case 'U':
      00399D                       2635 00139$:
                                   2636 ;	calc.c:147: if (!stack_peek(ctx->ss, &d0)) printstr("\r\nsecondary stack underflow\r\n");
      00399D E5 08            [12] 2637 	mov	a,_bp
      00399F 24 1A            [12] 2638 	add	a,#0x1a
      0039A1 FF               [12] 2639 	mov	r7,a
      0039A2 7E 00            [12] 2640 	mov	r6,#0x00
      0039A4 7D 40            [12] 2641 	mov	r5,#0x40
      0039A6 E5 08            [12] 2642 	mov	a,_bp
      0039A8 24 17            [12] 2643 	add	a,#0x17
      0039AA F8               [12] 2644 	mov	r0,a
      0039AB 74 14            [12] 2645 	mov	a,#0x14
      0039AD 26               [12] 2646 	add	a,@r0
      0039AE FA               [12] 2647 	mov	r2,a
      0039AF ED               [12] 2648 	mov	a,r5
      0039B0 08               [12] 2649 	inc	r0
      0039B1 36               [12] 2650 	addc	a,@r0
      0039B2 FB               [12] 2651 	mov	r3,a
      0039B3 08               [12] 2652 	inc	r0
      0039B4 86 04            [24] 2653 	mov	ar4,@r0
      0039B6 8A 82            [24] 2654 	mov	dpl,r2
      0039B8 8B 83            [24] 2655 	mov	dph,r3
      0039BA 8C F0            [24] 2656 	mov	b,r4
      0039BC 12 65 73         [24] 2657 	lcall	__gptrget
      0039BF FA               [12] 2658 	mov	r2,a
      0039C0 A3               [24] 2659 	inc	dptr
      0039C1 12 65 73         [24] 2660 	lcall	__gptrget
      0039C4 FB               [12] 2661 	mov	r3,a
      0039C5 A3               [24] 2662 	inc	dptr
      0039C6 12 65 73         [24] 2663 	lcall	__gptrget
      0039C9 FC               [12] 2664 	mov	r4,a
      0039CA C0 07            [24] 2665 	push	ar7
      0039CC C0 06            [24] 2666 	push	ar6
      0039CE C0 05            [24] 2667 	push	ar5
      0039D0 8A 82            [24] 2668 	mov	dpl,r2
      0039D2 8B 83            [24] 2669 	mov	dph,r3
      0039D4 8C F0            [24] 2670 	mov	b,r4
      0039D6 12 28 5E         [24] 2671 	lcall	_stack_peek
      0039D9 AB 82            [24] 2672 	mov	r3,dpl
      0039DB AC 83            [24] 2673 	mov	r4,dph
      0039DD 15 81            [12] 2674 	dec	sp
      0039DF 15 81            [12] 2675 	dec	sp
      0039E1 15 81            [12] 2676 	dec	sp
      0039E3 EB               [12] 2677 	mov	a,r3
      0039E4 4C               [12] 2678 	orl	a,r4
      0039E5 70 0C            [24] 2679 	jnz	00143$
      0039E7 90 7E 6C         [24] 2680 	mov	dptr,#___str_11
      0039EA 75 F0 80         [24] 2681 	mov	b,#0x80
      0039ED 12 5E 2E         [24] 2682 	lcall	_printstr
      0039F0 02 4F 17         [24] 2683 	ljmp	00249$
      0039F3                       2684 00143$:
                                   2685 ;	calc.c:148: else if (!stack_push(ctx->ps, d0)) printstr("\r\nstack overflow\r\n");
      0039F3 E5 08            [12] 2686 	mov	a,_bp
      0039F5 24 17            [12] 2687 	add	a,#0x17
      0039F7 F8               [12] 2688 	mov	r0,a
      0039F8 74 11            [12] 2689 	mov	a,#0x11
      0039FA 26               [12] 2690 	add	a,@r0
      0039FB FA               [12] 2691 	mov	r2,a
      0039FC 74 40            [12] 2692 	mov	a,#0x40
      0039FE 08               [12] 2693 	inc	r0
      0039FF 36               [12] 2694 	addc	a,@r0
      003A00 FB               [12] 2695 	mov	r3,a
      003A01 08               [12] 2696 	inc	r0
      003A02 86 04            [24] 2697 	mov	ar4,@r0
      003A04 8A 82            [24] 2698 	mov	dpl,r2
      003A06 8B 83            [24] 2699 	mov	dph,r3
      003A08 8C F0            [24] 2700 	mov	b,r4
      003A0A 12 65 73         [24] 2701 	lcall	__gptrget
      003A0D FA               [12] 2702 	mov	r2,a
      003A0E A3               [24] 2703 	inc	dptr
      003A0F 12 65 73         [24] 2704 	lcall	__gptrget
      003A12 FB               [12] 2705 	mov	r3,a
      003A13 A3               [24] 2706 	inc	dptr
      003A14 12 65 73         [24] 2707 	lcall	__gptrget
      003A17 FC               [12] 2708 	mov	r4,a
      003A18 E5 08            [12] 2709 	mov	a,_bp
      003A1A 24 1A            [12] 2710 	add	a,#0x1a
      003A1C F8               [12] 2711 	mov	r0,a
      003A1D E6               [12] 2712 	mov	a,@r0
      003A1E C0 E0            [24] 2713 	push	acc
      003A20 08               [12] 2714 	inc	r0
      003A21 E6               [12] 2715 	mov	a,@r0
      003A22 C0 E0            [24] 2716 	push	acc
      003A24 08               [12] 2717 	inc	r0
      003A25 E6               [12] 2718 	mov	a,@r0
      003A26 C0 E0            [24] 2719 	push	acc
      003A28 08               [12] 2720 	inc	r0
      003A29 E6               [12] 2721 	mov	a,@r0
      003A2A C0 E0            [24] 2722 	push	acc
      003A2C 8A 82            [24] 2723 	mov	dpl,r2
      003A2E 8B 83            [24] 2724 	mov	dph,r3
      003A30 8C F0            [24] 2725 	mov	b,r4
      003A32 12 26 B5         [24] 2726 	lcall	_stack_push
      003A35 AB 82            [24] 2727 	mov	r3,dpl
      003A37 AC 83            [24] 2728 	mov	r4,dph
      003A39 E5 81            [12] 2729 	mov	a,sp
      003A3B 24 FC            [12] 2730 	add	a,#0xfc
      003A3D F5 81            [12] 2731 	mov	sp,a
      003A3F EB               [12] 2732 	mov	a,r3
      003A40 4C               [12] 2733 	orl	a,r4
      003A41 60 03            [24] 2734 	jz	00564$
      003A43 02 4F 17         [24] 2735 	ljmp	00249$
      003A46                       2736 00564$:
      003A46 90 7E 8A         [24] 2737 	mov	dptr,#___str_12
      003A49 75 F0 80         [24] 2738 	mov	b,#0x80
      003A4C 12 5E 2E         [24] 2739 	lcall	_printstr
                                   2740 ;	calc.c:149: break;
      003A4F 02 4F 17         [24] 2741 	ljmp	00249$
                                   2742 ;	calc.c:150: case 'T':
      003A52                       2743 00145$:
                                   2744 ;	calc.c:151: if (!stack_pop(ctx->ps, &d0)) printstr("\r\nstack underflow\r\n");
      003A52 E5 08            [12] 2745 	mov	a,_bp
      003A54 24 1A            [12] 2746 	add	a,#0x1a
      003A56 FF               [12] 2747 	mov	r7,a
      003A57 7E 00            [12] 2748 	mov	r6,#0x00
      003A59 7D 40            [12] 2749 	mov	r5,#0x40
      003A5B E5 08            [12] 2750 	mov	a,_bp
      003A5D 24 17            [12] 2751 	add	a,#0x17
      003A5F F8               [12] 2752 	mov	r0,a
      003A60 E5 08            [12] 2753 	mov	a,_bp
      003A62 24 05            [12] 2754 	add	a,#0x05
      003A64 F9               [12] 2755 	mov	r1,a
      003A65 74 11            [12] 2756 	mov	a,#0x11
      003A67 26               [12] 2757 	add	a,@r0
      003A68 F7               [12] 2758 	mov	@r1,a
      003A69 74 40            [12] 2759 	mov	a,#0x40
      003A6B 08               [12] 2760 	inc	r0
      003A6C 36               [12] 2761 	addc	a,@r0
      003A6D 09               [12] 2762 	inc	r1
      003A6E F7               [12] 2763 	mov	@r1,a
      003A6F 08               [12] 2764 	inc	r0
      003A70 09               [12] 2765 	inc	r1
      003A71 E6               [12] 2766 	mov	a,@r0
      003A72 F7               [12] 2767 	mov	@r1,a
      003A73 E5 08            [12] 2768 	mov	a,_bp
      003A75 24 05            [12] 2769 	add	a,#0x05
      003A77 F8               [12] 2770 	mov	r0,a
      003A78 86 82            [24] 2771 	mov	dpl,@r0
      003A7A 08               [12] 2772 	inc	r0
      003A7B 86 83            [24] 2773 	mov	dph,@r0
      003A7D 08               [12] 2774 	inc	r0
      003A7E 86 F0            [24] 2775 	mov	b,@r0
      003A80 12 65 73         [24] 2776 	lcall	__gptrget
      003A83 FA               [12] 2777 	mov	r2,a
      003A84 A3               [24] 2778 	inc	dptr
      003A85 12 65 73         [24] 2779 	lcall	__gptrget
      003A88 FB               [12] 2780 	mov	r3,a
      003A89 A3               [24] 2781 	inc	dptr
      003A8A 12 65 73         [24] 2782 	lcall	__gptrget
      003A8D FC               [12] 2783 	mov	r4,a
      003A8E C0 07            [24] 2784 	push	ar7
      003A90 C0 06            [24] 2785 	push	ar6
      003A92 C0 05            [24] 2786 	push	ar5
      003A94 8A 82            [24] 2787 	mov	dpl,r2
      003A96 8B 83            [24] 2788 	mov	dph,r3
      003A98 8C F0            [24] 2789 	mov	b,r4
      003A9A 12 27 83         [24] 2790 	lcall	_stack_pop
      003A9D AB 82            [24] 2791 	mov	r3,dpl
      003A9F AC 83            [24] 2792 	mov	r4,dph
      003AA1 15 81            [12] 2793 	dec	sp
      003AA3 15 81            [12] 2794 	dec	sp
      003AA5 15 81            [12] 2795 	dec	sp
      003AA7 EB               [12] 2796 	mov	a,r3
      003AA8 4C               [12] 2797 	orl	a,r4
      003AA9 70 0C            [24] 2798 	jnz	00150$
      003AAB 90 7E 3B         [24] 2799 	mov	dptr,#___str_9
      003AAE 75 F0 80         [24] 2800 	mov	b,#0x80
      003AB1 12 5E 2E         [24] 2801 	lcall	_printstr
      003AB4 02 4F 17         [24] 2802 	ljmp	00249$
      003AB7                       2803 00150$:
                                   2804 ;	calc.c:153: if (!stack_pop(ctx->ss, &d1)) {
      003AB7 E5 08            [12] 2805 	mov	a,_bp
      003AB9 24 1E            [12] 2806 	add	a,#0x1e
      003ABB FF               [12] 2807 	mov	r7,a
      003ABC 7E 00            [12] 2808 	mov	r6,#0x00
      003ABE 7D 40            [12] 2809 	mov	r5,#0x40
      003AC0 E5 08            [12] 2810 	mov	a,_bp
      003AC2 24 17            [12] 2811 	add	a,#0x17
      003AC4 F8               [12] 2812 	mov	r0,a
      003AC5 A9 08            [24] 2813 	mov	r1,_bp
      003AC7 09               [12] 2814 	inc	r1
      003AC8 09               [12] 2815 	inc	r1
      003AC9 74 14            [12] 2816 	mov	a,#0x14
      003ACB 26               [12] 2817 	add	a,@r0
      003ACC F7               [12] 2818 	mov	@r1,a
      003ACD 74 40            [12] 2819 	mov	a,#0x40
      003ACF 08               [12] 2820 	inc	r0
      003AD0 36               [12] 2821 	addc	a,@r0
      003AD1 09               [12] 2822 	inc	r1
      003AD2 F7               [12] 2823 	mov	@r1,a
      003AD3 08               [12] 2824 	inc	r0
      003AD4 09               [12] 2825 	inc	r1
      003AD5 E6               [12] 2826 	mov	a,@r0
      003AD6 F7               [12] 2827 	mov	@r1,a
      003AD7 A8 08            [24] 2828 	mov	r0,_bp
      003AD9 08               [12] 2829 	inc	r0
      003ADA 08               [12] 2830 	inc	r0
      003ADB 86 82            [24] 2831 	mov	dpl,@r0
      003ADD 08               [12] 2832 	inc	r0
      003ADE 86 83            [24] 2833 	mov	dph,@r0
      003AE0 08               [12] 2834 	inc	r0
      003AE1 86 F0            [24] 2835 	mov	b,@r0
      003AE3 12 65 73         [24] 2836 	lcall	__gptrget
      003AE6 FA               [12] 2837 	mov	r2,a
      003AE7 A3               [24] 2838 	inc	dptr
      003AE8 12 65 73         [24] 2839 	lcall	__gptrget
      003AEB FB               [12] 2840 	mov	r3,a
      003AEC A3               [24] 2841 	inc	dptr
      003AED 12 65 73         [24] 2842 	lcall	__gptrget
      003AF0 FC               [12] 2843 	mov	r4,a
      003AF1 C0 07            [24] 2844 	push	ar7
      003AF3 C0 06            [24] 2845 	push	ar6
      003AF5 C0 05            [24] 2846 	push	ar5
      003AF7 8A 82            [24] 2847 	mov	dpl,r2
      003AF9 8B 83            [24] 2848 	mov	dph,r3
      003AFB 8C F0            [24] 2849 	mov	b,r4
      003AFD 12 27 83         [24] 2850 	lcall	_stack_pop
      003B00 AB 82            [24] 2851 	mov	r3,dpl
      003B02 AC 83            [24] 2852 	mov	r4,dph
      003B04 15 81            [12] 2853 	dec	sp
      003B06 15 81            [12] 2854 	dec	sp
      003B08 15 81            [12] 2855 	dec	sp
      003B0A EB               [12] 2856 	mov	a,r3
      003B0B 4C               [12] 2857 	orl	a,r4
      003B0C 70 4A            [24] 2858 	jnz	00147$
                                   2859 ;	calc.c:154: printstr("\r\nsecondary stack underflow\r\n");
      003B0E 90 7E 6C         [24] 2860 	mov	dptr,#___str_11
      003B11 75 F0 80         [24] 2861 	mov	b,#0x80
      003B14 12 5E 2E         [24] 2862 	lcall	_printstr
                                   2863 ;	calc.c:155: (void)stack_push(ctx->ps, d0);
      003B17 E5 08            [12] 2864 	mov	a,_bp
      003B19 24 05            [12] 2865 	add	a,#0x05
      003B1B F8               [12] 2866 	mov	r0,a
      003B1C 86 82            [24] 2867 	mov	dpl,@r0
      003B1E 08               [12] 2868 	inc	r0
      003B1F 86 83            [24] 2869 	mov	dph,@r0
      003B21 08               [12] 2870 	inc	r0
      003B22 86 F0            [24] 2871 	mov	b,@r0
      003B24 12 65 73         [24] 2872 	lcall	__gptrget
      003B27 FA               [12] 2873 	mov	r2,a
      003B28 A3               [24] 2874 	inc	dptr
      003B29 12 65 73         [24] 2875 	lcall	__gptrget
      003B2C FB               [12] 2876 	mov	r3,a
      003B2D A3               [24] 2877 	inc	dptr
      003B2E 12 65 73         [24] 2878 	lcall	__gptrget
      003B31 FC               [12] 2879 	mov	r4,a
      003B32 E5 08            [12] 2880 	mov	a,_bp
      003B34 24 1A            [12] 2881 	add	a,#0x1a
      003B36 F8               [12] 2882 	mov	r0,a
      003B37 E6               [12] 2883 	mov	a,@r0
      003B38 C0 E0            [24] 2884 	push	acc
      003B3A 08               [12] 2885 	inc	r0
      003B3B E6               [12] 2886 	mov	a,@r0
      003B3C C0 E0            [24] 2887 	push	acc
      003B3E 08               [12] 2888 	inc	r0
      003B3F E6               [12] 2889 	mov	a,@r0
      003B40 C0 E0            [24] 2890 	push	acc
      003B42 08               [12] 2891 	inc	r0
      003B43 E6               [12] 2892 	mov	a,@r0
      003B44 C0 E0            [24] 2893 	push	acc
      003B46 8A 82            [24] 2894 	mov	dpl,r2
      003B48 8B 83            [24] 2895 	mov	dph,r3
      003B4A 8C F0            [24] 2896 	mov	b,r4
      003B4C 12 26 B5         [24] 2897 	lcall	_stack_push
      003B4F E5 81            [12] 2898 	mov	a,sp
      003B51 24 FC            [12] 2899 	add	a,#0xfc
      003B53 F5 81            [12] 2900 	mov	sp,a
      003B55 02 4F 17         [24] 2901 	ljmp	00249$
      003B58                       2902 00147$:
                                   2903 ;	calc.c:157: (void)stack_push(ctx->ps, d1);
      003B58 E5 08            [12] 2904 	mov	a,_bp
      003B5A 24 05            [12] 2905 	add	a,#0x05
      003B5C F8               [12] 2906 	mov	r0,a
      003B5D 86 82            [24] 2907 	mov	dpl,@r0
      003B5F 08               [12] 2908 	inc	r0
      003B60 86 83            [24] 2909 	mov	dph,@r0
      003B62 08               [12] 2910 	inc	r0
      003B63 86 F0            [24] 2911 	mov	b,@r0
      003B65 12 65 73         [24] 2912 	lcall	__gptrget
      003B68 FA               [12] 2913 	mov	r2,a
      003B69 A3               [24] 2914 	inc	dptr
      003B6A 12 65 73         [24] 2915 	lcall	__gptrget
      003B6D FB               [12] 2916 	mov	r3,a
      003B6E A3               [24] 2917 	inc	dptr
      003B6F 12 65 73         [24] 2918 	lcall	__gptrget
      003B72 FC               [12] 2919 	mov	r4,a
      003B73 E5 08            [12] 2920 	mov	a,_bp
      003B75 24 1E            [12] 2921 	add	a,#0x1e
      003B77 F8               [12] 2922 	mov	r0,a
      003B78 E6               [12] 2923 	mov	a,@r0
      003B79 C0 E0            [24] 2924 	push	acc
      003B7B 08               [12] 2925 	inc	r0
      003B7C E6               [12] 2926 	mov	a,@r0
      003B7D C0 E0            [24] 2927 	push	acc
      003B7F 08               [12] 2928 	inc	r0
      003B80 E6               [12] 2929 	mov	a,@r0
      003B81 C0 E0            [24] 2930 	push	acc
      003B83 08               [12] 2931 	inc	r0
      003B84 E6               [12] 2932 	mov	a,@r0
      003B85 C0 E0            [24] 2933 	push	acc
      003B87 8A 82            [24] 2934 	mov	dpl,r2
      003B89 8B 83            [24] 2935 	mov	dph,r3
      003B8B 8C F0            [24] 2936 	mov	b,r4
      003B8D 12 26 B5         [24] 2937 	lcall	_stack_push
      003B90 E5 81            [12] 2938 	mov	a,sp
      003B92 24 FC            [12] 2939 	add	a,#0xfc
      003B94 F5 81            [12] 2940 	mov	sp,a
                                   2941 ;	calc.c:158: (void)stack_push(ctx->ss, d0);
      003B96 A8 08            [24] 2942 	mov	r0,_bp
      003B98 08               [12] 2943 	inc	r0
      003B99 08               [12] 2944 	inc	r0
      003B9A 86 82            [24] 2945 	mov	dpl,@r0
      003B9C 08               [12] 2946 	inc	r0
      003B9D 86 83            [24] 2947 	mov	dph,@r0
      003B9F 08               [12] 2948 	inc	r0
      003BA0 86 F0            [24] 2949 	mov	b,@r0
      003BA2 12 65 73         [24] 2950 	lcall	__gptrget
      003BA5 FA               [12] 2951 	mov	r2,a
      003BA6 A3               [24] 2952 	inc	dptr
      003BA7 12 65 73         [24] 2953 	lcall	__gptrget
      003BAA FB               [12] 2954 	mov	r3,a
      003BAB A3               [24] 2955 	inc	dptr
      003BAC 12 65 73         [24] 2956 	lcall	__gptrget
      003BAF FC               [12] 2957 	mov	r4,a
      003BB0 E5 08            [12] 2958 	mov	a,_bp
      003BB2 24 1A            [12] 2959 	add	a,#0x1a
      003BB4 F8               [12] 2960 	mov	r0,a
      003BB5 E6               [12] 2961 	mov	a,@r0
      003BB6 C0 E0            [24] 2962 	push	acc
      003BB8 08               [12] 2963 	inc	r0
      003BB9 E6               [12] 2964 	mov	a,@r0
      003BBA C0 E0            [24] 2965 	push	acc
      003BBC 08               [12] 2966 	inc	r0
      003BBD E6               [12] 2967 	mov	a,@r0
      003BBE C0 E0            [24] 2968 	push	acc
      003BC0 08               [12] 2969 	inc	r0
      003BC1 E6               [12] 2970 	mov	a,@r0
      003BC2 C0 E0            [24] 2971 	push	acc
      003BC4 8A 82            [24] 2972 	mov	dpl,r2
      003BC6 8B 83            [24] 2973 	mov	dph,r3
      003BC8 8C F0            [24] 2974 	mov	b,r4
      003BCA 12 26 B5         [24] 2975 	lcall	_stack_push
      003BCD E5 81            [12] 2976 	mov	a,sp
      003BCF 24 FC            [12] 2977 	add	a,#0xfc
      003BD1 F5 81            [12] 2978 	mov	sp,a
                                   2979 ;	calc.c:161: break;
      003BD3 02 4F 17         [24] 2980 	ljmp	00249$
                                   2981 ;	calc.c:162: case 'X':
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
      003BFB 12 65 73         [24] 3010 	lcall	__gptrget
      003BFE FF               [12] 3011 	mov	r7,a
      003BFF A3               [24] 3012 	inc	dptr
      003C00 12 65 73         [24] 3013 	lcall	__gptrget
      003C03 FE               [12] 3014 	mov	r6,a
      003C04 A3               [24] 3015 	inc	dptr
      003C05 12 65 73         [24] 3016 	lcall	__gptrget
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
      003C2E 12 65 73         [24] 3045 	lcall	__gptrget
      003C31 FA               [12] 3046 	mov	r2,a
      003C32 A3               [24] 3047 	inc	dptr
      003C33 12 65 73         [24] 3048 	lcall	__gptrget
      003C36 FB               [12] 3049 	mov	r3,a
      003C37 A3               [24] 3050 	inc	dptr
      003C38 12 65 73         [24] 3051 	lcall	__gptrget
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
      003C4A 12 5D E2         [24] 3062 	lcall	__gptrput
      003C4D A3               [24] 3063 	inc	dptr
      003C4E EB               [12] 3064 	mov	a,r3
      003C4F 12 5D E2         [24] 3065 	lcall	__gptrput
      003C52 A3               [24] 3066 	inc	dptr
      003C53 EC               [12] 3067 	mov	a,r4
      003C54 12 5D E2         [24] 3068 	lcall	__gptrput
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
      003C65 12 5D E2         [24] 3079 	lcall	__gptrput
      003C68 A3               [24] 3080 	inc	dptr
      003C69 EE               [12] 3081 	mov	a,r6
      003C6A 12 5D E2         [24] 3082 	lcall	__gptrput
      003C6D A3               [24] 3083 	inc	dptr
      003C6E ED               [12] 3084 	mov	a,r5
      003C6F 12 5D E2         [24] 3085 	lcall	__gptrput
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
      003CA3 12 65 73         [24] 3122 	lcall	__gptrget
      003CA6 FA               [12] 3123 	mov	r2,a
      003CA7 A3               [24] 3124 	inc	dptr
      003CA8 12 65 73         [24] 3125 	lcall	__gptrget
      003CAB FB               [12] 3126 	mov	r3,a
      003CAC A3               [24] 3127 	inc	dptr
      003CAD 12 65 73         [24] 3128 	lcall	__gptrget
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
      003CCE 90 7E 3B         [24] 3145 	mov	dptr,#___str_9
      003CD1 75 F0 80         [24] 3146 	mov	b,#0x80
      003CD4 12 5E 2E         [24] 3147 	lcall	_printstr
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
      003CF0 12 65 73         [24] 3164 	lcall	__gptrget
      003CF3 FA               [12] 3165 	mov	r2,a
      003CF4 A3               [24] 3166 	inc	dptr
      003CF5 12 65 73         [24] 3167 	lcall	__gptrget
      003CF8 FB               [12] 3168 	mov	r3,a
      003CF9 A3               [24] 3169 	inc	dptr
      003CFA 12 65 73         [24] 3170 	lcall	__gptrget
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
      003D28 12 65 73         [24] 3196 	lcall	__gptrget
      003D2B FA               [12] 3197 	mov	r2,a
      003D2C A3               [24] 3198 	inc	dptr
      003D2D 12 65 73         [24] 3199 	lcall	__gptrget
      003D30 FB               [12] 3200 	mov	r3,a
      003D31 A3               [24] 3201 	inc	dptr
      003D32 12 65 73         [24] 3202 	lcall	__gptrget
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
      003D59 90 7E 3B         [24] 3226 	mov	dptr,#___str_9
      003D5C 75 F0 80         [24] 3227 	mov	b,#0x80
      003D5F 12 5E 2E         [24] 3228 	lcall	_printstr
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
      003D8E 12 65 73         [24] 3265 	lcall	__gptrget
      003D91 FA               [12] 3266 	mov	r2,a
      003D92 A3               [24] 3267 	inc	dptr
      003D93 12 65 73         [24] 3268 	lcall	__gptrget
      003D96 FB               [12] 3269 	mov	r3,a
      003D97 A3               [24] 3270 	inc	dptr
      003D98 12 65 73         [24] 3271 	lcall	__gptrget
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
      003DF0 12 65 73         [24] 3330 	lcall	__gptrget
      003DF3 FA               [12] 3331 	mov	r2,a
      003DF4 A3               [24] 3332 	inc	dptr
      003DF5 12 65 73         [24] 3333 	lcall	__gptrget
      003DF8 FB               [12] 3334 	mov	r3,a
      003DF9 A3               [24] 3335 	inc	dptr
      003DFA 12 65 73         [24] 3336 	lcall	__gptrget
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
      003E1B 90 7E 3B         [24] 3353 	mov	dptr,#___str_9
      003E1E 75 F0 80         [24] 3354 	mov	b,#0x80
      003E21 12 5E 2E         [24] 3355 	lcall	_printstr
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
      003E3D 12 65 73         [24] 3372 	lcall	__gptrget
      003E40 FA               [12] 3373 	mov	r2,a
      003E41 A3               [24] 3374 	inc	dptr
      003E42 12 65 73         [24] 3375 	lcall	__gptrget
      003E45 FB               [12] 3376 	mov	r3,a
      003E46 A3               [24] 3377 	inc	dptr
      003E47 12 65 73         [24] 3378 	lcall	__gptrget
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
      003E75 12 65 73         [24] 3404 	lcall	__gptrget
      003E78 FA               [12] 3405 	mov	r2,a
      003E79 A3               [24] 3406 	inc	dptr
      003E7A 12 65 73         [24] 3407 	lcall	__gptrget
      003E7D FB               [12] 3408 	mov	r3,a
      003E7E A3               [24] 3409 	inc	dptr
      003E7F 12 65 73         [24] 3410 	lcall	__gptrget
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
      003EA6 90 7E 3B         [24] 3434 	mov	dptr,#___str_9
      003EA9 75 F0 80         [24] 3435 	mov	b,#0x80
      003EAC 12 5E 2E         [24] 3436 	lcall	_printstr
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
      003EDC 12 65 73         [24] 3474 	lcall	__gptrget
      003EDF FA               [12] 3475 	mov	r2,a
      003EE0 A3               [24] 3476 	inc	dptr
      003EE1 12 65 73         [24] 3477 	lcall	__gptrget
      003EE4 FB               [12] 3478 	mov	r3,a
      003EE5 A3               [24] 3479 	inc	dptr
      003EE6 12 65 73         [24] 3480 	lcall	__gptrget
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
      003F3E 12 65 73         [24] 3539 	lcall	__gptrget
      003F41 FA               [12] 3540 	mov	r2,a
      003F42 A3               [24] 3541 	inc	dptr
      003F43 12 65 73         [24] 3542 	lcall	__gptrget
      003F46 FB               [12] 3543 	mov	r3,a
      003F47 A3               [24] 3544 	inc	dptr
      003F48 12 65 73         [24] 3545 	lcall	__gptrget
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
      003F69 90 7E 3B         [24] 3562 	mov	dptr,#___str_9
      003F6C 75 F0 80         [24] 3563 	mov	b,#0x80
      003F6F 12 5E 2E         [24] 3564 	lcall	_printstr
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
      003F8B 12 65 73         [24] 3581 	lcall	__gptrget
      003F8E FA               [12] 3582 	mov	r2,a
      003F8F A3               [24] 3583 	inc	dptr
      003F90 12 65 73         [24] 3584 	lcall	__gptrget
      003F93 FB               [12] 3585 	mov	r3,a
      003F94 A3               [24] 3586 	inc	dptr
      003F95 12 65 73         [24] 3587 	lcall	__gptrget
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
      003FC3 12 65 73         [24] 3613 	lcall	__gptrget
      003FC6 FA               [12] 3614 	mov	r2,a
      003FC7 A3               [24] 3615 	inc	dptr
      003FC8 12 65 73         [24] 3616 	lcall	__gptrget
      003FCB FB               [12] 3617 	mov	r3,a
      003FCC A3               [24] 3618 	inc	dptr
      003FCD 12 65 73         [24] 3619 	lcall	__gptrget
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
      003FF4 90 7E 3B         [24] 3643 	mov	dptr,#___str_9
      003FF7 75 F0 80         [24] 3644 	mov	b,#0x80
      003FFA 12 5E 2E         [24] 3645 	lcall	_printstr
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
      004023 12 69 6C         [24] 3673 	lcall	__mullong
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
      004050 12 65 73         [24] 3700 	lcall	__gptrget
      004053 FA               [12] 3701 	mov	r2,a
      004054 A3               [24] 3702 	inc	dptr
      004055 12 65 73         [24] 3703 	lcall	__gptrget
      004058 FB               [12] 3704 	mov	r3,a
      004059 A3               [24] 3705 	inc	dptr
      00405A 12 65 73         [24] 3706 	lcall	__gptrget
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
      0040B8 12 65 73         [24] 3768 	lcall	__gptrget
      0040BB FD               [12] 3769 	mov	r5,a
      0040BC A3               [24] 3770 	inc	dptr
      0040BD 12 65 73         [24] 3771 	lcall	__gptrget
      0040C0 FE               [12] 3772 	mov	r6,a
      0040C1 A3               [24] 3773 	inc	dptr
      0040C2 12 65 73         [24] 3774 	lcall	__gptrget
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
      0040ED 90 7E 3B         [24] 3796 	mov	dptr,#___str_9
      0040F0 75 F0 80         [24] 3797 	mov	b,#0x80
      0040F3 12 5E 2E         [24] 3798 	lcall	_printstr
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
      004115 12 65 73         [24] 3818 	lcall	__gptrget
      004118 FD               [12] 3819 	mov	r5,a
      004119 A3               [24] 3820 	inc	dptr
      00411A 12 65 73         [24] 3821 	lcall	__gptrget
      00411D FE               [12] 3822 	mov	r6,a
      00411E A3               [24] 3823 	inc	dptr
      00411F 12 65 73         [24] 3824 	lcall	__gptrget
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
      004157 12 65 73         [24] 3855 	lcall	__gptrget
      00415A FA               [12] 3856 	mov	r2,a
      00415B A3               [24] 3857 	inc	dptr
      00415C 12 65 73         [24] 3858 	lcall	__gptrget
      00415F FB               [12] 3859 	mov	r3,a
      004160 A3               [24] 3860 	inc	dptr
      004161 12 65 73         [24] 3861 	lcall	__gptrget
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
      004188 90 7E 3B         [24] 3885 	mov	dptr,#___str_9
      00418B 75 F0 80         [24] 3886 	mov	b,#0x80
      00418E 12 5E 2E         [24] 3887 	lcall	_printstr
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
      0041B2 12 65 73         [24] 3913 	lcall	__gptrget
      0041B5 FA               [12] 3914 	mov	r2,a
      0041B6 A3               [24] 3915 	inc	dptr
      0041B7 12 65 73         [24] 3916 	lcall	__gptrget
      0041BA FB               [12] 3917 	mov	r3,a
      0041BB A3               [24] 3918 	inc	dptr
      0041BC 12 65 73         [24] 3919 	lcall	__gptrget
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
      0041F0 12 65 73         [24] 3951 	lcall	__gptrget
      0041F3 FA               [12] 3952 	mov	r2,a
      0041F4 A3               [24] 3953 	inc	dptr
      0041F5 12 65 73         [24] 3954 	lcall	__gptrget
      0041F8 FB               [12] 3955 	mov	r3,a
      0041F9 A3               [24] 3956 	inc	dptr
      0041FA 12 65 73         [24] 3957 	lcall	__gptrget
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
      004221 90 7E 9D         [24] 3981 	mov	dptr,#___str_13
      004224 75 F0 80         [24] 3982 	mov	b,#0x80
      004227 12 5E 2E         [24] 3983 	lcall	_printstr
      00422A 02 4F 17         [24] 3984 	ljmp	00249$
      00422D                       3985 00180$:
                                   3986 ;	calc.c:208: if (ctx->digit[0] == '/') d1 /= d0;
      00422D 8D 82            [24] 3987 	mov	dpl,r5
      00422F 8E 83            [24] 3988 	mov	dph,r6
      004231 8F F0            [24] 3989 	mov	b,r7
      004233 12 65 73         [24] 3990 	lcall	__gptrget
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
      00425D 12 63 6A         [24] 4017 	lcall	__divslong
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
      0042C2 12 64 67         [24] 4086 	lcall	__divulong
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
      0042EF 12 65 73         [24] 4114 	lcall	__gptrget
      0042F2 FA               [12] 4115 	mov	r2,a
      0042F3 A3               [24] 4116 	inc	dptr
      0042F4 12 65 73         [24] 4117 	lcall	__gptrget
      0042F7 FB               [12] 4118 	mov	r3,a
      0042F8 A3               [24] 4119 	inc	dptr
      0042F9 12 65 73         [24] 4120 	lcall	__gptrget
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
      004357 12 65 73         [24] 4182 	lcall	__gptrget
      00435A FD               [12] 4183 	mov	r5,a
      00435B A3               [24] 4184 	inc	dptr
      00435C 12 65 73         [24] 4185 	lcall	__gptrget
      00435F FE               [12] 4186 	mov	r6,a
      004360 A3               [24] 4187 	inc	dptr
      004361 12 65 73         [24] 4188 	lcall	__gptrget
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
      00438C 90 7E 3B         [24] 4210 	mov	dptr,#___str_9
      00438F 75 F0 80         [24] 4211 	mov	b,#0x80
      004392 12 5E 2E         [24] 4212 	lcall	_printstr
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
      0043B4 12 65 73         [24] 4232 	lcall	__gptrget
      0043B7 FD               [12] 4233 	mov	r5,a
      0043B8 A3               [24] 4234 	inc	dptr
      0043B9 12 65 73         [24] 4235 	lcall	__gptrget
      0043BC FE               [12] 4236 	mov	r6,a
      0043BD A3               [24] 4237 	inc	dptr
      0043BE 12 65 73         [24] 4238 	lcall	__gptrget
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
      0043F6 12 65 73         [24] 4269 	lcall	__gptrget
      0043F9 FA               [12] 4270 	mov	r2,a
      0043FA A3               [24] 4271 	inc	dptr
      0043FB 12 65 73         [24] 4272 	lcall	__gptrget
      0043FE FB               [12] 4273 	mov	r3,a
      0043FF A3               [24] 4274 	inc	dptr
      004400 12 65 73         [24] 4275 	lcall	__gptrget
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
      004427 90 7E 3B         [24] 4299 	mov	dptr,#___str_9
      00442A 75 F0 80         [24] 4300 	mov	b,#0x80
      00442D 12 5E 2E         [24] 4301 	lcall	_printstr
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
      004451 12 65 73         [24] 4327 	lcall	__gptrget
      004454 FA               [12] 4328 	mov	r2,a
      004455 A3               [24] 4329 	inc	dptr
      004456 12 65 73         [24] 4330 	lcall	__gptrget
      004459 FB               [12] 4331 	mov	r3,a
      00445A A3               [24] 4332 	inc	dptr
      00445B 12 65 73         [24] 4333 	lcall	__gptrget
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
      00448F 12 65 73         [24] 4365 	lcall	__gptrget
      004492 FA               [12] 4366 	mov	r2,a
      004493 A3               [24] 4367 	inc	dptr
      004494 12 65 73         [24] 4368 	lcall	__gptrget
      004497 FB               [12] 4369 	mov	r3,a
      004498 A3               [24] 4370 	inc	dptr
      004499 12 65 73         [24] 4371 	lcall	__gptrget
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
      0044C0 90 7E 9D         [24] 4395 	mov	dptr,#___str_13
      0044C3 75 F0 80         [24] 4396 	mov	b,#0x80
      0044C6 12 5E 2E         [24] 4397 	lcall	_printstr
      0044C9 02 4F 17         [24] 4398 	ljmp	00249$
      0044CC                       4399 00194$:
                                   4400 ;	calc.c:224: if (ctx->digit[0] == '%') d1 %= d0;
      0044CC 8D 82            [24] 4401 	mov	dpl,r5
      0044CE 8E 83            [24] 4402 	mov	dph,r6
      0044D0 8F F0            [24] 4403 	mov	b,r7
      0044D2 12 65 73         [24] 4404 	lcall	__gptrget
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
      0044FC 12 61 B1         [24] 4431 	lcall	__modslong
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
      00455D 12 62 A8         [24] 4496 	lcall	__modulong
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
      00458A 12 65 73         [24] 4524 	lcall	__gptrget
      00458D FD               [12] 4525 	mov	r5,a
      00458E A3               [24] 4526 	inc	dptr
      00458F 12 65 73         [24] 4527 	lcall	__gptrget
      004592 FE               [12] 4528 	mov	r6,a
      004593 A3               [24] 4529 	inc	dptr
      004594 12 65 73         [24] 4530 	lcall	__gptrget
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
      0045E7 12 65 73         [24] 4584 	lcall	__gptrget
      0045EA FD               [12] 4585 	mov	r5,a
      0045EB A3               [24] 4586 	inc	dptr
      0045EC 12 65 73         [24] 4587 	lcall	__gptrget
      0045EF FE               [12] 4588 	mov	r6,a
      0045F0 A3               [24] 4589 	inc	dptr
      0045F1 12 65 73         [24] 4590 	lcall	__gptrget
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
      004628 90 7E 3B         [24] 4621 	mov	dptr,#___str_9
      00462B 75 F0 80         [24] 4622 	mov	b,#0x80
      00462E 12 5E 2E         [24] 4623 	lcall	_printstr
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
      00464C 12 65 73         [24] 4641 	lcall	__gptrget
      00464F FD               [12] 4642 	mov	r5,a
      004650 A3               [24] 4643 	inc	dptr
      004651 12 65 73         [24] 4644 	lcall	__gptrget
      004654 FE               [12] 4645 	mov	r6,a
      004655 A3               [24] 4646 	inc	dptr
      004656 12 65 73         [24] 4647 	lcall	__gptrget
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
      004693 12 65 73         [24] 4682 	lcall	__gptrget
      004696 FD               [12] 4683 	mov	r5,a
      004697 A3               [24] 4684 	inc	dptr
      004698 12 65 73         [24] 4685 	lcall	__gptrget
      00469B FE               [12] 4686 	mov	r6,a
      00469C A3               [24] 4687 	inc	dptr
      00469D 12 65 73         [24] 4688 	lcall	__gptrget
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
      0046C4 90 7E 3B         [24] 4712 	mov	dptr,#___str_9
      0046C7 75 F0 80         [24] 4713 	mov	b,#0x80
      0046CA 12 5E 2E         [24] 4714 	lcall	_printstr
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
      0046F2 12 65 73         [24] 4746 	lcall	__gptrget
      0046F5 FA               [12] 4747 	mov	r2,a
      0046F6 A3               [24] 4748 	inc	dptr
      0046F7 12 65 73         [24] 4749 	lcall	__gptrget
      0046FA FB               [12] 4750 	mov	r3,a
      0046FB A3               [24] 4751 	inc	dptr
      0046FC 12 65 73         [24] 4752 	lcall	__gptrget
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
      00474F 12 65 73         [24] 4806 	lcall	__gptrget
      004752 FD               [12] 4807 	mov	r5,a
      004753 A3               [24] 4808 	inc	dptr
      004754 12 65 73         [24] 4809 	lcall	__gptrget
      004757 FE               [12] 4810 	mov	r6,a
      004758 A3               [24] 4811 	inc	dptr
      004759 12 65 73         [24] 4812 	lcall	__gptrget
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
      004790 90 7E 3B         [24] 4843 	mov	dptr,#___str_9
      004793 75 F0 80         [24] 4844 	mov	b,#0x80
      004796 12 5E 2E         [24] 4845 	lcall	_printstr
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
      0047B4 12 65 73         [24] 4863 	lcall	__gptrget
      0047B7 FD               [12] 4864 	mov	r5,a
      0047B8 A3               [24] 4865 	inc	dptr
      0047B9 12 65 73         [24] 4866 	lcall	__gptrget
      0047BC FE               [12] 4867 	mov	r6,a
      0047BD A3               [24] 4868 	inc	dptr
      0047BE 12 65 73         [24] 4869 	lcall	__gptrget
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
      0047FB 12 65 73         [24] 4904 	lcall	__gptrget
      0047FE FD               [12] 4905 	mov	r5,a
      0047FF A3               [24] 4906 	inc	dptr
      004800 12 65 73         [24] 4907 	lcall	__gptrget
      004803 FE               [12] 4908 	mov	r6,a
      004804 A3               [24] 4909 	inc	dptr
      004805 12 65 73         [24] 4910 	lcall	__gptrget
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
      00482C 90 7E 3B         [24] 4934 	mov	dptr,#___str_9
      00482F 75 F0 80         [24] 4935 	mov	b,#0x80
      004832 12 5E 2E         [24] 4936 	lcall	_printstr
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
      00485A 12 65 73         [24] 4968 	lcall	__gptrget
      00485D FA               [12] 4969 	mov	r2,a
      00485E A3               [24] 4970 	inc	dptr
      00485F 12 65 73         [24] 4971 	lcall	__gptrget
      004862 FB               [12] 4972 	mov	r3,a
      004863 A3               [24] 4973 	inc	dptr
      004864 12 65 73         [24] 4974 	lcall	__gptrget
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
      0048B7 12 65 73         [24] 5028 	lcall	__gptrget
      0048BA FD               [12] 5029 	mov	r5,a
      0048BB A3               [24] 5030 	inc	dptr
      0048BC 12 65 73         [24] 5031 	lcall	__gptrget
      0048BF FE               [12] 5032 	mov	r6,a
      0048C0 A3               [24] 5033 	inc	dptr
      0048C1 12 65 73         [24] 5034 	lcall	__gptrget
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
      0048F8 90 7E 3B         [24] 5065 	mov	dptr,#___str_9
      0048FB 75 F0 80         [24] 5066 	mov	b,#0x80
      0048FE 12 5E 2E         [24] 5067 	lcall	_printstr
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
      00491C 12 65 73         [24] 5085 	lcall	__gptrget
      00491F FD               [12] 5086 	mov	r5,a
      004920 A3               [24] 5087 	inc	dptr
      004921 12 65 73         [24] 5088 	lcall	__gptrget
      004924 FE               [12] 5089 	mov	r6,a
      004925 A3               [24] 5090 	inc	dptr
      004926 12 65 73         [24] 5091 	lcall	__gptrget
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
      004963 12 65 73         [24] 5126 	lcall	__gptrget
      004966 FD               [12] 5127 	mov	r5,a
      004967 A3               [24] 5128 	inc	dptr
      004968 12 65 73         [24] 5129 	lcall	__gptrget
      00496B FE               [12] 5130 	mov	r6,a
      00496C A3               [24] 5131 	inc	dptr
      00496D 12 65 73         [24] 5132 	lcall	__gptrget
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
      004994 90 7E 3B         [24] 5156 	mov	dptr,#___str_9
      004997 75 F0 80         [24] 5157 	mov	b,#0x80
      00499A 12 5E 2E         [24] 5158 	lcall	_printstr
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
      0049C2 12 65 73         [24] 5190 	lcall	__gptrget
      0049C5 FA               [12] 5191 	mov	r2,a
      0049C6 A3               [24] 5192 	inc	dptr
      0049C7 12 65 73         [24] 5193 	lcall	__gptrget
      0049CA FB               [12] 5194 	mov	r3,a
      0049CB A3               [24] 5195 	inc	dptr
      0049CC 12 65 73         [24] 5196 	lcall	__gptrget
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
      004A24 12 65 73         [24] 5255 	lcall	__gptrget
      004A27 FD               [12] 5256 	mov	r5,a
      004A28 A3               [24] 5257 	inc	dptr
      004A29 12 65 73         [24] 5258 	lcall	__gptrget
      004A2C FE               [12] 5259 	mov	r6,a
      004A2D A3               [24] 5260 	inc	dptr
      004A2E 12 65 73         [24] 5261 	lcall	__gptrget
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
      004A4F 90 7E 3B         [24] 5278 	mov	dptr,#___str_9
      004A52 75 F0 80         [24] 5279 	mov	b,#0x80
      004A55 12 5E 2E         [24] 5280 	lcall	_printstr
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
      004A71 12 65 73         [24] 5297 	lcall	__gptrget
      004A74 FD               [12] 5298 	mov	r5,a
      004A75 A3               [24] 5299 	inc	dptr
      004A76 12 65 73         [24] 5300 	lcall	__gptrget
      004A79 FE               [12] 5301 	mov	r6,a
      004A7A A3               [24] 5302 	inc	dptr
      004A7B 12 65 73         [24] 5303 	lcall	__gptrget
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
      004AA9 12 65 73         [24] 5329 	lcall	__gptrget
      004AAC FD               [12] 5330 	mov	r5,a
      004AAD A3               [24] 5331 	inc	dptr
      004AAE 12 65 73         [24] 5332 	lcall	__gptrget
      004AB1 FE               [12] 5333 	mov	r6,a
      004AB2 A3               [24] 5334 	inc	dptr
      004AB3 12 65 73         [24] 5335 	lcall	__gptrget
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
      004ADA 90 7E 3B         [24] 5359 	mov	dptr,#___str_9
      004ADD 75 F0 80         [24] 5360 	mov	b,#0x80
      004AE0 12 5E 2E         [24] 5361 	lcall	_printstr
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
      004B2E 12 65 73         [24] 5416 	lcall	__gptrget
      004B31 FD               [12] 5417 	mov	r5,a
      004B32 A3               [24] 5418 	inc	dptr
      004B33 12 65 73         [24] 5419 	lcall	__gptrget
      004B36 FE               [12] 5420 	mov	r6,a
      004B37 A3               [24] 5421 	inc	dptr
      004B38 12 65 73         [24] 5422 	lcall	__gptrget
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
      004B8B 12 65 73         [24] 5476 	lcall	__gptrget
      004B8E FD               [12] 5477 	mov	r5,a
      004B8F A3               [24] 5478 	inc	dptr
      004B90 12 65 73         [24] 5479 	lcall	__gptrget
      004B93 FE               [12] 5480 	mov	r6,a
      004B94 A3               [24] 5481 	inc	dptr
      004B95 12 65 73         [24] 5482 	lcall	__gptrget
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
      004BCC 90 7E 3B         [24] 5513 	mov	dptr,#___str_9
      004BCF 75 F0 80         [24] 5514 	mov	b,#0x80
      004BD2 12 5E 2E         [24] 5515 	lcall	_printstr
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
      004BF0 12 65 73         [24] 5533 	lcall	__gptrget
      004BF3 FD               [12] 5534 	mov	r5,a
      004BF4 A3               [24] 5535 	inc	dptr
      004BF5 12 65 73         [24] 5536 	lcall	__gptrget
      004BF8 FE               [12] 5537 	mov	r6,a
      004BF9 A3               [24] 5538 	inc	dptr
      004BFA 12 65 73         [24] 5539 	lcall	__gptrget
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
      004C37 12 65 73         [24] 5574 	lcall	__gptrget
      004C3A FD               [12] 5575 	mov	r5,a
      004C3B A3               [24] 5576 	inc	dptr
      004C3C 12 65 73         [24] 5577 	lcall	__gptrget
      004C3F FE               [12] 5578 	mov	r6,a
      004C40 A3               [24] 5579 	inc	dptr
      004C41 12 65 73         [24] 5580 	lcall	__gptrget
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
      004C68 90 7E 3B         [24] 5604 	mov	dptr,#___str_9
      004C6B 75 F0 80         [24] 5605 	mov	b,#0x80
      004C6E 12 5E 2E         [24] 5606 	lcall	_printstr
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
      004CAB 12 65 73         [24] 5654 	lcall	__gptrget
      004CAE FA               [12] 5655 	mov	r2,a
      004CAF A3               [24] 5656 	inc	dptr
      004CB0 12 65 73         [24] 5657 	lcall	__gptrget
      004CB3 FB               [12] 5658 	mov	r3,a
      004CB4 A3               [24] 5659 	inc	dptr
      004CB5 12 65 73         [24] 5660 	lcall	__gptrget
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
      004D08 12 65 73         [24] 5714 	lcall	__gptrget
      004D0B FD               [12] 5715 	mov	r5,a
      004D0C A3               [24] 5716 	inc	dptr
      004D0D 12 65 73         [24] 5717 	lcall	__gptrget
      004D10 FE               [12] 5718 	mov	r6,a
      004D11 A3               [24] 5719 	inc	dptr
      004D12 12 65 73         [24] 5720 	lcall	__gptrget
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
      004D49 90 7E 3B         [24] 5751 	mov	dptr,#___str_9
      004D4C 75 F0 80         [24] 5752 	mov	b,#0x80
      004D4F 12 5E 2E         [24] 5753 	lcall	_printstr
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
      004D6D 12 65 73         [24] 5771 	lcall	__gptrget
      004D70 FD               [12] 5772 	mov	r5,a
      004D71 A3               [24] 5773 	inc	dptr
      004D72 12 65 73         [24] 5774 	lcall	__gptrget
      004D75 FE               [12] 5775 	mov	r6,a
      004D76 A3               [24] 5776 	inc	dptr
      004D77 12 65 73         [24] 5777 	lcall	__gptrget
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
      004DB4 12 65 73         [24] 5812 	lcall	__gptrget
      004DB7 FD               [12] 5813 	mov	r5,a
      004DB8 A3               [24] 5814 	inc	dptr
      004DB9 12 65 73         [24] 5815 	lcall	__gptrget
      004DBC FE               [12] 5816 	mov	r6,a
      004DBD A3               [24] 5817 	inc	dptr
      004DBE 12 65 73         [24] 5818 	lcall	__gptrget
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
      004DE5 90 7E 3B         [24] 5842 	mov	dptr,#___str_9
      004DE8 75 F0 80         [24] 5843 	mov	b,#0x80
      004DEB 12 5E 2E         [24] 5844 	lcall	_printstr
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
      004E1C 12 65 73         [24] 5882 	lcall	__gptrget
      004E1F FA               [12] 5883 	mov	r2,a
      004E20 A3               [24] 5884 	inc	dptr
      004E21 12 65 73         [24] 5885 	lcall	__gptrget
      004E24 FB               [12] 5886 	mov	r3,a
      004E25 A3               [24] 5887 	inc	dptr
      004E26 12 65 73         [24] 5888 	lcall	__gptrget
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
      004E79 12 65 73         [24] 5942 	lcall	__gptrget
      004E7C FD               [12] 5943 	mov	r5,a
      004E7D A3               [24] 5944 	inc	dptr
      004E7E 12 65 73         [24] 5945 	lcall	__gptrget
      004E81 FE               [12] 5946 	mov	r6,a
      004E82 A3               [24] 5947 	inc	dptr
      004E83 12 65 73         [24] 5948 	lcall	__gptrget
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
      004EBA 90 7E 3B         [24] 5979 	mov	dptr,#___str_9
      004EBD 75 F0 80         [24] 5980 	mov	b,#0x80
      004EC0 12 5E 2E         [24] 5981 	lcall	_printstr
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
      004EDF 12 65 73         [24] 6007 	lcall	__gptrget
      004EE2 FA               [12] 6008 	mov	r2,a
      004EE3 A3               [24] 6009 	inc	dptr
      004EE4 12 65 73         [24] 6010 	lcall	__gptrget
      004EE7 FB               [12] 6011 	mov	r3,a
      004EE8 A3               [24] 6012 	inc	dptr
      004EE9 12 65 73         [24] 6013 	lcall	__gptrget
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
                                   6056 ;_ctx                      Allocated to stack - _bp +5
                                   6057 ;ctx                       Allocated to registers r2 r3 r4 
                                   6058 ;sloc0                     Allocated to stack - _bp +1
                                   6059 ;------------------------------------------------------------
                                   6060 ;	calc.c:303: static int push_acc(void *_ctx, delta_t *delta) __reentrant {
                                   6061 ;	-----------------------------------------
                                   6062 ;	 function push_acc
                                   6063 ;	-----------------------------------------
      004F20                       6064 _push_acc:
      004F20 C0 08            [24] 6065 	push	_bp
      004F22 E5 81            [12] 6066 	mov	a,sp
      004F24 F5 08            [12] 6067 	mov	_bp,a
      004F26 24 07            [12] 6068 	add	a,#0x07
      004F28 F5 81            [12] 6069 	mov	sp,a
      004F2A C8               [12] 6070 	xch	a,r0
      004F2B E5 08            [12] 6071 	mov	a,_bp
      004F2D 24 05            [12] 6072 	add	a,#0x05
      004F2F C8               [12] 6073 	xch	a,r0
      004F30 A6 82            [24] 6074 	mov	@r0,dpl
      004F32 08               [12] 6075 	inc	r0
      004F33 A6 83            [24] 6076 	mov	@r0,dph
      004F35 08               [12] 6077 	inc	r0
      004F36 A6 F0            [24] 6078 	mov	@r0,b
                                   6079 ;	calc.c:304: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      004F38 E5 08            [12] 6080 	mov	a,_bp
      004F3A 24 05            [12] 6081 	add	a,#0x05
      004F3C F8               [12] 6082 	mov	r0,a
      004F3D 86 02            [24] 6083 	mov	ar2,@r0
      004F3F 08               [12] 6084 	inc	r0
      004F40 86 03            [24] 6085 	mov	ar3,@r0
      004F42 08               [12] 6086 	inc	r0
      004F43 86 04            [24] 6087 	mov	ar4,@r0
                                   6088 ;	calc.c:308: ctx->acc_valid = 0;
      004F45 74 06            [12] 6089 	mov	a,#0x06
      004F47 2A               [12] 6090 	add	a,r2
      004F48 FD               [12] 6091 	mov	r5,a
      004F49 E4               [12] 6092 	clr	a
      004F4A 3B               [12] 6093 	addc	a,r3
      004F4B FE               [12] 6094 	mov	r6,a
      004F4C 8C 07            [24] 6095 	mov	ar7,r4
      004F4E 8D 82            [24] 6096 	mov	dpl,r5
      004F50 8E 83            [24] 6097 	mov	dph,r6
      004F52 8F F0            [24] 6098 	mov	b,r7
      004F54 E4               [12] 6099 	clr	a
      004F55 12 5D E2         [24] 6100 	lcall	__gptrput
                                   6101 ;	calc.c:309: if (!stack_push(ctx->ps, ctx->acc)) printstr("\r\nstack overflow\r\n");
      004F58 74 02            [12] 6102 	mov	a,#0x02
      004F5A 2A               [12] 6103 	add	a,r2
      004F5B FF               [12] 6104 	mov	r7,a
      004F5C E4               [12] 6105 	clr	a
      004F5D 3B               [12] 6106 	addc	a,r3
      004F5E FD               [12] 6107 	mov	r5,a
      004F5F 8C 06            [24] 6108 	mov	ar6,r4
      004F61 8F 82            [24] 6109 	mov	dpl,r7
      004F63 8D 83            [24] 6110 	mov	dph,r5
      004F65 8E F0            [24] 6111 	mov	b,r6
      004F67 A8 08            [24] 6112 	mov	r0,_bp
      004F69 08               [12] 6113 	inc	r0
      004F6A 12 65 73         [24] 6114 	lcall	__gptrget
      004F6D F6               [12] 6115 	mov	@r0,a
      004F6E A3               [24] 6116 	inc	dptr
      004F6F 12 65 73         [24] 6117 	lcall	__gptrget
      004F72 08               [12] 6118 	inc	r0
      004F73 F6               [12] 6119 	mov	@r0,a
      004F74 A3               [24] 6120 	inc	dptr
      004F75 12 65 73         [24] 6121 	lcall	__gptrget
      004F78 08               [12] 6122 	inc	r0
      004F79 F6               [12] 6123 	mov	@r0,a
      004F7A A3               [24] 6124 	inc	dptr
      004F7B 12 65 73         [24] 6125 	lcall	__gptrget
      004F7E 08               [12] 6126 	inc	r0
      004F7F F6               [12] 6127 	mov	@r0,a
      004F80 74 11            [12] 6128 	mov	a,#0x11
      004F82 2A               [12] 6129 	add	a,r2
      004F83 FA               [12] 6130 	mov	r2,a
      004F84 74 40            [12] 6131 	mov	a,#0x40
      004F86 3B               [12] 6132 	addc	a,r3
      004F87 FB               [12] 6133 	mov	r3,a
      004F88 8C 07            [24] 6134 	mov	ar7,r4
      004F8A 8A 82            [24] 6135 	mov	dpl,r2
      004F8C 8B 83            [24] 6136 	mov	dph,r3
      004F8E 8F F0            [24] 6137 	mov	b,r7
      004F90 12 65 73         [24] 6138 	lcall	__gptrget
      004F93 FA               [12] 6139 	mov	r2,a
      004F94 A3               [24] 6140 	inc	dptr
      004F95 12 65 73         [24] 6141 	lcall	__gptrget
      004F98 FB               [12] 6142 	mov	r3,a
      004F99 A3               [24] 6143 	inc	dptr
      004F9A 12 65 73         [24] 6144 	lcall	__gptrget
      004F9D FF               [12] 6145 	mov	r7,a
      004F9E A8 08            [24] 6146 	mov	r0,_bp
      004FA0 08               [12] 6147 	inc	r0
      004FA1 E6               [12] 6148 	mov	a,@r0
      004FA2 C0 E0            [24] 6149 	push	acc
      004FA4 08               [12] 6150 	inc	r0
      004FA5 E6               [12] 6151 	mov	a,@r0
      004FA6 C0 E0            [24] 6152 	push	acc
      004FA8 08               [12] 6153 	inc	r0
      004FA9 E6               [12] 6154 	mov	a,@r0
      004FAA C0 E0            [24] 6155 	push	acc
      004FAC 08               [12] 6156 	inc	r0
      004FAD E6               [12] 6157 	mov	a,@r0
      004FAE C0 E0            [24] 6158 	push	acc
      004FB0 8A 82            [24] 6159 	mov	dpl,r2
      004FB2 8B 83            [24] 6160 	mov	dph,r3
      004FB4 8F F0            [24] 6161 	mov	b,r7
      004FB6 12 26 B5         [24] 6162 	lcall	_stack_push
      004FB9 AE 82            [24] 6163 	mov	r6,dpl
      004FBB AF 83            [24] 6164 	mov	r7,dph
      004FBD E5 81            [12] 6165 	mov	a,sp
      004FBF 24 FC            [12] 6166 	add	a,#0xfc
      004FC1 F5 81            [12] 6167 	mov	sp,a
      004FC3 EE               [12] 6168 	mov	a,r6
      004FC4 4F               [12] 6169 	orl	a,r7
      004FC5 70 09            [24] 6170 	jnz	00102$
      004FC7 90 7E 8A         [24] 6171 	mov	dptr,#___str_12
      004FCA 75 F0 80         [24] 6172 	mov	b,#0x80
      004FCD 12 5E 2E         [24] 6173 	lcall	_printstr
      004FD0                       6174 00102$:
                                   6175 ;	calc.c:311: if (delta->event == EVENT_OP) return operator(_ctx, delta);
      004FD0 E5 08            [12] 6176 	mov	a,_bp
      004FD2 24 FB            [12] 6177 	add	a,#0xfb
      004FD4 F8               [12] 6178 	mov	r0,a
      004FD5 86 05            [24] 6179 	mov	ar5,@r0
      004FD7 08               [12] 6180 	inc	r0
      004FD8 86 06            [24] 6181 	mov	ar6,@r0
      004FDA 08               [12] 6182 	inc	r0
      004FDB 86 07            [24] 6183 	mov	ar7,@r0
      004FDD 74 02            [12] 6184 	mov	a,#0x02
      004FDF 2D               [12] 6185 	add	a,r5
      004FE0 FA               [12] 6186 	mov	r2,a
      004FE1 E4               [12] 6187 	clr	a
      004FE2 3E               [12] 6188 	addc	a,r6
      004FE3 FB               [12] 6189 	mov	r3,a
      004FE4 8F 04            [24] 6190 	mov	ar4,r7
      004FE6 8A 82            [24] 6191 	mov	dpl,r2
      004FE8 8B 83            [24] 6192 	mov	dph,r3
      004FEA 8C F0            [24] 6193 	mov	b,r4
      004FEC 12 65 73         [24] 6194 	lcall	__gptrget
      004FEF FA               [12] 6195 	mov	r2,a
      004FF0 A3               [24] 6196 	inc	dptr
      004FF1 12 65 73         [24] 6197 	lcall	__gptrget
      004FF4 FB               [12] 6198 	mov	r3,a
      004FF5 BA 02 29         [24] 6199 	cjne	r2,#0x02,00104$
      004FF8 BB 00 26         [24] 6200 	cjne	r3,#0x00,00104$
      004FFB C0 05            [24] 6201 	push	ar5
      004FFD C0 06            [24] 6202 	push	ar6
      004FFF C0 07            [24] 6203 	push	ar7
      005001 E5 08            [12] 6204 	mov	a,_bp
      005003 24 05            [12] 6205 	add	a,#0x05
      005005 F8               [12] 6206 	mov	r0,a
      005006 86 82            [24] 6207 	mov	dpl,@r0
      005008 08               [12] 6208 	inc	r0
      005009 86 83            [24] 6209 	mov	dph,@r0
      00500B 08               [12] 6210 	inc	r0
      00500C 86 F0            [24] 6211 	mov	b,@r0
      00500E 12 31 AB         [24] 6212 	lcall	_operator
      005011 AE 82            [24] 6213 	mov	r6,dpl
      005013 AF 83            [24] 6214 	mov	r7,dph
      005015 15 81            [12] 6215 	dec	sp
      005017 15 81            [12] 6216 	dec	sp
      005019 15 81            [12] 6217 	dec	sp
      00501B 8E 82            [24] 6218 	mov	dpl,r6
      00501D 8F 83            [24] 6219 	mov	dph,r7
      00501F 80 03            [24] 6220 	sjmp	00106$
      005021                       6221 00104$:
                                   6222 ;	calc.c:312: else return 1;
      005021 90 00 01         [24] 6223 	mov	dptr,#0x0001
      005024                       6224 00106$:
                                   6225 ;	calc.c:313: }
      005024 85 08 81         [24] 6226 	mov	sp,_bp
      005027 D0 08            [24] 6227 	pop	_bp
      005029 22               [24] 6228 	ret
                                   6229 ;------------------------------------------------------------
                                   6230 ;Allocation info for local variables in function 'reset_acc'
                                   6231 ;------------------------------------------------------------
                                   6232 ;delta                     Allocated to stack - _bp -5
                                   6233 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6234 ;ctx                       Allocated to registers r5 r6 r7 
                                   6235 ;------------------------------------------------------------
                                   6236 ;	calc.c:315: static int reset_acc(void *_ctx, delta_t *delta) __reentrant {
                                   6237 ;	-----------------------------------------
                                   6238 ;	 function reset_acc
                                   6239 ;	-----------------------------------------
      00502A                       6240 _reset_acc:
      00502A C0 08            [24] 6241 	push	_bp
      00502C 85 81 08         [24] 6242 	mov	_bp,sp
      00502F AD 82            [24] 6243 	mov	r5,dpl
      005031 AE 83            [24] 6244 	mov	r6,dph
      005033 AF F0            [24] 6245 	mov	r7,b
                                   6246 ;	calc.c:316: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6247 ;	calc.c:318: if (delta->event == EVENT_RSTA_I) ctx->acc_valid = 0;
      005035 E5 08            [12] 6248 	mov	a,_bp
      005037 24 FB            [12] 6249 	add	a,#0xfb
      005039 F8               [12] 6250 	mov	r0,a
      00503A 86 02            [24] 6251 	mov	ar2,@r0
      00503C 08               [12] 6252 	inc	r0
      00503D 86 03            [24] 6253 	mov	ar3,@r0
      00503F 08               [12] 6254 	inc	r0
      005040 86 04            [24] 6255 	mov	ar4,@r0
      005042 74 02            [12] 6256 	mov	a,#0x02
      005044 2A               [12] 6257 	add	a,r2
      005045 FA               [12] 6258 	mov	r2,a
      005046 E4               [12] 6259 	clr	a
      005047 3B               [12] 6260 	addc	a,r3
      005048 FB               [12] 6261 	mov	r3,a
      005049 8A 82            [24] 6262 	mov	dpl,r2
      00504B 8B 83            [24] 6263 	mov	dph,r3
      00504D 8C F0            [24] 6264 	mov	b,r4
      00504F 12 65 73         [24] 6265 	lcall	__gptrget
      005052 FA               [12] 6266 	mov	r2,a
      005053 A3               [24] 6267 	inc	dptr
      005054 12 65 73         [24] 6268 	lcall	__gptrget
      005057 FB               [12] 6269 	mov	r3,a
      005058 BA 07 16         [24] 6270 	cjne	r2,#0x07,00102$
      00505B BB 00 13         [24] 6271 	cjne	r3,#0x00,00102$
      00505E 74 06            [12] 6272 	mov	a,#0x06
      005060 2D               [12] 6273 	add	a,r5
      005061 FA               [12] 6274 	mov	r2,a
      005062 E4               [12] 6275 	clr	a
      005063 3E               [12] 6276 	addc	a,r6
      005064 FB               [12] 6277 	mov	r3,a
      005065 8F 04            [24] 6278 	mov	ar4,r7
      005067 8A 82            [24] 6279 	mov	dpl,r2
      005069 8B 83            [24] 6280 	mov	dph,r3
      00506B 8C F0            [24] 6281 	mov	b,r4
      00506D E4               [12] 6282 	clr	a
      00506E 12 5D E2         [24] 6283 	lcall	__gptrput
      005071                       6284 00102$:
                                   6285 ;	calc.c:319: ctx->acc = 0l;
      005071 74 02            [12] 6286 	mov	a,#0x02
      005073 2D               [12] 6287 	add	a,r5
      005074 FD               [12] 6288 	mov	r5,a
      005075 E4               [12] 6289 	clr	a
      005076 3E               [12] 6290 	addc	a,r6
      005077 FE               [12] 6291 	mov	r6,a
      005078 8D 82            [24] 6292 	mov	dpl,r5
      00507A 8E 83            [24] 6293 	mov	dph,r6
      00507C 8F F0            [24] 6294 	mov	b,r7
      00507E E4               [12] 6295 	clr	a
      00507F 12 5D E2         [24] 6296 	lcall	__gptrput
      005082 A3               [24] 6297 	inc	dptr
      005083 12 5D E2         [24] 6298 	lcall	__gptrput
      005086 A3               [24] 6299 	inc	dptr
      005087 12 5D E2         [24] 6300 	lcall	__gptrput
      00508A A3               [24] 6301 	inc	dptr
      00508B 12 5D E2         [24] 6302 	lcall	__gptrput
                                   6303 ;	calc.c:321: return 1;
      00508E 90 00 01         [24] 6304 	mov	dptr,#0x0001
                                   6305 ;	calc.c:322: }
      005091 D0 08            [24] 6306 	pop	_bp
      005093 22               [24] 6307 	ret
                                   6308 ;------------------------------------------------------------
                                   6309 ;Allocation info for local variables in function 'reset_base'
                                   6310 ;------------------------------------------------------------
                                   6311 ;delta                     Allocated to stack - _bp -5
                                   6312 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6313 ;ctx                       Allocated to registers r5 r6 r7 
                                   6314 ;------------------------------------------------------------
                                   6315 ;	calc.c:324: static int reset_base(void *_ctx, delta_t *delta) __reentrant {
                                   6316 ;	-----------------------------------------
                                   6317 ;	 function reset_base
                                   6318 ;	-----------------------------------------
      005094                       6319 _reset_base:
      005094 C0 08            [24] 6320 	push	_bp
      005096 85 81 08         [24] 6321 	mov	_bp,sp
      005099 AD 82            [24] 6322 	mov	r5,dpl
      00509B AE 83            [24] 6323 	mov	r6,dph
      00509D AF F0            [24] 6324 	mov	r7,b
                                   6325 ;	calc.c:325: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
                                   6326 ;	calc.c:329: switch (ctx->digit[0]) {
      00509F 74 07            [12] 6327 	mov	a,#0x07
      0050A1 2D               [12] 6328 	add	a,r5
      0050A2 FA               [12] 6329 	mov	r2,a
      0050A3 E4               [12] 6330 	clr	a
      0050A4 3E               [12] 6331 	addc	a,r6
      0050A5 FB               [12] 6332 	mov	r3,a
      0050A6 8F 04            [24] 6333 	mov	ar4,r7
      0050A8 8A 82            [24] 6334 	mov	dpl,r2
      0050AA 8B 83            [24] 6335 	mov	dph,r3
      0050AC 8C F0            [24] 6336 	mov	b,r4
      0050AE 12 65 73         [24] 6337 	lcall	__gptrget
      0050B1 FC               [12] 6338 	mov	r4,a
      0050B2 BC 48 02         [24] 6339 	cjne	r4,#0x48,00124$
      0050B5 80 0F            [24] 6340 	sjmp	00101$
      0050B7                       6341 00124$:
      0050B7 BC 4F 02         [24] 6342 	cjne	r4,#0x4f,00125$
      0050BA 80 2E            [24] 6343 	sjmp	00103$
      0050BC                       6344 00125$:
      0050BC BC 68 02         [24] 6345 	cjne	r4,#0x68,00126$
      0050BF 80 17            [24] 6346 	sjmp	00102$
      0050C1                       6347 00126$:
                                   6348 ;	calc.c:330: case 'H':
      0050C1 BC 6F 48         [24] 6349 	cjne	r4,#0x6f,00105$
      0050C4 80 36            [24] 6350 	sjmp	00104$
      0050C6                       6351 00101$:
                                   6352 ;	calc.c:331: ctx->base = 16;
      0050C6 8D 82            [24] 6353 	mov	dpl,r5
      0050C8 8E 83            [24] 6354 	mov	dph,r6
      0050CA 8F F0            [24] 6355 	mov	b,r7
      0050CC 74 10            [12] 6356 	mov	a,#0x10
      0050CE 12 5D E2         [24] 6357 	lcall	__gptrput
      0050D1 A3               [24] 6358 	inc	dptr
      0050D2 E4               [12] 6359 	clr	a
      0050D3 12 5D E2         [24] 6360 	lcall	__gptrput
                                   6361 ;	calc.c:332: break;
                                   6362 ;	calc.c:333: case 'h':
      0050D6 80 34            [24] 6363 	sjmp	00105$
      0050D8                       6364 00102$:
                                   6365 ;	calc.c:334: ctx->base = 10;
      0050D8 8D 82            [24] 6366 	mov	dpl,r5
      0050DA 8E 83            [24] 6367 	mov	dph,r6
      0050DC 8F F0            [24] 6368 	mov	b,r7
      0050DE 74 0A            [12] 6369 	mov	a,#0x0a
      0050E0 12 5D E2         [24] 6370 	lcall	__gptrput
      0050E3 A3               [24] 6371 	inc	dptr
      0050E4 E4               [12] 6372 	clr	a
      0050E5 12 5D E2         [24] 6373 	lcall	__gptrput
                                   6374 ;	calc.c:335: break;
                                   6375 ;	calc.c:336: case 'O':
      0050E8 80 22            [24] 6376 	sjmp	00105$
      0050EA                       6377 00103$:
                                   6378 ;	calc.c:337: ctx->base = 8;
      0050EA 8D 82            [24] 6379 	mov	dpl,r5
      0050EC 8E 83            [24] 6380 	mov	dph,r6
      0050EE 8F F0            [24] 6381 	mov	b,r7
      0050F0 74 08            [12] 6382 	mov	a,#0x08
      0050F2 12 5D E2         [24] 6383 	lcall	__gptrput
      0050F5 A3               [24] 6384 	inc	dptr
      0050F6 E4               [12] 6385 	clr	a
      0050F7 12 5D E2         [24] 6386 	lcall	__gptrput
                                   6387 ;	calc.c:338: break;
                                   6388 ;	calc.c:339: case 'o':
      0050FA 80 10            [24] 6389 	sjmp	00105$
      0050FC                       6390 00104$:
                                   6391 ;	calc.c:340: ctx->base = 2;
      0050FC 8D 82            [24] 6392 	mov	dpl,r5
      0050FE 8E 83            [24] 6393 	mov	dph,r6
      005100 8F F0            [24] 6394 	mov	b,r7
      005102 74 02            [12] 6395 	mov	a,#0x02
      005104 12 5D E2         [24] 6396 	lcall	__gptrput
      005107 A3               [24] 6397 	inc	dptr
      005108 E4               [12] 6398 	clr	a
      005109 12 5D E2         [24] 6399 	lcall	__gptrput
                                   6400 ;	calc.c:342: }
      00510C                       6401 00105$:
                                   6402 ;	calc.c:344: return 1;
      00510C 90 00 01         [24] 6403 	mov	dptr,#0x0001
                                   6404 ;	calc.c:345: }
      00510F D0 08            [24] 6405 	pop	_bp
      005111 22               [24] 6406 	ret
                                   6407 ;------------------------------------------------------------
                                   6408 ;Allocation info for local variables in function 'status'
                                   6409 ;------------------------------------------------------------
                                   6410 ;delta                     Allocated to stack - _bp -5
                                   6411 ;_ctx                      Allocated to registers r5 r6 r7 
                                   6412 ;ctx                       Allocated to stack - _bp +9
                                   6413 ;vals                      Allocated to stack - _bp +12
                                   6414 ;n                         Allocated to registers r6 r7 
                                   6415 ;__1310720011              Allocated to registers r5 r6 r7 r4 
                                   6416 ;d                         Allocated to registers 
                                   6417 ;__1310720013              Allocated to registers r2 r3 r4 r5 
                                   6418 ;d                         Allocated to registers 
                                   6419 ;__1310720015              Allocated to registers r4 r5 r6 r7 
                                   6420 ;d                         Allocated to registers 
                                   6421 ;__1310720017              Allocated to registers r2 r3 r4 r5 
                                   6422 ;d                         Allocated to registers 
                                   6423 ;__1310720019              Allocated to registers r4 r5 r6 r7 
                                   6424 ;d                         Allocated to registers 
                                   6425 ;sloc0                     Allocated to stack - _bp +1
                                   6426 ;sloc1                     Allocated to stack - _bp +4
                                   6427 ;sloc2                     Allocated to stack - _bp +7
                                   6428 ;------------------------------------------------------------
                                   6429 ;	calc.c:347: static int status(void *_ctx, delta_t *delta) __reentrant {
                                   6430 ;	-----------------------------------------
                                   6431 ;	 function status
                                   6432 ;	-----------------------------------------
      005112                       6433 _status:
      005112 C0 08            [24] 6434 	push	_bp
      005114 E5 81            [12] 6435 	mov	a,sp
      005116 F5 08            [12] 6436 	mov	_bp,a
      005118 24 13            [12] 6437 	add	a,#0x13
      00511A F5 81            [12] 6438 	mov	sp,a
      00511C AD 82            [24] 6439 	mov	r5,dpl
      00511E AE 83            [24] 6440 	mov	r6,dph
      005120 AF F0            [24] 6441 	mov	r7,b
                                   6442 ;	calc.c:348: calc_ctx_t *ctx = (calc_ctx_t *)_ctx;
      005122 E5 08            [12] 6443 	mov	a,_bp
      005124 24 09            [12] 6444 	add	a,#0x09
      005126 F8               [12] 6445 	mov	r0,a
      005127 A6 05            [24] 6446 	mov	@r0,ar5
      005129 08               [12] 6447 	inc	r0
      00512A A6 06            [24] 6448 	mov	@r0,ar6
      00512C 08               [12] 6449 	inc	r0
      00512D A6 07            [24] 6450 	mov	@r0,ar7
                                   6451 ;	calc.c:354: printf("\r\nPS = %p, SS = %p, base = %d\r\n", ctx->ps, ctx->ss, ctx->base);
      00512F E5 08            [12] 6452 	mov	a,_bp
      005131 24 09            [12] 6453 	add	a,#0x09
      005133 F8               [12] 6454 	mov	r0,a
      005134 86 82            [24] 6455 	mov	dpl,@r0
      005136 08               [12] 6456 	inc	r0
      005137 86 83            [24] 6457 	mov	dph,@r0
      005139 08               [12] 6458 	inc	r0
      00513A 86 F0            [24] 6459 	mov	b,@r0
      00513C E5 08            [12] 6460 	mov	a,_bp
      00513E 24 07            [12] 6461 	add	a,#0x07
      005140 F9               [12] 6462 	mov	r1,a
      005141 12 65 73         [24] 6463 	lcall	__gptrget
      005144 F7               [12] 6464 	mov	@r1,a
      005145 A3               [24] 6465 	inc	dptr
      005146 12 65 73         [24] 6466 	lcall	__gptrget
      005149 09               [12] 6467 	inc	r1
      00514A F7               [12] 6468 	mov	@r1,a
      00514B E5 08            [12] 6469 	mov	a,_bp
      00514D 24 09            [12] 6470 	add	a,#0x09
      00514F F8               [12] 6471 	mov	r0,a
      005150 A9 08            [24] 6472 	mov	r1,_bp
      005152 09               [12] 6473 	inc	r1
      005153 74 14            [12] 6474 	mov	a,#0x14
      005155 26               [12] 6475 	add	a,@r0
      005156 F7               [12] 6476 	mov	@r1,a
      005157 74 40            [12] 6477 	mov	a,#0x40
      005159 08               [12] 6478 	inc	r0
      00515A 36               [12] 6479 	addc	a,@r0
      00515B 09               [12] 6480 	inc	r1
      00515C F7               [12] 6481 	mov	@r1,a
      00515D 08               [12] 6482 	inc	r0
      00515E 09               [12] 6483 	inc	r1
      00515F E6               [12] 6484 	mov	a,@r0
      005160 F7               [12] 6485 	mov	@r1,a
      005161 A8 08            [24] 6486 	mov	r0,_bp
      005163 08               [12] 6487 	inc	r0
      005164 86 82            [24] 6488 	mov	dpl,@r0
      005166 08               [12] 6489 	inc	r0
      005167 86 83            [24] 6490 	mov	dph,@r0
      005169 08               [12] 6491 	inc	r0
      00516A 86 F0            [24] 6492 	mov	b,@r0
      00516C 12 65 73         [24] 6493 	lcall	__gptrget
      00516F FA               [12] 6494 	mov	r2,a
      005170 A3               [24] 6495 	inc	dptr
      005171 12 65 73         [24] 6496 	lcall	__gptrget
      005174 FE               [12] 6497 	mov	r6,a
      005175 A3               [24] 6498 	inc	dptr
      005176 12 65 73         [24] 6499 	lcall	__gptrget
      005179 FF               [12] 6500 	mov	r7,a
      00517A E5 08            [12] 6501 	mov	a,_bp
      00517C 24 09            [12] 6502 	add	a,#0x09
      00517E F8               [12] 6503 	mov	r0,a
      00517F E5 08            [12] 6504 	mov	a,_bp
      005181 24 04            [12] 6505 	add	a,#0x04
      005183 F9               [12] 6506 	mov	r1,a
      005184 74 11            [12] 6507 	mov	a,#0x11
      005186 26               [12] 6508 	add	a,@r0
      005187 F7               [12] 6509 	mov	@r1,a
      005188 74 40            [12] 6510 	mov	a,#0x40
      00518A 08               [12] 6511 	inc	r0
      00518B 36               [12] 6512 	addc	a,@r0
      00518C 09               [12] 6513 	inc	r1
      00518D F7               [12] 6514 	mov	@r1,a
      00518E 08               [12] 6515 	inc	r0
      00518F 09               [12] 6516 	inc	r1
      005190 E6               [12] 6517 	mov	a,@r0
      005191 F7               [12] 6518 	mov	@r1,a
      005192 E5 08            [12] 6519 	mov	a,_bp
      005194 24 04            [12] 6520 	add	a,#0x04
      005196 F8               [12] 6521 	mov	r0,a
      005197 86 82            [24] 6522 	mov	dpl,@r0
      005199 08               [12] 6523 	inc	r0
      00519A 86 83            [24] 6524 	mov	dph,@r0
      00519C 08               [12] 6525 	inc	r0
      00519D 86 F0            [24] 6526 	mov	b,@r0
      00519F 12 65 73         [24] 6527 	lcall	__gptrget
      0051A2 FB               [12] 6528 	mov	r3,a
      0051A3 A3               [24] 6529 	inc	dptr
      0051A4 12 65 73         [24] 6530 	lcall	__gptrget
      0051A7 FC               [12] 6531 	mov	r4,a
      0051A8 A3               [24] 6532 	inc	dptr
      0051A9 12 65 73         [24] 6533 	lcall	__gptrget
      0051AC FD               [12] 6534 	mov	r5,a
      0051AD E5 08            [12] 6535 	mov	a,_bp
      0051AF 24 07            [12] 6536 	add	a,#0x07
      0051B1 F8               [12] 6537 	mov	r0,a
      0051B2 E6               [12] 6538 	mov	a,@r0
      0051B3 C0 E0            [24] 6539 	push	acc
      0051B5 08               [12] 6540 	inc	r0
      0051B6 E6               [12] 6541 	mov	a,@r0
      0051B7 C0 E0            [24] 6542 	push	acc
      0051B9 C0 02            [24] 6543 	push	ar2
      0051BB C0 06            [24] 6544 	push	ar6
      0051BD C0 07            [24] 6545 	push	ar7
      0051BF C0 03            [24] 6546 	push	ar3
      0051C1 C0 04            [24] 6547 	push	ar4
      0051C3 C0 05            [24] 6548 	push	ar5
      0051C5 74 B2            [12] 6549 	mov	a,#___str_14
      0051C7 C0 E0            [24] 6550 	push	acc
      0051C9 74 7E            [12] 6551 	mov	a,#(___str_14 >> 8)
      0051CB C0 E0            [24] 6552 	push	acc
      0051CD 74 80            [12] 6553 	mov	a,#0x80
      0051CF C0 E0            [24] 6554 	push	acc
      0051D1 12 65 3A         [24] 6555 	lcall	_printf
      0051D4 E5 81            [12] 6556 	mov	a,sp
      0051D6 24 F5            [12] 6557 	add	a,#0xf5
      0051D8 F5 81            [12] 6558 	mov	sp,a
                                   6559 ;	calc.c:356: printstr("ACC\t");
      0051DA 90 7E D2         [24] 6560 	mov	dptr,#___str_15
      0051DD 75 F0 80         [24] 6561 	mov	b,#0x80
      0051E0 12 5E 2E         [24] 6562 	lcall	_printstr
                                   6563 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      0051E3 E5 08            [12] 6564 	mov	a,_bp
      0051E5 24 09            [12] 6565 	add	a,#0x09
      0051E7 F8               [12] 6566 	mov	r0,a
      0051E8 74 06            [12] 6567 	mov	a,#0x06
      0051EA 26               [12] 6568 	add	a,@r0
      0051EB FD               [12] 6569 	mov	r5,a
      0051EC E4               [12] 6570 	clr	a
      0051ED 08               [12] 6571 	inc	r0
      0051EE 36               [12] 6572 	addc	a,@r0
      0051EF FE               [12] 6573 	mov	r6,a
      0051F0 08               [12] 6574 	inc	r0
      0051F1 86 07            [24] 6575 	mov	ar7,@r0
      0051F3 8D 82            [24] 6576 	mov	dpl,r5
      0051F5 8E 83            [24] 6577 	mov	dph,r6
      0051F7 8F F0            [24] 6578 	mov	b,r7
      0051F9 12 65 73         [24] 6579 	lcall	__gptrget
      0051FC 70 03            [24] 6580 	jnz	00143$
      0051FE 02 52 A7         [24] 6581 	ljmp	00102$
      005201                       6582 00143$:
      005201 E5 08            [12] 6583 	mov	a,_bp
      005203 24 09            [12] 6584 	add	a,#0x09
      005205 F8               [12] 6585 	mov	r0,a
      005206 74 02            [12] 6586 	mov	a,#0x02
      005208 26               [12] 6587 	add	a,@r0
      005209 FD               [12] 6588 	mov	r5,a
      00520A E4               [12] 6589 	clr	a
      00520B 08               [12] 6590 	inc	r0
      00520C 36               [12] 6591 	addc	a,@r0
      00520D FE               [12] 6592 	mov	r6,a
      00520E 08               [12] 6593 	inc	r0
      00520F 86 07            [24] 6594 	mov	ar7,@r0
      005211 8D 82            [24] 6595 	mov	dpl,r5
      005213 8E 83            [24] 6596 	mov	dph,r6
      005215 8F F0            [24] 6597 	mov	b,r7
      005217 12 65 73         [24] 6598 	lcall	__gptrget
      00521A FD               [12] 6599 	mov	r5,a
      00521B A3               [24] 6600 	inc	dptr
      00521C 12 65 73         [24] 6601 	lcall	__gptrget
      00521F FE               [12] 6602 	mov	r6,a
      005220 A3               [24] 6603 	inc	dptr
      005221 12 65 73         [24] 6604 	lcall	__gptrget
      005224 FF               [12] 6605 	mov	r7,a
      005225 A3               [24] 6606 	inc	dptr
      005226 12 65 73         [24] 6607 	lcall	__gptrget
                                   6608 ;	calc.c:18: print32x(d);
      005229 FC               [12] 6609 	mov	r4,a
      00522A 8D 82            [24] 6610 	mov	dpl,r5
      00522C 8E 83            [24] 6611 	mov	dph,r6
      00522E 8F F0            [24] 6612 	mov	b,r7
      005230 C0 07            [24] 6613 	push	ar7
      005232 C0 06            [24] 6614 	push	ar6
      005234 C0 05            [24] 6615 	push	ar5
      005236 C0 04            [24] 6616 	push	ar4
      005238 12 5F DE         [24] 6617 	lcall	_print32x
      00523B D0 04            [24] 6618 	pop	ar4
      00523D D0 05            [24] 6619 	pop	ar5
      00523F D0 06            [24] 6620 	pop	ar6
      005241 D0 07            [24] 6621 	pop	ar7
                                   6622 ;	calc.c:19: printf("% 11ld\t", d);
      005243 C0 07            [24] 6623 	push	ar7
      005245 C0 06            [24] 6624 	push	ar6
      005247 C0 05            [24] 6625 	push	ar5
      005249 C0 04            [24] 6626 	push	ar4
      00524B C0 05            [24] 6627 	push	ar5
      00524D C0 06            [24] 6628 	push	ar6
      00524F C0 07            [24] 6629 	push	ar7
      005251 C0 04            [24] 6630 	push	ar4
      005253 74 F4            [12] 6631 	mov	a,#___str_0
      005255 C0 E0            [24] 6632 	push	acc
      005257 74 7D            [12] 6633 	mov	a,#(___str_0 >> 8)
      005259 C0 E0            [24] 6634 	push	acc
      00525B 74 80            [12] 6635 	mov	a,#0x80
      00525D C0 E0            [24] 6636 	push	acc
      00525F 12 65 3A         [24] 6637 	lcall	_printf
      005262 E5 81            [12] 6638 	mov	a,sp
      005264 24 F9            [12] 6639 	add	a,#0xf9
      005266 F5 81            [12] 6640 	mov	sp,a
      005268 D0 04            [24] 6641 	pop	ar4
      00526A D0 05            [24] 6642 	pop	ar5
      00526C D0 06            [24] 6643 	pop	ar6
      00526E D0 07            [24] 6644 	pop	ar7
                                   6645 ;	calc.c:20: printf("%011lo\t", d);
      005270 C0 07            [24] 6646 	push	ar7
      005272 C0 06            [24] 6647 	push	ar6
      005274 C0 05            [24] 6648 	push	ar5
      005276 C0 04            [24] 6649 	push	ar4
      005278 C0 05            [24] 6650 	push	ar5
      00527A C0 06            [24] 6651 	push	ar6
      00527C C0 07            [24] 6652 	push	ar7
      00527E C0 04            [24] 6653 	push	ar4
      005280 74 FC            [12] 6654 	mov	a,#___str_1
      005282 C0 E0            [24] 6655 	push	acc
      005284 74 7D            [12] 6656 	mov	a,#(___str_1 >> 8)
      005286 C0 E0            [24] 6657 	push	acc
      005288 74 80            [12] 6658 	mov	a,#0x80
      00528A C0 E0            [24] 6659 	push	acc
      00528C 12 65 3A         [24] 6660 	lcall	_printf
      00528F E5 81            [12] 6661 	mov	a,sp
      005291 24 F9            [12] 6662 	add	a,#0xf9
      005293 F5 81            [12] 6663 	mov	sp,a
      005295 D0 04            [24] 6664 	pop	ar4
      005297 D0 05            [24] 6665 	pop	ar5
      005299 D0 06            [24] 6666 	pop	ar6
      00529B D0 07            [24] 6667 	pop	ar7
                                   6668 ;	calc.c:21: print32bin(d);
      00529D 8D 82            [24] 6669 	mov	dpl,r5
      00529F 8E 83            [24] 6670 	mov	dph,r6
      0052A1 8F F0            [24] 6671 	mov	b,r7
      0052A3 EC               [12] 6672 	mov	a,r4
      0052A4 12 5E 9D         [24] 6673 	lcall	_print32bin
                                   6674 ;	calc.c:357: if (ctx->acc_valid) printall(ctx->acc);
      0052A7                       6675 00102$:
                                   6676 ;	calc.c:359: n = stack_peek2(ctx->ps, vals);
      0052A7 E5 08            [12] 6677 	mov	a,_bp
      0052A9 24 0C            [12] 6678 	add	a,#0x0c
      0052AB F9               [12] 6679 	mov	r1,a
      0052AC FD               [12] 6680 	mov	r5,a
      0052AD 7E 00            [12] 6681 	mov	r6,#0x00
      0052AF 7F 40            [12] 6682 	mov	r7,#0x40
      0052B1 E5 08            [12] 6683 	mov	a,_bp
      0052B3 24 04            [12] 6684 	add	a,#0x04
      0052B5 F8               [12] 6685 	mov	r0,a
      0052B6 86 82            [24] 6686 	mov	dpl,@r0
      0052B8 08               [12] 6687 	inc	r0
      0052B9 86 83            [24] 6688 	mov	dph,@r0
      0052BB 08               [12] 6689 	inc	r0
      0052BC 86 F0            [24] 6690 	mov	b,@r0
      0052BE 12 65 73         [24] 6691 	lcall	__gptrget
      0052C1 FA               [12] 6692 	mov	r2,a
      0052C2 A3               [24] 6693 	inc	dptr
      0052C3 12 65 73         [24] 6694 	lcall	__gptrget
      0052C6 FB               [12] 6695 	mov	r3,a
      0052C7 A3               [24] 6696 	inc	dptr
      0052C8 12 65 73         [24] 6697 	lcall	__gptrget
      0052CB FC               [12] 6698 	mov	r4,a
      0052CC C0 01            [24] 6699 	push	ar1
      0052CE C0 05            [24] 6700 	push	ar5
      0052D0 C0 06            [24] 6701 	push	ar6
      0052D2 C0 07            [24] 6702 	push	ar7
      0052D4 8A 82            [24] 6703 	mov	dpl,r2
      0052D6 8B 83            [24] 6704 	mov	dph,r3
      0052D8 8C F0            [24] 6705 	mov	b,r4
      0052DA 12 28 FF         [24] 6706 	lcall	_stack_peek2
      0052DD AE 82            [24] 6707 	mov	r6,dpl
      0052DF AF 83            [24] 6708 	mov	r7,dph
      0052E1 15 81            [12] 6709 	dec	sp
      0052E3 15 81            [12] 6710 	dec	sp
      0052E5 15 81            [12] 6711 	dec	sp
      0052E7 D0 01            [24] 6712 	pop	ar1
                                   6713 ;	calc.c:360: printstr("\r\nPSTOP1\t");
      0052E9 90 7E D7         [24] 6714 	mov	dptr,#___str_16
      0052EC 75 F0 80         [24] 6715 	mov	b,#0x80
      0052EF C0 07            [24] 6716 	push	ar7
      0052F1 C0 06            [24] 6717 	push	ar6
      0052F3 C0 01            [24] 6718 	push	ar1
      0052F5 12 5E 2E         [24] 6719 	lcall	_printstr
      0052F8 D0 01            [24] 6720 	pop	ar1
      0052FA D0 06            [24] 6721 	pop	ar6
      0052FC D0 07            [24] 6722 	pop	ar7
                                   6723 ;	calc.c:361: if (n > 0) printall(vals[1]);
      0052FE C3               [12] 6724 	clr	c
      0052FF E4               [12] 6725 	clr	a
      005300 9E               [12] 6726 	subb	a,r6
      005301 74 80            [12] 6727 	mov	a,#(0x00 ^ 0x80)
      005303 8F F0            [24] 6728 	mov	b,r7
      005305 63 F0 80         [24] 6729 	xrl	b,#0x80
      005308 95 F0            [12] 6730 	subb	a,b
      00530A 40 03            [24] 6731 	jc	00144$
      00530C 02 53 B4         [24] 6732 	ljmp	00104$
      00530F                       6733 00144$:
      00530F 74 04            [12] 6734 	mov	a,#0x04
      005311 29               [12] 6735 	add	a,r1
      005312 F8               [12] 6736 	mov	r0,a
      005313 86 02            [24] 6737 	mov	ar2,@r0
      005315 08               [12] 6738 	inc	r0
      005316 86 03            [24] 6739 	mov	ar3,@r0
      005318 08               [12] 6740 	inc	r0
      005319 86 04            [24] 6741 	mov	ar4,@r0
      00531B 08               [12] 6742 	inc	r0
      00531C 86 05            [24] 6743 	mov	ar5,@r0
                                   6744 ;	calc.c:18: print32x(d);
      00531E 8A 82            [24] 6745 	mov	dpl,r2
      005320 8B 83            [24] 6746 	mov	dph,r3
      005322 8C F0            [24] 6747 	mov	b,r4
      005324 ED               [12] 6748 	mov	a,r5
      005325 C0 07            [24] 6749 	push	ar7
      005327 C0 06            [24] 6750 	push	ar6
      005329 C0 05            [24] 6751 	push	ar5
      00532B C0 04            [24] 6752 	push	ar4
      00532D C0 03            [24] 6753 	push	ar3
      00532F C0 02            [24] 6754 	push	ar2
      005331 C0 01            [24] 6755 	push	ar1
      005333 12 5F DE         [24] 6756 	lcall	_print32x
      005336 D0 01            [24] 6757 	pop	ar1
      005338 D0 02            [24] 6758 	pop	ar2
      00533A D0 03            [24] 6759 	pop	ar3
      00533C D0 04            [24] 6760 	pop	ar4
      00533E D0 05            [24] 6761 	pop	ar5
                                   6762 ;	calc.c:19: printf("% 11ld\t", d);
      005340 C0 05            [24] 6763 	push	ar5
      005342 C0 04            [24] 6764 	push	ar4
      005344 C0 03            [24] 6765 	push	ar3
      005346 C0 02            [24] 6766 	push	ar2
      005348 C0 01            [24] 6767 	push	ar1
      00534A C0 02            [24] 6768 	push	ar2
      00534C C0 03            [24] 6769 	push	ar3
      00534E C0 04            [24] 6770 	push	ar4
      005350 C0 05            [24] 6771 	push	ar5
      005352 74 F4            [12] 6772 	mov	a,#___str_0
      005354 C0 E0            [24] 6773 	push	acc
      005356 74 7D            [12] 6774 	mov	a,#(___str_0 >> 8)
      005358 C0 E0            [24] 6775 	push	acc
      00535A 74 80            [12] 6776 	mov	a,#0x80
      00535C C0 E0            [24] 6777 	push	acc
      00535E 12 65 3A         [24] 6778 	lcall	_printf
      005361 E5 81            [12] 6779 	mov	a,sp
      005363 24 F9            [12] 6780 	add	a,#0xf9
      005365 F5 81            [12] 6781 	mov	sp,a
      005367 D0 01            [24] 6782 	pop	ar1
      005369 D0 02            [24] 6783 	pop	ar2
      00536B D0 03            [24] 6784 	pop	ar3
      00536D D0 04            [24] 6785 	pop	ar4
      00536F D0 05            [24] 6786 	pop	ar5
                                   6787 ;	calc.c:20: printf("%011lo\t", d);
      005371 C0 05            [24] 6788 	push	ar5
      005373 C0 04            [24] 6789 	push	ar4
      005375 C0 03            [24] 6790 	push	ar3
      005377 C0 02            [24] 6791 	push	ar2
      005379 C0 01            [24] 6792 	push	ar1
      00537B C0 02            [24] 6793 	push	ar2
      00537D C0 03            [24] 6794 	push	ar3
      00537F C0 04            [24] 6795 	push	ar4
      005381 C0 05            [24] 6796 	push	ar5
      005383 74 FC            [12] 6797 	mov	a,#___str_1
      005385 C0 E0            [24] 6798 	push	acc
      005387 74 7D            [12] 6799 	mov	a,#(___str_1 >> 8)
      005389 C0 E0            [24] 6800 	push	acc
      00538B 74 80            [12] 6801 	mov	a,#0x80
      00538D C0 E0            [24] 6802 	push	acc
      00538F 12 65 3A         [24] 6803 	lcall	_printf
      005392 E5 81            [12] 6804 	mov	a,sp
      005394 24 F9            [12] 6805 	add	a,#0xf9
      005396 F5 81            [12] 6806 	mov	sp,a
      005398 D0 01            [24] 6807 	pop	ar1
      00539A D0 02            [24] 6808 	pop	ar2
      00539C D0 03            [24] 6809 	pop	ar3
      00539E D0 04            [24] 6810 	pop	ar4
      0053A0 D0 05            [24] 6811 	pop	ar5
                                   6812 ;	calc.c:21: print32bin(d);
      0053A2 8A 82            [24] 6813 	mov	dpl,r2
      0053A4 8B 83            [24] 6814 	mov	dph,r3
      0053A6 8C F0            [24] 6815 	mov	b,r4
      0053A8 ED               [12] 6816 	mov	a,r5
      0053A9 C0 01            [24] 6817 	push	ar1
      0053AB 12 5E 9D         [24] 6818 	lcall	_print32bin
      0053AE D0 01            [24] 6819 	pop	ar1
      0053B0 D0 06            [24] 6820 	pop	ar6
      0053B2 D0 07            [24] 6821 	pop	ar7
                                   6822 ;	calc.c:361: if (n > 0) printall(vals[1]);
      0053B4                       6823 00104$:
                                   6824 ;	calc.c:362: printstr("\r\nPSTOP0\t");
      0053B4 90 7E E1         [24] 6825 	mov	dptr,#___str_17
      0053B7 75 F0 80         [24] 6826 	mov	b,#0x80
      0053BA C0 07            [24] 6827 	push	ar7
      0053BC C0 06            [24] 6828 	push	ar6
      0053BE C0 01            [24] 6829 	push	ar1
      0053C0 12 5E 2E         [24] 6830 	lcall	_printstr
      0053C3 D0 01            [24] 6831 	pop	ar1
      0053C5 D0 06            [24] 6832 	pop	ar6
      0053C7 D0 07            [24] 6833 	pop	ar7
                                   6834 ;	calc.c:363: if (n > 1) printall(vals[0]);
      0053C9 C3               [12] 6835 	clr	c
      0053CA 74 01            [12] 6836 	mov	a,#0x01
      0053CC 9E               [12] 6837 	subb	a,r6
      0053CD 74 80            [12] 6838 	mov	a,#(0x00 ^ 0x80)
      0053CF 8F F0            [24] 6839 	mov	b,r7
      0053D1 63 F0 80         [24] 6840 	xrl	b,#0x80
      0053D4 95 F0            [12] 6841 	subb	a,b
      0053D6 40 03            [24] 6842 	jc	00145$
      0053D8 02 54 77         [24] 6843 	ljmp	00106$
      0053DB                       6844 00145$:
      0053DB 87 04            [24] 6845 	mov	ar4,@r1
      0053DD 09               [12] 6846 	inc	r1
      0053DE 87 05            [24] 6847 	mov	ar5,@r1
      0053E0 09               [12] 6848 	inc	r1
      0053E1 87 06            [24] 6849 	mov	ar6,@r1
      0053E3 09               [12] 6850 	inc	r1
      0053E4 87 07            [24] 6851 	mov	ar7,@r1
      0053E6 19               [12] 6852 	dec	r1
      0053E7 19               [12] 6853 	dec	r1
      0053E8 19               [12] 6854 	dec	r1
                                   6855 ;	calc.c:18: print32x(d);
      0053E9 8C 82            [24] 6856 	mov	dpl,r4
      0053EB 8D 83            [24] 6857 	mov	dph,r5
      0053ED 8E F0            [24] 6858 	mov	b,r6
      0053EF EF               [12] 6859 	mov	a,r7
      0053F0 C0 07            [24] 6860 	push	ar7
      0053F2 C0 06            [24] 6861 	push	ar6
      0053F4 C0 05            [24] 6862 	push	ar5
      0053F6 C0 04            [24] 6863 	push	ar4
      0053F8 C0 01            [24] 6864 	push	ar1
      0053FA 12 5F DE         [24] 6865 	lcall	_print32x
      0053FD D0 01            [24] 6866 	pop	ar1
      0053FF D0 04            [24] 6867 	pop	ar4
      005401 D0 05            [24] 6868 	pop	ar5
      005403 D0 06            [24] 6869 	pop	ar6
      005405 D0 07            [24] 6870 	pop	ar7
                                   6871 ;	calc.c:19: printf("% 11ld\t", d);
      005407 C0 07            [24] 6872 	push	ar7
      005409 C0 06            [24] 6873 	push	ar6
      00540B C0 05            [24] 6874 	push	ar5
      00540D C0 04            [24] 6875 	push	ar4
      00540F C0 01            [24] 6876 	push	ar1
      005411 C0 04            [24] 6877 	push	ar4
      005413 C0 05            [24] 6878 	push	ar5
      005415 C0 06            [24] 6879 	push	ar6
      005417 C0 07            [24] 6880 	push	ar7
      005419 74 F4            [12] 6881 	mov	a,#___str_0
      00541B C0 E0            [24] 6882 	push	acc
      00541D 74 7D            [12] 6883 	mov	a,#(___str_0 >> 8)
      00541F C0 E0            [24] 6884 	push	acc
      005421 74 80            [12] 6885 	mov	a,#0x80
      005423 C0 E0            [24] 6886 	push	acc
      005425 12 65 3A         [24] 6887 	lcall	_printf
      005428 E5 81            [12] 6888 	mov	a,sp
      00542A 24 F9            [12] 6889 	add	a,#0xf9
      00542C F5 81            [12] 6890 	mov	sp,a
      00542E D0 01            [24] 6891 	pop	ar1
      005430 D0 04            [24] 6892 	pop	ar4
      005432 D0 05            [24] 6893 	pop	ar5
      005434 D0 06            [24] 6894 	pop	ar6
      005436 D0 07            [24] 6895 	pop	ar7
                                   6896 ;	calc.c:20: printf("%011lo\t", d);
      005438 C0 07            [24] 6897 	push	ar7
      00543A C0 06            [24] 6898 	push	ar6
      00543C C0 05            [24] 6899 	push	ar5
      00543E C0 04            [24] 6900 	push	ar4
      005440 C0 01            [24] 6901 	push	ar1
      005442 C0 04            [24] 6902 	push	ar4
      005444 C0 05            [24] 6903 	push	ar5
      005446 C0 06            [24] 6904 	push	ar6
      005448 C0 07            [24] 6905 	push	ar7
      00544A 74 FC            [12] 6906 	mov	a,#___str_1
      00544C C0 E0            [24] 6907 	push	acc
      00544E 74 7D            [12] 6908 	mov	a,#(___str_1 >> 8)
      005450 C0 E0            [24] 6909 	push	acc
      005452 74 80            [12] 6910 	mov	a,#0x80
      005454 C0 E0            [24] 6911 	push	acc
      005456 12 65 3A         [24] 6912 	lcall	_printf
      005459 E5 81            [12] 6913 	mov	a,sp
      00545B 24 F9            [12] 6914 	add	a,#0xf9
      00545D F5 81            [12] 6915 	mov	sp,a
      00545F D0 01            [24] 6916 	pop	ar1
      005461 D0 04            [24] 6917 	pop	ar4
      005463 D0 05            [24] 6918 	pop	ar5
      005465 D0 06            [24] 6919 	pop	ar6
      005467 D0 07            [24] 6920 	pop	ar7
                                   6921 ;	calc.c:21: print32bin(d);
      005469 8C 82            [24] 6922 	mov	dpl,r4
      00546B 8D 83            [24] 6923 	mov	dph,r5
      00546D 8E F0            [24] 6924 	mov	b,r6
      00546F EF               [12] 6925 	mov	a,r7
      005470 C0 01            [24] 6926 	push	ar1
      005472 12 5E 9D         [24] 6927 	lcall	_print32bin
      005475 D0 01            [24] 6928 	pop	ar1
                                   6929 ;	calc.c:363: if (n > 1) printall(vals[0]);
      005477                       6930 00106$:
                                   6931 ;	calc.c:365: n = stack_peek2(ctx->ss, vals);
      005477 89 07            [24] 6932 	mov	ar7,r1
      005479 7E 00            [12] 6933 	mov	r6,#0x00
      00547B 7D 40            [12] 6934 	mov	r5,#0x40
      00547D A8 08            [24] 6935 	mov	r0,_bp
      00547F 08               [12] 6936 	inc	r0
      005480 86 82            [24] 6937 	mov	dpl,@r0
      005482 08               [12] 6938 	inc	r0
      005483 86 83            [24] 6939 	mov	dph,@r0
      005485 08               [12] 6940 	inc	r0
      005486 86 F0            [24] 6941 	mov	b,@r0
      005488 12 65 73         [24] 6942 	lcall	__gptrget
      00548B FA               [12] 6943 	mov	r2,a
      00548C A3               [24] 6944 	inc	dptr
      00548D 12 65 73         [24] 6945 	lcall	__gptrget
      005490 FB               [12] 6946 	mov	r3,a
      005491 A3               [24] 6947 	inc	dptr
      005492 12 65 73         [24] 6948 	lcall	__gptrget
      005495 FC               [12] 6949 	mov	r4,a
      005496 C0 01            [24] 6950 	push	ar1
      005498 C0 07            [24] 6951 	push	ar7
      00549A C0 06            [24] 6952 	push	ar6
      00549C C0 05            [24] 6953 	push	ar5
      00549E 8A 82            [24] 6954 	mov	dpl,r2
      0054A0 8B 83            [24] 6955 	mov	dph,r3
      0054A2 8C F0            [24] 6956 	mov	b,r4
      0054A4 12 28 FF         [24] 6957 	lcall	_stack_peek2
      0054A7 AE 82            [24] 6958 	mov	r6,dpl
      0054A9 AF 83            [24] 6959 	mov	r7,dph
      0054AB 15 81            [12] 6960 	dec	sp
      0054AD 15 81            [12] 6961 	dec	sp
      0054AF 15 81            [12] 6962 	dec	sp
      0054B1 D0 01            [24] 6963 	pop	ar1
                                   6964 ;	calc.c:366: printstr("\r\nSSTOP1\t");
      0054B3 90 7E EB         [24] 6965 	mov	dptr,#___str_18
      0054B6 75 F0 80         [24] 6966 	mov	b,#0x80
      0054B9 C0 07            [24] 6967 	push	ar7
      0054BB C0 06            [24] 6968 	push	ar6
      0054BD C0 01            [24] 6969 	push	ar1
      0054BF 12 5E 2E         [24] 6970 	lcall	_printstr
      0054C2 D0 01            [24] 6971 	pop	ar1
      0054C4 D0 06            [24] 6972 	pop	ar6
      0054C6 D0 07            [24] 6973 	pop	ar7
                                   6974 ;	calc.c:367: if (n > 0) printall(vals[1]);
      0054C8 C3               [12] 6975 	clr	c
      0054C9 E4               [12] 6976 	clr	a
      0054CA 9E               [12] 6977 	subb	a,r6
      0054CB 74 80            [12] 6978 	mov	a,#(0x00 ^ 0x80)
      0054CD 8F F0            [24] 6979 	mov	b,r7
      0054CF 63 F0 80         [24] 6980 	xrl	b,#0x80
      0054D2 95 F0            [12] 6981 	subb	a,b
      0054D4 40 03            [24] 6982 	jc	00146$
      0054D6 02 55 7E         [24] 6983 	ljmp	00108$
      0054D9                       6984 00146$:
      0054D9 74 04            [12] 6985 	mov	a,#0x04
      0054DB 29               [12] 6986 	add	a,r1
      0054DC F8               [12] 6987 	mov	r0,a
      0054DD 86 02            [24] 6988 	mov	ar2,@r0
      0054DF 08               [12] 6989 	inc	r0
      0054E0 86 03            [24] 6990 	mov	ar3,@r0
      0054E2 08               [12] 6991 	inc	r0
      0054E3 86 04            [24] 6992 	mov	ar4,@r0
      0054E5 08               [12] 6993 	inc	r0
      0054E6 86 05            [24] 6994 	mov	ar5,@r0
                                   6995 ;	calc.c:18: print32x(d);
      0054E8 8A 82            [24] 6996 	mov	dpl,r2
      0054EA 8B 83            [24] 6997 	mov	dph,r3
      0054EC 8C F0            [24] 6998 	mov	b,r4
      0054EE ED               [12] 6999 	mov	a,r5
      0054EF C0 07            [24] 7000 	push	ar7
      0054F1 C0 06            [24] 7001 	push	ar6
      0054F3 C0 05            [24] 7002 	push	ar5
      0054F5 C0 04            [24] 7003 	push	ar4
      0054F7 C0 03            [24] 7004 	push	ar3
      0054F9 C0 02            [24] 7005 	push	ar2
      0054FB C0 01            [24] 7006 	push	ar1
      0054FD 12 5F DE         [24] 7007 	lcall	_print32x
      005500 D0 01            [24] 7008 	pop	ar1
      005502 D0 02            [24] 7009 	pop	ar2
      005504 D0 03            [24] 7010 	pop	ar3
      005506 D0 04            [24] 7011 	pop	ar4
      005508 D0 05            [24] 7012 	pop	ar5
                                   7013 ;	calc.c:19: printf("% 11ld\t", d);
      00550A C0 05            [24] 7014 	push	ar5
      00550C C0 04            [24] 7015 	push	ar4
      00550E C0 03            [24] 7016 	push	ar3
      005510 C0 02            [24] 7017 	push	ar2
      005512 C0 01            [24] 7018 	push	ar1
      005514 C0 02            [24] 7019 	push	ar2
      005516 C0 03            [24] 7020 	push	ar3
      005518 C0 04            [24] 7021 	push	ar4
      00551A C0 05            [24] 7022 	push	ar5
      00551C 74 F4            [12] 7023 	mov	a,#___str_0
      00551E C0 E0            [24] 7024 	push	acc
      005520 74 7D            [12] 7025 	mov	a,#(___str_0 >> 8)
      005522 C0 E0            [24] 7026 	push	acc
      005524 74 80            [12] 7027 	mov	a,#0x80
      005526 C0 E0            [24] 7028 	push	acc
      005528 12 65 3A         [24] 7029 	lcall	_printf
      00552B E5 81            [12] 7030 	mov	a,sp
      00552D 24 F9            [12] 7031 	add	a,#0xf9
      00552F F5 81            [12] 7032 	mov	sp,a
      005531 D0 01            [24] 7033 	pop	ar1
      005533 D0 02            [24] 7034 	pop	ar2
      005535 D0 03            [24] 7035 	pop	ar3
      005537 D0 04            [24] 7036 	pop	ar4
      005539 D0 05            [24] 7037 	pop	ar5
                                   7038 ;	calc.c:20: printf("%011lo\t", d);
      00553B C0 05            [24] 7039 	push	ar5
      00553D C0 04            [24] 7040 	push	ar4
      00553F C0 03            [24] 7041 	push	ar3
      005541 C0 02            [24] 7042 	push	ar2
      005543 C0 01            [24] 7043 	push	ar1
      005545 C0 02            [24] 7044 	push	ar2
      005547 C0 03            [24] 7045 	push	ar3
      005549 C0 04            [24] 7046 	push	ar4
      00554B C0 05            [24] 7047 	push	ar5
      00554D 74 FC            [12] 7048 	mov	a,#___str_1
      00554F C0 E0            [24] 7049 	push	acc
      005551 74 7D            [12] 7050 	mov	a,#(___str_1 >> 8)
      005553 C0 E0            [24] 7051 	push	acc
      005555 74 80            [12] 7052 	mov	a,#0x80
      005557 C0 E0            [24] 7053 	push	acc
      005559 12 65 3A         [24] 7054 	lcall	_printf
      00555C E5 81            [12] 7055 	mov	a,sp
      00555E 24 F9            [12] 7056 	add	a,#0xf9
      005560 F5 81            [12] 7057 	mov	sp,a
      005562 D0 01            [24] 7058 	pop	ar1
      005564 D0 02            [24] 7059 	pop	ar2
      005566 D0 03            [24] 7060 	pop	ar3
      005568 D0 04            [24] 7061 	pop	ar4
      00556A D0 05            [24] 7062 	pop	ar5
                                   7063 ;	calc.c:21: print32bin(d);
      00556C 8A 82            [24] 7064 	mov	dpl,r2
      00556E 8B 83            [24] 7065 	mov	dph,r3
      005570 8C F0            [24] 7066 	mov	b,r4
      005572 ED               [12] 7067 	mov	a,r5
      005573 C0 01            [24] 7068 	push	ar1
      005575 12 5E 9D         [24] 7069 	lcall	_print32bin
      005578 D0 01            [24] 7070 	pop	ar1
      00557A D0 06            [24] 7071 	pop	ar6
      00557C D0 07            [24] 7072 	pop	ar7
                                   7073 ;	calc.c:367: if (n > 0) printall(vals[1]);
      00557E                       7074 00108$:
                                   7075 ;	calc.c:368: printstr("\r\nSSTOP0\t");
      00557E 90 7E F5         [24] 7076 	mov	dptr,#___str_19
      005581 75 F0 80         [24] 7077 	mov	b,#0x80
      005584 C0 07            [24] 7078 	push	ar7
      005586 C0 06            [24] 7079 	push	ar6
      005588 C0 01            [24] 7080 	push	ar1
      00558A 12 5E 2E         [24] 7081 	lcall	_printstr
      00558D D0 01            [24] 7082 	pop	ar1
      00558F D0 06            [24] 7083 	pop	ar6
      005591 D0 07            [24] 7084 	pop	ar7
                                   7085 ;	calc.c:369: if (n > 1) printall(vals[0]);
      005593 C3               [12] 7086 	clr	c
      005594 74 01            [12] 7087 	mov	a,#0x01
      005596 9E               [12] 7088 	subb	a,r6
      005597 74 80            [12] 7089 	mov	a,#(0x00 ^ 0x80)
      005599 8F F0            [24] 7090 	mov	b,r7
      00559B 63 F0 80         [24] 7091 	xrl	b,#0x80
      00559E 95 F0            [12] 7092 	subb	a,b
      0055A0 40 03            [24] 7093 	jc	00147$
      0055A2 02 56 2E         [24] 7094 	ljmp	00110$
      0055A5                       7095 00147$:
      0055A5 87 04            [24] 7096 	mov	ar4,@r1
      0055A7 09               [12] 7097 	inc	r1
      0055A8 87 05            [24] 7098 	mov	ar5,@r1
      0055AA 09               [12] 7099 	inc	r1
      0055AB 87 06            [24] 7100 	mov	ar6,@r1
      0055AD 09               [12] 7101 	inc	r1
      0055AE 87 07            [24] 7102 	mov	ar7,@r1
                                   7103 ;	calc.c:18: print32x(d);
      0055B0 8C 82            [24] 7104 	mov	dpl,r4
      0055B2 8D 83            [24] 7105 	mov	dph,r5
      0055B4 8E F0            [24] 7106 	mov	b,r6
      0055B6 EF               [12] 7107 	mov	a,r7
      0055B7 C0 07            [24] 7108 	push	ar7
      0055B9 C0 06            [24] 7109 	push	ar6
      0055BB C0 05            [24] 7110 	push	ar5
      0055BD C0 04            [24] 7111 	push	ar4
      0055BF 12 5F DE         [24] 7112 	lcall	_print32x
      0055C2 D0 04            [24] 7113 	pop	ar4
      0055C4 D0 05            [24] 7114 	pop	ar5
      0055C6 D0 06            [24] 7115 	pop	ar6
      0055C8 D0 07            [24] 7116 	pop	ar7
                                   7117 ;	calc.c:19: printf("% 11ld\t", d);
      0055CA C0 07            [24] 7118 	push	ar7
      0055CC C0 06            [24] 7119 	push	ar6
      0055CE C0 05            [24] 7120 	push	ar5
      0055D0 C0 04            [24] 7121 	push	ar4
      0055D2 C0 04            [24] 7122 	push	ar4
      0055D4 C0 05            [24] 7123 	push	ar5
      0055D6 C0 06            [24] 7124 	push	ar6
      0055D8 C0 07            [24] 7125 	push	ar7
      0055DA 74 F4            [12] 7126 	mov	a,#___str_0
      0055DC C0 E0            [24] 7127 	push	acc
      0055DE 74 7D            [12] 7128 	mov	a,#(___str_0 >> 8)
      0055E0 C0 E0            [24] 7129 	push	acc
      0055E2 74 80            [12] 7130 	mov	a,#0x80
      0055E4 C0 E0            [24] 7131 	push	acc
      0055E6 12 65 3A         [24] 7132 	lcall	_printf
      0055E9 E5 81            [12] 7133 	mov	a,sp
      0055EB 24 F9            [12] 7134 	add	a,#0xf9
      0055ED F5 81            [12] 7135 	mov	sp,a
      0055EF D0 04            [24] 7136 	pop	ar4
      0055F1 D0 05            [24] 7137 	pop	ar5
      0055F3 D0 06            [24] 7138 	pop	ar6
      0055F5 D0 07            [24] 7139 	pop	ar7
                                   7140 ;	calc.c:20: printf("%011lo\t", d);
      0055F7 C0 07            [24] 7141 	push	ar7
      0055F9 C0 06            [24] 7142 	push	ar6
      0055FB C0 05            [24] 7143 	push	ar5
      0055FD C0 04            [24] 7144 	push	ar4
      0055FF C0 04            [24] 7145 	push	ar4
      005601 C0 05            [24] 7146 	push	ar5
      005603 C0 06            [24] 7147 	push	ar6
      005605 C0 07            [24] 7148 	push	ar7
      005607 74 FC            [12] 7149 	mov	a,#___str_1
      005609 C0 E0            [24] 7150 	push	acc
      00560B 74 7D            [12] 7151 	mov	a,#(___str_1 >> 8)
      00560D C0 E0            [24] 7152 	push	acc
      00560F 74 80            [12] 7153 	mov	a,#0x80
      005611 C0 E0            [24] 7154 	push	acc
      005613 12 65 3A         [24] 7155 	lcall	_printf
      005616 E5 81            [12] 7156 	mov	a,sp
      005618 24 F9            [12] 7157 	add	a,#0xf9
      00561A F5 81            [12] 7158 	mov	sp,a
      00561C D0 04            [24] 7159 	pop	ar4
      00561E D0 05            [24] 7160 	pop	ar5
      005620 D0 06            [24] 7161 	pop	ar6
      005622 D0 07            [24] 7162 	pop	ar7
                                   7163 ;	calc.c:21: print32bin(d);
      005624 8C 82            [24] 7164 	mov	dpl,r4
      005626 8D 83            [24] 7165 	mov	dph,r5
      005628 8E F0            [24] 7166 	mov	b,r6
      00562A EF               [12] 7167 	mov	a,r7
      00562B 12 5E 9D         [24] 7168 	lcall	_print32bin
                                   7169 ;	calc.c:369: if (n > 1) printall(vals[0]);
      00562E                       7170 00110$:
                                   7171 ;	calc.c:370: printstr("\r\n");
      00562E 90 7E 04         [24] 7172 	mov	dptr,#___str_2
      005631 75 F0 80         [24] 7173 	mov	b,#0x80
      005634 12 5E 2E         [24] 7174 	lcall	_printstr
                                   7175 ;	calc.c:372: return 1;
      005637 90 00 01         [24] 7176 	mov	dptr,#0x0001
                                   7177 ;	calc.c:373: }
      00563A 85 08 81         [24] 7178 	mov	sp,_bp
      00563D D0 08            [24] 7179 	pop	_bp
      00563F 22               [24] 7180 	ret
                                   7181 ;------------------------------------------------------------
                                   7182 ;Allocation info for local variables in function 'help'
                                   7183 ;------------------------------------------------------------
                                   7184 ;delta                     Allocated to stack - _bp -5
                                   7185 ;_ctx                      Allocated to registers 
                                   7186 ;------------------------------------------------------------
                                   7187 ;	calc.c:375: static int help(void *_ctx, delta_t *delta) __reentrant {
                                   7188 ;	-----------------------------------------
                                   7189 ;	 function help
                                   7190 ;	-----------------------------------------
      005640                       7191 _help:
      005640 C0 08            [24] 7192 	push	_bp
      005642 85 81 08         [24] 7193 	mov	_bp,sp
                                   7194 ;	calc.c:379: printstr("\r\nHhOo\tbase 16 10 8 2\r\n");
      005645 90 7E FF         [24] 7195 	mov	dptr,#___str_20
      005648 75 F0 80         [24] 7196 	mov	b,#0x80
      00564B 12 5E 2E         [24] 7197 	lcall	_printstr
                                   7198 ;	calc.c:380: printstr("p.\tpop top\r\n");
      00564E 90 7F 17         [24] 7199 	mov	dptr,#___str_21
      005651 75 F0 80         [24] 7200 	mov	b,#0x80
      005654 12 5E 2E         [24] 7201 	lcall	_printstr
                                   7202 ;	calc.c:381: printstr("P\tpop stack\r\n");
      005657 90 7F 24         [24] 7203 	mov	dptr,#___str_22
      00565A 75 F0 80         [24] 7204 	mov	b,#0x80
      00565D 12 5E 2E         [24] 7205 	lcall	_printstr
                                   7206 ;	calc.c:382: printstr("v\tpeek top\r\n");
      005660 90 7F 32         [24] 7207 	mov	dptr,#___str_23
      005663 75 F0 80         [24] 7208 	mov	b,#0x80
      005666 12 5E 2E         [24] 7209 	lcall	_printstr
                                   7210 ;	calc.c:383: printstr("V\tpeek stack\r\n");
      005669 90 7F 3F         [24] 7211 	mov	dptr,#___str_24
      00566C 75 F0 80         [24] 7212 	mov	b,#0x80
      00566F 12 5E 2E         [24] 7213 	lcall	_printstr
                                   7214 ;	calc.c:384: printstr("i\treset acc\r\n");
      005672 90 7F 4E         [24] 7215 	mov	dptr,#___str_25
      005675 75 F0 80         [24] 7216 	mov	b,#0x80
      005678 12 5E 2E         [24] 7217 	lcall	_printstr
                                   7218 ;	calc.c:385: printstr("I\treset and discard acc\r\n");
      00567B 90 7F 5C         [24] 7219 	mov	dptr,#___str_26
      00567E 75 F0 80         [24] 7220 	mov	b,#0x80
      005681 12 5E 2E         [24] 7221 	lcall	_printstr
                                   7222 ;	calc.c:386: printstr("x\texchange top 2\r\n");
      005684 90 7F 76         [24] 7223 	mov	dptr,#___str_27
      005687 75 F0 80         [24] 7224 	mov	b,#0x80
      00568A 12 5E 2E         [24] 7225 	lcall	_printstr
                                   7226 ;	calc.c:387: printstr("X\texchange stacks primary <-> secondary\r\n");
      00568D 90 7F 89         [24] 7227 	mov	dptr,#___str_28
      005690 75 F0 80         [24] 7228 	mov	b,#0x80
      005693 12 5E 2E         [24] 7229 	lcall	_printstr
                                   7230 ;	calc.c:388: printstr("T\texchange tops primary <-> secondary\r\n");
      005696 90 7F B3         [24] 7231 	mov	dptr,#___str_29
      005699 75 F0 80         [24] 7232 	mov	b,#0x80
      00569C 12 5E 2E         [24] 7233 	lcall	_printstr
                                   7234 ;	calc.c:389: printstr("U\tcopy top secondary -> primary\r\n");
      00569F 90 7F DB         [24] 7235 	mov	dptr,#___str_30
      0056A2 75 F0 80         [24] 7236 	mov	b,#0x80
      0056A5 12 5E 2E         [24] 7237 	lcall	_printstr
                                   7238 ;	calc.c:390: printstr("u\tcopy top primary -> secondary\r\n");
      0056A8 90 7F FD         [24] 7239 	mov	dptr,#___str_31
      0056AB 75 F0 80         [24] 7240 	mov	b,#0x80
      0056AE 12 5E 2E         [24] 7241 	lcall	_printstr
                                   7242 ;	calc.c:391: printstr("M\tmove top secondary -> primary\r\n");
      0056B1 90 80 1F         [24] 7243 	mov	dptr,#___str_32
      0056B4 75 F0 80         [24] 7244 	mov	b,#0x80
      0056B7 12 5E 2E         [24] 7245 	lcall	_printstr
                                   7246 ;	calc.c:392: printstr("m\tmove top primary -> secondary\r\n");
      0056BA 90 80 41         [24] 7247 	mov	dptr,#___str_33
      0056BD 75 F0 80         [24] 7248 	mov	b,#0x80
      0056C0 12 5E 2E         [24] 7249 	lcall	_printstr
                                   7250 ;	calc.c:393: printstr("+\tadd top 2\r\n");
      0056C3 90 80 63         [24] 7251 	mov	dptr,#___str_34
      0056C6 75 F0 80         [24] 7252 	mov	b,#0x80
      0056C9 12 5E 2E         [24] 7253 	lcall	_printstr
                                   7254 ;	calc.c:394: printstr("-\tsubtract top 2\r\n");
      0056CC 90 80 71         [24] 7255 	mov	dptr,#___str_35
      0056CF 75 F0 80         [24] 7256 	mov	b,#0x80
      0056D2 12 5E 2E         [24] 7257 	lcall	_printstr
                                   7258 ;	calc.c:395: printstr("*\tmultiply top 2\r\n");
      0056D5 90 80 84         [24] 7259 	mov	dptr,#___str_36
      0056D8 75 F0 80         [24] 7260 	mov	b,#0x80
      0056DB 12 5E 2E         [24] 7261 	lcall	_printstr
                                   7262 ;	calc.c:396: printstr("/\tdivide top 2\r\n");
      0056DE 90 80 97         [24] 7263 	mov	dptr,#___str_37
      0056E1 75 F0 80         [24] 7264 	mov	b,#0x80
      0056E4 12 5E 2E         [24] 7265 	lcall	_printstr
                                   7266 ;	calc.c:397: printstr("\\\tdivide top 2 unsigned\r\n");	
      0056E7 90 80 A8         [24] 7267 	mov	dptr,#___str_38
      0056EA 75 F0 80         [24] 7268 	mov	b,#0x80
      0056ED 12 5E 2E         [24] 7269 	lcall	_printstr
                                   7270 ;	calc.c:398: printstr("%\tmodulus top 2\r\n");
      0056F0 90 80 C2         [24] 7271 	mov	dptr,#___str_39
      0056F3 75 F0 80         [24] 7272 	mov	b,#0x80
      0056F6 12 5E 2E         [24] 7273 	lcall	_printstr
                                   7274 ;	calc.c:399: printstr("#\tmodulus top 2 unsigned\r\n");
      0056F9 90 80 D4         [24] 7275 	mov	dptr,#___str_40
      0056FC 75 F0 80         [24] 7276 	mov	b,#0x80
      0056FF 12 5E 2E         [24] 7277 	lcall	_printstr
                                   7278 ;	calc.c:400: printstr("&\tand top 2\r\n");
      005702 90 80 EF         [24] 7279 	mov	dptr,#___str_41
      005705 75 F0 80         [24] 7280 	mov	b,#0x80
      005708 12 5E 2E         [24] 7281 	lcall	_printstr
                                   7282 ;	calc.c:401: printstr("|\tor top 2\r\n");
      00570B 90 80 FD         [24] 7283 	mov	dptr,#___str_42
      00570E 75 F0 80         [24] 7284 	mov	b,#0x80
      005711 12 5E 2E         [24] 7285 	lcall	_printstr
                                   7286 ;	calc.c:402: printstr("^\txor top 2\r\n");
      005714 90 81 0A         [24] 7287 	mov	dptr,#___str_43
      005717 75 F0 80         [24] 7288 	mov	b,#0x80
      00571A 12 5E 2E         [24] 7289 	lcall	_printstr
                                   7290 ;	calc.c:403: printstr(">\tshift right top 2\r\n");
      00571D 90 81 18         [24] 7291 	mov	dptr,#___str_44
      005720 75 F0 80         [24] 7292 	mov	b,#0x80
      005723 12 5E 2E         [24] 7293 	lcall	_printstr
                                   7294 ;	calc.c:404: printstr("]\tarithmetic shift right top 2\r\n");
      005726 90 81 2E         [24] 7295 	mov	dptr,#___str_45
      005729 75 F0 80         [24] 7296 	mov	b,#0x80
      00572C 12 5E 2E         [24] 7297 	lcall	_printstr
                                   7298 ;	calc.c:405: printstr("<\tshift left top 2\r\n");
      00572F 90 81 4F         [24] 7299 	mov	dptr,#___str_46
      005732 75 F0 80         [24] 7300 	mov	b,#0x80
      005735 12 5E 2E         [24] 7301 	lcall	_printstr
                                   7302 ;	calc.c:406: printstr("~\tbitwise not top\r\n");
      005738 90 81 64         [24] 7303 	mov	dptr,#___str_47
      00573B 75 F0 80         [24] 7304 	mov	b,#0x80
      00573E 12 5E 2E         [24] 7305 	lcall	_printstr
                                   7306 ;	calc.c:407: printstr("s\tstatus\r\n");
      005741 90 81 78         [24] 7307 	mov	dptr,#___str_48
      005744 75 F0 80         [24] 7308 	mov	b,#0x80
      005747 12 5E 2E         [24] 7309 	lcall	_printstr
                                   7310 ;	calc.c:408: printstr("?\thelp\r\n");
      00574A 90 81 83         [24] 7311 	mov	dptr,#___str_49
      00574D 75 F0 80         [24] 7312 	mov	b,#0x80
      005750 12 5E 2E         [24] 7313 	lcall	_printstr
                                   7314 ;	calc.c:409: printstr("q\tquit\r\n");
      005753 90 81 8C         [24] 7315 	mov	dptr,#___str_50
      005756 75 F0 80         [24] 7316 	mov	b,#0x80
      005759 12 5E 2E         [24] 7317 	lcall	_printstr
                                   7318 ;	calc.c:411: return 1;
      00575C 90 00 01         [24] 7319 	mov	dptr,#0x0001
                                   7320 ;	calc.c:412: }
      00575F D0 08            [24] 7321 	pop	_bp
      005761 22               [24] 7322 	ret
                                   7323 ;------------------------------------------------------------
                                   7324 ;Allocation info for local variables in function 'main'
                                   7325 ;------------------------------------------------------------
                                   7326 ;input                     Allocated to registers r6 r7 
                                   7327 ;------------------------------------------------------------
                                   7328 ;	calc.c:442: void main(void) {
                                   7329 ;	-----------------------------------------
                                   7330 ;	 function main
                                   7331 ;	-----------------------------------------
      005762                       7332 _main:
                                   7333 ;	calc.c:445: giant = 0;
      005762 78 09            [12] 7334 	mov	r0,#_giant
      005764 76 00            [12] 7335 	mov	@r0,#0x00
                                   7336 ;	calc.c:447: c.base = 10;
      005766 90 A0 0C         [24] 7337 	mov	dptr,#_c
      005769 74 0A            [12] 7338 	mov	a,#0x0a
      00576B F0               [24] 7339 	movx	@dptr,a
      00576C E4               [12] 7340 	clr	a
      00576D A3               [24] 7341 	inc	dptr
      00576E F0               [24] 7342 	movx	@dptr,a
                                   7343 ;	calc.c:448: c.acc = 0l;
      00576F 90 A0 0E         [24] 7344 	mov	dptr,#(_c + 0x0002)
      005772 F0               [24] 7345 	movx	@dptr,a
      005773 A3               [24] 7346 	inc	dptr
      005774 F0               [24] 7347 	movx	@dptr,a
      005775 A3               [24] 7348 	inc	dptr
      005776 F0               [24] 7349 	movx	@dptr,a
      005777 A3               [24] 7350 	inc	dptr
      005778 F0               [24] 7351 	movx	@dptr,a
                                   7352 ;	calc.c:449: c.acc_valid = (char)0;
      005779 90 A0 12         [24] 7353 	mov	dptr,#(_c + 0x0006)
      00577C F0               [24] 7354 	movx	@dptr,a
                                   7355 ;	calc.c:450: c.digit[0] = c.digit[1] = '\0';
      00577D 90 A0 14         [24] 7356 	mov	dptr,#(_c + 0x0008)
      005780 F0               [24] 7357 	movx	@dptr,a
      005781 90 A0 13         [24] 7358 	mov	dptr,#(_c + 0x0007)
      005784 F0               [24] 7359 	movx	@dptr,a
                                   7360 ;	calc.c:452: c.ps = &c.s0;
      005785 90 E0 1D         [24] 7361 	mov	dptr,#(_c + 0x4011)
      005788 74 15            [12] 7362 	mov	a,#(_c + 0x0009)
      00578A F0               [24] 7363 	movx	@dptr,a
      00578B 74 A0            [12] 7364 	mov	a,#((_c + 0x0009) >> 8)
      00578D A3               [24] 7365 	inc	dptr
      00578E F0               [24] 7366 	movx	@dptr,a
      00578F E4               [12] 7367 	clr	a
      005790 A3               [24] 7368 	inc	dptr
      005791 F0               [24] 7369 	movx	@dptr,a
                                   7370 ;	calc.c:453: c.ss = &c.s1;
      005792 90 E0 20         [24] 7371 	mov	dptr,#(_c + 0x4014)
      005795 74 19            [12] 7372 	mov	a,#(_c + 0x200d)
      005797 F0               [24] 7373 	movx	@dptr,a
      005798 74 C0            [12] 7374 	mov	a,#((_c + 0x200d) >> 8)
      00579A A3               [24] 7375 	inc	dptr
      00579B F0               [24] 7376 	movx	@dptr,a
      00579C E4               [12] 7377 	clr	a
      00579D A3               [24] 7378 	inc	dptr
      00579E F0               [24] 7379 	movx	@dptr,a
                                   7380 ;	calc.c:454: stack_init(c.ps);
      00579F 90 A0 15         [24] 7381 	mov	dptr,#(_c + 0x0009)
      0057A2 75 F0 00         [24] 7382 	mov	b,#0x00
      0057A5 12 26 80         [24] 7383 	lcall	_stack_init
                                   7384 ;	calc.c:455: stack_init(c.ss);
      0057A8 90 E0 20         [24] 7385 	mov	dptr,#(_c + 0x4014)
      0057AB E0               [24] 7386 	movx	a,@dptr
      0057AC FD               [12] 7387 	mov	r5,a
      0057AD A3               [24] 7388 	inc	dptr
      0057AE E0               [24] 7389 	movx	a,@dptr
      0057AF FE               [12] 7390 	mov	r6,a
      0057B0 A3               [24] 7391 	inc	dptr
      0057B1 E0               [24] 7392 	movx	a,@dptr
      0057B2 FF               [12] 7393 	mov	r7,a
      0057B3 8D 82            [24] 7394 	mov	dpl,r5
      0057B5 8E 83            [24] 7395 	mov	dph,r6
      0057B7 8F F0            [24] 7396 	mov	b,r7
      0057B9 12 26 80         [24] 7397 	lcall	_stack_init
                                   7398 ;	calc.c:457: state_init(&s, STATE_START, STATE_FINAL, UNDEF, deltas, &c);
      0057BC 74 0C            [12] 7399 	mov	a,#_c
      0057BE C0 E0            [24] 7400 	push	acc
      0057C0 74 A0            [12] 7401 	mov	a,#(_c >> 8)
      0057C2 C0 E0            [24] 7402 	push	acc
      0057C4 E4               [12] 7403 	clr	a
      0057C5 C0 E0            [24] 7404 	push	acc
      0057C7 74 25            [12] 7405 	mov	a,#_deltas
      0057C9 C0 E0            [24] 7406 	push	acc
      0057CB 74 E0            [12] 7407 	mov	a,#(_deltas >> 8)
      0057CD C0 E0            [24] 7408 	push	acc
      0057CF E4               [12] 7409 	clr	a
      0057D0 C0 E0            [24] 7410 	push	acc
      0057D2 C0 E0            [24] 7411 	push	acc
      0057D4 74 80            [12] 7412 	mov	a,#0x80
      0057D6 C0 E0            [24] 7413 	push	acc
      0057D8 74 03            [12] 7414 	mov	a,#0x03
      0057DA C0 E0            [24] 7415 	push	acc
      0057DC E4               [12] 7416 	clr	a
      0057DD C0 E0            [24] 7417 	push	acc
      0057DF C0 E0            [24] 7418 	push	acc
      0057E1 C0 E0            [24] 7419 	push	acc
      0057E3 90 A0 00         [24] 7420 	mov	dptr,#_s
      0057E6 75 F0 00         [24] 7421 	mov	b,#0x00
      0057E9 12 20 90         [24] 7422 	lcall	_state_init
      0057EC E5 81            [12] 7423 	mov	a,sp
      0057EE 24 F4            [12] 7424 	add	a,#0xf4
      0057F0 F5 81            [12] 7425 	mov	sp,a
                                   7426 ;	calc.c:459: (void)status(&c, deltas);
      0057F2 74 25            [12] 7427 	mov	a,#_deltas
      0057F4 C0 E0            [24] 7428 	push	acc
      0057F6 74 E0            [12] 7429 	mov	a,#(_deltas >> 8)
      0057F8 C0 E0            [24] 7430 	push	acc
      0057FA E4               [12] 7431 	clr	a
      0057FB C0 E0            [24] 7432 	push	acc
      0057FD 90 A0 0C         [24] 7433 	mov	dptr,#_c
      005800 75 F0 00         [24] 7434 	mov	b,#0x00
      005803 12 51 12         [24] 7435 	lcall	_status
      005806 15 81            [12] 7436 	dec	sp
      005808 15 81            [12] 7437 	dec	sp
      00580A 15 81            [12] 7438 	dec	sp
                                   7439 ;	calc.c:461: while (1) {
      00580C                       7440 00192$:
                                   7441 ;	calc.c:462: input = getchar();
      00580C 12 5E 07         [24] 7442 	lcall	_getchar
      00580F AE 82            [24] 7443 	mov	r6,dpl
      005811 AF 83            [24] 7444 	mov	r7,dph
                                   7445 ;	calc.c:463: if (((char)input == '\r') || ((char)input == '\n')) printstr("\r\n");
      005813 8E 05            [24] 7446 	mov	ar5,r6
      005815 BD 0D 02         [24] 7447 	cjne	r5,#0x0d,00372$
      005818 80 03            [24] 7448 	sjmp	00101$
      00581A                       7449 00372$:
      00581A BD 0A 17         [24] 7450 	cjne	r5,#0x0a,00102$
      00581D                       7451 00101$:
      00581D 90 7E 04         [24] 7452 	mov	dptr,#___str_2
      005820 75 F0 80         [24] 7453 	mov	b,#0x80
      005823 C0 07            [24] 7454 	push	ar7
      005825 C0 06            [24] 7455 	push	ar6
      005827 C0 05            [24] 7456 	push	ar5
      005829 12 5E 2E         [24] 7457 	lcall	_printstr
      00582C D0 05            [24] 7458 	pop	ar5
      00582E D0 06            [24] 7459 	pop	ar6
      005830 D0 07            [24] 7460 	pop	ar7
      005832 80 13            [24] 7461 	sjmp	00103$
      005834                       7462 00102$:
                                   7463 ;	calc.c:464: else (void)putchar(input);
      005834 8E 82            [24] 7464 	mov	dpl,r6
      005836 8F 83            [24] 7465 	mov	dph,r7
      005838 C0 07            [24] 7466 	push	ar7
      00583A C0 06            [24] 7467 	push	ar6
      00583C C0 05            [24] 7468 	push	ar5
      00583E 12 5D FD         [24] 7469 	lcall	_putchar
      005841 D0 05            [24] 7470 	pop	ar5
      005843 D0 06            [24] 7471 	pop	ar6
      005845 D0 07            [24] 7472 	pop	ar7
      005847                       7473 00103$:
                                   7474 ;	calc.c:465: c.digit[0] = (char)input;
      005847 90 A0 13         [24] 7475 	mov	dptr,#(_c + 0x0007)
      00584A ED               [12] 7476 	mov	a,r5
      00584B F0               [24] 7477 	movx	@dptr,a
                                   7478 ;	calc.c:467: if ((char)input == 'q') {
      00584C BD 71 29         [24] 7479 	cjne	r5,#0x71,00189$
                                   7480 ;	calc.c:468: if (state_exec(&s, EVENT_TERM) <= 0) break;
      00584F 74 08            [12] 7481 	mov	a,#0x08
      005851 C0 E0            [24] 7482 	push	acc
      005853 E4               [12] 7483 	clr	a
      005854 C0 E0            [24] 7484 	push	acc
      005856 90 A0 00         [24] 7485 	mov	dptr,#_s
      005859 75 F0 00         [24] 7486 	mov	b,#0x00
      00585C 12 21 46         [24] 7487 	lcall	_state_exec
      00585F AB 82            [24] 7488 	mov	r3,dpl
      005861 AC 83            [24] 7489 	mov	r4,dph
      005863 15 81            [12] 7490 	dec	sp
      005865 15 81            [12] 7491 	dec	sp
      005867 C3               [12] 7492 	clr	c
      005868 E4               [12] 7493 	clr	a
      005869 9B               [12] 7494 	subb	a,r3
      00586A 74 80            [12] 7495 	mov	a,#(0x00 ^ 0x80)
      00586C 8C F0            [24] 7496 	mov	b,r4
      00586E 63 F0 80         [24] 7497 	xrl	b,#0x80
      005871 95 F0            [12] 7498 	subb	a,b
      005873 40 97            [24] 7499 	jc	00192$
      005875 02 5B 27         [24] 7500 	ljmp	00193$
      005878                       7501 00189$:
                                   7502 ;	calc.c:469: } else if ((char)input == 's') {
      005878 BD 73 2C         [24] 7503 	cjne	r5,#0x73,00186$
                                   7504 ;	calc.c:470: if (state_exec(&s, EVENT_STATUS) <= 0) break;
      00587B 74 03            [12] 7505 	mov	a,#0x03
      00587D C0 E0            [24] 7506 	push	acc
      00587F E4               [12] 7507 	clr	a
      005880 C0 E0            [24] 7508 	push	acc
      005882 90 A0 00         [24] 7509 	mov	dptr,#_s
      005885 75 F0 00         [24] 7510 	mov	b,#0x00
      005888 12 21 46         [24] 7511 	lcall	_state_exec
      00588B AB 82            [24] 7512 	mov	r3,dpl
      00588D AC 83            [24] 7513 	mov	r4,dph
      00588F 15 81            [12] 7514 	dec	sp
      005891 15 81            [12] 7515 	dec	sp
      005893 C3               [12] 7516 	clr	c
      005894 E4               [12] 7517 	clr	a
      005895 9B               [12] 7518 	subb	a,r3
      005896 74 80            [12] 7519 	mov	a,#(0x00 ^ 0x80)
      005898 8C F0            [24] 7520 	mov	b,r4
      00589A 63 F0 80         [24] 7521 	xrl	b,#0x80
      00589D 95 F0            [12] 7522 	subb	a,b
      00589F 50 03            [24] 7523 	jnc	00380$
      0058A1 02 58 0C         [24] 7524 	ljmp	00192$
      0058A4                       7525 00380$:
      0058A4 02 5B 27         [24] 7526 	ljmp	00193$
      0058A7                       7527 00186$:
                                   7528 ;	calc.c:471: } else if ((char)input == '?') {
      0058A7 BD 3F 2C         [24] 7529 	cjne	r5,#0x3f,00183$
                                   7530 ;	calc.c:472: if (state_exec(&s, EVENT_HELP) <= 0) break;
      0058AA 74 04            [12] 7531 	mov	a,#0x04
      0058AC C0 E0            [24] 7532 	push	acc
      0058AE E4               [12] 7533 	clr	a
      0058AF C0 E0            [24] 7534 	push	acc
      0058B1 90 A0 00         [24] 7535 	mov	dptr,#_s
      0058B4 75 F0 00         [24] 7536 	mov	b,#0x00
      0058B7 12 21 46         [24] 7537 	lcall	_state_exec
      0058BA AB 82            [24] 7538 	mov	r3,dpl
      0058BC AC 83            [24] 7539 	mov	r4,dph
      0058BE 15 81            [12] 7540 	dec	sp
      0058C0 15 81            [12] 7541 	dec	sp
      0058C2 C3               [12] 7542 	clr	c
      0058C3 E4               [12] 7543 	clr	a
      0058C4 9B               [12] 7544 	subb	a,r3
      0058C5 74 80            [12] 7545 	mov	a,#(0x00 ^ 0x80)
      0058C7 8C F0            [24] 7546 	mov	b,r4
      0058C9 63 F0 80         [24] 7547 	xrl	b,#0x80
      0058CC 95 F0            [12] 7548 	subb	a,b
      0058CE 50 03            [24] 7549 	jnc	00383$
      0058D0 02 58 0C         [24] 7550 	ljmp	00192$
      0058D3                       7551 00383$:
      0058D3 02 5B 27         [24] 7552 	ljmp	00193$
      0058D6                       7553 00183$:
                                   7554 ;	calc.c:473: } else if ((char)input == 'i') {
      0058D6 BD 69 2C         [24] 7555 	cjne	r5,#0x69,00180$
                                   7556 ;	calc.c:474: if (state_exec(&s, EVENT_RSTA_i) <= 0) break;
      0058D9 74 06            [12] 7557 	mov	a,#0x06
      0058DB C0 E0            [24] 7558 	push	acc
      0058DD E4               [12] 7559 	clr	a
      0058DE C0 E0            [24] 7560 	push	acc
      0058E0 90 A0 00         [24] 7561 	mov	dptr,#_s
      0058E3 75 F0 00         [24] 7562 	mov	b,#0x00
      0058E6 12 21 46         [24] 7563 	lcall	_state_exec
      0058E9 AB 82            [24] 7564 	mov	r3,dpl
      0058EB AC 83            [24] 7565 	mov	r4,dph
      0058ED 15 81            [12] 7566 	dec	sp
      0058EF 15 81            [12] 7567 	dec	sp
      0058F1 C3               [12] 7568 	clr	c
      0058F2 E4               [12] 7569 	clr	a
      0058F3 9B               [12] 7570 	subb	a,r3
      0058F4 74 80            [12] 7571 	mov	a,#(0x00 ^ 0x80)
      0058F6 8C F0            [24] 7572 	mov	b,r4
      0058F8 63 F0 80         [24] 7573 	xrl	b,#0x80
      0058FB 95 F0            [12] 7574 	subb	a,b
      0058FD 50 03            [24] 7575 	jnc	00386$
      0058FF 02 58 0C         [24] 7576 	ljmp	00192$
      005902                       7577 00386$:
      005902 02 5B 27         [24] 7578 	ljmp	00193$
      005905                       7579 00180$:
                                   7580 ;	calc.c:475: } else if ((char)input == 'I') {
      005905 BD 49 2C         [24] 7581 	cjne	r5,#0x49,00177$
                                   7582 ;	calc.c:476: if (state_exec(&s, EVENT_RSTA_I) <= 0) break;
      005908 74 07            [12] 7583 	mov	a,#0x07
      00590A C0 E0            [24] 7584 	push	acc
      00590C E4               [12] 7585 	clr	a
      00590D C0 E0            [24] 7586 	push	acc
      00590F 90 A0 00         [24] 7587 	mov	dptr,#_s
      005912 75 F0 00         [24] 7588 	mov	b,#0x00
      005915 12 21 46         [24] 7589 	lcall	_state_exec
      005918 AB 82            [24] 7590 	mov	r3,dpl
      00591A AC 83            [24] 7591 	mov	r4,dph
      00591C 15 81            [12] 7592 	dec	sp
      00591E 15 81            [12] 7593 	dec	sp
      005920 C3               [12] 7594 	clr	c
      005921 E4               [12] 7595 	clr	a
      005922 9B               [12] 7596 	subb	a,r3
      005923 74 80            [12] 7597 	mov	a,#(0x00 ^ 0x80)
      005925 8C F0            [24] 7598 	mov	b,r4
      005927 63 F0 80         [24] 7599 	xrl	b,#0x80
      00592A 95 F0            [12] 7600 	subb	a,b
      00592C 50 03            [24] 7601 	jnc	00389$
      00592E 02 58 0C         [24] 7602 	ljmp	00192$
      005931                       7603 00389$:
      005931 02 5B 27         [24] 7604 	ljmp	00193$
      005934                       7605 00177$:
                                   7606 ;	calc.c:478: ((char)input == 'h') || ((char)input == 'H') ||
      005934 BD 68 02         [24] 7607 	cjne	r5,#0x68,00390$
      005937 80 0D            [24] 7608 	sjmp	00170$
      005939                       7609 00390$:
      005939 BD 48 02         [24] 7610 	cjne	r5,#0x48,00391$
      00593C 80 08            [24] 7611 	sjmp	00170$
      00593E                       7612 00391$:
                                   7613 ;	calc.c:479: ((char)input == 'o') || ((char)input == 'O')
      00593E BD 6F 02         [24] 7614 	cjne	r5,#0x6f,00392$
      005941 80 03            [24] 7615 	sjmp	00170$
      005943                       7616 00392$:
      005943 BD 4F 2C         [24] 7617 	cjne	r5,#0x4f,00171$
      005946                       7618 00170$:
                                   7619 ;	calc.c:481: if (state_exec(&s, EVENT_BASE) <= 0) break;
      005946 74 05            [12] 7620 	mov	a,#0x05
      005948 C0 E0            [24] 7621 	push	acc
      00594A E4               [12] 7622 	clr	a
      00594B C0 E0            [24] 7623 	push	acc
      00594D 90 A0 00         [24] 7624 	mov	dptr,#_s
      005950 75 F0 00         [24] 7625 	mov	b,#0x00
      005953 12 21 46         [24] 7626 	lcall	_state_exec
      005956 AB 82            [24] 7627 	mov	r3,dpl
      005958 AC 83            [24] 7628 	mov	r4,dph
      00595A 15 81            [12] 7629 	dec	sp
      00595C 15 81            [12] 7630 	dec	sp
      00595E C3               [12] 7631 	clr	c
      00595F E4               [12] 7632 	clr	a
      005960 9B               [12] 7633 	subb	a,r3
      005961 74 80            [12] 7634 	mov	a,#(0x00 ^ 0x80)
      005963 8C F0            [24] 7635 	mov	b,r4
      005965 63 F0 80         [24] 7636 	xrl	b,#0x80
      005968 95 F0            [12] 7637 	subb	a,b
      00596A 50 03            [24] 7638 	jnc	00395$
      00596C 02 58 0C         [24] 7639 	ljmp	00192$
      00596F                       7640 00395$:
      00596F 02 5B 27         [24] 7641 	ljmp	00193$
      005972                       7642 00171$:
                                   7643 ;	calc.c:482: } else if (isxdigit(input)) {
      005972 8E 82            [24] 7644 	mov	dpl,r6
      005974 8F 83            [24] 7645 	mov	dph,r7
      005976 C0 05            [24] 7646 	push	ar5
      005978 12 5B 34         [24] 7647 	lcall	_isxdigit
      00597B E5 82            [12] 7648 	mov	a,dpl
      00597D 85 83 F0         [24] 7649 	mov	b,dph
      005980 D0 05            [24] 7650 	pop	ar5
      005982 45 F0            [12] 7651 	orl	a,b
      005984 60 2C            [24] 7652 	jz	00168$
                                   7653 ;	calc.c:483: if (state_exec(&s, EVENT_DIGIT) <= 0) break;
      005986 74 01            [12] 7654 	mov	a,#0x01
      005988 C0 E0            [24] 7655 	push	acc
      00598A E4               [12] 7656 	clr	a
      00598B C0 E0            [24] 7657 	push	acc
      00598D 90 A0 00         [24] 7658 	mov	dptr,#_s
      005990 75 F0 00         [24] 7659 	mov	b,#0x00
      005993 12 21 46         [24] 7660 	lcall	_state_exec
      005996 AE 82            [24] 7661 	mov	r6,dpl
      005998 AF 83            [24] 7662 	mov	r7,dph
      00599A 15 81            [12] 7663 	dec	sp
      00599C 15 81            [12] 7664 	dec	sp
      00599E C3               [12] 7665 	clr	c
      00599F E4               [12] 7666 	clr	a
      0059A0 9E               [12] 7667 	subb	a,r6
      0059A1 74 80            [12] 7668 	mov	a,#(0x00 ^ 0x80)
      0059A3 8F F0            [24] 7669 	mov	b,r7
      0059A5 63 F0 80         [24] 7670 	xrl	b,#0x80
      0059A8 95 F0            [12] 7671 	subb	a,b
      0059AA 50 03            [24] 7672 	jnc	00397$
      0059AC 02 58 0C         [24] 7673 	ljmp	00192$
      0059AF                       7674 00397$:
      0059AF 02 5B 27         [24] 7675 	ljmp	00193$
      0059B2                       7676 00168$:
                                   7677 ;	calc.c:485: ((char)input == 'p') || ((char)input == 'P') ||
      0059B2 BD 70 02         [24] 7678 	cjne	r5,#0x70,00398$
      0059B5 80 17            [24] 7679 	sjmp	00159$
      0059B7                       7680 00398$:
      0059B7 BD 50 02         [24] 7681 	cjne	r5,#0x50,00399$
      0059BA 80 12            [24] 7682 	sjmp	00159$
      0059BC                       7683 00399$:
                                   7684 ;	calc.c:486: ((char)input == 'v') || ((char)input == 'V') ||
      0059BC BD 76 02         [24] 7685 	cjne	r5,#0x76,00400$
      0059BF 80 0D            [24] 7686 	sjmp	00159$
      0059C1                       7687 00400$:
      0059C1 BD 56 02         [24] 7688 	cjne	r5,#0x56,00401$
      0059C4 80 08            [24] 7689 	sjmp	00159$
      0059C6                       7690 00401$:
                                   7691 ;	calc.c:487: ((char)input == '.') ||
      0059C6 BD 2E 02         [24] 7692 	cjne	r5,#0x2e,00402$
      0059C9 80 03            [24] 7693 	sjmp	00159$
      0059CB                       7694 00402$:
                                   7695 ;	calc.c:488: ((char)input == 'x')
      0059CB BD 78 2C         [24] 7696 	cjne	r5,#0x78,00160$
      0059CE                       7697 00159$:
                                   7698 ;	calc.c:490: if (state_exec(&s, EVENT_OP) <= 0) break;
      0059CE 74 02            [12] 7699 	mov	a,#0x02
      0059D0 C0 E0            [24] 7700 	push	acc
      0059D2 E4               [12] 7701 	clr	a
      0059D3 C0 E0            [24] 7702 	push	acc
      0059D5 90 A0 00         [24] 7703 	mov	dptr,#_s
      0059D8 75 F0 00         [24] 7704 	mov	b,#0x00
      0059DB 12 21 46         [24] 7705 	lcall	_state_exec
      0059DE AE 82            [24] 7706 	mov	r6,dpl
      0059E0 AF 83            [24] 7707 	mov	r7,dph
      0059E2 15 81            [12] 7708 	dec	sp
      0059E4 15 81            [12] 7709 	dec	sp
      0059E6 C3               [12] 7710 	clr	c
      0059E7 E4               [12] 7711 	clr	a
      0059E8 9E               [12] 7712 	subb	a,r6
      0059E9 74 80            [12] 7713 	mov	a,#(0x00 ^ 0x80)
      0059EB 8F F0            [24] 7714 	mov	b,r7
      0059ED 63 F0 80         [24] 7715 	xrl	b,#0x80
      0059F0 95 F0            [12] 7716 	subb	a,b
      0059F2 50 03            [24] 7717 	jnc	00405$
      0059F4 02 58 0C         [24] 7718 	ljmp	00192$
      0059F7                       7719 00405$:
      0059F7 02 5B 27         [24] 7720 	ljmp	00193$
      0059FA                       7721 00160$:
                                   7722 ;	calc.c:492: ((char)input == 'X') || ((char)input == 'T') ||
      0059FA BD 58 02         [24] 7723 	cjne	r5,#0x58,00406$
      0059FD 80 17            [24] 7724 	sjmp	00151$
      0059FF                       7725 00406$:
      0059FF BD 54 02         [24] 7726 	cjne	r5,#0x54,00407$
      005A02 80 12            [24] 7727 	sjmp	00151$
      005A04                       7728 00407$:
                                   7729 ;	calc.c:493: ((char)input == 'm') || ((char)input == 'M') ||
      005A04 BD 6D 02         [24] 7730 	cjne	r5,#0x6d,00408$
      005A07 80 0D            [24] 7731 	sjmp	00151$
      005A09                       7732 00408$:
      005A09 BD 4D 02         [24] 7733 	cjne	r5,#0x4d,00409$
      005A0C 80 08            [24] 7734 	sjmp	00151$
      005A0E                       7735 00409$:
                                   7736 ;	calc.c:494: ((char)input == 'u') || ((char)input == 'U')
      005A0E BD 75 02         [24] 7737 	cjne	r5,#0x75,00410$
      005A11 80 03            [24] 7738 	sjmp	00151$
      005A13                       7739 00410$:
      005A13 BD 55 2C         [24] 7740 	cjne	r5,#0x55,00152$
      005A16                       7741 00151$:
                                   7742 ;	calc.c:496: if (state_exec(&s, EVENT_OP) <= 0) break;
      005A16 74 02            [12] 7743 	mov	a,#0x02
      005A18 C0 E0            [24] 7744 	push	acc
      005A1A E4               [12] 7745 	clr	a
      005A1B C0 E0            [24] 7746 	push	acc
      005A1D 90 A0 00         [24] 7747 	mov	dptr,#_s
      005A20 75 F0 00         [24] 7748 	mov	b,#0x00
      005A23 12 21 46         [24] 7749 	lcall	_state_exec
      005A26 AE 82            [24] 7750 	mov	r6,dpl
      005A28 AF 83            [24] 7751 	mov	r7,dph
      005A2A 15 81            [12] 7752 	dec	sp
      005A2C 15 81            [12] 7753 	dec	sp
      005A2E C3               [12] 7754 	clr	c
      005A2F E4               [12] 7755 	clr	a
      005A30 9E               [12] 7756 	subb	a,r6
      005A31 74 80            [12] 7757 	mov	a,#(0x00 ^ 0x80)
      005A33 8F F0            [24] 7758 	mov	b,r7
      005A35 63 F0 80         [24] 7759 	xrl	b,#0x80
      005A38 95 F0            [12] 7760 	subb	a,b
      005A3A 50 03            [24] 7761 	jnc	00413$
      005A3C 02 58 0C         [24] 7762 	ljmp	00192$
      005A3F                       7763 00413$:
      005A3F 02 5B 27         [24] 7764 	ljmp	00193$
      005A42                       7765 00152$:
                                   7766 ;	calc.c:498: ((char)input == '+') || ((char)input == '-')
      005A42 BD 2B 02         [24] 7767 	cjne	r5,#0x2b,00414$
      005A45 80 03            [24] 7768 	sjmp	00147$
      005A47                       7769 00414$:
      005A47 BD 2D 2C         [24] 7770 	cjne	r5,#0x2d,00148$
      005A4A                       7771 00147$:
                                   7772 ;	calc.c:500: if (state_exec(&s, EVENT_OP) <= 0) break;
      005A4A 74 02            [12] 7773 	mov	a,#0x02
      005A4C C0 E0            [24] 7774 	push	acc
      005A4E E4               [12] 7775 	clr	a
      005A4F C0 E0            [24] 7776 	push	acc
      005A51 90 A0 00         [24] 7777 	mov	dptr,#_s
      005A54 75 F0 00         [24] 7778 	mov	b,#0x00
      005A57 12 21 46         [24] 7779 	lcall	_state_exec
      005A5A AE 82            [24] 7780 	mov	r6,dpl
      005A5C AF 83            [24] 7781 	mov	r7,dph
      005A5E 15 81            [12] 7782 	dec	sp
      005A60 15 81            [12] 7783 	dec	sp
      005A62 C3               [12] 7784 	clr	c
      005A63 E4               [12] 7785 	clr	a
      005A64 9E               [12] 7786 	subb	a,r6
      005A65 74 80            [12] 7787 	mov	a,#(0x00 ^ 0x80)
      005A67 8F F0            [24] 7788 	mov	b,r7
      005A69 63 F0 80         [24] 7789 	xrl	b,#0x80
      005A6C 95 F0            [12] 7790 	subb	a,b
      005A6E 50 03            [24] 7791 	jnc	00417$
      005A70 02 58 0C         [24] 7792 	ljmp	00192$
      005A73                       7793 00417$:
      005A73 02 5B 27         [24] 7794 	ljmp	00193$
      005A76                       7795 00148$:
                                   7796 ;	calc.c:502: ((char)input == '*') ||
      005A76 BD 2A 02         [24] 7797 	cjne	r5,#0x2a,00418$
      005A79 80 12            [24] 7798 	sjmp	00140$
      005A7B                       7799 00418$:
                                   7800 ;	calc.c:503: ((char)input == '/') || ((char)input == '\\') ||
      005A7B BD 2F 02         [24] 7801 	cjne	r5,#0x2f,00419$
      005A7E 80 0D            [24] 7802 	sjmp	00140$
      005A80                       7803 00419$:
      005A80 BD 5C 02         [24] 7804 	cjne	r5,#0x5c,00420$
      005A83 80 08            [24] 7805 	sjmp	00140$
      005A85                       7806 00420$:
                                   7807 ;	calc.c:504: ((char)input == '%') || ((char)input == '#')
      005A85 BD 25 02         [24] 7808 	cjne	r5,#0x25,00421$
      005A88 80 03            [24] 7809 	sjmp	00140$
      005A8A                       7810 00421$:
      005A8A BD 23 29         [24] 7811 	cjne	r5,#0x23,00141$
      005A8D                       7812 00140$:
                                   7813 ;	calc.c:506: if (state_exec(&s, EVENT_OP) <= 0) break;
      005A8D 74 02            [12] 7814 	mov	a,#0x02
      005A8F C0 E0            [24] 7815 	push	acc
      005A91 E4               [12] 7816 	clr	a
      005A92 C0 E0            [24] 7817 	push	acc
      005A94 90 A0 00         [24] 7818 	mov	dptr,#_s
      005A97 75 F0 00         [24] 7819 	mov	b,#0x00
      005A9A 12 21 46         [24] 7820 	lcall	_state_exec
      005A9D AE 82            [24] 7821 	mov	r6,dpl
      005A9F AF 83            [24] 7822 	mov	r7,dph
      005AA1 15 81            [12] 7823 	dec	sp
      005AA3 15 81            [12] 7824 	dec	sp
      005AA5 C3               [12] 7825 	clr	c
      005AA6 E4               [12] 7826 	clr	a
      005AA7 9E               [12] 7827 	subb	a,r6
      005AA8 74 80            [12] 7828 	mov	a,#(0x00 ^ 0x80)
      005AAA 8F F0            [24] 7829 	mov	b,r7
      005AAC 63 F0 80         [24] 7830 	xrl	b,#0x80
      005AAF 95 F0            [12] 7831 	subb	a,b
      005AB1 50 74            [24] 7832 	jnc	00193$
      005AB3 02 58 0C         [24] 7833 	ljmp	00192$
      005AB6                       7834 00141$:
                                   7835 ;	calc.c:508: ((char)input == '&') ||
      005AB6 BD 26 02         [24] 7836 	cjne	r5,#0x26,00425$
      005AB9 80 1C            [24] 7837 	sjmp	00131$
      005ABB                       7838 00425$:
                                   7839 ;	calc.c:509: ((char)input == '|') || ((char)input == '^') ||
      005ABB BD 7C 02         [24] 7840 	cjne	r5,#0x7c,00426$
      005ABE 80 17            [24] 7841 	sjmp	00131$
      005AC0                       7842 00426$:
      005AC0 BD 5E 02         [24] 7843 	cjne	r5,#0x5e,00427$
      005AC3 80 12            [24] 7844 	sjmp	00131$
      005AC5                       7845 00427$:
                                   7846 ;	calc.c:510: ((char)input == '~') ||
      005AC5 BD 7E 02         [24] 7847 	cjne	r5,#0x7e,00428$
      005AC8 80 0D            [24] 7848 	sjmp	00131$
      005ACA                       7849 00428$:
                                   7850 ;	calc.c:511: ((char)input == '>') || ((char)input == ']') ||
      005ACA BD 3E 02         [24] 7851 	cjne	r5,#0x3e,00429$
      005ACD 80 08            [24] 7852 	sjmp	00131$
      005ACF                       7853 00429$:
      005ACF BD 5D 02         [24] 7854 	cjne	r5,#0x5d,00430$
      005AD2 80 03            [24] 7855 	sjmp	00131$
      005AD4                       7856 00430$:
                                   7857 ;	calc.c:512: ((char)input == '<')
      005AD4 BD 3C 29         [24] 7858 	cjne	r5,#0x3c,00132$
      005AD7                       7859 00131$:
                                   7860 ;	calc.c:514: if (state_exec(&s, EVENT_OP) <= 0) break;
      005AD7 74 02            [12] 7861 	mov	a,#0x02
      005AD9 C0 E0            [24] 7862 	push	acc
      005ADB E4               [12] 7863 	clr	a
      005ADC C0 E0            [24] 7864 	push	acc
      005ADE 90 A0 00         [24] 7865 	mov	dptr,#_s
      005AE1 75 F0 00         [24] 7866 	mov	b,#0x00
      005AE4 12 21 46         [24] 7867 	lcall	_state_exec
      005AE7 AE 82            [24] 7868 	mov	r6,dpl
      005AE9 AF 83            [24] 7869 	mov	r7,dph
      005AEB 15 81            [12] 7870 	dec	sp
      005AED 15 81            [12] 7871 	dec	sp
      005AEF C3               [12] 7872 	clr	c
      005AF0 E4               [12] 7873 	clr	a
      005AF1 9E               [12] 7874 	subb	a,r6
      005AF2 74 80            [12] 7875 	mov	a,#(0x00 ^ 0x80)
      005AF4 8F F0            [24] 7876 	mov	b,r7
      005AF6 63 F0 80         [24] 7877 	xrl	b,#0x80
      005AF9 95 F0            [12] 7878 	subb	a,b
      005AFB 50 2A            [24] 7879 	jnc	00193$
      005AFD 02 58 0C         [24] 7880 	ljmp	00192$
      005B00                       7881 00132$:
                                   7882 ;	calc.c:516: if (state_exec(&s, EVENT_DELIM) <= 0) break;
      005B00 E4               [12] 7883 	clr	a
      005B01 C0 E0            [24] 7884 	push	acc
      005B03 C0 E0            [24] 7885 	push	acc
      005B05 90 A0 00         [24] 7886 	mov	dptr,#_s
      005B08 75 F0 00         [24] 7887 	mov	b,#0x00
      005B0B 12 21 46         [24] 7888 	lcall	_state_exec
      005B0E AE 82            [24] 7889 	mov	r6,dpl
      005B10 AF 83            [24] 7890 	mov	r7,dph
      005B12 15 81            [12] 7891 	dec	sp
      005B14 15 81            [12] 7892 	dec	sp
      005B16 C3               [12] 7893 	clr	c
      005B17 E4               [12] 7894 	clr	a
      005B18 9E               [12] 7895 	subb	a,r6
      005B19 74 80            [12] 7896 	mov	a,#(0x00 ^ 0x80)
      005B1B 8F F0            [24] 7897 	mov	b,r7
      005B1D 63 F0 80         [24] 7898 	xrl	b,#0x80
      005B20 95 F0            [12] 7899 	subb	a,b
      005B22 50 03            [24] 7900 	jnc	00434$
      005B24 02 58 0C         [24] 7901 	ljmp	00192$
      005B27                       7902 00434$:
      005B27                       7903 00193$:
                                   7904 ;	calc.c:520: printstr("TERM\r\n");
      005B27 90 81 95         [24] 7905 	mov	dptr,#___str_51
      005B2A 75 F0 80         [24] 7906 	mov	b,#0x80
      005B2D 12 5E 2E         [24] 7907 	lcall	_printstr
                                   7908 ;	calc.c:522: PCON |= 2;
      005B30 43 87 02         [24] 7909 	orl	_PCON,#0x02
                                   7910 ;	calc.c:524: return;
                                   7911 ;	calc.c:525: }
      005B33 22               [24] 7912 	ret
                                   7913 	.area CSEG    (CODE)
                                   7914 	.area CONST   (CODE)
                                   7915 	.area CONST   (CODE)
      007DF4                       7916 ___str_0:
      007DF4 25 20 31 31 6C 64     7917 	.ascii "% 11ld"
      007DFA 09                    7918 	.db 0x09
      007DFB 00                    7919 	.db 0x00
                                   7920 	.area CSEG    (CODE)
                                   7921 	.area CONST   (CODE)
      007DFC                       7922 ___str_1:
      007DFC 25 30 31 31 6C 6F     7923 	.ascii "%011lo"
      007E02 09                    7924 	.db 0x09
      007E03 00                    7925 	.db 0x00
                                   7926 	.area CSEG    (CODE)
                                   7927 	.area CONST   (CODE)
      007E04                       7928 ___str_2:
      007E04 0D                    7929 	.db 0x0d
      007E05 0A                    7930 	.db 0x0a
      007E06 00                    7931 	.db 0x00
                                   7932 	.area CSEG    (CODE)
                                   7933 	.area CONST   (CODE)
      007E07                       7934 ___str_3:
      007E07 73 74 61 63 6B 20 75  7935 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007E16 0D                    7936 	.db 0x0d
      007E17 0A                    7937 	.db 0x0a
      007E18 00                    7938 	.db 0x00
                                   7939 	.area CSEG    (CODE)
                                   7940 	.area CONST   (CODE)
      007E19                       7941 ___str_4:
      007E19 50 53 50 41           7942 	.ascii "PSPA"
      007E1D 09                    7943 	.db 0x09
      007E1E 00                    7944 	.db 0x00
                                   7945 	.area CSEG    (CODE)
                                   7946 	.area CONST   (CODE)
      007E1F                       7947 ___str_5:
      007E1F 53 53 50 41           7948 	.ascii "SSPA"
      007E23 09                    7949 	.db 0x09
      007E24 00                    7950 	.db 0x00
                                   7951 	.area CSEG    (CODE)
                                   7952 	.area CONST   (CODE)
      007E25                       7953 ___str_6:
      007E25 50 53 56 41           7954 	.ascii "PSVA"
      007E29 09                    7955 	.db 0x09
      007E2A 00                    7956 	.db 0x00
                                   7957 	.area CSEG    (CODE)
                                   7958 	.area CONST   (CODE)
      007E2B                       7959 ___str_7:
      007E2B 50 53 56 54 4F 50     7960 	.ascii "PSVTOP"
      007E31 09                    7961 	.db 0x09
      007E32 00                    7962 	.db 0x00
                                   7963 	.area CSEG    (CODE)
                                   7964 	.area CONST   (CODE)
      007E33                       7965 ___str_8:
      007E33 50 53 50 54 4F 50     7966 	.ascii "PSPTOP"
      007E39 09                    7967 	.db 0x09
      007E3A 00                    7968 	.db 0x00
                                   7969 	.area CSEG    (CODE)
                                   7970 	.area CONST   (CODE)
      007E3B                       7971 ___str_9:
      007E3B 0D                    7972 	.db 0x0d
      007E3C 0A                    7973 	.db 0x0a
      007E3D 73 74 61 63 6B 20 75  7974 	.ascii "stack underflow"
             6E 64 65 72 66 6C 6F
             77
      007E4C 0D                    7975 	.db 0x0d
      007E4D 0A                    7976 	.db 0x0a
      007E4E 00                    7977 	.db 0x00
                                   7978 	.area CSEG    (CODE)
                                   7979 	.area CONST   (CODE)
      007E4F                       7980 ___str_10:
      007E4F 0D                    7981 	.db 0x0d
      007E50 0A                    7982 	.db 0x0a
      007E51 73 65 63 6F 6E 64 61  7983 	.ascii "secondary stack overflow"
             72 79 20 73 74 61 63
             6B 20 6F 76 65 72 66
             6C 6F 77
      007E69 0D                    7984 	.db 0x0d
      007E6A 0A                    7985 	.db 0x0a
      007E6B 00                    7986 	.db 0x00
                                   7987 	.area CSEG    (CODE)
                                   7988 	.area CONST   (CODE)
      007E6C                       7989 ___str_11:
      007E6C 0D                    7990 	.db 0x0d
      007E6D 0A                    7991 	.db 0x0a
      007E6E 73 65 63 6F 6E 64 61  7992 	.ascii "secondary stack underflow"
             72 79 20 73 74 61 63
             6B 20 75 6E 64 65 72
             66 6C 6F 77
      007E87 0D                    7993 	.db 0x0d
      007E88 0A                    7994 	.db 0x0a
      007E89 00                    7995 	.db 0x00
                                   7996 	.area CSEG    (CODE)
                                   7997 	.area CONST   (CODE)
      007E8A                       7998 ___str_12:
      007E8A 0D                    7999 	.db 0x0d
      007E8B 0A                    8000 	.db 0x0a
      007E8C 73 74 61 63 6B 20 6F  8001 	.ascii "stack overflow"
             76 65 72 66 6C 6F 77
      007E9A 0D                    8002 	.db 0x0d
      007E9B 0A                    8003 	.db 0x0a
      007E9C 00                    8004 	.db 0x00
                                   8005 	.area CSEG    (CODE)
                                   8006 	.area CONST   (CODE)
      007E9D                       8007 ___str_13:
      007E9D 0D                    8008 	.db 0x0d
      007E9E 0A                    8009 	.db 0x0a
      007E9F 64 69 76 69 73 69 6F  8010 	.ascii "division by zero"
             6E 20 62 79 20 7A 65
             72 6F
      007EAF 0D                    8011 	.db 0x0d
      007EB0 0A                    8012 	.db 0x0a
      007EB1 00                    8013 	.db 0x00
                                   8014 	.area CSEG    (CODE)
                                   8015 	.area CONST   (CODE)
      007EB2                       8016 ___str_14:
      007EB2 0D                    8017 	.db 0x0d
      007EB3 0A                    8018 	.db 0x0a
      007EB4 50 53 20 3D 20 25 70  8019 	.ascii "PS = %p, SS = %p, base = %d"
             2C 20 53 53 20 3D 20
             25 70 2C 20 62 61 73
             65 20 3D 20 25 64
      007ECF 0D                    8020 	.db 0x0d
      007ED0 0A                    8021 	.db 0x0a
      007ED1 00                    8022 	.db 0x00
                                   8023 	.area CSEG    (CODE)
                                   8024 	.area CONST   (CODE)
      007ED2                       8025 ___str_15:
      007ED2 41 43 43              8026 	.ascii "ACC"
      007ED5 09                    8027 	.db 0x09
      007ED6 00                    8028 	.db 0x00
                                   8029 	.area CSEG    (CODE)
                                   8030 	.area CONST   (CODE)
      007ED7                       8031 ___str_16:
      007ED7 0D                    8032 	.db 0x0d
      007ED8 0A                    8033 	.db 0x0a
      007ED9 50 53 54 4F 50 31     8034 	.ascii "PSTOP1"
      007EDF 09                    8035 	.db 0x09
      007EE0 00                    8036 	.db 0x00
                                   8037 	.area CSEG    (CODE)
                                   8038 	.area CONST   (CODE)
      007EE1                       8039 ___str_17:
      007EE1 0D                    8040 	.db 0x0d
      007EE2 0A                    8041 	.db 0x0a
      007EE3 50 53 54 4F 50 30     8042 	.ascii "PSTOP0"
      007EE9 09                    8043 	.db 0x09
      007EEA 00                    8044 	.db 0x00
                                   8045 	.area CSEG    (CODE)
                                   8046 	.area CONST   (CODE)
      007EEB                       8047 ___str_18:
      007EEB 0D                    8048 	.db 0x0d
      007EEC 0A                    8049 	.db 0x0a
      007EED 53 53 54 4F 50 31     8050 	.ascii "SSTOP1"
      007EF3 09                    8051 	.db 0x09
      007EF4 00                    8052 	.db 0x00
                                   8053 	.area CSEG    (CODE)
                                   8054 	.area CONST   (CODE)
      007EF5                       8055 ___str_19:
      007EF5 0D                    8056 	.db 0x0d
      007EF6 0A                    8057 	.db 0x0a
      007EF7 53 53 54 4F 50 30     8058 	.ascii "SSTOP0"
      007EFD 09                    8059 	.db 0x09
      007EFE 00                    8060 	.db 0x00
                                   8061 	.area CSEG    (CODE)
                                   8062 	.area CONST   (CODE)
      007EFF                       8063 ___str_20:
      007EFF 0D                    8064 	.db 0x0d
      007F00 0A                    8065 	.db 0x0a
      007F01 48 68 4F 6F           8066 	.ascii "HhOo"
      007F05 09                    8067 	.db 0x09
      007F06 62 61 73 65 20 31 36  8068 	.ascii "base 16 10 8 2"
             20 31 30 20 38 20 32
      007F14 0D                    8069 	.db 0x0d
      007F15 0A                    8070 	.db 0x0a
      007F16 00                    8071 	.db 0x00
                                   8072 	.area CSEG    (CODE)
                                   8073 	.area CONST   (CODE)
      007F17                       8074 ___str_21:
      007F17 70 2E                 8075 	.ascii "p."
      007F19 09                    8076 	.db 0x09
      007F1A 70 6F 70 20 74 6F 70  8077 	.ascii "pop top"
      007F21 0D                    8078 	.db 0x0d
      007F22 0A                    8079 	.db 0x0a
      007F23 00                    8080 	.db 0x00
                                   8081 	.area CSEG    (CODE)
                                   8082 	.area CONST   (CODE)
      007F24                       8083 ___str_22:
      007F24 50                    8084 	.ascii "P"
      007F25 09                    8085 	.db 0x09
      007F26 70 6F 70 20 73 74 61  8086 	.ascii "pop stack"
             63 6B
      007F2F 0D                    8087 	.db 0x0d
      007F30 0A                    8088 	.db 0x0a
      007F31 00                    8089 	.db 0x00
                                   8090 	.area CSEG    (CODE)
                                   8091 	.area CONST   (CODE)
      007F32                       8092 ___str_23:
      007F32 76                    8093 	.ascii "v"
      007F33 09                    8094 	.db 0x09
      007F34 70 65 65 6B 20 74 6F  8095 	.ascii "peek top"
             70
      007F3C 0D                    8096 	.db 0x0d
      007F3D 0A                    8097 	.db 0x0a
      007F3E 00                    8098 	.db 0x00
                                   8099 	.area CSEG    (CODE)
                                   8100 	.area CONST   (CODE)
      007F3F                       8101 ___str_24:
      007F3F 56                    8102 	.ascii "V"
      007F40 09                    8103 	.db 0x09
      007F41 70 65 65 6B 20 73 74  8104 	.ascii "peek stack"
             61 63 6B
      007F4B 0D                    8105 	.db 0x0d
      007F4C 0A                    8106 	.db 0x0a
      007F4D 00                    8107 	.db 0x00
                                   8108 	.area CSEG    (CODE)
                                   8109 	.area CONST   (CODE)
      007F4E                       8110 ___str_25:
      007F4E 69                    8111 	.ascii "i"
      007F4F 09                    8112 	.db 0x09
      007F50 72 65 73 65 74 20 61  8113 	.ascii "reset acc"
             63 63
      007F59 0D                    8114 	.db 0x0d
      007F5A 0A                    8115 	.db 0x0a
      007F5B 00                    8116 	.db 0x00
                                   8117 	.area CSEG    (CODE)
                                   8118 	.area CONST   (CODE)
      007F5C                       8119 ___str_26:
      007F5C 49                    8120 	.ascii "I"
      007F5D 09                    8121 	.db 0x09
      007F5E 72 65 73 65 74 20 61  8122 	.ascii "reset and discard acc"
             6E 64 20 64 69 73 63
             61 72 64 20 61 63 63
      007F73 0D                    8123 	.db 0x0d
      007F74 0A                    8124 	.db 0x0a
      007F75 00                    8125 	.db 0x00
                                   8126 	.area CSEG    (CODE)
                                   8127 	.area CONST   (CODE)
      007F76                       8128 ___str_27:
      007F76 78                    8129 	.ascii "x"
      007F77 09                    8130 	.db 0x09
      007F78 65 78 63 68 61 6E 67  8131 	.ascii "exchange top 2"
             65 20 74 6F 70 20 32
      007F86 0D                    8132 	.db 0x0d
      007F87 0A                    8133 	.db 0x0a
      007F88 00                    8134 	.db 0x00
                                   8135 	.area CSEG    (CODE)
                                   8136 	.area CONST   (CODE)
      007F89                       8137 ___str_28:
      007F89 58                    8138 	.ascii "X"
      007F8A 09                    8139 	.db 0x09
      007F8B 65 78 63 68 61 6E 67  8140 	.ascii "exchange stacks primary <-> secondary"
             65 20 73 74 61 63 6B
             73 20 70 72 69 6D 61
             72 79 20 3C 2D 3E 20
             73 65 63 6F 6E 64 61
             72 79
      007FB0 0D                    8141 	.db 0x0d
      007FB1 0A                    8142 	.db 0x0a
      007FB2 00                    8143 	.db 0x00
                                   8144 	.area CSEG    (CODE)
                                   8145 	.area CONST   (CODE)
      007FB3                       8146 ___str_29:
      007FB3 54                    8147 	.ascii "T"
      007FB4 09                    8148 	.db 0x09
      007FB5 65 78 63 68 61 6E 67  8149 	.ascii "exchange tops primary <-> secondary"
             65 20 74 6F 70 73 20
             70 72 69 6D 61 72 79
             20 3C 2D 3E 20 73 65
             63 6F 6E 64 61 72 79
      007FD8 0D                    8150 	.db 0x0d
      007FD9 0A                    8151 	.db 0x0a
      007FDA 00                    8152 	.db 0x00
                                   8153 	.area CSEG    (CODE)
                                   8154 	.area CONST   (CODE)
      007FDB                       8155 ___str_30:
      007FDB 55                    8156 	.ascii "U"
      007FDC 09                    8157 	.db 0x09
      007FDD 63 6F 70 79 20 74 6F  8158 	.ascii "copy top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      007FFA 0D                    8159 	.db 0x0d
      007FFB 0A                    8160 	.db 0x0a
      007FFC 00                    8161 	.db 0x00
                                   8162 	.area CSEG    (CODE)
                                   8163 	.area CONST   (CODE)
      007FFD                       8164 ___str_31:
      007FFD 75                    8165 	.ascii "u"
      007FFE 09                    8166 	.db 0x09
      007FFF 63 6F 70 79 20 74 6F  8167 	.ascii "copy top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      00801C 0D                    8168 	.db 0x0d
      00801D 0A                    8169 	.db 0x0a
      00801E 00                    8170 	.db 0x00
                                   8171 	.area CSEG    (CODE)
                                   8172 	.area CONST   (CODE)
      00801F                       8173 ___str_32:
      00801F 4D                    8174 	.ascii "M"
      008020 09                    8175 	.db 0x09
      008021 6D 6F 76 65 20 74 6F  8176 	.ascii "move top secondary -> primary"
             70 20 73 65 63 6F 6E
             64 61 72 79 20 2D 3E
             20 70 72 69 6D 61 72
             79
      00803E 0D                    8177 	.db 0x0d
      00803F 0A                    8178 	.db 0x0a
      008040 00                    8179 	.db 0x00
                                   8180 	.area CSEG    (CODE)
                                   8181 	.area CONST   (CODE)
      008041                       8182 ___str_33:
      008041 6D                    8183 	.ascii "m"
      008042 09                    8184 	.db 0x09
      008043 6D 6F 76 65 20 74 6F  8185 	.ascii "move top primary -> secondary"
             70 20 70 72 69 6D 61
             72 79 20 2D 3E 20 73
             65 63 6F 6E 64 61 72
             79
      008060 0D                    8186 	.db 0x0d
      008061 0A                    8187 	.db 0x0a
      008062 00                    8188 	.db 0x00
                                   8189 	.area CSEG    (CODE)
                                   8190 	.area CONST   (CODE)
      008063                       8191 ___str_34:
      008063 2B                    8192 	.ascii "+"
      008064 09                    8193 	.db 0x09
      008065 61 64 64 20 74 6F 70  8194 	.ascii "add top 2"
             20 32
      00806E 0D                    8195 	.db 0x0d
      00806F 0A                    8196 	.db 0x0a
      008070 00                    8197 	.db 0x00
                                   8198 	.area CSEG    (CODE)
                                   8199 	.area CONST   (CODE)
      008071                       8200 ___str_35:
      008071 2D                    8201 	.ascii "-"
      008072 09                    8202 	.db 0x09
      008073 73 75 62 74 72 61 63  8203 	.ascii "subtract top 2"
             74 20 74 6F 70 20 32
      008081 0D                    8204 	.db 0x0d
      008082 0A                    8205 	.db 0x0a
      008083 00                    8206 	.db 0x00
                                   8207 	.area CSEG    (CODE)
                                   8208 	.area CONST   (CODE)
      008084                       8209 ___str_36:
      008084 2A                    8210 	.ascii "*"
      008085 09                    8211 	.db 0x09
      008086 6D 75 6C 74 69 70 6C  8212 	.ascii "multiply top 2"
             79 20 74 6F 70 20 32
      008094 0D                    8213 	.db 0x0d
      008095 0A                    8214 	.db 0x0a
      008096 00                    8215 	.db 0x00
                                   8216 	.area CSEG    (CODE)
                                   8217 	.area CONST   (CODE)
      008097                       8218 ___str_37:
      008097 2F                    8219 	.ascii "/"
      008098 09                    8220 	.db 0x09
      008099 64 69 76 69 64 65 20  8221 	.ascii "divide top 2"
             74 6F 70 20 32
      0080A5 0D                    8222 	.db 0x0d
      0080A6 0A                    8223 	.db 0x0a
      0080A7 00                    8224 	.db 0x00
                                   8225 	.area CSEG    (CODE)
                                   8226 	.area CONST   (CODE)
      0080A8                       8227 ___str_38:
      0080A8 5C                    8228 	.db 0x5c
      0080A9 09                    8229 	.db 0x09
      0080AA 64 69 76 69 64 65 20  8230 	.ascii "divide top 2 unsigned"
             74 6F 70 20 32 20 75
             6E 73 69 67 6E 65 64
      0080BF 0D                    8231 	.db 0x0d
      0080C0 0A                    8232 	.db 0x0a
      0080C1 00                    8233 	.db 0x00
                                   8234 	.area CSEG    (CODE)
                                   8235 	.area CONST   (CODE)
      0080C2                       8236 ___str_39:
      0080C2 25                    8237 	.ascii "%"
      0080C3 09                    8238 	.db 0x09
      0080C4 6D 6F 64 75 6C 75 73  8239 	.ascii "modulus top 2"
             20 74 6F 70 20 32
      0080D1 0D                    8240 	.db 0x0d
      0080D2 0A                    8241 	.db 0x0a
      0080D3 00                    8242 	.db 0x00
                                   8243 	.area CSEG    (CODE)
                                   8244 	.area CONST   (CODE)
      0080D4                       8245 ___str_40:
      0080D4 23                    8246 	.ascii "#"
      0080D5 09                    8247 	.db 0x09
      0080D6 6D 6F 64 75 6C 75 73  8248 	.ascii "modulus top 2 unsigned"
             20 74 6F 70 20 32 20
             75 6E 73 69 67 6E 65
             64
      0080EC 0D                    8249 	.db 0x0d
      0080ED 0A                    8250 	.db 0x0a
      0080EE 00                    8251 	.db 0x00
                                   8252 	.area CSEG    (CODE)
                                   8253 	.area CONST   (CODE)
      0080EF                       8254 ___str_41:
      0080EF 26                    8255 	.ascii "&"
      0080F0 09                    8256 	.db 0x09
      0080F1 61 6E 64 20 74 6F 70  8257 	.ascii "and top 2"
             20 32
      0080FA 0D                    8258 	.db 0x0d
      0080FB 0A                    8259 	.db 0x0a
      0080FC 00                    8260 	.db 0x00
                                   8261 	.area CSEG    (CODE)
                                   8262 	.area CONST   (CODE)
      0080FD                       8263 ___str_42:
      0080FD 7C                    8264 	.ascii "|"
      0080FE 09                    8265 	.db 0x09
      0080FF 6F 72 20 74 6F 70 20  8266 	.ascii "or top 2"
             32
      008107 0D                    8267 	.db 0x0d
      008108 0A                    8268 	.db 0x0a
      008109 00                    8269 	.db 0x00
                                   8270 	.area CSEG    (CODE)
                                   8271 	.area CONST   (CODE)
      00810A                       8272 ___str_43:
      00810A 5E                    8273 	.ascii "^"
      00810B 09                    8274 	.db 0x09
      00810C 78 6F 72 20 74 6F 70  8275 	.ascii "xor top 2"
             20 32
      008115 0D                    8276 	.db 0x0d
      008116 0A                    8277 	.db 0x0a
      008117 00                    8278 	.db 0x00
                                   8279 	.area CSEG    (CODE)
                                   8280 	.area CONST   (CODE)
      008118                       8281 ___str_44:
      008118 3E                    8282 	.ascii ">"
      008119 09                    8283 	.db 0x09
      00811A 73 68 69 66 74 20 72  8284 	.ascii "shift right top 2"
             69 67 68 74 20 74 6F
             70 20 32
      00812B 0D                    8285 	.db 0x0d
      00812C 0A                    8286 	.db 0x0a
      00812D 00                    8287 	.db 0x00
                                   8288 	.area CSEG    (CODE)
                                   8289 	.area CONST   (CODE)
      00812E                       8290 ___str_45:
      00812E 5D                    8291 	.ascii "]"
      00812F 09                    8292 	.db 0x09
      008130 61 72 69 74 68 6D 65  8293 	.ascii "arithmetic shift right top 2"
             74 69 63 20 73 68 69
             66 74 20 72 69 67 68
             74 20 74 6F 70 20 32
      00814C 0D                    8294 	.db 0x0d
      00814D 0A                    8295 	.db 0x0a
      00814E 00                    8296 	.db 0x00
                                   8297 	.area CSEG    (CODE)
                                   8298 	.area CONST   (CODE)
      00814F                       8299 ___str_46:
      00814F 3C                    8300 	.ascii "<"
      008150 09                    8301 	.db 0x09
      008151 73 68 69 66 74 20 6C  8302 	.ascii "shift left top 2"
             65 66 74 20 74 6F 70
             20 32
      008161 0D                    8303 	.db 0x0d
      008162 0A                    8304 	.db 0x0a
      008163 00                    8305 	.db 0x00
                                   8306 	.area CSEG    (CODE)
                                   8307 	.area CONST   (CODE)
      008164                       8308 ___str_47:
      008164 7E                    8309 	.ascii "~"
      008165 09                    8310 	.db 0x09
      008166 62 69 74 77 69 73 65  8311 	.ascii "bitwise not top"
             20 6E 6F 74 20 74 6F
             70
      008175 0D                    8312 	.db 0x0d
      008176 0A                    8313 	.db 0x0a
      008177 00                    8314 	.db 0x00
                                   8315 	.area CSEG    (CODE)
                                   8316 	.area CONST   (CODE)
      008178                       8317 ___str_48:
      008178 73                    8318 	.ascii "s"
      008179 09                    8319 	.db 0x09
      00817A 73 74 61 74 75 73     8320 	.ascii "status"
      008180 0D                    8321 	.db 0x0d
      008181 0A                    8322 	.db 0x0a
      008182 00                    8323 	.db 0x00
                                   8324 	.area CSEG    (CODE)
                                   8325 	.area CONST   (CODE)
      008183                       8326 ___str_49:
      008183 3F                    8327 	.ascii "?"
      008184 09                    8328 	.db 0x09
      008185 68 65 6C 70           8329 	.ascii "help"
      008189 0D                    8330 	.db 0x0d
      00818A 0A                    8331 	.db 0x0a
      00818B 00                    8332 	.db 0x00
                                   8333 	.area CSEG    (CODE)
                                   8334 	.area CONST   (CODE)
      00818C                       8335 ___str_50:
      00818C 71                    8336 	.ascii "q"
      00818D 09                    8337 	.db 0x09
      00818E 71 75 69 74           8338 	.ascii "quit"
      008192 0D                    8339 	.db 0x0d
      008193 0A                    8340 	.db 0x0a
      008194 00                    8341 	.db 0x00
                                   8342 	.area CSEG    (CODE)
                                   8343 	.area CONST   (CODE)
      008195                       8344 ___str_51:
      008195 54 45 52 4D           8345 	.ascii "TERM"
      008199 0D                    8346 	.db 0x0d
      00819A 0A                    8347 	.db 0x0a
      00819B 00                    8348 	.db 0x00
                                   8349 	.area CSEG    (CODE)
                                   8350 	.area XINIT   (CODE)
      0081BD                       8351 __xinit__deltas:
      0081BD 00 00                 8352 	.byte #0x00, #0x00	;  0
      0081BF 00 00                 8353 	.byte #0x00, #0x00	;  0
      0081C1 00 00                 8354 	.byte #0x00, #0x00	;  0
      0081C3 00 00                 8355 	.byte #0x00,#0x00
      0081C5 00 00                 8356 	.byte #0x00,#0x00
      0081C7 00 00                 8357 	.byte #0x00, #0x00	;  0
      0081C9 01 00                 8358 	.byte #0x01, #0x00	;  1
      0081CB 02 00                 8359 	.byte #0x02, #0x00	;  2
      0081CD 00 00                 8360 	.byte #0x00,#0x00
      0081CF 70 2B                 8361 	.byte _accumulate, (_accumulate >> 8)
      0081D1 00 00                 8362 	.byte #0x00, #0x00	;  0
      0081D3 02 00                 8363 	.byte #0x02, #0x00	;  2
      0081D5 01 00                 8364 	.byte #0x01, #0x00	;  1
      0081D7 00 00                 8365 	.byte #0x00,#0x00
      0081D9 AB 31                 8366 	.byte _operator, (_operator >> 8)
      0081DB 01 00                 8367 	.byte #0x01, #0x00	;  1
      0081DD 00 00                 8368 	.byte #0x00, #0x00	;  0
      0081DF 00 00                 8369 	.byte #0x00, #0x00	;  0
      0081E1 00 00                 8370 	.byte #0x00,#0x00
      0081E3 00 00                 8371 	.byte #0x00,#0x00
      0081E5 01 00                 8372 	.byte #0x01, #0x00	;  1
      0081E7 02 00                 8373 	.byte #0x02, #0x00	;  2
      0081E9 01 00                 8374 	.byte #0x01, #0x00	;  1
      0081EB 00 00                 8375 	.byte #0x00,#0x00
      0081ED AB 31                 8376 	.byte _operator, (_operator >> 8)
      0081EF 01 00                 8377 	.byte #0x01, #0x00	;  1
      0081F1 01 00                 8378 	.byte #0x01, #0x00	;  1
      0081F3 02 00                 8379 	.byte #0x02, #0x00	;  2
      0081F5 00 00                 8380 	.byte #0x00,#0x00
      0081F7 70 2B                 8381 	.byte _accumulate, (_accumulate >> 8)
      0081F9 02 00                 8382 	.byte #0x02, #0x00	;  2
      0081FB 00 00                 8383 	.byte #0x00, #0x00	;  0
      0081FD 00 00                 8384 	.byte #0x00, #0x00	;  0
      0081FF 00 00                 8385 	.byte #0x00,#0x00
      008201 20 4F                 8386 	.byte _push_acc, (_push_acc >> 8)
      008203 02 00                 8387 	.byte #0x02, #0x00	;  2
      008205 07 00                 8388 	.byte #0x07, #0x00	;  7
      008207 00 00                 8389 	.byte #0x00, #0x00	;  0
      008209 00 00                 8390 	.byte #0x00,#0x00
      00820B 2A 50                 8391 	.byte _reset_acc, (_reset_acc >> 8)
      00820D 02 00                 8392 	.byte #0x02, #0x00	;  2
      00820F 01 00                 8393 	.byte #0x01, #0x00	;  1
      008211 02 00                 8394 	.byte #0x02, #0x00	;  2
      008213 00 00                 8395 	.byte #0x00,#0x00
      008215 70 2B                 8396 	.byte _accumulate, (_accumulate >> 8)
      008217 02 00                 8397 	.byte #0x02, #0x00	;  2
      008219 02 00                 8398 	.byte #0x02, #0x00	;  2
      00821B 01 00                 8399 	.byte #0x01, #0x00	;  1
      00821D 00 00                 8400 	.byte #0x00,#0x00
      00821F 20 4F                 8401 	.byte _push_acc, (_push_acc >> 8)
      008221 FF 7F                 8402 	.byte #0xff, #0x7f	;  32767
      008223 06 00                 8403 	.byte #0x06, #0x00	;  6
      008225 FF 7F                 8404 	.byte #0xff, #0x7f	;  32767
      008227 00 00                 8405 	.byte #0x00,#0x00
      008229 2A 50                 8406 	.byte _reset_acc, (_reset_acc >> 8)
      00822B FF 7F                 8407 	.byte #0xff, #0x7f	;  32767
      00822D 07 00                 8408 	.byte #0x07, #0x00	;  7
      00822F FF 7F                 8409 	.byte #0xff, #0x7f	;  32767
      008231 00 00                 8410 	.byte #0x00,#0x00
      008233 00 00                 8411 	.byte #0x00,#0x00
      008235 FF 7F                 8412 	.byte #0xff, #0x7f	;  32767
      008237 05 00                 8413 	.byte #0x05, #0x00	;  5
      008239 FF 7F                 8414 	.byte #0xff, #0x7f	;  32767
      00823B 00 00                 8415 	.byte #0x00,#0x00
      00823D 94 50                 8416 	.byte _reset_base, (_reset_base >> 8)
      00823F FF 7F                 8417 	.byte #0xff, #0x7f	;  32767
      008241 03 00                 8418 	.byte #0x03, #0x00	;  3
      008243 FF 7F                 8419 	.byte #0xff, #0x7f	;  32767
      008245 00 00                 8420 	.byte #0x00,#0x00
      008247 12 51                 8421 	.byte _status, (_status >> 8)
      008249 FF 7F                 8422 	.byte #0xff, #0x7f	;  32767
      00824B 04 00                 8423 	.byte #0x04, #0x00	;  4
      00824D FF 7F                 8424 	.byte #0xff, #0x7f	;  32767
      00824F 00 00                 8425 	.byte #0x00,#0x00
      008251 40 56                 8426 	.byte _help, (_help >> 8)
      008253 FF 7F                 8427 	.byte #0xff, #0x7f	;  32767
      008255 08 00                 8428 	.byte #0x08, #0x00	;  8
      008257 03 00                 8429 	.byte #0x03, #0x00	;  3
      008259 00 00                 8430 	.byte #0x00,#0x00
      00825B E1 2C                 8431 	.byte _dump_pop, (_dump_pop >> 8)
      00825D 00 80                 8432 	.byte #0x00, #0x80	; -32768
      00825F 00 80                 8433 	.byte #0x00, #0x80	; -32768
      008261 00 80                 8434 	.byte #0x00, #0x80	; -32768
      008263 00 00                 8435 	.byte #0x00,#0x00
      008265 00 00                 8436 	.byte #0x00,#0x00
                                   8437 	.area CABS    (ABS,CODE)
