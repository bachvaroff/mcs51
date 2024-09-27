                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int0
                                     13 	.globl _fix_fftr
                                     14 	.globl ___memcpy
                                     15 	.globl _srand
                                     16 	.globl _rand
                                     17 	.globl _printf
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
                                    141 	.globl _ifft
                                    142 	.globl _fft
                                    143 	.globl _samples
                                    144 ;--------------------------------------------------------
                                    145 ; special function registers
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0	=	0x0080
                           000081   150 _SP	=	0x0081
                           000082   151 _DPL	=	0x0082
                           000083   152 _DPH	=	0x0083
                           000087   153 _PCON	=	0x0087
                           000088   154 _TCON	=	0x0088
                           000089   155 _TMOD	=	0x0089
                           00008A   156 _TL0	=	0x008a
                           00008B   157 _TL1	=	0x008b
                           00008C   158 _TH0	=	0x008c
                           00008D   159 _TH1	=	0x008d
                           000090   160 _P1	=	0x0090
                           000098   161 _SCON	=	0x0098
                           000099   162 _SBUF	=	0x0099
                           0000A0   163 _P2	=	0x00a0
                           0000A8   164 _IE	=	0x00a8
                           0000B0   165 _P3	=	0x00b0
                           0000B8   166 _IP	=	0x00b8
                           0000C8   167 _T2CON	=	0x00c8
                           0000C9   168 _T2MOD	=	0x00c9
                           0000CA   169 _RCAP2L	=	0x00ca
                           0000CB   170 _RCAP2H	=	0x00cb
                           0000CC   171 _TL2	=	0x00cc
                           0000CD   172 _TH2	=	0x00cd
                           0000D0   173 _PSW	=	0x00d0
                           0000E0   174 _ACC	=	0x00e0
                           0000E0   175 _A	=	0x00e0
                           0000F0   176 _B	=	0x00f0
                                    177 ;--------------------------------------------------------
                                    178 ; special function bits
                                    179 ;--------------------------------------------------------
                                    180 	.area RSEG    (ABS,DATA)
      000000                        181 	.org 0x0000
                           000080   182 _P0_0	=	0x0080
                           000081   183 _P0_1	=	0x0081
                           000082   184 _P0_2	=	0x0082
                           000083   185 _P0_3	=	0x0083
                           000084   186 _P0_4	=	0x0084
                           000085   187 _P0_5	=	0x0085
                           000086   188 _P0_6	=	0x0086
                           000087   189 _P0_7	=	0x0087
                           000088   190 _IT0	=	0x0088
                           000089   191 _IE0	=	0x0089
                           00008A   192 _IT1	=	0x008a
                           00008B   193 _IE1	=	0x008b
                           00008C   194 _TR0	=	0x008c
                           00008D   195 _TF0	=	0x008d
                           00008E   196 _TR1	=	0x008e
                           00008F   197 _TF1	=	0x008f
                           000090   198 _P1_0	=	0x0090
                           000091   199 _P1_1	=	0x0091
                           000092   200 _P1_2	=	0x0092
                           000093   201 _P1_3	=	0x0093
                           000094   202 _P1_4	=	0x0094
                           000095   203 _P1_5	=	0x0095
                           000096   204 _P1_6	=	0x0096
                           000097   205 _P1_7	=	0x0097
                           000090   206 _T2	=	0x0090
                           000091   207 _T2EX	=	0x0091
                           000098   208 _RI	=	0x0098
                           000099   209 _TI	=	0x0099
                           00009A   210 _RB8	=	0x009a
                           00009B   211 _TB8	=	0x009b
                           00009C   212 _REN	=	0x009c
                           00009D   213 _SM2	=	0x009d
                           00009E   214 _SM1	=	0x009e
                           00009F   215 _SM0	=	0x009f
                           0000A0   216 _P2_0	=	0x00a0
                           0000A1   217 _P2_1	=	0x00a1
                           0000A2   218 _P2_2	=	0x00a2
                           0000A3   219 _P2_3	=	0x00a3
                           0000A4   220 _P2_4	=	0x00a4
                           0000A5   221 _P2_5	=	0x00a5
                           0000A6   222 _P2_6	=	0x00a6
                           0000A7   223 _P2_7	=	0x00a7
                           0000A8   224 _EX0	=	0x00a8
                           0000A9   225 _ET0	=	0x00a9
                           0000AA   226 _EX1	=	0x00aa
                           0000AB   227 _ET1	=	0x00ab
                           0000AC   228 _ES	=	0x00ac
                           0000AD   229 _ET2	=	0x00ad
                           0000AF   230 _EA	=	0x00af
                           0000B0   231 _P3_0	=	0x00b0
                           0000B1   232 _P3_1	=	0x00b1
                           0000B2   233 _P3_2	=	0x00b2
                           0000B3   234 _P3_3	=	0x00b3
                           0000B4   235 _P3_4	=	0x00b4
                           0000B5   236 _P3_5	=	0x00b5
                           0000B6   237 _P3_6	=	0x00b6
                           0000B7   238 _P3_7	=	0x00b7
                           0000B0   239 _RXD	=	0x00b0
                           0000B1   240 _TXD	=	0x00b1
                           0000B2   241 _INT0	=	0x00b2
                           0000B3   242 _INT1	=	0x00b3
                           0000B4   243 _T0	=	0x00b4
                           0000B5   244 _T1	=	0x00b5
                           0000B6   245 _WR	=	0x00b6
                           0000B7   246 _RD	=	0x00b7
                           0000B8   247 _PX0	=	0x00b8
                           0000B9   248 _PT0	=	0x00b9
                           0000BA   249 _PX1	=	0x00ba
                           0000BB   250 _PT1	=	0x00bb
                           0000BC   251 _PS	=	0x00bc
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                           0000D0   269 _P	=	0x00d0
                           0000D1   270 _FL	=	0x00d1
                           0000D2   271 _OV	=	0x00d2
                           0000D3   272 _RS0	=	0x00d3
                           0000D4   273 _RS1	=	0x00d4
                           0000D5   274 _F0	=	0x00d5
                           0000D6   275 _AC	=	0x00d6
                           0000D7   276 _CY	=	0x00d7
                                    277 ;--------------------------------------------------------
                                    278 ; overlayable register banks
                                    279 ;--------------------------------------------------------
                                    280 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        281 	.ds 8
                                    282 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        283 	.ds 8
                                    284 ;--------------------------------------------------------
                                    285 ; overlayable bit register bank
                                    286 ;--------------------------------------------------------
                                    287 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        288 bits:
      000020                        289 	.ds 1
                           008000   290 	b0 = bits[0]
                           008100   291 	b1 = bits[1]
                           008200   292 	b2 = bits[2]
                           008300   293 	b3 = bits[3]
                           008400   294 	b4 = bits[4]
                           008500   295 	b5 = bits[5]
                           008600   296 	b6 = bits[6]
                           008700   297 	b7 = bits[7]
                                    298 ;--------------------------------------------------------
                                    299 ; internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area DSEG    (DATA)
                                    302 ;--------------------------------------------------------
                                    303 ; overlayable items in internal ram 
                                    304 ;--------------------------------------------------------
                                    305 ;--------------------------------------------------------
                                    306 ; Stack segment in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 	.area	SSEG
      000021                        309 __start__stack:
      000021                        310 	.ds	1
                                    311 
                                    312 ;--------------------------------------------------------
                                    313 ; indirectly addressable internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area ISEG    (DATA)
      000011                        316 _print:
      000011                        317 	.ds 1
                                    318 ;--------------------------------------------------------
                                    319 ; absolute internal ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area IABS    (ABS,DATA)
                                    322 	.area IABS    (ABS,DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; bit data
                                    325 ;--------------------------------------------------------
                                    326 	.area BSEG    (BIT)
                                    327 ;--------------------------------------------------------
                                    328 ; paged external ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area PSEG    (PAG,XDATA)
                                    331 ;--------------------------------------------------------
                                    332 ; external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area XSEG    (XDATA)
      004C00                        335 _samples::
      004C00                        336 	.ds 128
      004C80                        337 _fft::
      004C80                        338 	.ds 128
      004D00                        339 _ifft::
      004D00                        340 	.ds 128
      004D80                        341 _main_R_65536_80:
      004D80                        342 	.ds 2
                                    343 ;--------------------------------------------------------
                                    344 ; absolute external ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area XABS    (ABS,XDATA)
                                    347 ;--------------------------------------------------------
                                    348 ; external initialized ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area XISEG   (XDATA)
                                    351 	.area HOME    (CODE)
                                    352 	.area GSINIT0 (CODE)
                                    353 	.area GSINIT1 (CODE)
                                    354 	.area GSINIT2 (CODE)
                                    355 	.area GSINIT3 (CODE)
                                    356 	.area GSINIT4 (CODE)
                                    357 	.area GSINIT5 (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.area GSFINAL (CODE)
                                    360 	.area CSEG    (CODE)
                                    361 ;--------------------------------------------------------
                                    362 ; interrupt vector 
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
      002000                        365 __interrupt_vect:
      002000 02 20 09         [24]  366 	ljmp	__sdcc_gsinit_startup
      002003 02 2C 22         [24]  367 	ljmp	_int0
                                    368 ;--------------------------------------------------------
                                    369 ; global & static initialisations
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.area GSFINAL (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.globl __sdcc_gsinit_startup
                                    376 	.globl __sdcc_program_startup
                                    377 	.globl __start__stack
                                    378 	.globl __mcs51_genXINIT
                                    379 	.globl __mcs51_genXRAMCLEAR
                                    380 	.globl __mcs51_genRAMCLEAR
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'main'
                                    383 ;------------------------------------------------------------
                                    384 ;i                         Allocated to registers 
                                    385 ;j                         Allocated to stack - _bp +1
                                    386 ;scale                     Allocated to stack - _bp +3
                                    387 ;sloc0                     Allocated to stack - _bp +7
                                    388 ;R                         Allocated with name '_main_R_65536_80'
                                    389 ;------------------------------------------------------------
                                    390 ;	main.c:23: static volatile __xdata int *R = (__xdata int *)0xfffe;
      002062 90 4D 80         [24]  391 	mov	dptr,#_main_R_65536_80
      002065 74 FE            [12]  392 	mov	a,#0xfe
      002067 F0               [24]  393 	movx	@dptr,a
      002068 04               [12]  394 	inc	a
      002069 A3               [24]  395 	inc	dptr
      00206A F0               [24]  396 	movx	@dptr,a
                                    397 	.area GSFINAL (CODE)
      00206B 02 20 06         [24]  398 	ljmp	__sdcc_program_startup
                                    399 ;--------------------------------------------------------
                                    400 ; Home
                                    401 ;--------------------------------------------------------
                                    402 	.area HOME    (CODE)
                                    403 	.area HOME    (CODE)
      002006                        404 __sdcc_program_startup:
      002006 02 2C 3F         [24]  405 	ljmp	_main
                                    406 ;	return from main will return to caller
                                    407 ;--------------------------------------------------------
                                    408 ; code
                                    409 ;--------------------------------------------------------
                                    410 	.area CSEG    (CODE)
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'int0'
                                    413 ;------------------------------------------------------------
                                    414 ;	main.c:13: void int0(void) __interrupt IE0_VECTOR __using 1 {
                                    415 ;	-----------------------------------------
                                    416 ;	 function int0
                                    417 ;	-----------------------------------------
      002C22                        418 _int0:
                           00000F   419 	ar7 = 0x0f
                           00000E   420 	ar6 = 0x0e
                           00000D   421 	ar5 = 0x0d
                           00000C   422 	ar4 = 0x0c
                           00000B   423 	ar3 = 0x0b
                           00000A   424 	ar2 = 0x0a
                           000009   425 	ar1 = 0x09
                           000008   426 	ar0 = 0x08
      002C22 C0 20            [24]  427 	push	bits
      002C24 C0 E0            [24]  428 	push	acc
      002C26 C0 D0            [24]  429 	push	psw
      002C28 75 D0 08         [24]  430 	mov	psw,#0x08
                                    431 ;	main.c:14: print = !print;
      002C2B 78 11            [12]  432 	mov	r0,#_print
      002C2D E6               [12]  433 	mov	a,@r0
      002C2E B4 01 00         [24]  434 	cjne	a,#0x01,00103$
      002C31                        435 00103$:
      002C31 92 00            [24]  436 	mov	b0,c
      002C33 78 11            [12]  437 	mov	r0,#_print
      002C35 E4               [12]  438 	clr	a
      002C36 33               [12]  439 	rlc	a
      002C37 F6               [12]  440 	mov	@r0,a
                                    441 ;	main.c:15: }
      002C38 D0 D0            [24]  442 	pop	psw
      002C3A D0 E0            [24]  443 	pop	acc
      002C3C D0 20            [24]  444 	pop	bits
      002C3E 32               [24]  445 	reti
                                    446 ;	eliminated unneeded push/pop dpl
                                    447 ;	eliminated unneeded push/pop dph
                                    448 ;	eliminated unneeded push/pop b
                                    449 ;------------------------------------------------------------
                                    450 ;Allocation info for local variables in function 'main'
                                    451 ;------------------------------------------------------------
                                    452 ;i                         Allocated to registers 
                                    453 ;j                         Allocated to stack - _bp +1
                                    454 ;scale                     Allocated to stack - _bp +3
                                    455 ;sloc0                     Allocated to stack - _bp +7
                                    456 ;R                         Allocated with name '_main_R_65536_80'
                                    457 ;------------------------------------------------------------
                                    458 ;	main.c:22: void main(void) {
                                    459 ;	-----------------------------------------
                                    460 ;	 function main
                                    461 ;	-----------------------------------------
      002C3F                        462 _main:
                           000007   463 	ar7 = 0x07
                           000006   464 	ar6 = 0x06
                           000005   465 	ar5 = 0x05
                           000004   466 	ar4 = 0x04
                           000003   467 	ar3 = 0x03
                           000002   468 	ar2 = 0x02
                           000001   469 	ar1 = 0x01
                           000000   470 	ar0 = 0x00
      002C3F C0 10            [24]  471 	push	_bp
      002C41 E5 81            [12]  472 	mov	a,sp
      002C43 F5 10            [12]  473 	mov	_bp,a
      002C45 24 04            [12]  474 	add	a,#0x04
      002C47 F5 81            [12]  475 	mov	sp,a
                                    476 ;	main.c:27: print = 1;
      002C49 78 11            [12]  477 	mov	r0,#_print
      002C4B 76 01            [12]  478 	mov	@r0,#0x01
                                    479 ;	main.c:29: IT0 = 1;
                                    480 ;	assignBit
      002C4D D2 88            [12]  481 	setb	_IT0
                                    482 ;	main.c:30: EX0 = 1;
                                    483 ;	assignBit
      002C4F D2 A8            [12]  484 	setb	_EX0
                                    485 ;	main.c:31: EA = 1;
                                    486 ;	assignBit
      002C51 D2 AF            [12]  487 	setb	_EA
                                    488 ;	main.c:33: srand(*R);
      002C53 90 4D 80         [24]  489 	mov	dptr,#_main_R_65536_80
      002C56 E0               [24]  490 	movx	a,@dptr
      002C57 FE               [12]  491 	mov	r6,a
      002C58 A3               [24]  492 	inc	dptr
      002C59 E0               [24]  493 	movx	a,@dptr
      002C5A FF               [12]  494 	mov	r7,a
      002C5B 8E 82            [24]  495 	mov	dpl,r6
      002C5D 8F 83            [24]  496 	mov	dph,r7
      002C5F E0               [24]  497 	movx	a,@dptr
      002C60 FE               [12]  498 	mov	r6,a
      002C61 A3               [24]  499 	inc	dptr
      002C62 E0               [24]  500 	movx	a,@dptr
      002C63 FF               [12]  501 	mov	r7,a
      002C64 8E 82            [24]  502 	mov	dpl,r6
      002C66 8F 83            [24]  503 	mov	dph,r7
      002C68 12 2F 59         [24]  504 	lcall	_srand
                                    505 ;	main.c:35: for (i = 0; 1; i++) {
      002C6B 7E 00            [12]  506 	mov	r6,#0x00
      002C6D 7F 00            [12]  507 	mov	r7,#0x00
                                    508 ;	main.c:36: for (j = 0; j < (1 << N); j++)
      002C6F                        509 00117$:
      002C6F A8 10            [24]  510 	mov	r0,_bp
      002C71 08               [12]  511 	inc	r0
      002C72 E4               [12]  512 	clr	a
      002C73 F6               [12]  513 	mov	@r0,a
      002C74 08               [12]  514 	inc	r0
      002C75 F6               [12]  515 	mov	@r0,a
      002C76                        516 00106$:
                                    517 ;	main.c:37: samples[j] = ((rand() & 1) ? -1 : 1) * (int16_t)rand();
      002C76 A8 10            [24]  518 	mov	r0,_bp
      002C78 08               [12]  519 	inc	r0
      002C79 E6               [12]  520 	mov	a,@r0
      002C7A 25 E0            [12]  521 	add	a,acc
      002C7C FA               [12]  522 	mov	r2,a
      002C7D 08               [12]  523 	inc	r0
      002C7E E6               [12]  524 	mov	a,@r0
      002C7F 33               [12]  525 	rlc	a
      002C80 FB               [12]  526 	mov	r3,a
      002C81 EA               [12]  527 	mov	a,r2
      002C82 24 00            [12]  528 	add	a,#_samples
      002C84 FA               [12]  529 	mov	r2,a
      002C85 EB               [12]  530 	mov	a,r3
      002C86 34 4C            [12]  531 	addc	a,#(_samples >> 8)
      002C88 FB               [12]  532 	mov	r3,a
      002C89 C0 07            [24]  533 	push	ar7
      002C8B C0 06            [24]  534 	push	ar6
      002C8D C0 03            [24]  535 	push	ar3
      002C8F C0 02            [24]  536 	push	ar2
      002C91 12 2E 95         [24]  537 	lcall	_rand
      002C94 E5 82            [12]  538 	mov	a,dpl
      002C96 85 83 F0         [24]  539 	mov	b,dph
      002C99 D0 02            [24]  540 	pop	ar2
      002C9B D0 03            [24]  541 	pop	ar3
      002C9D D0 06            [24]  542 	pop	ar6
      002C9F D0 07            [24]  543 	pop	ar7
      002CA1 30 E0 06         [24]  544 	jnb	acc.0,00114$
      002CA4 7C FF            [12]  545 	mov	r4,#0xff
      002CA6 7D FF            [12]  546 	mov	r5,#0xff
      002CA8 80 04            [24]  547 	sjmp	00115$
      002CAA                        548 00114$:
      002CAA 7C 01            [12]  549 	mov	r4,#0x01
      002CAC 7D 00            [12]  550 	mov	r5,#0x00
      002CAE                        551 00115$:
      002CAE C0 06            [24]  552 	push	ar6
      002CB0 C0 07            [24]  553 	push	ar7
      002CB2 C0 05            [24]  554 	push	ar5
      002CB4 C0 04            [24]  555 	push	ar4
      002CB6 C0 03            [24]  556 	push	ar3
      002CB8 C0 02            [24]  557 	push	ar2
      002CBA 12 2E 95         [24]  558 	lcall	_rand
      002CBD AE 82            [24]  559 	mov	r6,dpl
      002CBF AF 83            [24]  560 	mov	r7,dph
      002CC1 D0 02            [24]  561 	pop	ar2
      002CC3 D0 03            [24]  562 	pop	ar3
      002CC5 D0 04            [24]  563 	pop	ar4
      002CC7 D0 05            [24]  564 	pop	ar5
      002CC9 C0 03            [24]  565 	push	ar3
      002CCB C0 02            [24]  566 	push	ar2
      002CCD C0 06            [24]  567 	push	ar6
      002CCF C0 07            [24]  568 	push	ar7
      002CD1 8C 82            [24]  569 	mov	dpl,r4
      002CD3 8D 83            [24]  570 	mov	dph,r5
      002CD5 12 2F 8D         [24]  571 	lcall	__mulint
      002CD8 AE 82            [24]  572 	mov	r6,dpl
      002CDA AF 83            [24]  573 	mov	r7,dph
      002CDC 15 81            [12]  574 	dec	sp
      002CDE 15 81            [12]  575 	dec	sp
      002CE0 D0 02            [24]  576 	pop	ar2
      002CE2 D0 03            [24]  577 	pop	ar3
      002CE4 8A 82            [24]  578 	mov	dpl,r2
      002CE6 8B 83            [24]  579 	mov	dph,r3
      002CE8 EE               [12]  580 	mov	a,r6
      002CE9 F0               [24]  581 	movx	@dptr,a
      002CEA EF               [12]  582 	mov	a,r7
      002CEB A3               [24]  583 	inc	dptr
      002CEC F0               [24]  584 	movx	@dptr,a
                                    585 ;	main.c:36: for (j = 0; j < (1 << N); j++)
      002CED A8 10            [24]  586 	mov	r0,_bp
      002CEF 08               [12]  587 	inc	r0
      002CF0 06               [12]  588 	inc	@r0
      002CF1 B6 00 02         [24]  589 	cjne	@r0,#0x00,00143$
      002CF4 08               [12]  590 	inc	r0
      002CF5 06               [12]  591 	inc	@r0
      002CF6                        592 00143$:
      002CF6 A8 10            [24]  593 	mov	r0,_bp
      002CF8 08               [12]  594 	inc	r0
      002CF9 C3               [12]  595 	clr	c
      002CFA E6               [12]  596 	mov	a,@r0
      002CFB 94 40            [12]  597 	subb	a,#0x40
      002CFD 08               [12]  598 	inc	r0
      002CFE E6               [12]  599 	mov	a,@r0
      002CFF 64 80            [12]  600 	xrl	a,#0x80
      002D01 94 80            [12]  601 	subb	a,#0x80
      002D03 D0 07            [24]  602 	pop	ar7
      002D05 D0 06            [24]  603 	pop	ar6
      002D07 50 03            [24]  604 	jnc	00144$
      002D09 02 2C 76         [24]  605 	ljmp	00106$
      002D0C                        606 00144$:
                                    607 ;	main.c:39: printf("DO FFT IFFT %d\r\n", i);
      002D0C C0 07            [24]  608 	push	ar7
      002D0E C0 06            [24]  609 	push	ar6
      002D10 C0 06            [24]  610 	push	ar6
      002D12 C0 07            [24]  611 	push	ar7
      002D14 74 35            [12]  612 	mov	a,#___str_0
      002D16 C0 E0            [24]  613 	push	acc
      002D18 74 48            [12]  614 	mov	a,#(___str_0 >> 8)
      002D1A C0 E0            [24]  615 	push	acc
      002D1C 74 80            [12]  616 	mov	a,#0x80
      002D1E C0 E0            [24]  617 	push	acc
      002D20 12 31 04         [24]  618 	lcall	_printf
      002D23 E5 81            [12]  619 	mov	a,sp
      002D25 24 FB            [12]  620 	add	a,#0xfb
      002D27 F5 81            [12]  621 	mov	sp,a
                                    622 ;	main.c:41: memcpy(fft, samples, sizeof (samples));
      002D29 74 80            [12]  623 	mov	a,#0x80
      002D2B C0 E0            [24]  624 	push	acc
      002D2D E4               [12]  625 	clr	a
      002D2E C0 E0            [24]  626 	push	acc
      002D30 74 00            [12]  627 	mov	a,#_samples
      002D32 C0 E0            [24]  628 	push	acc
      002D34 74 4C            [12]  629 	mov	a,#(_samples >> 8)
      002D36 C0 E0            [24]  630 	push	acc
      002D38 E4               [12]  631 	clr	a
      002D39 C0 E0            [24]  632 	push	acc
      002D3B 90 4C 80         [24]  633 	mov	dptr,#_fft
      002D3E 75 F0 00         [24]  634 	mov	b,#0x00
      002D41 12 30 2B         [24]  635 	lcall	___memcpy
      002D44 E5 81            [12]  636 	mov	a,sp
      002D46 24 FB            [12]  637 	add	a,#0xfb
      002D48 F5 81            [12]  638 	mov	sp,a
                                    639 ;	main.c:42: scale = fix_fftr(fft, N, 0);		
      002D4A E4               [12]  640 	clr	a
      002D4B C0 E0            [24]  641 	push	acc
      002D4D C0 E0            [24]  642 	push	acc
      002D4F 74 06            [12]  643 	mov	a,#0x06
      002D51 C0 E0            [24]  644 	push	acc
      002D53 E4               [12]  645 	clr	a
      002D54 C0 E0            [24]  646 	push	acc
      002D56 90 4C 80         [24]  647 	mov	dptr,#_fft
      002D59 75 F0 00         [24]  648 	mov	b,#0x00
      002D5C 12 2A 21         [24]  649 	lcall	_fix_fftr
      002D5F E5 81            [12]  650 	mov	a,sp
      002D61 24 FC            [12]  651 	add	a,#0xfc
      002D63 F5 81            [12]  652 	mov	sp,a
                                    653 ;	main.c:49: memcpy(ifft, fft, sizeof (fft));
      002D65 74 80            [12]  654 	mov	a,#0x80
      002D67 C0 E0            [24]  655 	push	acc
      002D69 E4               [12]  656 	clr	a
      002D6A C0 E0            [24]  657 	push	acc
      002D6C 74 80            [12]  658 	mov	a,#_fft
      002D6E C0 E0            [24]  659 	push	acc
      002D70 74 4C            [12]  660 	mov	a,#(_fft >> 8)
      002D72 C0 E0            [24]  661 	push	acc
      002D74 E4               [12]  662 	clr	a
      002D75 C0 E0            [24]  663 	push	acc
      002D77 90 4D 00         [24]  664 	mov	dptr,#_ifft
      002D7A 75 F0 00         [24]  665 	mov	b,#0x00
      002D7D 12 30 2B         [24]  666 	lcall	___memcpy
      002D80 E5 81            [12]  667 	mov	a,sp
      002D82 24 FB            [12]  668 	add	a,#0xfb
      002D84 F5 81            [12]  669 	mov	sp,a
                                    670 ;	main.c:50: scale = fix_fftr(ifft, N, 1);
      002D86 74 01            [12]  671 	mov	a,#0x01
      002D88 C0 E0            [24]  672 	push	acc
      002D8A E4               [12]  673 	clr	a
      002D8B C0 E0            [24]  674 	push	acc
      002D8D 74 06            [12]  675 	mov	a,#0x06
      002D8F C0 E0            [24]  676 	push	acc
      002D91 E4               [12]  677 	clr	a
      002D92 C0 E0            [24]  678 	push	acc
      002D94 90 4D 00         [24]  679 	mov	dptr,#_ifft
      002D97 75 F0 00         [24]  680 	mov	b,#0x00
      002D9A 12 2A 21         [24]  681 	lcall	_fix_fftr
      002D9D AC 82            [24]  682 	mov	r4,dpl
      002D9F AD 83            [24]  683 	mov	r5,dph
      002DA1 E5 81            [12]  684 	mov	a,sp
      002DA3 24 FC            [12]  685 	add	a,#0xfc
      002DA5 F5 81            [12]  686 	mov	sp,a
      002DA7 D0 06            [24]  687 	pop	ar6
      002DA9 D0 07            [24]  688 	pop	ar7
      002DAB E5 10            [12]  689 	mov	a,_bp
      002DAD 24 03            [12]  690 	add	a,#0x03
      002DAF F8               [12]  691 	mov	r0,a
      002DB0 A6 04            [24]  692 	mov	@r0,ar4
      002DB2 08               [12]  693 	inc	r0
      002DB3 A6 05            [24]  694 	mov	@r0,ar5
                                    695 ;	main.c:52: if (print)
      002DB5 78 11            [12]  696 	mov	r0,#_print
      002DB7 E6               [12]  697 	mov	a,@r0
      002DB8 70 03            [24]  698 	jnz	00145$
      002DBA 02 2E 6A         [24]  699 	ljmp	00104$
      002DBD                        700 00145$:
                                    701 ;	main.c:53: for (j = 0; j < (1 << N); j++)
      002DBD A8 10            [24]  702 	mov	r0,_bp
      002DBF 08               [12]  703 	inc	r0
      002DC0 E4               [12]  704 	clr	a
      002DC1 F6               [12]  705 	mov	@r0,a
      002DC2 08               [12]  706 	inc	r0
      002DC3 F6               [12]  707 	mov	@r0,a
      002DC4                        708 00108$:
                                    709 ;	main.c:55: samples[j], ifft[j] * (1 << scale));
      002DC4 C0 06            [24]  710 	push	ar6
      002DC6 C0 07            [24]  711 	push	ar7
      002DC8 A8 10            [24]  712 	mov	r0,_bp
      002DCA 08               [12]  713 	inc	r0
      002DCB E6               [12]  714 	mov	a,@r0
      002DCC 25 E0            [12]  715 	add	a,acc
      002DCE FE               [12]  716 	mov	r6,a
      002DCF 08               [12]  717 	inc	r0
      002DD0 E6               [12]  718 	mov	a,@r0
      002DD1 33               [12]  719 	rlc	a
      002DD2 FF               [12]  720 	mov	r7,a
      002DD3 EE               [12]  721 	mov	a,r6
      002DD4 24 00            [12]  722 	add	a,#_ifft
      002DD6 F5 82            [12]  723 	mov	dpl,a
      002DD8 EF               [12]  724 	mov	a,r7
      002DD9 34 4D            [12]  725 	addc	a,#(_ifft >> 8)
      002DDB F5 83            [12]  726 	mov	dph,a
      002DDD E0               [24]  727 	movx	a,@dptr
      002DDE FC               [12]  728 	mov	r4,a
      002DDF A3               [24]  729 	inc	dptr
      002DE0 E0               [24]  730 	movx	a,@dptr
      002DE1 FD               [12]  731 	mov	r5,a
      002DE2 E5 10            [12]  732 	mov	a,_bp
      002DE4 24 03            [12]  733 	add	a,#0x03
      002DE6 F8               [12]  734 	mov	r0,a
      002DE7 86 03            [24]  735 	mov	ar3,@r0
      002DE9 8B F0            [24]  736 	mov	b,r3
      002DEB 05 F0            [12]  737 	inc	b
      002DED 7B 01            [12]  738 	mov	r3,#0x01
      002DEF 7A 00            [12]  739 	mov	r2,#0x00
      002DF1 80 06            [24]  740 	sjmp	00147$
      002DF3                        741 00146$:
      002DF3 EB               [12]  742 	mov	a,r3
      002DF4 2B               [12]  743 	add	a,r3
      002DF5 FB               [12]  744 	mov	r3,a
      002DF6 EA               [12]  745 	mov	a,r2
      002DF7 33               [12]  746 	rlc	a
      002DF8 FA               [12]  747 	mov	r2,a
      002DF9                        748 00147$:
      002DF9 D5 F0 F7         [24]  749 	djnz	b,00146$
      002DFC C0 07            [24]  750 	push	ar7
      002DFE C0 06            [24]  751 	push	ar6
      002E00 C0 03            [24]  752 	push	ar3
      002E02 C0 02            [24]  753 	push	ar2
      002E04 8C 82            [24]  754 	mov	dpl,r4
      002E06 8D 83            [24]  755 	mov	dph,r5
      002E08 12 2F 8D         [24]  756 	lcall	__mulint
      002E0B AC 82            [24]  757 	mov	r4,dpl
      002E0D AD 83            [24]  758 	mov	r5,dph
      002E0F 15 81            [12]  759 	dec	sp
      002E11 15 81            [12]  760 	dec	sp
      002E13 D0 06            [24]  761 	pop	ar6
      002E15 D0 07            [24]  762 	pop	ar7
      002E17 EE               [12]  763 	mov	a,r6
      002E18 24 00            [12]  764 	add	a,#_samples
      002E1A F5 82            [12]  765 	mov	dpl,a
      002E1C EF               [12]  766 	mov	a,r7
      002E1D 34 4C            [12]  767 	addc	a,#(_samples >> 8)
      002E1F F5 83            [12]  768 	mov	dph,a
      002E21 E0               [24]  769 	movx	a,@dptr
      002E22 FE               [12]  770 	mov	r6,a
      002E23 A3               [24]  771 	inc	dptr
      002E24 E0               [24]  772 	movx	a,@dptr
      002E25 FF               [12]  773 	mov	r7,a
                                    774 ;	main.c:54: printf("% 8d% 8d\r\n",
      002E26 C0 07            [24]  775 	push	ar7
      002E28 C0 06            [24]  776 	push	ar6
      002E2A C0 04            [24]  777 	push	ar4
      002E2C C0 05            [24]  778 	push	ar5
      002E2E C0 06            [24]  779 	push	ar6
      002E30 C0 07            [24]  780 	push	ar7
      002E32 74 46            [12]  781 	mov	a,#___str_1
      002E34 C0 E0            [24]  782 	push	acc
      002E36 74 48            [12]  783 	mov	a,#(___str_1 >> 8)
      002E38 C0 E0            [24]  784 	push	acc
      002E3A 74 80            [12]  785 	mov	a,#0x80
      002E3C C0 E0            [24]  786 	push	acc
      002E3E 12 31 04         [24]  787 	lcall	_printf
      002E41 E5 81            [12]  788 	mov	a,sp
      002E43 24 F9            [12]  789 	add	a,#0xf9
      002E45 F5 81            [12]  790 	mov	sp,a
      002E47 D0 06            [24]  791 	pop	ar6
      002E49 D0 07            [24]  792 	pop	ar7
                                    793 ;	main.c:53: for (j = 0; j < (1 << N); j++)
      002E4B A8 10            [24]  794 	mov	r0,_bp
      002E4D 08               [12]  795 	inc	r0
      002E4E 06               [12]  796 	inc	@r0
      002E4F B6 00 02         [24]  797 	cjne	@r0,#0x00,00148$
      002E52 08               [12]  798 	inc	r0
      002E53 06               [12]  799 	inc	@r0
      002E54                        800 00148$:
      002E54 A8 10            [24]  801 	mov	r0,_bp
      002E56 08               [12]  802 	inc	r0
      002E57 C3               [12]  803 	clr	c
      002E58 E6               [12]  804 	mov	a,@r0
      002E59 94 40            [12]  805 	subb	a,#0x40
      002E5B 08               [12]  806 	inc	r0
      002E5C E6               [12]  807 	mov	a,@r0
      002E5D 64 80            [12]  808 	xrl	a,#0x80
      002E5F 94 80            [12]  809 	subb	a,#0x80
      002E61 D0 07            [24]  810 	pop	ar7
      002E63 D0 06            [24]  811 	pop	ar6
      002E65 50 03            [24]  812 	jnc	00149$
      002E67 02 2D C4         [24]  813 	ljmp	00108$
      002E6A                        814 00149$:
      002E6A                        815 00104$:
                                    816 ;	main.c:57: printf("DONE\r\n\r\n");
      002E6A C0 07            [24]  817 	push	ar7
      002E6C C0 06            [24]  818 	push	ar6
      002E6E 74 51            [12]  819 	mov	a,#___str_2
      002E70 C0 E0            [24]  820 	push	acc
      002E72 74 48            [12]  821 	mov	a,#(___str_2 >> 8)
      002E74 C0 E0            [24]  822 	push	acc
      002E76 74 80            [12]  823 	mov	a,#0x80
      002E78 C0 E0            [24]  824 	push	acc
      002E7A 12 31 04         [24]  825 	lcall	_printf
      002E7D 15 81            [12]  826 	dec	sp
      002E7F 15 81            [12]  827 	dec	sp
      002E81 15 81            [12]  828 	dec	sp
      002E83 D0 06            [24]  829 	pop	ar6
      002E85 D0 07            [24]  830 	pop	ar7
                                    831 ;	main.c:35: for (i = 0; 1; i++) {
      002E87 0E               [12]  832 	inc	r6
      002E88 BE 00 01         [24]  833 	cjne	r6,#0x00,00150$
      002E8B 0F               [12]  834 	inc	r7
      002E8C                        835 00150$:
      002E8C 02 2C 6F         [24]  836 	ljmp	00117$
                                    837 ;	main.c:62: return;
                                    838 ;	main.c:63: }
      002E8F 85 10 81         [24]  839 	mov	sp,_bp
      002E92 D0 10            [24]  840 	pop	_bp
      002E94 22               [24]  841 	ret
                                    842 	.area CSEG    (CODE)
                                    843 	.area CONST   (CODE)
                                    844 	.area CONST   (CODE)
      004835                        845 ___str_0:
      004835 44 4F 20 46 46 54 20   846 	.ascii "DO FFT IFFT %d"
             49 46 46 54 20 25 64
      004843 0D                     847 	.db 0x0d
      004844 0A                     848 	.db 0x0a
      004845 00                     849 	.db 0x00
                                    850 	.area CSEG    (CODE)
                                    851 	.area CONST   (CODE)
      004846                        852 ___str_1:
      004846 25 20 38 64 25 20 38   853 	.ascii "% 8d% 8d"
             64
      00484E 0D                     854 	.db 0x0d
      00484F 0A                     855 	.db 0x0a
      004850 00                     856 	.db 0x00
                                    857 	.area CSEG    (CODE)
                                    858 	.area CONST   (CODE)
      004851                        859 ___str_2:
      004851 44 4F 4E 45            860 	.ascii "DONE"
      004855 0D                     861 	.db 0x0d
      004856 0A                     862 	.db 0x0a
      004857 0D                     863 	.db 0x0d
      004858 0A                     864 	.db 0x0a
      004859 00                     865 	.db 0x00
                                    866 	.area CSEG    (CODE)
                                    867 	.area XINIT   (CODE)
                                    868 	.area CABS    (ABS,CODE)
