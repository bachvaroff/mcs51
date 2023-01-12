                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module life
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _int1
                                     13 	.globl _int0
                                     14 	.globl _printf
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _FL
                                     22 	.globl _P
                                     23 	.globl _TF2
                                     24 	.globl _EXF2
                                     25 	.globl _RCLK
                                     26 	.globl _TCLK
                                     27 	.globl _EXEN2
                                     28 	.globl _TR2
                                     29 	.globl _C_T2
                                     30 	.globl _CP_RL2
                                     31 	.globl _T2CON_7
                                     32 	.globl _T2CON_6
                                     33 	.globl _T2CON_5
                                     34 	.globl _T2CON_4
                                     35 	.globl _T2CON_3
                                     36 	.globl _T2CON_2
                                     37 	.globl _T2CON_1
                                     38 	.globl _T2CON_0
                                     39 	.globl _PT2
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ET2
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _T2EX
                                     85 	.globl _T2
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _B
                                    111 	.globl _A
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2MOD
                                    119 	.globl _T2CON
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _c
                                    139 	.globl _cycle2
                                    140 	.globl _fixed
                                    141 	.globl _j
                                    142 	.globl _generation
                                    143 	.globl _n
                                    144 	.globl _y1
                                    145 	.globl _x1
                                    146 	.globl _y
                                    147 	.globl _x
                                    148 	.globl _nu
                                    149 	.globl _u
                                    150 	.globl _pu
                                    151 	.globl _i1
                                    152 	.globl _i0
                                    153 	.globl _putchar
                                    154 	.globl _getchar
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0	=	0x0080
                           000081   161 _SP	=	0x0081
                           000082   162 _DPL	=	0x0082
                           000083   163 _DPH	=	0x0083
                           000087   164 _PCON	=	0x0087
                           000088   165 _TCON	=	0x0088
                           000089   166 _TMOD	=	0x0089
                           00008A   167 _TL0	=	0x008a
                           00008B   168 _TL1	=	0x008b
                           00008C   169 _TH0	=	0x008c
                           00008D   170 _TH1	=	0x008d
                           000090   171 _P1	=	0x0090
                           000098   172 _SCON	=	0x0098
                           000099   173 _SBUF	=	0x0099
                           0000A0   174 _P2	=	0x00a0
                           0000A8   175 _IE	=	0x00a8
                           0000B0   176 _P3	=	0x00b0
                           0000B8   177 _IP	=	0x00b8
                           0000C8   178 _T2CON	=	0x00c8
                           0000C9   179 _T2MOD	=	0x00c9
                           0000CA   180 _RCAP2L	=	0x00ca
                           0000CB   181 _RCAP2H	=	0x00cb
                           0000CC   182 _TL2	=	0x00cc
                           0000CD   183 _TH2	=	0x00cd
                           0000D0   184 _PSW	=	0x00d0
                           0000E0   185 _ACC	=	0x00e0
                           0000E0   186 _A	=	0x00e0
                           0000F0   187 _B	=	0x00f0
                                    188 ;--------------------------------------------------------
                                    189 ; special function bits
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0_0	=	0x0080
                           000081   194 _P0_1	=	0x0081
                           000082   195 _P0_2	=	0x0082
                           000083   196 _P0_3	=	0x0083
                           000084   197 _P0_4	=	0x0084
                           000085   198 _P0_5	=	0x0085
                           000086   199 _P0_6	=	0x0086
                           000087   200 _P0_7	=	0x0087
                           000088   201 _IT0	=	0x0088
                           000089   202 _IE0	=	0x0089
                           00008A   203 _IT1	=	0x008a
                           00008B   204 _IE1	=	0x008b
                           00008C   205 _TR0	=	0x008c
                           00008D   206 _TF0	=	0x008d
                           00008E   207 _TR1	=	0x008e
                           00008F   208 _TF1	=	0x008f
                           000090   209 _P1_0	=	0x0090
                           000091   210 _P1_1	=	0x0091
                           000092   211 _P1_2	=	0x0092
                           000093   212 _P1_3	=	0x0093
                           000094   213 _P1_4	=	0x0094
                           000095   214 _P1_5	=	0x0095
                           000096   215 _P1_6	=	0x0096
                           000097   216 _P1_7	=	0x0097
                           000090   217 _T2	=	0x0090
                           000091   218 _T2EX	=	0x0091
                           000098   219 _RI	=	0x0098
                           000099   220 _TI	=	0x0099
                           00009A   221 _RB8	=	0x009a
                           00009B   222 _TB8	=	0x009b
                           00009C   223 _REN	=	0x009c
                           00009D   224 _SM2	=	0x009d
                           00009E   225 _SM1	=	0x009e
                           00009F   226 _SM0	=	0x009f
                           0000A0   227 _P2_0	=	0x00a0
                           0000A1   228 _P2_1	=	0x00a1
                           0000A2   229 _P2_2	=	0x00a2
                           0000A3   230 _P2_3	=	0x00a3
                           0000A4   231 _P2_4	=	0x00a4
                           0000A5   232 _P2_5	=	0x00a5
                           0000A6   233 _P2_6	=	0x00a6
                           0000A7   234 _P2_7	=	0x00a7
                           0000A8   235 _EX0	=	0x00a8
                           0000A9   236 _ET0	=	0x00a9
                           0000AA   237 _EX1	=	0x00aa
                           0000AB   238 _ET1	=	0x00ab
                           0000AC   239 _ES	=	0x00ac
                           0000AD   240 _ET2	=	0x00ad
                           0000AF   241 _EA	=	0x00af
                           0000B0   242 _P3_0	=	0x00b0
                           0000B1   243 _P3_1	=	0x00b1
                           0000B2   244 _P3_2	=	0x00b2
                           0000B3   245 _P3_3	=	0x00b3
                           0000B4   246 _P3_4	=	0x00b4
                           0000B5   247 _P3_5	=	0x00b5
                           0000B6   248 _P3_6	=	0x00b6
                           0000B7   249 _P3_7	=	0x00b7
                           0000B0   250 _RXD	=	0x00b0
                           0000B1   251 _TXD	=	0x00b1
                           0000B2   252 _INT0	=	0x00b2
                           0000B3   253 _INT1	=	0x00b3
                           0000B4   254 _T0	=	0x00b4
                           0000B5   255 _T1	=	0x00b5
                           0000B6   256 _WR	=	0x00b6
                           0000B7   257 _RD	=	0x00b7
                           0000B8   258 _PX0	=	0x00b8
                           0000B9   259 _PT0	=	0x00b9
                           0000BA   260 _PX1	=	0x00ba
                           0000BB   261 _PT1	=	0x00bb
                           0000BC   262 _PS	=	0x00bc
                           0000BD   263 _PT2	=	0x00bd
                           0000C8   264 _T2CON_0	=	0x00c8
                           0000C9   265 _T2CON_1	=	0x00c9
                           0000CA   266 _T2CON_2	=	0x00ca
                           0000CB   267 _T2CON_3	=	0x00cb
                           0000CC   268 _T2CON_4	=	0x00cc
                           0000CD   269 _T2CON_5	=	0x00cd
                           0000CE   270 _T2CON_6	=	0x00ce
                           0000CF   271 _T2CON_7	=	0x00cf
                           0000C8   272 _CP_RL2	=	0x00c8
                           0000C9   273 _C_T2	=	0x00c9
                           0000CA   274 _TR2	=	0x00ca
                           0000CB   275 _EXEN2	=	0x00cb
                           0000CC   276 _TCLK	=	0x00cc
                           0000CD   277 _RCLK	=	0x00cd
                           0000CE   278 _EXF2	=	0x00ce
                           0000CF   279 _TF2	=	0x00cf
                           0000D0   280 _P	=	0x00d0
                           0000D1   281 _FL	=	0x00d1
                           0000D2   282 _OV	=	0x00d2
                           0000D3   283 _RS0	=	0x00d3
                           0000D4   284 _RS1	=	0x00d4
                           0000D5   285 _F0	=	0x00d5
                           0000D6   286 _AC	=	0x00d6
                           0000D7   287 _CY	=	0x00d7
                                    288 ;--------------------------------------------------------
                                    289 ; overlayable register banks
                                    290 ;--------------------------------------------------------
                                    291 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        292 	.ds 8
                                    293 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        294 	.ds 8
                                    295 ;--------------------------------------------------------
                                    296 ; overlayable bit register bank
                                    297 ;--------------------------------------------------------
                                    298 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        299 bits:
      000020                        300 	.ds 1
                           008000   301 	b0 = bits[0]
                           008100   302 	b1 = bits[1]
                           008200   303 	b2 = bits[2]
                           008300   304 	b3 = bits[3]
                           008400   305 	b4 = bits[4]
                           008500   306 	b5 = bits[5]
                           008600   307 	b6 = bits[6]
                           008700   308 	b7 = bits[7]
                                    309 ;--------------------------------------------------------
                                    310 ; internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area DSEG    (DATA)
                                    313 ;--------------------------------------------------------
                                    314 ; overlayable items in internal ram 
                                    315 ;--------------------------------------------------------
                                    316 ;--------------------------------------------------------
                                    317 ; Stack segment in internal ram 
                                    318 ;--------------------------------------------------------
                                    319 	.area	SSEG
      000021                        320 __start__stack:
      000021                        321 	.ds	1
                                    322 
                                    323 ;--------------------------------------------------------
                                    324 ; indirectly addressable internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area ISEG    (DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; absolute internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area IABS    (ABS,DATA)
                                    331 	.area IABS    (ABS,DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; bit data
                                    334 ;--------------------------------------------------------
                                    335 	.area BSEG    (BIT)
                                    336 ;--------------------------------------------------------
                                    337 ; paged external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area PSEG    (PAG,XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XSEG    (XDATA)
      008000                        344 _i0::
      008000                        345 	.ds 2
      008002                        346 _i1::
      008002                        347 	.ds 2
      008004                        348 _pu::
      008004                        349 	.ds 1024
      008404                        350 _u::
      008404                        351 	.ds 1024
      008804                        352 _nu::
      008804                        353 	.ds 1024
      008C04                        354 _x::
      008C04                        355 	.ds 2
      008C06                        356 _y::
      008C06                        357 	.ds 2
      008C08                        358 _x1::
      008C08                        359 	.ds 2
      008C0A                        360 _y1::
      008C0A                        361 	.ds 2
      008C0C                        362 _n::
      008C0C                        363 	.ds 2
      008C0E                        364 _generation::
      008C0E                        365 	.ds 8
      008C16                        366 _j::
      008C16                        367 	.ds 2
      008C18                        368 _fixed::
      008C18                        369 	.ds 2
      008C1A                        370 _cycle2::
      008C1A                        371 	.ds 2
      008C1C                        372 _c::
      008C1C                        373 	.ds 2
                                    374 ;--------------------------------------------------------
                                    375 ; absolute external ram data
                                    376 ;--------------------------------------------------------
                                    377 	.area XABS    (ABS,XDATA)
                                    378 ;--------------------------------------------------------
                                    379 ; external initialized ram data
                                    380 ;--------------------------------------------------------
                                    381 	.area XISEG   (XDATA)
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT0 (CODE)
                                    384 	.area GSINIT1 (CODE)
                                    385 	.area GSINIT2 (CODE)
                                    386 	.area GSINIT3 (CODE)
                                    387 	.area GSINIT4 (CODE)
                                    388 	.area GSINIT5 (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.area GSFINAL (CODE)
                                    391 	.area CSEG    (CODE)
                                    392 ;--------------------------------------------------------
                                    393 ; interrupt vector 
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
      002000                        396 __interrupt_vect:
      002000 02 20 19         [24]  397 	ljmp	__sdcc_gsinit_startup
      002003 02 20 82         [24]  398 	ljmp	_int0
      002006                        399 	.ds	5
      00200B 32               [24]  400 	reti
      00200C                        401 	.ds	7
      002013 02 20 98         [24]  402 	ljmp	_int1
                                    403 ;--------------------------------------------------------
                                    404 ; global & static initialisations
                                    405 ;--------------------------------------------------------
                                    406 	.area HOME    (CODE)
                                    407 	.area GSINIT  (CODE)
                                    408 	.area GSFINAL (CODE)
                                    409 	.area GSINIT  (CODE)
                                    410 	.globl __sdcc_gsinit_startup
                                    411 	.globl __sdcc_program_startup
                                    412 	.globl __start__stack
                                    413 	.globl __mcs51_genXINIT
                                    414 	.globl __mcs51_genXRAMCLEAR
                                    415 	.globl __mcs51_genRAMCLEAR
                                    416 	.area GSFINAL (CODE)
      002072 02 20 16         [24]  417 	ljmp	__sdcc_program_startup
                                    418 ;--------------------------------------------------------
                                    419 ; Home
                                    420 ;--------------------------------------------------------
                                    421 	.area HOME    (CODE)
                                    422 	.area HOME    (CODE)
      002016                        423 __sdcc_program_startup:
      002016 02 20 AE         [24]  424 	ljmp	_main
                                    425 ;	return from main will return to caller
                                    426 ;--------------------------------------------------------
                                    427 ; code
                                    428 ;--------------------------------------------------------
                                    429 	.area CSEG    (CODE)
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'putchar'
                                    432 ;------------------------------------------------------------
                                    433 ;c                         Allocated to registers 
                                    434 ;------------------------------------------------------------
                                    435 ;	life.c:7: int putchar(int c) __naked {
                                    436 ;	-----------------------------------------
                                    437 ;	 function putchar
                                    438 ;	-----------------------------------------
      002075                        439 _putchar:
                                    440 ;	naked function: no prologue.
                                    441 ;	life.c:12: __endasm;
      002075 E5 82            [12]  442 	mov	a, dpl
      002077 02 00 30         [24]  443 	ljmp	0x0030
                                    444 ;	life.c:13: }
                                    445 ;	naked function: no epilogue.
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'getchar'
                                    448 ;------------------------------------------------------------
                                    449 ;	life.c:15: int getchar(void) {
                                    450 ;	-----------------------------------------
                                    451 ;	 function getchar
                                    452 ;	-----------------------------------------
      00207A                        453 _getchar:
                           000007   454 	ar7 = 0x07
                           000006   455 	ar6 = 0x06
                           000005   456 	ar5 = 0x05
                           000004   457 	ar4 = 0x04
                           000003   458 	ar3 = 0x03
                           000002   459 	ar2 = 0x02
                           000001   460 	ar1 = 0x01
                           000000   461 	ar0 = 0x00
                                    462 ;	life.c:20: __endasm;
      00207A 12 00 32         [24]  463 	lcall	0x0032
      00207D C2 83            [12]  464 	clr	dph
      00207F F5 82            [12]  465 	mov	dpl, a
                                    466 ;	life.c:21: }
      002081 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function 'int0'
                                    470 ;------------------------------------------------------------
                                    471 ;	life.c:32: void int0(void) __interrupt 0 __using 1 {
                                    472 ;	-----------------------------------------
                                    473 ;	 function int0
                                    474 ;	-----------------------------------------
      002082                        475 _int0:
                           00000F   476 	ar7 = 0x0f
                           00000E   477 	ar6 = 0x0e
                           00000D   478 	ar5 = 0x0d
                           00000C   479 	ar4 = 0x0c
                           00000B   480 	ar3 = 0x0b
                           00000A   481 	ar2 = 0x0a
                           000009   482 	ar1 = 0x09
                           000008   483 	ar0 = 0x08
      002082 C0 E0            [24]  484 	push	acc
      002084 C0 82            [24]  485 	push	dpl
      002086 C0 83            [24]  486 	push	dph
                                    487 ;	life.c:33: i0 = 1;
      002088 90 80 00         [24]  488 	mov	dptr,#_i0
      00208B 74 01            [12]  489 	mov	a,#0x01
      00208D F0               [24]  490 	movx	@dptr,a
      00208E E4               [12]  491 	clr	a
      00208F A3               [24]  492 	inc	dptr
      002090 F0               [24]  493 	movx	@dptr,a
                                    494 ;	life.c:34: }
      002091 D0 83            [24]  495 	pop	dph
      002093 D0 82            [24]  496 	pop	dpl
      002095 D0 E0            [24]  497 	pop	acc
      002097 32               [24]  498 	reti
                                    499 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    500 ;	eliminated unneeded push/pop psw
                                    501 ;	eliminated unneeded push/pop b
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'int1'
                                    504 ;------------------------------------------------------------
                                    505 ;	life.c:37: void int1(void) __interrupt 2 __using 1 {
                                    506 ;	-----------------------------------------
                                    507 ;	 function int1
                                    508 ;	-----------------------------------------
      002098                        509 _int1:
      002098 C0 E0            [24]  510 	push	acc
      00209A C0 82            [24]  511 	push	dpl
      00209C C0 83            [24]  512 	push	dph
                                    513 ;	life.c:38: i1 = 1;
      00209E 90 80 02         [24]  514 	mov	dptr,#_i1
      0020A1 74 01            [12]  515 	mov	a,#0x01
      0020A3 F0               [24]  516 	movx	@dptr,a
      0020A4 E4               [12]  517 	clr	a
      0020A5 A3               [24]  518 	inc	dptr
      0020A6 F0               [24]  519 	movx	@dptr,a
                                    520 ;	life.c:39: }
      0020A7 D0 83            [24]  521 	pop	dph
      0020A9 D0 82            [24]  522 	pop	dpl
      0020AB D0 E0            [24]  523 	pop	acc
      0020AD 32               [24]  524 	reti
                                    525 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    526 ;	eliminated unneeded push/pop psw
                                    527 ;	eliminated unneeded push/pop b
                                    528 ;------------------------------------------------------------
                                    529 ;Allocation info for local variables in function 'main'
                                    530 ;------------------------------------------------------------
                                    531 ;	life.c:128: void main(void) {
                                    532 ;	-----------------------------------------
                                    533 ;	 function main
                                    534 ;	-----------------------------------------
      0020AE                        535 _main:
                           000007   536 	ar7 = 0x07
                           000006   537 	ar6 = 0x06
                           000005   538 	ar5 = 0x05
                           000004   539 	ar4 = 0x04
                           000003   540 	ar3 = 0x03
                           000002   541 	ar2 = 0x02
                           000001   542 	ar1 = 0x01
                           000000   543 	ar0 = 0x00
                                    544 ;	life.c:129: IT0 = 1;
                                    545 ;	assignBit
      0020AE D2 88            [12]  546 	setb	_IT0
                                    547 ;	life.c:130: IT1 = 1;
                                    548 ;	assignBit
      0020B0 D2 8A            [12]  549 	setb	_IT1
                                    550 ;	life.c:131: EX0 = 1;
                                    551 ;	assignBit
      0020B2 D2 A8            [12]  552 	setb	_EX0
                                    553 ;	life.c:132: EX1 = 1;
                                    554 ;	assignBit
      0020B4 D2 AA            [12]  555 	setb	_EX1
                                    556 ;	life.c:133: EA = 1;
                                    557 ;	assignBit
      0020B6 D2 AF            [12]  558 	setb	_EA
                                    559 ;	life.c:135: for (i0 = 0; !i0; ) {
      0020B8 90 80 00         [24]  560 	mov	dptr,#_i0
      0020BB E4               [12]  561 	clr	a
      0020BC F0               [24]  562 	movx	@dptr,a
      0020BD A3               [24]  563 	inc	dptr
      0020BE F0               [24]  564 	movx	@dptr,a
      0020BF 90 80 02         [24]  565 	mov	dptr,#_i1
      0020C2 F0               [24]  566 	movx	@dptr,a
      0020C3 A3               [24]  567 	inc	dptr
      0020C4 F0               [24]  568 	movx	@dptr,a
      0020C5                        569 00181$:
                                    570 ;	life.c:83: for (y = 0; y < H; y++)
      0020C5 90 8C 06         [24]  571 	mov	dptr,#_y
      0020C8 E4               [12]  572 	clr	a
      0020C9 F0               [24]  573 	movx	@dptr,a
      0020CA A3               [24]  574 	inc	dptr
      0020CB F0               [24]  575 	movx	@dptr,a
      0020CC                        576 00147$:
                                    577 ;	life.c:84: for (x = 0; x < W; x++)
      0020CC 90 8C 04         [24]  578 	mov	dptr,#_x
      0020CF E4               [12]  579 	clr	a
      0020D0 F0               [24]  580 	movx	@dptr,a
      0020D1 A3               [24]  581 	inc	dptr
      0020D2 F0               [24]  582 	movx	@dptr,a
      0020D3                        583 00145$:
                                    584 ;	life.c:85: pu[y][x] = 0;
      0020D3 90 8C 06         [24]  585 	mov	dptr,#_y
      0020D6 E0               [24]  586 	movx	a,@dptr
      0020D7 FE               [12]  587 	mov	r6,a
      0020D8 A3               [24]  588 	inc	dptr
      0020D9 E0               [24]  589 	movx	a,@dptr
      0020DA C4               [12]  590 	swap	a
      0020DB 23               [12]  591 	rl	a
      0020DC 54 E0            [12]  592 	anl	a,#0xe0
      0020DE CE               [12]  593 	xch	a,r6
      0020DF C4               [12]  594 	swap	a
      0020E0 23               [12]  595 	rl	a
      0020E1 CE               [12]  596 	xch	a,r6
      0020E2 6E               [12]  597 	xrl	a,r6
      0020E3 CE               [12]  598 	xch	a,r6
      0020E4 54 E0            [12]  599 	anl	a,#0xe0
      0020E6 CE               [12]  600 	xch	a,r6
      0020E7 6E               [12]  601 	xrl	a,r6
      0020E8 FF               [12]  602 	mov	r7,a
      0020E9 EE               [12]  603 	mov	a,r6
      0020EA 24 04            [12]  604 	add	a,#_pu
      0020EC FE               [12]  605 	mov	r6,a
      0020ED EF               [12]  606 	mov	a,r7
      0020EE 34 80            [12]  607 	addc	a,#(_pu >> 8)
      0020F0 FF               [12]  608 	mov	r7,a
      0020F1 90 8C 04         [24]  609 	mov	dptr,#_x
      0020F4 E0               [24]  610 	movx	a,@dptr
      0020F5 FC               [12]  611 	mov	r4,a
      0020F6 A3               [24]  612 	inc	dptr
      0020F7 E0               [24]  613 	movx	a,@dptr
      0020F8 FD               [12]  614 	mov	r5,a
      0020F9 EC               [12]  615 	mov	a,r4
      0020FA 2E               [12]  616 	add	a,r6
      0020FB F5 82            [12]  617 	mov	dpl,a
      0020FD ED               [12]  618 	mov	a,r5
      0020FE 3F               [12]  619 	addc	a,r7
      0020FF F5 83            [12]  620 	mov	dph,a
      002101 E4               [12]  621 	clr	a
      002102 F0               [24]  622 	movx	@dptr,a
                                    623 ;	life.c:84: for (x = 0; x < W; x++)
      002103 90 8C 04         [24]  624 	mov	dptr,#_x
      002106 E0               [24]  625 	movx	a,@dptr
      002107 24 01            [12]  626 	add	a,#0x01
      002109 F0               [24]  627 	movx	@dptr,a
      00210A A3               [24]  628 	inc	dptr
      00210B E0               [24]  629 	movx	a,@dptr
      00210C 34 00            [12]  630 	addc	a,#0x00
      00210E F0               [24]  631 	movx	@dptr,a
      00210F 90 8C 04         [24]  632 	mov	dptr,#_x
      002112 E0               [24]  633 	movx	a,@dptr
      002113 FE               [12]  634 	mov	r6,a
      002114 A3               [24]  635 	inc	dptr
      002115 E0               [24]  636 	movx	a,@dptr
      002116 FF               [12]  637 	mov	r7,a
      002117 C3               [12]  638 	clr	c
      002118 EE               [12]  639 	mov	a,r6
      002119 94 20            [12]  640 	subb	a,#0x20
      00211B EF               [12]  641 	mov	a,r7
      00211C 64 80            [12]  642 	xrl	a,#0x80
      00211E 94 80            [12]  643 	subb	a,#0x80
      002120 40 B1            [24]  644 	jc	00145$
                                    645 ;	life.c:83: for (y = 0; y < H; y++)
      002122 90 8C 06         [24]  646 	mov	dptr,#_y
      002125 E0               [24]  647 	movx	a,@dptr
      002126 24 01            [12]  648 	add	a,#0x01
      002128 F0               [24]  649 	movx	@dptr,a
      002129 A3               [24]  650 	inc	dptr
      00212A E0               [24]  651 	movx	a,@dptr
      00212B 34 00            [12]  652 	addc	a,#0x00
      00212D F0               [24]  653 	movx	@dptr,a
      00212E 90 8C 06         [24]  654 	mov	dptr,#_y
      002131 E0               [24]  655 	movx	a,@dptr
      002132 FE               [12]  656 	mov	r6,a
      002133 A3               [24]  657 	inc	dptr
      002134 E0               [24]  658 	movx	a,@dptr
      002135 FF               [12]  659 	mov	r7,a
      002136 C3               [12]  660 	clr	c
      002137 EE               [12]  661 	mov	a,r6
      002138 94 20            [12]  662 	subb	a,#0x20
      00213A EF               [12]  663 	mov	a,r7
      00213B 64 80            [12]  664 	xrl	a,#0x80
      00213D 94 80            [12]  665 	subb	a,#0x80
      00213F 40 8B            [24]  666 	jc	00147$
                                    667 ;	life.c:137: printf("\033[2J\033[mINIT\n\r");
      002141 74 9F            [12]  668 	mov	a,#___str_5
      002143 C0 E0            [24]  669 	push	acc
      002145 74 3C            [12]  670 	mov	a,#(___str_5 >> 8)
      002147 C0 E0            [24]  671 	push	acc
      002149 74 80            [12]  672 	mov	a,#0x80
      00214B C0 E0            [24]  673 	push	acc
      00214D 12 28 B0         [24]  674 	lcall	_printf
      002150 15 81            [12]  675 	dec	sp
      002152 15 81            [12]  676 	dec	sp
      002154 15 81            [12]  677 	dec	sp
                                    678 ;	life.c:91: for (y = 0; y < H; y++)
      002156 90 8C 06         [24]  679 	mov	dptr,#_y
      002159 E4               [12]  680 	clr	a
      00215A F0               [24]  681 	movx	@dptr,a
      00215B A3               [24]  682 	inc	dptr
      00215C F0               [24]  683 	movx	@dptr,a
      00215D                        684 00151$:
                                    685 ;	life.c:92: for (x = 0; x < W; x++) {
      00215D 90 8C 04         [24]  686 	mov	dptr,#_x
      002160 E4               [12]  687 	clr	a
      002161 F0               [24]  688 	movx	@dptr,a
      002162 A3               [24]  689 	inc	dptr
      002163 F0               [24]  690 	movx	@dptr,a
      002164                        691 00149$:
                                    692 ;	life.c:93: c = getchar();
      002164 12 20 7A         [24]  693 	lcall	_getchar
      002167 AE 82            [24]  694 	mov	r6,dpl
      002169 AF 83            [24]  695 	mov	r7,dph
      00216B 90 8C 1C         [24]  696 	mov	dptr,#_c
      00216E EE               [12]  697 	mov	a,r6
      00216F F0               [24]  698 	movx	@dptr,a
      002170 EF               [12]  699 	mov	a,r7
      002171 A3               [24]  700 	inc	dptr
      002172 F0               [24]  701 	movx	@dptr,a
                                    702 ;	life.c:94: u[y][x] = c & 1;
      002173 90 8C 06         [24]  703 	mov	dptr,#_y
      002176 E0               [24]  704 	movx	a,@dptr
      002177 FC               [12]  705 	mov	r4,a
      002178 A3               [24]  706 	inc	dptr
      002179 E0               [24]  707 	movx	a,@dptr
      00217A C4               [12]  708 	swap	a
      00217B 23               [12]  709 	rl	a
      00217C 54 E0            [12]  710 	anl	a,#0xe0
      00217E CC               [12]  711 	xch	a,r4
      00217F C4               [12]  712 	swap	a
      002180 23               [12]  713 	rl	a
      002181 CC               [12]  714 	xch	a,r4
      002182 6C               [12]  715 	xrl	a,r4
      002183 CC               [12]  716 	xch	a,r4
      002184 54 E0            [12]  717 	anl	a,#0xe0
      002186 CC               [12]  718 	xch	a,r4
      002187 6C               [12]  719 	xrl	a,r4
      002188 FD               [12]  720 	mov	r5,a
      002189 EC               [12]  721 	mov	a,r4
      00218A 24 04            [12]  722 	add	a,#_u
      00218C FC               [12]  723 	mov	r4,a
      00218D ED               [12]  724 	mov	a,r5
      00218E 34 84            [12]  725 	addc	a,#(_u >> 8)
      002190 FD               [12]  726 	mov	r5,a
      002191 90 8C 04         [24]  727 	mov	dptr,#_x
      002194 E0               [24]  728 	movx	a,@dptr
      002195 FA               [12]  729 	mov	r2,a
      002196 A3               [24]  730 	inc	dptr
      002197 E0               [24]  731 	movx	a,@dptr
      002198 FB               [12]  732 	mov	r3,a
      002199 EA               [12]  733 	mov	a,r2
      00219A 2C               [12]  734 	add	a,r4
      00219B F5 82            [12]  735 	mov	dpl,a
      00219D EB               [12]  736 	mov	a,r3
      00219E 3D               [12]  737 	addc	a,r5
      00219F F5 83            [12]  738 	mov	dph,a
      0021A1 53 06 01         [24]  739 	anl	ar6,#0x01
      0021A4 EE               [12]  740 	mov	a,r6
      0021A5 F0               [24]  741 	movx	@dptr,a
                                    742 ;	life.c:92: for (x = 0; x < W; x++) {
      0021A6 90 8C 04         [24]  743 	mov	dptr,#_x
      0021A9 E0               [24]  744 	movx	a,@dptr
      0021AA 24 01            [12]  745 	add	a,#0x01
      0021AC F0               [24]  746 	movx	@dptr,a
      0021AD A3               [24]  747 	inc	dptr
      0021AE E0               [24]  748 	movx	a,@dptr
      0021AF 34 00            [12]  749 	addc	a,#0x00
      0021B1 F0               [24]  750 	movx	@dptr,a
      0021B2 90 8C 04         [24]  751 	mov	dptr,#_x
      0021B5 E0               [24]  752 	movx	a,@dptr
      0021B6 FE               [12]  753 	mov	r6,a
      0021B7 A3               [24]  754 	inc	dptr
      0021B8 E0               [24]  755 	movx	a,@dptr
      0021B9 FF               [12]  756 	mov	r7,a
      0021BA C3               [12]  757 	clr	c
      0021BB EE               [12]  758 	mov	a,r6
      0021BC 94 20            [12]  759 	subb	a,#0x20
      0021BE EF               [12]  760 	mov	a,r7
      0021BF 64 80            [12]  761 	xrl	a,#0x80
      0021C1 94 80            [12]  762 	subb	a,#0x80
      0021C3 40 9F            [24]  763 	jc	00149$
                                    764 ;	life.c:91: for (y = 0; y < H; y++)
      0021C5 90 8C 06         [24]  765 	mov	dptr,#_y
      0021C8 E0               [24]  766 	movx	a,@dptr
      0021C9 24 01            [12]  767 	add	a,#0x01
      0021CB F0               [24]  768 	movx	@dptr,a
      0021CC A3               [24]  769 	inc	dptr
      0021CD E0               [24]  770 	movx	a,@dptr
      0021CE 34 00            [12]  771 	addc	a,#0x00
      0021D0 F0               [24]  772 	movx	@dptr,a
      0021D1 90 8C 06         [24]  773 	mov	dptr,#_y
      0021D4 E0               [24]  774 	movx	a,@dptr
      0021D5 FE               [12]  775 	mov	r6,a
      0021D6 A3               [24]  776 	inc	dptr
      0021D7 E0               [24]  777 	movx	a,@dptr
      0021D8 FF               [12]  778 	mov	r7,a
      0021D9 C3               [12]  779 	clr	c
      0021DA EE               [12]  780 	mov	a,r6
      0021DB 94 20            [12]  781 	subb	a,#0x20
      0021DD EF               [12]  782 	mov	a,r7
      0021DE 64 80            [12]  783 	xrl	a,#0x80
      0021E0 94 80            [12]  784 	subb	a,#0x80
      0021E2 50 03            [24]  785 	jnc	00368$
      0021E4 02 21 5D         [24]  786 	ljmp	00151$
      0021E7                        787 00368$:
                                    788 ;	life.c:140: printf("RDY\n\r");
      0021E7 74 AD            [12]  789 	mov	a,#___str_6
      0021E9 C0 E0            [24]  790 	push	acc
      0021EB 74 3C            [12]  791 	mov	a,#(___str_6 >> 8)
      0021ED C0 E0            [24]  792 	push	acc
      0021EF 74 80            [12]  793 	mov	a,#0x80
      0021F1 C0 E0            [24]  794 	push	acc
      0021F3 12 28 B0         [24]  795 	lcall	_printf
      0021F6 15 81            [12]  796 	dec	sp
      0021F8 15 81            [12]  797 	dec	sp
      0021FA 15 81            [12]  798 	dec	sp
                                    799 ;	life.c:141: (void)getchar();
      0021FC 12 20 7A         [24]  800 	lcall	_getchar
                                    801 ;	life.c:42: for (j = 0; j < 4; j++)
      0021FF 90 8C 16         [24]  802 	mov	dptr,#_j
      002202 E4               [12]  803 	clr	a
      002203 F0               [24]  804 	movx	@dptr,a
      002204 A3               [24]  805 	inc	dptr
      002205 F0               [24]  806 	movx	@dptr,a
      002206                        807 00153$:
                                    808 ;	life.c:43: generation[j] = 0;
      002206 90 8C 16         [24]  809 	mov	dptr,#_j
      002209 E0               [24]  810 	movx	a,@dptr
      00220A FE               [12]  811 	mov	r6,a
      00220B A3               [24]  812 	inc	dptr
      00220C E0               [24]  813 	movx	a,@dptr
      00220D FF               [12]  814 	mov	r7,a
      00220E EE               [12]  815 	mov	a,r6
      00220F 2E               [12]  816 	add	a,r6
      002210 FE               [12]  817 	mov	r6,a
      002211 EF               [12]  818 	mov	a,r7
      002212 33               [12]  819 	rlc	a
      002213 FF               [12]  820 	mov	r7,a
      002214 EE               [12]  821 	mov	a,r6
      002215 24 0E            [12]  822 	add	a,#_generation
      002217 F5 82            [12]  823 	mov	dpl,a
      002219 EF               [12]  824 	mov	a,r7
      00221A 34 8C            [12]  825 	addc	a,#(_generation >> 8)
      00221C F5 83            [12]  826 	mov	dph,a
      00221E E4               [12]  827 	clr	a
      00221F F0               [24]  828 	movx	@dptr,a
      002220 A3               [24]  829 	inc	dptr
      002221 F0               [24]  830 	movx	@dptr,a
                                    831 ;	life.c:42: for (j = 0; j < 4; j++)
      002222 90 8C 16         [24]  832 	mov	dptr,#_j
      002225 E0               [24]  833 	movx	a,@dptr
      002226 24 01            [12]  834 	add	a,#0x01
      002228 F0               [24]  835 	movx	@dptr,a
      002229 A3               [24]  836 	inc	dptr
      00222A E0               [24]  837 	movx	a,@dptr
      00222B 34 00            [12]  838 	addc	a,#0x00
      00222D F0               [24]  839 	movx	@dptr,a
      00222E 90 8C 16         [24]  840 	mov	dptr,#_j
      002231 E0               [24]  841 	movx	a,@dptr
      002232 FE               [12]  842 	mov	r6,a
      002233 A3               [24]  843 	inc	dptr
      002234 E0               [24]  844 	movx	a,@dptr
      002235 FF               [12]  845 	mov	r7,a
      002236 C3               [12]  846 	clr	c
      002237 EE               [12]  847 	mov	a,r6
      002238 94 04            [12]  848 	subb	a,#0x04
      00223A EF               [12]  849 	mov	a,r7
      00223B 64 80            [12]  850 	xrl	a,#0x80
      00223D 94 80            [12]  851 	subb	a,#0x80
      00223F 40 C5            [24]  852 	jc	00153$
                                    853 ;	life.c:145: for (i1 = 0; !i0 && !i1; ) {
      002241                        854 00179$:
      002241 90 80 00         [24]  855 	mov	dptr,#_i0
      002244 E0               [24]  856 	movx	a,@dptr
      002245 F5 F0            [12]  857 	mov	b,a
      002247 A3               [24]  858 	inc	dptr
      002248 E0               [24]  859 	movx	a,@dptr
      002249 45 F0            [12]  860 	orl	a,b
      00224B 60 03            [24]  861 	jz	00370$
      00224D 02 28 19         [24]  862 	ljmp	00104$
      002250                        863 00370$:
                                    864 ;	life.c:67: printf("\033[2J\033[m");
      002250 74 86            [12]  865 	mov	a,#___str_1
      002252 C0 E0            [24]  866 	push	acc
      002254 74 3C            [12]  867 	mov	a,#(___str_1 >> 8)
      002256 C0 E0            [24]  868 	push	acc
      002258 74 80            [12]  869 	mov	a,#0x80
      00225A C0 E0            [24]  870 	push	acc
      00225C 12 28 B0         [24]  871 	lcall	_printf
      00225F 15 81            [12]  872 	dec	sp
      002261 15 81            [12]  873 	dec	sp
      002263 15 81            [12]  874 	dec	sp
                                    875 ;	life.c:58: for (j = 0; j < 4; j++) {
      002265 90 8C 16         [24]  876 	mov	dptr,#_j
      002268 E4               [12]  877 	clr	a
      002269 F0               [24]  878 	movx	@dptr,a
      00226A A3               [24]  879 	inc	dptr
      00226B F0               [24]  880 	movx	@dptr,a
      00226C                        881 00155$:
                                    882 ;	life.c:59: printf("%04x", generation[3 - j]);
      00226C 90 8C 16         [24]  883 	mov	dptr,#_j
      00226F E0               [24]  884 	movx	a,@dptr
      002270 FE               [12]  885 	mov	r6,a
      002271 A3               [24]  886 	inc	dptr
      002272 E0               [24]  887 	movx	a,@dptr
      002273 74 03            [12]  888 	mov	a,#0x03
      002275 C3               [12]  889 	clr	c
      002276 9E               [12]  890 	subb	a,r6
      002277 FE               [12]  891 	mov	r6,a
      002278 C2 D5            [12]  892 	clr	F0
      00227A 75 F0 02         [24]  893 	mov	b,#0x02
      00227D EE               [12]  894 	mov	a,r6
      00227E 30 E7 04         [24]  895 	jnb	acc.7,00371$
      002281 B2 D5            [12]  896 	cpl	F0
      002283 F4               [12]  897 	cpl	a
      002284 04               [12]  898 	inc	a
      002285                        899 00371$:
      002285 A4               [48]  900 	mul	ab
      002286 30 D5 0A         [24]  901 	jnb	F0,00372$
      002289 F4               [12]  902 	cpl	a
      00228A 24 01            [12]  903 	add	a,#0x01
      00228C C5 F0            [12]  904 	xch	a,b
      00228E F4               [12]  905 	cpl	a
      00228F 34 00            [12]  906 	addc	a,#0x00
      002291 C5 F0            [12]  907 	xch	a,b
      002293                        908 00372$:
      002293 24 0E            [12]  909 	add	a,#_generation
      002295 F5 82            [12]  910 	mov	dpl,a
      002297 74 8C            [12]  911 	mov	a,#(_generation >> 8)
      002299 35 F0            [12]  912 	addc	a,b
      00229B F5 83            [12]  913 	mov	dph,a
      00229D E0               [24]  914 	movx	a,@dptr
      00229E FE               [12]  915 	mov	r6,a
      00229F A3               [24]  916 	inc	dptr
      0022A0 E0               [24]  917 	movx	a,@dptr
      0022A1 FF               [12]  918 	mov	r7,a
      0022A2 C0 06            [24]  919 	push	ar6
      0022A4 C0 07            [24]  920 	push	ar7
      0022A6 74 81            [12]  921 	mov	a,#___str_0
      0022A8 C0 E0            [24]  922 	push	acc
      0022AA 74 3C            [12]  923 	mov	a,#(___str_0 >> 8)
      0022AC C0 E0            [24]  924 	push	acc
      0022AE 74 80            [12]  925 	mov	a,#0x80
      0022B0 C0 E0            [24]  926 	push	acc
      0022B2 12 28 B0         [24]  927 	lcall	_printf
      0022B5 E5 81            [12]  928 	mov	a,sp
      0022B7 24 FB            [12]  929 	add	a,#0xfb
      0022B9 F5 81            [12]  930 	mov	sp,a
                                    931 ;	life.c:60: if (j < 3) putchar(' ');
      0022BB 90 8C 16         [24]  932 	mov	dptr,#_j
      0022BE E0               [24]  933 	movx	a,@dptr
      0022BF FE               [12]  934 	mov	r6,a
      0022C0 A3               [24]  935 	inc	dptr
      0022C1 E0               [24]  936 	movx	a,@dptr
      0022C2 FF               [12]  937 	mov	r7,a
      0022C3 C3               [12]  938 	clr	c
      0022C4 EE               [12]  939 	mov	a,r6
      0022C5 94 03            [12]  940 	subb	a,#0x03
      0022C7 EF               [12]  941 	mov	a,r7
      0022C8 64 80            [12]  942 	xrl	a,#0x80
      0022CA 94 80            [12]  943 	subb	a,#0x80
      0022CC 50 06            [24]  944 	jnc	00156$
      0022CE 90 00 20         [24]  945 	mov	dptr,#0x0020
      0022D1 12 20 75         [24]  946 	lcall	_putchar
      0022D4                        947 00156$:
                                    948 ;	life.c:58: for (j = 0; j < 4; j++) {
      0022D4 90 8C 16         [24]  949 	mov	dptr,#_j
      0022D7 E0               [24]  950 	movx	a,@dptr
      0022D8 24 01            [12]  951 	add	a,#0x01
      0022DA F0               [24]  952 	movx	@dptr,a
      0022DB A3               [24]  953 	inc	dptr
      0022DC E0               [24]  954 	movx	a,@dptr
      0022DD 34 00            [12]  955 	addc	a,#0x00
      0022DF F0               [24]  956 	movx	@dptr,a
      0022E0 90 8C 16         [24]  957 	mov	dptr,#_j
      0022E3 E0               [24]  958 	movx	a,@dptr
      0022E4 FE               [12]  959 	mov	r6,a
      0022E5 A3               [24]  960 	inc	dptr
      0022E6 E0               [24]  961 	movx	a,@dptr
      0022E7 FF               [12]  962 	mov	r7,a
      0022E8 C3               [12]  963 	clr	c
      0022E9 EE               [12]  964 	mov	a,r6
      0022EA 94 04            [12]  965 	subb	a,#0x04
      0022EC EF               [12]  966 	mov	a,r7
      0022ED 64 80            [12]  967 	xrl	a,#0x80
      0022EF 94 80            [12]  968 	subb	a,#0x80
      0022F1 50 03            [24]  969 	jnc	00374$
      0022F3 02 22 6C         [24]  970 	ljmp	00155$
      0022F6                        971 00374$:
                                    972 ;	life.c:69: printf("\r\n");
      0022F6 74 8E            [12]  973 	mov	a,#___str_2
      0022F8 C0 E0            [24]  974 	push	acc
      0022FA 74 3C            [12]  975 	mov	a,#(___str_2 >> 8)
      0022FC C0 E0            [24]  976 	push	acc
      0022FE 74 80            [12]  977 	mov	a,#0x80
      002300 C0 E0            [24]  978 	push	acc
      002302 12 28 B0         [24]  979 	lcall	_printf
      002305 15 81            [12]  980 	dec	sp
      002307 15 81            [12]  981 	dec	sp
      002309 15 81            [12]  982 	dec	sp
                                    983 ;	life.c:49: for (j = 0; j < 4; j++) {
      00230B 90 8C 16         [24]  984 	mov	dptr,#_j
      00230E E4               [12]  985 	clr	a
      00230F F0               [24]  986 	movx	@dptr,a
      002310 A3               [24]  987 	inc	dptr
      002311 F0               [24]  988 	movx	@dptr,a
      002312                        989 00157$:
                                    990 ;	life.c:50: generation[j]++;
      002312 90 8C 16         [24]  991 	mov	dptr,#_j
      002315 E0               [24]  992 	movx	a,@dptr
      002316 FE               [12]  993 	mov	r6,a
      002317 A3               [24]  994 	inc	dptr
      002318 E0               [24]  995 	movx	a,@dptr
      002319 FF               [12]  996 	mov	r7,a
      00231A EE               [12]  997 	mov	a,r6
      00231B 2E               [12]  998 	add	a,r6
      00231C FE               [12]  999 	mov	r6,a
      00231D EF               [12] 1000 	mov	a,r7
      00231E 33               [12] 1001 	rlc	a
      00231F FF               [12] 1002 	mov	r7,a
      002320 EE               [12] 1003 	mov	a,r6
      002321 24 0E            [12] 1004 	add	a,#_generation
      002323 FE               [12] 1005 	mov	r6,a
      002324 EF               [12] 1006 	mov	a,r7
      002325 34 8C            [12] 1007 	addc	a,#(_generation >> 8)
      002327 FF               [12] 1008 	mov	r7,a
      002328 8E 82            [24] 1009 	mov	dpl,r6
      00232A 8F 83            [24] 1010 	mov	dph,r7
      00232C E0               [24] 1011 	movx	a,@dptr
      00232D FC               [12] 1012 	mov	r4,a
      00232E A3               [24] 1013 	inc	dptr
      00232F E0               [24] 1014 	movx	a,@dptr
      002330 FD               [12] 1015 	mov	r5,a
      002331 0C               [12] 1016 	inc	r4
      002332 BC 00 01         [24] 1017 	cjne	r4,#0x00,00375$
      002335 0D               [12] 1018 	inc	r5
      002336                       1019 00375$:
      002336 8E 82            [24] 1020 	mov	dpl,r6
      002338 8F 83            [24] 1021 	mov	dph,r7
      00233A EC               [12] 1022 	mov	a,r4
      00233B F0               [24] 1023 	movx	@dptr,a
      00233C ED               [12] 1024 	mov	a,r5
      00233D A3               [24] 1025 	inc	dptr
      00233E F0               [24] 1026 	movx	@dptr,a
                                   1027 ;	life.c:51: if (generation[j]) break;
      00233F 90 8C 16         [24] 1028 	mov	dptr,#_j
      002342 E0               [24] 1029 	movx	a,@dptr
      002343 FE               [12] 1030 	mov	r6,a
      002344 A3               [24] 1031 	inc	dptr
      002345 E0               [24] 1032 	movx	a,@dptr
      002346 FF               [12] 1033 	mov	r7,a
      002347 EE               [12] 1034 	mov	a,r6
      002348 2E               [12] 1035 	add	a,r6
      002349 FC               [12] 1036 	mov	r4,a
      00234A EF               [12] 1037 	mov	a,r7
      00234B 33               [12] 1038 	rlc	a
      00234C FD               [12] 1039 	mov	r5,a
      00234D EC               [12] 1040 	mov	a,r4
      00234E 24 0E            [12] 1041 	add	a,#_generation
      002350 F5 82            [12] 1042 	mov	dpl,a
      002352 ED               [12] 1043 	mov	a,r5
      002353 34 8C            [12] 1044 	addc	a,#(_generation >> 8)
      002355 F5 83            [12] 1045 	mov	dph,a
      002357 E0               [24] 1046 	movx	a,@dptr
      002358 FC               [12] 1047 	mov	r4,a
      002359 A3               [24] 1048 	inc	dptr
      00235A E0               [24] 1049 	movx	a,@dptr
      00235B FD               [12] 1050 	mov	r5,a
      00235C 4C               [12] 1051 	orl	a,r4
      00235D 70 1E            [24] 1052 	jnz	00123$
                                   1053 ;	life.c:49: for (j = 0; j < 4; j++) {
      00235F 90 8C 16         [24] 1054 	mov	dptr,#_j
      002362 74 01            [12] 1055 	mov	a,#0x01
      002364 2E               [12] 1056 	add	a,r6
      002365 F0               [24] 1057 	movx	@dptr,a
      002366 E4               [12] 1058 	clr	a
      002367 3F               [12] 1059 	addc	a,r7
      002368 A3               [24] 1060 	inc	dptr
      002369 F0               [24] 1061 	movx	@dptr,a
      00236A 90 8C 16         [24] 1062 	mov	dptr,#_j
      00236D E0               [24] 1063 	movx	a,@dptr
      00236E FE               [12] 1064 	mov	r6,a
      00236F A3               [24] 1065 	inc	dptr
      002370 E0               [24] 1066 	movx	a,@dptr
      002371 FF               [12] 1067 	mov	r7,a
      002372 C3               [12] 1068 	clr	c
      002373 EE               [12] 1069 	mov	a,r6
      002374 94 04            [12] 1070 	subb	a,#0x04
      002376 EF               [12] 1071 	mov	a,r7
      002377 64 80            [12] 1072 	xrl	a,#0x80
      002379 94 80            [12] 1073 	subb	a,#0x80
      00237B 40 95            [24] 1074 	jc	00157$
                                   1075 ;	life.c:70: updategen();
      00237D                       1076 00123$:
                                   1077 ;	life.c:72: for (x = 0; x < W; x++) {
      00237D 90 8C 04         [24] 1078 	mov	dptr,#_x
      002380 E4               [12] 1079 	clr	a
      002381 F0               [24] 1080 	movx	@dptr,a
      002382 A3               [24] 1081 	inc	dptr
      002383 F0               [24] 1082 	movx	@dptr,a
      002384                       1083 00161$:
                                   1084 ;	life.c:73: for (y = 0; y < H; y++)
      002384 90 8C 06         [24] 1085 	mov	dptr,#_y
      002387 E4               [12] 1086 	clr	a
      002388 F0               [24] 1087 	movx	@dptr,a
      002389 A3               [24] 1088 	inc	dptr
      00238A F0               [24] 1089 	movx	@dptr,a
      00238B                       1090 00159$:
                                   1091 ;	life.c:74: if (u[y][x]) printf("\033[01m[]\033[m");
      00238B 90 8C 06         [24] 1092 	mov	dptr,#_y
      00238E E0               [24] 1093 	movx	a,@dptr
      00238F FE               [12] 1094 	mov	r6,a
      002390 A3               [24] 1095 	inc	dptr
      002391 E0               [24] 1096 	movx	a,@dptr
      002392 C4               [12] 1097 	swap	a
      002393 23               [12] 1098 	rl	a
      002394 54 E0            [12] 1099 	anl	a,#0xe0
      002396 CE               [12] 1100 	xch	a,r6
      002397 C4               [12] 1101 	swap	a
      002398 23               [12] 1102 	rl	a
      002399 CE               [12] 1103 	xch	a,r6
      00239A 6E               [12] 1104 	xrl	a,r6
      00239B CE               [12] 1105 	xch	a,r6
      00239C 54 E0            [12] 1106 	anl	a,#0xe0
      00239E CE               [12] 1107 	xch	a,r6
      00239F 6E               [12] 1108 	xrl	a,r6
      0023A0 FF               [12] 1109 	mov	r7,a
      0023A1 EE               [12] 1110 	mov	a,r6
      0023A2 24 04            [12] 1111 	add	a,#_u
      0023A4 FE               [12] 1112 	mov	r6,a
      0023A5 EF               [12] 1113 	mov	a,r7
      0023A6 34 84            [12] 1114 	addc	a,#(_u >> 8)
      0023A8 FF               [12] 1115 	mov	r7,a
      0023A9 90 8C 04         [24] 1116 	mov	dptr,#_x
      0023AC E0               [24] 1117 	movx	a,@dptr
      0023AD FC               [12] 1118 	mov	r4,a
      0023AE A3               [24] 1119 	inc	dptr
      0023AF E0               [24] 1120 	movx	a,@dptr
      0023B0 FD               [12] 1121 	mov	r5,a
      0023B1 EC               [12] 1122 	mov	a,r4
      0023B2 2E               [12] 1123 	add	a,r6
      0023B3 FE               [12] 1124 	mov	r6,a
      0023B4 ED               [12] 1125 	mov	a,r5
      0023B5 3F               [12] 1126 	addc	a,r7
      0023B6 FF               [12] 1127 	mov	r7,a
      0023B7 8E 82            [24] 1128 	mov	dpl,r6
      0023B9 8F 83            [24] 1129 	mov	dph,r7
      0023BB E0               [24] 1130 	movx	a,@dptr
      0023BC 60 17            [24] 1131 	jz	00125$
      0023BE 74 91            [12] 1132 	mov	a,#___str_3
      0023C0 C0 E0            [24] 1133 	push	acc
      0023C2 74 3C            [12] 1134 	mov	a,#(___str_3 >> 8)
      0023C4 C0 E0            [24] 1135 	push	acc
      0023C6 74 80            [12] 1136 	mov	a,#0x80
      0023C8 C0 E0            [24] 1137 	push	acc
      0023CA 12 28 B0         [24] 1138 	lcall	_printf
      0023CD 15 81            [12] 1139 	dec	sp
      0023CF 15 81            [12] 1140 	dec	sp
      0023D1 15 81            [12] 1141 	dec	sp
      0023D3 80 15            [24] 1142 	sjmp	00160$
      0023D5                       1143 00125$:
                                   1144 ;	life.c:75: else printf("--");
      0023D5 74 9C            [12] 1145 	mov	a,#___str_4
      0023D7 C0 E0            [24] 1146 	push	acc
      0023D9 74 3C            [12] 1147 	mov	a,#(___str_4 >> 8)
      0023DB C0 E0            [24] 1148 	push	acc
      0023DD 74 80            [12] 1149 	mov	a,#0x80
      0023DF C0 E0            [24] 1150 	push	acc
      0023E1 12 28 B0         [24] 1151 	lcall	_printf
      0023E4 15 81            [12] 1152 	dec	sp
      0023E6 15 81            [12] 1153 	dec	sp
      0023E8 15 81            [12] 1154 	dec	sp
      0023EA                       1155 00160$:
                                   1156 ;	life.c:73: for (y = 0; y < H; y++)
      0023EA 90 8C 06         [24] 1157 	mov	dptr,#_y
      0023ED E0               [24] 1158 	movx	a,@dptr
      0023EE 24 01            [12] 1159 	add	a,#0x01
      0023F0 F0               [24] 1160 	movx	@dptr,a
      0023F1 A3               [24] 1161 	inc	dptr
      0023F2 E0               [24] 1162 	movx	a,@dptr
      0023F3 34 00            [12] 1163 	addc	a,#0x00
      0023F5 F0               [24] 1164 	movx	@dptr,a
      0023F6 90 8C 06         [24] 1165 	mov	dptr,#_y
      0023F9 E0               [24] 1166 	movx	a,@dptr
      0023FA FE               [12] 1167 	mov	r6,a
      0023FB A3               [24] 1168 	inc	dptr
      0023FC E0               [24] 1169 	movx	a,@dptr
      0023FD FF               [12] 1170 	mov	r7,a
      0023FE C3               [12] 1171 	clr	c
      0023FF EE               [12] 1172 	mov	a,r6
      002400 94 20            [12] 1173 	subb	a,#0x20
      002402 EF               [12] 1174 	mov	a,r7
      002403 64 80            [12] 1175 	xrl	a,#0x80
      002405 94 80            [12] 1176 	subb	a,#0x80
      002407 50 03            [24] 1177 	jnc	00379$
      002409 02 23 8B         [24] 1178 	ljmp	00159$
      00240C                       1179 00379$:
                                   1180 ;	life.c:76: printf("\r\n");
      00240C 74 8E            [12] 1181 	mov	a,#___str_2
      00240E C0 E0            [24] 1182 	push	acc
      002410 74 3C            [12] 1183 	mov	a,#(___str_2 >> 8)
      002412 C0 E0            [24] 1184 	push	acc
      002414 74 80            [12] 1185 	mov	a,#0x80
      002416 C0 E0            [24] 1186 	push	acc
      002418 12 28 B0         [24] 1187 	lcall	_printf
      00241B 15 81            [12] 1188 	dec	sp
      00241D 15 81            [12] 1189 	dec	sp
      00241F 15 81            [12] 1190 	dec	sp
                                   1191 ;	life.c:72: for (x = 0; x < W; x++) {
      002421 90 8C 04         [24] 1192 	mov	dptr,#_x
      002424 E0               [24] 1193 	movx	a,@dptr
      002425 24 01            [12] 1194 	add	a,#0x01
      002427 F0               [24] 1195 	movx	@dptr,a
      002428 A3               [24] 1196 	inc	dptr
      002429 E0               [24] 1197 	movx	a,@dptr
      00242A 34 00            [12] 1198 	addc	a,#0x00
      00242C F0               [24] 1199 	movx	@dptr,a
      00242D 90 8C 04         [24] 1200 	mov	dptr,#_x
      002430 E0               [24] 1201 	movx	a,@dptr
      002431 FE               [12] 1202 	mov	r6,a
      002432 A3               [24] 1203 	inc	dptr
      002433 E0               [24] 1204 	movx	a,@dptr
      002434 FF               [12] 1205 	mov	r7,a
      002435 C3               [12] 1206 	clr	c
      002436 EE               [12] 1207 	mov	a,r6
      002437 94 20            [12] 1208 	subb	a,#0x20
      002439 EF               [12] 1209 	mov	a,r7
      00243A 64 80            [12] 1210 	xrl	a,#0x80
      00243C 94 80            [12] 1211 	subb	a,#0x80
      00243E 50 03            [24] 1212 	jnc	00380$
      002440 02 23 84         [24] 1213 	ljmp	00161$
      002443                       1214 00380$:
                                   1215 ;	life.c:101: fixed = 1;
      002443 90 8C 18         [24] 1216 	mov	dptr,#_fixed
      002446 74 01            [12] 1217 	mov	a,#0x01
      002448 F0               [24] 1218 	movx	@dptr,a
      002449 E4               [12] 1219 	clr	a
      00244A A3               [24] 1220 	inc	dptr
      00244B F0               [24] 1221 	movx	@dptr,a
                                   1222 ;	life.c:102: cycle2 = 1;
      00244C 90 8C 1A         [24] 1223 	mov	dptr,#_cycle2
      00244F 04               [12] 1224 	inc	a
      002450 F0               [24] 1225 	movx	@dptr,a
      002451 E4               [12] 1226 	clr	a
      002452 A3               [24] 1227 	inc	dptr
      002453 F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	life.c:104: for (y = 0; y < H; y++) {
      002454 90 8C 06         [24] 1230 	mov	dptr,#_y
      002457 F0               [24] 1231 	movx	@dptr,a
      002458 A3               [24] 1232 	inc	dptr
      002459 F0               [24] 1233 	movx	@dptr,a
      00245A                       1234 00171$:
                                   1235 ;	life.c:105: for (x = 0; x < W; x++) {
      00245A 90 8C 04         [24] 1236 	mov	dptr,#_x
      00245D E4               [12] 1237 	clr	a
      00245E F0               [24] 1238 	movx	@dptr,a
      00245F A3               [24] 1239 	inc	dptr
      002460 F0               [24] 1240 	movx	@dptr,a
      002461                       1241 00169$:
                                   1242 ;	life.c:106: n = 0;
      002461 90 8C 0C         [24] 1243 	mov	dptr,#_n
      002464 E4               [12] 1244 	clr	a
      002465 F0               [24] 1245 	movx	@dptr,a
      002466 A3               [24] 1246 	inc	dptr
      002467 F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	life.c:107: for (y1 = y - 1; y1 <= y + 1; y1++)
      002468 90 8C 06         [24] 1249 	mov	dptr,#_y
      00246B E0               [24] 1250 	movx	a,@dptr
      00246C FE               [12] 1251 	mov	r6,a
      00246D A3               [24] 1252 	inc	dptr
      00246E E0               [24] 1253 	movx	a,@dptr
      00246F FF               [12] 1254 	mov	r7,a
      002470 1E               [12] 1255 	dec	r6
      002471 BE FF 01         [24] 1256 	cjne	r6,#0xff,00381$
      002474 1F               [12] 1257 	dec	r7
      002475                       1258 00381$:
      002475 90 8C 0A         [24] 1259 	mov	dptr,#_y1
      002478 EE               [12] 1260 	mov	a,r6
      002479 F0               [24] 1261 	movx	@dptr,a
      00247A EF               [12] 1262 	mov	a,r7
      00247B A3               [24] 1263 	inc	dptr
      00247C F0               [24] 1264 	movx	@dptr,a
      00247D                       1265 00167$:
      00247D 90 8C 06         [24] 1266 	mov	dptr,#_y
      002480 E0               [24] 1267 	movx	a,@dptr
      002481 FE               [12] 1268 	mov	r6,a
      002482 A3               [24] 1269 	inc	dptr
      002483 E0               [24] 1270 	movx	a,@dptr
      002484 FF               [12] 1271 	mov	r7,a
      002485 74 01            [12] 1272 	mov	a,#0x01
      002487 2E               [12] 1273 	add	a,r6
      002488 FC               [12] 1274 	mov	r4,a
      002489 E4               [12] 1275 	clr	a
      00248A 3F               [12] 1276 	addc	a,r7
      00248B FD               [12] 1277 	mov	r5,a
      00248C 90 8C 0A         [24] 1278 	mov	dptr,#_y1
      00248F E0               [24] 1279 	movx	a,@dptr
      002490 FA               [12] 1280 	mov	r2,a
      002491 A3               [24] 1281 	inc	dptr
      002492 E0               [24] 1282 	movx	a,@dptr
      002493 FB               [12] 1283 	mov	r3,a
      002494 C3               [12] 1284 	clr	c
      002495 EC               [12] 1285 	mov	a,r4
      002496 9A               [12] 1286 	subb	a,r2
      002497 ED               [12] 1287 	mov	a,r5
      002498 64 80            [12] 1288 	xrl	a,#0x80
      00249A 8B F0            [24] 1289 	mov	b,r3
      00249C 63 F0 80         [24] 1290 	xrl	b,#0x80
      00249F 95 F0            [12] 1291 	subb	a,b
      0024A1 50 03            [24] 1292 	jnc	00382$
      0024A3 02 25 83         [24] 1293 	ljmp	00133$
      0024A6                       1294 00382$:
                                   1295 ;	life.c:108: for (x1 = x - 1; x1 <= x + 1; x1++)
      0024A6 90 8C 04         [24] 1296 	mov	dptr,#_x
      0024A9 E0               [24] 1297 	movx	a,@dptr
      0024AA FC               [12] 1298 	mov	r4,a
      0024AB A3               [24] 1299 	inc	dptr
      0024AC E0               [24] 1300 	movx	a,@dptr
      0024AD FD               [12] 1301 	mov	r5,a
      0024AE 1C               [12] 1302 	dec	r4
      0024AF BC FF 01         [24] 1303 	cjne	r4,#0xff,00383$
      0024B2 1D               [12] 1304 	dec	r5
      0024B3                       1305 00383$:
      0024B3 90 8C 08         [24] 1306 	mov	dptr,#_x1
      0024B6 EC               [12] 1307 	mov	a,r4
      0024B7 F0               [24] 1308 	movx	@dptr,a
      0024B8 ED               [12] 1309 	mov	a,r5
      0024B9 A3               [24] 1310 	inc	dptr
      0024BA F0               [24] 1311 	movx	@dptr,a
      0024BB                       1312 00164$:
      0024BB 90 8C 04         [24] 1313 	mov	dptr,#_x
      0024BE E0               [24] 1314 	movx	a,@dptr
      0024BF FC               [12] 1315 	mov	r4,a
      0024C0 A3               [24] 1316 	inc	dptr
      0024C1 E0               [24] 1317 	movx	a,@dptr
      0024C2 FD               [12] 1318 	mov	r5,a
      0024C3 0C               [12] 1319 	inc	r4
      0024C4 BC 00 01         [24] 1320 	cjne	r4,#0x00,00384$
      0024C7 0D               [12] 1321 	inc	r5
      0024C8                       1322 00384$:
      0024C8 90 8C 08         [24] 1323 	mov	dptr,#_x1
      0024CB E0               [24] 1324 	movx	a,@dptr
      0024CC FA               [12] 1325 	mov	r2,a
      0024CD A3               [24] 1326 	inc	dptr
      0024CE E0               [24] 1327 	movx	a,@dptr
      0024CF FB               [12] 1328 	mov	r3,a
      0024D0 C3               [12] 1329 	clr	c
      0024D1 EC               [12] 1330 	mov	a,r4
      0024D2 9A               [12] 1331 	subb	a,r2
      0024D3 ED               [12] 1332 	mov	a,r5
      0024D4 64 80            [12] 1333 	xrl	a,#0x80
      0024D6 8B F0            [24] 1334 	mov	b,r3
      0024D8 63 F0 80         [24] 1335 	xrl	b,#0x80
      0024DB 95 F0            [12] 1336 	subb	a,b
      0024DD 50 03            [24] 1337 	jnc	00385$
      0024DF 02 25 74         [24] 1338 	ljmp	00168$
      0024E2                       1339 00385$:
                                   1340 ;	life.c:109: if (u[(y1 + H) % H][(x1 + W) % W])
      0024E2 90 8C 0A         [24] 1341 	mov	dptr,#_y1
      0024E5 E0               [24] 1342 	movx	a,@dptr
      0024E6 FC               [12] 1343 	mov	r4,a
      0024E7 A3               [24] 1344 	inc	dptr
      0024E8 E0               [24] 1345 	movx	a,@dptr
      0024E9 FD               [12] 1346 	mov	r5,a
      0024EA 74 20            [12] 1347 	mov	a,#0x20
      0024EC 2C               [12] 1348 	add	a,r4
      0024ED FC               [12] 1349 	mov	r4,a
      0024EE E4               [12] 1350 	clr	a
      0024EF 3D               [12] 1351 	addc	a,r5
      0024F0 FD               [12] 1352 	mov	r5,a
      0024F1 C0 03            [24] 1353 	push	ar3
      0024F3 C0 02            [24] 1354 	push	ar2
      0024F5 74 20            [12] 1355 	mov	a,#0x20
      0024F7 C0 E0            [24] 1356 	push	acc
      0024F9 E4               [12] 1357 	clr	a
      0024FA C0 E0            [24] 1358 	push	acc
      0024FC 8C 82            [24] 1359 	mov	dpl,r4
      0024FE 8D 83            [24] 1360 	mov	dph,r5
      002500 12 28 E9         [24] 1361 	lcall	__modsint
      002503 AC 82            [24] 1362 	mov	r4,dpl
      002505 AD 83            [24] 1363 	mov	r5,dph
      002507 15 81            [12] 1364 	dec	sp
      002509 15 81            [12] 1365 	dec	sp
      00250B D0 02            [24] 1366 	pop	ar2
      00250D D0 03            [24] 1367 	pop	ar3
      00250F ED               [12] 1368 	mov	a,r5
      002510 C4               [12] 1369 	swap	a
      002511 23               [12] 1370 	rl	a
      002512 54 E0            [12] 1371 	anl	a,#0xe0
      002514 CC               [12] 1372 	xch	a,r4
      002515 C4               [12] 1373 	swap	a
      002516 23               [12] 1374 	rl	a
      002517 CC               [12] 1375 	xch	a,r4
      002518 6C               [12] 1376 	xrl	a,r4
      002519 CC               [12] 1377 	xch	a,r4
      00251A 54 E0            [12] 1378 	anl	a,#0xe0
      00251C CC               [12] 1379 	xch	a,r4
      00251D 6C               [12] 1380 	xrl	a,r4
      00251E FD               [12] 1381 	mov	r5,a
      00251F EC               [12] 1382 	mov	a,r4
      002520 24 04            [12] 1383 	add	a,#_u
      002522 FC               [12] 1384 	mov	r4,a
      002523 ED               [12] 1385 	mov	a,r5
      002524 34 84            [12] 1386 	addc	a,#(_u >> 8)
      002526 FD               [12] 1387 	mov	r5,a
      002527 74 20            [12] 1388 	mov	a,#0x20
      002529 2A               [12] 1389 	add	a,r2
      00252A FA               [12] 1390 	mov	r2,a
      00252B E4               [12] 1391 	clr	a
      00252C 3B               [12] 1392 	addc	a,r3
      00252D FB               [12] 1393 	mov	r3,a
      00252E C0 05            [24] 1394 	push	ar5
      002530 C0 04            [24] 1395 	push	ar4
      002532 74 20            [12] 1396 	mov	a,#0x20
      002534 C0 E0            [24] 1397 	push	acc
      002536 E4               [12] 1398 	clr	a
      002537 C0 E0            [24] 1399 	push	acc
      002539 8A 82            [24] 1400 	mov	dpl,r2
      00253B 8B 83            [24] 1401 	mov	dph,r3
      00253D 12 28 E9         [24] 1402 	lcall	__modsint
      002540 AA 82            [24] 1403 	mov	r2,dpl
      002542 AB 83            [24] 1404 	mov	r3,dph
      002544 15 81            [12] 1405 	dec	sp
      002546 15 81            [12] 1406 	dec	sp
      002548 D0 04            [24] 1407 	pop	ar4
      00254A D0 05            [24] 1408 	pop	ar5
      00254C EA               [12] 1409 	mov	a,r2
      00254D 2C               [12] 1410 	add	a,r4
      00254E FC               [12] 1411 	mov	r4,a
      00254F EB               [12] 1412 	mov	a,r3
      002550 3D               [12] 1413 	addc	a,r5
      002551 FD               [12] 1414 	mov	r5,a
      002552 8C 82            [24] 1415 	mov	dpl,r4
      002554 8D 83            [24] 1416 	mov	dph,r5
      002556 E0               [24] 1417 	movx	a,@dptr
      002557 60 0C            [24] 1418 	jz	00165$
                                   1419 ;	life.c:110: n++;
      002559 90 8C 0C         [24] 1420 	mov	dptr,#_n
      00255C E0               [24] 1421 	movx	a,@dptr
      00255D 24 01            [12] 1422 	add	a,#0x01
      00255F F0               [24] 1423 	movx	@dptr,a
      002560 A3               [24] 1424 	inc	dptr
      002561 E0               [24] 1425 	movx	a,@dptr
      002562 34 00            [12] 1426 	addc	a,#0x00
      002564 F0               [24] 1427 	movx	@dptr,a
      002565                       1428 00165$:
                                   1429 ;	life.c:108: for (x1 = x - 1; x1 <= x + 1; x1++)
      002565 90 8C 08         [24] 1430 	mov	dptr,#_x1
      002568 E0               [24] 1431 	movx	a,@dptr
      002569 24 01            [12] 1432 	add	a,#0x01
      00256B F0               [24] 1433 	movx	@dptr,a
      00256C A3               [24] 1434 	inc	dptr
      00256D E0               [24] 1435 	movx	a,@dptr
      00256E 34 00            [12] 1436 	addc	a,#0x00
      002570 F0               [24] 1437 	movx	@dptr,a
      002571 02 24 BB         [24] 1438 	ljmp	00164$
      002574                       1439 00168$:
                                   1440 ;	life.c:107: for (y1 = y - 1; y1 <= y + 1; y1++)
      002574 90 8C 0A         [24] 1441 	mov	dptr,#_y1
      002577 E0               [24] 1442 	movx	a,@dptr
      002578 24 01            [12] 1443 	add	a,#0x01
      00257A F0               [24] 1444 	movx	@dptr,a
      00257B A3               [24] 1445 	inc	dptr
      00257C E0               [24] 1446 	movx	a,@dptr
      00257D 34 00            [12] 1447 	addc	a,#0x00
      00257F F0               [24] 1448 	movx	@dptr,a
      002580 02 24 7D         [24] 1449 	ljmp	00167$
      002583                       1450 00133$:
                                   1451 ;	life.c:112: if (u[y][x]) n--;
      002583 EF               [12] 1452 	mov	a,r7
      002584 C4               [12] 1453 	swap	a
      002585 23               [12] 1454 	rl	a
      002586 54 E0            [12] 1455 	anl	a,#0xe0
      002588 CE               [12] 1456 	xch	a,r6
      002589 C4               [12] 1457 	swap	a
      00258A 23               [12] 1458 	rl	a
      00258B CE               [12] 1459 	xch	a,r6
      00258C 6E               [12] 1460 	xrl	a,r6
      00258D CE               [12] 1461 	xch	a,r6
      00258E 54 E0            [12] 1462 	anl	a,#0xe0
      002590 CE               [12] 1463 	xch	a,r6
      002591 6E               [12] 1464 	xrl	a,r6
      002592 FF               [12] 1465 	mov	r7,a
      002593 EE               [12] 1466 	mov	a,r6
      002594 24 04            [12] 1467 	add	a,#_u
      002596 FE               [12] 1468 	mov	r6,a
      002597 EF               [12] 1469 	mov	a,r7
      002598 34 84            [12] 1470 	addc	a,#(_u >> 8)
      00259A FF               [12] 1471 	mov	r7,a
      00259B 90 8C 04         [24] 1472 	mov	dptr,#_x
      00259E E0               [24] 1473 	movx	a,@dptr
      00259F FC               [12] 1474 	mov	r4,a
      0025A0 A3               [24] 1475 	inc	dptr
      0025A1 E0               [24] 1476 	movx	a,@dptr
      0025A2 FD               [12] 1477 	mov	r5,a
      0025A3 EC               [12] 1478 	mov	a,r4
      0025A4 2E               [12] 1479 	add	a,r6
      0025A5 FE               [12] 1480 	mov	r6,a
      0025A6 ED               [12] 1481 	mov	a,r5
      0025A7 3F               [12] 1482 	addc	a,r7
      0025A8 FF               [12] 1483 	mov	r7,a
      0025A9 8E 82            [24] 1484 	mov	dpl,r6
      0025AB 8F 83            [24] 1485 	mov	dph,r7
      0025AD E0               [24] 1486 	movx	a,@dptr
      0025AE 60 14            [24] 1487 	jz	00135$
      0025B0 90 8C 0C         [24] 1488 	mov	dptr,#_n
      0025B3 E0               [24] 1489 	movx	a,@dptr
      0025B4 24 FF            [12] 1490 	add	a,#0xff
      0025B6 FE               [12] 1491 	mov	r6,a
      0025B7 A3               [24] 1492 	inc	dptr
      0025B8 E0               [24] 1493 	movx	a,@dptr
      0025B9 34 FF            [12] 1494 	addc	a,#0xff
      0025BB FF               [12] 1495 	mov	r7,a
      0025BC 90 8C 0C         [24] 1496 	mov	dptr,#_n
      0025BF EE               [12] 1497 	mov	a,r6
      0025C0 F0               [24] 1498 	movx	@dptr,a
      0025C1 EF               [12] 1499 	mov	a,r7
      0025C2 A3               [24] 1500 	inc	dptr
      0025C3 F0               [24] 1501 	movx	@dptr,a
      0025C4                       1502 00135$:
                                   1503 ;	life.c:113: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      0025C4 90 8C 06         [24] 1504 	mov	dptr,#_y
      0025C7 E0               [24] 1505 	movx	a,@dptr
      0025C8 FE               [12] 1506 	mov	r6,a
      0025C9 A3               [24] 1507 	inc	dptr
      0025CA E0               [24] 1508 	movx	a,@dptr
      0025CB C4               [12] 1509 	swap	a
      0025CC 23               [12] 1510 	rl	a
      0025CD 54 E0            [12] 1511 	anl	a,#0xe0
      0025CF CE               [12] 1512 	xch	a,r6
      0025D0 C4               [12] 1513 	swap	a
      0025D1 23               [12] 1514 	rl	a
      0025D2 CE               [12] 1515 	xch	a,r6
      0025D3 6E               [12] 1516 	xrl	a,r6
      0025D4 CE               [12] 1517 	xch	a,r6
      0025D5 54 E0            [12] 1518 	anl	a,#0xe0
      0025D7 CE               [12] 1519 	xch	a,r6
      0025D8 6E               [12] 1520 	xrl	a,r6
      0025D9 FF               [12] 1521 	mov	r7,a
      0025DA EE               [12] 1522 	mov	a,r6
      0025DB 24 04            [12] 1523 	add	a,#_nu
      0025DD FC               [12] 1524 	mov	r4,a
      0025DE EF               [12] 1525 	mov	a,r7
      0025DF 34 88            [12] 1526 	addc	a,#(_nu >> 8)
      0025E1 FD               [12] 1527 	mov	r5,a
      0025E2 90 8C 04         [24] 1528 	mov	dptr,#_x
      0025E5 E0               [24] 1529 	movx	a,@dptr
      0025E6 FA               [12] 1530 	mov	r2,a
      0025E7 A3               [24] 1531 	inc	dptr
      0025E8 E0               [24] 1532 	movx	a,@dptr
      0025E9 FB               [12] 1533 	mov	r3,a
      0025EA EA               [12] 1534 	mov	a,r2
      0025EB 2C               [12] 1535 	add	a,r4
      0025EC FC               [12] 1536 	mov	r4,a
      0025ED EB               [12] 1537 	mov	a,r3
      0025EE 3D               [12] 1538 	addc	a,r5
      0025EF FD               [12] 1539 	mov	r5,a
      0025F0 90 8C 0C         [24] 1540 	mov	dptr,#_n
      0025F3 E0               [24] 1541 	movx	a,@dptr
      0025F4 F8               [12] 1542 	mov	r0,a
      0025F5 A3               [24] 1543 	inc	dptr
      0025F6 E0               [24] 1544 	movx	a,@dptr
      0025F7 F9               [12] 1545 	mov	r1,a
      0025F8 B8 03 05         [24] 1546 	cjne	r0,#0x03,00388$
      0025FB B9 00 02         [24] 1547 	cjne	r1,#0x00,00388$
      0025FE 80 1F            [24] 1548 	sjmp	00186$
      002600                       1549 00388$:
      002600 B8 02 18         [24] 1550 	cjne	r0,#0x02,00185$
      002603 B9 00 15         [24] 1551 	cjne	r1,#0x00,00185$
      002606 EE               [12] 1552 	mov	a,r6
      002607 24 04            [12] 1553 	add	a,#_u
      002609 FE               [12] 1554 	mov	r6,a
      00260A EF               [12] 1555 	mov	a,r7
      00260B 34 84            [12] 1556 	addc	a,#(_u >> 8)
      00260D FF               [12] 1557 	mov	r7,a
      00260E EA               [12] 1558 	mov	a,r2
      00260F 2E               [12] 1559 	add	a,r6
      002610 FA               [12] 1560 	mov	r2,a
      002611 EB               [12] 1561 	mov	a,r3
      002612 3F               [12] 1562 	addc	a,r7
      002613 FB               [12] 1563 	mov	r3,a
      002614 8A 82            [24] 1564 	mov	dpl,r2
      002616 8B 83            [24] 1565 	mov	dph,r3
      002618 E0               [24] 1566 	movx	a,@dptr
      002619 70 04            [24] 1567 	jnz	00186$
      00261B                       1568 00185$:
                                   1569 ;	assignBit
      00261B C2 00            [12] 1570 	clr	b0
      00261D 80 02            [24] 1571 	sjmp	00187$
      00261F                       1572 00186$:
                                   1573 ;	assignBit
      00261F D2 00            [12] 1574 	setb	b0
      002621                       1575 00187$:
      002621 A2 00            [12] 1576 	mov	c,b0
      002623 E4               [12] 1577 	clr	a
      002624 33               [12] 1578 	rlc	a
      002625 8C 82            [24] 1579 	mov	dpl,r4
      002627 8D 83            [24] 1580 	mov	dph,r5
      002629 F0               [24] 1581 	movx	@dptr,a
                                   1582 ;	life.c:105: for (x = 0; x < W; x++) {
      00262A 90 8C 04         [24] 1583 	mov	dptr,#_x
      00262D E0               [24] 1584 	movx	a,@dptr
      00262E 24 01            [12] 1585 	add	a,#0x01
      002630 F0               [24] 1586 	movx	@dptr,a
      002631 A3               [24] 1587 	inc	dptr
      002632 E0               [24] 1588 	movx	a,@dptr
      002633 34 00            [12] 1589 	addc	a,#0x00
      002635 F0               [24] 1590 	movx	@dptr,a
      002636 90 8C 04         [24] 1591 	mov	dptr,#_x
      002639 E0               [24] 1592 	movx	a,@dptr
      00263A FE               [12] 1593 	mov	r6,a
      00263B A3               [24] 1594 	inc	dptr
      00263C E0               [24] 1595 	movx	a,@dptr
      00263D FF               [12] 1596 	mov	r7,a
      00263E C3               [12] 1597 	clr	c
      00263F EE               [12] 1598 	mov	a,r6
      002640 94 20            [12] 1599 	subb	a,#0x20
      002642 EF               [12] 1600 	mov	a,r7
      002643 64 80            [12] 1601 	xrl	a,#0x80
      002645 94 80            [12] 1602 	subb	a,#0x80
      002647 50 03            [24] 1603 	jnc	00392$
      002649 02 24 61         [24] 1604 	ljmp	00169$
      00264C                       1605 00392$:
                                   1606 ;	life.c:104: for (y = 0; y < H; y++) {
      00264C 90 8C 06         [24] 1607 	mov	dptr,#_y
      00264F E0               [24] 1608 	movx	a,@dptr
      002650 24 01            [12] 1609 	add	a,#0x01
      002652 F0               [24] 1610 	movx	@dptr,a
      002653 A3               [24] 1611 	inc	dptr
      002654 E0               [24] 1612 	movx	a,@dptr
      002655 34 00            [12] 1613 	addc	a,#0x00
      002657 F0               [24] 1614 	movx	@dptr,a
      002658 90 8C 06         [24] 1615 	mov	dptr,#_y
      00265B E0               [24] 1616 	movx	a,@dptr
      00265C FE               [12] 1617 	mov	r6,a
      00265D A3               [24] 1618 	inc	dptr
      00265E E0               [24] 1619 	movx	a,@dptr
      00265F FF               [12] 1620 	mov	r7,a
      002660 C3               [12] 1621 	clr	c
      002661 EE               [12] 1622 	mov	a,r6
      002662 94 20            [12] 1623 	subb	a,#0x20
      002664 EF               [12] 1624 	mov	a,r7
      002665 64 80            [12] 1625 	xrl	a,#0x80
      002667 94 80            [12] 1626 	subb	a,#0x80
      002669 50 03            [24] 1627 	jnc	00393$
      00266B 02 24 5A         [24] 1628 	ljmp	00171$
      00266E                       1629 00393$:
                                   1630 ;	life.c:117: for (y = 0; y < H; y++)
      00266E 90 8C 06         [24] 1631 	mov	dptr,#_y
      002671 E4               [12] 1632 	clr	a
      002672 F0               [24] 1633 	movx	@dptr,a
      002673 A3               [24] 1634 	inc	dptr
      002674 F0               [24] 1635 	movx	@dptr,a
      002675                       1636 00175$:
                                   1637 ;	life.c:118: for (x = 0; x < W; x++) {
      002675 90 8C 04         [24] 1638 	mov	dptr,#_x
      002678 E4               [12] 1639 	clr	a
      002679 F0               [24] 1640 	movx	@dptr,a
      00267A A3               [24] 1641 	inc	dptr
      00267B F0               [24] 1642 	movx	@dptr,a
      00267C                       1643 00173$:
                                   1644 ;	life.c:119: if (pu[y][x] != nu[y][x]) cycle2 = 0;
      00267C 90 8C 06         [24] 1645 	mov	dptr,#_y
      00267F E0               [24] 1646 	movx	a,@dptr
      002680 FE               [12] 1647 	mov	r6,a
      002681 A3               [24] 1648 	inc	dptr
      002682 E0               [24] 1649 	movx	a,@dptr
      002683 C4               [12] 1650 	swap	a
      002684 23               [12] 1651 	rl	a
      002685 54 E0            [12] 1652 	anl	a,#0xe0
      002687 CE               [12] 1653 	xch	a,r6
      002688 C4               [12] 1654 	swap	a
      002689 23               [12] 1655 	rl	a
      00268A CE               [12] 1656 	xch	a,r6
      00268B 6E               [12] 1657 	xrl	a,r6
      00268C CE               [12] 1658 	xch	a,r6
      00268D 54 E0            [12] 1659 	anl	a,#0xe0
      00268F CE               [12] 1660 	xch	a,r6
      002690 6E               [12] 1661 	xrl	a,r6
      002691 FF               [12] 1662 	mov	r7,a
      002692 EE               [12] 1663 	mov	a,r6
      002693 24 04            [12] 1664 	add	a,#_pu
      002695 FC               [12] 1665 	mov	r4,a
      002696 EF               [12] 1666 	mov	a,r7
      002697 34 80            [12] 1667 	addc	a,#(_pu >> 8)
      002699 FD               [12] 1668 	mov	r5,a
      00269A 90 8C 04         [24] 1669 	mov	dptr,#_x
      00269D E0               [24] 1670 	movx	a,@dptr
      00269E FA               [12] 1671 	mov	r2,a
      00269F A3               [24] 1672 	inc	dptr
      0026A0 E0               [24] 1673 	movx	a,@dptr
      0026A1 FB               [12] 1674 	mov	r3,a
      0026A2 EA               [12] 1675 	mov	a,r2
      0026A3 2C               [12] 1676 	add	a,r4
      0026A4 F5 82            [12] 1677 	mov	dpl,a
      0026A6 EB               [12] 1678 	mov	a,r3
      0026A7 3D               [12] 1679 	addc	a,r5
      0026A8 F5 83            [12] 1680 	mov	dph,a
      0026AA EE               [12] 1681 	mov	a,r6
      0026AB 24 04            [12] 1682 	add	a,#_nu
      0026AD FE               [12] 1683 	mov	r6,a
      0026AE EF               [12] 1684 	mov	a,r7
      0026AF 34 88            [12] 1685 	addc	a,#(_nu >> 8)
      0026B1 FF               [12] 1686 	mov	r7,a
      0026B2 EA               [12] 1687 	mov	a,r2
      0026B3 2E               [12] 1688 	add	a,r6
      0026B4 FA               [12] 1689 	mov	r2,a
      0026B5 EB               [12] 1690 	mov	a,r3
      0026B6 3F               [12] 1691 	addc	a,r7
      0026B7 FB               [12] 1692 	mov	r3,a
      0026B8 E0               [24] 1693 	movx	a,@dptr
      0026B9 FF               [12] 1694 	mov	r7,a
      0026BA 8A 82            [24] 1695 	mov	dpl,r2
      0026BC 8B 83            [24] 1696 	mov	dph,r3
      0026BE E0               [24] 1697 	movx	a,@dptr
      0026BF FA               [12] 1698 	mov	r2,a
      0026C0 EF               [12] 1699 	mov	a,r7
      0026C1 B5 02 02         [24] 1700 	cjne	a,ar2,00394$
      0026C4 80 07            [24] 1701 	sjmp	00139$
      0026C6                       1702 00394$:
      0026C6 90 8C 1A         [24] 1703 	mov	dptr,#_cycle2
      0026C9 E4               [12] 1704 	clr	a
      0026CA F0               [24] 1705 	movx	@dptr,a
      0026CB A3               [24] 1706 	inc	dptr
      0026CC F0               [24] 1707 	movx	@dptr,a
      0026CD                       1708 00139$:
                                   1709 ;	life.c:120: if (u[y][x] != nu[y][x]) fixed = 0;
      0026CD 90 8C 06         [24] 1710 	mov	dptr,#_y
      0026D0 E0               [24] 1711 	movx	a,@dptr
      0026D1 FE               [12] 1712 	mov	r6,a
      0026D2 A3               [24] 1713 	inc	dptr
      0026D3 E0               [24] 1714 	movx	a,@dptr
      0026D4 C4               [12] 1715 	swap	a
      0026D5 23               [12] 1716 	rl	a
      0026D6 54 E0            [12] 1717 	anl	a,#0xe0
      0026D8 CE               [12] 1718 	xch	a,r6
      0026D9 C4               [12] 1719 	swap	a
      0026DA 23               [12] 1720 	rl	a
      0026DB CE               [12] 1721 	xch	a,r6
      0026DC 6E               [12] 1722 	xrl	a,r6
      0026DD CE               [12] 1723 	xch	a,r6
      0026DE 54 E0            [12] 1724 	anl	a,#0xe0
      0026E0 CE               [12] 1725 	xch	a,r6
      0026E1 6E               [12] 1726 	xrl	a,r6
      0026E2 FF               [12] 1727 	mov	r7,a
      0026E3 EE               [12] 1728 	mov	a,r6
      0026E4 24 04            [12] 1729 	add	a,#_u
      0026E6 FC               [12] 1730 	mov	r4,a
      0026E7 EF               [12] 1731 	mov	a,r7
      0026E8 34 84            [12] 1732 	addc	a,#(_u >> 8)
      0026EA FD               [12] 1733 	mov	r5,a
      0026EB 90 8C 04         [24] 1734 	mov	dptr,#_x
      0026EE E0               [24] 1735 	movx	a,@dptr
      0026EF FA               [12] 1736 	mov	r2,a
      0026F0 A3               [24] 1737 	inc	dptr
      0026F1 E0               [24] 1738 	movx	a,@dptr
      0026F2 FB               [12] 1739 	mov	r3,a
      0026F3 EA               [12] 1740 	mov	a,r2
      0026F4 2C               [12] 1741 	add	a,r4
      0026F5 F5 82            [12] 1742 	mov	dpl,a
      0026F7 EB               [12] 1743 	mov	a,r3
      0026F8 3D               [12] 1744 	addc	a,r5
      0026F9 F5 83            [12] 1745 	mov	dph,a
      0026FB EE               [12] 1746 	mov	a,r6
      0026FC 24 04            [12] 1747 	add	a,#_nu
      0026FE FE               [12] 1748 	mov	r6,a
      0026FF EF               [12] 1749 	mov	a,r7
      002700 34 88            [12] 1750 	addc	a,#(_nu >> 8)
      002702 FF               [12] 1751 	mov	r7,a
      002703 EA               [12] 1752 	mov	a,r2
      002704 2E               [12] 1753 	add	a,r6
      002705 FA               [12] 1754 	mov	r2,a
      002706 EB               [12] 1755 	mov	a,r3
      002707 3F               [12] 1756 	addc	a,r7
      002708 FB               [12] 1757 	mov	r3,a
      002709 E0               [24] 1758 	movx	a,@dptr
      00270A FF               [12] 1759 	mov	r7,a
      00270B 8A 82            [24] 1760 	mov	dpl,r2
      00270D 8B 83            [24] 1761 	mov	dph,r3
      00270F E0               [24] 1762 	movx	a,@dptr
      002710 FA               [12] 1763 	mov	r2,a
      002711 EF               [12] 1764 	mov	a,r7
      002712 B5 02 02         [24] 1765 	cjne	a,ar2,00395$
      002715 80 07            [24] 1766 	sjmp	00141$
      002717                       1767 00395$:
      002717 90 8C 18         [24] 1768 	mov	dptr,#_fixed
      00271A E4               [12] 1769 	clr	a
      00271B F0               [24] 1770 	movx	@dptr,a
      00271C A3               [24] 1771 	inc	dptr
      00271D F0               [24] 1772 	movx	@dptr,a
      00271E                       1773 00141$:
                                   1774 ;	life.c:121: pu[y][x] = u[y][x];
      00271E 90 8C 06         [24] 1775 	mov	dptr,#_y
      002721 E0               [24] 1776 	movx	a,@dptr
      002722 FE               [12] 1777 	mov	r6,a
      002723 A3               [24] 1778 	inc	dptr
      002724 E0               [24] 1779 	movx	a,@dptr
      002725 C4               [12] 1780 	swap	a
      002726 23               [12] 1781 	rl	a
      002727 54 E0            [12] 1782 	anl	a,#0xe0
      002729 CE               [12] 1783 	xch	a,r6
      00272A C4               [12] 1784 	swap	a
      00272B 23               [12] 1785 	rl	a
      00272C CE               [12] 1786 	xch	a,r6
      00272D 6E               [12] 1787 	xrl	a,r6
      00272E CE               [12] 1788 	xch	a,r6
      00272F 54 E0            [12] 1789 	anl	a,#0xe0
      002731 CE               [12] 1790 	xch	a,r6
      002732 6E               [12] 1791 	xrl	a,r6
      002733 FF               [12] 1792 	mov	r7,a
      002734 EE               [12] 1793 	mov	a,r6
      002735 24 04            [12] 1794 	add	a,#_pu
      002737 FC               [12] 1795 	mov	r4,a
      002738 EF               [12] 1796 	mov	a,r7
      002739 34 80            [12] 1797 	addc	a,#(_pu >> 8)
      00273B FD               [12] 1798 	mov	r5,a
      00273C 90 8C 04         [24] 1799 	mov	dptr,#_x
      00273F E0               [24] 1800 	movx	a,@dptr
      002740 FA               [12] 1801 	mov	r2,a
      002741 A3               [24] 1802 	inc	dptr
      002742 E0               [24] 1803 	movx	a,@dptr
      002743 FB               [12] 1804 	mov	r3,a
      002744 EA               [12] 1805 	mov	a,r2
      002745 2C               [12] 1806 	add	a,r4
      002746 FC               [12] 1807 	mov	r4,a
      002747 EB               [12] 1808 	mov	a,r3
      002748 3D               [12] 1809 	addc	a,r5
      002749 FD               [12] 1810 	mov	r5,a
      00274A EE               [12] 1811 	mov	a,r6
      00274B 24 04            [12] 1812 	add	a,#_u
      00274D FE               [12] 1813 	mov	r6,a
      00274E EF               [12] 1814 	mov	a,r7
      00274F 34 84            [12] 1815 	addc	a,#(_u >> 8)
      002751 FF               [12] 1816 	mov	r7,a
      002752 EA               [12] 1817 	mov	a,r2
      002753 2E               [12] 1818 	add	a,r6
      002754 F5 82            [12] 1819 	mov	dpl,a
      002756 EB               [12] 1820 	mov	a,r3
      002757 3F               [12] 1821 	addc	a,r7
      002758 F5 83            [12] 1822 	mov	dph,a
      00275A E0               [24] 1823 	movx	a,@dptr
      00275B 8C 82            [24] 1824 	mov	dpl,r4
      00275D 8D 83            [24] 1825 	mov	dph,r5
      00275F F0               [24] 1826 	movx	@dptr,a
                                   1827 ;	life.c:122: u[y][x] = nu[y][x];
      002760 90 8C 06         [24] 1828 	mov	dptr,#_y
      002763 E0               [24] 1829 	movx	a,@dptr
      002764 FE               [12] 1830 	mov	r6,a
      002765 A3               [24] 1831 	inc	dptr
      002766 E0               [24] 1832 	movx	a,@dptr
      002767 C4               [12] 1833 	swap	a
      002768 23               [12] 1834 	rl	a
      002769 54 E0            [12] 1835 	anl	a,#0xe0
      00276B CE               [12] 1836 	xch	a,r6
      00276C C4               [12] 1837 	swap	a
      00276D 23               [12] 1838 	rl	a
      00276E CE               [12] 1839 	xch	a,r6
      00276F 6E               [12] 1840 	xrl	a,r6
      002770 CE               [12] 1841 	xch	a,r6
      002771 54 E0            [12] 1842 	anl	a,#0xe0
      002773 CE               [12] 1843 	xch	a,r6
      002774 6E               [12] 1844 	xrl	a,r6
      002775 FF               [12] 1845 	mov	r7,a
      002776 EE               [12] 1846 	mov	a,r6
      002777 24 04            [12] 1847 	add	a,#_u
      002779 FC               [12] 1848 	mov	r4,a
      00277A EF               [12] 1849 	mov	a,r7
      00277B 34 84            [12] 1850 	addc	a,#(_u >> 8)
      00277D FD               [12] 1851 	mov	r5,a
      00277E 90 8C 04         [24] 1852 	mov	dptr,#_x
      002781 E0               [24] 1853 	movx	a,@dptr
      002782 FA               [12] 1854 	mov	r2,a
      002783 A3               [24] 1855 	inc	dptr
      002784 E0               [24] 1856 	movx	a,@dptr
      002785 FB               [12] 1857 	mov	r3,a
      002786 EA               [12] 1858 	mov	a,r2
      002787 2C               [12] 1859 	add	a,r4
      002788 FC               [12] 1860 	mov	r4,a
      002789 EB               [12] 1861 	mov	a,r3
      00278A 3D               [12] 1862 	addc	a,r5
      00278B FD               [12] 1863 	mov	r5,a
      00278C EE               [12] 1864 	mov	a,r6
      00278D 24 04            [12] 1865 	add	a,#_nu
      00278F FE               [12] 1866 	mov	r6,a
      002790 EF               [12] 1867 	mov	a,r7
      002791 34 88            [12] 1868 	addc	a,#(_nu >> 8)
      002793 FF               [12] 1869 	mov	r7,a
      002794 EA               [12] 1870 	mov	a,r2
      002795 2E               [12] 1871 	add	a,r6
      002796 F5 82            [12] 1872 	mov	dpl,a
      002798 EB               [12] 1873 	mov	a,r3
      002799 3F               [12] 1874 	addc	a,r7
      00279A F5 83            [12] 1875 	mov	dph,a
      00279C E0               [24] 1876 	movx	a,@dptr
      00279D 8C 82            [24] 1877 	mov	dpl,r4
      00279F 8D 83            [24] 1878 	mov	dph,r5
      0027A1 F0               [24] 1879 	movx	@dptr,a
                                   1880 ;	life.c:118: for (x = 0; x < W; x++) {
      0027A2 90 8C 04         [24] 1881 	mov	dptr,#_x
      0027A5 E0               [24] 1882 	movx	a,@dptr
      0027A6 24 01            [12] 1883 	add	a,#0x01
      0027A8 F0               [24] 1884 	movx	@dptr,a
      0027A9 A3               [24] 1885 	inc	dptr
      0027AA E0               [24] 1886 	movx	a,@dptr
      0027AB 34 00            [12] 1887 	addc	a,#0x00
      0027AD F0               [24] 1888 	movx	@dptr,a
      0027AE 90 8C 04         [24] 1889 	mov	dptr,#_x
      0027B1 E0               [24] 1890 	movx	a,@dptr
      0027B2 FE               [12] 1891 	mov	r6,a
      0027B3 A3               [24] 1892 	inc	dptr
      0027B4 E0               [24] 1893 	movx	a,@dptr
      0027B5 FF               [12] 1894 	mov	r7,a
      0027B6 C3               [12] 1895 	clr	c
      0027B7 EE               [12] 1896 	mov	a,r6
      0027B8 94 20            [12] 1897 	subb	a,#0x20
      0027BA EF               [12] 1898 	mov	a,r7
      0027BB 64 80            [12] 1899 	xrl	a,#0x80
      0027BD 94 80            [12] 1900 	subb	a,#0x80
      0027BF 50 03            [24] 1901 	jnc	00396$
      0027C1 02 26 7C         [24] 1902 	ljmp	00173$
      0027C4                       1903 00396$:
                                   1904 ;	life.c:117: for (y = 0; y < H; y++)
      0027C4 90 8C 06         [24] 1905 	mov	dptr,#_y
      0027C7 E0               [24] 1906 	movx	a,@dptr
      0027C8 24 01            [12] 1907 	add	a,#0x01
      0027CA F0               [24] 1908 	movx	@dptr,a
      0027CB A3               [24] 1909 	inc	dptr
      0027CC E0               [24] 1910 	movx	a,@dptr
      0027CD 34 00            [12] 1911 	addc	a,#0x00
      0027CF F0               [24] 1912 	movx	@dptr,a
      0027D0 90 8C 06         [24] 1913 	mov	dptr,#_y
      0027D3 E0               [24] 1914 	movx	a,@dptr
      0027D4 FE               [12] 1915 	mov	r6,a
      0027D5 A3               [24] 1916 	inc	dptr
      0027D6 E0               [24] 1917 	movx	a,@dptr
      0027D7 FF               [12] 1918 	mov	r7,a
      0027D8 C3               [12] 1919 	clr	c
      0027D9 EE               [12] 1920 	mov	a,r6
      0027DA 94 20            [12] 1921 	subb	a,#0x20
      0027DC EF               [12] 1922 	mov	a,r7
      0027DD 64 80            [12] 1923 	xrl	a,#0x80
      0027DF 94 80            [12] 1924 	subb	a,#0x80
      0027E1 50 03            [24] 1925 	jnc	00397$
      0027E3 02 26 75         [24] 1926 	ljmp	00175$
      0027E6                       1927 00397$:
                                   1928 ;	life.c:148: if (fixed || cycle2) {
      0027E6 90 8C 18         [24] 1929 	mov	dptr,#_fixed
      0027E9 E0               [24] 1930 	movx	a,@dptr
      0027EA F5 F0            [12] 1931 	mov	b,a
      0027EC A3               [24] 1932 	inc	dptr
      0027ED E0               [24] 1933 	movx	a,@dptr
      0027EE 45 F0            [12] 1934 	orl	a,b
      0027F0 70 0F            [24] 1935 	jnz	00101$
      0027F2 90 8C 1A         [24] 1936 	mov	dptr,#_cycle2
      0027F5 E0               [24] 1937 	movx	a,@dptr
      0027F6 F5 F0            [12] 1938 	mov	b,a
      0027F8 A3               [24] 1939 	inc	dptr
      0027F9 E0               [24] 1940 	movx	a,@dptr
      0027FA 45 F0            [12] 1941 	orl	a,b
      0027FC 70 03            [24] 1942 	jnz	00399$
      0027FE 02 22 41         [24] 1943 	ljmp	00179$
      002801                       1944 00399$:
      002801                       1945 00101$:
                                   1946 ;	life.c:149: printf("DONE\n\r");
      002801 74 B3            [12] 1947 	mov	a,#___str_7
      002803 C0 E0            [24] 1948 	push	acc
      002805 74 3C            [12] 1949 	mov	a,#(___str_7 >> 8)
      002807 C0 E0            [24] 1950 	push	acc
      002809 74 80            [12] 1951 	mov	a,#0x80
      00280B C0 E0            [24] 1952 	push	acc
      00280D 12 28 B0         [24] 1953 	lcall	_printf
      002810 15 81            [12] 1954 	dec	sp
      002812 15 81            [12] 1955 	dec	sp
      002814 15 81            [12] 1956 	dec	sp
                                   1957 ;	life.c:150: (void)getchar();
      002816 12 20 7A         [24] 1958 	lcall	_getchar
                                   1959 ;	life.c:151: break;
      002819                       1960 00104$:
                                   1961 ;	life.c:155: if (i1) {
      002819 90 80 02         [24] 1962 	mov	dptr,#_i1
      00281C E0               [24] 1963 	movx	a,@dptr
      00281D F5 F0            [12] 1964 	mov	b,a
      00281F A3               [24] 1965 	inc	dptr
      002820 E0               [24] 1966 	movx	a,@dptr
      002821 45 F0            [12] 1967 	orl	a,b
      002823 60 18            [24] 1968 	jz	00182$
                                   1969 ;	life.c:156: printf("BREAK\n\r");
      002825 74 BA            [12] 1970 	mov	a,#___str_8
      002827 C0 E0            [24] 1971 	push	acc
      002829 74 3C            [12] 1972 	mov	a,#(___str_8 >> 8)
      00282B C0 E0            [24] 1973 	push	acc
      00282D 74 80            [12] 1974 	mov	a,#0x80
      00282F C0 E0            [24] 1975 	push	acc
      002831 12 28 B0         [24] 1976 	lcall	_printf
      002834 15 81            [12] 1977 	dec	sp
      002836 15 81            [12] 1978 	dec	sp
      002838 15 81            [12] 1979 	dec	sp
                                   1980 ;	life.c:157: (void)getchar();
      00283A 12 20 7A         [24] 1981 	lcall	_getchar
      00283D                       1982 00182$:
                                   1983 ;	life.c:135: for (i0 = 0; !i0; ) {
      00283D 90 80 00         [24] 1984 	mov	dptr,#_i0
      002840 E0               [24] 1985 	movx	a,@dptr
      002841 F5 F0            [12] 1986 	mov	b,a
      002843 A3               [24] 1987 	inc	dptr
      002844 E0               [24] 1988 	movx	a,@dptr
      002845 45 F0            [12] 1989 	orl	a,b
      002847 70 03            [24] 1990 	jnz	00401$
      002849 02 20 C5         [24] 1991 	ljmp	00181$
      00284C                       1992 00401$:
                                   1993 ;	life.c:161: EA = 0;
                                   1994 ;	assignBit
      00284C C2 AF            [12] 1995 	clr	_EA
                                   1996 ;	life.c:163: printf("TERM\n\r");
      00284E 74 C2            [12] 1997 	mov	a,#___str_9
      002850 C0 E0            [24] 1998 	push	acc
      002852 74 3C            [12] 1999 	mov	a,#(___str_9 >> 8)
      002854 C0 E0            [24] 2000 	push	acc
      002856 74 80            [12] 2001 	mov	a,#0x80
      002858 C0 E0            [24] 2002 	push	acc
      00285A 12 28 B0         [24] 2003 	lcall	_printf
      00285D 15 81            [12] 2004 	dec	sp
      00285F 15 81            [12] 2005 	dec	sp
      002861 15 81            [12] 2006 	dec	sp
                                   2007 ;	life.c:164: (void)getchar();
      002863 12 20 7A         [24] 2008 	lcall	_getchar
                                   2009 ;	life.c:168: __endasm;
      002866 02 00 00         [24] 2010 	ljmp	0
                                   2011 ;	life.c:169: }
      002869 22               [24] 2012 	ret
                                   2013 	.area CSEG    (CODE)
                                   2014 	.area CONST   (CODE)
                                   2015 	.area CONST   (CODE)
      003C81                       2016 ___str_0:
      003C81 25 30 34 78           2017 	.ascii "%04x"
      003C85 00                    2018 	.db 0x00
                                   2019 	.area CSEG    (CODE)
                                   2020 	.area CONST   (CODE)
      003C86                       2021 ___str_1:
      003C86 1B                    2022 	.db 0x1b
      003C87 5B 32 4A              2023 	.ascii "[2J"
      003C8A 1B                    2024 	.db 0x1b
      003C8B 5B 6D                 2025 	.ascii "[m"
      003C8D 00                    2026 	.db 0x00
                                   2027 	.area CSEG    (CODE)
                                   2028 	.area CONST   (CODE)
      003C8E                       2029 ___str_2:
      003C8E 0D                    2030 	.db 0x0d
      003C8F 0A                    2031 	.db 0x0a
      003C90 00                    2032 	.db 0x00
                                   2033 	.area CSEG    (CODE)
                                   2034 	.area CONST   (CODE)
      003C91                       2035 ___str_3:
      003C91 1B                    2036 	.db 0x1b
      003C92 5B 30 31 6D 5B 5D     2037 	.ascii "[01m[]"
      003C98 1B                    2038 	.db 0x1b
      003C99 5B 6D                 2039 	.ascii "[m"
      003C9B 00                    2040 	.db 0x00
                                   2041 	.area CSEG    (CODE)
                                   2042 	.area CONST   (CODE)
      003C9C                       2043 ___str_4:
      003C9C 2D 2D                 2044 	.ascii "--"
      003C9E 00                    2045 	.db 0x00
                                   2046 	.area CSEG    (CODE)
                                   2047 	.area CONST   (CODE)
      003C9F                       2048 ___str_5:
      003C9F 1B                    2049 	.db 0x1b
      003CA0 5B 32 4A              2050 	.ascii "[2J"
      003CA3 1B                    2051 	.db 0x1b
      003CA4 5B 6D 49 4E 49 54     2052 	.ascii "[mINIT"
      003CAA 0A                    2053 	.db 0x0a
      003CAB 0D                    2054 	.db 0x0d
      003CAC 00                    2055 	.db 0x00
                                   2056 	.area CSEG    (CODE)
                                   2057 	.area CONST   (CODE)
      003CAD                       2058 ___str_6:
      003CAD 52 44 59              2059 	.ascii "RDY"
      003CB0 0A                    2060 	.db 0x0a
      003CB1 0D                    2061 	.db 0x0d
      003CB2 00                    2062 	.db 0x00
                                   2063 	.area CSEG    (CODE)
                                   2064 	.area CONST   (CODE)
      003CB3                       2065 ___str_7:
      003CB3 44 4F 4E 45           2066 	.ascii "DONE"
      003CB7 0A                    2067 	.db 0x0a
      003CB8 0D                    2068 	.db 0x0d
      003CB9 00                    2069 	.db 0x00
                                   2070 	.area CSEG    (CODE)
                                   2071 	.area CONST   (CODE)
      003CBA                       2072 ___str_8:
      003CBA 42 52 45 41 4B        2073 	.ascii "BREAK"
      003CBF 0A                    2074 	.db 0x0a
      003CC0 0D                    2075 	.db 0x0d
      003CC1 00                    2076 	.db 0x00
                                   2077 	.area CSEG    (CODE)
                                   2078 	.area CONST   (CODE)
      003CC2                       2079 ___str_9:
      003CC2 54 45 52 4D           2080 	.ascii "TERM"
      003CC6 0A                    2081 	.db 0x0a
      003CC7 0D                    2082 	.db 0x0d
      003CC8 00                    2083 	.db 0x00
                                   2084 	.area CSEG    (CODE)
                                   2085 	.area XINIT   (CODE)
                                   2086 	.area CABS    (ABS,CODE)
