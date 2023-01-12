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
                                    531 ;	life.c:110: void main(void) {
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
                                    544 ;	life.c:111: i0 = i1 = 0;
      0020AE 90 80 02         [24]  545 	mov	dptr,#_i1
      0020B1 E4               [12]  546 	clr	a
      0020B2 F0               [24]  547 	movx	@dptr,a
      0020B3 A3               [24]  548 	inc	dptr
      0020B4 F0               [24]  549 	movx	@dptr,a
      0020B5 90 80 00         [24]  550 	mov	dptr,#_i0
      0020B8 F0               [24]  551 	movx	@dptr,a
      0020B9 A3               [24]  552 	inc	dptr
      0020BA F0               [24]  553 	movx	@dptr,a
                                    554 ;	life.c:113: IT0 = 1;
                                    555 ;	assignBit
      0020BB D2 88            [12]  556 	setb	_IT0
                                    557 ;	life.c:114: IT1 = 1;
                                    558 ;	assignBit
      0020BD D2 8A            [12]  559 	setb	_IT1
                                    560 ;	life.c:115: EX0 = 1;
                                    561 ;	assignBit
      0020BF D2 A8            [12]  562 	setb	_EX0
                                    563 ;	life.c:116: EX1 = 1;
                                    564 ;	assignBit
      0020C1 D2 AA            [12]  565 	setb	_EX1
                                    566 ;	life.c:117: EA = 1;
                                    567 ;	assignBit
      0020C3 D2 AF            [12]  568 	setb	_EA
                                    569 ;	life.c:119: while (!i0) {
      0020C5                        570 00114$:
      0020C5 90 80 00         [24]  571 	mov	dptr,#_i0
      0020C8 E0               [24]  572 	movx	a,@dptr
      0020C9 F5 F0            [12]  573 	mov	b,a
      0020CB A3               [24]  574 	inc	dptr
      0020CC E0               [24]  575 	movx	a,@dptr
      0020CD 45 F0            [12]  576 	orl	a,b
      0020CF 60 03            [24]  577 	jz	00368$
      0020D1 02 28 68         [24]  578 	ljmp	00116$
      0020D4                        579 00368$:
                                    580 ;	life.c:120: for (y = 0; y < H; y++)
      0020D4 90 8C 06         [24]  581 	mov	dptr,#_y
      0020D7 E4               [12]  582 	clr	a
      0020D8 F0               [24]  583 	movx	@dptr,a
      0020D9 A3               [24]  584 	inc	dptr
      0020DA F0               [24]  585 	movx	@dptr,a
      0020DB                        586 00150$:
                                    587 ;	life.c:121: for (x = 0; x < W; x++)
      0020DB 90 8C 04         [24]  588 	mov	dptr,#_x
      0020DE E4               [12]  589 	clr	a
      0020DF F0               [24]  590 	movx	@dptr,a
      0020E0 A3               [24]  591 	inc	dptr
      0020E1 F0               [24]  592 	movx	@dptr,a
      0020E2                        593 00148$:
                                    594 ;	life.c:122: pu[y][x] = 0;
      0020E2 90 8C 06         [24]  595 	mov	dptr,#_y
      0020E5 E0               [24]  596 	movx	a,@dptr
      0020E6 FE               [12]  597 	mov	r6,a
      0020E7 A3               [24]  598 	inc	dptr
      0020E8 E0               [24]  599 	movx	a,@dptr
      0020E9 C4               [12]  600 	swap	a
      0020EA 23               [12]  601 	rl	a
      0020EB 54 E0            [12]  602 	anl	a,#0xe0
      0020ED CE               [12]  603 	xch	a,r6
      0020EE C4               [12]  604 	swap	a
      0020EF 23               [12]  605 	rl	a
      0020F0 CE               [12]  606 	xch	a,r6
      0020F1 6E               [12]  607 	xrl	a,r6
      0020F2 CE               [12]  608 	xch	a,r6
      0020F3 54 E0            [12]  609 	anl	a,#0xe0
      0020F5 CE               [12]  610 	xch	a,r6
      0020F6 6E               [12]  611 	xrl	a,r6
      0020F7 FF               [12]  612 	mov	r7,a
      0020F8 EE               [12]  613 	mov	a,r6
      0020F9 24 04            [12]  614 	add	a,#_pu
      0020FB FE               [12]  615 	mov	r6,a
      0020FC EF               [12]  616 	mov	a,r7
      0020FD 34 80            [12]  617 	addc	a,#(_pu >> 8)
      0020FF FF               [12]  618 	mov	r7,a
      002100 90 8C 04         [24]  619 	mov	dptr,#_x
      002103 E0               [24]  620 	movx	a,@dptr
      002104 FC               [12]  621 	mov	r4,a
      002105 A3               [24]  622 	inc	dptr
      002106 E0               [24]  623 	movx	a,@dptr
      002107 FD               [12]  624 	mov	r5,a
      002108 EC               [12]  625 	mov	a,r4
      002109 2E               [12]  626 	add	a,r6
      00210A F5 82            [12]  627 	mov	dpl,a
      00210C ED               [12]  628 	mov	a,r5
      00210D 3F               [12]  629 	addc	a,r7
      00210E F5 83            [12]  630 	mov	dph,a
      002110 E4               [12]  631 	clr	a
      002111 F0               [24]  632 	movx	@dptr,a
                                    633 ;	life.c:121: for (x = 0; x < W; x++)
      002112 90 8C 04         [24]  634 	mov	dptr,#_x
      002115 E0               [24]  635 	movx	a,@dptr
      002116 24 01            [12]  636 	add	a,#0x01
      002118 F0               [24]  637 	movx	@dptr,a
      002119 A3               [24]  638 	inc	dptr
      00211A E0               [24]  639 	movx	a,@dptr
      00211B 34 00            [12]  640 	addc	a,#0x00
      00211D F0               [24]  641 	movx	@dptr,a
      00211E 90 8C 04         [24]  642 	mov	dptr,#_x
      002121 E0               [24]  643 	movx	a,@dptr
      002122 FE               [12]  644 	mov	r6,a
      002123 A3               [24]  645 	inc	dptr
      002124 E0               [24]  646 	movx	a,@dptr
      002125 FF               [12]  647 	mov	r7,a
      002126 C3               [12]  648 	clr	c
      002127 EE               [12]  649 	mov	a,r6
      002128 94 20            [12]  650 	subb	a,#0x20
      00212A EF               [12]  651 	mov	a,r7
      00212B 64 80            [12]  652 	xrl	a,#0x80
      00212D 94 80            [12]  653 	subb	a,#0x80
      00212F 40 B1            [24]  654 	jc	00148$
                                    655 ;	life.c:120: for (y = 0; y < H; y++)
      002131 90 8C 06         [24]  656 	mov	dptr,#_y
      002134 E0               [24]  657 	movx	a,@dptr
      002135 24 01            [12]  658 	add	a,#0x01
      002137 F0               [24]  659 	movx	@dptr,a
      002138 A3               [24]  660 	inc	dptr
      002139 E0               [24]  661 	movx	a,@dptr
      00213A 34 00            [12]  662 	addc	a,#0x00
      00213C F0               [24]  663 	movx	@dptr,a
      00213D 90 8C 06         [24]  664 	mov	dptr,#_y
      002140 E0               [24]  665 	movx	a,@dptr
      002141 FE               [12]  666 	mov	r6,a
      002142 A3               [24]  667 	inc	dptr
      002143 E0               [24]  668 	movx	a,@dptr
      002144 FF               [12]  669 	mov	r7,a
      002145 C3               [12]  670 	clr	c
      002146 EE               [12]  671 	mov	a,r6
      002147 94 20            [12]  672 	subb	a,#0x20
      002149 EF               [12]  673 	mov	a,r7
      00214A 64 80            [12]  674 	xrl	a,#0x80
      00214C 94 80            [12]  675 	subb	a,#0x80
      00214E 40 8B            [24]  676 	jc	00150$
                                    677 ;	life.c:123: printf("\033[2J\033[mINIT\n\r");
      002150 74 BB            [12]  678 	mov	a,#___str_5
      002152 C0 E0            [24]  679 	push	acc
      002154 74 3C            [12]  680 	mov	a,#(___str_5 >> 8)
      002156 C0 E0            [24]  681 	push	acc
      002158 74 80            [12]  682 	mov	a,#0x80
      00215A C0 E0            [24]  683 	push	acc
      00215C 12 28 CC         [24]  684 	lcall	_printf
      00215F 15 81            [12]  685 	dec	sp
      002161 15 81            [12]  686 	dec	sp
      002163 15 81            [12]  687 	dec	sp
                                    688 ;	life.c:124: for (y = 0; y < H; y++)
      002165 90 8C 06         [24]  689 	mov	dptr,#_y
      002168 E4               [12]  690 	clr	a
      002169 F0               [24]  691 	movx	@dptr,a
      00216A A3               [24]  692 	inc	dptr
      00216B F0               [24]  693 	movx	@dptr,a
      00216C                        694 00154$:
                                    695 ;	life.c:125: for (x = 0; x < W; x++) {
      00216C 90 8C 04         [24]  696 	mov	dptr,#_x
      00216F E4               [12]  697 	clr	a
      002170 F0               [24]  698 	movx	@dptr,a
      002171 A3               [24]  699 	inc	dptr
      002172 F0               [24]  700 	movx	@dptr,a
      002173                        701 00152$:
                                    702 ;	life.c:126: c = getchar();
      002173 12 20 7A         [24]  703 	lcall	_getchar
      002176 AE 82            [24]  704 	mov	r6,dpl
      002178 AF 83            [24]  705 	mov	r7,dph
      00217A 90 8C 1C         [24]  706 	mov	dptr,#_c
      00217D EE               [12]  707 	mov	a,r6
      00217E F0               [24]  708 	movx	@dptr,a
      00217F EF               [12]  709 	mov	a,r7
      002180 A3               [24]  710 	inc	dptr
      002181 F0               [24]  711 	movx	@dptr,a
                                    712 ;	life.c:127: u[y][x] = c & 1;
      002182 90 8C 06         [24]  713 	mov	dptr,#_y
      002185 E0               [24]  714 	movx	a,@dptr
      002186 FC               [12]  715 	mov	r4,a
      002187 A3               [24]  716 	inc	dptr
      002188 E0               [24]  717 	movx	a,@dptr
      002189 C4               [12]  718 	swap	a
      00218A 23               [12]  719 	rl	a
      00218B 54 E0            [12]  720 	anl	a,#0xe0
      00218D CC               [12]  721 	xch	a,r4
      00218E C4               [12]  722 	swap	a
      00218F 23               [12]  723 	rl	a
      002190 CC               [12]  724 	xch	a,r4
      002191 6C               [12]  725 	xrl	a,r4
      002192 CC               [12]  726 	xch	a,r4
      002193 54 E0            [12]  727 	anl	a,#0xe0
      002195 CC               [12]  728 	xch	a,r4
      002196 6C               [12]  729 	xrl	a,r4
      002197 FD               [12]  730 	mov	r5,a
      002198 EC               [12]  731 	mov	a,r4
      002199 24 04            [12]  732 	add	a,#_u
      00219B FC               [12]  733 	mov	r4,a
      00219C ED               [12]  734 	mov	a,r5
      00219D 34 84            [12]  735 	addc	a,#(_u >> 8)
      00219F FD               [12]  736 	mov	r5,a
      0021A0 90 8C 04         [24]  737 	mov	dptr,#_x
      0021A3 E0               [24]  738 	movx	a,@dptr
      0021A4 FA               [12]  739 	mov	r2,a
      0021A5 A3               [24]  740 	inc	dptr
      0021A6 E0               [24]  741 	movx	a,@dptr
      0021A7 FB               [12]  742 	mov	r3,a
      0021A8 EA               [12]  743 	mov	a,r2
      0021A9 2C               [12]  744 	add	a,r4
      0021AA F5 82            [12]  745 	mov	dpl,a
      0021AC EB               [12]  746 	mov	a,r3
      0021AD 3D               [12]  747 	addc	a,r5
      0021AE F5 83            [12]  748 	mov	dph,a
      0021B0 53 06 01         [24]  749 	anl	ar6,#0x01
      0021B3 EE               [12]  750 	mov	a,r6
      0021B4 F0               [24]  751 	movx	@dptr,a
                                    752 ;	life.c:125: for (x = 0; x < W; x++) {
      0021B5 90 8C 04         [24]  753 	mov	dptr,#_x
      0021B8 E0               [24]  754 	movx	a,@dptr
      0021B9 24 01            [12]  755 	add	a,#0x01
      0021BB F0               [24]  756 	movx	@dptr,a
      0021BC A3               [24]  757 	inc	dptr
      0021BD E0               [24]  758 	movx	a,@dptr
      0021BE 34 00            [12]  759 	addc	a,#0x00
      0021C0 F0               [24]  760 	movx	@dptr,a
      0021C1 90 8C 04         [24]  761 	mov	dptr,#_x
      0021C4 E0               [24]  762 	movx	a,@dptr
      0021C5 FE               [12]  763 	mov	r6,a
      0021C6 A3               [24]  764 	inc	dptr
      0021C7 E0               [24]  765 	movx	a,@dptr
      0021C8 FF               [12]  766 	mov	r7,a
      0021C9 C3               [12]  767 	clr	c
      0021CA EE               [12]  768 	mov	a,r6
      0021CB 94 20            [12]  769 	subb	a,#0x20
      0021CD EF               [12]  770 	mov	a,r7
      0021CE 64 80            [12]  771 	xrl	a,#0x80
      0021D0 94 80            [12]  772 	subb	a,#0x80
      0021D2 40 9F            [24]  773 	jc	00152$
                                    774 ;	life.c:124: for (y = 0; y < H; y++)
      0021D4 90 8C 06         [24]  775 	mov	dptr,#_y
      0021D7 E0               [24]  776 	movx	a,@dptr
      0021D8 24 01            [12]  777 	add	a,#0x01
      0021DA F0               [24]  778 	movx	@dptr,a
      0021DB A3               [24]  779 	inc	dptr
      0021DC E0               [24]  780 	movx	a,@dptr
      0021DD 34 00            [12]  781 	addc	a,#0x00
      0021DF F0               [24]  782 	movx	@dptr,a
      0021E0 90 8C 06         [24]  783 	mov	dptr,#_y
      0021E3 E0               [24]  784 	movx	a,@dptr
      0021E4 FE               [12]  785 	mov	r6,a
      0021E5 A3               [24]  786 	inc	dptr
      0021E6 E0               [24]  787 	movx	a,@dptr
      0021E7 FF               [12]  788 	mov	r7,a
      0021E8 C3               [12]  789 	clr	c
      0021E9 EE               [12]  790 	mov	a,r6
      0021EA 94 20            [12]  791 	subb	a,#0x20
      0021EC EF               [12]  792 	mov	a,r7
      0021ED 64 80            [12]  793 	xrl	a,#0x80
      0021EF 94 80            [12]  794 	subb	a,#0x80
      0021F1 50 03            [24]  795 	jnc	00372$
      0021F3 02 21 6C         [24]  796 	ljmp	00154$
      0021F6                        797 00372$:
                                    798 ;	life.c:129: printf("RDY\n\r");
      0021F6 74 C9            [12]  799 	mov	a,#___str_6
      0021F8 C0 E0            [24]  800 	push	acc
      0021FA 74 3C            [12]  801 	mov	a,#(___str_6 >> 8)
      0021FC C0 E0            [24]  802 	push	acc
      0021FE 74 80            [12]  803 	mov	a,#0x80
      002200 C0 E0            [24]  804 	push	acc
      002202 12 28 CC         [24]  805 	lcall	_printf
      002205 15 81            [12]  806 	dec	sp
      002207 15 81            [12]  807 	dec	sp
      002209 15 81            [12]  808 	dec	sp
                                    809 ;	life.c:130: (void)getchar();
      00220B 12 20 7A         [24]  810 	lcall	_getchar
                                    811 ;	life.c:42: for (j = 0; j < 4; j++)
      00220E 90 8C 16         [24]  812 	mov	dptr,#_j
      002211 E4               [12]  813 	clr	a
      002212 F0               [24]  814 	movx	@dptr,a
      002213 A3               [24]  815 	inc	dptr
      002214 F0               [24]  816 	movx	@dptr,a
      002215                        817 00156$:
                                    818 ;	life.c:43: generation[j] = 0;
      002215 90 8C 16         [24]  819 	mov	dptr,#_j
      002218 E0               [24]  820 	movx	a,@dptr
      002219 FE               [12]  821 	mov	r6,a
      00221A A3               [24]  822 	inc	dptr
      00221B E0               [24]  823 	movx	a,@dptr
      00221C FF               [12]  824 	mov	r7,a
      00221D EE               [12]  825 	mov	a,r6
      00221E 2E               [12]  826 	add	a,r6
      00221F FE               [12]  827 	mov	r6,a
      002220 EF               [12]  828 	mov	a,r7
      002221 33               [12]  829 	rlc	a
      002222 FF               [12]  830 	mov	r7,a
      002223 EE               [12]  831 	mov	a,r6
      002224 24 0E            [12]  832 	add	a,#_generation
      002226 F5 82            [12]  833 	mov	dpl,a
      002228 EF               [12]  834 	mov	a,r7
      002229 34 8C            [12]  835 	addc	a,#(_generation >> 8)
      00222B F5 83            [12]  836 	mov	dph,a
      00222D E4               [12]  837 	clr	a
      00222E F0               [24]  838 	movx	@dptr,a
      00222F A3               [24]  839 	inc	dptr
      002230 F0               [24]  840 	movx	@dptr,a
                                    841 ;	life.c:42: for (j = 0; j < 4; j++)
      002231 90 8C 16         [24]  842 	mov	dptr,#_j
      002234 E0               [24]  843 	movx	a,@dptr
      002235 24 01            [12]  844 	add	a,#0x01
      002237 F0               [24]  845 	movx	@dptr,a
      002238 A3               [24]  846 	inc	dptr
      002239 E0               [24]  847 	movx	a,@dptr
      00223A 34 00            [12]  848 	addc	a,#0x00
      00223C F0               [24]  849 	movx	@dptr,a
      00223D 90 8C 16         [24]  850 	mov	dptr,#_j
      002240 E0               [24]  851 	movx	a,@dptr
      002241 FE               [12]  852 	mov	r6,a
      002242 A3               [24]  853 	inc	dptr
      002243 E0               [24]  854 	movx	a,@dptr
      002244 FF               [12]  855 	mov	r7,a
      002245 C3               [12]  856 	clr	c
      002246 EE               [12]  857 	mov	a,r6
      002247 94 04            [12]  858 	subb	a,#0x04
      002249 EF               [12]  859 	mov	a,r7
      00224A 64 80            [12]  860 	xrl	a,#0x80
      00224C 94 80            [12]  861 	subb	a,#0x80
      00224E 40 C5            [24]  862 	jc	00156$
                                    863 ;	life.c:134: i1 = 0;
      002250 90 80 02         [24]  864 	mov	dptr,#_i1
      002253 E4               [12]  865 	clr	a
      002254 F0               [24]  866 	movx	@dptr,a
      002255 A3               [24]  867 	inc	dptr
      002256 F0               [24]  868 	movx	@dptr,a
                                    869 ;	life.c:135: while (!i0 && !i1) {
      002257                        870 00109$:
      002257 90 80 00         [24]  871 	mov	dptr,#_i0
      00225A E0               [24]  872 	movx	a,@dptr
      00225B F5 F0            [12]  873 	mov	b,a
      00225D A3               [24]  874 	inc	dptr
      00225E E0               [24]  875 	movx	a,@dptr
      00225F 45 F0            [12]  876 	orl	a,b
      002261 60 03            [24]  877 	jz	00374$
      002263 02 28 3E         [24]  878 	ljmp	00111$
      002266                        879 00374$:
      002266 90 80 02         [24]  880 	mov	dptr,#_i1
      002269 E0               [24]  881 	movx	a,@dptr
      00226A F5 F0            [12]  882 	mov	b,a
      00226C A3               [24]  883 	inc	dptr
      00226D E0               [24]  884 	movx	a,@dptr
      00226E 45 F0            [12]  885 	orl	a,b
      002270 60 03            [24]  886 	jz	00375$
      002272 02 28 3E         [24]  887 	ljmp	00111$
      002275                        888 00375$:
                                    889 ;	life.c:67: printf("\033[2J\033[m");
      002275 74 A2            [12]  890 	mov	a,#___str_1
      002277 C0 E0            [24]  891 	push	acc
      002279 74 3C            [12]  892 	mov	a,#(___str_1 >> 8)
      00227B C0 E0            [24]  893 	push	acc
      00227D 74 80            [12]  894 	mov	a,#0x80
      00227F C0 E0            [24]  895 	push	acc
      002281 12 28 CC         [24]  896 	lcall	_printf
      002284 15 81            [12]  897 	dec	sp
      002286 15 81            [12]  898 	dec	sp
      002288 15 81            [12]  899 	dec	sp
                                    900 ;	life.c:58: for (j = 0; j < 4; j++) {
      00228A 90 8C 16         [24]  901 	mov	dptr,#_j
      00228D E4               [12]  902 	clr	a
      00228E F0               [24]  903 	movx	@dptr,a
      00228F A3               [24]  904 	inc	dptr
      002290 F0               [24]  905 	movx	@dptr,a
      002291                        906 00158$:
                                    907 ;	life.c:59: printf("%04x", generation[3 - j]);
      002291 90 8C 16         [24]  908 	mov	dptr,#_j
      002294 E0               [24]  909 	movx	a,@dptr
      002295 FE               [12]  910 	mov	r6,a
      002296 A3               [24]  911 	inc	dptr
      002297 E0               [24]  912 	movx	a,@dptr
      002298 74 03            [12]  913 	mov	a,#0x03
      00229A C3               [12]  914 	clr	c
      00229B 9E               [12]  915 	subb	a,r6
      00229C FE               [12]  916 	mov	r6,a
      00229D C2 D5            [12]  917 	clr	F0
      00229F 75 F0 02         [24]  918 	mov	b,#0x02
      0022A2 EE               [12]  919 	mov	a,r6
      0022A3 30 E7 04         [24]  920 	jnb	acc.7,00376$
      0022A6 B2 D5            [12]  921 	cpl	F0
      0022A8 F4               [12]  922 	cpl	a
      0022A9 04               [12]  923 	inc	a
      0022AA                        924 00376$:
      0022AA A4               [48]  925 	mul	ab
      0022AB 30 D5 0A         [24]  926 	jnb	F0,00377$
      0022AE F4               [12]  927 	cpl	a
      0022AF 24 01            [12]  928 	add	a,#0x01
      0022B1 C5 F0            [12]  929 	xch	a,b
      0022B3 F4               [12]  930 	cpl	a
      0022B4 34 00            [12]  931 	addc	a,#0x00
      0022B6 C5 F0            [12]  932 	xch	a,b
      0022B8                        933 00377$:
      0022B8 24 0E            [12]  934 	add	a,#_generation
      0022BA F5 82            [12]  935 	mov	dpl,a
      0022BC 74 8C            [12]  936 	mov	a,#(_generation >> 8)
      0022BE 35 F0            [12]  937 	addc	a,b
      0022C0 F5 83            [12]  938 	mov	dph,a
      0022C2 E0               [24]  939 	movx	a,@dptr
      0022C3 FE               [12]  940 	mov	r6,a
      0022C4 A3               [24]  941 	inc	dptr
      0022C5 E0               [24]  942 	movx	a,@dptr
      0022C6 FF               [12]  943 	mov	r7,a
      0022C7 C0 06            [24]  944 	push	ar6
      0022C9 C0 07            [24]  945 	push	ar7
      0022CB 74 9D            [12]  946 	mov	a,#___str_0
      0022CD C0 E0            [24]  947 	push	acc
      0022CF 74 3C            [12]  948 	mov	a,#(___str_0 >> 8)
      0022D1 C0 E0            [24]  949 	push	acc
      0022D3 74 80            [12]  950 	mov	a,#0x80
      0022D5 C0 E0            [24]  951 	push	acc
      0022D7 12 28 CC         [24]  952 	lcall	_printf
      0022DA E5 81            [12]  953 	mov	a,sp
      0022DC 24 FB            [12]  954 	add	a,#0xfb
      0022DE F5 81            [12]  955 	mov	sp,a
                                    956 ;	life.c:60: if (j < 3) putchar(' ');
      0022E0 90 8C 16         [24]  957 	mov	dptr,#_j
      0022E3 E0               [24]  958 	movx	a,@dptr
      0022E4 FE               [12]  959 	mov	r6,a
      0022E5 A3               [24]  960 	inc	dptr
      0022E6 E0               [24]  961 	movx	a,@dptr
      0022E7 FF               [12]  962 	mov	r7,a
      0022E8 C3               [12]  963 	clr	c
      0022E9 EE               [12]  964 	mov	a,r6
      0022EA 94 03            [12]  965 	subb	a,#0x03
      0022EC EF               [12]  966 	mov	a,r7
      0022ED 64 80            [12]  967 	xrl	a,#0x80
      0022EF 94 80            [12]  968 	subb	a,#0x80
      0022F1 50 06            [24]  969 	jnc	00159$
      0022F3 90 00 20         [24]  970 	mov	dptr,#0x0020
      0022F6 12 20 75         [24]  971 	lcall	_putchar
      0022F9                        972 00159$:
                                    973 ;	life.c:58: for (j = 0; j < 4; j++) {
      0022F9 90 8C 16         [24]  974 	mov	dptr,#_j
      0022FC E0               [24]  975 	movx	a,@dptr
      0022FD 24 01            [12]  976 	add	a,#0x01
      0022FF F0               [24]  977 	movx	@dptr,a
      002300 A3               [24]  978 	inc	dptr
      002301 E0               [24]  979 	movx	a,@dptr
      002302 34 00            [12]  980 	addc	a,#0x00
      002304 F0               [24]  981 	movx	@dptr,a
      002305 90 8C 16         [24]  982 	mov	dptr,#_j
      002308 E0               [24]  983 	movx	a,@dptr
      002309 FE               [12]  984 	mov	r6,a
      00230A A3               [24]  985 	inc	dptr
      00230B E0               [24]  986 	movx	a,@dptr
      00230C FF               [12]  987 	mov	r7,a
      00230D C3               [12]  988 	clr	c
      00230E EE               [12]  989 	mov	a,r6
      00230F 94 04            [12]  990 	subb	a,#0x04
      002311 EF               [12]  991 	mov	a,r7
      002312 64 80            [12]  992 	xrl	a,#0x80
      002314 94 80            [12]  993 	subb	a,#0x80
      002316 50 03            [24]  994 	jnc	00379$
      002318 02 22 91         [24]  995 	ljmp	00158$
      00231B                        996 00379$:
                                    997 ;	life.c:69: printf("\r\n");
      00231B 74 AA            [12]  998 	mov	a,#___str_2
      00231D C0 E0            [24]  999 	push	acc
      00231F 74 3C            [12] 1000 	mov	a,#(___str_2 >> 8)
      002321 C0 E0            [24] 1001 	push	acc
      002323 74 80            [12] 1002 	mov	a,#0x80
      002325 C0 E0            [24] 1003 	push	acc
      002327 12 28 CC         [24] 1004 	lcall	_printf
      00232A 15 81            [12] 1005 	dec	sp
      00232C 15 81            [12] 1006 	dec	sp
      00232E 15 81            [12] 1007 	dec	sp
                                   1008 ;	life.c:49: for (j = 0; j < 4; j++) {
      002330 90 8C 16         [24] 1009 	mov	dptr,#_j
      002333 E4               [12] 1010 	clr	a
      002334 F0               [24] 1011 	movx	@dptr,a
      002335 A3               [24] 1012 	inc	dptr
      002336 F0               [24] 1013 	movx	@dptr,a
      002337                       1014 00160$:
                                   1015 ;	life.c:50: generation[j]++;
      002337 90 8C 16         [24] 1016 	mov	dptr,#_j
      00233A E0               [24] 1017 	movx	a,@dptr
      00233B FE               [12] 1018 	mov	r6,a
      00233C A3               [24] 1019 	inc	dptr
      00233D E0               [24] 1020 	movx	a,@dptr
      00233E FF               [12] 1021 	mov	r7,a
      00233F EE               [12] 1022 	mov	a,r6
      002340 2E               [12] 1023 	add	a,r6
      002341 FE               [12] 1024 	mov	r6,a
      002342 EF               [12] 1025 	mov	a,r7
      002343 33               [12] 1026 	rlc	a
      002344 FF               [12] 1027 	mov	r7,a
      002345 EE               [12] 1028 	mov	a,r6
      002346 24 0E            [12] 1029 	add	a,#_generation
      002348 FE               [12] 1030 	mov	r6,a
      002349 EF               [12] 1031 	mov	a,r7
      00234A 34 8C            [12] 1032 	addc	a,#(_generation >> 8)
      00234C FF               [12] 1033 	mov	r7,a
      00234D 8E 82            [24] 1034 	mov	dpl,r6
      00234F 8F 83            [24] 1035 	mov	dph,r7
      002351 E0               [24] 1036 	movx	a,@dptr
      002352 FC               [12] 1037 	mov	r4,a
      002353 A3               [24] 1038 	inc	dptr
      002354 E0               [24] 1039 	movx	a,@dptr
      002355 FD               [12] 1040 	mov	r5,a
      002356 0C               [12] 1041 	inc	r4
      002357 BC 00 01         [24] 1042 	cjne	r4,#0x00,00380$
      00235A 0D               [12] 1043 	inc	r5
      00235B                       1044 00380$:
      00235B 8E 82            [24] 1045 	mov	dpl,r6
      00235D 8F 83            [24] 1046 	mov	dph,r7
      00235F EC               [12] 1047 	mov	a,r4
      002360 F0               [24] 1048 	movx	@dptr,a
      002361 ED               [12] 1049 	mov	a,r5
      002362 A3               [24] 1050 	inc	dptr
      002363 F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	life.c:51: if (generation[j]) break;
      002364 90 8C 16         [24] 1053 	mov	dptr,#_j
      002367 E0               [24] 1054 	movx	a,@dptr
      002368 FE               [12] 1055 	mov	r6,a
      002369 A3               [24] 1056 	inc	dptr
      00236A E0               [24] 1057 	movx	a,@dptr
      00236B FF               [12] 1058 	mov	r7,a
      00236C EE               [12] 1059 	mov	a,r6
      00236D 2E               [12] 1060 	add	a,r6
      00236E FC               [12] 1061 	mov	r4,a
      00236F EF               [12] 1062 	mov	a,r7
      002370 33               [12] 1063 	rlc	a
      002371 FD               [12] 1064 	mov	r5,a
      002372 EC               [12] 1065 	mov	a,r4
      002373 24 0E            [12] 1066 	add	a,#_generation
      002375 F5 82            [12] 1067 	mov	dpl,a
      002377 ED               [12] 1068 	mov	a,r5
      002378 34 8C            [12] 1069 	addc	a,#(_generation >> 8)
      00237A F5 83            [12] 1070 	mov	dph,a
      00237C E0               [24] 1071 	movx	a,@dptr
      00237D FC               [12] 1072 	mov	r4,a
      00237E A3               [24] 1073 	inc	dptr
      00237F E0               [24] 1074 	movx	a,@dptr
      002380 FD               [12] 1075 	mov	r5,a
      002381 4C               [12] 1076 	orl	a,r4
      002382 70 1E            [24] 1077 	jnz	00126$
                                   1078 ;	life.c:49: for (j = 0; j < 4; j++) {
      002384 90 8C 16         [24] 1079 	mov	dptr,#_j
      002387 74 01            [12] 1080 	mov	a,#0x01
      002389 2E               [12] 1081 	add	a,r6
      00238A F0               [24] 1082 	movx	@dptr,a
      00238B E4               [12] 1083 	clr	a
      00238C 3F               [12] 1084 	addc	a,r7
      00238D A3               [24] 1085 	inc	dptr
      00238E F0               [24] 1086 	movx	@dptr,a
      00238F 90 8C 16         [24] 1087 	mov	dptr,#_j
      002392 E0               [24] 1088 	movx	a,@dptr
      002393 FE               [12] 1089 	mov	r6,a
      002394 A3               [24] 1090 	inc	dptr
      002395 E0               [24] 1091 	movx	a,@dptr
      002396 FF               [12] 1092 	mov	r7,a
      002397 C3               [12] 1093 	clr	c
      002398 EE               [12] 1094 	mov	a,r6
      002399 94 04            [12] 1095 	subb	a,#0x04
      00239B EF               [12] 1096 	mov	a,r7
      00239C 64 80            [12] 1097 	xrl	a,#0x80
      00239E 94 80            [12] 1098 	subb	a,#0x80
      0023A0 40 95            [24] 1099 	jc	00160$
                                   1100 ;	life.c:70: updategen();
      0023A2                       1101 00126$:
                                   1102 ;	life.c:72: for (x = 0; x < W; x++) {
      0023A2 90 8C 04         [24] 1103 	mov	dptr,#_x
      0023A5 E4               [12] 1104 	clr	a
      0023A6 F0               [24] 1105 	movx	@dptr,a
      0023A7 A3               [24] 1106 	inc	dptr
      0023A8 F0               [24] 1107 	movx	@dptr,a
      0023A9                       1108 00164$:
                                   1109 ;	life.c:73: for (y = 0; y < H; y++)
      0023A9 90 8C 06         [24] 1110 	mov	dptr,#_y
      0023AC E4               [12] 1111 	clr	a
      0023AD F0               [24] 1112 	movx	@dptr,a
      0023AE A3               [24] 1113 	inc	dptr
      0023AF F0               [24] 1114 	movx	@dptr,a
      0023B0                       1115 00162$:
                                   1116 ;	life.c:74: if (u[y][x]) printf("\033[01m[]\033[m");
      0023B0 90 8C 06         [24] 1117 	mov	dptr,#_y
      0023B3 E0               [24] 1118 	movx	a,@dptr
      0023B4 FE               [12] 1119 	mov	r6,a
      0023B5 A3               [24] 1120 	inc	dptr
      0023B6 E0               [24] 1121 	movx	a,@dptr
      0023B7 C4               [12] 1122 	swap	a
      0023B8 23               [12] 1123 	rl	a
      0023B9 54 E0            [12] 1124 	anl	a,#0xe0
      0023BB CE               [12] 1125 	xch	a,r6
      0023BC C4               [12] 1126 	swap	a
      0023BD 23               [12] 1127 	rl	a
      0023BE CE               [12] 1128 	xch	a,r6
      0023BF 6E               [12] 1129 	xrl	a,r6
      0023C0 CE               [12] 1130 	xch	a,r6
      0023C1 54 E0            [12] 1131 	anl	a,#0xe0
      0023C3 CE               [12] 1132 	xch	a,r6
      0023C4 6E               [12] 1133 	xrl	a,r6
      0023C5 FF               [12] 1134 	mov	r7,a
      0023C6 EE               [12] 1135 	mov	a,r6
      0023C7 24 04            [12] 1136 	add	a,#_u
      0023C9 FE               [12] 1137 	mov	r6,a
      0023CA EF               [12] 1138 	mov	a,r7
      0023CB 34 84            [12] 1139 	addc	a,#(_u >> 8)
      0023CD FF               [12] 1140 	mov	r7,a
      0023CE 90 8C 04         [24] 1141 	mov	dptr,#_x
      0023D1 E0               [24] 1142 	movx	a,@dptr
      0023D2 FC               [12] 1143 	mov	r4,a
      0023D3 A3               [24] 1144 	inc	dptr
      0023D4 E0               [24] 1145 	movx	a,@dptr
      0023D5 FD               [12] 1146 	mov	r5,a
      0023D6 EC               [12] 1147 	mov	a,r4
      0023D7 2E               [12] 1148 	add	a,r6
      0023D8 FE               [12] 1149 	mov	r6,a
      0023D9 ED               [12] 1150 	mov	a,r5
      0023DA 3F               [12] 1151 	addc	a,r7
      0023DB FF               [12] 1152 	mov	r7,a
      0023DC 8E 82            [24] 1153 	mov	dpl,r6
      0023DE 8F 83            [24] 1154 	mov	dph,r7
      0023E0 E0               [24] 1155 	movx	a,@dptr
      0023E1 60 17            [24] 1156 	jz	00128$
      0023E3 74 AD            [12] 1157 	mov	a,#___str_3
      0023E5 C0 E0            [24] 1158 	push	acc
      0023E7 74 3C            [12] 1159 	mov	a,#(___str_3 >> 8)
      0023E9 C0 E0            [24] 1160 	push	acc
      0023EB 74 80            [12] 1161 	mov	a,#0x80
      0023ED C0 E0            [24] 1162 	push	acc
      0023EF 12 28 CC         [24] 1163 	lcall	_printf
      0023F2 15 81            [12] 1164 	dec	sp
      0023F4 15 81            [12] 1165 	dec	sp
      0023F6 15 81            [12] 1166 	dec	sp
      0023F8 80 15            [24] 1167 	sjmp	00163$
      0023FA                       1168 00128$:
                                   1169 ;	life.c:75: else printf("--");
      0023FA 74 B8            [12] 1170 	mov	a,#___str_4
      0023FC C0 E0            [24] 1171 	push	acc
      0023FE 74 3C            [12] 1172 	mov	a,#(___str_4 >> 8)
      002400 C0 E0            [24] 1173 	push	acc
      002402 74 80            [12] 1174 	mov	a,#0x80
      002404 C0 E0            [24] 1175 	push	acc
      002406 12 28 CC         [24] 1176 	lcall	_printf
      002409 15 81            [12] 1177 	dec	sp
      00240B 15 81            [12] 1178 	dec	sp
      00240D 15 81            [12] 1179 	dec	sp
      00240F                       1180 00163$:
                                   1181 ;	life.c:73: for (y = 0; y < H; y++)
      00240F 90 8C 06         [24] 1182 	mov	dptr,#_y
      002412 E0               [24] 1183 	movx	a,@dptr
      002413 24 01            [12] 1184 	add	a,#0x01
      002415 F0               [24] 1185 	movx	@dptr,a
      002416 A3               [24] 1186 	inc	dptr
      002417 E0               [24] 1187 	movx	a,@dptr
      002418 34 00            [12] 1188 	addc	a,#0x00
      00241A F0               [24] 1189 	movx	@dptr,a
      00241B 90 8C 06         [24] 1190 	mov	dptr,#_y
      00241E E0               [24] 1191 	movx	a,@dptr
      00241F FE               [12] 1192 	mov	r6,a
      002420 A3               [24] 1193 	inc	dptr
      002421 E0               [24] 1194 	movx	a,@dptr
      002422 FF               [12] 1195 	mov	r7,a
      002423 C3               [12] 1196 	clr	c
      002424 EE               [12] 1197 	mov	a,r6
      002425 94 20            [12] 1198 	subb	a,#0x20
      002427 EF               [12] 1199 	mov	a,r7
      002428 64 80            [12] 1200 	xrl	a,#0x80
      00242A 94 80            [12] 1201 	subb	a,#0x80
      00242C 50 03            [24] 1202 	jnc	00384$
      00242E 02 23 B0         [24] 1203 	ljmp	00162$
      002431                       1204 00384$:
                                   1205 ;	life.c:76: printf("\r\n");
      002431 74 AA            [12] 1206 	mov	a,#___str_2
      002433 C0 E0            [24] 1207 	push	acc
      002435 74 3C            [12] 1208 	mov	a,#(___str_2 >> 8)
      002437 C0 E0            [24] 1209 	push	acc
      002439 74 80            [12] 1210 	mov	a,#0x80
      00243B C0 E0            [24] 1211 	push	acc
      00243D 12 28 CC         [24] 1212 	lcall	_printf
      002440 15 81            [12] 1213 	dec	sp
      002442 15 81            [12] 1214 	dec	sp
      002444 15 81            [12] 1215 	dec	sp
                                   1216 ;	life.c:72: for (x = 0; x < W; x++) {
      002446 90 8C 04         [24] 1217 	mov	dptr,#_x
      002449 E0               [24] 1218 	movx	a,@dptr
      00244A 24 01            [12] 1219 	add	a,#0x01
      00244C F0               [24] 1220 	movx	@dptr,a
      00244D A3               [24] 1221 	inc	dptr
      00244E E0               [24] 1222 	movx	a,@dptr
      00244F 34 00            [12] 1223 	addc	a,#0x00
      002451 F0               [24] 1224 	movx	@dptr,a
      002452 90 8C 04         [24] 1225 	mov	dptr,#_x
      002455 E0               [24] 1226 	movx	a,@dptr
      002456 FE               [12] 1227 	mov	r6,a
      002457 A3               [24] 1228 	inc	dptr
      002458 E0               [24] 1229 	movx	a,@dptr
      002459 FF               [12] 1230 	mov	r7,a
      00245A C3               [12] 1231 	clr	c
      00245B EE               [12] 1232 	mov	a,r6
      00245C 94 20            [12] 1233 	subb	a,#0x20
      00245E EF               [12] 1234 	mov	a,r7
      00245F 64 80            [12] 1235 	xrl	a,#0x80
      002461 94 80            [12] 1236 	subb	a,#0x80
      002463 50 03            [24] 1237 	jnc	00385$
      002465 02 23 A9         [24] 1238 	ljmp	00164$
      002468                       1239 00385$:
                                   1240 ;	life.c:83: fixed = 1;
      002468 90 8C 18         [24] 1241 	mov	dptr,#_fixed
      00246B 74 01            [12] 1242 	mov	a,#0x01
      00246D F0               [24] 1243 	movx	@dptr,a
      00246E E4               [12] 1244 	clr	a
      00246F A3               [24] 1245 	inc	dptr
      002470 F0               [24] 1246 	movx	@dptr,a
                                   1247 ;	life.c:84: cycle2 = 1;
      002471 90 8C 1A         [24] 1248 	mov	dptr,#_cycle2
      002474 04               [12] 1249 	inc	a
      002475 F0               [24] 1250 	movx	@dptr,a
      002476 E4               [12] 1251 	clr	a
      002477 A3               [24] 1252 	inc	dptr
      002478 F0               [24] 1253 	movx	@dptr,a
                                   1254 ;	life.c:86: for (y = 0; y < H; y++) {
      002479 90 8C 06         [24] 1255 	mov	dptr,#_y
      00247C F0               [24] 1256 	movx	@dptr,a
      00247D A3               [24] 1257 	inc	dptr
      00247E F0               [24] 1258 	movx	@dptr,a
      00247F                       1259 00174$:
                                   1260 ;	life.c:87: for (x = 0; x < W; x++) {
      00247F 90 8C 04         [24] 1261 	mov	dptr,#_x
      002482 E4               [12] 1262 	clr	a
      002483 F0               [24] 1263 	movx	@dptr,a
      002484 A3               [24] 1264 	inc	dptr
      002485 F0               [24] 1265 	movx	@dptr,a
      002486                       1266 00172$:
                                   1267 ;	life.c:88: n = 0;
      002486 90 8C 0C         [24] 1268 	mov	dptr,#_n
      002489 E4               [12] 1269 	clr	a
      00248A F0               [24] 1270 	movx	@dptr,a
      00248B A3               [24] 1271 	inc	dptr
      00248C F0               [24] 1272 	movx	@dptr,a
                                   1273 ;	life.c:89: for (y1 = y - 1; y1 <= y + 1; y1++)
      00248D 90 8C 06         [24] 1274 	mov	dptr,#_y
      002490 E0               [24] 1275 	movx	a,@dptr
      002491 FE               [12] 1276 	mov	r6,a
      002492 A3               [24] 1277 	inc	dptr
      002493 E0               [24] 1278 	movx	a,@dptr
      002494 FF               [12] 1279 	mov	r7,a
      002495 1E               [12] 1280 	dec	r6
      002496 BE FF 01         [24] 1281 	cjne	r6,#0xff,00386$
      002499 1F               [12] 1282 	dec	r7
      00249A                       1283 00386$:
      00249A 90 8C 0A         [24] 1284 	mov	dptr,#_y1
      00249D EE               [12] 1285 	mov	a,r6
      00249E F0               [24] 1286 	movx	@dptr,a
      00249F EF               [12] 1287 	mov	a,r7
      0024A0 A3               [24] 1288 	inc	dptr
      0024A1 F0               [24] 1289 	movx	@dptr,a
      0024A2                       1290 00170$:
      0024A2 90 8C 06         [24] 1291 	mov	dptr,#_y
      0024A5 E0               [24] 1292 	movx	a,@dptr
      0024A6 FE               [12] 1293 	mov	r6,a
      0024A7 A3               [24] 1294 	inc	dptr
      0024A8 E0               [24] 1295 	movx	a,@dptr
      0024A9 FF               [12] 1296 	mov	r7,a
      0024AA 74 01            [12] 1297 	mov	a,#0x01
      0024AC 2E               [12] 1298 	add	a,r6
      0024AD FC               [12] 1299 	mov	r4,a
      0024AE E4               [12] 1300 	clr	a
      0024AF 3F               [12] 1301 	addc	a,r7
      0024B0 FD               [12] 1302 	mov	r5,a
      0024B1 90 8C 0A         [24] 1303 	mov	dptr,#_y1
      0024B4 E0               [24] 1304 	movx	a,@dptr
      0024B5 FA               [12] 1305 	mov	r2,a
      0024B6 A3               [24] 1306 	inc	dptr
      0024B7 E0               [24] 1307 	movx	a,@dptr
      0024B8 FB               [12] 1308 	mov	r3,a
      0024B9 C3               [12] 1309 	clr	c
      0024BA EC               [12] 1310 	mov	a,r4
      0024BB 9A               [12] 1311 	subb	a,r2
      0024BC ED               [12] 1312 	mov	a,r5
      0024BD 64 80            [12] 1313 	xrl	a,#0x80
      0024BF 8B F0            [24] 1314 	mov	b,r3
      0024C1 63 F0 80         [24] 1315 	xrl	b,#0x80
      0024C4 95 F0            [12] 1316 	subb	a,b
      0024C6 50 03            [24] 1317 	jnc	00387$
      0024C8 02 25 A8         [24] 1318 	ljmp	00136$
      0024CB                       1319 00387$:
                                   1320 ;	life.c:90: for (x1 = x - 1; x1 <= x + 1; x1++)
      0024CB 90 8C 04         [24] 1321 	mov	dptr,#_x
      0024CE E0               [24] 1322 	movx	a,@dptr
      0024CF FC               [12] 1323 	mov	r4,a
      0024D0 A3               [24] 1324 	inc	dptr
      0024D1 E0               [24] 1325 	movx	a,@dptr
      0024D2 FD               [12] 1326 	mov	r5,a
      0024D3 1C               [12] 1327 	dec	r4
      0024D4 BC FF 01         [24] 1328 	cjne	r4,#0xff,00388$
      0024D7 1D               [12] 1329 	dec	r5
      0024D8                       1330 00388$:
      0024D8 90 8C 08         [24] 1331 	mov	dptr,#_x1
      0024DB EC               [12] 1332 	mov	a,r4
      0024DC F0               [24] 1333 	movx	@dptr,a
      0024DD ED               [12] 1334 	mov	a,r5
      0024DE A3               [24] 1335 	inc	dptr
      0024DF F0               [24] 1336 	movx	@dptr,a
      0024E0                       1337 00167$:
      0024E0 90 8C 04         [24] 1338 	mov	dptr,#_x
      0024E3 E0               [24] 1339 	movx	a,@dptr
      0024E4 FC               [12] 1340 	mov	r4,a
      0024E5 A3               [24] 1341 	inc	dptr
      0024E6 E0               [24] 1342 	movx	a,@dptr
      0024E7 FD               [12] 1343 	mov	r5,a
      0024E8 0C               [12] 1344 	inc	r4
      0024E9 BC 00 01         [24] 1345 	cjne	r4,#0x00,00389$
      0024EC 0D               [12] 1346 	inc	r5
      0024ED                       1347 00389$:
      0024ED 90 8C 08         [24] 1348 	mov	dptr,#_x1
      0024F0 E0               [24] 1349 	movx	a,@dptr
      0024F1 FA               [12] 1350 	mov	r2,a
      0024F2 A3               [24] 1351 	inc	dptr
      0024F3 E0               [24] 1352 	movx	a,@dptr
      0024F4 FB               [12] 1353 	mov	r3,a
      0024F5 C3               [12] 1354 	clr	c
      0024F6 EC               [12] 1355 	mov	a,r4
      0024F7 9A               [12] 1356 	subb	a,r2
      0024F8 ED               [12] 1357 	mov	a,r5
      0024F9 64 80            [12] 1358 	xrl	a,#0x80
      0024FB 8B F0            [24] 1359 	mov	b,r3
      0024FD 63 F0 80         [24] 1360 	xrl	b,#0x80
      002500 95 F0            [12] 1361 	subb	a,b
      002502 50 03            [24] 1362 	jnc	00390$
      002504 02 25 99         [24] 1363 	ljmp	00171$
      002507                       1364 00390$:
                                   1365 ;	life.c:91: if (u[(y1 + H) % H][(x1 + W) % W])
      002507 90 8C 0A         [24] 1366 	mov	dptr,#_y1
      00250A E0               [24] 1367 	movx	a,@dptr
      00250B FC               [12] 1368 	mov	r4,a
      00250C A3               [24] 1369 	inc	dptr
      00250D E0               [24] 1370 	movx	a,@dptr
      00250E FD               [12] 1371 	mov	r5,a
      00250F 74 20            [12] 1372 	mov	a,#0x20
      002511 2C               [12] 1373 	add	a,r4
      002512 FC               [12] 1374 	mov	r4,a
      002513 E4               [12] 1375 	clr	a
      002514 3D               [12] 1376 	addc	a,r5
      002515 FD               [12] 1377 	mov	r5,a
      002516 C0 03            [24] 1378 	push	ar3
      002518 C0 02            [24] 1379 	push	ar2
      00251A 74 20            [12] 1380 	mov	a,#0x20
      00251C C0 E0            [24] 1381 	push	acc
      00251E E4               [12] 1382 	clr	a
      00251F C0 E0            [24] 1383 	push	acc
      002521 8C 82            [24] 1384 	mov	dpl,r4
      002523 8D 83            [24] 1385 	mov	dph,r5
      002525 12 29 05         [24] 1386 	lcall	__modsint
      002528 AC 82            [24] 1387 	mov	r4,dpl
      00252A AD 83            [24] 1388 	mov	r5,dph
      00252C 15 81            [12] 1389 	dec	sp
      00252E 15 81            [12] 1390 	dec	sp
      002530 D0 02            [24] 1391 	pop	ar2
      002532 D0 03            [24] 1392 	pop	ar3
      002534 ED               [12] 1393 	mov	a,r5
      002535 C4               [12] 1394 	swap	a
      002536 23               [12] 1395 	rl	a
      002537 54 E0            [12] 1396 	anl	a,#0xe0
      002539 CC               [12] 1397 	xch	a,r4
      00253A C4               [12] 1398 	swap	a
      00253B 23               [12] 1399 	rl	a
      00253C CC               [12] 1400 	xch	a,r4
      00253D 6C               [12] 1401 	xrl	a,r4
      00253E CC               [12] 1402 	xch	a,r4
      00253F 54 E0            [12] 1403 	anl	a,#0xe0
      002541 CC               [12] 1404 	xch	a,r4
      002542 6C               [12] 1405 	xrl	a,r4
      002543 FD               [12] 1406 	mov	r5,a
      002544 EC               [12] 1407 	mov	a,r4
      002545 24 04            [12] 1408 	add	a,#_u
      002547 FC               [12] 1409 	mov	r4,a
      002548 ED               [12] 1410 	mov	a,r5
      002549 34 84            [12] 1411 	addc	a,#(_u >> 8)
      00254B FD               [12] 1412 	mov	r5,a
      00254C 74 20            [12] 1413 	mov	a,#0x20
      00254E 2A               [12] 1414 	add	a,r2
      00254F FA               [12] 1415 	mov	r2,a
      002550 E4               [12] 1416 	clr	a
      002551 3B               [12] 1417 	addc	a,r3
      002552 FB               [12] 1418 	mov	r3,a
      002553 C0 05            [24] 1419 	push	ar5
      002555 C0 04            [24] 1420 	push	ar4
      002557 74 20            [12] 1421 	mov	a,#0x20
      002559 C0 E0            [24] 1422 	push	acc
      00255B E4               [12] 1423 	clr	a
      00255C C0 E0            [24] 1424 	push	acc
      00255E 8A 82            [24] 1425 	mov	dpl,r2
      002560 8B 83            [24] 1426 	mov	dph,r3
      002562 12 29 05         [24] 1427 	lcall	__modsint
      002565 AA 82            [24] 1428 	mov	r2,dpl
      002567 AB 83            [24] 1429 	mov	r3,dph
      002569 15 81            [12] 1430 	dec	sp
      00256B 15 81            [12] 1431 	dec	sp
      00256D D0 04            [24] 1432 	pop	ar4
      00256F D0 05            [24] 1433 	pop	ar5
      002571 EA               [12] 1434 	mov	a,r2
      002572 2C               [12] 1435 	add	a,r4
      002573 FC               [12] 1436 	mov	r4,a
      002574 EB               [12] 1437 	mov	a,r3
      002575 3D               [12] 1438 	addc	a,r5
      002576 FD               [12] 1439 	mov	r5,a
      002577 8C 82            [24] 1440 	mov	dpl,r4
      002579 8D 83            [24] 1441 	mov	dph,r5
      00257B E0               [24] 1442 	movx	a,@dptr
      00257C 60 0C            [24] 1443 	jz	00168$
                                   1444 ;	life.c:92: n++;
      00257E 90 8C 0C         [24] 1445 	mov	dptr,#_n
      002581 E0               [24] 1446 	movx	a,@dptr
      002582 24 01            [12] 1447 	add	a,#0x01
      002584 F0               [24] 1448 	movx	@dptr,a
      002585 A3               [24] 1449 	inc	dptr
      002586 E0               [24] 1450 	movx	a,@dptr
      002587 34 00            [12] 1451 	addc	a,#0x00
      002589 F0               [24] 1452 	movx	@dptr,a
      00258A                       1453 00168$:
                                   1454 ;	life.c:90: for (x1 = x - 1; x1 <= x + 1; x1++)
      00258A 90 8C 08         [24] 1455 	mov	dptr,#_x1
      00258D E0               [24] 1456 	movx	a,@dptr
      00258E 24 01            [12] 1457 	add	a,#0x01
      002590 F0               [24] 1458 	movx	@dptr,a
      002591 A3               [24] 1459 	inc	dptr
      002592 E0               [24] 1460 	movx	a,@dptr
      002593 34 00            [12] 1461 	addc	a,#0x00
      002595 F0               [24] 1462 	movx	@dptr,a
      002596 02 24 E0         [24] 1463 	ljmp	00167$
      002599                       1464 00171$:
                                   1465 ;	life.c:89: for (y1 = y - 1; y1 <= y + 1; y1++)
      002599 90 8C 0A         [24] 1466 	mov	dptr,#_y1
      00259C E0               [24] 1467 	movx	a,@dptr
      00259D 24 01            [12] 1468 	add	a,#0x01
      00259F F0               [24] 1469 	movx	@dptr,a
      0025A0 A3               [24] 1470 	inc	dptr
      0025A1 E0               [24] 1471 	movx	a,@dptr
      0025A2 34 00            [12] 1472 	addc	a,#0x00
      0025A4 F0               [24] 1473 	movx	@dptr,a
      0025A5 02 24 A2         [24] 1474 	ljmp	00170$
      0025A8                       1475 00136$:
                                   1476 ;	life.c:94: if (u[y][x]) n--;
      0025A8 EF               [12] 1477 	mov	a,r7
      0025A9 C4               [12] 1478 	swap	a
      0025AA 23               [12] 1479 	rl	a
      0025AB 54 E0            [12] 1480 	anl	a,#0xe0
      0025AD CE               [12] 1481 	xch	a,r6
      0025AE C4               [12] 1482 	swap	a
      0025AF 23               [12] 1483 	rl	a
      0025B0 CE               [12] 1484 	xch	a,r6
      0025B1 6E               [12] 1485 	xrl	a,r6
      0025B2 CE               [12] 1486 	xch	a,r6
      0025B3 54 E0            [12] 1487 	anl	a,#0xe0
      0025B5 CE               [12] 1488 	xch	a,r6
      0025B6 6E               [12] 1489 	xrl	a,r6
      0025B7 FF               [12] 1490 	mov	r7,a
      0025B8 EE               [12] 1491 	mov	a,r6
      0025B9 24 04            [12] 1492 	add	a,#_u
      0025BB FE               [12] 1493 	mov	r6,a
      0025BC EF               [12] 1494 	mov	a,r7
      0025BD 34 84            [12] 1495 	addc	a,#(_u >> 8)
      0025BF FF               [12] 1496 	mov	r7,a
      0025C0 90 8C 04         [24] 1497 	mov	dptr,#_x
      0025C3 E0               [24] 1498 	movx	a,@dptr
      0025C4 FC               [12] 1499 	mov	r4,a
      0025C5 A3               [24] 1500 	inc	dptr
      0025C6 E0               [24] 1501 	movx	a,@dptr
      0025C7 FD               [12] 1502 	mov	r5,a
      0025C8 EC               [12] 1503 	mov	a,r4
      0025C9 2E               [12] 1504 	add	a,r6
      0025CA FE               [12] 1505 	mov	r6,a
      0025CB ED               [12] 1506 	mov	a,r5
      0025CC 3F               [12] 1507 	addc	a,r7
      0025CD FF               [12] 1508 	mov	r7,a
      0025CE 8E 82            [24] 1509 	mov	dpl,r6
      0025D0 8F 83            [24] 1510 	mov	dph,r7
      0025D2 E0               [24] 1511 	movx	a,@dptr
      0025D3 60 14            [24] 1512 	jz	00138$
      0025D5 90 8C 0C         [24] 1513 	mov	dptr,#_n
      0025D8 E0               [24] 1514 	movx	a,@dptr
      0025D9 24 FF            [12] 1515 	add	a,#0xff
      0025DB FE               [12] 1516 	mov	r6,a
      0025DC A3               [24] 1517 	inc	dptr
      0025DD E0               [24] 1518 	movx	a,@dptr
      0025DE 34 FF            [12] 1519 	addc	a,#0xff
      0025E0 FF               [12] 1520 	mov	r7,a
      0025E1 90 8C 0C         [24] 1521 	mov	dptr,#_n
      0025E4 EE               [12] 1522 	mov	a,r6
      0025E5 F0               [24] 1523 	movx	@dptr,a
      0025E6 EF               [12] 1524 	mov	a,r7
      0025E7 A3               [24] 1525 	inc	dptr
      0025E8 F0               [24] 1526 	movx	@dptr,a
      0025E9                       1527 00138$:
                                   1528 ;	life.c:95: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      0025E9 90 8C 06         [24] 1529 	mov	dptr,#_y
      0025EC E0               [24] 1530 	movx	a,@dptr
      0025ED FE               [12] 1531 	mov	r6,a
      0025EE A3               [24] 1532 	inc	dptr
      0025EF E0               [24] 1533 	movx	a,@dptr
      0025F0 C4               [12] 1534 	swap	a
      0025F1 23               [12] 1535 	rl	a
      0025F2 54 E0            [12] 1536 	anl	a,#0xe0
      0025F4 CE               [12] 1537 	xch	a,r6
      0025F5 C4               [12] 1538 	swap	a
      0025F6 23               [12] 1539 	rl	a
      0025F7 CE               [12] 1540 	xch	a,r6
      0025F8 6E               [12] 1541 	xrl	a,r6
      0025F9 CE               [12] 1542 	xch	a,r6
      0025FA 54 E0            [12] 1543 	anl	a,#0xe0
      0025FC CE               [12] 1544 	xch	a,r6
      0025FD 6E               [12] 1545 	xrl	a,r6
      0025FE FF               [12] 1546 	mov	r7,a
      0025FF EE               [12] 1547 	mov	a,r6
      002600 24 04            [12] 1548 	add	a,#_nu
      002602 FC               [12] 1549 	mov	r4,a
      002603 EF               [12] 1550 	mov	a,r7
      002604 34 88            [12] 1551 	addc	a,#(_nu >> 8)
      002606 FD               [12] 1552 	mov	r5,a
      002607 90 8C 04         [24] 1553 	mov	dptr,#_x
      00260A E0               [24] 1554 	movx	a,@dptr
      00260B FA               [12] 1555 	mov	r2,a
      00260C A3               [24] 1556 	inc	dptr
      00260D E0               [24] 1557 	movx	a,@dptr
      00260E FB               [12] 1558 	mov	r3,a
      00260F EA               [12] 1559 	mov	a,r2
      002610 2C               [12] 1560 	add	a,r4
      002611 FC               [12] 1561 	mov	r4,a
      002612 EB               [12] 1562 	mov	a,r3
      002613 3D               [12] 1563 	addc	a,r5
      002614 FD               [12] 1564 	mov	r5,a
      002615 90 8C 0C         [24] 1565 	mov	dptr,#_n
      002618 E0               [24] 1566 	movx	a,@dptr
      002619 F8               [12] 1567 	mov	r0,a
      00261A A3               [24] 1568 	inc	dptr
      00261B E0               [24] 1569 	movx	a,@dptr
      00261C F9               [12] 1570 	mov	r1,a
      00261D B8 03 05         [24] 1571 	cjne	r0,#0x03,00393$
      002620 B9 00 02         [24] 1572 	cjne	r1,#0x00,00393$
      002623 80 1F            [24] 1573 	sjmp	00183$
      002625                       1574 00393$:
      002625 B8 02 18         [24] 1575 	cjne	r0,#0x02,00182$
      002628 B9 00 15         [24] 1576 	cjne	r1,#0x00,00182$
      00262B EE               [12] 1577 	mov	a,r6
      00262C 24 04            [12] 1578 	add	a,#_u
      00262E FE               [12] 1579 	mov	r6,a
      00262F EF               [12] 1580 	mov	a,r7
      002630 34 84            [12] 1581 	addc	a,#(_u >> 8)
      002632 FF               [12] 1582 	mov	r7,a
      002633 EA               [12] 1583 	mov	a,r2
      002634 2E               [12] 1584 	add	a,r6
      002635 FA               [12] 1585 	mov	r2,a
      002636 EB               [12] 1586 	mov	a,r3
      002637 3F               [12] 1587 	addc	a,r7
      002638 FB               [12] 1588 	mov	r3,a
      002639 8A 82            [24] 1589 	mov	dpl,r2
      00263B 8B 83            [24] 1590 	mov	dph,r3
      00263D E0               [24] 1591 	movx	a,@dptr
      00263E 70 04            [24] 1592 	jnz	00183$
      002640                       1593 00182$:
                                   1594 ;	assignBit
      002640 C2 00            [12] 1595 	clr	b0
      002642 80 02            [24] 1596 	sjmp	00184$
      002644                       1597 00183$:
                                   1598 ;	assignBit
      002644 D2 00            [12] 1599 	setb	b0
      002646                       1600 00184$:
      002646 A2 00            [12] 1601 	mov	c,b0
      002648 E4               [12] 1602 	clr	a
      002649 33               [12] 1603 	rlc	a
      00264A 8C 82            [24] 1604 	mov	dpl,r4
      00264C 8D 83            [24] 1605 	mov	dph,r5
      00264E F0               [24] 1606 	movx	@dptr,a
                                   1607 ;	life.c:87: for (x = 0; x < W; x++) {
      00264F 90 8C 04         [24] 1608 	mov	dptr,#_x
      002652 E0               [24] 1609 	movx	a,@dptr
      002653 24 01            [12] 1610 	add	a,#0x01
      002655 F0               [24] 1611 	movx	@dptr,a
      002656 A3               [24] 1612 	inc	dptr
      002657 E0               [24] 1613 	movx	a,@dptr
      002658 34 00            [12] 1614 	addc	a,#0x00
      00265A F0               [24] 1615 	movx	@dptr,a
      00265B 90 8C 04         [24] 1616 	mov	dptr,#_x
      00265E E0               [24] 1617 	movx	a,@dptr
      00265F FE               [12] 1618 	mov	r6,a
      002660 A3               [24] 1619 	inc	dptr
      002661 E0               [24] 1620 	movx	a,@dptr
      002662 FF               [12] 1621 	mov	r7,a
      002663 C3               [12] 1622 	clr	c
      002664 EE               [12] 1623 	mov	a,r6
      002665 94 20            [12] 1624 	subb	a,#0x20
      002667 EF               [12] 1625 	mov	a,r7
      002668 64 80            [12] 1626 	xrl	a,#0x80
      00266A 94 80            [12] 1627 	subb	a,#0x80
      00266C 50 03            [24] 1628 	jnc	00397$
      00266E 02 24 86         [24] 1629 	ljmp	00172$
      002671                       1630 00397$:
                                   1631 ;	life.c:86: for (y = 0; y < H; y++) {
      002671 90 8C 06         [24] 1632 	mov	dptr,#_y
      002674 E0               [24] 1633 	movx	a,@dptr
      002675 24 01            [12] 1634 	add	a,#0x01
      002677 F0               [24] 1635 	movx	@dptr,a
      002678 A3               [24] 1636 	inc	dptr
      002679 E0               [24] 1637 	movx	a,@dptr
      00267A 34 00            [12] 1638 	addc	a,#0x00
      00267C F0               [24] 1639 	movx	@dptr,a
      00267D 90 8C 06         [24] 1640 	mov	dptr,#_y
      002680 E0               [24] 1641 	movx	a,@dptr
      002681 FE               [12] 1642 	mov	r6,a
      002682 A3               [24] 1643 	inc	dptr
      002683 E0               [24] 1644 	movx	a,@dptr
      002684 FF               [12] 1645 	mov	r7,a
      002685 C3               [12] 1646 	clr	c
      002686 EE               [12] 1647 	mov	a,r6
      002687 94 20            [12] 1648 	subb	a,#0x20
      002689 EF               [12] 1649 	mov	a,r7
      00268A 64 80            [12] 1650 	xrl	a,#0x80
      00268C 94 80            [12] 1651 	subb	a,#0x80
      00268E 50 03            [24] 1652 	jnc	00398$
      002690 02 24 7F         [24] 1653 	ljmp	00174$
      002693                       1654 00398$:
                                   1655 ;	life.c:99: for (y = 0; y < H; y++)
      002693 90 8C 06         [24] 1656 	mov	dptr,#_y
      002696 E4               [12] 1657 	clr	a
      002697 F0               [24] 1658 	movx	@dptr,a
      002698 A3               [24] 1659 	inc	dptr
      002699 F0               [24] 1660 	movx	@dptr,a
      00269A                       1661 00178$:
                                   1662 ;	life.c:100: for (x = 0; x < W; x++) {
      00269A 90 8C 04         [24] 1663 	mov	dptr,#_x
      00269D E4               [12] 1664 	clr	a
      00269E F0               [24] 1665 	movx	@dptr,a
      00269F A3               [24] 1666 	inc	dptr
      0026A0 F0               [24] 1667 	movx	@dptr,a
      0026A1                       1668 00176$:
                                   1669 ;	life.c:101: if (pu[y][x] != nu[y][x]) cycle2 = 0;
      0026A1 90 8C 06         [24] 1670 	mov	dptr,#_y
      0026A4 E0               [24] 1671 	movx	a,@dptr
      0026A5 FE               [12] 1672 	mov	r6,a
      0026A6 A3               [24] 1673 	inc	dptr
      0026A7 E0               [24] 1674 	movx	a,@dptr
      0026A8 C4               [12] 1675 	swap	a
      0026A9 23               [12] 1676 	rl	a
      0026AA 54 E0            [12] 1677 	anl	a,#0xe0
      0026AC CE               [12] 1678 	xch	a,r6
      0026AD C4               [12] 1679 	swap	a
      0026AE 23               [12] 1680 	rl	a
      0026AF CE               [12] 1681 	xch	a,r6
      0026B0 6E               [12] 1682 	xrl	a,r6
      0026B1 CE               [12] 1683 	xch	a,r6
      0026B2 54 E0            [12] 1684 	anl	a,#0xe0
      0026B4 CE               [12] 1685 	xch	a,r6
      0026B5 6E               [12] 1686 	xrl	a,r6
      0026B6 FF               [12] 1687 	mov	r7,a
      0026B7 EE               [12] 1688 	mov	a,r6
      0026B8 24 04            [12] 1689 	add	a,#_pu
      0026BA FC               [12] 1690 	mov	r4,a
      0026BB EF               [12] 1691 	mov	a,r7
      0026BC 34 80            [12] 1692 	addc	a,#(_pu >> 8)
      0026BE FD               [12] 1693 	mov	r5,a
      0026BF 90 8C 04         [24] 1694 	mov	dptr,#_x
      0026C2 E0               [24] 1695 	movx	a,@dptr
      0026C3 FA               [12] 1696 	mov	r2,a
      0026C4 A3               [24] 1697 	inc	dptr
      0026C5 E0               [24] 1698 	movx	a,@dptr
      0026C6 FB               [12] 1699 	mov	r3,a
      0026C7 EA               [12] 1700 	mov	a,r2
      0026C8 2C               [12] 1701 	add	a,r4
      0026C9 F5 82            [12] 1702 	mov	dpl,a
      0026CB EB               [12] 1703 	mov	a,r3
      0026CC 3D               [12] 1704 	addc	a,r5
      0026CD F5 83            [12] 1705 	mov	dph,a
      0026CF EE               [12] 1706 	mov	a,r6
      0026D0 24 04            [12] 1707 	add	a,#_nu
      0026D2 FE               [12] 1708 	mov	r6,a
      0026D3 EF               [12] 1709 	mov	a,r7
      0026D4 34 88            [12] 1710 	addc	a,#(_nu >> 8)
      0026D6 FF               [12] 1711 	mov	r7,a
      0026D7 EA               [12] 1712 	mov	a,r2
      0026D8 2E               [12] 1713 	add	a,r6
      0026D9 FA               [12] 1714 	mov	r2,a
      0026DA EB               [12] 1715 	mov	a,r3
      0026DB 3F               [12] 1716 	addc	a,r7
      0026DC FB               [12] 1717 	mov	r3,a
      0026DD E0               [24] 1718 	movx	a,@dptr
      0026DE FF               [12] 1719 	mov	r7,a
      0026DF 8A 82            [24] 1720 	mov	dpl,r2
      0026E1 8B 83            [24] 1721 	mov	dph,r3
      0026E3 E0               [24] 1722 	movx	a,@dptr
      0026E4 FA               [12] 1723 	mov	r2,a
      0026E5 EF               [12] 1724 	mov	a,r7
      0026E6 B5 02 02         [24] 1725 	cjne	a,ar2,00399$
      0026E9 80 07            [24] 1726 	sjmp	00142$
      0026EB                       1727 00399$:
      0026EB 90 8C 1A         [24] 1728 	mov	dptr,#_cycle2
      0026EE E4               [12] 1729 	clr	a
      0026EF F0               [24] 1730 	movx	@dptr,a
      0026F0 A3               [24] 1731 	inc	dptr
      0026F1 F0               [24] 1732 	movx	@dptr,a
      0026F2                       1733 00142$:
                                   1734 ;	life.c:102: if (u[y][x] != nu[y][x]) fixed = 0;
      0026F2 90 8C 06         [24] 1735 	mov	dptr,#_y
      0026F5 E0               [24] 1736 	movx	a,@dptr
      0026F6 FE               [12] 1737 	mov	r6,a
      0026F7 A3               [24] 1738 	inc	dptr
      0026F8 E0               [24] 1739 	movx	a,@dptr
      0026F9 C4               [12] 1740 	swap	a
      0026FA 23               [12] 1741 	rl	a
      0026FB 54 E0            [12] 1742 	anl	a,#0xe0
      0026FD CE               [12] 1743 	xch	a,r6
      0026FE C4               [12] 1744 	swap	a
      0026FF 23               [12] 1745 	rl	a
      002700 CE               [12] 1746 	xch	a,r6
      002701 6E               [12] 1747 	xrl	a,r6
      002702 CE               [12] 1748 	xch	a,r6
      002703 54 E0            [12] 1749 	anl	a,#0xe0
      002705 CE               [12] 1750 	xch	a,r6
      002706 6E               [12] 1751 	xrl	a,r6
      002707 FF               [12] 1752 	mov	r7,a
      002708 EE               [12] 1753 	mov	a,r6
      002709 24 04            [12] 1754 	add	a,#_u
      00270B FC               [12] 1755 	mov	r4,a
      00270C EF               [12] 1756 	mov	a,r7
      00270D 34 84            [12] 1757 	addc	a,#(_u >> 8)
      00270F FD               [12] 1758 	mov	r5,a
      002710 90 8C 04         [24] 1759 	mov	dptr,#_x
      002713 E0               [24] 1760 	movx	a,@dptr
      002714 FA               [12] 1761 	mov	r2,a
      002715 A3               [24] 1762 	inc	dptr
      002716 E0               [24] 1763 	movx	a,@dptr
      002717 FB               [12] 1764 	mov	r3,a
      002718 EA               [12] 1765 	mov	a,r2
      002719 2C               [12] 1766 	add	a,r4
      00271A F5 82            [12] 1767 	mov	dpl,a
      00271C EB               [12] 1768 	mov	a,r3
      00271D 3D               [12] 1769 	addc	a,r5
      00271E F5 83            [12] 1770 	mov	dph,a
      002720 EE               [12] 1771 	mov	a,r6
      002721 24 04            [12] 1772 	add	a,#_nu
      002723 FE               [12] 1773 	mov	r6,a
      002724 EF               [12] 1774 	mov	a,r7
      002725 34 88            [12] 1775 	addc	a,#(_nu >> 8)
      002727 FF               [12] 1776 	mov	r7,a
      002728 EA               [12] 1777 	mov	a,r2
      002729 2E               [12] 1778 	add	a,r6
      00272A FA               [12] 1779 	mov	r2,a
      00272B EB               [12] 1780 	mov	a,r3
      00272C 3F               [12] 1781 	addc	a,r7
      00272D FB               [12] 1782 	mov	r3,a
      00272E E0               [24] 1783 	movx	a,@dptr
      00272F FF               [12] 1784 	mov	r7,a
      002730 8A 82            [24] 1785 	mov	dpl,r2
      002732 8B 83            [24] 1786 	mov	dph,r3
      002734 E0               [24] 1787 	movx	a,@dptr
      002735 FA               [12] 1788 	mov	r2,a
      002736 EF               [12] 1789 	mov	a,r7
      002737 B5 02 02         [24] 1790 	cjne	a,ar2,00400$
      00273A 80 07            [24] 1791 	sjmp	00144$
      00273C                       1792 00400$:
      00273C 90 8C 18         [24] 1793 	mov	dptr,#_fixed
      00273F E4               [12] 1794 	clr	a
      002740 F0               [24] 1795 	movx	@dptr,a
      002741 A3               [24] 1796 	inc	dptr
      002742 F0               [24] 1797 	movx	@dptr,a
      002743                       1798 00144$:
                                   1799 ;	life.c:103: pu[y][x] = u[y][x];
      002743 90 8C 06         [24] 1800 	mov	dptr,#_y
      002746 E0               [24] 1801 	movx	a,@dptr
      002747 FE               [12] 1802 	mov	r6,a
      002748 A3               [24] 1803 	inc	dptr
      002749 E0               [24] 1804 	movx	a,@dptr
      00274A C4               [12] 1805 	swap	a
      00274B 23               [12] 1806 	rl	a
      00274C 54 E0            [12] 1807 	anl	a,#0xe0
      00274E CE               [12] 1808 	xch	a,r6
      00274F C4               [12] 1809 	swap	a
      002750 23               [12] 1810 	rl	a
      002751 CE               [12] 1811 	xch	a,r6
      002752 6E               [12] 1812 	xrl	a,r6
      002753 CE               [12] 1813 	xch	a,r6
      002754 54 E0            [12] 1814 	anl	a,#0xe0
      002756 CE               [12] 1815 	xch	a,r6
      002757 6E               [12] 1816 	xrl	a,r6
      002758 FF               [12] 1817 	mov	r7,a
      002759 EE               [12] 1818 	mov	a,r6
      00275A 24 04            [12] 1819 	add	a,#_pu
      00275C FC               [12] 1820 	mov	r4,a
      00275D EF               [12] 1821 	mov	a,r7
      00275E 34 80            [12] 1822 	addc	a,#(_pu >> 8)
      002760 FD               [12] 1823 	mov	r5,a
      002761 90 8C 04         [24] 1824 	mov	dptr,#_x
      002764 E0               [24] 1825 	movx	a,@dptr
      002765 FA               [12] 1826 	mov	r2,a
      002766 A3               [24] 1827 	inc	dptr
      002767 E0               [24] 1828 	movx	a,@dptr
      002768 FB               [12] 1829 	mov	r3,a
      002769 EA               [12] 1830 	mov	a,r2
      00276A 2C               [12] 1831 	add	a,r4
      00276B FC               [12] 1832 	mov	r4,a
      00276C EB               [12] 1833 	mov	a,r3
      00276D 3D               [12] 1834 	addc	a,r5
      00276E FD               [12] 1835 	mov	r5,a
      00276F EE               [12] 1836 	mov	a,r6
      002770 24 04            [12] 1837 	add	a,#_u
      002772 FE               [12] 1838 	mov	r6,a
      002773 EF               [12] 1839 	mov	a,r7
      002774 34 84            [12] 1840 	addc	a,#(_u >> 8)
      002776 FF               [12] 1841 	mov	r7,a
      002777 EA               [12] 1842 	mov	a,r2
      002778 2E               [12] 1843 	add	a,r6
      002779 F5 82            [12] 1844 	mov	dpl,a
      00277B EB               [12] 1845 	mov	a,r3
      00277C 3F               [12] 1846 	addc	a,r7
      00277D F5 83            [12] 1847 	mov	dph,a
      00277F E0               [24] 1848 	movx	a,@dptr
      002780 8C 82            [24] 1849 	mov	dpl,r4
      002782 8D 83            [24] 1850 	mov	dph,r5
      002784 F0               [24] 1851 	movx	@dptr,a
                                   1852 ;	life.c:104: u[y][x] = nu[y][x];
      002785 90 8C 06         [24] 1853 	mov	dptr,#_y
      002788 E0               [24] 1854 	movx	a,@dptr
      002789 FE               [12] 1855 	mov	r6,a
      00278A A3               [24] 1856 	inc	dptr
      00278B E0               [24] 1857 	movx	a,@dptr
      00278C C4               [12] 1858 	swap	a
      00278D 23               [12] 1859 	rl	a
      00278E 54 E0            [12] 1860 	anl	a,#0xe0
      002790 CE               [12] 1861 	xch	a,r6
      002791 C4               [12] 1862 	swap	a
      002792 23               [12] 1863 	rl	a
      002793 CE               [12] 1864 	xch	a,r6
      002794 6E               [12] 1865 	xrl	a,r6
      002795 CE               [12] 1866 	xch	a,r6
      002796 54 E0            [12] 1867 	anl	a,#0xe0
      002798 CE               [12] 1868 	xch	a,r6
      002799 6E               [12] 1869 	xrl	a,r6
      00279A FF               [12] 1870 	mov	r7,a
      00279B EE               [12] 1871 	mov	a,r6
      00279C 24 04            [12] 1872 	add	a,#_u
      00279E FC               [12] 1873 	mov	r4,a
      00279F EF               [12] 1874 	mov	a,r7
      0027A0 34 84            [12] 1875 	addc	a,#(_u >> 8)
      0027A2 FD               [12] 1876 	mov	r5,a
      0027A3 90 8C 04         [24] 1877 	mov	dptr,#_x
      0027A6 E0               [24] 1878 	movx	a,@dptr
      0027A7 FA               [12] 1879 	mov	r2,a
      0027A8 A3               [24] 1880 	inc	dptr
      0027A9 E0               [24] 1881 	movx	a,@dptr
      0027AA FB               [12] 1882 	mov	r3,a
      0027AB EA               [12] 1883 	mov	a,r2
      0027AC 2C               [12] 1884 	add	a,r4
      0027AD FC               [12] 1885 	mov	r4,a
      0027AE EB               [12] 1886 	mov	a,r3
      0027AF 3D               [12] 1887 	addc	a,r5
      0027B0 FD               [12] 1888 	mov	r5,a
      0027B1 EE               [12] 1889 	mov	a,r6
      0027B2 24 04            [12] 1890 	add	a,#_nu
      0027B4 FE               [12] 1891 	mov	r6,a
      0027B5 EF               [12] 1892 	mov	a,r7
      0027B6 34 88            [12] 1893 	addc	a,#(_nu >> 8)
      0027B8 FF               [12] 1894 	mov	r7,a
      0027B9 EA               [12] 1895 	mov	a,r2
      0027BA 2E               [12] 1896 	add	a,r6
      0027BB F5 82            [12] 1897 	mov	dpl,a
      0027BD EB               [12] 1898 	mov	a,r3
      0027BE 3F               [12] 1899 	addc	a,r7
      0027BF F5 83            [12] 1900 	mov	dph,a
      0027C1 E0               [24] 1901 	movx	a,@dptr
      0027C2 8C 82            [24] 1902 	mov	dpl,r4
      0027C4 8D 83            [24] 1903 	mov	dph,r5
      0027C6 F0               [24] 1904 	movx	@dptr,a
                                   1905 ;	life.c:100: for (x = 0; x < W; x++) {
      0027C7 90 8C 04         [24] 1906 	mov	dptr,#_x
      0027CA E0               [24] 1907 	movx	a,@dptr
      0027CB 24 01            [12] 1908 	add	a,#0x01
      0027CD F0               [24] 1909 	movx	@dptr,a
      0027CE A3               [24] 1910 	inc	dptr
      0027CF E0               [24] 1911 	movx	a,@dptr
      0027D0 34 00            [12] 1912 	addc	a,#0x00
      0027D2 F0               [24] 1913 	movx	@dptr,a
      0027D3 90 8C 04         [24] 1914 	mov	dptr,#_x
      0027D6 E0               [24] 1915 	movx	a,@dptr
      0027D7 FE               [12] 1916 	mov	r6,a
      0027D8 A3               [24] 1917 	inc	dptr
      0027D9 E0               [24] 1918 	movx	a,@dptr
      0027DA FF               [12] 1919 	mov	r7,a
      0027DB C3               [12] 1920 	clr	c
      0027DC EE               [12] 1921 	mov	a,r6
      0027DD 94 20            [12] 1922 	subb	a,#0x20
      0027DF EF               [12] 1923 	mov	a,r7
      0027E0 64 80            [12] 1924 	xrl	a,#0x80
      0027E2 94 80            [12] 1925 	subb	a,#0x80
      0027E4 50 03            [24] 1926 	jnc	00401$
      0027E6 02 26 A1         [24] 1927 	ljmp	00176$
      0027E9                       1928 00401$:
                                   1929 ;	life.c:99: for (y = 0; y < H; y++)
      0027E9 90 8C 06         [24] 1930 	mov	dptr,#_y
      0027EC E0               [24] 1931 	movx	a,@dptr
      0027ED 24 01            [12] 1932 	add	a,#0x01
      0027EF F0               [24] 1933 	movx	@dptr,a
      0027F0 A3               [24] 1934 	inc	dptr
      0027F1 E0               [24] 1935 	movx	a,@dptr
      0027F2 34 00            [12] 1936 	addc	a,#0x00
      0027F4 F0               [24] 1937 	movx	@dptr,a
      0027F5 90 8C 06         [24] 1938 	mov	dptr,#_y
      0027F8 E0               [24] 1939 	movx	a,@dptr
      0027F9 FE               [12] 1940 	mov	r6,a
      0027FA A3               [24] 1941 	inc	dptr
      0027FB E0               [24] 1942 	movx	a,@dptr
      0027FC FF               [12] 1943 	mov	r7,a
      0027FD C3               [12] 1944 	clr	c
      0027FE EE               [12] 1945 	mov	a,r6
      0027FF 94 20            [12] 1946 	subb	a,#0x20
      002801 EF               [12] 1947 	mov	a,r7
      002802 64 80            [12] 1948 	xrl	a,#0x80
      002804 94 80            [12] 1949 	subb	a,#0x80
      002806 50 03            [24] 1950 	jnc	00402$
      002808 02 26 9A         [24] 1951 	ljmp	00178$
      00280B                       1952 00402$:
                                   1953 ;	life.c:138: if (fixed || cycle2) {
      00280B 90 8C 18         [24] 1954 	mov	dptr,#_fixed
      00280E E0               [24] 1955 	movx	a,@dptr
      00280F F5 F0            [12] 1956 	mov	b,a
      002811 A3               [24] 1957 	inc	dptr
      002812 E0               [24] 1958 	movx	a,@dptr
      002813 45 F0            [12] 1959 	orl	a,b
      002815 70 0F            [24] 1960 	jnz	00105$
      002817 90 8C 1A         [24] 1961 	mov	dptr,#_cycle2
      00281A E0               [24] 1962 	movx	a,@dptr
      00281B F5 F0            [12] 1963 	mov	b,a
      00281D A3               [24] 1964 	inc	dptr
      00281E E0               [24] 1965 	movx	a,@dptr
      00281F 45 F0            [12] 1966 	orl	a,b
      002821 70 03            [24] 1967 	jnz	00404$
      002823 02 22 57         [24] 1968 	ljmp	00109$
      002826                       1969 00404$:
      002826                       1970 00105$:
                                   1971 ;	life.c:139: printf("DONE\n\r");
      002826 74 CF            [12] 1972 	mov	a,#___str_7
      002828 C0 E0            [24] 1973 	push	acc
      00282A 74 3C            [12] 1974 	mov	a,#(___str_7 >> 8)
      00282C C0 E0            [24] 1975 	push	acc
      00282E 74 80            [12] 1976 	mov	a,#0x80
      002830 C0 E0            [24] 1977 	push	acc
      002832 12 28 CC         [24] 1978 	lcall	_printf
      002835 15 81            [12] 1979 	dec	sp
      002837 15 81            [12] 1980 	dec	sp
      002839 15 81            [12] 1981 	dec	sp
                                   1982 ;	life.c:140: (void)getchar();
      00283B 12 20 7A         [24] 1983 	lcall	_getchar
                                   1984 ;	life.c:141: break;
      00283E                       1985 00111$:
                                   1986 ;	life.c:144: if (i1) {
      00283E 90 80 02         [24] 1987 	mov	dptr,#_i1
      002841 E0               [24] 1988 	movx	a,@dptr
      002842 F5 F0            [12] 1989 	mov	b,a
      002844 A3               [24] 1990 	inc	dptr
      002845 E0               [24] 1991 	movx	a,@dptr
      002846 45 F0            [12] 1992 	orl	a,b
      002848 70 03            [24] 1993 	jnz	00405$
      00284A 02 20 C5         [24] 1994 	ljmp	00114$
      00284D                       1995 00405$:
                                   1996 ;	life.c:145: printf("BREAK\n\r");
      00284D 74 D6            [12] 1997 	mov	a,#___str_8
      00284F C0 E0            [24] 1998 	push	acc
      002851 74 3C            [12] 1999 	mov	a,#(___str_8 >> 8)
      002853 C0 E0            [24] 2000 	push	acc
      002855 74 80            [12] 2001 	mov	a,#0x80
      002857 C0 E0            [24] 2002 	push	acc
      002859 12 28 CC         [24] 2003 	lcall	_printf
      00285C 15 81            [12] 2004 	dec	sp
      00285E 15 81            [12] 2005 	dec	sp
      002860 15 81            [12] 2006 	dec	sp
                                   2007 ;	life.c:146: (void)getchar();
      002862 12 20 7A         [24] 2008 	lcall	_getchar
      002865 02 20 C5         [24] 2009 	ljmp	00114$
      002868                       2010 00116$:
                                   2011 ;	life.c:150: EA = 0;
                                   2012 ;	assignBit
      002868 C2 AF            [12] 2013 	clr	_EA
                                   2014 ;	life.c:152: printf("TERM\n\r");
      00286A 74 DE            [12] 2015 	mov	a,#___str_9
      00286C C0 E0            [24] 2016 	push	acc
      00286E 74 3C            [12] 2017 	mov	a,#(___str_9 >> 8)
      002870 C0 E0            [24] 2018 	push	acc
      002872 74 80            [12] 2019 	mov	a,#0x80
      002874 C0 E0            [24] 2020 	push	acc
      002876 12 28 CC         [24] 2021 	lcall	_printf
      002879 15 81            [12] 2022 	dec	sp
      00287B 15 81            [12] 2023 	dec	sp
      00287D 15 81            [12] 2024 	dec	sp
                                   2025 ;	life.c:153: (void)getchar();
      00287F 12 20 7A         [24] 2026 	lcall	_getchar
                                   2027 ;	life.c:157: __endasm;
      002882 02 00 00         [24] 2028 	ljmp	0
                                   2029 ;	life.c:158: }
      002885 22               [24] 2030 	ret
                                   2031 	.area CSEG    (CODE)
                                   2032 	.area CONST   (CODE)
                                   2033 	.area CONST   (CODE)
      003C9D                       2034 ___str_0:
      003C9D 25 30 34 78           2035 	.ascii "%04x"
      003CA1 00                    2036 	.db 0x00
                                   2037 	.area CSEG    (CODE)
                                   2038 	.area CONST   (CODE)
      003CA2                       2039 ___str_1:
      003CA2 1B                    2040 	.db 0x1b
      003CA3 5B 32 4A              2041 	.ascii "[2J"
      003CA6 1B                    2042 	.db 0x1b
      003CA7 5B 6D                 2043 	.ascii "[m"
      003CA9 00                    2044 	.db 0x00
                                   2045 	.area CSEG    (CODE)
                                   2046 	.area CONST   (CODE)
      003CAA                       2047 ___str_2:
      003CAA 0D                    2048 	.db 0x0d
      003CAB 0A                    2049 	.db 0x0a
      003CAC 00                    2050 	.db 0x00
                                   2051 	.area CSEG    (CODE)
                                   2052 	.area CONST   (CODE)
      003CAD                       2053 ___str_3:
      003CAD 1B                    2054 	.db 0x1b
      003CAE 5B 30 31 6D 5B 5D     2055 	.ascii "[01m[]"
      003CB4 1B                    2056 	.db 0x1b
      003CB5 5B 6D                 2057 	.ascii "[m"
      003CB7 00                    2058 	.db 0x00
                                   2059 	.area CSEG    (CODE)
                                   2060 	.area CONST   (CODE)
      003CB8                       2061 ___str_4:
      003CB8 2D 2D                 2062 	.ascii "--"
      003CBA 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                                   2065 	.area CONST   (CODE)
      003CBB                       2066 ___str_5:
      003CBB 1B                    2067 	.db 0x1b
      003CBC 5B 32 4A              2068 	.ascii "[2J"
      003CBF 1B                    2069 	.db 0x1b
      003CC0 5B 6D 49 4E 49 54     2070 	.ascii "[mINIT"
      003CC6 0A                    2071 	.db 0x0a
      003CC7 0D                    2072 	.db 0x0d
      003CC8 00                    2073 	.db 0x00
                                   2074 	.area CSEG    (CODE)
                                   2075 	.area CONST   (CODE)
      003CC9                       2076 ___str_6:
      003CC9 52 44 59              2077 	.ascii "RDY"
      003CCC 0A                    2078 	.db 0x0a
      003CCD 0D                    2079 	.db 0x0d
      003CCE 00                    2080 	.db 0x00
                                   2081 	.area CSEG    (CODE)
                                   2082 	.area CONST   (CODE)
      003CCF                       2083 ___str_7:
      003CCF 44 4F 4E 45           2084 	.ascii "DONE"
      003CD3 0A                    2085 	.db 0x0a
      003CD4 0D                    2086 	.db 0x0d
      003CD5 00                    2087 	.db 0x00
                                   2088 	.area CSEG    (CODE)
                                   2089 	.area CONST   (CODE)
      003CD6                       2090 ___str_8:
      003CD6 42 52 45 41 4B        2091 	.ascii "BREAK"
      003CDB 0A                    2092 	.db 0x0a
      003CDC 0D                    2093 	.db 0x0d
      003CDD 00                    2094 	.db 0x00
                                   2095 	.area CSEG    (CODE)
                                   2096 	.area CONST   (CODE)
      003CDE                       2097 ___str_9:
      003CDE 54 45 52 4D           2098 	.ascii "TERM"
      003CE2 0A                    2099 	.db 0x0a
      003CE3 0D                    2100 	.db 0x0d
      003CE4 00                    2101 	.db 0x00
                                   2102 	.area CSEG    (CODE)
                                   2103 	.area XINIT   (CODE)
                                   2104 	.area CABS    (ABS,CODE)
