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
                                    531 ;	life.c:116: void main(void) {
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
                                    544 ;	life.c:117: i0 = i1 = 0;
      0020AE 90 80 02         [24]  545 	mov	dptr,#_i1
      0020B1 E4               [12]  546 	clr	a
      0020B2 F0               [24]  547 	movx	@dptr,a
      0020B3 A3               [24]  548 	inc	dptr
      0020B4 F0               [24]  549 	movx	@dptr,a
      0020B5 90 80 00         [24]  550 	mov	dptr,#_i0
      0020B8 F0               [24]  551 	movx	@dptr,a
      0020B9 A3               [24]  552 	inc	dptr
      0020BA F0               [24]  553 	movx	@dptr,a
                                    554 ;	life.c:119: IT0 = 1;
                                    555 ;	assignBit
      0020BB D2 88            [12]  556 	setb	_IT0
                                    557 ;	life.c:120: IT1 = 1;
                                    558 ;	assignBit
      0020BD D2 8A            [12]  559 	setb	_IT1
                                    560 ;	life.c:121: EX0 = 1;
                                    561 ;	assignBit
      0020BF D2 A8            [12]  562 	setb	_EX0
                                    563 ;	life.c:122: EX1 = 1;
                                    564 ;	assignBit
      0020C1 D2 AA            [12]  565 	setb	_EX1
                                    566 ;	life.c:123: EA = 1;
                                    567 ;	assignBit
      0020C3 D2 AF            [12]  568 	setb	_EA
                                    569 ;	life.c:125: while (!i0) {
      0020C5                        570 00112$:
      0020C5 90 80 00         [24]  571 	mov	dptr,#_i0
      0020C8 E0               [24]  572 	movx	a,@dptr
      0020C9 F5 F0            [12]  573 	mov	b,a
      0020CB A3               [24]  574 	inc	dptr
      0020CC E0               [24]  575 	movx	a,@dptr
      0020CD 45 F0            [12]  576 	orl	a,b
      0020CF 60 03            [24]  577 	jz	00368$
      0020D1 02 28 1E         [24]  578 	ljmp	00114$
      0020D4                        579 00368$:
                                    580 ;	life.c:126: printf("\033[2J\033[mINIT\n\r");
      0020D4 74 71            [12]  581 	mov	a,#___str_5
      0020D6 C0 E0            [24]  582 	push	acc
      0020D8 74 3C            [12]  583 	mov	a,#(___str_5 >> 8)
      0020DA C0 E0            [24]  584 	push	acc
      0020DC 74 80            [12]  585 	mov	a,#0x80
      0020DE C0 E0            [24]  586 	push	acc
      0020E0 12 28 82         [24]  587 	lcall	_printf
      0020E3 15 81            [12]  588 	dec	sp
      0020E5 15 81            [12]  589 	dec	sp
      0020E7 15 81            [12]  590 	dec	sp
                                    591 ;	life.c:127: for (y = 0; y < H; y++)
      0020E9 90 8C 06         [24]  592 	mov	dptr,#_y
      0020EC E4               [12]  593 	clr	a
      0020ED F0               [24]  594 	movx	@dptr,a
      0020EE A3               [24]  595 	inc	dptr
      0020EF F0               [24]  596 	movx	@dptr,a
      0020F0                        597 00150$:
                                    598 ;	life.c:128: for (x = 0; x < W; x++) {
      0020F0 90 8C 04         [24]  599 	mov	dptr,#_x
      0020F3 E4               [12]  600 	clr	a
      0020F4 F0               [24]  601 	movx	@dptr,a
      0020F5 A3               [24]  602 	inc	dptr
      0020F6 F0               [24]  603 	movx	@dptr,a
      0020F7                        604 00148$:
                                    605 ;	life.c:129: c = getchar();
      0020F7 12 20 7A         [24]  606 	lcall	_getchar
      0020FA AE 82            [24]  607 	mov	r6,dpl
      0020FC AF 83            [24]  608 	mov	r7,dph
      0020FE 90 8C 1C         [24]  609 	mov	dptr,#_c
      002101 EE               [12]  610 	mov	a,r6
      002102 F0               [24]  611 	movx	@dptr,a
      002103 EF               [12]  612 	mov	a,r7
      002104 A3               [24]  613 	inc	dptr
      002105 F0               [24]  614 	movx	@dptr,a
                                    615 ;	life.c:130: u[y][x] = c & 1;
      002106 90 8C 06         [24]  616 	mov	dptr,#_y
      002109 E0               [24]  617 	movx	a,@dptr
      00210A FC               [12]  618 	mov	r4,a
      00210B A3               [24]  619 	inc	dptr
      00210C E0               [24]  620 	movx	a,@dptr
      00210D C4               [12]  621 	swap	a
      00210E 23               [12]  622 	rl	a
      00210F 54 E0            [12]  623 	anl	a,#0xe0
      002111 CC               [12]  624 	xch	a,r4
      002112 C4               [12]  625 	swap	a
      002113 23               [12]  626 	rl	a
      002114 CC               [12]  627 	xch	a,r4
      002115 6C               [12]  628 	xrl	a,r4
      002116 CC               [12]  629 	xch	a,r4
      002117 54 E0            [12]  630 	anl	a,#0xe0
      002119 CC               [12]  631 	xch	a,r4
      00211A 6C               [12]  632 	xrl	a,r4
      00211B FD               [12]  633 	mov	r5,a
      00211C EC               [12]  634 	mov	a,r4
      00211D 24 04            [12]  635 	add	a,#_u
      00211F FC               [12]  636 	mov	r4,a
      002120 ED               [12]  637 	mov	a,r5
      002121 34 84            [12]  638 	addc	a,#(_u >> 8)
      002123 FD               [12]  639 	mov	r5,a
      002124 90 8C 04         [24]  640 	mov	dptr,#_x
      002127 E0               [24]  641 	movx	a,@dptr
      002128 FA               [12]  642 	mov	r2,a
      002129 A3               [24]  643 	inc	dptr
      00212A E0               [24]  644 	movx	a,@dptr
      00212B FB               [12]  645 	mov	r3,a
      00212C EA               [12]  646 	mov	a,r2
      00212D 2C               [12]  647 	add	a,r4
      00212E F5 82            [12]  648 	mov	dpl,a
      002130 EB               [12]  649 	mov	a,r3
      002131 3D               [12]  650 	addc	a,r5
      002132 F5 83            [12]  651 	mov	dph,a
      002134 53 06 01         [24]  652 	anl	ar6,#0x01
      002137 EE               [12]  653 	mov	a,r6
      002138 F0               [24]  654 	movx	@dptr,a
                                    655 ;	life.c:128: for (x = 0; x < W; x++) {
      002139 90 8C 04         [24]  656 	mov	dptr,#_x
      00213C E0               [24]  657 	movx	a,@dptr
      00213D 24 01            [12]  658 	add	a,#0x01
      00213F F0               [24]  659 	movx	@dptr,a
      002140 A3               [24]  660 	inc	dptr
      002141 E0               [24]  661 	movx	a,@dptr
      002142 34 00            [12]  662 	addc	a,#0x00
      002144 F0               [24]  663 	movx	@dptr,a
      002145 90 8C 04         [24]  664 	mov	dptr,#_x
      002148 E0               [24]  665 	movx	a,@dptr
      002149 FE               [12]  666 	mov	r6,a
      00214A A3               [24]  667 	inc	dptr
      00214B E0               [24]  668 	movx	a,@dptr
      00214C FF               [12]  669 	mov	r7,a
      00214D C3               [12]  670 	clr	c
      00214E EE               [12]  671 	mov	a,r6
      00214F 94 20            [12]  672 	subb	a,#0x20
      002151 EF               [12]  673 	mov	a,r7
      002152 64 80            [12]  674 	xrl	a,#0x80
      002154 94 80            [12]  675 	subb	a,#0x80
      002156 40 9F            [24]  676 	jc	00148$
                                    677 ;	life.c:127: for (y = 0; y < H; y++)
      002158 90 8C 06         [24]  678 	mov	dptr,#_y
      00215B E0               [24]  679 	movx	a,@dptr
      00215C 24 01            [12]  680 	add	a,#0x01
      00215E F0               [24]  681 	movx	@dptr,a
      00215F A3               [24]  682 	inc	dptr
      002160 E0               [24]  683 	movx	a,@dptr
      002161 34 00            [12]  684 	addc	a,#0x00
      002163 F0               [24]  685 	movx	@dptr,a
      002164 90 8C 06         [24]  686 	mov	dptr,#_y
      002167 E0               [24]  687 	movx	a,@dptr
      002168 FE               [12]  688 	mov	r6,a
      002169 A3               [24]  689 	inc	dptr
      00216A E0               [24]  690 	movx	a,@dptr
      00216B FF               [12]  691 	mov	r7,a
      00216C C3               [12]  692 	clr	c
      00216D EE               [12]  693 	mov	a,r6
      00216E 94 20            [12]  694 	subb	a,#0x20
      002170 EF               [12]  695 	mov	a,r7
      002171 64 80            [12]  696 	xrl	a,#0x80
      002173 94 80            [12]  697 	subb	a,#0x80
      002175 50 03            [24]  698 	jnc	00370$
      002177 02 20 F0         [24]  699 	ljmp	00150$
      00217A                        700 00370$:
                                    701 ;	life.c:132: printf("RDY\n\r");
      00217A 74 7F            [12]  702 	mov	a,#___str_6
      00217C C0 E0            [24]  703 	push	acc
      00217E 74 3C            [12]  704 	mov	a,#(___str_6 >> 8)
      002180 C0 E0            [24]  705 	push	acc
      002182 74 80            [12]  706 	mov	a,#0x80
      002184 C0 E0            [24]  707 	push	acc
      002186 12 28 82         [24]  708 	lcall	_printf
      002189 15 81            [12]  709 	dec	sp
      00218B 15 81            [12]  710 	dec	sp
      00218D 15 81            [12]  711 	dec	sp
                                    712 ;	life.c:133: (void)getchar();
      00218F 12 20 7A         [24]  713 	lcall	_getchar
                                    714 ;	life.c:42: for (j = 0; j < 4; j++)
      002192 90 8C 16         [24]  715 	mov	dptr,#_j
      002195 E4               [12]  716 	clr	a
      002196 F0               [24]  717 	movx	@dptr,a
      002197 A3               [24]  718 	inc	dptr
      002198 F0               [24]  719 	movx	@dptr,a
      002199                        720 00152$:
                                    721 ;	life.c:43: generation[j] = 0;
      002199 90 8C 16         [24]  722 	mov	dptr,#_j
      00219C E0               [24]  723 	movx	a,@dptr
      00219D FE               [12]  724 	mov	r6,a
      00219E A3               [24]  725 	inc	dptr
      00219F E0               [24]  726 	movx	a,@dptr
      0021A0 FF               [12]  727 	mov	r7,a
      0021A1 EE               [12]  728 	mov	a,r6
      0021A2 2E               [12]  729 	add	a,r6
      0021A3 FE               [12]  730 	mov	r6,a
      0021A4 EF               [12]  731 	mov	a,r7
      0021A5 33               [12]  732 	rlc	a
      0021A6 FF               [12]  733 	mov	r7,a
      0021A7 EE               [12]  734 	mov	a,r6
      0021A8 24 0E            [12]  735 	add	a,#_generation
      0021AA F5 82            [12]  736 	mov	dpl,a
      0021AC EF               [12]  737 	mov	a,r7
      0021AD 34 8C            [12]  738 	addc	a,#(_generation >> 8)
      0021AF F5 83            [12]  739 	mov	dph,a
      0021B1 E4               [12]  740 	clr	a
      0021B2 F0               [24]  741 	movx	@dptr,a
      0021B3 A3               [24]  742 	inc	dptr
      0021B4 F0               [24]  743 	movx	@dptr,a
                                    744 ;	life.c:42: for (j = 0; j < 4; j++)
      0021B5 90 8C 16         [24]  745 	mov	dptr,#_j
      0021B8 E0               [24]  746 	movx	a,@dptr
      0021B9 24 01            [12]  747 	add	a,#0x01
      0021BB F0               [24]  748 	movx	@dptr,a
      0021BC A3               [24]  749 	inc	dptr
      0021BD E0               [24]  750 	movx	a,@dptr
      0021BE 34 00            [12]  751 	addc	a,#0x00
      0021C0 F0               [24]  752 	movx	@dptr,a
      0021C1 90 8C 16         [24]  753 	mov	dptr,#_j
      0021C4 E0               [24]  754 	movx	a,@dptr
      0021C5 FE               [12]  755 	mov	r6,a
      0021C6 A3               [24]  756 	inc	dptr
      0021C7 E0               [24]  757 	movx	a,@dptr
      0021C8 FF               [12]  758 	mov	r7,a
      0021C9 C3               [12]  759 	clr	c
      0021CA EE               [12]  760 	mov	a,r6
      0021CB 94 04            [12]  761 	subb	a,#0x04
      0021CD EF               [12]  762 	mov	a,r7
      0021CE 64 80            [12]  763 	xrl	a,#0x80
      0021D0 94 80            [12]  764 	subb	a,#0x80
      0021D2 40 C5            [24]  765 	jc	00152$
                                    766 ;	life.c:137: i1 = 0;
      0021D4 90 80 02         [24]  767 	mov	dptr,#_i1
      0021D7 E4               [12]  768 	clr	a
      0021D8 F0               [24]  769 	movx	@dptr,a
      0021D9 A3               [24]  770 	inc	dptr
      0021DA F0               [24]  771 	movx	@dptr,a
                                    772 ;	life.c:138: while (!i0 && !i1) {
      0021DB                        773 00107$:
      0021DB 90 80 00         [24]  774 	mov	dptr,#_i0
      0021DE E0               [24]  775 	movx	a,@dptr
      0021DF F5 F0            [12]  776 	mov	b,a
      0021E1 A3               [24]  777 	inc	dptr
      0021E2 E0               [24]  778 	movx	a,@dptr
      0021E3 45 F0            [12]  779 	orl	a,b
      0021E5 60 03            [24]  780 	jz	00372$
      0021E7 02 27 F4         [24]  781 	ljmp	00109$
      0021EA                        782 00372$:
      0021EA 90 80 02         [24]  783 	mov	dptr,#_i1
      0021ED E0               [24]  784 	movx	a,@dptr
      0021EE F5 F0            [12]  785 	mov	b,a
      0021F0 A3               [24]  786 	inc	dptr
      0021F1 E0               [24]  787 	movx	a,@dptr
      0021F2 45 F0            [12]  788 	orl	a,b
      0021F4 60 03            [24]  789 	jz	00373$
      0021F6 02 27 F4         [24]  790 	ljmp	00109$
      0021F9                        791 00373$:
                                    792 ;	life.c:67: printf("\033[2J\033[m");
      0021F9 74 58            [12]  793 	mov	a,#___str_1
      0021FB C0 E0            [24]  794 	push	acc
      0021FD 74 3C            [12]  795 	mov	a,#(___str_1 >> 8)
      0021FF C0 E0            [24]  796 	push	acc
      002201 74 80            [12]  797 	mov	a,#0x80
      002203 C0 E0            [24]  798 	push	acc
      002205 12 28 82         [24]  799 	lcall	_printf
      002208 15 81            [12]  800 	dec	sp
      00220A 15 81            [12]  801 	dec	sp
      00220C 15 81            [12]  802 	dec	sp
                                    803 ;	life.c:58: for (j = 0; j < 4; j++) {
      00220E 90 8C 16         [24]  804 	mov	dptr,#_j
      002211 E4               [12]  805 	clr	a
      002212 F0               [24]  806 	movx	@dptr,a
      002213 A3               [24]  807 	inc	dptr
      002214 F0               [24]  808 	movx	@dptr,a
      002215                        809 00154$:
                                    810 ;	life.c:59: printf("%04x", generation[3 - j]);
      002215 90 8C 16         [24]  811 	mov	dptr,#_j
      002218 E0               [24]  812 	movx	a,@dptr
      002219 FE               [12]  813 	mov	r6,a
      00221A A3               [24]  814 	inc	dptr
      00221B E0               [24]  815 	movx	a,@dptr
      00221C 74 03            [12]  816 	mov	a,#0x03
      00221E C3               [12]  817 	clr	c
      00221F 9E               [12]  818 	subb	a,r6
      002220 FE               [12]  819 	mov	r6,a
      002221 C2 D5            [12]  820 	clr	F0
      002223 75 F0 02         [24]  821 	mov	b,#0x02
      002226 EE               [12]  822 	mov	a,r6
      002227 30 E7 04         [24]  823 	jnb	acc.7,00374$
      00222A B2 D5            [12]  824 	cpl	F0
      00222C F4               [12]  825 	cpl	a
      00222D 04               [12]  826 	inc	a
      00222E                        827 00374$:
      00222E A4               [48]  828 	mul	ab
      00222F 30 D5 0A         [24]  829 	jnb	F0,00375$
      002232 F4               [12]  830 	cpl	a
      002233 24 01            [12]  831 	add	a,#0x01
      002235 C5 F0            [12]  832 	xch	a,b
      002237 F4               [12]  833 	cpl	a
      002238 34 00            [12]  834 	addc	a,#0x00
      00223A C5 F0            [12]  835 	xch	a,b
      00223C                        836 00375$:
      00223C 24 0E            [12]  837 	add	a,#_generation
      00223E F5 82            [12]  838 	mov	dpl,a
      002240 74 8C            [12]  839 	mov	a,#(_generation >> 8)
      002242 35 F0            [12]  840 	addc	a,b
      002244 F5 83            [12]  841 	mov	dph,a
      002246 E0               [24]  842 	movx	a,@dptr
      002247 FE               [12]  843 	mov	r6,a
      002248 A3               [24]  844 	inc	dptr
      002249 E0               [24]  845 	movx	a,@dptr
      00224A FF               [12]  846 	mov	r7,a
      00224B C0 06            [24]  847 	push	ar6
      00224D C0 07            [24]  848 	push	ar7
      00224F 74 53            [12]  849 	mov	a,#___str_0
      002251 C0 E0            [24]  850 	push	acc
      002253 74 3C            [12]  851 	mov	a,#(___str_0 >> 8)
      002255 C0 E0            [24]  852 	push	acc
      002257 74 80            [12]  853 	mov	a,#0x80
      002259 C0 E0            [24]  854 	push	acc
      00225B 12 28 82         [24]  855 	lcall	_printf
      00225E E5 81            [12]  856 	mov	a,sp
      002260 24 FB            [12]  857 	add	a,#0xfb
      002262 F5 81            [12]  858 	mov	sp,a
                                    859 ;	life.c:60: if (j < 3) putchar(' ');
      002264 90 8C 16         [24]  860 	mov	dptr,#_j
      002267 E0               [24]  861 	movx	a,@dptr
      002268 FE               [12]  862 	mov	r6,a
      002269 A3               [24]  863 	inc	dptr
      00226A E0               [24]  864 	movx	a,@dptr
      00226B FF               [12]  865 	mov	r7,a
      00226C C3               [12]  866 	clr	c
      00226D EE               [12]  867 	mov	a,r6
      00226E 94 03            [12]  868 	subb	a,#0x03
      002270 EF               [12]  869 	mov	a,r7
      002271 64 80            [12]  870 	xrl	a,#0x80
      002273 94 80            [12]  871 	subb	a,#0x80
      002275 50 06            [24]  872 	jnc	00155$
      002277 90 00 20         [24]  873 	mov	dptr,#0x0020
      00227A 12 20 75         [24]  874 	lcall	_putchar
      00227D                        875 00155$:
                                    876 ;	life.c:58: for (j = 0; j < 4; j++) {
      00227D 90 8C 16         [24]  877 	mov	dptr,#_j
      002280 E0               [24]  878 	movx	a,@dptr
      002281 24 01            [12]  879 	add	a,#0x01
      002283 F0               [24]  880 	movx	@dptr,a
      002284 A3               [24]  881 	inc	dptr
      002285 E0               [24]  882 	movx	a,@dptr
      002286 34 00            [12]  883 	addc	a,#0x00
      002288 F0               [24]  884 	movx	@dptr,a
      002289 90 8C 16         [24]  885 	mov	dptr,#_j
      00228C E0               [24]  886 	movx	a,@dptr
      00228D FE               [12]  887 	mov	r6,a
      00228E A3               [24]  888 	inc	dptr
      00228F E0               [24]  889 	movx	a,@dptr
      002290 FF               [12]  890 	mov	r7,a
      002291 C3               [12]  891 	clr	c
      002292 EE               [12]  892 	mov	a,r6
      002293 94 04            [12]  893 	subb	a,#0x04
      002295 EF               [12]  894 	mov	a,r7
      002296 64 80            [12]  895 	xrl	a,#0x80
      002298 94 80            [12]  896 	subb	a,#0x80
      00229A 50 03            [24]  897 	jnc	00377$
      00229C 02 22 15         [24]  898 	ljmp	00154$
      00229F                        899 00377$:
                                    900 ;	life.c:69: printf("\r\n");
      00229F 74 60            [12]  901 	mov	a,#___str_2
      0022A1 C0 E0            [24]  902 	push	acc
      0022A3 74 3C            [12]  903 	mov	a,#(___str_2 >> 8)
      0022A5 C0 E0            [24]  904 	push	acc
      0022A7 74 80            [12]  905 	mov	a,#0x80
      0022A9 C0 E0            [24]  906 	push	acc
      0022AB 12 28 82         [24]  907 	lcall	_printf
      0022AE 15 81            [12]  908 	dec	sp
      0022B0 15 81            [12]  909 	dec	sp
      0022B2 15 81            [12]  910 	dec	sp
                                    911 ;	life.c:49: for (j = 0; j < 4; j++) {
      0022B4 90 8C 16         [24]  912 	mov	dptr,#_j
      0022B7 E4               [12]  913 	clr	a
      0022B8 F0               [24]  914 	movx	@dptr,a
      0022B9 A3               [24]  915 	inc	dptr
      0022BA F0               [24]  916 	movx	@dptr,a
      0022BB                        917 00156$:
                                    918 ;	life.c:50: generation[j]++;
      0022BB 90 8C 16         [24]  919 	mov	dptr,#_j
      0022BE E0               [24]  920 	movx	a,@dptr
      0022BF FE               [12]  921 	mov	r6,a
      0022C0 A3               [24]  922 	inc	dptr
      0022C1 E0               [24]  923 	movx	a,@dptr
      0022C2 FF               [12]  924 	mov	r7,a
      0022C3 EE               [12]  925 	mov	a,r6
      0022C4 2E               [12]  926 	add	a,r6
      0022C5 FE               [12]  927 	mov	r6,a
      0022C6 EF               [12]  928 	mov	a,r7
      0022C7 33               [12]  929 	rlc	a
      0022C8 FF               [12]  930 	mov	r7,a
      0022C9 EE               [12]  931 	mov	a,r6
      0022CA 24 0E            [12]  932 	add	a,#_generation
      0022CC FE               [12]  933 	mov	r6,a
      0022CD EF               [12]  934 	mov	a,r7
      0022CE 34 8C            [12]  935 	addc	a,#(_generation >> 8)
      0022D0 FF               [12]  936 	mov	r7,a
      0022D1 8E 82            [24]  937 	mov	dpl,r6
      0022D3 8F 83            [24]  938 	mov	dph,r7
      0022D5 E0               [24]  939 	movx	a,@dptr
      0022D6 FC               [12]  940 	mov	r4,a
      0022D7 A3               [24]  941 	inc	dptr
      0022D8 E0               [24]  942 	movx	a,@dptr
      0022D9 FD               [12]  943 	mov	r5,a
      0022DA 0C               [12]  944 	inc	r4
      0022DB BC 00 01         [24]  945 	cjne	r4,#0x00,00378$
      0022DE 0D               [12]  946 	inc	r5
      0022DF                        947 00378$:
      0022DF 8E 82            [24]  948 	mov	dpl,r6
      0022E1 8F 83            [24]  949 	mov	dph,r7
      0022E3 EC               [12]  950 	mov	a,r4
      0022E4 F0               [24]  951 	movx	@dptr,a
      0022E5 ED               [12]  952 	mov	a,r5
      0022E6 A3               [24]  953 	inc	dptr
      0022E7 F0               [24]  954 	movx	@dptr,a
                                    955 ;	life.c:51: if (generation[j]) break;
      0022E8 90 8C 16         [24]  956 	mov	dptr,#_j
      0022EB E0               [24]  957 	movx	a,@dptr
      0022EC FE               [12]  958 	mov	r6,a
      0022ED A3               [24]  959 	inc	dptr
      0022EE E0               [24]  960 	movx	a,@dptr
      0022EF FF               [12]  961 	mov	r7,a
      0022F0 EE               [12]  962 	mov	a,r6
      0022F1 2E               [12]  963 	add	a,r6
      0022F2 FC               [12]  964 	mov	r4,a
      0022F3 EF               [12]  965 	mov	a,r7
      0022F4 33               [12]  966 	rlc	a
      0022F5 FD               [12]  967 	mov	r5,a
      0022F6 EC               [12]  968 	mov	a,r4
      0022F7 24 0E            [12]  969 	add	a,#_generation
      0022F9 F5 82            [12]  970 	mov	dpl,a
      0022FB ED               [12]  971 	mov	a,r5
      0022FC 34 8C            [12]  972 	addc	a,#(_generation >> 8)
      0022FE F5 83            [12]  973 	mov	dph,a
      002300 E0               [24]  974 	movx	a,@dptr
      002301 FC               [12]  975 	mov	r4,a
      002302 A3               [24]  976 	inc	dptr
      002303 E0               [24]  977 	movx	a,@dptr
      002304 FD               [12]  978 	mov	r5,a
      002305 4C               [12]  979 	orl	a,r4
      002306 70 1E            [24]  980 	jnz	00124$
                                    981 ;	life.c:49: for (j = 0; j < 4; j++) {
      002308 90 8C 16         [24]  982 	mov	dptr,#_j
      00230B 74 01            [12]  983 	mov	a,#0x01
      00230D 2E               [12]  984 	add	a,r6
      00230E F0               [24]  985 	movx	@dptr,a
      00230F E4               [12]  986 	clr	a
      002310 3F               [12]  987 	addc	a,r7
      002311 A3               [24]  988 	inc	dptr
      002312 F0               [24]  989 	movx	@dptr,a
      002313 90 8C 16         [24]  990 	mov	dptr,#_j
      002316 E0               [24]  991 	movx	a,@dptr
      002317 FE               [12]  992 	mov	r6,a
      002318 A3               [24]  993 	inc	dptr
      002319 E0               [24]  994 	movx	a,@dptr
      00231A FF               [12]  995 	mov	r7,a
      00231B C3               [12]  996 	clr	c
      00231C EE               [12]  997 	mov	a,r6
      00231D 94 04            [12]  998 	subb	a,#0x04
      00231F EF               [12]  999 	mov	a,r7
      002320 64 80            [12] 1000 	xrl	a,#0x80
      002322 94 80            [12] 1001 	subb	a,#0x80
      002324 40 95            [24] 1002 	jc	00156$
                                   1003 ;	life.c:70: updategen();
      002326                       1004 00124$:
                                   1005 ;	life.c:72: for (x = 0; x < W; x++) {
      002326 90 8C 04         [24] 1006 	mov	dptr,#_x
      002329 E4               [12] 1007 	clr	a
      00232A F0               [24] 1008 	movx	@dptr,a
      00232B A3               [24] 1009 	inc	dptr
      00232C F0               [24] 1010 	movx	@dptr,a
      00232D                       1011 00160$:
                                   1012 ;	life.c:73: for (y = 0; y < H; y++)
      00232D 90 8C 06         [24] 1013 	mov	dptr,#_y
      002330 E4               [12] 1014 	clr	a
      002331 F0               [24] 1015 	movx	@dptr,a
      002332 A3               [24] 1016 	inc	dptr
      002333 F0               [24] 1017 	movx	@dptr,a
      002334                       1018 00158$:
                                   1019 ;	life.c:74: if (u[y][x]) printf("\033[01m[]\033[m");
      002334 90 8C 06         [24] 1020 	mov	dptr,#_y
      002337 E0               [24] 1021 	movx	a,@dptr
      002338 FE               [12] 1022 	mov	r6,a
      002339 A3               [24] 1023 	inc	dptr
      00233A E0               [24] 1024 	movx	a,@dptr
      00233B C4               [12] 1025 	swap	a
      00233C 23               [12] 1026 	rl	a
      00233D 54 E0            [12] 1027 	anl	a,#0xe0
      00233F CE               [12] 1028 	xch	a,r6
      002340 C4               [12] 1029 	swap	a
      002341 23               [12] 1030 	rl	a
      002342 CE               [12] 1031 	xch	a,r6
      002343 6E               [12] 1032 	xrl	a,r6
      002344 CE               [12] 1033 	xch	a,r6
      002345 54 E0            [12] 1034 	anl	a,#0xe0
      002347 CE               [12] 1035 	xch	a,r6
      002348 6E               [12] 1036 	xrl	a,r6
      002349 FF               [12] 1037 	mov	r7,a
      00234A EE               [12] 1038 	mov	a,r6
      00234B 24 04            [12] 1039 	add	a,#_u
      00234D FE               [12] 1040 	mov	r6,a
      00234E EF               [12] 1041 	mov	a,r7
      00234F 34 84            [12] 1042 	addc	a,#(_u >> 8)
      002351 FF               [12] 1043 	mov	r7,a
      002352 90 8C 04         [24] 1044 	mov	dptr,#_x
      002355 E0               [24] 1045 	movx	a,@dptr
      002356 FC               [12] 1046 	mov	r4,a
      002357 A3               [24] 1047 	inc	dptr
      002358 E0               [24] 1048 	movx	a,@dptr
      002359 FD               [12] 1049 	mov	r5,a
      00235A EC               [12] 1050 	mov	a,r4
      00235B 2E               [12] 1051 	add	a,r6
      00235C FE               [12] 1052 	mov	r6,a
      00235D ED               [12] 1053 	mov	a,r5
      00235E 3F               [12] 1054 	addc	a,r7
      00235F FF               [12] 1055 	mov	r7,a
      002360 8E 82            [24] 1056 	mov	dpl,r6
      002362 8F 83            [24] 1057 	mov	dph,r7
      002364 E0               [24] 1058 	movx	a,@dptr
      002365 60 17            [24] 1059 	jz	00126$
      002367 74 63            [12] 1060 	mov	a,#___str_3
      002369 C0 E0            [24] 1061 	push	acc
      00236B 74 3C            [12] 1062 	mov	a,#(___str_3 >> 8)
      00236D C0 E0            [24] 1063 	push	acc
      00236F 74 80            [12] 1064 	mov	a,#0x80
      002371 C0 E0            [24] 1065 	push	acc
      002373 12 28 82         [24] 1066 	lcall	_printf
      002376 15 81            [12] 1067 	dec	sp
      002378 15 81            [12] 1068 	dec	sp
      00237A 15 81            [12] 1069 	dec	sp
      00237C 80 15            [24] 1070 	sjmp	00159$
      00237E                       1071 00126$:
                                   1072 ;	life.c:75: else printf("--");
      00237E 74 6E            [12] 1073 	mov	a,#___str_4
      002380 C0 E0            [24] 1074 	push	acc
      002382 74 3C            [12] 1075 	mov	a,#(___str_4 >> 8)
      002384 C0 E0            [24] 1076 	push	acc
      002386 74 80            [12] 1077 	mov	a,#0x80
      002388 C0 E0            [24] 1078 	push	acc
      00238A 12 28 82         [24] 1079 	lcall	_printf
      00238D 15 81            [12] 1080 	dec	sp
      00238F 15 81            [12] 1081 	dec	sp
      002391 15 81            [12] 1082 	dec	sp
      002393                       1083 00159$:
                                   1084 ;	life.c:73: for (y = 0; y < H; y++)
      002393 90 8C 06         [24] 1085 	mov	dptr,#_y
      002396 E0               [24] 1086 	movx	a,@dptr
      002397 24 01            [12] 1087 	add	a,#0x01
      002399 F0               [24] 1088 	movx	@dptr,a
      00239A A3               [24] 1089 	inc	dptr
      00239B E0               [24] 1090 	movx	a,@dptr
      00239C 34 00            [12] 1091 	addc	a,#0x00
      00239E F0               [24] 1092 	movx	@dptr,a
      00239F 90 8C 06         [24] 1093 	mov	dptr,#_y
      0023A2 E0               [24] 1094 	movx	a,@dptr
      0023A3 FE               [12] 1095 	mov	r6,a
      0023A4 A3               [24] 1096 	inc	dptr
      0023A5 E0               [24] 1097 	movx	a,@dptr
      0023A6 FF               [12] 1098 	mov	r7,a
      0023A7 C3               [12] 1099 	clr	c
      0023A8 EE               [12] 1100 	mov	a,r6
      0023A9 94 20            [12] 1101 	subb	a,#0x20
      0023AB EF               [12] 1102 	mov	a,r7
      0023AC 64 80            [12] 1103 	xrl	a,#0x80
      0023AE 94 80            [12] 1104 	subb	a,#0x80
      0023B0 50 03            [24] 1105 	jnc	00382$
      0023B2 02 23 34         [24] 1106 	ljmp	00158$
      0023B5                       1107 00382$:
                                   1108 ;	life.c:76: printf("\r\n");
      0023B5 74 60            [12] 1109 	mov	a,#___str_2
      0023B7 C0 E0            [24] 1110 	push	acc
      0023B9 74 3C            [12] 1111 	mov	a,#(___str_2 >> 8)
      0023BB C0 E0            [24] 1112 	push	acc
      0023BD 74 80            [12] 1113 	mov	a,#0x80
      0023BF C0 E0            [24] 1114 	push	acc
      0023C1 12 28 82         [24] 1115 	lcall	_printf
      0023C4 15 81            [12] 1116 	dec	sp
      0023C6 15 81            [12] 1117 	dec	sp
      0023C8 15 81            [12] 1118 	dec	sp
                                   1119 ;	life.c:72: for (x = 0; x < W; x++) {
      0023CA 90 8C 04         [24] 1120 	mov	dptr,#_x
      0023CD E0               [24] 1121 	movx	a,@dptr
      0023CE 24 01            [12] 1122 	add	a,#0x01
      0023D0 F0               [24] 1123 	movx	@dptr,a
      0023D1 A3               [24] 1124 	inc	dptr
      0023D2 E0               [24] 1125 	movx	a,@dptr
      0023D3 34 00            [12] 1126 	addc	a,#0x00
      0023D5 F0               [24] 1127 	movx	@dptr,a
      0023D6 90 8C 04         [24] 1128 	mov	dptr,#_x
      0023D9 E0               [24] 1129 	movx	a,@dptr
      0023DA FE               [12] 1130 	mov	r6,a
      0023DB A3               [24] 1131 	inc	dptr
      0023DC E0               [24] 1132 	movx	a,@dptr
      0023DD FF               [12] 1133 	mov	r7,a
      0023DE C3               [12] 1134 	clr	c
      0023DF EE               [12] 1135 	mov	a,r6
      0023E0 94 20            [12] 1136 	subb	a,#0x20
      0023E2 EF               [12] 1137 	mov	a,r7
      0023E3 64 80            [12] 1138 	xrl	a,#0x80
      0023E5 94 80            [12] 1139 	subb	a,#0x80
      0023E7 50 03            [24] 1140 	jnc	00383$
      0023E9 02 23 2D         [24] 1141 	ljmp	00160$
      0023EC                       1142 00383$:
                                   1143 ;	life.c:83: fixed = 1;
      0023EC 90 8C 18         [24] 1144 	mov	dptr,#_fixed
      0023EF 74 01            [12] 1145 	mov	a,#0x01
      0023F1 F0               [24] 1146 	movx	@dptr,a
      0023F2 E4               [12] 1147 	clr	a
      0023F3 A3               [24] 1148 	inc	dptr
      0023F4 F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	life.c:84: cycle2 = 1;
      0023F5 90 8C 1A         [24] 1151 	mov	dptr,#_cycle2
      0023F8 04               [12] 1152 	inc	a
      0023F9 F0               [24] 1153 	movx	@dptr,a
      0023FA E4               [12] 1154 	clr	a
      0023FB A3               [24] 1155 	inc	dptr
      0023FC F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	life.c:86: for (y = 0; y < H; y++)
      0023FD 90 8C 06         [24] 1158 	mov	dptr,#_y
      002400 F0               [24] 1159 	movx	@dptr,a
      002401 A3               [24] 1160 	inc	dptr
      002402 F0               [24] 1161 	movx	@dptr,a
      002403                       1162 00164$:
                                   1163 ;	life.c:87: for (x = 0; x < W; x++)
      002403 90 8C 04         [24] 1164 	mov	dptr,#_x
      002406 E4               [12] 1165 	clr	a
      002407 F0               [24] 1166 	movx	@dptr,a
      002408 A3               [24] 1167 	inc	dptr
      002409 F0               [24] 1168 	movx	@dptr,a
      00240A                       1169 00162$:
                                   1170 ;	life.c:88: pu[y][x] = u[y][x];
      00240A 90 8C 06         [24] 1171 	mov	dptr,#_y
      00240D E0               [24] 1172 	movx	a,@dptr
      00240E FE               [12] 1173 	mov	r6,a
      00240F A3               [24] 1174 	inc	dptr
      002410 E0               [24] 1175 	movx	a,@dptr
      002411 C4               [12] 1176 	swap	a
      002412 23               [12] 1177 	rl	a
      002413 54 E0            [12] 1178 	anl	a,#0xe0
      002415 CE               [12] 1179 	xch	a,r6
      002416 C4               [12] 1180 	swap	a
      002417 23               [12] 1181 	rl	a
      002418 CE               [12] 1182 	xch	a,r6
      002419 6E               [12] 1183 	xrl	a,r6
      00241A CE               [12] 1184 	xch	a,r6
      00241B 54 E0            [12] 1185 	anl	a,#0xe0
      00241D CE               [12] 1186 	xch	a,r6
      00241E 6E               [12] 1187 	xrl	a,r6
      00241F FF               [12] 1188 	mov	r7,a
      002420 EE               [12] 1189 	mov	a,r6
      002421 24 04            [12] 1190 	add	a,#_pu
      002423 FC               [12] 1191 	mov	r4,a
      002424 EF               [12] 1192 	mov	a,r7
      002425 34 80            [12] 1193 	addc	a,#(_pu >> 8)
      002427 FD               [12] 1194 	mov	r5,a
      002428 90 8C 04         [24] 1195 	mov	dptr,#_x
      00242B E0               [24] 1196 	movx	a,@dptr
      00242C FA               [12] 1197 	mov	r2,a
      00242D A3               [24] 1198 	inc	dptr
      00242E E0               [24] 1199 	movx	a,@dptr
      00242F FB               [12] 1200 	mov	r3,a
      002430 EA               [12] 1201 	mov	a,r2
      002431 2C               [12] 1202 	add	a,r4
      002432 FC               [12] 1203 	mov	r4,a
      002433 EB               [12] 1204 	mov	a,r3
      002434 3D               [12] 1205 	addc	a,r5
      002435 FD               [12] 1206 	mov	r5,a
      002436 EE               [12] 1207 	mov	a,r6
      002437 24 04            [12] 1208 	add	a,#_u
      002439 FE               [12] 1209 	mov	r6,a
      00243A EF               [12] 1210 	mov	a,r7
      00243B 34 84            [12] 1211 	addc	a,#(_u >> 8)
      00243D FF               [12] 1212 	mov	r7,a
      00243E EA               [12] 1213 	mov	a,r2
      00243F 2E               [12] 1214 	add	a,r6
      002440 F5 82            [12] 1215 	mov	dpl,a
      002442 EB               [12] 1216 	mov	a,r3
      002443 3F               [12] 1217 	addc	a,r7
      002444 F5 83            [12] 1218 	mov	dph,a
      002446 E0               [24] 1219 	movx	a,@dptr
      002447 8C 82            [24] 1220 	mov	dpl,r4
      002449 8D 83            [24] 1221 	mov	dph,r5
      00244B F0               [24] 1222 	movx	@dptr,a
                                   1223 ;	life.c:87: for (x = 0; x < W; x++)
      00244C 90 8C 04         [24] 1224 	mov	dptr,#_x
      00244F E0               [24] 1225 	movx	a,@dptr
      002450 24 01            [12] 1226 	add	a,#0x01
      002452 F0               [24] 1227 	movx	@dptr,a
      002453 A3               [24] 1228 	inc	dptr
      002454 E0               [24] 1229 	movx	a,@dptr
      002455 34 00            [12] 1230 	addc	a,#0x00
      002457 F0               [24] 1231 	movx	@dptr,a
      002458 90 8C 04         [24] 1232 	mov	dptr,#_x
      00245B E0               [24] 1233 	movx	a,@dptr
      00245C FE               [12] 1234 	mov	r6,a
      00245D A3               [24] 1235 	inc	dptr
      00245E E0               [24] 1236 	movx	a,@dptr
      00245F FF               [12] 1237 	mov	r7,a
      002460 C3               [12] 1238 	clr	c
      002461 EE               [12] 1239 	mov	a,r6
      002462 94 20            [12] 1240 	subb	a,#0x20
      002464 EF               [12] 1241 	mov	a,r7
      002465 64 80            [12] 1242 	xrl	a,#0x80
      002467 94 80            [12] 1243 	subb	a,#0x80
      002469 40 9F            [24] 1244 	jc	00162$
                                   1245 ;	life.c:86: for (y = 0; y < H; y++)
      00246B 90 8C 06         [24] 1246 	mov	dptr,#_y
      00246E E0               [24] 1247 	movx	a,@dptr
      00246F 24 01            [12] 1248 	add	a,#0x01
      002471 F0               [24] 1249 	movx	@dptr,a
      002472 A3               [24] 1250 	inc	dptr
      002473 E0               [24] 1251 	movx	a,@dptr
      002474 34 00            [12] 1252 	addc	a,#0x00
      002476 F0               [24] 1253 	movx	@dptr,a
      002477 90 8C 06         [24] 1254 	mov	dptr,#_y
      00247A E0               [24] 1255 	movx	a,@dptr
      00247B FE               [12] 1256 	mov	r6,a
      00247C A3               [24] 1257 	inc	dptr
      00247D E0               [24] 1258 	movx	a,@dptr
      00247E FF               [12] 1259 	mov	r7,a
      00247F C3               [12] 1260 	clr	c
      002480 EE               [12] 1261 	mov	a,r6
      002481 94 20            [12] 1262 	subb	a,#0x20
      002483 EF               [12] 1263 	mov	a,r7
      002484 64 80            [12] 1264 	xrl	a,#0x80
      002486 94 80            [12] 1265 	subb	a,#0x80
      002488 50 03            [24] 1266 	jnc	00385$
      00248A 02 24 03         [24] 1267 	ljmp	00164$
      00248D                       1268 00385$:
                                   1269 ;	life.c:90: for (y = 0; y < H; y++) {
      00248D 90 8C 06         [24] 1270 	mov	dptr,#_y
      002490 E4               [12] 1271 	clr	a
      002491 F0               [24] 1272 	movx	@dptr,a
      002492 A3               [24] 1273 	inc	dptr
      002493 F0               [24] 1274 	movx	@dptr,a
      002494                       1275 00174$:
                                   1276 ;	life.c:91: for (x = 0; x < W; x++) {
      002494 90 8C 04         [24] 1277 	mov	dptr,#_x
      002497 E4               [12] 1278 	clr	a
      002498 F0               [24] 1279 	movx	@dptr,a
      002499 A3               [24] 1280 	inc	dptr
      00249A F0               [24] 1281 	movx	@dptr,a
      00249B                       1282 00172$:
                                   1283 ;	life.c:92: n = 0;
      00249B 90 8C 0C         [24] 1284 	mov	dptr,#_n
      00249E E4               [12] 1285 	clr	a
      00249F F0               [24] 1286 	movx	@dptr,a
      0024A0 A3               [24] 1287 	inc	dptr
      0024A1 F0               [24] 1288 	movx	@dptr,a
                                   1289 ;	life.c:93: for (y1 = y - 1; y1 <= y + 1; y1++)
      0024A2 90 8C 06         [24] 1290 	mov	dptr,#_y
      0024A5 E0               [24] 1291 	movx	a,@dptr
      0024A6 FE               [12] 1292 	mov	r6,a
      0024A7 A3               [24] 1293 	inc	dptr
      0024A8 E0               [24] 1294 	movx	a,@dptr
      0024A9 FF               [12] 1295 	mov	r7,a
      0024AA 1E               [12] 1296 	dec	r6
      0024AB BE FF 01         [24] 1297 	cjne	r6,#0xff,00386$
      0024AE 1F               [12] 1298 	dec	r7
      0024AF                       1299 00386$:
      0024AF 90 8C 0A         [24] 1300 	mov	dptr,#_y1
      0024B2 EE               [12] 1301 	mov	a,r6
      0024B3 F0               [24] 1302 	movx	@dptr,a
      0024B4 EF               [12] 1303 	mov	a,r7
      0024B5 A3               [24] 1304 	inc	dptr
      0024B6 F0               [24] 1305 	movx	@dptr,a
      0024B7                       1306 00170$:
      0024B7 90 8C 06         [24] 1307 	mov	dptr,#_y
      0024BA E0               [24] 1308 	movx	a,@dptr
      0024BB FE               [12] 1309 	mov	r6,a
      0024BC A3               [24] 1310 	inc	dptr
      0024BD E0               [24] 1311 	movx	a,@dptr
      0024BE FF               [12] 1312 	mov	r7,a
      0024BF 74 01            [12] 1313 	mov	a,#0x01
      0024C1 2E               [12] 1314 	add	a,r6
      0024C2 FC               [12] 1315 	mov	r4,a
      0024C3 E4               [12] 1316 	clr	a
      0024C4 3F               [12] 1317 	addc	a,r7
      0024C5 FD               [12] 1318 	mov	r5,a
      0024C6 90 8C 0A         [24] 1319 	mov	dptr,#_y1
      0024C9 E0               [24] 1320 	movx	a,@dptr
      0024CA FA               [12] 1321 	mov	r2,a
      0024CB A3               [24] 1322 	inc	dptr
      0024CC E0               [24] 1323 	movx	a,@dptr
      0024CD FB               [12] 1324 	mov	r3,a
      0024CE C3               [12] 1325 	clr	c
      0024CF EC               [12] 1326 	mov	a,r4
      0024D0 9A               [12] 1327 	subb	a,r2
      0024D1 ED               [12] 1328 	mov	a,r5
      0024D2 64 80            [12] 1329 	xrl	a,#0x80
      0024D4 8B F0            [24] 1330 	mov	b,r3
      0024D6 63 F0 80         [24] 1331 	xrl	b,#0x80
      0024D9 95 F0            [12] 1332 	subb	a,b
      0024DB 50 03            [24] 1333 	jnc	00387$
      0024DD 02 25 BD         [24] 1334 	ljmp	00136$
      0024E0                       1335 00387$:
                                   1336 ;	life.c:94: for (x1 = x - 1; x1 <= x + 1; x1++)
      0024E0 90 8C 04         [24] 1337 	mov	dptr,#_x
      0024E3 E0               [24] 1338 	movx	a,@dptr
      0024E4 FC               [12] 1339 	mov	r4,a
      0024E5 A3               [24] 1340 	inc	dptr
      0024E6 E0               [24] 1341 	movx	a,@dptr
      0024E7 FD               [12] 1342 	mov	r5,a
      0024E8 1C               [12] 1343 	dec	r4
      0024E9 BC FF 01         [24] 1344 	cjne	r4,#0xff,00388$
      0024EC 1D               [12] 1345 	dec	r5
      0024ED                       1346 00388$:
      0024ED 90 8C 08         [24] 1347 	mov	dptr,#_x1
      0024F0 EC               [12] 1348 	mov	a,r4
      0024F1 F0               [24] 1349 	movx	@dptr,a
      0024F2 ED               [12] 1350 	mov	a,r5
      0024F3 A3               [24] 1351 	inc	dptr
      0024F4 F0               [24] 1352 	movx	@dptr,a
      0024F5                       1353 00167$:
      0024F5 90 8C 04         [24] 1354 	mov	dptr,#_x
      0024F8 E0               [24] 1355 	movx	a,@dptr
      0024F9 FC               [12] 1356 	mov	r4,a
      0024FA A3               [24] 1357 	inc	dptr
      0024FB E0               [24] 1358 	movx	a,@dptr
      0024FC FD               [12] 1359 	mov	r5,a
      0024FD 0C               [12] 1360 	inc	r4
      0024FE BC 00 01         [24] 1361 	cjne	r4,#0x00,00389$
      002501 0D               [12] 1362 	inc	r5
      002502                       1363 00389$:
      002502 90 8C 08         [24] 1364 	mov	dptr,#_x1
      002505 E0               [24] 1365 	movx	a,@dptr
      002506 FA               [12] 1366 	mov	r2,a
      002507 A3               [24] 1367 	inc	dptr
      002508 E0               [24] 1368 	movx	a,@dptr
      002509 FB               [12] 1369 	mov	r3,a
      00250A C3               [12] 1370 	clr	c
      00250B EC               [12] 1371 	mov	a,r4
      00250C 9A               [12] 1372 	subb	a,r2
      00250D ED               [12] 1373 	mov	a,r5
      00250E 64 80            [12] 1374 	xrl	a,#0x80
      002510 8B F0            [24] 1375 	mov	b,r3
      002512 63 F0 80         [24] 1376 	xrl	b,#0x80
      002515 95 F0            [12] 1377 	subb	a,b
      002517 50 03            [24] 1378 	jnc	00390$
      002519 02 25 AE         [24] 1379 	ljmp	00171$
      00251C                       1380 00390$:
                                   1381 ;	life.c:95: if (u[(y1 + H) % H][(x1 + W) % W])
      00251C 90 8C 0A         [24] 1382 	mov	dptr,#_y1
      00251F E0               [24] 1383 	movx	a,@dptr
      002520 FC               [12] 1384 	mov	r4,a
      002521 A3               [24] 1385 	inc	dptr
      002522 E0               [24] 1386 	movx	a,@dptr
      002523 FD               [12] 1387 	mov	r5,a
      002524 74 20            [12] 1388 	mov	a,#0x20
      002526 2C               [12] 1389 	add	a,r4
      002527 FC               [12] 1390 	mov	r4,a
      002528 E4               [12] 1391 	clr	a
      002529 3D               [12] 1392 	addc	a,r5
      00252A FD               [12] 1393 	mov	r5,a
      00252B C0 03            [24] 1394 	push	ar3
      00252D C0 02            [24] 1395 	push	ar2
      00252F 74 20            [12] 1396 	mov	a,#0x20
      002531 C0 E0            [24] 1397 	push	acc
      002533 E4               [12] 1398 	clr	a
      002534 C0 E0            [24] 1399 	push	acc
      002536 8C 82            [24] 1400 	mov	dpl,r4
      002538 8D 83            [24] 1401 	mov	dph,r5
      00253A 12 28 BB         [24] 1402 	lcall	__modsint
      00253D AC 82            [24] 1403 	mov	r4,dpl
      00253F AD 83            [24] 1404 	mov	r5,dph
      002541 15 81            [12] 1405 	dec	sp
      002543 15 81            [12] 1406 	dec	sp
      002545 D0 02            [24] 1407 	pop	ar2
      002547 D0 03            [24] 1408 	pop	ar3
      002549 ED               [12] 1409 	mov	a,r5
      00254A C4               [12] 1410 	swap	a
      00254B 23               [12] 1411 	rl	a
      00254C 54 E0            [12] 1412 	anl	a,#0xe0
      00254E CC               [12] 1413 	xch	a,r4
      00254F C4               [12] 1414 	swap	a
      002550 23               [12] 1415 	rl	a
      002551 CC               [12] 1416 	xch	a,r4
      002552 6C               [12] 1417 	xrl	a,r4
      002553 CC               [12] 1418 	xch	a,r4
      002554 54 E0            [12] 1419 	anl	a,#0xe0
      002556 CC               [12] 1420 	xch	a,r4
      002557 6C               [12] 1421 	xrl	a,r4
      002558 FD               [12] 1422 	mov	r5,a
      002559 EC               [12] 1423 	mov	a,r4
      00255A 24 04            [12] 1424 	add	a,#_u
      00255C FC               [12] 1425 	mov	r4,a
      00255D ED               [12] 1426 	mov	a,r5
      00255E 34 84            [12] 1427 	addc	a,#(_u >> 8)
      002560 FD               [12] 1428 	mov	r5,a
      002561 74 20            [12] 1429 	mov	a,#0x20
      002563 2A               [12] 1430 	add	a,r2
      002564 FA               [12] 1431 	mov	r2,a
      002565 E4               [12] 1432 	clr	a
      002566 3B               [12] 1433 	addc	a,r3
      002567 FB               [12] 1434 	mov	r3,a
      002568 C0 05            [24] 1435 	push	ar5
      00256A C0 04            [24] 1436 	push	ar4
      00256C 74 20            [12] 1437 	mov	a,#0x20
      00256E C0 E0            [24] 1438 	push	acc
      002570 E4               [12] 1439 	clr	a
      002571 C0 E0            [24] 1440 	push	acc
      002573 8A 82            [24] 1441 	mov	dpl,r2
      002575 8B 83            [24] 1442 	mov	dph,r3
      002577 12 28 BB         [24] 1443 	lcall	__modsint
      00257A AA 82            [24] 1444 	mov	r2,dpl
      00257C AB 83            [24] 1445 	mov	r3,dph
      00257E 15 81            [12] 1446 	dec	sp
      002580 15 81            [12] 1447 	dec	sp
      002582 D0 04            [24] 1448 	pop	ar4
      002584 D0 05            [24] 1449 	pop	ar5
      002586 EA               [12] 1450 	mov	a,r2
      002587 2C               [12] 1451 	add	a,r4
      002588 FC               [12] 1452 	mov	r4,a
      002589 EB               [12] 1453 	mov	a,r3
      00258A 3D               [12] 1454 	addc	a,r5
      00258B FD               [12] 1455 	mov	r5,a
      00258C 8C 82            [24] 1456 	mov	dpl,r4
      00258E 8D 83            [24] 1457 	mov	dph,r5
      002590 E0               [24] 1458 	movx	a,@dptr
      002591 60 0C            [24] 1459 	jz	00168$
                                   1460 ;	life.c:96: n++;
      002593 90 8C 0C         [24] 1461 	mov	dptr,#_n
      002596 E0               [24] 1462 	movx	a,@dptr
      002597 24 01            [12] 1463 	add	a,#0x01
      002599 F0               [24] 1464 	movx	@dptr,a
      00259A A3               [24] 1465 	inc	dptr
      00259B E0               [24] 1466 	movx	a,@dptr
      00259C 34 00            [12] 1467 	addc	a,#0x00
      00259E F0               [24] 1468 	movx	@dptr,a
      00259F                       1469 00168$:
                                   1470 ;	life.c:94: for (x1 = x - 1; x1 <= x + 1; x1++)
      00259F 90 8C 08         [24] 1471 	mov	dptr,#_x1
      0025A2 E0               [24] 1472 	movx	a,@dptr
      0025A3 24 01            [12] 1473 	add	a,#0x01
      0025A5 F0               [24] 1474 	movx	@dptr,a
      0025A6 A3               [24] 1475 	inc	dptr
      0025A7 E0               [24] 1476 	movx	a,@dptr
      0025A8 34 00            [12] 1477 	addc	a,#0x00
      0025AA F0               [24] 1478 	movx	@dptr,a
      0025AB 02 24 F5         [24] 1479 	ljmp	00167$
      0025AE                       1480 00171$:
                                   1481 ;	life.c:93: for (y1 = y - 1; y1 <= y + 1; y1++)
      0025AE 90 8C 0A         [24] 1482 	mov	dptr,#_y1
      0025B1 E0               [24] 1483 	movx	a,@dptr
      0025B2 24 01            [12] 1484 	add	a,#0x01
      0025B4 F0               [24] 1485 	movx	@dptr,a
      0025B5 A3               [24] 1486 	inc	dptr
      0025B6 E0               [24] 1487 	movx	a,@dptr
      0025B7 34 00            [12] 1488 	addc	a,#0x00
      0025B9 F0               [24] 1489 	movx	@dptr,a
      0025BA 02 24 B7         [24] 1490 	ljmp	00170$
      0025BD                       1491 00136$:
                                   1492 ;	life.c:98: if (u[y][x]) n--;
      0025BD EF               [12] 1493 	mov	a,r7
      0025BE C4               [12] 1494 	swap	a
      0025BF 23               [12] 1495 	rl	a
      0025C0 54 E0            [12] 1496 	anl	a,#0xe0
      0025C2 CE               [12] 1497 	xch	a,r6
      0025C3 C4               [12] 1498 	swap	a
      0025C4 23               [12] 1499 	rl	a
      0025C5 CE               [12] 1500 	xch	a,r6
      0025C6 6E               [12] 1501 	xrl	a,r6
      0025C7 CE               [12] 1502 	xch	a,r6
      0025C8 54 E0            [12] 1503 	anl	a,#0xe0
      0025CA CE               [12] 1504 	xch	a,r6
      0025CB 6E               [12] 1505 	xrl	a,r6
      0025CC FF               [12] 1506 	mov	r7,a
      0025CD EE               [12] 1507 	mov	a,r6
      0025CE 24 04            [12] 1508 	add	a,#_u
      0025D0 FE               [12] 1509 	mov	r6,a
      0025D1 EF               [12] 1510 	mov	a,r7
      0025D2 34 84            [12] 1511 	addc	a,#(_u >> 8)
      0025D4 FF               [12] 1512 	mov	r7,a
      0025D5 90 8C 04         [24] 1513 	mov	dptr,#_x
      0025D8 E0               [24] 1514 	movx	a,@dptr
      0025D9 FC               [12] 1515 	mov	r4,a
      0025DA A3               [24] 1516 	inc	dptr
      0025DB E0               [24] 1517 	movx	a,@dptr
      0025DC FD               [12] 1518 	mov	r5,a
      0025DD EC               [12] 1519 	mov	a,r4
      0025DE 2E               [12] 1520 	add	a,r6
      0025DF FE               [12] 1521 	mov	r6,a
      0025E0 ED               [12] 1522 	mov	a,r5
      0025E1 3F               [12] 1523 	addc	a,r7
      0025E2 FF               [12] 1524 	mov	r7,a
      0025E3 8E 82            [24] 1525 	mov	dpl,r6
      0025E5 8F 83            [24] 1526 	mov	dph,r7
      0025E7 E0               [24] 1527 	movx	a,@dptr
      0025E8 60 14            [24] 1528 	jz	00138$
      0025EA 90 8C 0C         [24] 1529 	mov	dptr,#_n
      0025ED E0               [24] 1530 	movx	a,@dptr
      0025EE 24 FF            [12] 1531 	add	a,#0xff
      0025F0 FE               [12] 1532 	mov	r6,a
      0025F1 A3               [24] 1533 	inc	dptr
      0025F2 E0               [24] 1534 	movx	a,@dptr
      0025F3 34 FF            [12] 1535 	addc	a,#0xff
      0025F5 FF               [12] 1536 	mov	r7,a
      0025F6 90 8C 0C         [24] 1537 	mov	dptr,#_n
      0025F9 EE               [12] 1538 	mov	a,r6
      0025FA F0               [24] 1539 	movx	@dptr,a
      0025FB EF               [12] 1540 	mov	a,r7
      0025FC A3               [24] 1541 	inc	dptr
      0025FD F0               [24] 1542 	movx	@dptr,a
      0025FE                       1543 00138$:
                                   1544 ;	life.c:99: nu[y][x] = (n == 3 || (n == 2 && u[y][x]));
      0025FE 90 8C 06         [24] 1545 	mov	dptr,#_y
      002601 E0               [24] 1546 	movx	a,@dptr
      002602 FE               [12] 1547 	mov	r6,a
      002603 A3               [24] 1548 	inc	dptr
      002604 E0               [24] 1549 	movx	a,@dptr
      002605 C4               [12] 1550 	swap	a
      002606 23               [12] 1551 	rl	a
      002607 54 E0            [12] 1552 	anl	a,#0xe0
      002609 CE               [12] 1553 	xch	a,r6
      00260A C4               [12] 1554 	swap	a
      00260B 23               [12] 1555 	rl	a
      00260C CE               [12] 1556 	xch	a,r6
      00260D 6E               [12] 1557 	xrl	a,r6
      00260E CE               [12] 1558 	xch	a,r6
      00260F 54 E0            [12] 1559 	anl	a,#0xe0
      002611 CE               [12] 1560 	xch	a,r6
      002612 6E               [12] 1561 	xrl	a,r6
      002613 FF               [12] 1562 	mov	r7,a
      002614 EE               [12] 1563 	mov	a,r6
      002615 24 04            [12] 1564 	add	a,#_nu
      002617 FC               [12] 1565 	mov	r4,a
      002618 EF               [12] 1566 	mov	a,r7
      002619 34 88            [12] 1567 	addc	a,#(_nu >> 8)
      00261B FD               [12] 1568 	mov	r5,a
      00261C 90 8C 04         [24] 1569 	mov	dptr,#_x
      00261F E0               [24] 1570 	movx	a,@dptr
      002620 FA               [12] 1571 	mov	r2,a
      002621 A3               [24] 1572 	inc	dptr
      002622 E0               [24] 1573 	movx	a,@dptr
      002623 FB               [12] 1574 	mov	r3,a
      002624 EA               [12] 1575 	mov	a,r2
      002625 2C               [12] 1576 	add	a,r4
      002626 FC               [12] 1577 	mov	r4,a
      002627 EB               [12] 1578 	mov	a,r3
      002628 3D               [12] 1579 	addc	a,r5
      002629 FD               [12] 1580 	mov	r5,a
      00262A 90 8C 0C         [24] 1581 	mov	dptr,#_n
      00262D E0               [24] 1582 	movx	a,@dptr
      00262E F8               [12] 1583 	mov	r0,a
      00262F A3               [24] 1584 	inc	dptr
      002630 E0               [24] 1585 	movx	a,@dptr
      002631 F9               [12] 1586 	mov	r1,a
      002632 B8 03 05         [24] 1587 	cjne	r0,#0x03,00393$
      002635 B9 00 02         [24] 1588 	cjne	r1,#0x00,00393$
      002638 80 1F            [24] 1589 	sjmp	00183$
      00263A                       1590 00393$:
      00263A B8 02 18         [24] 1591 	cjne	r0,#0x02,00182$
      00263D B9 00 15         [24] 1592 	cjne	r1,#0x00,00182$
      002640 EE               [12] 1593 	mov	a,r6
      002641 24 04            [12] 1594 	add	a,#_u
      002643 FE               [12] 1595 	mov	r6,a
      002644 EF               [12] 1596 	mov	a,r7
      002645 34 84            [12] 1597 	addc	a,#(_u >> 8)
      002647 FF               [12] 1598 	mov	r7,a
      002648 EA               [12] 1599 	mov	a,r2
      002649 2E               [12] 1600 	add	a,r6
      00264A FA               [12] 1601 	mov	r2,a
      00264B EB               [12] 1602 	mov	a,r3
      00264C 3F               [12] 1603 	addc	a,r7
      00264D FB               [12] 1604 	mov	r3,a
      00264E 8A 82            [24] 1605 	mov	dpl,r2
      002650 8B 83            [24] 1606 	mov	dph,r3
      002652 E0               [24] 1607 	movx	a,@dptr
      002653 70 04            [24] 1608 	jnz	00183$
      002655                       1609 00182$:
                                   1610 ;	assignBit
      002655 C2 00            [12] 1611 	clr	b0
      002657 80 02            [24] 1612 	sjmp	00184$
      002659                       1613 00183$:
                                   1614 ;	assignBit
      002659 D2 00            [12] 1615 	setb	b0
      00265B                       1616 00184$:
      00265B A2 00            [12] 1617 	mov	c,b0
      00265D E4               [12] 1618 	clr	a
      00265E 33               [12] 1619 	rlc	a
      00265F 8C 82            [24] 1620 	mov	dpl,r4
      002661 8D 83            [24] 1621 	mov	dph,r5
      002663 F0               [24] 1622 	movx	@dptr,a
                                   1623 ;	life.c:91: for (x = 0; x < W; x++) {
      002664 90 8C 04         [24] 1624 	mov	dptr,#_x
      002667 E0               [24] 1625 	movx	a,@dptr
      002668 24 01            [12] 1626 	add	a,#0x01
      00266A F0               [24] 1627 	movx	@dptr,a
      00266B A3               [24] 1628 	inc	dptr
      00266C E0               [24] 1629 	movx	a,@dptr
      00266D 34 00            [12] 1630 	addc	a,#0x00
      00266F F0               [24] 1631 	movx	@dptr,a
      002670 90 8C 04         [24] 1632 	mov	dptr,#_x
      002673 E0               [24] 1633 	movx	a,@dptr
      002674 FE               [12] 1634 	mov	r6,a
      002675 A3               [24] 1635 	inc	dptr
      002676 E0               [24] 1636 	movx	a,@dptr
      002677 FF               [12] 1637 	mov	r7,a
      002678 C3               [12] 1638 	clr	c
      002679 EE               [12] 1639 	mov	a,r6
      00267A 94 20            [12] 1640 	subb	a,#0x20
      00267C EF               [12] 1641 	mov	a,r7
      00267D 64 80            [12] 1642 	xrl	a,#0x80
      00267F 94 80            [12] 1643 	subb	a,#0x80
      002681 50 03            [24] 1644 	jnc	00397$
      002683 02 24 9B         [24] 1645 	ljmp	00172$
      002686                       1646 00397$:
                                   1647 ;	life.c:90: for (y = 0; y < H; y++) {
      002686 90 8C 06         [24] 1648 	mov	dptr,#_y
      002689 E0               [24] 1649 	movx	a,@dptr
      00268A 24 01            [12] 1650 	add	a,#0x01
      00268C F0               [24] 1651 	movx	@dptr,a
      00268D A3               [24] 1652 	inc	dptr
      00268E E0               [24] 1653 	movx	a,@dptr
      00268F 34 00            [12] 1654 	addc	a,#0x00
      002691 F0               [24] 1655 	movx	@dptr,a
      002692 90 8C 06         [24] 1656 	mov	dptr,#_y
      002695 E0               [24] 1657 	movx	a,@dptr
      002696 FE               [12] 1658 	mov	r6,a
      002697 A3               [24] 1659 	inc	dptr
      002698 E0               [24] 1660 	movx	a,@dptr
      002699 FF               [12] 1661 	mov	r7,a
      00269A C3               [12] 1662 	clr	c
      00269B EE               [12] 1663 	mov	a,r6
      00269C 94 20            [12] 1664 	subb	a,#0x20
      00269E EF               [12] 1665 	mov	a,r7
      00269F 64 80            [12] 1666 	xrl	a,#0x80
      0026A1 94 80            [12] 1667 	subb	a,#0x80
      0026A3 50 03            [24] 1668 	jnc	00398$
      0026A5 02 24 94         [24] 1669 	ljmp	00174$
      0026A8                       1670 00398$:
                                   1671 ;	life.c:103: for (y = 0; y < H; y++)
      0026A8 90 8C 06         [24] 1672 	mov	dptr,#_y
      0026AB E4               [12] 1673 	clr	a
      0026AC F0               [24] 1674 	movx	@dptr,a
      0026AD A3               [24] 1675 	inc	dptr
      0026AE F0               [24] 1676 	movx	@dptr,a
      0026AF                       1677 00178$:
                                   1678 ;	life.c:104: for (x = 0; x < W; x++) {
      0026AF 90 8C 04         [24] 1679 	mov	dptr,#_x
      0026B2 E4               [12] 1680 	clr	a
      0026B3 F0               [24] 1681 	movx	@dptr,a
      0026B4 A3               [24] 1682 	inc	dptr
      0026B5 F0               [24] 1683 	movx	@dptr,a
      0026B6                       1684 00176$:
                                   1685 ;	life.c:105: if (pu[y][x] != nu[y][x])
      0026B6 90 8C 06         [24] 1686 	mov	dptr,#_y
      0026B9 E0               [24] 1687 	movx	a,@dptr
      0026BA FE               [12] 1688 	mov	r6,a
      0026BB A3               [24] 1689 	inc	dptr
      0026BC E0               [24] 1690 	movx	a,@dptr
      0026BD C4               [12] 1691 	swap	a
      0026BE 23               [12] 1692 	rl	a
      0026BF 54 E0            [12] 1693 	anl	a,#0xe0
      0026C1 CE               [12] 1694 	xch	a,r6
      0026C2 C4               [12] 1695 	swap	a
      0026C3 23               [12] 1696 	rl	a
      0026C4 CE               [12] 1697 	xch	a,r6
      0026C5 6E               [12] 1698 	xrl	a,r6
      0026C6 CE               [12] 1699 	xch	a,r6
      0026C7 54 E0            [12] 1700 	anl	a,#0xe0
      0026C9 CE               [12] 1701 	xch	a,r6
      0026CA 6E               [12] 1702 	xrl	a,r6
      0026CB FF               [12] 1703 	mov	r7,a
      0026CC EE               [12] 1704 	mov	a,r6
      0026CD 24 04            [12] 1705 	add	a,#_pu
      0026CF FC               [12] 1706 	mov	r4,a
      0026D0 EF               [12] 1707 	mov	a,r7
      0026D1 34 80            [12] 1708 	addc	a,#(_pu >> 8)
      0026D3 FD               [12] 1709 	mov	r5,a
      0026D4 90 8C 04         [24] 1710 	mov	dptr,#_x
      0026D7 E0               [24] 1711 	movx	a,@dptr
      0026D8 FA               [12] 1712 	mov	r2,a
      0026D9 A3               [24] 1713 	inc	dptr
      0026DA E0               [24] 1714 	movx	a,@dptr
      0026DB FB               [12] 1715 	mov	r3,a
      0026DC EA               [12] 1716 	mov	a,r2
      0026DD 2C               [12] 1717 	add	a,r4
      0026DE F5 82            [12] 1718 	mov	dpl,a
      0026E0 EB               [12] 1719 	mov	a,r3
      0026E1 3D               [12] 1720 	addc	a,r5
      0026E2 F5 83            [12] 1721 	mov	dph,a
      0026E4 EE               [12] 1722 	mov	a,r6
      0026E5 24 04            [12] 1723 	add	a,#_nu
      0026E7 FE               [12] 1724 	mov	r6,a
      0026E8 EF               [12] 1725 	mov	a,r7
      0026E9 34 88            [12] 1726 	addc	a,#(_nu >> 8)
      0026EB FF               [12] 1727 	mov	r7,a
      0026EC EA               [12] 1728 	mov	a,r2
      0026ED 2E               [12] 1729 	add	a,r6
      0026EE FA               [12] 1730 	mov	r2,a
      0026EF EB               [12] 1731 	mov	a,r3
      0026F0 3F               [12] 1732 	addc	a,r7
      0026F1 FB               [12] 1733 	mov	r3,a
      0026F2 E0               [24] 1734 	movx	a,@dptr
      0026F3 FF               [12] 1735 	mov	r7,a
      0026F4 8A 82            [24] 1736 	mov	dpl,r2
      0026F6 8B 83            [24] 1737 	mov	dph,r3
      0026F8 E0               [24] 1738 	movx	a,@dptr
      0026F9 FA               [12] 1739 	mov	r2,a
      0026FA EF               [12] 1740 	mov	a,r7
      0026FB B5 02 02         [24] 1741 	cjne	a,ar2,00399$
      0026FE 80 07            [24] 1742 	sjmp	00142$
      002700                       1743 00399$:
                                   1744 ;	life.c:106: cycle2 = 0;
      002700 90 8C 1A         [24] 1745 	mov	dptr,#_cycle2
      002703 E4               [12] 1746 	clr	a
      002704 F0               [24] 1747 	movx	@dptr,a
      002705 A3               [24] 1748 	inc	dptr
      002706 F0               [24] 1749 	movx	@dptr,a
      002707                       1750 00142$:
                                   1751 ;	life.c:107: if (u[y][x] != nu[y][x]) {
      002707 90 8C 06         [24] 1752 	mov	dptr,#_y
      00270A E0               [24] 1753 	movx	a,@dptr
      00270B FE               [12] 1754 	mov	r6,a
      00270C A3               [24] 1755 	inc	dptr
      00270D E0               [24] 1756 	movx	a,@dptr
      00270E C4               [12] 1757 	swap	a
      00270F 23               [12] 1758 	rl	a
      002710 54 E0            [12] 1759 	anl	a,#0xe0
      002712 CE               [12] 1760 	xch	a,r6
      002713 C4               [12] 1761 	swap	a
      002714 23               [12] 1762 	rl	a
      002715 CE               [12] 1763 	xch	a,r6
      002716 6E               [12] 1764 	xrl	a,r6
      002717 CE               [12] 1765 	xch	a,r6
      002718 54 E0            [12] 1766 	anl	a,#0xe0
      00271A CE               [12] 1767 	xch	a,r6
      00271B 6E               [12] 1768 	xrl	a,r6
      00271C FF               [12] 1769 	mov	r7,a
      00271D EE               [12] 1770 	mov	a,r6
      00271E 24 04            [12] 1771 	add	a,#_u
      002720 FC               [12] 1772 	mov	r4,a
      002721 EF               [12] 1773 	mov	a,r7
      002722 34 84            [12] 1774 	addc	a,#(_u >> 8)
      002724 FD               [12] 1775 	mov	r5,a
      002725 90 8C 04         [24] 1776 	mov	dptr,#_x
      002728 E0               [24] 1777 	movx	a,@dptr
      002729 FA               [12] 1778 	mov	r2,a
      00272A A3               [24] 1779 	inc	dptr
      00272B E0               [24] 1780 	movx	a,@dptr
      00272C FB               [12] 1781 	mov	r3,a
      00272D EA               [12] 1782 	mov	a,r2
      00272E 2C               [12] 1783 	add	a,r4
      00272F F5 82            [12] 1784 	mov	dpl,a
      002731 EB               [12] 1785 	mov	a,r3
      002732 3D               [12] 1786 	addc	a,r5
      002733 F5 83            [12] 1787 	mov	dph,a
      002735 EE               [12] 1788 	mov	a,r6
      002736 24 04            [12] 1789 	add	a,#_nu
      002738 FC               [12] 1790 	mov	r4,a
      002739 EF               [12] 1791 	mov	a,r7
      00273A 34 88            [12] 1792 	addc	a,#(_nu >> 8)
      00273C FD               [12] 1793 	mov	r5,a
      00273D EA               [12] 1794 	mov	a,r2
      00273E 2C               [12] 1795 	add	a,r4
      00273F FC               [12] 1796 	mov	r4,a
      002740 EB               [12] 1797 	mov	a,r3
      002741 3D               [12] 1798 	addc	a,r5
      002742 FD               [12] 1799 	mov	r5,a
      002743 E0               [24] 1800 	movx	a,@dptr
      002744 F9               [12] 1801 	mov	r1,a
      002745 8C 82            [24] 1802 	mov	dpl,r4
      002747 8D 83            [24] 1803 	mov	dph,r5
      002749 E0               [24] 1804 	movx	a,@dptr
      00274A FC               [12] 1805 	mov	r4,a
      00274B E9               [12] 1806 	mov	a,r1
      00274C B5 04 02         [24] 1807 	cjne	a,ar4,00400$
      00274F 80 2C            [24] 1808 	sjmp	00177$
      002751                       1809 00400$:
                                   1810 ;	life.c:108: u[y][x] = nu[y][x];
      002751 EE               [12] 1811 	mov	a,r6
      002752 24 04            [12] 1812 	add	a,#_u
      002754 FC               [12] 1813 	mov	r4,a
      002755 EF               [12] 1814 	mov	a,r7
      002756 34 84            [12] 1815 	addc	a,#(_u >> 8)
      002758 FD               [12] 1816 	mov	r5,a
      002759 EA               [12] 1817 	mov	a,r2
      00275A 2C               [12] 1818 	add	a,r4
      00275B FC               [12] 1819 	mov	r4,a
      00275C EB               [12] 1820 	mov	a,r3
      00275D 3D               [12] 1821 	addc	a,r5
      00275E FD               [12] 1822 	mov	r5,a
      00275F EE               [12] 1823 	mov	a,r6
      002760 24 04            [12] 1824 	add	a,#_nu
      002762 FE               [12] 1825 	mov	r6,a
      002763 EF               [12] 1826 	mov	a,r7
      002764 34 88            [12] 1827 	addc	a,#(_nu >> 8)
      002766 FF               [12] 1828 	mov	r7,a
      002767 EA               [12] 1829 	mov	a,r2
      002768 2E               [12] 1830 	add	a,r6
      002769 F5 82            [12] 1831 	mov	dpl,a
      00276B EB               [12] 1832 	mov	a,r3
      00276C 3F               [12] 1833 	addc	a,r7
      00276D F5 83            [12] 1834 	mov	dph,a
      00276F E0               [24] 1835 	movx	a,@dptr
      002770 FF               [12] 1836 	mov	r7,a
      002771 8C 82            [24] 1837 	mov	dpl,r4
      002773 8D 83            [24] 1838 	mov	dph,r5
      002775 F0               [24] 1839 	movx	@dptr,a
                                   1840 ;	life.c:109: fixed = 0;
      002776 90 8C 18         [24] 1841 	mov	dptr,#_fixed
      002779 E4               [12] 1842 	clr	a
      00277A F0               [24] 1843 	movx	@dptr,a
      00277B A3               [24] 1844 	inc	dptr
      00277C F0               [24] 1845 	movx	@dptr,a
      00277D                       1846 00177$:
                                   1847 ;	life.c:104: for (x = 0; x < W; x++) {
      00277D 90 8C 04         [24] 1848 	mov	dptr,#_x
      002780 E0               [24] 1849 	movx	a,@dptr
      002781 24 01            [12] 1850 	add	a,#0x01
      002783 F0               [24] 1851 	movx	@dptr,a
      002784 A3               [24] 1852 	inc	dptr
      002785 E0               [24] 1853 	movx	a,@dptr
      002786 34 00            [12] 1854 	addc	a,#0x00
      002788 F0               [24] 1855 	movx	@dptr,a
      002789 90 8C 04         [24] 1856 	mov	dptr,#_x
      00278C E0               [24] 1857 	movx	a,@dptr
      00278D FE               [12] 1858 	mov	r6,a
      00278E A3               [24] 1859 	inc	dptr
      00278F E0               [24] 1860 	movx	a,@dptr
      002790 FF               [12] 1861 	mov	r7,a
      002791 C3               [12] 1862 	clr	c
      002792 EE               [12] 1863 	mov	a,r6
      002793 94 20            [12] 1864 	subb	a,#0x20
      002795 EF               [12] 1865 	mov	a,r7
      002796 64 80            [12] 1866 	xrl	a,#0x80
      002798 94 80            [12] 1867 	subb	a,#0x80
      00279A 50 03            [24] 1868 	jnc	00401$
      00279C 02 26 B6         [24] 1869 	ljmp	00176$
      00279F                       1870 00401$:
                                   1871 ;	life.c:103: for (y = 0; y < H; y++)
      00279F 90 8C 06         [24] 1872 	mov	dptr,#_y
      0027A2 E0               [24] 1873 	movx	a,@dptr
      0027A3 24 01            [12] 1874 	add	a,#0x01
      0027A5 F0               [24] 1875 	movx	@dptr,a
      0027A6 A3               [24] 1876 	inc	dptr
      0027A7 E0               [24] 1877 	movx	a,@dptr
      0027A8 34 00            [12] 1878 	addc	a,#0x00
      0027AA F0               [24] 1879 	movx	@dptr,a
      0027AB 90 8C 06         [24] 1880 	mov	dptr,#_y
      0027AE E0               [24] 1881 	movx	a,@dptr
      0027AF FE               [12] 1882 	mov	r6,a
      0027B0 A3               [24] 1883 	inc	dptr
      0027B1 E0               [24] 1884 	movx	a,@dptr
      0027B2 FF               [12] 1885 	mov	r7,a
      0027B3 C3               [12] 1886 	clr	c
      0027B4 EE               [12] 1887 	mov	a,r6
      0027B5 94 20            [12] 1888 	subb	a,#0x20
      0027B7 EF               [12] 1889 	mov	a,r7
      0027B8 64 80            [12] 1890 	xrl	a,#0x80
      0027BA 94 80            [12] 1891 	subb	a,#0x80
      0027BC 50 03            [24] 1892 	jnc	00402$
      0027BE 02 26 AF         [24] 1893 	ljmp	00178$
      0027C1                       1894 00402$:
                                   1895 ;	life.c:141: if (fixed || cycle2) {
      0027C1 90 8C 18         [24] 1896 	mov	dptr,#_fixed
      0027C4 E0               [24] 1897 	movx	a,@dptr
      0027C5 F5 F0            [12] 1898 	mov	b,a
      0027C7 A3               [24] 1899 	inc	dptr
      0027C8 E0               [24] 1900 	movx	a,@dptr
      0027C9 45 F0            [12] 1901 	orl	a,b
      0027CB 70 0F            [24] 1902 	jnz	00103$
      0027CD 90 8C 1A         [24] 1903 	mov	dptr,#_cycle2
      0027D0 E0               [24] 1904 	movx	a,@dptr
      0027D1 F5 F0            [12] 1905 	mov	b,a
      0027D3 A3               [24] 1906 	inc	dptr
      0027D4 E0               [24] 1907 	movx	a,@dptr
      0027D5 45 F0            [12] 1908 	orl	a,b
      0027D7 70 03            [24] 1909 	jnz	00404$
      0027D9 02 21 DB         [24] 1910 	ljmp	00107$
      0027DC                       1911 00404$:
      0027DC                       1912 00103$:
                                   1913 ;	life.c:142: printf("DONE\n\r");
      0027DC 74 85            [12] 1914 	mov	a,#___str_7
      0027DE C0 E0            [24] 1915 	push	acc
      0027E0 74 3C            [12] 1916 	mov	a,#(___str_7 >> 8)
      0027E2 C0 E0            [24] 1917 	push	acc
      0027E4 74 80            [12] 1918 	mov	a,#0x80
      0027E6 C0 E0            [24] 1919 	push	acc
      0027E8 12 28 82         [24] 1920 	lcall	_printf
      0027EB 15 81            [12] 1921 	dec	sp
      0027ED 15 81            [12] 1922 	dec	sp
      0027EF 15 81            [12] 1923 	dec	sp
                                   1924 ;	life.c:143: (void)getchar();
      0027F1 12 20 7A         [24] 1925 	lcall	_getchar
                                   1926 ;	life.c:144: break;
      0027F4                       1927 00109$:
                                   1928 ;	life.c:147: if (i1) {
      0027F4 90 80 02         [24] 1929 	mov	dptr,#_i1
      0027F7 E0               [24] 1930 	movx	a,@dptr
      0027F8 F5 F0            [12] 1931 	mov	b,a
      0027FA A3               [24] 1932 	inc	dptr
      0027FB E0               [24] 1933 	movx	a,@dptr
      0027FC 45 F0            [12] 1934 	orl	a,b
      0027FE 70 03            [24] 1935 	jnz	00405$
      002800 02 20 C5         [24] 1936 	ljmp	00112$
      002803                       1937 00405$:
                                   1938 ;	life.c:148: printf("BREAK\n\r");
      002803 74 8C            [12] 1939 	mov	a,#___str_8
      002805 C0 E0            [24] 1940 	push	acc
      002807 74 3C            [12] 1941 	mov	a,#(___str_8 >> 8)
      002809 C0 E0            [24] 1942 	push	acc
      00280B 74 80            [12] 1943 	mov	a,#0x80
      00280D C0 E0            [24] 1944 	push	acc
      00280F 12 28 82         [24] 1945 	lcall	_printf
      002812 15 81            [12] 1946 	dec	sp
      002814 15 81            [12] 1947 	dec	sp
      002816 15 81            [12] 1948 	dec	sp
                                   1949 ;	life.c:149: (void)getchar();
      002818 12 20 7A         [24] 1950 	lcall	_getchar
      00281B 02 20 C5         [24] 1951 	ljmp	00112$
      00281E                       1952 00114$:
                                   1953 ;	life.c:153: EA = 0;
                                   1954 ;	assignBit
      00281E C2 AF            [12] 1955 	clr	_EA
                                   1956 ;	life.c:155: printf("TERM\n\r");
      002820 74 94            [12] 1957 	mov	a,#___str_9
      002822 C0 E0            [24] 1958 	push	acc
      002824 74 3C            [12] 1959 	mov	a,#(___str_9 >> 8)
      002826 C0 E0            [24] 1960 	push	acc
      002828 74 80            [12] 1961 	mov	a,#0x80
      00282A C0 E0            [24] 1962 	push	acc
      00282C 12 28 82         [24] 1963 	lcall	_printf
      00282F 15 81            [12] 1964 	dec	sp
      002831 15 81            [12] 1965 	dec	sp
      002833 15 81            [12] 1966 	dec	sp
                                   1967 ;	life.c:156: (void)getchar();
      002835 12 20 7A         [24] 1968 	lcall	_getchar
                                   1969 ;	life.c:160: __endasm;
      002838 02 00 00         [24] 1970 	ljmp	0
                                   1971 ;	life.c:161: }
      00283B 22               [24] 1972 	ret
                                   1973 	.area CSEG    (CODE)
                                   1974 	.area CONST   (CODE)
                                   1975 	.area CONST   (CODE)
      003C53                       1976 ___str_0:
      003C53 25 30 34 78           1977 	.ascii "%04x"
      003C57 00                    1978 	.db 0x00
                                   1979 	.area CSEG    (CODE)
                                   1980 	.area CONST   (CODE)
      003C58                       1981 ___str_1:
      003C58 1B                    1982 	.db 0x1b
      003C59 5B 32 4A              1983 	.ascii "[2J"
      003C5C 1B                    1984 	.db 0x1b
      003C5D 5B 6D                 1985 	.ascii "[m"
      003C5F 00                    1986 	.db 0x00
                                   1987 	.area CSEG    (CODE)
                                   1988 	.area CONST   (CODE)
      003C60                       1989 ___str_2:
      003C60 0D                    1990 	.db 0x0d
      003C61 0A                    1991 	.db 0x0a
      003C62 00                    1992 	.db 0x00
                                   1993 	.area CSEG    (CODE)
                                   1994 	.area CONST   (CODE)
      003C63                       1995 ___str_3:
      003C63 1B                    1996 	.db 0x1b
      003C64 5B 30 31 6D 5B 5D     1997 	.ascii "[01m[]"
      003C6A 1B                    1998 	.db 0x1b
      003C6B 5B 6D                 1999 	.ascii "[m"
      003C6D 00                    2000 	.db 0x00
                                   2001 	.area CSEG    (CODE)
                                   2002 	.area CONST   (CODE)
      003C6E                       2003 ___str_4:
      003C6E 2D 2D                 2004 	.ascii "--"
      003C70 00                    2005 	.db 0x00
                                   2006 	.area CSEG    (CODE)
                                   2007 	.area CONST   (CODE)
      003C71                       2008 ___str_5:
      003C71 1B                    2009 	.db 0x1b
      003C72 5B 32 4A              2010 	.ascii "[2J"
      003C75 1B                    2011 	.db 0x1b
      003C76 5B 6D 49 4E 49 54     2012 	.ascii "[mINIT"
      003C7C 0A                    2013 	.db 0x0a
      003C7D 0D                    2014 	.db 0x0d
      003C7E 00                    2015 	.db 0x00
                                   2016 	.area CSEG    (CODE)
                                   2017 	.area CONST   (CODE)
      003C7F                       2018 ___str_6:
      003C7F 52 44 59              2019 	.ascii "RDY"
      003C82 0A                    2020 	.db 0x0a
      003C83 0D                    2021 	.db 0x0d
      003C84 00                    2022 	.db 0x00
                                   2023 	.area CSEG    (CODE)
                                   2024 	.area CONST   (CODE)
      003C85                       2025 ___str_7:
      003C85 44 4F 4E 45           2026 	.ascii "DONE"
      003C89 0A                    2027 	.db 0x0a
      003C8A 0D                    2028 	.db 0x0d
      003C8B 00                    2029 	.db 0x00
                                   2030 	.area CSEG    (CODE)
                                   2031 	.area CONST   (CODE)
      003C8C                       2032 ___str_8:
      003C8C 42 52 45 41 4B        2033 	.ascii "BREAK"
      003C91 0A                    2034 	.db 0x0a
      003C92 0D                    2035 	.db 0x0d
      003C93 00                    2036 	.db 0x00
                                   2037 	.area CSEG    (CODE)
                                   2038 	.area CONST   (CODE)
      003C94                       2039 ___str_9:
      003C94 54 45 52 4D           2040 	.ascii "TERM"
      003C98 0A                    2041 	.db 0x0a
      003C99 0D                    2042 	.db 0x0d
      003C9A 00                    2043 	.db 0x00
                                   2044 	.area CSEG    (CODE)
                                   2045 	.area XINIT   (CODE)
                                   2046 	.area CABS    (ABS,CODE)
