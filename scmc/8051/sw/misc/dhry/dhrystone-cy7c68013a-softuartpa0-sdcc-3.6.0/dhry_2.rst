                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module dhry_2
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _strcmp
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _FL
                                     19 	.globl _P
                                     20 	.globl _TF2
                                     21 	.globl _EXF2
                                     22 	.globl _RCLK
                                     23 	.globl _TCLK
                                     24 	.globl _EXEN2
                                     25 	.globl _TR2
                                     26 	.globl _C_T2
                                     27 	.globl _CP_RL2
                                     28 	.globl _T2CON_7
                                     29 	.globl _T2CON_6
                                     30 	.globl _T2CON_5
                                     31 	.globl _T2CON_4
                                     32 	.globl _T2CON_3
                                     33 	.globl _T2CON_2
                                     34 	.globl _T2CON_1
                                     35 	.globl _T2CON_0
                                     36 	.globl _PT2
                                     37 	.globl _PS
                                     38 	.globl _PT1
                                     39 	.globl _PX1
                                     40 	.globl _PT0
                                     41 	.globl _PX0
                                     42 	.globl _RD
                                     43 	.globl _WR
                                     44 	.globl _T1
                                     45 	.globl _T0
                                     46 	.globl _INT1
                                     47 	.globl _INT0
                                     48 	.globl _TXD
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _EA
                                     59 	.globl _ET2
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _T2EX
                                     82 	.globl _T2
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _TF1
                                     92 	.globl _TR1
                                     93 	.globl _TF0
                                     94 	.globl _TR0
                                     95 	.globl _IE1
                                     96 	.globl _IT1
                                     97 	.globl _IE0
                                     98 	.globl _IT0
                                     99 	.globl _P0_7
                                    100 	.globl _P0_6
                                    101 	.globl _P0_5
                                    102 	.globl _P0_4
                                    103 	.globl _P0_3
                                    104 	.globl _P0_2
                                    105 	.globl _P0_1
                                    106 	.globl _P0_0
                                    107 	.globl _B
                                    108 	.globl _A
                                    109 	.globl _ACC
                                    110 	.globl _PSW
                                    111 	.globl _TH2
                                    112 	.globl _TL2
                                    113 	.globl _RCAP2H
                                    114 	.globl _RCAP2L
                                    115 	.globl _T2MOD
                                    116 	.globl _T2CON
                                    117 	.globl _IP
                                    118 	.globl _P3
                                    119 	.globl _IE
                                    120 	.globl _P2
                                    121 	.globl _SBUF
                                    122 	.globl _SCON
                                    123 	.globl _P1
                                    124 	.globl _TH1
                                    125 	.globl _TH0
                                    126 	.globl _TL1
                                    127 	.globl _TL0
                                    128 	.globl _TMOD
                                    129 	.globl _TCON
                                    130 	.globl _PCON
                                    131 	.globl _DPH
                                    132 	.globl _DPL
                                    133 	.globl _SP
                                    134 	.globl _P0
                                    135 	.globl _Func_2_PARM_2
                                    136 	.globl _Func_1_PARM_2
                                    137 	.globl _Proc_8_PARM_4
                                    138 	.globl _Proc_8_PARM_3
                                    139 	.globl _Proc_8_PARM_2
                                    140 	.globl _Proc_7_PARM_3
                                    141 	.globl _Proc_7_PARM_2
                                    142 	.globl _Proc_6_PARM_2
                                    143 	.globl _Proc_6
                                    144 	.globl _Proc_7
                                    145 	.globl _Proc_8
                                    146 	.globl _Func_1
                                    147 	.globl _Func_2
                                    148 	.globl _Func_3
                                    149 ;--------------------------------------------------------
                                    150 ; special function registers
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0	=	0x0080
                           000081   155 _SP	=	0x0081
                           000082   156 _DPL	=	0x0082
                           000083   157 _DPH	=	0x0083
                           000087   158 _PCON	=	0x0087
                           000088   159 _TCON	=	0x0088
                           000089   160 _TMOD	=	0x0089
                           00008A   161 _TL0	=	0x008a
                           00008B   162 _TL1	=	0x008b
                           00008C   163 _TH0	=	0x008c
                           00008D   164 _TH1	=	0x008d
                           000090   165 _P1	=	0x0090
                           000098   166 _SCON	=	0x0098
                           000099   167 _SBUF	=	0x0099
                           0000A0   168 _P2	=	0x00a0
                           0000A8   169 _IE	=	0x00a8
                           0000B0   170 _P3	=	0x00b0
                           0000B8   171 _IP	=	0x00b8
                           0000C8   172 _T2CON	=	0x00c8
                           0000C9   173 _T2MOD	=	0x00c9
                           0000CA   174 _RCAP2L	=	0x00ca
                           0000CB   175 _RCAP2H	=	0x00cb
                           0000CC   176 _TL2	=	0x00cc
                           0000CD   177 _TH2	=	0x00cd
                           0000D0   178 _PSW	=	0x00d0
                           0000E0   179 _ACC	=	0x00e0
                           0000E0   180 _A	=	0x00e0
                           0000F0   181 _B	=	0x00f0
                                    182 ;--------------------------------------------------------
                                    183 ; special function bits
                                    184 ;--------------------------------------------------------
                                    185 	.area RSEG    (ABS,DATA)
      000000                        186 	.org 0x0000
                           000080   187 _P0_0	=	0x0080
                           000081   188 _P0_1	=	0x0081
                           000082   189 _P0_2	=	0x0082
                           000083   190 _P0_3	=	0x0083
                           000084   191 _P0_4	=	0x0084
                           000085   192 _P0_5	=	0x0085
                           000086   193 _P0_6	=	0x0086
                           000087   194 _P0_7	=	0x0087
                           000088   195 _IT0	=	0x0088
                           000089   196 _IE0	=	0x0089
                           00008A   197 _IT1	=	0x008a
                           00008B   198 _IE1	=	0x008b
                           00008C   199 _TR0	=	0x008c
                           00008D   200 _TF0	=	0x008d
                           00008E   201 _TR1	=	0x008e
                           00008F   202 _TF1	=	0x008f
                           000090   203 _P1_0	=	0x0090
                           000091   204 _P1_1	=	0x0091
                           000092   205 _P1_2	=	0x0092
                           000093   206 _P1_3	=	0x0093
                           000094   207 _P1_4	=	0x0094
                           000095   208 _P1_5	=	0x0095
                           000096   209 _P1_6	=	0x0096
                           000097   210 _P1_7	=	0x0097
                           000090   211 _T2	=	0x0090
                           000091   212 _T2EX	=	0x0091
                           000098   213 _RI	=	0x0098
                           000099   214 _TI	=	0x0099
                           00009A   215 _RB8	=	0x009a
                           00009B   216 _TB8	=	0x009b
                           00009C   217 _REN	=	0x009c
                           00009D   218 _SM2	=	0x009d
                           00009E   219 _SM1	=	0x009e
                           00009F   220 _SM0	=	0x009f
                           0000A0   221 _P2_0	=	0x00a0
                           0000A1   222 _P2_1	=	0x00a1
                           0000A2   223 _P2_2	=	0x00a2
                           0000A3   224 _P2_3	=	0x00a3
                           0000A4   225 _P2_4	=	0x00a4
                           0000A5   226 _P2_5	=	0x00a5
                           0000A6   227 _P2_6	=	0x00a6
                           0000A7   228 _P2_7	=	0x00a7
                           0000A8   229 _EX0	=	0x00a8
                           0000A9   230 _ET0	=	0x00a9
                           0000AA   231 _EX1	=	0x00aa
                           0000AB   232 _ET1	=	0x00ab
                           0000AC   233 _ES	=	0x00ac
                           0000AD   234 _ET2	=	0x00ad
                           0000AF   235 _EA	=	0x00af
                           0000B0   236 _P3_0	=	0x00b0
                           0000B1   237 _P3_1	=	0x00b1
                           0000B2   238 _P3_2	=	0x00b2
                           0000B3   239 _P3_3	=	0x00b3
                           0000B4   240 _P3_4	=	0x00b4
                           0000B5   241 _P3_5	=	0x00b5
                           0000B6   242 _P3_6	=	0x00b6
                           0000B7   243 _P3_7	=	0x00b7
                           0000B0   244 _RXD	=	0x00b0
                           0000B1   245 _TXD	=	0x00b1
                           0000B2   246 _INT0	=	0x00b2
                           0000B3   247 _INT1	=	0x00b3
                           0000B4   248 _T0	=	0x00b4
                           0000B5   249 _T1	=	0x00b5
                           0000B6   250 _WR	=	0x00b6
                           0000B7   251 _RD	=	0x00b7
                           0000B8   252 _PX0	=	0x00b8
                           0000B9   253 _PT0	=	0x00b9
                           0000BA   254 _PX1	=	0x00ba
                           0000BB   255 _PT1	=	0x00bb
                           0000BC   256 _PS	=	0x00bc
                           0000BD   257 _PT2	=	0x00bd
                           0000C8   258 _T2CON_0	=	0x00c8
                           0000C9   259 _T2CON_1	=	0x00c9
                           0000CA   260 _T2CON_2	=	0x00ca
                           0000CB   261 _T2CON_3	=	0x00cb
                           0000CC   262 _T2CON_4	=	0x00cc
                           0000CD   263 _T2CON_5	=	0x00cd
                           0000CE   264 _T2CON_6	=	0x00ce
                           0000CF   265 _T2CON_7	=	0x00cf
                           0000C8   266 _CP_RL2	=	0x00c8
                           0000C9   267 _C_T2	=	0x00c9
                           0000CA   268 _TR2	=	0x00ca
                           0000CB   269 _EXEN2	=	0x00cb
                           0000CC   270 _TCLK	=	0x00cc
                           0000CD   271 _RCLK	=	0x00cd
                           0000CE   272 _EXF2	=	0x00ce
                           0000CF   273 _TF2	=	0x00cf
                           0000D0   274 _P	=	0x00d0
                           0000D1   275 _FL	=	0x00d1
                           0000D2   276 _OV	=	0x00d2
                           0000D3   277 _RS0	=	0x00d3
                           0000D4   278 _RS1	=	0x00d4
                           0000D5   279 _F0	=	0x00d5
                           0000D6   280 _AC	=	0x00d6
                           0000D7   281 _CY	=	0x00d7
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable register banks
                                    284 ;--------------------------------------------------------
                                    285 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        286 	.ds 8
                                    287 ;--------------------------------------------------------
                                    288 ; internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area DSEG    (DATA)
      000019                        291 _Proc_8_sloc0_1_0:
      000019                        292 	.ds 2
      00001B                        293 _Proc_8_sloc1_1_0:
      00001B                        294 	.ds 3
      00001E                        295 _Proc_8_sloc2_1_0:
      00001E                        296 	.ds 3
      000021                        297 _Proc_8_sloc3_1_0:
      000021                        298 	.ds 2
      000023                        299 _Proc_8_sloc4_1_0:
      000023                        300 	.ds 2
      000025                        301 _Proc_8_sloc5_1_0:
      000025                        302 	.ds 3
      000028                        303 _Func_2_sloc0_1_0:
      000028                        304 	.ds 3
                                    305 ;--------------------------------------------------------
                                    306 ; overlayable items in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 ;--------------------------------------------------------
                                    309 ; indirectly addressable internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area ISEG    (DATA)
                                    312 ;--------------------------------------------------------
                                    313 ; absolute internal ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area IABS    (ABS,DATA)
                                    316 	.area IABS    (ABS,DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; bit data
                                    319 ;--------------------------------------------------------
                                    320 	.area BSEG    (BIT)
                                    321 ;--------------------------------------------------------
                                    322 ; paged external ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area PSEG    (PAG,XDATA)
                                    325 ;--------------------------------------------------------
                                    326 ; external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XSEG    (XDATA)
      0094A7                        329 _Proc_6_PARM_2:
      0094A7                        330 	.ds 3
      0094AA                        331 _Proc_6_Enum_Val_Par_65536_51:
      0094AA                        332 	.ds 1
      0094AB                        333 _Proc_7_PARM_2:
      0094AB                        334 	.ds 2
      0094AD                        335 _Proc_7_PARM_3:
      0094AD                        336 	.ds 3
      0094B0                        337 _Proc_7_Int_1_Par_Val_65536_54:
      0094B0                        338 	.ds 2
      0094B2                        339 _Proc_8_PARM_2:
      0094B2                        340 	.ds 3
      0094B5                        341 _Proc_8_PARM_3:
      0094B5                        342 	.ds 2
      0094B7                        343 _Proc_8_PARM_4:
      0094B7                        344 	.ds 2
      0094B9                        345 _Proc_8_Arr_1_Par_Ref_65536_56:
      0094B9                        346 	.ds 3
      0094BC                        347 _Func_1_PARM_2:
      0094BC                        348 	.ds 1
      0094BD                        349 _Func_1_Ch_1_Par_Val_65536_59:
      0094BD                        350 	.ds 1
      0094BE                        351 _Func_2_PARM_2:
      0094BE                        352 	.ds 3
      0094C1                        353 _Func_2_Str_1_Par_Ref_65536_62:
      0094C1                        354 	.ds 3
      0094C4                        355 _Func_2_Int_Loc_65536_63:
      0094C4                        356 	.ds 2
      0094C6                        357 _Func_2_Ch_Loc_65536_63:
      0094C6                        358 	.ds 1
      0094C7                        359 _Func_3_Enum_Par_Val_65536_67:
      0094C7                        360 	.ds 1
                                    361 ;--------------------------------------------------------
                                    362 ; absolute external ram data
                                    363 ;--------------------------------------------------------
                                    364 	.area XABS    (ABS,XDATA)
                                    365 ;--------------------------------------------------------
                                    366 ; external initialized ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area XISEG   (XDATA)
                                    369 	.area HOME    (CODE)
                                    370 	.area GSINIT0 (CODE)
                                    371 	.area GSINIT1 (CODE)
                                    372 	.area GSINIT2 (CODE)
                                    373 	.area GSINIT3 (CODE)
                                    374 	.area GSINIT4 (CODE)
                                    375 	.area GSINIT5 (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area CSEG    (CODE)
                                    379 ;--------------------------------------------------------
                                    380 ; global & static initialisations
                                    381 ;--------------------------------------------------------
                                    382 	.area HOME    (CODE)
                                    383 	.area GSINIT  (CODE)
                                    384 	.area GSFINAL (CODE)
                                    385 	.area GSINIT  (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; Home
                                    388 ;--------------------------------------------------------
                                    389 	.area HOME    (CODE)
                                    390 	.area HOME    (CODE)
                                    391 ;--------------------------------------------------------
                                    392 ; code
                                    393 ;--------------------------------------------------------
                                    394 	.area CSEG    (CODE)
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'Proc_6'
                                    397 ;------------------------------------------------------------
                                    398 ;Enum_Ref_Par              Allocated with name '_Proc_6_PARM_2'
                                    399 ;Enum_Val_Par              Allocated with name '_Proc_6_Enum_Val_Par_65536_51'
                                    400 ;------------------------------------------------------------
                                    401 ;	dhry_2.c:30: void Proc_6 (Enumeration Enum_Val_Par, Enumeration *Enum_Ref_Par)
                                    402 ;	-----------------------------------------
                                    403 ;	 function Proc_6
                                    404 ;	-----------------------------------------
      00308A                        405 _Proc_6:
                           000007   406 	ar7 = 0x07
                           000006   407 	ar6 = 0x06
                           000005   408 	ar5 = 0x05
                           000004   409 	ar4 = 0x04
                           000003   410 	ar3 = 0x03
                           000002   411 	ar2 = 0x02
                           000001   412 	ar1 = 0x01
                           000000   413 	ar0 = 0x00
                                    414 ;	genReceive
      00308A E5 82            [12]  415 	mov	a,dpl
      00308C 90 94 AA         [24]  416 	mov	dptr,#_Proc_6_Enum_Val_Par_65536_51
      00308F F0               [24]  417 	movx	@dptr,a
                                    418 ;	dhry_2.c:35: *Enum_Ref_Par = Enum_Val_Par;
                                    419 ;	genAssign
      003090 90 94 A7         [24]  420 	mov	dptr,#_Proc_6_PARM_2
      003093 E0               [24]  421 	movx	a,@dptr
      003094 FD               [12]  422 	mov	r5,a
      003095 A3               [24]  423 	inc	dptr
      003096 E0               [24]  424 	movx	a,@dptr
      003097 FE               [12]  425 	mov	r6,a
      003098 A3               [24]  426 	inc	dptr
      003099 E0               [24]  427 	movx	a,@dptr
      00309A FF               [12]  428 	mov	r7,a
                                    429 ;	genAssign
      00309B 90 94 AA         [24]  430 	mov	dptr,#_Proc_6_Enum_Val_Par_65536_51
      00309E E0               [24]  431 	movx	a,@dptr
                                    432 ;	genPointerSet
                                    433 ;	genGenPointerSet
      00309F FC               [12]  434 	mov	r4,a
      0030A0 8D 82            [24]  435 	mov	dpl,r5
      0030A2 8E 83            [24]  436 	mov	dph,r6
      0030A4 8F F0            [24]  437 	mov	b,r7
                                    438 ;	Peephole 191	removed redundant mov
      0030A6 12 37 8F         [24]  439 	lcall	__gptrput
                                    440 ;	dhry_2.c:36: if (! Func_3 (Enum_Val_Par))
                                    441 ;	genCall
      0030A9 8C 82            [24]  442 	mov	dpl,r4
      0030AB C0 07            [24]  443 	push	ar7
      0030AD C0 06            [24]  444 	push	ar6
      0030AF C0 05            [24]  445 	push	ar5
      0030B1 12 34 92         [24]  446 	lcall	_Func_3
      0030B4 E5 82            [12]  447 	mov	a,dpl
      0030B6 85 83 F0         [24]  448 	mov	b,dph
      0030B9 D0 05            [24]  449 	pop	ar5
      0030BB D0 06            [24]  450 	pop	ar6
      0030BD D0 07            [24]  451 	pop	ar7
                                    452 ;	genIfx
      0030BF 45 F0            [12]  453 	orl	a,b
                                    454 ;	genIfxJump
                                    455 ;	Peephole 108.b	removed ljmp by inverse jump logic
      0030C1 70 0B            [24]  456 	jnz	00102$
                                    457 ;	Peephole 500	removed redundant label 00126$
                                    458 ;	dhry_2.c:38: *Enum_Ref_Par = Ident_4;
                                    459 ;	genPointerSet
                                    460 ;	genGenPointerSet
      0030C3 8D 82            [24]  461 	mov	dpl,r5
      0030C5 8E 83            [24]  462 	mov	dph,r6
      0030C7 8F F0            [24]  463 	mov	b,r7
      0030C9 74 03            [12]  464 	mov	a,#0x03
      0030CB 12 37 8F         [24]  465 	lcall	__gptrput
      0030CE                        466 00102$:
                                    467 ;	dhry_2.c:39: switch (Enum_Val_Par)
                                    468 ;	genAssign
      0030CE 90 94 AA         [24]  469 	mov	dptr,#_Proc_6_Enum_Val_Par_65536_51
      0030D1 E0               [24]  470 	movx	a,@dptr
                                    471 ;	genCmpGt
                                    472 ;	genCmp
                                    473 ;	genIfxJump
                                    474 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
      0030D2 FC               [12]  475 	mov  r4,a
                                    476 ;	Peephole 177.a	removed redundant mov
      0030D3 24 FB            [12]  477 	add	a,#0xff - 0x04
                                    478 ;	Peephole 112.b	changed ljmp to sjmp
                                    479 ;	Peephole 160.a	removed sjmp by inverse jump logic
      0030D5 40 5C            [24]  480 	jc	00112$
                                    481 ;	Peephole 500	removed redundant label 00127$
                                    482 ;	genJumpTab
      0030D7 EC               [12]  483 	mov	a,r4
      0030D8 2C               [12]  484 	add	a,r4
                                    485 ;	dhry_2.c:41: case Ident_1: 
                                    486 ;	Peephole 260.b	used sjmp in jumptable
      0030D9 90 30 DD         [24]  487 	mov	dptr,#00128$
      0030DC 73               [24]  488 	jmp	@a+dptr
      0030DD                        489 00128$:
      0030DD 80 08            [24]  490 	sjmp	00103$
      0030DF 80 10            [24]  491 	sjmp	00104$
      0030E1 80 3A            [24]  492 	sjmp	00108$
      0030E3 80 4E            [24]  493 	sjmp	00112$
      0030E5 80 41            [24]  494 	sjmp	00110$
      0030E7                        495 00103$:
                                    496 ;	dhry_2.c:42: *Enum_Ref_Par = Ident_1;
                                    497 ;	genPointerSet
                                    498 ;	genGenPointerSet
      0030E7 8D 82            [24]  499 	mov	dpl,r5
      0030E9 8E 83            [24]  500 	mov	dph,r6
      0030EB 8F F0            [24]  501 	mov	b,r7
                                    502 ;	Peephole 181	changed mov to clr
      0030ED E4               [12]  503 	clr	a
                                    504 ;	dhry_2.c:43: break;
                                    505 ;	dhry_2.c:44: case Ident_2: 
                                    506 ;	Peephole 112.b	changed ljmp to sjmp
                                    507 ;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
                                    508 ;	Peephole 400.a	replaced lcall/ret with ljmp
      0030EE 02 37 8F         [24]  509 	ljmp	__gptrput
      0030F1                        510 00104$:
                                    511 ;	dhry_2.c:45: if (Int_Glob > 100)
                                    512 ;	genAssign
      0030F1 90 80 06         [24]  513 	mov	dptr,#_Int_Glob
      0030F4 E0               [24]  514 	movx	a,@dptr
      0030F5 FB               [12]  515 	mov	r3,a
      0030F6 A3               [24]  516 	inc	dptr
      0030F7 E0               [24]  517 	movx	a,@dptr
      0030F8 FC               [12]  518 	mov	r4,a
                                    519 ;	genCmpGt
                                    520 ;	genCmp
      0030F9 C3               [12]  521 	clr	c
      0030FA 74 64            [12]  522 	mov	a,#0x64
      0030FC 9B               [12]  523 	subb	a,r3
                                    524 ;	Peephole 159	avoided xrl during execution
      0030FD 74 80            [12]  525 	mov	a,#(0x00 ^ 0x80)
      0030FF 8C F0            [24]  526 	mov	b,r4
      003101 63 F0 80         [24]  527 	xrl	b,#0x80
      003104 95 F0            [12]  528 	subb	a,b
                                    529 ;	genIfxJump
                                    530 ;	Peephole 108.a	removed ljmp by inverse jump logic
      003106 50 0A            [24]  531 	jnc	00106$
                                    532 ;	Peephole 500	removed redundant label 00129$
                                    533 ;	dhry_2.c:47: *Enum_Ref_Par = Ident_1;
                                    534 ;	genPointerSet
                                    535 ;	genGenPointerSet
      003108 8D 82            [24]  536 	mov	dpl,r5
      00310A 8E 83            [24]  537 	mov	dph,r6
      00310C 8F F0            [24]  538 	mov	b,r7
                                    539 ;	Peephole 181	changed mov to clr
      00310E E4               [12]  540 	clr	a
                                    541 ;	Peephole 112.b	changed ljmp to sjmp
                                    542 ;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
                                    543 ;	Peephole 400.a	replaced lcall/ret with ljmp
      00310F 02 37 8F         [24]  544 	ljmp	__gptrput
      003112                        545 00106$:
                                    546 ;	dhry_2.c:48: else *Enum_Ref_Par = Ident_4;
                                    547 ;	genPointerSet
                                    548 ;	genGenPointerSet
      003112 8D 82            [24]  549 	mov	dpl,r5
      003114 8E 83            [24]  550 	mov	dph,r6
      003116 8F F0            [24]  551 	mov	b,r7
      003118 74 03            [12]  552 	mov	a,#0x03
                                    553 ;	dhry_2.c:49: break;
                                    554 ;	dhry_2.c:50: case Ident_3: /* executed */
                                    555 ;	Peephole 112.b	changed ljmp to sjmp
                                    556 ;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
                                    557 ;	Peephole 400.a	replaced lcall/ret with ljmp
      00311A 02 37 8F         [24]  558 	ljmp	__gptrput
      00311D                        559 00108$:
                                    560 ;	dhry_2.c:51: *Enum_Ref_Par = Ident_2;
                                    561 ;	genPointerSet
                                    562 ;	genGenPointerSet
      00311D 8D 82            [24]  563 	mov	dpl,r5
      00311F 8E 83            [24]  564 	mov	dph,r6
      003121 8F F0            [24]  565 	mov	b,r7
      003123 74 01            [12]  566 	mov	a,#0x01
                                    567 ;	dhry_2.c:52: break;
                                    568 ;	dhry_2.c:54: case Ident_5: 
                                    569 ;	Peephole 112.b	changed ljmp to sjmp
                                    570 ;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
                                    571 ;	Peephole 400.a	replaced lcall/ret with ljmp
      003125 02 37 8F         [24]  572 	ljmp	__gptrput
      003128                        573 00110$:
                                    574 ;	dhry_2.c:55: *Enum_Ref_Par = Ident_3;
                                    575 ;	genPointerSet
                                    576 ;	genGenPointerSet
      003128 8D 82            [24]  577 	mov	dpl,r5
      00312A 8E 83            [24]  578 	mov	dph,r6
      00312C 8F F0            [24]  579 	mov	b,r7
      00312E 74 02            [12]  580 	mov	a,#0x02
                                    581 ;	dhry_2.c:57: } /* switch */
                                    582 ;	dhry_2.c:58: } /* Proc_6 */
                                    583 ;	Peephole 400.c	replaced lcall with ljmp
      003130 02 37 8F         [24]  584 	ljmp	__gptrput
      003133                        585 00112$:
      003133 22               [24]  586 	ret
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'Proc_7'
                                    589 ;------------------------------------------------------------
                                    590 ;Int_2_Par_Val             Allocated with name '_Proc_7_PARM_2'
                                    591 ;Int_Par_Ref               Allocated with name '_Proc_7_PARM_3'
                                    592 ;Int_1_Par_Val             Allocated with name '_Proc_7_Int_1_Par_Val_65536_54'
                                    593 ;Int_Loc                   Allocated with name '_Proc_7_Int_Loc_65536_55'
                                    594 ;------------------------------------------------------------
                                    595 ;	dhry_2.c:61: void Proc_7 (One_Fifty Int_1_Par_Val, One_Fifty Int_2_Par_Val, One_Fifty *Int_Par_Ref)
                                    596 ;	-----------------------------------------
                                    597 ;	 function Proc_7
                                    598 ;	-----------------------------------------
      003134                        599 _Proc_7:
                                    600 ;	genReceive
      003134 AF 83            [24]  601 	mov	r7,dph
      003136 E5 82            [12]  602 	mov	a,dpl
      003138 90 94 B0         [24]  603 	mov	dptr,#_Proc_7_Int_1_Par_Val_65536_54
      00313B F0               [24]  604 	movx	@dptr,a
      00313C EF               [12]  605 	mov	a,r7
      00313D A3               [24]  606 	inc	dptr
      00313E F0               [24]  607 	movx	@dptr,a
                                    608 ;	dhry_2.c:73: Int_Loc = Int_1_Par_Val + 2;
                                    609 ;	genAssign
      00313F 90 94 B0         [24]  610 	mov	dptr,#_Proc_7_Int_1_Par_Val_65536_54
      003142 E0               [24]  611 	movx	a,@dptr
      003143 FE               [12]  612 	mov	r6,a
      003144 A3               [24]  613 	inc	dptr
      003145 E0               [24]  614 	movx	a,@dptr
      003146 FF               [12]  615 	mov	r7,a
                                    616 ;	genPlus
                                    617 ;	genPlusIncr
      003147 74 02            [12]  618 	mov	a,#0x02
      003149 2E               [12]  619 	add	a,r6
      00314A FE               [12]  620 	mov	r6,a
                                    621 ;	Peephole 181	changed mov to clr
      00314B E4               [12]  622 	clr	a
      00314C 3F               [12]  623 	addc	a,r7
      00314D FF               [12]  624 	mov	r7,a
                                    625 ;	dhry_2.c:74: *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
                                    626 ;	genAssign
      00314E 90 94 AD         [24]  627 	mov	dptr,#_Proc_7_PARM_3
      003151 E0               [24]  628 	movx	a,@dptr
      003152 FB               [12]  629 	mov	r3,a
      003153 A3               [24]  630 	inc	dptr
      003154 E0               [24]  631 	movx	a,@dptr
      003155 FC               [12]  632 	mov	r4,a
      003156 A3               [24]  633 	inc	dptr
      003157 E0               [24]  634 	movx	a,@dptr
      003158 FD               [12]  635 	mov	r5,a
                                    636 ;	genAssign
      003159 90 94 AB         [24]  637 	mov	dptr,#_Proc_7_PARM_2
      00315C E0               [24]  638 	movx	a,@dptr
      00315D F9               [12]  639 	mov	r1,a
      00315E A3               [24]  640 	inc	dptr
      00315F E0               [24]  641 	movx	a,@dptr
      003160 FA               [12]  642 	mov	r2,a
                                    643 ;	genPlus
      003161 EE               [12]  644 	mov	a,r6
      003162 29               [12]  645 	add	a,r1
      003163 FE               [12]  646 	mov	r6,a
      003164 EF               [12]  647 	mov	a,r7
      003165 3A               [12]  648 	addc	a,r2
      003166 FF               [12]  649 	mov	r7,a
                                    650 ;	genPointerSet
                                    651 ;	genGenPointerSet
      003167 8B 82            [24]  652 	mov	dpl,r3
      003169 8C 83            [24]  653 	mov	dph,r4
      00316B 8D F0            [24]  654 	mov	b,r5
      00316D EE               [12]  655 	mov	a,r6
      00316E 12 37 8F         [24]  656 	lcall	__gptrput
      003171 A3               [24]  657 	inc	dptr
      003172 EF               [12]  658 	mov	a,r7
                                    659 ;	dhry_2.c:75: } /* Proc_7 */
                                    660 ;	Peephole 400.b	replaced lcall/ret with ljmp
      003173 02 37 8F         [24]  661 	ljmp	__gptrput
                                    662 ;
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'Proc_8'
                                    665 ;------------------------------------------------------------
                                    666 ;sloc0                     Allocated with name '_Proc_8_sloc0_1_0'
                                    667 ;sloc1                     Allocated with name '_Proc_8_sloc1_1_0'
                                    668 ;sloc2                     Allocated with name '_Proc_8_sloc2_1_0'
                                    669 ;sloc3                     Allocated with name '_Proc_8_sloc3_1_0'
                                    670 ;sloc4                     Allocated with name '_Proc_8_sloc4_1_0'
                                    671 ;sloc5                     Allocated with name '_Proc_8_sloc5_1_0'
                                    672 ;Arr_2_Par_Ref             Allocated with name '_Proc_8_PARM_2'
                                    673 ;Int_1_Par_Val             Allocated with name '_Proc_8_PARM_3'
                                    674 ;Int_2_Par_Val             Allocated with name '_Proc_8_PARM_4'
                                    675 ;Arr_1_Par_Ref             Allocated with name '_Proc_8_Arr_1_Par_Ref_65536_56'
                                    676 ;Int_Index                 Allocated with name '_Proc_8_Int_Index_65536_57'
                                    677 ;Int_Loc                   Allocated with name '_Proc_8_Int_Loc_65536_57'
                                    678 ;------------------------------------------------------------
                                    679 ;	dhry_2.c:78: void Proc_8 (Arr_1_Dim Arr_1_Par_Ref, Arr_2_Dim Arr_2_Par_Ref, int Int_1_Par_Val, int Int_2_Par_Val)
                                    680 ;	-----------------------------------------
                                    681 ;	 function Proc_8
                                    682 ;	-----------------------------------------
      003176                        683 _Proc_8:
                                    684 ;	genReceive
      003176 AF F0            [24]  685 	mov	r7,b
      003178 AE 83            [24]  686 	mov	r6,dph
      00317A E5 82            [12]  687 	mov	a,dpl
      00317C 90 94 B9         [24]  688 	mov	dptr,#_Proc_8_Arr_1_Par_Ref_65536_56
      00317F F0               [24]  689 	movx	@dptr,a
      003180 EE               [12]  690 	mov	a,r6
      003181 A3               [24]  691 	inc	dptr
      003182 F0               [24]  692 	movx	@dptr,a
      003183 EF               [12]  693 	mov	a,r7
      003184 A3               [24]  694 	inc	dptr
      003185 F0               [24]  695 	movx	@dptr,a
                                    696 ;	dhry_2.c:87: Int_Loc = Int_1_Par_Val + 5;
                                    697 ;	genAssign
      003186 90 94 B5         [24]  698 	mov	dptr,#_Proc_8_PARM_3
      003189 E0               [24]  699 	movx	a,@dptr
      00318A FE               [12]  700 	mov	r6,a
      00318B A3               [24]  701 	inc	dptr
      00318C E0               [24]  702 	movx	a,@dptr
      00318D FF               [12]  703 	mov	r7,a
                                    704 ;	genPlus
                                    705 ;	genPlusIncr
      00318E 74 05            [12]  706 	mov	a,#0x05
      003190 2E               [12]  707 	add	a,r6
      003191 FC               [12]  708 	mov	r4,a
                                    709 ;	Peephole 181	changed mov to clr
      003192 E4               [12]  710 	clr	a
      003193 3F               [12]  711 	addc	a,r7
      003194 FD               [12]  712 	mov	r5,a
                                    713 ;	dhry_2.c:88: Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
                                    714 ;	genAssign
      003195 90 94 B9         [24]  715 	mov	dptr,#_Proc_8_Arr_1_Par_Ref_65536_56
      003198 E0               [24]  716 	movx	a,@dptr
      003199 F5 1B            [12]  717 	mov	_Proc_8_sloc1_1_0,a
      00319B A3               [24]  718 	inc	dptr
      00319C E0               [24]  719 	movx	a,@dptr
      00319D F5 1C            [12]  720 	mov	(_Proc_8_sloc1_1_0 + 1),a
      00319F A3               [24]  721 	inc	dptr
      0031A0 E0               [24]  722 	movx	a,@dptr
      0031A1 F5 1D            [12]  723 	mov	(_Proc_8_sloc1_1_0 + 2),a
                                    724 ;	genLeftShift
                                    725 ;	genLeftShiftLiteral (1), size 2
                                    726 ;	genlshFixed
      0031A3 EC               [12]  727 	mov	a,r4
                                    728 ;	Peephole 254	optimized left shift
      0031A4 2C               [12]  729 	add	a,r4
      0031A5 F5 19            [12]  730 	mov	_Proc_8_sloc0_1_0,a
      0031A7 ED               [12]  731 	mov	a,r5
      0031A8 33               [12]  732 	rlc	a
      0031A9 F5 1A            [12]  733 	mov	(_Proc_8_sloc0_1_0 + 1),a
                                    734 ;	genPlus
      0031AB E5 19            [12]  735 	mov	a,_Proc_8_sloc0_1_0
      0031AD 25 1B            [12]  736 	add	a,_Proc_8_sloc1_1_0
      0031AF F5 1E            [12]  737 	mov	_Proc_8_sloc2_1_0,a
      0031B1 E5 1A            [12]  738 	mov	a,(_Proc_8_sloc0_1_0 + 1)
      0031B3 35 1C            [12]  739 	addc	a,(_Proc_8_sloc1_1_0 + 1)
      0031B5 F5 1F            [12]  740 	mov	(_Proc_8_sloc2_1_0 + 1),a
      0031B7 85 1D 20         [24]  741 	mov	(_Proc_8_sloc2_1_0 + 2),(_Proc_8_sloc1_1_0 + 2)
                                    742 ;	genAssign
      0031BA 90 94 B7         [24]  743 	mov	dptr,#_Proc_8_PARM_4
      0031BD E0               [24]  744 	movx	a,@dptr
      0031BE F5 21            [12]  745 	mov	_Proc_8_sloc3_1_0,a
      0031C0 A3               [24]  746 	inc	dptr
      0031C1 E0               [24]  747 	movx	a,@dptr
      0031C2 F5 22            [12]  748 	mov	(_Proc_8_sloc3_1_0 + 1),a
                                    749 ;	genPointerSet
                                    750 ;	genGenPointerSet
      0031C4 85 1E 82         [24]  751 	mov	dpl,_Proc_8_sloc2_1_0
      0031C7 85 1F 83         [24]  752 	mov	dph,(_Proc_8_sloc2_1_0 + 1)
      0031CA 85 20 F0         [24]  753 	mov	b,(_Proc_8_sloc2_1_0 + 2)
      0031CD E5 21            [12]  754 	mov	a,_Proc_8_sloc3_1_0
      0031CF 12 37 8F         [24]  755 	lcall	__gptrput
      0031D2 A3               [24]  756 	inc	dptr
      0031D3 E5 22            [12]  757 	mov	a,(_Proc_8_sloc3_1_0 + 1)
      0031D5 12 37 8F         [24]  758 	lcall	__gptrput
                                    759 ;	dhry_2.c:89: Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
                                    760 ;	genPlus
                                    761 ;	genPlusIncr
      0031D8 74 06            [12]  762 	mov	a,#0x06
      0031DA 2E               [12]  763 	add	a,r6
      0031DB F8               [12]  764 	mov	r0,a
                                    765 ;	Peephole 181	changed mov to clr
      0031DC E4               [12]  766 	clr	a
      0031DD 3F               [12]  767 	addc	a,r7
      0031DE FA               [12]  768 	mov	r2,a
                                    769 ;	genLeftShift
                                    770 ;	genLeftShiftLiteral (1), size 2
                                    771 ;	genlshFixed
      0031DF E8               [12]  772 	mov	a,r0
                                    773 ;	Peephole 254	optimized left shift
      0031E0 28               [12]  774 	add	a,r0
      0031E1 F8               [12]  775 	mov	r0,a
      0031E2 EA               [12]  776 	mov	a,r2
      0031E3 33               [12]  777 	rlc	a
      0031E4 FA               [12]  778 	mov	r2,a
                                    779 ;	genPlus
      0031E5 E8               [12]  780 	mov	a,r0
      0031E6 25 1B            [12]  781 	add	a,_Proc_8_sloc1_1_0
      0031E8 F8               [12]  782 	mov	r0,a
      0031E9 EA               [12]  783 	mov	a,r2
      0031EA 35 1C            [12]  784 	addc	a,(_Proc_8_sloc1_1_0 + 1)
      0031EC FA               [12]  785 	mov	r2,a
      0031ED AB 1D            [24]  786 	mov	r3,(_Proc_8_sloc1_1_0 + 2)
                                    787 ;	genPointerSet
                                    788 ;	genGenPointerSet
      0031EF 88 82            [24]  789 	mov	dpl,r0
      0031F1 8A 83            [24]  790 	mov	dph,r2
      0031F3 8B F0            [24]  791 	mov	b,r3
      0031F5 E5 21            [12]  792 	mov	a,_Proc_8_sloc3_1_0
      0031F7 12 37 8F         [24]  793 	lcall	__gptrput
      0031FA A3               [24]  794 	inc	dptr
      0031FB E5 22            [12]  795 	mov	a,(_Proc_8_sloc3_1_0 + 1)
      0031FD 12 37 8F         [24]  796 	lcall	__gptrput
                                    797 ;	dhry_2.c:90: Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
                                    798 ;	genPlus
                                    799 ;	genPlusIncr
      003200 74 23            [12]  800 	mov	a,#0x23
      003202 2E               [12]  801 	add	a,r6
      003203 FA               [12]  802 	mov	r2,a
                                    803 ;	Peephole 181	changed mov to clr
      003204 E4               [12]  804 	clr	a
      003205 3F               [12]  805 	addc	a,r7
      003206 FB               [12]  806 	mov	r3,a
                                    807 ;	genLeftShift
                                    808 ;	genLeftShiftLiteral (1), size 2
                                    809 ;	genlshFixed
      003207 EA               [12]  810 	mov	a,r2
                                    811 ;	Peephole 254	optimized left shift
      003208 2A               [12]  812 	add	a,r2
      003209 FA               [12]  813 	mov	r2,a
      00320A EB               [12]  814 	mov	a,r3
      00320B 33               [12]  815 	rlc	a
      00320C FB               [12]  816 	mov	r3,a
                                    817 ;	genPlus
      00320D EA               [12]  818 	mov	a,r2
      00320E 25 1B            [12]  819 	add	a,_Proc_8_sloc1_1_0
      003210 FA               [12]  820 	mov	r2,a
      003211 EB               [12]  821 	mov	a,r3
      003212 35 1C            [12]  822 	addc	a,(_Proc_8_sloc1_1_0 + 1)
      003214 F9               [12]  823 	mov	r1,a
      003215 AB 1D            [24]  824 	mov	r3,(_Proc_8_sloc1_1_0 + 2)
                                    825 ;	genPointerSet
                                    826 ;	genGenPointerSet
      003217 8A 82            [24]  827 	mov	dpl,r2
      003219 89 83            [24]  828 	mov	dph,r1
      00321B 8B F0            [24]  829 	mov	b,r3
      00321D EC               [12]  830 	mov	a,r4
      00321E 12 37 8F         [24]  831 	lcall	__gptrput
      003221 A3               [24]  832 	inc	dptr
      003222 ED               [12]  833 	mov	a,r5
      003223 12 37 8F         [24]  834 	lcall	__gptrput
                                    835 ;	dhry_2.c:91: for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
                                    836 ;	genAssign
      003226 90 94 B2         [24]  837 	mov	dptr,#_Proc_8_PARM_2
      003229 E0               [24]  838 	movx	a,@dptr
      00322A F5 25            [12]  839 	mov	_Proc_8_sloc5_1_0,a
      00322C A3               [24]  840 	inc	dptr
      00322D E0               [24]  841 	movx	a,@dptr
      00322E F5 26            [12]  842 	mov	(_Proc_8_sloc5_1_0 + 1),a
      003230 A3               [24]  843 	inc	dptr
      003231 E0               [24]  844 	movx	a,@dptr
      003232 F5 27            [12]  845 	mov	(_Proc_8_sloc5_1_0 + 2),a
                                    846 ;	genAssign
      003234 90 94 DD         [24]  847 	mov	dptr,#__mulint_PARM_2
      003237 EC               [12]  848 	mov	a,r4
      003238 F0               [24]  849 	movx	@dptr,a
      003239 ED               [12]  850 	mov	a,r5
      00323A A3               [24]  851 	inc	dptr
      00323B F0               [24]  852 	movx	@dptr,a
                                    853 ;	genCall
                                    854 ;	Peephole 182.b	used 16 bit load of dptr
      00323C 90 00 64         [24]  855 	mov	dptr,#0x0064
      00323F C0 07            [24]  856 	push	ar7
      003241 C0 06            [24]  857 	push	ar6
      003243 C0 05            [24]  858 	push	ar5
      003245 C0 04            [24]  859 	push	ar4
      003247 12 37 AA         [24]  860 	lcall	__mulint
      00324A 85 82 21         [24]  861 	mov	_Proc_8_sloc3_1_0,dpl
      00324D 85 83 22         [24]  862 	mov	(_Proc_8_sloc3_1_0 + 1),dph
      003250 D0 04            [24]  863 	pop	ar4
      003252 D0 05            [24]  864 	pop	ar5
      003254 D0 06            [24]  865 	pop	ar6
      003256 D0 07            [24]  866 	pop	ar7
                                    867 ;	genPlus
      003258 E5 21            [12]  868 	mov	a,_Proc_8_sloc3_1_0
      00325A 25 25            [12]  869 	add	a,_Proc_8_sloc5_1_0
      00325C F5 1E            [12]  870 	mov	_Proc_8_sloc2_1_0,a
      00325E E5 22            [12]  871 	mov	a,(_Proc_8_sloc3_1_0 + 1)
      003260 35 26            [12]  872 	addc	a,(_Proc_8_sloc5_1_0 + 1)
      003262 F5 1F            [12]  873 	mov	(_Proc_8_sloc2_1_0 + 1),a
      003264 85 27 20         [24]  874 	mov	(_Proc_8_sloc2_1_0 + 2),(_Proc_8_sloc5_1_0 + 2)
                                    875 ;	genPlus
                                    876 ;	genPlusIncr
      003267 74 06            [12]  877 	mov	a,#0x06
      003269 2E               [12]  878 	add	a,r6
      00326A F5 1B            [12]  879 	mov	_Proc_8_sloc1_1_0,a
                                    880 ;	Peephole 181	changed mov to clr
      00326C E4               [12]  881 	clr	a
      00326D 3F               [12]  882 	addc	a,r7
      00326E F5 1C            [12]  883 	mov	(_Proc_8_sloc1_1_0 + 1),a
                                    884 ;	genAssign
      003270 8C 23            [24]  885 	mov	_Proc_8_sloc4_1_0,r4
      003272 8D 24            [24]  886 	mov	(_Proc_8_sloc4_1_0 + 1),r5
      003274                        887 00103$:
                                    888 ;	genCmpGt
                                    889 ;	genCmp
      003274 C3               [12]  890 	clr	c
      003275 E5 1B            [12]  891 	mov	a,_Proc_8_sloc1_1_0
      003277 95 23            [12]  892 	subb	a,_Proc_8_sloc4_1_0
      003279 E5 1C            [12]  893 	mov	a,(_Proc_8_sloc1_1_0 + 1)
      00327B 64 80            [12]  894 	xrl	a,#0x80
      00327D 85 24 F0         [24]  895 	mov	b,(_Proc_8_sloc4_1_0 + 1)
      003280 63 F0 80         [24]  896 	xrl	b,#0x80
      003283 95 F0            [12]  897 	subb	a,b
                                    898 ;	genIfxJump
                                    899 ;	Peephole 112.b	changed ljmp to sjmp
                                    900 ;	Peephole 160.a	removed sjmp by inverse jump logic
      003285 40 2C            [24]  901 	jc	00101$
                                    902 ;	Peephole 500	removed redundant label 00116$
                                    903 ;	dhry_2.c:92: Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
                                    904 ;	genIpush
                                    905 ;	genLeftShift
                                    906 ;	genLeftShiftLiteral (1), size 2
                                    907 ;	genlshFixed
      003287 E5 23            [12]  908 	mov	a,_Proc_8_sloc4_1_0
                                    909 ;	Peephole 254	optimized left shift
      003289 25 23            [12]  910 	add	a,_Proc_8_sloc4_1_0
      00328B F8               [12]  911 	mov	r0,a
      00328C E5 24            [12]  912 	mov	a,(_Proc_8_sloc4_1_0 + 1)
      00328E 33               [12]  913 	rlc	a
      00328F FB               [12]  914 	mov	r3,a
                                    915 ;	genPlus
      003290 E8               [12]  916 	mov	a,r0
      003291 25 1E            [12]  917 	add	a,_Proc_8_sloc2_1_0
      003293 F8               [12]  918 	mov	r0,a
      003294 EB               [12]  919 	mov	a,r3
      003295 35 1F            [12]  920 	addc	a,(_Proc_8_sloc2_1_0 + 1)
      003297 FB               [12]  921 	mov	r3,a
      003298 AA 20            [24]  922 	mov	r2,(_Proc_8_sloc2_1_0 + 2)
                                    923 ;	genPointerSet
                                    924 ;	genGenPointerSet
      00329A 88 82            [24]  925 	mov	dpl,r0
      00329C 8B 83            [24]  926 	mov	dph,r3
      00329E 8A F0            [24]  927 	mov	b,r2
      0032A0 EC               [12]  928 	mov	a,r4
      0032A1 12 37 8F         [24]  929 	lcall	__gptrput
      0032A4 A3               [24]  930 	inc	dptr
      0032A5 ED               [12]  931 	mov	a,r5
      0032A6 12 37 8F         [24]  932 	lcall	__gptrput
                                    933 ;	dhry_2.c:91: for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
                                    934 ;	genPlus
                                    935 ;	genPlusIncr
      0032A9 05 23            [12]  936 	inc	_Proc_8_sloc4_1_0
      0032AB E4               [12]  937 	clr	a
                                    938 ;	genIpop
                                    939 ;	Peephole 112.b	changed ljmp to sjmp
                                    940 ;	Peephole 243	avoided branch to sjmp
      0032AC B5 23 C5         [24]  941 	cjne	a,_Proc_8_sloc4_1_0,00103$
      0032AF 05 24            [12]  942 	inc	(_Proc_8_sloc4_1_0 + 1)
                                    943 ;	Peephole 500	removed redundant label 00117$
      0032B1 80 C1            [24]  944 	sjmp	00103$
      0032B3                        945 00101$:
                                    946 ;	dhry_2.c:93: Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
                                    947 ;	genPlus
      0032B3 E5 21            [12]  948 	mov	a,_Proc_8_sloc3_1_0
      0032B5 25 25            [12]  949 	add	a,_Proc_8_sloc5_1_0
      0032B7 F8               [12]  950 	mov	r0,a
      0032B8 E5 22            [12]  951 	mov	a,(_Proc_8_sloc3_1_0 + 1)
      0032BA 35 26            [12]  952 	addc	a,(_Proc_8_sloc5_1_0 + 1)
      0032BC FA               [12]  953 	mov	r2,a
      0032BD AB 27            [24]  954 	mov	r3,(_Proc_8_sloc5_1_0 + 2)
                                    955 ;	genCast
                                    956 ;	genMinus
                                    957 ;	genMinusDec
      0032BF 1C               [12]  958 	dec	r4
                                    959 ;	genLeftShift
                                    960 ;	genLeftShiftLiteral (1), size 1
                                    961 ;	genlshFixed
      0032C0 EC               [12]  962 	mov	a,r4
                                    963 ;	Peephole 254	optimized left shift
      0032C1 2C               [12]  964 	add	a,r4
                                    965 ;	genPlus
                                    966 ;	Peephole 301	mov r4,a removed
                                    967 ;	Peephole 105.a	removed redundant mov
      0032C2 28               [12]  968 	add	a,r0
      0032C3 F8               [12]  969 	mov	r0,a
                                    970 ;	Peephole 181	changed mov to clr
      0032C4 E4               [12]  971 	clr	a
      0032C5 3A               [12]  972 	addc	a,r2
      0032C6 FA               [12]  973 	mov	r2,a
                                    974 ;	genPointerGet
                                    975 ;	genGenPointerGet
      0032C7 88 82            [24]  976 	mov	dpl,r0
      0032C9 8A 83            [24]  977 	mov	dph,r2
      0032CB 8B F0            [24]  978 	mov	b,r3
      0032CD 12 44 D4         [24]  979 	lcall	__gptrget
      0032D0 FC               [12]  980 	mov	r4,a
      0032D1 A3               [24]  981 	inc	dptr
      0032D2 12 44 D4         [24]  982 	lcall	__gptrget
      0032D5 FD               [12]  983 	mov	r5,a
                                    984 ;	genPlus
                                    985 ;	genPlusIncr
      0032D6 0C               [12]  986 	inc	r4
      0032D7 BC 00 01         [24]  987 	cjne	r4,#0x00,00118$
      0032DA 0D               [12]  988 	inc	r5
      0032DB                        989 00118$:
                                    990 ;	genPointerSet
                                    991 ;	genGenPointerSet
      0032DB 88 82            [24]  992 	mov	dpl,r0
      0032DD 8A 83            [24]  993 	mov	dph,r2
      0032DF 8B F0            [24]  994 	mov	b,r3
      0032E1 EC               [12]  995 	mov	a,r4
      0032E2 12 37 8F         [24]  996 	lcall	__gptrput
      0032E5 A3               [24]  997 	inc	dptr
      0032E6 ED               [12]  998 	mov	a,r5
      0032E7 12 37 8F         [24]  999 	lcall	__gptrput
                                   1000 ;	dhry_2.c:94: Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
                                   1001 ;	genPlus
      0032EA 90 94 DD         [24] 1002 	mov	dptr,#__mulint_PARM_2
                                   1003 ;	genPlusIncr
      0032ED 74 19            [12] 1004 	mov	a,#0x19
      0032EF 2E               [12] 1005 	add	a,r6
      0032F0 F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	Peephole 181	changed mov to clr
      0032F1 E4               [12] 1008 	clr	a
      0032F2 3F               [12] 1009 	addc	a,r7
      0032F3 A3               [24] 1010 	inc	dptr
      0032F4 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	genCall
                                   1013 ;	Peephole 182.b	used 16 bit load of dptr
      0032F5 90 00 64         [24] 1014 	mov	dptr,#0x0064
      0032F8 12 37 AA         [24] 1015 	lcall	__mulint
      0032FB AE 82            [24] 1016 	mov	r6,dpl
      0032FD AF 83            [24] 1017 	mov	r7,dph
                                   1018 ;	genPlus
      0032FF EE               [12] 1019 	mov	a,r6
      003300 25 25            [12] 1020 	add	a,_Proc_8_sloc5_1_0
      003302 FE               [12] 1021 	mov	r6,a
      003303 EF               [12] 1022 	mov	a,r7
      003304 35 26            [12] 1023 	addc	a,(_Proc_8_sloc5_1_0 + 1)
      003306 FF               [12] 1024 	mov	r7,a
      003307 AD 27            [24] 1025 	mov	r5,(_Proc_8_sloc5_1_0 + 2)
                                   1026 ;	genPlus
      003309 E5 19            [12] 1027 	mov	a,_Proc_8_sloc0_1_0
      00330B 2E               [12] 1028 	add	a,r6
      00330C FE               [12] 1029 	mov	r6,a
      00330D E5 1A            [12] 1030 	mov	a,(_Proc_8_sloc0_1_0 + 1)
      00330F 3F               [12] 1031 	addc	a,r7
      003310 FF               [12] 1032 	mov	r7,a
                                   1033 ;	genAssign
      003311 90 94 B9         [24] 1034 	mov	dptr,#_Proc_8_Arr_1_Par_Ref_65536_56
      003314 E0               [24] 1035 	movx	a,@dptr
      003315 FA               [12] 1036 	mov	r2,a
      003316 A3               [24] 1037 	inc	dptr
      003317 E0               [24] 1038 	movx	a,@dptr
      003318 FB               [12] 1039 	mov	r3,a
      003319 A3               [24] 1040 	inc	dptr
      00331A E0               [24] 1041 	movx	a,@dptr
      00331B FC               [12] 1042 	mov	r4,a
                                   1043 ;	genPlus
      00331C E5 19            [12] 1044 	mov	a,_Proc_8_sloc0_1_0
      00331E 2A               [12] 1045 	add	a,r2
      00331F FA               [12] 1046 	mov	r2,a
      003320 E5 1A            [12] 1047 	mov	a,(_Proc_8_sloc0_1_0 + 1)
      003322 3B               [12] 1048 	addc	a,r3
      003323 FB               [12] 1049 	mov	r3,a
                                   1050 ;	genPointerGet
                                   1051 ;	genGenPointerGet
      003324 8A 82            [24] 1052 	mov	dpl,r2
      003326 8B 83            [24] 1053 	mov	dph,r3
      003328 8C F0            [24] 1054 	mov	b,r4
      00332A 12 44 D4         [24] 1055 	lcall	__gptrget
      00332D FA               [12] 1056 	mov	r2,a
      00332E A3               [24] 1057 	inc	dptr
      00332F 12 44 D4         [24] 1058 	lcall	__gptrget
      003332 FB               [12] 1059 	mov	r3,a
                                   1060 ;	genPointerSet
                                   1061 ;	genGenPointerSet
      003333 8E 82            [24] 1062 	mov	dpl,r6
      003335 8F 83            [24] 1063 	mov	dph,r7
      003337 8D F0            [24] 1064 	mov	b,r5
      003339 EA               [12] 1065 	mov	a,r2
      00333A 12 37 8F         [24] 1066 	lcall	__gptrput
      00333D A3               [24] 1067 	inc	dptr
      00333E EB               [12] 1068 	mov	a,r3
      00333F 12 37 8F         [24] 1069 	lcall	__gptrput
                                   1070 ;	dhry_2.c:95: Int_Glob = 5;
                                   1071 ;	genAssign
      003342 90 80 06         [24] 1072 	mov	dptr,#_Int_Glob
      003345 74 05            [12] 1073 	mov	a,#0x05
      003347 F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	Peephole 181	changed mov to clr
      003348 E4               [12] 1076 	clr	a
      003349 A3               [24] 1077 	inc	dptr
      00334A F0               [24] 1078 	movx	@dptr,a
                                   1079 ;	Peephole 500	removed redundant label 00105$
                                   1080 ;	dhry_2.c:96: } /* Proc_8 */
      00334B 22               [24] 1081 	ret
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'Func_1'
                                   1084 ;------------------------------------------------------------
                                   1085 ;Ch_2_Par_Val              Allocated with name '_Func_1_PARM_2'
                                   1086 ;Ch_1_Par_Val              Allocated with name '_Func_1_Ch_1_Par_Val_65536_59'
                                   1087 ;Ch_1_Loc                  Allocated with name '_Func_1_Ch_1_Loc_65536_60'
                                   1088 ;Ch_2_Loc                  Allocated with name '_Func_1_Ch_2_Loc_65536_60'
                                   1089 ;------------------------------------------------------------
                                   1090 ;	dhry_2.c:99: Enumeration Func_1 (Capital_Letter Ch_1_Par_Val, Capital_Letter Ch_2_Par_Val)
                                   1091 ;	-----------------------------------------
                                   1092 ;	 function Func_1
                                   1093 ;	-----------------------------------------
      00334C                       1094 _Func_1:
                                   1095 ;	genReceive
      00334C E5 82            [12] 1096 	mov	a,dpl
      00334E 90 94 BD         [24] 1097 	mov	dptr,#_Func_1_Ch_1_Par_Val_65536_59
      003351 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	dhry_2.c:110: Ch_1_Loc = Ch_1_Par_Val;
                                   1100 ;	genAssign
                                   1101 ;	genFromRTrack dptr==#_Func_1_Ch_1_Par_Val_65536_59
      003352 E0               [24] 1102 	movx	a,@dptr
      003353 FF               [12] 1103 	mov	r7,a
                                   1104 ;	dhry_2.c:112: if (Ch_2_Loc != Ch_2_Par_Val)
                                   1105 ;	genAssign
      003354 90 94 BC         [24] 1106 	mov	dptr,#_Func_1_PARM_2
      003357 E0               [24] 1107 	movx	a,@dptr
      003358 FE               [12] 1108 	mov	r6,a
                                   1109 ;	genCmpEq
                                   1110 ;	gencjneshort
      003359 EF               [12] 1111 	mov	a,r7
      00335A B5 06 02         [24] 1112 	cjne	a,ar6,00110$
                                   1113 ;	Peephole 112.b	changed ljmp to sjmp
      00335D 80 04            [24] 1114 	sjmp	00102$
      00335F                       1115 00110$:
                                   1116 ;	dhry_2.c:114: return (Ident_1);
                                   1117 ;	genRet
      00335F 75 82 00         [24] 1118 	mov	dpl,#0x00
                                   1119 ;	Peephole 112.b	changed ljmp to sjmp
                                   1120 ;	Peephole 251.b	replaced sjmp 00104$ to ret with ret
      003362 22               [24] 1121 	ret
      003363                       1122 00102$:
                                   1123 ;	dhry_2.c:117: Ch_1_Glob = Ch_1_Loc;
                                   1124 ;	genAssign
      003363 90 80 0A         [24] 1125 	mov	dptr,#_Ch_1_Glob
      003366 EF               [12] 1126 	mov	a,r7
      003367 F0               [24] 1127 	movx	@dptr,a
                                   1128 ;	dhry_2.c:118: return (Ident_2);
                                   1129 ;	genRet
      003368 75 82 01         [24] 1130 	mov	dpl,#0x01
                                   1131 ;	Peephole 500	removed redundant label 00104$
                                   1132 ;	dhry_2.c:120: } /* Func_1 */
      00336B 22               [24] 1133 	ret
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'Func_2'
                                   1136 ;------------------------------------------------------------
                                   1137 ;sloc0                     Allocated with name '_Func_2_sloc0_1_0'
                                   1138 ;Str_2_Par_Ref             Allocated with name '_Func_2_PARM_2'
                                   1139 ;Str_1_Par_Ref             Allocated with name '_Func_2_Str_1_Par_Ref_65536_62'
                                   1140 ;Int_Loc                   Allocated with name '_Func_2_Int_Loc_65536_63'
                                   1141 ;Ch_Loc                    Allocated with name '_Func_2_Ch_Loc_65536_63'
                                   1142 ;------------------------------------------------------------
                                   1143 ;	dhry_2.c:123: Boolean Func_2 (Str_30 Str_1_Par_Ref, Str_30 Str_2_Par_Ref)
                                   1144 ;	-----------------------------------------
                                   1145 ;	 function Func_2
                                   1146 ;	-----------------------------------------
      00336C                       1147 _Func_2:
                                   1148 ;	genReceive
      00336C AF F0            [24] 1149 	mov	r7,b
      00336E AE 83            [24] 1150 	mov	r6,dph
      003370 E5 82            [12] 1151 	mov	a,dpl
      003372 90 94 C1         [24] 1152 	mov	dptr,#_Func_2_Str_1_Par_Ref_65536_62
      003375 F0               [24] 1153 	movx	@dptr,a
      003376 EE               [12] 1154 	mov	a,r6
      003377 A3               [24] 1155 	inc	dptr
      003378 F0               [24] 1156 	movx	@dptr,a
      003379 EF               [12] 1157 	mov	a,r7
      00337A A3               [24] 1158 	inc	dptr
      00337B F0               [24] 1159 	movx	@dptr,a
                                   1160 ;	dhry_2.c:134: while (Int_Loc <= 2) /* loop body executed once */
                                   1161 ;	genAssign
      00337C 90 94 C1         [24] 1162 	mov	dptr,#_Func_2_Str_1_Par_Ref_65536_62
      00337F E0               [24] 1163 	movx	a,@dptr
      003380 F5 28            [12] 1164 	mov	_Func_2_sloc0_1_0,a
      003382 A3               [24] 1165 	inc	dptr
      003383 E0               [24] 1166 	movx	a,@dptr
      003384 F5 29            [12] 1167 	mov	(_Func_2_sloc0_1_0 + 1),a
      003386 A3               [24] 1168 	inc	dptr
      003387 E0               [24] 1169 	movx	a,@dptr
      003388 F5 2A            [12] 1170 	mov	(_Func_2_sloc0_1_0 + 2),a
                                   1171 ;	genAssign
      00338A 90 94 BE         [24] 1172 	mov	dptr,#_Func_2_PARM_2
      00338D E0               [24] 1173 	movx	a,@dptr
      00338E FA               [12] 1174 	mov	r2,a
      00338F A3               [24] 1175 	inc	dptr
      003390 E0               [24] 1176 	movx	a,@dptr
      003391 FB               [12] 1177 	mov	r3,a
      003392 A3               [24] 1178 	inc	dptr
      003393 E0               [24] 1179 	movx	a,@dptr
      003394 FC               [12] 1180 	mov	r4,a
                                   1181 ;	genAssign
      003395 78 02            [12] 1182 	mov	r0,#0x02
      003397 79 00            [12] 1183 	mov	r1,#0x00
      003399                       1184 00103$:
                                   1185 ;	genCmpGt
                                   1186 ;	genCmp
      003399 C3               [12] 1187 	clr	c
      00339A 74 02            [12] 1188 	mov	a,#0x02
      00339C 98               [12] 1189 	subb	a,r0
                                   1190 ;	Peephole 159	avoided xrl during execution
      00339D 74 80            [12] 1191 	mov	a,#(0x00 ^ 0x80)
      00339F 89 F0            [24] 1192 	mov	b,r1
      0033A1 63 F0 80         [24] 1193 	xrl	b,#0x80
      0033A4 95 F0            [12] 1194 	subb	a,b
                                   1195 ;	genIfxJump
                                   1196 ;	Peephole 112.b	changed ljmp to sjmp
                                   1197 ;	Peephole 160.a	removed sjmp by inverse jump logic
      0033A6 40 62            [24] 1198 	jc	00124$
                                   1199 ;	Peephole 500	removed redundant label 00146$
                                   1200 ;	dhry_2.c:135: if (Func_1 (Str_1_Par_Ref[Int_Loc],
                                   1201 ;	genPlus
      0033A8 E8               [12] 1202 	mov	a,r0
      0033A9 25 28            [12] 1203 	add	a,_Func_2_sloc0_1_0
      0033AB FD               [12] 1204 	mov	r5,a
      0033AC E9               [12] 1205 	mov	a,r1
      0033AD 35 29            [12] 1206 	addc	a,(_Func_2_sloc0_1_0 + 1)
      0033AF FE               [12] 1207 	mov	r6,a
      0033B0 AF 2A            [24] 1208 	mov	r7,(_Func_2_sloc0_1_0 + 2)
                                   1209 ;	genPointerGet
                                   1210 ;	genGenPointerGet
      0033B2 8D 82            [24] 1211 	mov	dpl,r5
      0033B4 8E 83            [24] 1212 	mov	dph,r6
      0033B6 8F F0            [24] 1213 	mov	b,r7
      0033B8 12 44 D4         [24] 1214 	lcall	__gptrget
      0033BB FD               [12] 1215 	mov	r5,a
                                   1216 ;	dhry_2.c:136: Str_2_Par_Ref[Int_Loc+1]) == Ident_1)
                                   1217 ;	genPlus
                                   1218 ;	genPlusIncr
      0033BC 74 01            [12] 1219 	mov	a,#0x01
      0033BE 28               [12] 1220 	add	a,r0
      0033BF FE               [12] 1221 	mov	r6,a
                                   1222 ;	Peephole 181	changed mov to clr
      0033C0 E4               [12] 1223 	clr	a
      0033C1 39               [12] 1224 	addc	a,r1
      0033C2 FF               [12] 1225 	mov	r7,a
                                   1226 ;	genIpush
      0033C3 C0 00            [24] 1227 	push	ar0
      0033C5 C0 01            [24] 1228 	push	ar1
                                   1229 ;	genPlus
      0033C7 EE               [12] 1230 	mov	a,r6
      0033C8 2A               [12] 1231 	add	a,r2
      0033C9 FE               [12] 1232 	mov	r6,a
      0033CA EF               [12] 1233 	mov	a,r7
      0033CB 3B               [12] 1234 	addc	a,r3
      0033CC F9               [12] 1235 	mov	r1,a
      0033CD 8C 07            [24] 1236 	mov	ar7,r4
                                   1237 ;	genPointerGet
                                   1238 ;	genGenPointerGet
      0033CF 8E 82            [24] 1239 	mov	dpl,r6
      0033D1 89 83            [24] 1240 	mov	dph,r1
      0033D3 8F F0            [24] 1241 	mov	b,r7
      0033D5 12 44 D4         [24] 1242 	lcall	__gptrget
                                   1243 ;	genAssign
                                   1244 ;	Peephole 301	mov r6,a removed
      0033D8 90 94 BC         [24] 1245 	mov	dptr,#_Func_1_PARM_2
                                   1246 ;	Peephole 100	removed redundant mov
      0033DB F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	genCall
      0033DC 8D 82            [24] 1249 	mov	dpl,r5
      0033DE C0 04            [24] 1250 	push	ar4
      0033E0 C0 03            [24] 1251 	push	ar3
      0033E2 C0 02            [24] 1252 	push	ar2
      0033E4 C0 01            [24] 1253 	push	ar1
      0033E6 C0 00            [24] 1254 	push	ar0
      0033E8 12 33 4C         [24] 1255 	lcall	_Func_1
      0033EB E5 82            [12] 1256 	mov	a,dpl
      0033ED D0 00            [24] 1257 	pop	ar0
      0033EF D0 01            [24] 1258 	pop	ar1
      0033F1 D0 02            [24] 1259 	pop	ar2
      0033F3 D0 03            [24] 1260 	pop	ar3
      0033F5 D0 04            [24] 1261 	pop	ar4
                                   1262 ;	genIpop
      0033F7 D0 01            [24] 1263 	pop	ar1
      0033F9 D0 00            [24] 1264 	pop	ar0
                                   1265 ;	genIfx
                                   1266 ;	genIfxJump
                                   1267 ;	Peephole 108.b	removed ljmp by inverse jump logic
      0033FB 70 9C            [24] 1268 	jnz	00103$
                                   1269 ;	Peephole 500	removed redundant label 00147$
                                   1270 ;	dhry_2.c:139: Ch_Loc = 'A';
                                   1271 ;	genAssign
      0033FD 90 94 C6         [24] 1272 	mov	dptr,#_Func_2_Ch_Loc_65536_63
      003400 74 41            [12] 1273 	mov	a,#0x41
      003402 F0               [24] 1274 	movx	@dptr,a
                                   1275 ;	dhry_2.c:140: Int_Loc += 1;
                                   1276 ;	genPlus
                                   1277 ;	genPlusIncr
      003403 08               [12] 1278 	inc	r0
                                   1279 ;	Peephole 112.b	changed ljmp to sjmp
                                   1280 ;	Peephole 243	avoided branch to sjmp
      003404 B8 00 92         [24] 1281 	cjne	r0,#0x00,00103$
      003407 09               [12] 1282 	inc	r1
                                   1283 ;	Peephole 500	removed redundant label 00148$
      003408 80 8F            [24] 1284 	sjmp	00103$
      00340A                       1285 00124$:
                                   1286 ;	genAssign
      00340A 90 94 C4         [24] 1287 	mov	dptr,#_Func_2_Int_Loc_65536_63
      00340D E8               [12] 1288 	mov	a,r0
      00340E F0               [24] 1289 	movx	@dptr,a
      00340F E9               [12] 1290 	mov	a,r1
      003410 A3               [24] 1291 	inc	dptr
      003411 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	dhry_2.c:142: if (Ch_Loc >= 'W' && Ch_Loc < 'Z')
                                   1294 ;	genAssign
      003412 90 94 C6         [24] 1295 	mov	dptr,#_Func_2_Ch_Loc_65536_63
      003415 E0               [24] 1296 	movx	a,@dptr
      003416 FF               [12] 1297 	mov	r7,a
                                   1298 ;	genCmpLt
                                   1299 ;	genCmp
      003417 BF 57 00         [24] 1300 	cjne	r7,#0x57,00149$
      00341A                       1301 00149$:
                                   1302 ;	genIfxJump
                                   1303 ;	Peephole 112.b	changed ljmp to sjmp
                                   1304 ;	Peephole 160.a	removed sjmp by inverse jump logic
      00341A 40 0E            [24] 1305 	jc	00107$
                                   1306 ;	Peephole 500	removed redundant label 00150$
                                   1307 ;	genCmpLt
                                   1308 ;	genCmp
      00341C BF 5A 00         [24] 1309 	cjne	r7,#0x5a,00151$
      00341F                       1310 00151$:
                                   1311 ;	genIfxJump
                                   1312 ;	Peephole 108.a	removed ljmp by inverse jump logic
      00341F 50 09            [24] 1313 	jnc	00107$
                                   1314 ;	Peephole 500	removed redundant label 00152$
                                   1315 ;	dhry_2.c:144: Int_Loc = 7;
                                   1316 ;	genAssign
      003421 90 94 C4         [24] 1317 	mov	dptr,#_Func_2_Int_Loc_65536_63
      003424 74 07            [12] 1318 	mov	a,#0x07
      003426 F0               [24] 1319 	movx	@dptr,a
                                   1320 ;	Peephole 181	changed mov to clr
      003427 E4               [12] 1321 	clr	a
      003428 A3               [24] 1322 	inc	dptr
      003429 F0               [24] 1323 	movx	@dptr,a
      00342A                       1324 00107$:
                                   1325 ;	dhry_2.c:145: if (Ch_Loc == 'R')
                                   1326 ;	genAssign
      00342A 90 94 C6         [24] 1327 	mov	dptr,#_Func_2_Ch_Loc_65536_63
      00342D E0               [24] 1328 	movx	a,@dptr
      00342E FF               [12] 1329 	mov	r7,a
                                   1330 ;	genCmpEq
                                   1331 ;	gencjneshort
                                   1332 ;	Peephole 112.b	changed ljmp to sjmp
                                   1333 ;	Peephole 198.b	optimized misc jump sequence
      00342F BF 52 04         [24] 1334 	cjne	r7,#0x52,00113$
                                   1335 ;	Peephole 200.b	removed redundant sjmp
                                   1336 ;	Peephole 500	removed redundant label 00153$
                                   1337 ;	Peephole 500	removed redundant label 00154$
                                   1338 ;	dhry_2.c:147: return (true);
                                   1339 ;	genRet
                                   1340 ;	Peephole 182.b	used 16 bit load of dptr
      003432 90 00 01         [24] 1341 	mov	dptr,#0x0001
                                   1342 ;	Peephole 112.b	changed ljmp to sjmp
                                   1343 ;	Peephole 251.b	replaced sjmp 00115$ to ret with ret
      003435 22               [24] 1344 	ret
      003436                       1345 00113$:
                                   1346 ;	dhry_2.c:150: if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
                                   1347 ;	genAssign
      003436 90 94 C1         [24] 1348 	mov	dptr,#_Func_2_Str_1_Par_Ref_65536_62
      003439 E0               [24] 1349 	movx	a,@dptr
      00343A FD               [12] 1350 	mov	r5,a
      00343B A3               [24] 1351 	inc	dptr
      00343C E0               [24] 1352 	movx	a,@dptr
      00343D FE               [12] 1353 	mov	r6,a
      00343E A3               [24] 1354 	inc	dptr
      00343F E0               [24] 1355 	movx	a,@dptr
      003440 FF               [12] 1356 	mov	r7,a
                                   1357 ;	genAssign
      003441 90 94 DF         [24] 1358 	mov	dptr,#_strcmp_PARM_2
      003444 EA               [12] 1359 	mov	a,r2
      003445 F0               [24] 1360 	movx	@dptr,a
      003446 EB               [12] 1361 	mov	a,r3
      003447 A3               [24] 1362 	inc	dptr
      003448 F0               [24] 1363 	movx	@dptr,a
      003449 EC               [12] 1364 	mov	a,r4
      00344A A3               [24] 1365 	inc	dptr
      00344B F0               [24] 1366 	movx	@dptr,a
                                   1367 ;	genCall
      00344C 8D 82            [24] 1368 	mov	dpl,r5
      00344E 8E 83            [24] 1369 	mov	dph,r6
      003450 8F F0            [24] 1370 	mov	b,r7
      003452 12 37 CA         [24] 1371 	lcall	_strcmp
      003455 AE 82            [24] 1372 	mov	r6,dpl
      003457 AF 83            [24] 1373 	mov	r7,dph
                                   1374 ;	genCmpGt
                                   1375 ;	genCmp
      003459 C3               [12] 1376 	clr	c
                                   1377 ;	Peephole 181	changed mov to clr
      00345A E4               [12] 1378 	clr	a
      00345B 9E               [12] 1379 	subb	a,r6
                                   1380 ;	Peephole 159	avoided xrl during execution
      00345C 74 80            [12] 1381 	mov	a,#(0x00 ^ 0x80)
      00345E 8F F0            [24] 1382 	mov	b,r7
      003460 63 F0 80         [24] 1383 	xrl	b,#0x80
      003463 95 F0            [12] 1384 	subb	a,b
                                   1385 ;	genIfxJump
                                   1386 ;	Peephole 108.a	removed ljmp by inverse jump logic
      003465 50 27            [24] 1387 	jnc	00110$
                                   1388 ;	Peephole 500	removed redundant label 00155$
                                   1389 ;	dhry_2.c:153: Int_Loc += 7;
                                   1390 ;	genAssign
      003467 90 94 C4         [24] 1391 	mov	dptr,#_Func_2_Int_Loc_65536_63
      00346A E0               [24] 1392 	movx	a,@dptr
      00346B FE               [12] 1393 	mov	r6,a
      00346C A3               [24] 1394 	inc	dptr
      00346D E0               [24] 1395 	movx	a,@dptr
      00346E FF               [12] 1396 	mov	r7,a
                                   1397 ;	genPlus
      00346F 90 94 C4         [24] 1398 	mov	dptr,#_Func_2_Int_Loc_65536_63
                                   1399 ;	genPlusIncr
      003472 74 07            [12] 1400 	mov	a,#0x07
      003474 2E               [12] 1401 	add	a,r6
      003475 F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	Peephole 181	changed mov to clr
      003476 E4               [12] 1404 	clr	a
      003477 3F               [12] 1405 	addc	a,r7
      003478 A3               [24] 1406 	inc	dptr
      003479 F0               [24] 1407 	movx	@dptr,a
                                   1408 ;	dhry_2.c:154: Int_Glob = Int_Loc;
                                   1409 ;	genAssign
      00347A 90 94 C4         [24] 1410 	mov	dptr,#_Func_2_Int_Loc_65536_63
      00347D E0               [24] 1411 	movx	a,@dptr
      00347E FE               [12] 1412 	mov	r6,a
      00347F A3               [24] 1413 	inc	dptr
      003480 E0               [24] 1414 	movx	a,@dptr
      003481 FF               [12] 1415 	mov	r7,a
                                   1416 ;	genAssign
      003482 90 80 06         [24] 1417 	mov	dptr,#_Int_Glob
      003485 EE               [12] 1418 	mov	a,r6
      003486 F0               [24] 1419 	movx	@dptr,a
      003487 EF               [12] 1420 	mov	a,r7
      003488 A3               [24] 1421 	inc	dptr
      003489 F0               [24] 1422 	movx	@dptr,a
                                   1423 ;	dhry_2.c:155: return (true);
                                   1424 ;	genRet
                                   1425 ;	Peephole 182.b	used 16 bit load of dptr
      00348A 90 00 01         [24] 1426 	mov	dptr,#0x0001
                                   1427 ;	Peephole 112.b	changed ljmp to sjmp
                                   1428 ;	Peephole 251.b	replaced sjmp 00115$ to ret with ret
      00348D 22               [24] 1429 	ret
      00348E                       1430 00110$:
                                   1431 ;	dhry_2.c:158: return (false);
                                   1432 ;	genRet
                                   1433 ;	Peephole 182.b	used 16 bit load of dptr
      00348E 90 00 00         [24] 1434 	mov	dptr,#0x0000
                                   1435 ;	Peephole 500	removed redundant label 00115$
                                   1436 ;	dhry_2.c:160: } /* Func_2 */
      003491 22               [24] 1437 	ret
                                   1438 ;------------------------------------------------------------
                                   1439 ;Allocation info for local variables in function 'Func_3'
                                   1440 ;------------------------------------------------------------
                                   1441 ;Enum_Par_Val              Allocated with name '_Func_3_Enum_Par_Val_65536_67'
                                   1442 ;Enum_Loc                  Allocated with name '_Func_3_Enum_Loc_65536_68'
                                   1443 ;------------------------------------------------------------
                                   1444 ;	dhry_2.c:163: Boolean Func_3 (Enumeration Enum_Par_Val)
                                   1445 ;	-----------------------------------------
                                   1446 ;	 function Func_3
                                   1447 ;	-----------------------------------------
      003492                       1448 _Func_3:
                                   1449 ;	genReceive
      003492 E5 82            [12] 1450 	mov	a,dpl
      003494 90 94 C7         [24] 1451 	mov	dptr,#_Func_3_Enum_Par_Val_65536_67
      003497 F0               [24] 1452 	movx	@dptr,a
                                   1453 ;	dhry_2.c:170: Enum_Loc = Enum_Par_Val;
                                   1454 ;	genAssign
                                   1455 ;	genFromRTrack dptr==#_Func_3_Enum_Par_Val_65536_67
      003498 E0               [24] 1456 	movx	a,@dptr
      003499 FF               [12] 1457 	mov	r7,a
                                   1458 ;	dhry_2.c:171: if (Enum_Loc == Ident_3)
                                   1459 ;	genCmpEq
                                   1460 ;	gencjneshort
                                   1461 ;	Peephole 112.b	changed ljmp to sjmp
                                   1462 ;	Peephole 198.b	optimized misc jump sequence
      00349A BF 02 04         [24] 1463 	cjne	r7,#0x02,00102$
                                   1464 ;	Peephole 200.b	removed redundant sjmp
                                   1465 ;	Peephole 500	removed redundant label 00110$
                                   1466 ;	Peephole 500	removed redundant label 00111$
                                   1467 ;	dhry_2.c:173: return (true);
                                   1468 ;	genRet
                                   1469 ;	Peephole 182.b	used 16 bit load of dptr
      00349D 90 00 01         [24] 1470 	mov	dptr,#0x0001
                                   1471 ;	Peephole 112.b	changed ljmp to sjmp
                                   1472 ;	Peephole 251.b	replaced sjmp 00104$ to ret with ret
      0034A0 22               [24] 1473 	ret
      0034A1                       1474 00102$:
                                   1475 ;	dhry_2.c:175: return (false);
                                   1476 ;	genRet
                                   1477 ;	Peephole 182.b	used 16 bit load of dptr
      0034A1 90 00 00         [24] 1478 	mov	dptr,#0x0000
                                   1479 ;	Peephole 500	removed redundant label 00104$
                                   1480 ;	dhry_2.c:176: } /* Func_3 */
      0034A4 22               [24] 1481 	ret
                                   1482 	.area CSEG    (CODE)
                                   1483 	.area CONST   (CODE)
                                   1484 	.area XINIT   (CODE)
                                   1485 	.area CABS    (ABS,CODE)
