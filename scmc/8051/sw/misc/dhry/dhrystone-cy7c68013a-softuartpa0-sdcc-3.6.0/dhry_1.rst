                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module dhry_1
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _init
                                     13 	.globl _clock
                                     14 	.globl _Func_2
                                     15 	.globl _Func_1
                                     16 	.globl _Proc_8
                                     17 	.globl _Proc_7
                                     18 	.globl _Proc_6
                                     19 	.globl ___memcpy
                                     20 	.globl _strcpy
                                     21 	.globl _printf
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _FL
                                     29 	.globl _P
                                     30 	.globl _TF2
                                     31 	.globl _EXF2
                                     32 	.globl _RCLK
                                     33 	.globl _TCLK
                                     34 	.globl _EXEN2
                                     35 	.globl _TR2
                                     36 	.globl _C_T2
                                     37 	.globl _CP_RL2
                                     38 	.globl _T2CON_7
                                     39 	.globl _T2CON_6
                                     40 	.globl _T2CON_5
                                     41 	.globl _T2CON_4
                                     42 	.globl _T2CON_3
                                     43 	.globl _T2CON_2
                                     44 	.globl _T2CON_1
                                     45 	.globl _T2CON_0
                                     46 	.globl _PT2
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ET2
                                     70 	.globl _ES
                                     71 	.globl _ET1
                                     72 	.globl _EX1
                                     73 	.globl _ET0
                                     74 	.globl _EX0
                                     75 	.globl _P2_7
                                     76 	.globl _P2_6
                                     77 	.globl _P2_5
                                     78 	.globl _P2_4
                                     79 	.globl _P2_3
                                     80 	.globl _P2_2
                                     81 	.globl _P2_1
                                     82 	.globl _P2_0
                                     83 	.globl _SM0
                                     84 	.globl _SM1
                                     85 	.globl _SM2
                                     86 	.globl _REN
                                     87 	.globl _TB8
                                     88 	.globl _RB8
                                     89 	.globl _TI
                                     90 	.globl _RI
                                     91 	.globl _T2EX
                                     92 	.globl _T2
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _TF1
                                    102 	.globl _TR1
                                    103 	.globl _TF0
                                    104 	.globl _TR0
                                    105 	.globl _IE1
                                    106 	.globl _IT1
                                    107 	.globl _IE0
                                    108 	.globl _IT0
                                    109 	.globl _P0_7
                                    110 	.globl _P0_6
                                    111 	.globl _P0_5
                                    112 	.globl _P0_4
                                    113 	.globl _P0_3
                                    114 	.globl _P0_2
                                    115 	.globl _P0_1
                                    116 	.globl _P0_0
                                    117 	.globl _B
                                    118 	.globl _A
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _TH2
                                    122 	.globl _TL2
                                    123 	.globl _RCAP2H
                                    124 	.globl _RCAP2L
                                    125 	.globl _T2MOD
                                    126 	.globl _T2CON
                                    127 	.globl _IP
                                    128 	.globl _P3
                                    129 	.globl _IE
                                    130 	.globl _P2
                                    131 	.globl _SBUF
                                    132 	.globl _SCON
                                    133 	.globl _P1
                                    134 	.globl _TH1
                                    135 	.globl _TH0
                                    136 	.globl _TL1
                                    137 	.globl _TL0
                                    138 	.globl _TMOD
                                    139 	.globl _TCON
                                    140 	.globl _PCON
                                    141 	.globl _DPH
                                    142 	.globl _DPL
                                    143 	.globl _SP
                                    144 	.globl _P0
                                    145 	.globl _Reg
                                    146 	.globl _malloc_2
                                    147 	.globl _malloc_1
                                    148 	.globl _Dhrystones_Per_Second
                                    149 	.globl _Microseconds
                                    150 	.globl _User_Time
                                    151 	.globl _End_Time
                                    152 	.globl _Begin_Time
                                    153 	.globl _Arr_2_Glob
                                    154 	.globl _Arr_1_Glob
                                    155 	.globl _Ch_2_Glob
                                    156 	.globl _Ch_1_Glob
                                    157 	.globl _Bool_Glob
                                    158 	.globl _Int_Glob
                                    159 	.globl _Next_Ptr_Glob
                                    160 	.globl _Ptr_Glob
                                    161 	.globl _Proc_1
                                    162 	.globl _Proc_2
                                    163 	.globl _Proc_3
                                    164 	.globl _Proc_4
                                    165 	.globl _Proc_5
                                    166 ;--------------------------------------------------------
                                    167 ; special function registers
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0	=	0x0080
                           000081   172 _SP	=	0x0081
                           000082   173 _DPL	=	0x0082
                           000083   174 _DPH	=	0x0083
                           000087   175 _PCON	=	0x0087
                           000088   176 _TCON	=	0x0088
                           000089   177 _TMOD	=	0x0089
                           00008A   178 _TL0	=	0x008a
                           00008B   179 _TL1	=	0x008b
                           00008C   180 _TH0	=	0x008c
                           00008D   181 _TH1	=	0x008d
                           000090   182 _P1	=	0x0090
                           000098   183 _SCON	=	0x0098
                           000099   184 _SBUF	=	0x0099
                           0000A0   185 _P2	=	0x00a0
                           0000A8   186 _IE	=	0x00a8
                           0000B0   187 _P3	=	0x00b0
                           0000B8   188 _IP	=	0x00b8
                           0000C8   189 _T2CON	=	0x00c8
                           0000C9   190 _T2MOD	=	0x00c9
                           0000CA   191 _RCAP2L	=	0x00ca
                           0000CB   192 _RCAP2H	=	0x00cb
                           0000CC   193 _TL2	=	0x00cc
                           0000CD   194 _TH2	=	0x00cd
                           0000D0   195 _PSW	=	0x00d0
                           0000E0   196 _ACC	=	0x00e0
                           0000E0   197 _A	=	0x00e0
                           0000F0   198 _B	=	0x00f0
                                    199 ;--------------------------------------------------------
                                    200 ; special function bits
                                    201 ;--------------------------------------------------------
                                    202 	.area RSEG    (ABS,DATA)
      000000                        203 	.org 0x0000
                           000080   204 _P0_0	=	0x0080
                           000081   205 _P0_1	=	0x0081
                           000082   206 _P0_2	=	0x0082
                           000083   207 _P0_3	=	0x0083
                           000084   208 _P0_4	=	0x0084
                           000085   209 _P0_5	=	0x0085
                           000086   210 _P0_6	=	0x0086
                           000087   211 _P0_7	=	0x0087
                           000088   212 _IT0	=	0x0088
                           000089   213 _IE0	=	0x0089
                           00008A   214 _IT1	=	0x008a
                           00008B   215 _IE1	=	0x008b
                           00008C   216 _TR0	=	0x008c
                           00008D   217 _TF0	=	0x008d
                           00008E   218 _TR1	=	0x008e
                           00008F   219 _TF1	=	0x008f
                           000090   220 _P1_0	=	0x0090
                           000091   221 _P1_1	=	0x0091
                           000092   222 _P1_2	=	0x0092
                           000093   223 _P1_3	=	0x0093
                           000094   224 _P1_4	=	0x0094
                           000095   225 _P1_5	=	0x0095
                           000096   226 _P1_6	=	0x0096
                           000097   227 _P1_7	=	0x0097
                           000090   228 _T2	=	0x0090
                           000091   229 _T2EX	=	0x0091
                           000098   230 _RI	=	0x0098
                           000099   231 _TI	=	0x0099
                           00009A   232 _RB8	=	0x009a
                           00009B   233 _TB8	=	0x009b
                           00009C   234 _REN	=	0x009c
                           00009D   235 _SM2	=	0x009d
                           00009E   236 _SM1	=	0x009e
                           00009F   237 _SM0	=	0x009f
                           0000A0   238 _P2_0	=	0x00a0
                           0000A1   239 _P2_1	=	0x00a1
                           0000A2   240 _P2_2	=	0x00a2
                           0000A3   241 _P2_3	=	0x00a3
                           0000A4   242 _P2_4	=	0x00a4
                           0000A5   243 _P2_5	=	0x00a5
                           0000A6   244 _P2_6	=	0x00a6
                           0000A7   245 _P2_7	=	0x00a7
                           0000A8   246 _EX0	=	0x00a8
                           0000A9   247 _ET0	=	0x00a9
                           0000AA   248 _EX1	=	0x00aa
                           0000AB   249 _ET1	=	0x00ab
                           0000AC   250 _ES	=	0x00ac
                           0000AD   251 _ET2	=	0x00ad
                           0000AF   252 _EA	=	0x00af
                           0000B0   253 _P3_0	=	0x00b0
                           0000B1   254 _P3_1	=	0x00b1
                           0000B2   255 _P3_2	=	0x00b2
                           0000B3   256 _P3_3	=	0x00b3
                           0000B4   257 _P3_4	=	0x00b4
                           0000B5   258 _P3_5	=	0x00b5
                           0000B6   259 _P3_6	=	0x00b6
                           0000B7   260 _P3_7	=	0x00b7
                           0000B0   261 _RXD	=	0x00b0
                           0000B1   262 _TXD	=	0x00b1
                           0000B2   263 _INT0	=	0x00b2
                           0000B3   264 _INT1	=	0x00b3
                           0000B4   265 _T0	=	0x00b4
                           0000B5   266 _T1	=	0x00b5
                           0000B6   267 _WR	=	0x00b6
                           0000B7   268 _RD	=	0x00b7
                           0000B8   269 _PX0	=	0x00b8
                           0000B9   270 _PT0	=	0x00b9
                           0000BA   271 _PX1	=	0x00ba
                           0000BB   272 _PT1	=	0x00bb
                           0000BC   273 _PS	=	0x00bc
                           0000BD   274 _PT2	=	0x00bd
                           0000C8   275 _T2CON_0	=	0x00c8
                           0000C9   276 _T2CON_1	=	0x00c9
                           0000CA   277 _T2CON_2	=	0x00ca
                           0000CB   278 _T2CON_3	=	0x00cb
                           0000CC   279 _T2CON_4	=	0x00cc
                           0000CD   280 _T2CON_5	=	0x00cd
                           0000CE   281 _T2CON_6	=	0x00ce
                           0000CF   282 _T2CON_7	=	0x00cf
                           0000C8   283 _CP_RL2	=	0x00c8
                           0000C9   284 _C_T2	=	0x00c9
                           0000CA   285 _TR2	=	0x00ca
                           0000CB   286 _EXEN2	=	0x00cb
                           0000CC   287 _TCLK	=	0x00cc
                           0000CD   288 _RCLK	=	0x00cd
                           0000CE   289 _EXF2	=	0x00ce
                           0000CF   290 _TF2	=	0x00cf
                           0000D0   291 _P	=	0x00d0
                           0000D1   292 _FL	=	0x00d1
                           0000D2   293 _OV	=	0x00d2
                           0000D3   294 _RS0	=	0x00d3
                           0000D4   295 _RS1	=	0x00d4
                           0000D5   296 _F0	=	0x00d5
                           0000D6   297 _AC	=	0x00d6
                           0000D7   298 _CY	=	0x00d7
                                    299 ;--------------------------------------------------------
                                    300 ; overlayable register banks
                                    301 ;--------------------------------------------------------
                                    302 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        303 	.ds 8
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
      000010                        308 _Proc_1_sloc0_1_0:
      000010                        309 	.ds 3
      000013                        310 _Proc_1_sloc1_1_0:
      000013                        311 	.ds 3
      000016                        312 _Proc_1_sloc2_1_0:
      000016                        313 	.ds 3
                                    314 ;--------------------------------------------------------
                                    315 ; overlayable items in internal ram 
                                    316 ;--------------------------------------------------------
                                    317 ;--------------------------------------------------------
                                    318 ; Stack segment in internal ram 
                                    319 ;--------------------------------------------------------
                                    320 	.area	SSEG
      000052                        321 __start__stack:
      000052                        322 	.ds	1
                                    323 
                                    324 ;--------------------------------------------------------
                                    325 ; indirectly addressable internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area ISEG    (DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; absolute internal ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area IABS    (ABS,DATA)
                                    332 	.area IABS    (ABS,DATA)
                                    333 ;--------------------------------------------------------
                                    334 ; bit data
                                    335 ;--------------------------------------------------------
                                    336 	.area BSEG    (BIT)
                                    337 ;--------------------------------------------------------
                                    338 ; paged external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area PSEG    (PAG,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XSEG    (XDATA)
      008000                        345 _Ptr_Glob::
      008000                        346 	.ds 3
      008003                        347 _Next_Ptr_Glob::
      008003                        348 	.ds 3
      008006                        349 _Int_Glob::
      008006                        350 	.ds 2
      008008                        351 _Bool_Glob::
      008008                        352 	.ds 2
      00800A                        353 _Ch_1_Glob::
      00800A                        354 	.ds 1
      00800B                        355 _Ch_2_Glob::
      00800B                        356 	.ds 1
      00800C                        357 _Arr_1_Glob::
      00800C                        358 	.ds 100
      008070                        359 _Arr_2_Glob::
      008070                        360 	.ds 5000
      0093F8                        361 _Begin_Time::
      0093F8                        362 	.ds 4
      0093FC                        363 _End_Time::
      0093FC                        364 	.ds 4
      009400                        365 _User_Time::
      009400                        366 	.ds 4
      009404                        367 _Microseconds::
      009404                        368 	.ds 4
      009408                        369 _Dhrystones_Per_Second::
      009408                        370 	.ds 4
      00940C                        371 _malloc_1::
      00940C                        372 	.ds 38
      009432                        373 _malloc_2::
      009432                        374 	.ds 38
      009458                        375 _main_Int_1_Loc_65536_54:
      009458                        376 	.ds 2
      00945A                        377 _main_Int_2_Loc_65536_54:
      00945A                        378 	.ds 2
      00945C                        379 _main_Int_3_Loc_65536_54:
      00945C                        380 	.ds 2
      00945E                        381 _main_Enum_Loc_65536_54:
      00945E                        382 	.ds 1
      00945F                        383 _main_Str_1_Loc_65536_54:
      00945F                        384 	.ds 31
      00947E                        385 _main_Str_2_Loc_65536_54:
      00947E                        386 	.ds 31
      00949D                        387 _Proc_1_Ptr_Val_Par_65536_66:
      00949D                        388 	.ds 3
      0094A0                        389 _Proc_2_Int_Par_Ref_65536_69:
      0094A0                        390 	.ds 3
      0094A3                        391 _Proc_2_Enum_Loc_65536_70:
      0094A3                        392 	.ds 1
      0094A4                        393 _Proc_3_Ptr_Ref_Par_65536_72:
      0094A4                        394 	.ds 3
                                    395 ;--------------------------------------------------------
                                    396 ; absolute external ram data
                                    397 ;--------------------------------------------------------
                                    398 	.area XABS    (ABS,XDATA)
                                    399 ;--------------------------------------------------------
                                    400 ; external initialized ram data
                                    401 ;--------------------------------------------------------
                                    402 	.area XISEG   (XDATA)
      009527                        403 _Reg::
      009527                        404 	.ds 2
                                    405 	.area HOME    (CODE)
                                    406 	.area GSINIT0 (CODE)
                                    407 	.area GSINIT1 (CODE)
                                    408 	.area GSINIT2 (CODE)
                                    409 	.area GSINIT3 (CODE)
                                    410 	.area GSINIT4 (CODE)
                                    411 	.area GSINIT5 (CODE)
                                    412 	.area GSINIT  (CODE)
                                    413 	.area GSFINAL (CODE)
                                    414 	.area CSEG    (CODE)
                                    415 ;--------------------------------------------------------
                                    416 ; interrupt vector 
                                    417 ;--------------------------------------------------------
                                    418 	.area HOME    (CODE)
      002000                        419 __interrupt_vect:
      002000 02 20 11         [24]  420 	ljmp	__sdcc_gsinit_startup
      002003 32               [24]  421 	reti
      002004                        422 	.ds	7
      00200B 02 34 B6         [24]  423 	ljmp	_clockinc
                                    424 ;--------------------------------------------------------
                                    425 ; global & static initialisations
                                    426 ;--------------------------------------------------------
                                    427 	.area HOME    (CODE)
                                    428 	.area GSINIT  (CODE)
                                    429 	.area GSFINAL (CODE)
                                    430 	.area GSINIT  (CODE)
                                    431 	.globl __sdcc_gsinit_startup
                                    432 	.globl __sdcc_program_startup
                                    433 	.globl __start__stack
                                    434 	.globl __mcs51_genXINIT
                                    435 	.globl __mcs51_genXRAMCLEAR
                                    436 	.globl __mcs51_genRAMCLEAR
                                    437 	.area GSFINAL (CODE)
      0020AA 02 20 0E         [24]  438 	ljmp	__sdcc_program_startup
                                    439 ;--------------------------------------------------------
                                    440 ; Home
                                    441 ;--------------------------------------------------------
                                    442 	.area HOME    (CODE)
                                    443 	.area HOME    (CODE)
      00200E                        444 __sdcc_program_startup:
      00200E 02 20 AD         [24]  445 	ljmp	_main
                                    446 ;	return from main will return to caller
                                    447 ;--------------------------------------------------------
                                    448 ; code
                                    449 ;--------------------------------------------------------
                                    450 	.area CSEG    (CODE)
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function 'main'
                                    453 ;------------------------------------------------------------
                                    454 ;Int_1_Loc                 Allocated with name '_main_Int_1_Loc_65536_54'
                                    455 ;Int_2_Loc                 Allocated with name '_main_Int_2_Loc_65536_54'
                                    456 ;Int_3_Loc                 Allocated with name '_main_Int_3_Loc_65536_54'
                                    457 ;Ch_Index                  Allocated with name '_main_Ch_Index_65536_54'
                                    458 ;Enum_Loc                  Allocated with name '_main_Enum_Loc_65536_54'
                                    459 ;Str_1_Loc                 Allocated with name '_main_Str_1_Loc_65536_54'
                                    460 ;Str_2_Loc                 Allocated with name '_main_Str_2_Loc_65536_54'
                                    461 ;Run_Index                 Allocated with name '_main_Run_Index_65536_54'
                                    462 ;Number_Of_Runs            Allocated with name '_main_Number_Of_Runs_65536_54'
                                    463 ;n                         Allocated with name '_main_n_131072_57'
                                    464 ;------------------------------------------------------------
                                    465 ;	dhry_1.c:84: void main (void)
                                    466 ;	-----------------------------------------
                                    467 ;	 function main
                                    468 ;	-----------------------------------------
      0020AD                        469 _main:
                           000007   470 	ar7 = 0x07
                           000006   471 	ar6 = 0x06
                           000005   472 	ar5 = 0x05
                           000004   473 	ar4 = 0x04
                           000003   474 	ar3 = 0x03
                           000002   475 	ar2 = 0x02
                           000001   476 	ar1 = 0x01
                           000000   477 	ar0 = 0x00
                                    478 ;	dhry_1.c:102: init();
                                    479 ;	genCall
      0020AD 12 34 A5         [24]  480 	lcall	_init
                                    481 ;	dhry_1.c:104: Next_Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_1;
                                    482 ;	genAssign
      0020B0 90 80 03         [24]  483 	mov	dptr,#_Next_Ptr_Glob
      0020B3 74 0C            [12]  484 	mov	a,#_malloc_1
      0020B5 F0               [24]  485 	movx	@dptr,a
      0020B6 74 94            [12]  486 	mov	a,#(_malloc_1 >> 8)
      0020B8 A3               [24]  487 	inc	dptr
      0020B9 F0               [24]  488 	movx	@dptr,a
                                    489 ;	Peephole 181	changed mov to clr
      0020BA E4               [12]  490 	clr	a
      0020BB A3               [24]  491 	inc	dptr
      0020BC F0               [24]  492 	movx	@dptr,a
                                    493 ;	dhry_1.c:105: Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_2;
                                    494 ;	genAssign
      0020BD 90 80 00         [24]  495 	mov	dptr,#_Ptr_Glob
      0020C0 74 32            [12]  496 	mov	a,#_malloc_2
      0020C2 F0               [24]  497 	movx	@dptr,a
      0020C3 74 94            [12]  498 	mov	a,#(_malloc_2 >> 8)
      0020C5 A3               [24]  499 	inc	dptr
      0020C6 F0               [24]  500 	movx	@dptr,a
                                    501 ;	Peephole 181	changed mov to clr
      0020C7 E4               [12]  502 	clr	a
      0020C8 A3               [24]  503 	inc	dptr
      0020C9 F0               [24]  504 	movx	@dptr,a
                                    505 ;	dhry_1.c:107: Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
                                    506 ;	genPointerSet
                                    507 ;	genFarPointerSet
      0020CA 90 94 32         [24]  508 	mov	dptr,#_malloc_2
      0020CD 74 0C            [12]  509 	mov	a,#_malloc_1
      0020CF F0               [24]  510 	movx	@dptr,a
      0020D0 74 94            [12]  511 	mov	a,#(_malloc_1 >> 8)
      0020D2 A3               [24]  512 	inc	dptr
      0020D3 F0               [24]  513 	movx	@dptr,a
                                    514 ;	Peephole 181	changed mov to clr
      0020D4 E4               [12]  515 	clr	a
      0020D5 A3               [24]  516 	inc	dptr
      0020D6 F0               [24]  517 	movx	@dptr,a
                                    518 ;	dhry_1.c:108: Ptr_Glob->Discr                       = Ident_1;
                                    519 ;	genAssign
      0020D7 90 80 00         [24]  520 	mov	dptr,#_Ptr_Glob
      0020DA E0               [24]  521 	movx	a,@dptr
      0020DB FD               [12]  522 	mov	r5,a
      0020DC A3               [24]  523 	inc	dptr
      0020DD E0               [24]  524 	movx	a,@dptr
      0020DE FE               [12]  525 	mov	r6,a
      0020DF A3               [24]  526 	inc	dptr
      0020E0 E0               [24]  527 	movx	a,@dptr
      0020E1 FF               [12]  528 	mov	r7,a
                                    529 ;	genPlus
                                    530 ;	genPlusIncr
      0020E2 74 03            [12]  531 	mov	a,#0x03
      0020E4 2D               [12]  532 	add	a,r5
      0020E5 FD               [12]  533 	mov	r5,a
                                    534 ;	Peephole 181	changed mov to clr
      0020E6 E4               [12]  535 	clr	a
      0020E7 3E               [12]  536 	addc	a,r6
      0020E8 FE               [12]  537 	mov	r6,a
                                    538 ;	genPointerSet
                                    539 ;	genGenPointerSet
      0020E9 8D 82            [24]  540 	mov	dpl,r5
      0020EB 8E 83            [24]  541 	mov	dph,r6
      0020ED 8F F0            [24]  542 	mov	b,r7
                                    543 ;	Peephole 181	changed mov to clr
      0020EF E4               [12]  544 	clr	a
      0020F0 12 37 8F         [24]  545 	lcall	__gptrput
                                    546 ;	dhry_1.c:109: Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
                                    547 ;	genAssign
      0020F3 90 80 00         [24]  548 	mov	dptr,#_Ptr_Glob
      0020F6 E0               [24]  549 	movx	a,@dptr
      0020F7 FD               [12]  550 	mov	r5,a
      0020F8 A3               [24]  551 	inc	dptr
      0020F9 E0               [24]  552 	movx	a,@dptr
      0020FA FE               [12]  553 	mov	r6,a
      0020FB A3               [24]  554 	inc	dptr
      0020FC E0               [24]  555 	movx	a,@dptr
      0020FD FF               [12]  556 	mov	r7,a
                                    557 ;	genPlus
                                    558 ;	genPlusIncr
      0020FE 74 04            [12]  559 	mov	a,#0x04
      002100 2D               [12]  560 	add	a,r5
      002101 FD               [12]  561 	mov	r5,a
                                    562 ;	Peephole 181	changed mov to clr
      002102 E4               [12]  563 	clr	a
      002103 3E               [12]  564 	addc	a,r6
      002104 FE               [12]  565 	mov	r6,a
                                    566 ;	genPointerSet
                                    567 ;	genGenPointerSet
      002105 8D 82            [24]  568 	mov	dpl,r5
      002107 8E 83            [24]  569 	mov	dph,r6
      002109 8F F0            [24]  570 	mov	b,r7
      00210B 74 02            [12]  571 	mov	a,#0x02
      00210D 12 37 8F         [24]  572 	lcall	__gptrput
                                    573 ;	dhry_1.c:110: Ptr_Glob->variant.var_1.Int_Comp      = 40;
                                    574 ;	genAssign
      002110 90 80 00         [24]  575 	mov	dptr,#_Ptr_Glob
      002113 E0               [24]  576 	movx	a,@dptr
      002114 FD               [12]  577 	mov	r5,a
      002115 A3               [24]  578 	inc	dptr
      002116 E0               [24]  579 	movx	a,@dptr
      002117 FE               [12]  580 	mov	r6,a
      002118 A3               [24]  581 	inc	dptr
      002119 E0               [24]  582 	movx	a,@dptr
      00211A FF               [12]  583 	mov	r7,a
                                    584 ;	genPlus
                                    585 ;	genPlusIncr
      00211B 74 05            [12]  586 	mov	a,#0x05
      00211D 2D               [12]  587 	add	a,r5
      00211E FD               [12]  588 	mov	r5,a
                                    589 ;	Peephole 181	changed mov to clr
      00211F E4               [12]  590 	clr	a
      002120 3E               [12]  591 	addc	a,r6
      002121 FE               [12]  592 	mov	r6,a
                                    593 ;	genPointerSet
                                    594 ;	genGenPointerSet
      002122 8D 82            [24]  595 	mov	dpl,r5
      002124 8E 83            [24]  596 	mov	dph,r6
      002126 8F F0            [24]  597 	mov	b,r7
      002128 74 28            [12]  598 	mov	a,#0x28
      00212A 12 37 8F         [24]  599 	lcall	__gptrput
      00212D A3               [24]  600 	inc	dptr
                                    601 ;	Peephole 181	changed mov to clr
      00212E E4               [12]  602 	clr	a
      00212F 12 37 8F         [24]  603 	lcall	__gptrput
                                    604 ;	dhry_1.c:111: strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
                                    605 ;	genAssign
      002132 90 80 00         [24]  606 	mov	dptr,#_Ptr_Glob
      002135 E0               [24]  607 	movx	a,@dptr
      002136 FD               [12]  608 	mov	r5,a
      002137 A3               [24]  609 	inc	dptr
      002138 E0               [24]  610 	movx	a,@dptr
      002139 FE               [12]  611 	mov	r6,a
      00213A A3               [24]  612 	inc	dptr
      00213B E0               [24]  613 	movx	a,@dptr
      00213C FF               [12]  614 	mov	r7,a
                                    615 ;	genPlus
                                    616 ;	genPlusIncr
      00213D 74 07            [12]  617 	mov	a,#0x07
      00213F 2D               [12]  618 	add	a,r5
      002140 FD               [12]  619 	mov	r5,a
                                    620 ;	Peephole 181	changed mov to clr
      002141 E4               [12]  621 	clr	a
      002142 3E               [12]  622 	addc	a,r6
      002143 FE               [12]  623 	mov	r6,a
                                    624 ;	dhry_1.c:112: "DHRYSTONE PROGRAM, SOME STRING");
                                    625 ;	genCast
      002144 90 94 CE         [24]  626 	mov	dptr,#_strcpy_PARM_2
      002147 74 0C            [12]  627 	mov	a,#___str_0
      002149 F0               [24]  628 	movx	@dptr,a
      00214A 74 48            [12]  629 	mov	a,#(___str_0 >> 8)
      00214C A3               [24]  630 	inc	dptr
      00214D F0               [24]  631 	movx	@dptr,a
      00214E 74 80            [12]  632 	mov	a,#0x80
      002150 A3               [24]  633 	inc	dptr
      002151 F0               [24]  634 	movx	@dptr,a
                                    635 ;	genCall
      002152 8D 82            [24]  636 	mov	dpl,r5
      002154 8E 83            [24]  637 	mov	dph,r6
      002156 8F F0            [24]  638 	mov	b,r7
      002158 12 35 24         [24]  639 	lcall	_strcpy
                                    640 ;	dhry_1.c:113: strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
                                    641 ;	genCast
      00215B 90 94 CE         [24]  642 	mov	dptr,#_strcpy_PARM_2
      00215E 74 2B            [12]  643 	mov	a,#___str_1
      002160 F0               [24]  644 	movx	@dptr,a
      002161 74 48            [12]  645 	mov	a,#(___str_1 >> 8)
      002163 A3               [24]  646 	inc	dptr
      002164 F0               [24]  647 	movx	@dptr,a
      002165 74 80            [12]  648 	mov	a,#0x80
      002167 A3               [24]  649 	inc	dptr
      002168 F0               [24]  650 	movx	@dptr,a
                                    651 ;	genCall
                                    652 ;	Peephole 182.a	used 16 bit load of DPTR
      002169 90 94 5F         [24]  653 	mov	dptr,#_main_Str_1_Loc_65536_54
      00216C 75 F0 00         [24]  654 	mov	b,#0x00
      00216F 12 35 24         [24]  655 	lcall	_strcpy
                                    656 ;	dhry_1.c:115: Arr_2_Glob [8][7] = 10;
                                    657 ;	genPointerSet
                                    658 ;	genFarPointerSet
      002172 90 83 9E         [24]  659 	mov	dptr,#(_Arr_2_Glob + 0x032e)
      002175 74 0A            [12]  660 	mov	a,#0x0a
      002177 F0               [24]  661 	movx	@dptr,a
                                    662 ;	Peephole 181	changed mov to clr
      002178 E4               [12]  663 	clr	a
      002179 A3               [24]  664 	inc	dptr
      00217A F0               [24]  665 	movx	@dptr,a
                                    666 ;	dhry_1.c:121: printf ("\r\n");
                                    667 ;	genIpush
      00217B 74 4A            [12]  668 	mov	a,#___str_2
      00217D C0 E0            [24]  669 	push	acc
      00217F 74 48            [12]  670 	mov	a,#(___str_2 >> 8)
      002181 C0 E0            [24]  671 	push	acc
      002183 74 80            [12]  672 	mov	a,#0x80
      002185 C0 E0            [24]  673 	push	acc
                                    674 ;	genCall
      002187 12 39 EF         [24]  675 	lcall	_printf
      00218A 15 81            [12]  676 	dec	sp
      00218C 15 81            [12]  677 	dec	sp
      00218E 15 81            [12]  678 	dec	sp
                                    679 ;	dhry_1.c:122: printf ("Dhrystone Benchmark, Version 2.1 (Language: C)\r\n");
                                    680 ;	genIpush
      002190 74 4D            [12]  681 	mov	a,#___str_3
      002192 C0 E0            [24]  682 	push	acc
      002194 74 48            [12]  683 	mov	a,#(___str_3 >> 8)
      002196 C0 E0            [24]  684 	push	acc
      002198 74 80            [12]  685 	mov	a,#0x80
      00219A C0 E0            [24]  686 	push	acc
                                    687 ;	genCall
      00219C 12 39 EF         [24]  688 	lcall	_printf
      00219F 15 81            [12]  689 	dec	sp
      0021A1 15 81            [12]  690 	dec	sp
      0021A3 15 81            [12]  691 	dec	sp
                                    692 ;	dhry_1.c:123: printf ("\r\n");
                                    693 ;	genIpush
      0021A5 74 4A            [12]  694 	mov	a,#___str_2
      0021A7 C0 E0            [24]  695 	push	acc
      0021A9 74 48            [12]  696 	mov	a,#(___str_2 >> 8)
      0021AB C0 E0            [24]  697 	push	acc
      0021AD 74 80            [12]  698 	mov	a,#0x80
      0021AF C0 E0            [24]  699 	push	acc
                                    700 ;	genCall
      0021B1 12 39 EF         [24]  701 	lcall	_printf
      0021B4 15 81            [12]  702 	dec	sp
      0021B6 15 81            [12]  703 	dec	sp
      0021B8 15 81            [12]  704 	dec	sp
                                    705 ;	dhry_1.c:124: if (Reg)
                                    706 ;	genIfx
      0021BA 90 95 27         [24]  707 	mov	dptr,#_Reg
      0021BD E0               [24]  708 	movx	a,@dptr
      0021BE F5 F0            [12]  709 	mov	b,a
      0021C0 A3               [24]  710 	inc	dptr
      0021C1 E0               [24]  711 	movx	a,@dptr
      0021C2 45 F0            [12]  712 	orl	a,b
                                    713 ;	genIfxJump
                                    714 ;	Peephole 108.c	removed ljmp by inverse jump logic
      0021C4 60 2C            [24]  715 	jz	00102$
                                    716 ;	Peephole 500	removed redundant label 00161$
                                    717 ;	dhry_1.c:126: printf ("Program compiled with 'register' attribute\r\n");
                                    718 ;	genIpush
      0021C6 74 7E            [12]  719 	mov	a,#___str_4
      0021C8 C0 E0            [24]  720 	push	acc
      0021CA 74 48            [12]  721 	mov	a,#(___str_4 >> 8)
      0021CC C0 E0            [24]  722 	push	acc
      0021CE 74 80            [12]  723 	mov	a,#0x80
      0021D0 C0 E0            [24]  724 	push	acc
                                    725 ;	genCall
      0021D2 12 39 EF         [24]  726 	lcall	_printf
      0021D5 15 81            [12]  727 	dec	sp
      0021D7 15 81            [12]  728 	dec	sp
      0021D9 15 81            [12]  729 	dec	sp
                                    730 ;	dhry_1.c:127: printf ("\r\n");
                                    731 ;	genIpush
      0021DB 74 4A            [12]  732 	mov	a,#___str_2
      0021DD C0 E0            [24]  733 	push	acc
      0021DF 74 48            [12]  734 	mov	a,#(___str_2 >> 8)
      0021E1 C0 E0            [24]  735 	push	acc
      0021E3 74 80            [12]  736 	mov	a,#0x80
      0021E5 C0 E0            [24]  737 	push	acc
                                    738 ;	genCall
      0021E7 12 39 EF         [24]  739 	lcall	_printf
      0021EA 15 81            [12]  740 	dec	sp
      0021EC 15 81            [12]  741 	dec	sp
      0021EE 15 81            [12]  742 	dec	sp
                                    743 ;	Peephole 112.b	changed ljmp to sjmp
      0021F0 80 2A            [24]  744 	sjmp	00103$
      0021F2                        745 00102$:
                                    746 ;	dhry_1.c:131: printf ("Program compiled without 'register' attribute\r\n");
                                    747 ;	genIpush
      0021F2 74 AB            [12]  748 	mov	a,#___str_5
      0021F4 C0 E0            [24]  749 	push	acc
      0021F6 74 48            [12]  750 	mov	a,#(___str_5 >> 8)
      0021F8 C0 E0            [24]  751 	push	acc
      0021FA 74 80            [12]  752 	mov	a,#0x80
      0021FC C0 E0            [24]  753 	push	acc
                                    754 ;	genCall
      0021FE 12 39 EF         [24]  755 	lcall	_printf
      002201 15 81            [12]  756 	dec	sp
      002203 15 81            [12]  757 	dec	sp
      002205 15 81            [12]  758 	dec	sp
                                    759 ;	dhry_1.c:132: printf ("\r\n");
                                    760 ;	genIpush
      002207 74 4A            [12]  761 	mov	a,#___str_2
      002209 C0 E0            [24]  762 	push	acc
      00220B 74 48            [12]  763 	mov	a,#(___str_2 >> 8)
      00220D C0 E0            [24]  764 	push	acc
      00220F 74 80            [12]  765 	mov	a,#0x80
      002211 C0 E0            [24]  766 	push	acc
                                    767 ;	genCall
      002213 12 39 EF         [24]  768 	lcall	_printf
      002216 15 81            [12]  769 	dec	sp
      002218 15 81            [12]  770 	dec	sp
      00221A 15 81            [12]  771 	dec	sp
      00221C                        772 00103$:
                                    773 ;	dhry_1.c:134: printf ("Please give the number of runs through the benchmark: ");
                                    774 ;	genIpush
      00221C 74 DB            [12]  775 	mov	a,#___str_6
      00221E C0 E0            [24]  776 	push	acc
      002220 74 48            [12]  777 	mov	a,#(___str_6 >> 8)
      002222 C0 E0            [24]  778 	push	acc
      002224 74 80            [12]  779 	mov	a,#0x80
      002226 C0 E0            [24]  780 	push	acc
                                    781 ;	genCall
      002228 12 39 EF         [24]  782 	lcall	_printf
      00222B 15 81            [12]  783 	dec	sp
      00222D 15 81            [12]  784 	dec	sp
      00222F 15 81            [12]  785 	dec	sp
                                    786 ;	dhry_1.c:140: printf ("\r\n");
                                    787 ;	genIpush
      002231 74 4A            [12]  788 	mov	a,#___str_2
      002233 C0 E0            [24]  789 	push	acc
      002235 74 48            [12]  790 	mov	a,#(___str_2 >> 8)
      002237 C0 E0            [24]  791 	push	acc
      002239 74 80            [12]  792 	mov	a,#0x80
      00223B C0 E0            [24]  793 	push	acc
                                    794 ;	genCall
      00223D 12 39 EF         [24]  795 	lcall	_printf
      002240 15 81            [12]  796 	dec	sp
      002242 15 81            [12]  797 	dec	sp
      002244 15 81            [12]  798 	dec	sp
                                    799 ;	dhry_1.c:142: printf ("Execution starts, %d runs through Dhrystone\r\n", Number_Of_Runs);
                                    800 ;	genIpush
      002246 74 20            [12]  801 	mov	a,#0x20
      002248 C0 E0            [24]  802 	push	acc
      00224A 74 4E            [12]  803 	mov	a,#0x4e
      00224C C0 E0            [24]  804 	push	acc
                                    805 ;	genIpush
      00224E 74 12            [12]  806 	mov	a,#___str_7
      002250 C0 E0            [24]  807 	push	acc
      002252 74 49            [12]  808 	mov	a,#(___str_7 >> 8)
      002254 C0 E0            [24]  809 	push	acc
      002256 74 80            [12]  810 	mov	a,#0x80
      002258 C0 E0            [24]  811 	push	acc
                                    812 ;	genCall
      00225A 12 39 EF         [24]  813 	lcall	_printf
      00225D E5 81            [12]  814 	mov	a,sp
      00225F 24 FB            [12]  815 	add	a,#0xfb
      002261 F5 81            [12]  816 	mov	sp,a
                                    817 ;	dhry_1.c:156: Begin_Time = clock();
                                    818 ;	genCall
      002263 12 34 F3         [24]  819 	lcall	_clock
      002266 AC 82            [24]  820 	mov	r4,dpl
      002268 AD 83            [24]  821 	mov	r5,dph
      00226A AE F0            [24]  822 	mov	r6,b
      00226C FF               [12]  823 	mov	r7,a
                                    824 ;	genAssign
      00226D 90 93 F8         [24]  825 	mov	dptr,#_Begin_Time
      002270 EC               [12]  826 	mov	a,r4
      002271 F0               [24]  827 	movx	@dptr,a
      002272 ED               [12]  828 	mov	a,r5
      002273 A3               [24]  829 	inc	dptr
      002274 F0               [24]  830 	movx	@dptr,a
      002275 EE               [12]  831 	mov	a,r6
      002276 A3               [24]  832 	inc	dptr
      002277 F0               [24]  833 	movx	@dptr,a
      002278 EF               [12]  834 	mov	a,r7
      002279 A3               [24]  835 	inc	dptr
      00227A F0               [24]  836 	movx	@dptr,a
                                    837 ;	dhry_1.c:159: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
                                    838 ;	genAssign
      00227B 7E 01            [12]  839 	mov	r6,#0x01
      00227D 7F 00            [12]  840 	mov	r7,#0x00
      00227F                        841 00118$:
                                    842 ;	genCmpGt
                                    843 ;	genCmp
      00227F C3               [12]  844 	clr	c
      002280 74 20            [12]  845 	mov	a,#0x20
      002282 9E               [12]  846 	subb	a,r6
                                    847 ;	Peephole 159	avoided xrl during execution
      002283 74 CE            [12]  848 	mov	a,#(0x4e ^ 0x80)
      002285 8F F0            [24]  849 	mov	b,r7
      002287 63 F0 80         [24]  850 	xrl	b,#0x80
      00228A 95 F0            [12]  851 	subb	a,b
                                    852 ;	genIfxJump
      00228C 50 03            [24]  853 	jnc	00162$
      00228E 02 24 F7         [24]  854 	ljmp	00110$
      002291                        855 00162$:
                                    856 ;	dhry_1.c:162: Proc_5();
                                    857 ;	genCall
      002291 C0 07            [24]  858 	push	ar7
      002293 C0 06            [24]  859 	push	ar6
      002295 12 30 7C         [24]  860 	lcall	_Proc_5
                                    861 ;	Peephole 300	pop ar6 removed
                                    862 ;	Peephole 300	pop ar7 removed
                                    863 ;	dhry_1.c:163: Proc_4();
                                    864 ;	genCall
                                    865 ;	Peephole	push ar7 removed
                                    866 ;	Peephole	push ar6 removed
      002298 12 30 5E         [24]  867 	lcall	_Proc_4
                                    868 ;	Peephole 300	pop ar6 removed
                                    869 ;	Peephole 300	pop ar7 removed
                                    870 ;	dhry_1.c:165: Int_1_Loc = 2;
                                    871 ;	genAssign
      00229B 90 94 58         [24]  872 	mov	dptr,#_main_Int_1_Loc_65536_54
      00229E 74 02            [12]  873 	mov	a,#0x02
      0022A0 F0               [24]  874 	movx	@dptr,a
                                    875 ;	Peephole 181	changed mov to clr
      0022A1 E4               [12]  876 	clr	a
      0022A2 A3               [24]  877 	inc	dptr
      0022A3 F0               [24]  878 	movx	@dptr,a
                                    879 ;	dhry_1.c:166: Int_2_Loc = 3;
                                    880 ;	genAssign
      0022A4 90 94 5A         [24]  881 	mov	dptr,#_main_Int_2_Loc_65536_54
      0022A7 74 03            [12]  882 	mov	a,#0x03
      0022A9 F0               [24]  883 	movx	@dptr,a
                                    884 ;	Peephole 181	changed mov to clr
      0022AA E4               [12]  885 	clr	a
      0022AB A3               [24]  886 	inc	dptr
      0022AC F0               [24]  887 	movx	@dptr,a
                                    888 ;	dhry_1.c:167: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
                                    889 ;	genCast
      0022AD 90 94 CE         [24]  890 	mov	dptr,#_strcpy_PARM_2
      0022B0 74 40            [12]  891 	mov	a,#___str_8
      0022B2 F0               [24]  892 	movx	@dptr,a
      0022B3 74 49            [12]  893 	mov	a,#(___str_8 >> 8)
      0022B5 A3               [24]  894 	inc	dptr
      0022B6 F0               [24]  895 	movx	@dptr,a
      0022B7 74 80            [12]  896 	mov	a,#0x80
      0022B9 A3               [24]  897 	inc	dptr
      0022BA F0               [24]  898 	movx	@dptr,a
                                    899 ;	genCall
                                    900 ;	Peephole 182.a	used 16 bit load of DPTR
      0022BB 90 94 7E         [24]  901 	mov	dptr,#_main_Str_2_Loc_65536_54
      0022BE 75 F0 00         [24]  902 	mov	b,#0x00
                                    903 ;	Peephole	push ar7 removed
                                    904 ;	Peephole	push ar6 removed
      0022C1 12 35 24         [24]  905 	lcall	_strcpy
                                    906 ;	Peephole 300	pop ar6 removed
                                    907 ;	Peephole 300	pop ar7 removed
                                    908 ;	dhry_1.c:168: Enum_Loc = Ident_2;
                                    909 ;	genAssign
      0022C4 90 94 5E         [24]  910 	mov	dptr,#_main_Enum_Loc_65536_54
      0022C7 74 01            [12]  911 	mov	a,#0x01
      0022C9 F0               [24]  912 	movx	@dptr,a
                                    913 ;	dhry_1.c:169: Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
                                    914 ;	genCast
      0022CA 90 94 BE         [24]  915 	mov	dptr,#_Func_2_PARM_2
      0022CD 74 7E            [12]  916 	mov	a,#_main_Str_2_Loc_65536_54
      0022CF F0               [24]  917 	movx	@dptr,a
      0022D0 74 94            [12]  918 	mov	a,#(_main_Str_2_Loc_65536_54 >> 8)
      0022D2 A3               [24]  919 	inc	dptr
      0022D3 F0               [24]  920 	movx	@dptr,a
                                    921 ;	Peephole 181	changed mov to clr
      0022D4 E4               [12]  922 	clr	a
      0022D5 A3               [24]  923 	inc	dptr
      0022D6 F0               [24]  924 	movx	@dptr,a
                                    925 ;	genCall
                                    926 ;	Peephole 182.a	used 16 bit load of DPTR
      0022D7 90 94 5F         [24]  927 	mov	dptr,#_main_Str_1_Loc_65536_54
                                    928 ;	genFromRTrack replaced	mov	b,#0x00
      0022DA F5 F0            [12]  929 	mov	b,a
                                    930 ;	Peephole	push ar7 removed
                                    931 ;	Peephole	push ar6 removed
      0022DC 12 33 6C         [24]  932 	lcall	_Func_2
      0022DF AC 82            [24]  933 	mov	r4,dpl
      0022E1 AD 83            [24]  934 	mov	r5,dph
      0022E3 D0 06            [24]  935 	pop	ar6
      0022E5 D0 07            [24]  936 	pop	ar7
                                    937 ;	genNot
      0022E7 EC               [12]  938 	mov	a,r4
      0022E8 4D               [12]  939 	orl	a,r5
      0022E9 B4 01 00         [24]  940 	cjne	a,#0x01,00163$
      0022EC                        941 00163$:
      0022EC E4               [12]  942 	clr	a
      0022ED 33               [12]  943 	rlc	a
                                    944 ;	genCast
      0022EE FD               [12]  945 	mov	r5,a
      0022EF 90 80 08         [24]  946 	mov	dptr,#_Bool_Glob
                                    947 ;	Peephole 100	removed redundant mov
      0022F2 F0               [24]  948 	movx	@dptr,a
      0022F3 ED               [12]  949 	mov	a,r5
      0022F4 33               [12]  950 	rlc	a
      0022F5 95 E0            [12]  951 	subb	a,acc
      0022F7 A3               [24]  952 	inc	dptr
      0022F8 F0               [24]  953 	movx	@dptr,a
                                    954 ;	dhry_1.c:171: while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
                                    955 ;	genAssign
      0022F9 90 94 58         [24]  956 	mov	dptr,#_main_Int_1_Loc_65536_54
      0022FC E0               [24]  957 	movx	a,@dptr
      0022FD FC               [12]  958 	mov	r4,a
      0022FE A3               [24]  959 	inc	dptr
      0022FF E0               [24]  960 	movx	a,@dptr
      002300 FD               [12]  961 	mov	r5,a
      002301                        962 00104$:
                                    963 ;	genCmpLt
                                    964 ;	genCmp
      002301 C3               [12]  965 	clr	c
      002302 EC               [12]  966 	mov	a,r4
      002303 94 03            [12]  967 	subb	a,#0x03
      002305 ED               [12]  968 	mov	a,r5
      002306 64 80            [12]  969 	xrl	a,#0x80
      002308 94 80            [12]  970 	subb	a,#0x80
                                    971 ;	genIfxJump
                                    972 ;	Peephole 108.a	removed ljmp by inverse jump logic
      00230A 50 67            [24]  973 	jnc	00131$
                                    974 ;	Peephole 500	removed redundant label 00164$
                                    975 ;	dhry_1.c:173: Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
                                    976 ;	genAssign
      00230C 90 94 DD         [24]  977 	mov	dptr,#__mulint_PARM_2
      00230F EC               [12]  978 	mov	a,r4
      002310 F0               [24]  979 	movx	@dptr,a
      002311 ED               [12]  980 	mov	a,r5
      002312 A3               [24]  981 	inc	dptr
      002313 F0               [24]  982 	movx	@dptr,a
                                    983 ;	genCall
                                    984 ;	Peephole 182.b	used 16 bit load of dptr
      002314 90 00 05         [24]  985 	mov	dptr,#0x0005
      002317 C0 07            [24]  986 	push	ar7
      002319 C0 06            [24]  987 	push	ar6
      00231B C0 05            [24]  988 	push	ar5
      00231D C0 04            [24]  989 	push	ar4
      00231F 12 37 AA         [24]  990 	lcall	__mulint
      002322 E5 82            [12]  991 	mov	a,dpl
      002324 85 83 F0         [24]  992 	mov	b,dph
      002327 D0 04            [24]  993 	pop	ar4
      002329 D0 05            [24]  994 	pop	ar5
                                    995 ;	Peephole 300	pop ar6 removed
                                    996 ;	Peephole 300	pop ar7 removed
                                    997 ;	genMinus
                                    998 ;	genMinusDec
      00232B 24 FD            [12]  999 	add	a,#0xfd
      00232D FA               [12] 1000 	mov	r2,a
      00232E E5 F0            [12] 1001 	mov	a,b
      002330 34 FF            [12] 1002 	addc	a,#0xff
      002332 FB               [12] 1003 	mov	r3,a
                                   1004 ;	genAssign
      002333 90 94 5C         [24] 1005 	mov	dptr,#_main_Int_3_Loc_65536_54
      002336 EA               [12] 1006 	mov	a,r2
      002337 F0               [24] 1007 	movx	@dptr,a
      002338 EB               [12] 1008 	mov	a,r3
      002339 A3               [24] 1009 	inc	dptr
      00233A F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	dhry_1.c:175: Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
                                   1012 ;	genAssign
      00233B 90 94 AB         [24] 1013 	mov	dptr,#_Proc_7_PARM_2
      00233E 74 03            [12] 1014 	mov	a,#0x03
      002340 F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	Peephole 181	changed mov to clr
      002341 E4               [12] 1017 	clr	a
      002342 A3               [24] 1018 	inc	dptr
      002343 F0               [24] 1019 	movx	@dptr,a
                                   1020 ;	genAssign
      002344 90 94 AD         [24] 1021 	mov	dptr,#_Proc_7_PARM_3
      002347 74 5C            [12] 1022 	mov	a,#_main_Int_3_Loc_65536_54
      002349 F0               [24] 1023 	movx	@dptr,a
      00234A 74 94            [12] 1024 	mov	a,#(_main_Int_3_Loc_65536_54 >> 8)
      00234C A3               [24] 1025 	inc	dptr
      00234D F0               [24] 1026 	movx	@dptr,a
                                   1027 ;	Peephole 181	changed mov to clr
      00234E E4               [12] 1028 	clr	a
      00234F A3               [24] 1029 	inc	dptr
      002350 F0               [24] 1030 	movx	@dptr,a
                                   1031 ;	genCall
      002351 8C 82            [24] 1032 	mov	dpl,r4
      002353 8D 83            [24] 1033 	mov	dph,r5
                                   1034 ;	Peephole	push ar7 removed
                                   1035 ;	Peephole	push ar6 removed
      002355 C0 05            [24] 1036 	push	ar5
      002357 C0 04            [24] 1037 	push	ar4
      002359 12 31 34         [24] 1038 	lcall	_Proc_7
      00235C D0 04            [24] 1039 	pop	ar4
      00235E D0 05            [24] 1040 	pop	ar5
      002360 D0 06            [24] 1041 	pop	ar6
      002362 D0 07            [24] 1042 	pop	ar7
                                   1043 ;	dhry_1.c:177: Int_1_Loc += 1;
                                   1044 ;	genPlus
                                   1045 ;	genPlusIncr
      002364 0C               [12] 1046 	inc	r4
      002365 BC 00 01         [24] 1047 	cjne	r4,#0x00,00165$
      002368 0D               [12] 1048 	inc	r5
      002369                       1049 00165$:
                                   1050 ;	genAssign
      002369 90 94 58         [24] 1051 	mov	dptr,#_main_Int_1_Loc_65536_54
      00236C EC               [12] 1052 	mov	a,r4
      00236D F0               [24] 1053 	movx	@dptr,a
      00236E ED               [12] 1054 	mov	a,r5
      00236F A3               [24] 1055 	inc	dptr
      002370 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	Peephole 112.b	changed ljmp to sjmp
      002371 80 8E            [24] 1058 	sjmp	00104$
      002373                       1059 00131$:
                                   1060 ;	genAssign
      002373 90 94 58         [24] 1061 	mov	dptr,#_main_Int_1_Loc_65536_54
      002376 EC               [12] 1062 	mov	a,r4
      002377 F0               [24] 1063 	movx	@dptr,a
      002378 ED               [12] 1064 	mov	a,r5
      002379 A3               [24] 1065 	inc	dptr
      00237A F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	dhry_1.c:180: Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
                                   1068 ;	genAssign
      00237B 90 94 5C         [24] 1069 	mov	dptr,#_main_Int_3_Loc_65536_54
      00237E E0               [24] 1070 	movx	a,@dptr
      00237F FA               [12] 1071 	mov	r2,a
      002380 A3               [24] 1072 	inc	dptr
      002381 E0               [24] 1073 	movx	a,@dptr
      002382 FB               [12] 1074 	mov	r3,a
                                   1075 ;	genAssign
      002383 90 94 B2         [24] 1076 	mov	dptr,#_Proc_8_PARM_2
      002386 74 70            [12] 1077 	mov	a,#_Arr_2_Glob
      002388 F0               [24] 1078 	movx	@dptr,a
      002389 74 80            [12] 1079 	mov	a,#(_Arr_2_Glob >> 8)
      00238B A3               [24] 1080 	inc	dptr
      00238C F0               [24] 1081 	movx	@dptr,a
                                   1082 ;	Peephole 181	changed mov to clr
      00238D E4               [12] 1083 	clr	a
      00238E A3               [24] 1084 	inc	dptr
      00238F F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	genAssign
      002390 90 94 B5         [24] 1087 	mov	dptr,#_Proc_8_PARM_3
      002393 EC               [12] 1088 	mov	a,r4
      002394 F0               [24] 1089 	movx	@dptr,a
      002395 ED               [12] 1090 	mov	a,r5
      002396 A3               [24] 1091 	inc	dptr
      002397 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	genAssign
      002398 90 94 B7         [24] 1094 	mov	dptr,#_Proc_8_PARM_4
      00239B EA               [12] 1095 	mov	a,r2
      00239C F0               [24] 1096 	movx	@dptr,a
      00239D EB               [12] 1097 	mov	a,r3
      00239E A3               [24] 1098 	inc	dptr
      00239F F0               [24] 1099 	movx	@dptr,a
                                   1100 ;	genCall
                                   1101 ;	Peephole 182.a	used 16 bit load of DPTR
      0023A0 90 80 0C         [24] 1102 	mov	dptr,#_Arr_1_Glob
      0023A3 75 F0 00         [24] 1103 	mov	b,#0x00
      0023A6 C0 07            [24] 1104 	push	ar7
      0023A8 C0 06            [24] 1105 	push	ar6
      0023AA 12 31 76         [24] 1106 	lcall	_Proc_8
                                   1107 ;	Peephole 300	pop ar6 removed
                                   1108 ;	Peephole 300	pop ar7 removed
                                   1109 ;	dhry_1.c:182: Proc_1 (Ptr_Glob);
                                   1110 ;	genAssign
      0023AD 90 80 00         [24] 1111 	mov	dptr,#_Ptr_Glob
      0023B0 E0               [24] 1112 	movx	a,@dptr
      0023B1 FB               [12] 1113 	mov	r3,a
      0023B2 A3               [24] 1114 	inc	dptr
      0023B3 E0               [24] 1115 	movx	a,@dptr
      0023B4 FC               [12] 1116 	mov	r4,a
      0023B5 A3               [24] 1117 	inc	dptr
      0023B6 E0               [24] 1118 	movx	a,@dptr
      0023B7 FD               [12] 1119 	mov	r5,a
                                   1120 ;	genCall
      0023B8 8B 82            [24] 1121 	mov	dpl,r3
      0023BA 8C 83            [24] 1122 	mov	dph,r4
      0023BC 8D F0            [24] 1123 	mov	b,r5
                                   1124 ;	Peephole	push ar7 removed
                                   1125 ;	Peephole	push ar6 removed
      0023BE 12 2D 47         [24] 1126 	lcall	_Proc_1
      0023C1 D0 06            [24] 1127 	pop	ar6
      0023C3 D0 07            [24] 1128 	pop	ar7
                                   1129 ;	dhry_1.c:183: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
                                   1130 ;	genAssign
      0023C5 8E 04            [24] 1131 	mov	ar4,r6
      0023C7 8F 05            [24] 1132 	mov	ar5,r7
                                   1133 ;	genAssign
      0023C9 7B 41            [12] 1134 	mov	r3,#0x41
      0023CB                       1135 00115$:
                                   1136 ;	genAssign
      0023CB 90 80 0B         [24] 1137 	mov	dptr,#_Ch_2_Glob
      0023CE E0               [24] 1138 	movx	a,@dptr
                                   1139 ;	genCmpGt
                                   1140 ;	genCmp
                                   1141 ;	Peephole 301	mov r2,a removed
      0023CF C3               [12] 1142 	clr	c
                                   1143 ;	Peephole 106	removed redundant mov
      0023D0 9B               [12] 1144 	subb	a,r3
                                   1145 ;	genIfxJump
                                   1146 ;	Peephole 112.b	changed ljmp to sjmp
                                   1147 ;	Peephole 160.a	removed sjmp by inverse jump logic
      0023D1 40 7B            [24] 1148 	jc	00109$
                                   1149 ;	Peephole 500	removed redundant label 00166$
                                   1150 ;	dhry_1.c:186: if (Enum_Loc == Func_1 (Ch_Index, 'C'))
                                   1151 ;	genAssign
      0023D3 90 94 BC         [24] 1152 	mov	dptr,#_Func_1_PARM_2
      0023D6 74 43            [12] 1153 	mov	a,#0x43
      0023D8 F0               [24] 1154 	movx	@dptr,a
                                   1155 ;	genCall
      0023D9 8B 82            [24] 1156 	mov	dpl,r3
      0023DB C0 07            [24] 1157 	push	ar7
      0023DD C0 06            [24] 1158 	push	ar6
      0023DF C0 05            [24] 1159 	push	ar5
      0023E1 C0 04            [24] 1160 	push	ar4
      0023E3 C0 03            [24] 1161 	push	ar3
      0023E5 12 33 4C         [24] 1162 	lcall	_Func_1
      0023E8 AA 82            [24] 1163 	mov	r2,dpl
      0023EA D0 03            [24] 1164 	pop	ar3
      0023EC D0 04            [24] 1165 	pop	ar4
      0023EE D0 05            [24] 1166 	pop	ar5
      0023F0 D0 06            [24] 1167 	pop	ar6
      0023F2 D0 07            [24] 1168 	pop	ar7
                                   1169 ;	genAssign
      0023F4 90 94 5E         [24] 1170 	mov	dptr,#_main_Enum_Loc_65536_54
      0023F7 E0               [24] 1171 	movx	a,@dptr
                                   1172 ;	genCmpEq
                                   1173 ;	gencjneshort
      0023F8 F9               [12] 1174 	mov	r1,a
                                   1175 ;	Peephole 105.a	removed redundant mov
                                   1176 ;	Peephole 112.b	changed ljmp to sjmp
                                   1177 ;	Peephole 198.b	optimized misc jump sequence
      0023F9 B5 02 4E         [24] 1178 	cjne	a,ar2,00116$
                                   1179 ;	Peephole 200.b	removed redundant sjmp
                                   1180 ;	Peephole 500	removed redundant label 00167$
                                   1181 ;	Peephole 500	removed redundant label 00168$
                                   1182 ;	dhry_1.c:189: Proc_6 (Ident_1, &Enum_Loc);
                                   1183 ;	genCast
      0023FC 90 94 A7         [24] 1184 	mov	dptr,#_Proc_6_PARM_2
      0023FF 74 5E            [12] 1185 	mov	a,#_main_Enum_Loc_65536_54
      002401 F0               [24] 1186 	movx	@dptr,a
      002402 74 94            [12] 1187 	mov	a,#(_main_Enum_Loc_65536_54 >> 8)
      002404 A3               [24] 1188 	inc	dptr
      002405 F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	Peephole 181	changed mov to clr
      002406 E4               [12] 1191 	clr	a
      002407 A3               [24] 1192 	inc	dptr
      002408 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	genCall
      002409 75 82 00         [24] 1195 	mov	dpl,#0x00
      00240C C0 07            [24] 1196 	push	ar7
      00240E C0 06            [24] 1197 	push	ar6
      002410 C0 05            [24] 1198 	push	ar5
      002412 C0 04            [24] 1199 	push	ar4
      002414 C0 03            [24] 1200 	push	ar3
      002416 12 30 8A         [24] 1201 	lcall	_Proc_6
                                   1202 ;	Peephole 300	pop ar3 removed
                                   1203 ;	Peephole 300	pop ar4 removed
                                   1204 ;	Peephole 300	pop ar5 removed
                                   1205 ;	Peephole 300	pop ar6 removed
                                   1206 ;	Peephole 300	pop ar7 removed
                                   1207 ;	dhry_1.c:190: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
                                   1208 ;	genCast
      002419 90 94 CE         [24] 1209 	mov	dptr,#_strcpy_PARM_2
      00241C 74 5F            [12] 1210 	mov	a,#___str_9
      00241E F0               [24] 1211 	movx	@dptr,a
      00241F 74 49            [12] 1212 	mov	a,#(___str_9 >> 8)
      002421 A3               [24] 1213 	inc	dptr
      002422 F0               [24] 1214 	movx	@dptr,a
      002423 74 80            [12] 1215 	mov	a,#0x80
      002425 A3               [24] 1216 	inc	dptr
      002426 F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	genCall
                                   1219 ;	Peephole 182.a	used 16 bit load of DPTR
      002427 90 94 7E         [24] 1220 	mov	dptr,#_main_Str_2_Loc_65536_54
      00242A 75 F0 00         [24] 1221 	mov	b,#0x00
                                   1222 ;	Peephole	push ar7 removed
                                   1223 ;	Peephole	push ar6 removed
                                   1224 ;	Peephole	push ar5 removed
                                   1225 ;	Peephole	push ar4 removed
                                   1226 ;	Peephole	push ar3 removed
      00242D 12 35 24         [24] 1227 	lcall	_strcpy
      002430 D0 03            [24] 1228 	pop	ar3
      002432 D0 04            [24] 1229 	pop	ar4
      002434 D0 05            [24] 1230 	pop	ar5
      002436 D0 06            [24] 1231 	pop	ar6
      002438 D0 07            [24] 1232 	pop	ar7
                                   1233 ;	dhry_1.c:191: Int_2_Loc = Run_Index;
                                   1234 ;	genAssign
      00243A 90 94 5A         [24] 1235 	mov	dptr,#_main_Int_2_Loc_65536_54
      00243D EC               [12] 1236 	mov	a,r4
      00243E F0               [24] 1237 	movx	@dptr,a
      00243F ED               [12] 1238 	mov	a,r5
      002440 A3               [24] 1239 	inc	dptr
      002441 F0               [24] 1240 	movx	@dptr,a
                                   1241 ;	dhry_1.c:192: Int_Glob = Run_Index;
                                   1242 ;	genAssign
      002442 90 80 06         [24] 1243 	mov	dptr,#_Int_Glob
      002445 EC               [12] 1244 	mov	a,r4
      002446 F0               [24] 1245 	movx	@dptr,a
      002447 ED               [12] 1246 	mov	a,r5
      002448 A3               [24] 1247 	inc	dptr
      002449 F0               [24] 1248 	movx	@dptr,a
      00244A                       1249 00116$:
                                   1250 ;	dhry_1.c:183: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
                                   1251 ;	genPlus
                                   1252 ;	genPlusIncr
      00244A 0B               [12] 1253 	inc	r3
      00244B 02 23 CB         [24] 1254 	ljmp	00115$
      00244E                       1255 00109$:
                                   1256 ;	dhry_1.c:196: Int_2_Loc = Int_2_Loc * Int_1_Loc;
                                   1257 ;	genAssign
      00244E 90 94 58         [24] 1258 	mov	dptr,#_main_Int_1_Loc_65536_54
      002451 E0               [24] 1259 	movx	a,@dptr
      002452 FC               [12] 1260 	mov	r4,a
      002453 A3               [24] 1261 	inc	dptr
      002454 E0               [24] 1262 	movx	a,@dptr
      002455 FD               [12] 1263 	mov	r5,a
                                   1264 ;	genAssign
      002456 90 94 5A         [24] 1265 	mov	dptr,#_main_Int_2_Loc_65536_54
      002459 E0               [24] 1266 	movx	a,@dptr
      00245A FA               [12] 1267 	mov	r2,a
      00245B A3               [24] 1268 	inc	dptr
      00245C E0               [24] 1269 	movx	a,@dptr
      00245D FB               [12] 1270 	mov	r3,a
                                   1271 ;	genAssign
      00245E 90 94 DD         [24] 1272 	mov	dptr,#__mulint_PARM_2
      002461 EC               [12] 1273 	mov	a,r4
      002462 F0               [24] 1274 	movx	@dptr,a
      002463 ED               [12] 1275 	mov	a,r5
      002464 A3               [24] 1276 	inc	dptr
      002465 F0               [24] 1277 	movx	@dptr,a
                                   1278 ;	genCall
      002466 8A 82            [24] 1279 	mov	dpl,r2
      002468 8B 83            [24] 1280 	mov	dph,r3
      00246A C0 07            [24] 1281 	push	ar7
      00246C C0 06            [24] 1282 	push	ar6
      00246E 12 37 AA         [24] 1283 	lcall	__mulint
      002471 E5 82            [12] 1284 	mov	a,dpl
      002473 85 83 F0         [24] 1285 	mov	b,dph
                                   1286 ;	Peephole 300	pop ar6 removed
                                   1287 ;	Peephole 300	pop ar7 removed
                                   1288 ;	genAssign
      002476 90 94 5A         [24] 1289 	mov	dptr,#_main_Int_2_Loc_65536_54
      002479 F0               [24] 1290 	movx	@dptr,a
      00247A E5 F0            [12] 1291 	mov	a,b
      00247C A3               [24] 1292 	inc	dptr
      00247D F0               [24] 1293 	movx	@dptr,a
                                   1294 ;	dhry_1.c:197: Int_1_Loc = Int_2_Loc / Int_3_Loc;
                                   1295 ;	genAssign
      00247E 90 94 5C         [24] 1296 	mov	dptr,#_main_Int_3_Loc_65536_54
      002481 E0               [24] 1297 	movx	a,@dptr
      002482 FC               [12] 1298 	mov	r4,a
      002483 A3               [24] 1299 	inc	dptr
      002484 E0               [24] 1300 	movx	a,@dptr
      002485 FD               [12] 1301 	mov	r5,a
                                   1302 ;	genAssign
      002486 90 94 5A         [24] 1303 	mov	dptr,#_main_Int_2_Loc_65536_54
      002489 E0               [24] 1304 	movx	a,@dptr
      00248A FA               [12] 1305 	mov	r2,a
      00248B A3               [24] 1306 	inc	dptr
      00248C E0               [24] 1307 	movx	a,@dptr
      00248D FB               [12] 1308 	mov	r3,a
                                   1309 ;	genAssign
      00248E 90 94 E5         [24] 1310 	mov	dptr,#__divsint_PARM_2
      002491 EC               [12] 1311 	mov	a,r4
      002492 F0               [24] 1312 	movx	@dptr,a
      002493 ED               [12] 1313 	mov	a,r5
      002494 A3               [24] 1314 	inc	dptr
      002495 F0               [24] 1315 	movx	@dptr,a
                                   1316 ;	genCall
      002496 8A 82            [24] 1317 	mov	dpl,r2
      002498 8B 83            [24] 1318 	mov	dph,r3
                                   1319 ;	Peephole	push ar7 removed
                                   1320 ;	Peephole	push ar6 removed
      00249A C0 05            [24] 1321 	push	ar5
      00249C C0 04            [24] 1322 	push	ar4
      00249E C0 03            [24] 1323 	push	ar3
      0024A0 C0 02            [24] 1324 	push	ar2
      0024A2 12 38 53         [24] 1325 	lcall	__divsint
      0024A5 A8 82            [24] 1326 	mov	r0,dpl
      0024A7 A9 83            [24] 1327 	mov	r1,dph
      0024A9 D0 02            [24] 1328 	pop	ar2
      0024AB D0 03            [24] 1329 	pop	ar3
      0024AD D0 04            [24] 1330 	pop	ar4
      0024AF D0 05            [24] 1331 	pop	ar5
                                   1332 ;	Peephole 300	pop ar6 removed
                                   1333 ;	Peephole 300	pop ar7 removed
                                   1334 ;	genAssign
      0024B1 90 94 58         [24] 1335 	mov	dptr,#_main_Int_1_Loc_65536_54
      0024B4 E8               [12] 1336 	mov	a,r0
      0024B5 F0               [24] 1337 	movx	@dptr,a
      0024B6 E9               [12] 1338 	mov	a,r1
      0024B7 A3               [24] 1339 	inc	dptr
      0024B8 F0               [24] 1340 	movx	@dptr,a
                                   1341 ;	dhry_1.c:198: Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
                                   1342 ;	genMinus
      0024B9 90 94 DD         [24] 1343 	mov	dptr,#__mulint_PARM_2
      0024BC EA               [12] 1344 	mov	a,r2
      0024BD C3               [12] 1345 	clr	c
      0024BE 9C               [12] 1346 	subb	a,r4
      0024BF F0               [24] 1347 	movx	@dptr,a
      0024C0 EB               [12] 1348 	mov	a,r3
      0024C1 9D               [12] 1349 	subb	a,r5
      0024C2 A3               [24] 1350 	inc	dptr
      0024C3 F0               [24] 1351 	movx	@dptr,a
                                   1352 ;	genCall
                                   1353 ;	Peephole 182.b	used 16 bit load of dptr
      0024C4 90 00 07         [24] 1354 	mov	dptr,#0x0007
                                   1355 ;	Peephole	push ar7 removed
                                   1356 ;	Peephole	push ar6 removed
      0024C7 C0 01            [24] 1357 	push	ar1
      0024C9 C0 00            [24] 1358 	push	ar0
      0024CB 12 37 AA         [24] 1359 	lcall	__mulint
      0024CE E5 82            [12] 1360 	mov	a,dpl
      0024D0 85 83 F0         [24] 1361 	mov	b,dph
      0024D3 D0 00            [24] 1362 	pop	ar0
      0024D5 D0 01            [24] 1363 	pop	ar1
                                   1364 ;	Peephole 300	pop ar6 removed
                                   1365 ;	Peephole 300	pop ar7 removed
                                   1366 ;	genMinus
      0024D7 90 94 5A         [24] 1367 	mov	dptr,#_main_Int_2_Loc_65536_54
      0024DA C3               [12] 1368 	clr	c
      0024DB 98               [12] 1369 	subb	a,r0
      0024DC F0               [24] 1370 	movx	@dptr,a
      0024DD E5 F0            [12] 1371 	mov	a,b
      0024DF 99               [12] 1372 	subb	a,r1
      0024E0 A3               [24] 1373 	inc	dptr
      0024E1 F0               [24] 1374 	movx	@dptr,a
                                   1375 ;	dhry_1.c:200: Proc_2 (&Int_1_Loc);
                                   1376 ;	genCall
                                   1377 ;	Peephole 182.a	used 16 bit load of DPTR
      0024E2 90 94 58         [24] 1378 	mov	dptr,#_main_Int_1_Loc_65536_54
      0024E5 75 F0 00         [24] 1379 	mov	b,#0x00
                                   1380 ;	Peephole	push ar7 removed
                                   1381 ;	Peephole	push ar6 removed
      0024E8 12 2F 69         [24] 1382 	lcall	_Proc_2
      0024EB D0 06            [24] 1383 	pop	ar6
      0024ED D0 07            [24] 1384 	pop	ar7
                                   1385 ;	dhry_1.c:159: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
                                   1386 ;	genPlus
                                   1387 ;	genPlusIncr
      0024EF 0E               [12] 1388 	inc	r6
      0024F0 BE 00 01         [24] 1389 	cjne	r6,#0x00,00169$
      0024F3 0F               [12] 1390 	inc	r7
      0024F4                       1391 00169$:
      0024F4 02 22 7F         [24] 1392 	ljmp	00118$
      0024F7                       1393 00110$:
                                   1394 ;	dhry_1.c:217: End_Time = clock();
                                   1395 ;	genCall
      0024F7 12 34 F3         [24] 1396 	lcall	_clock
      0024FA AC 82            [24] 1397 	mov	r4,dpl
      0024FC AD 83            [24] 1398 	mov	r5,dph
      0024FE AE F0            [24] 1399 	mov	r6,b
      002500 FF               [12] 1400 	mov	r7,a
                                   1401 ;	genAssign
      002501 90 93 FC         [24] 1402 	mov	dptr,#_End_Time
      002504 EC               [12] 1403 	mov	a,r4
      002505 F0               [24] 1404 	movx	@dptr,a
      002506 ED               [12] 1405 	mov	a,r5
      002507 A3               [24] 1406 	inc	dptr
      002508 F0               [24] 1407 	movx	@dptr,a
      002509 EE               [12] 1408 	mov	a,r6
      00250A A3               [24] 1409 	inc	dptr
      00250B F0               [24] 1410 	movx	@dptr,a
      00250C EF               [12] 1411 	mov	a,r7
      00250D A3               [24] 1412 	inc	dptr
      00250E F0               [24] 1413 	movx	@dptr,a
                                   1414 ;	dhry_1.c:220: printf ("Execution ends\r\n");
                                   1415 ;	genIpush
      00250F 74 7E            [12] 1416 	mov	a,#___str_10
      002511 C0 E0            [24] 1417 	push	acc
      002513 74 49            [12] 1418 	mov	a,#(___str_10 >> 8)
      002515 C0 E0            [24] 1419 	push	acc
      002517 74 80            [12] 1420 	mov	a,#0x80
      002519 C0 E0            [24] 1421 	push	acc
                                   1422 ;	genCall
      00251B 12 39 EF         [24] 1423 	lcall	_printf
      00251E 15 81            [12] 1424 	dec	sp
      002520 15 81            [12] 1425 	dec	sp
      002522 15 81            [12] 1426 	dec	sp
                                   1427 ;	dhry_1.c:221: printf ("\r\n");
                                   1428 ;	genIpush
      002524 74 4A            [12] 1429 	mov	a,#___str_2
      002526 C0 E0            [24] 1430 	push	acc
      002528 74 48            [12] 1431 	mov	a,#(___str_2 >> 8)
      00252A C0 E0            [24] 1432 	push	acc
      00252C 74 80            [12] 1433 	mov	a,#0x80
      00252E C0 E0            [24] 1434 	push	acc
                                   1435 ;	genCall
      002530 12 39 EF         [24] 1436 	lcall	_printf
      002533 15 81            [12] 1437 	dec	sp
      002535 15 81            [12] 1438 	dec	sp
      002537 15 81            [12] 1439 	dec	sp
                                   1440 ;	dhry_1.c:222: printf ("Final values of the variables used in the benchmark:\r\n");
                                   1441 ;	genIpush
      002539 74 8F            [12] 1442 	mov	a,#___str_11
      00253B C0 E0            [24] 1443 	push	acc
      00253D 74 49            [12] 1444 	mov	a,#(___str_11 >> 8)
      00253F C0 E0            [24] 1445 	push	acc
      002541 74 80            [12] 1446 	mov	a,#0x80
      002543 C0 E0            [24] 1447 	push	acc
                                   1448 ;	genCall
      002545 12 39 EF         [24] 1449 	lcall	_printf
      002548 15 81            [12] 1450 	dec	sp
      00254A 15 81            [12] 1451 	dec	sp
      00254C 15 81            [12] 1452 	dec	sp
                                   1453 ;	dhry_1.c:223: printf ("\r\n");
                                   1454 ;	genIpush
      00254E 74 4A            [12] 1455 	mov	a,#___str_2
      002550 C0 E0            [24] 1456 	push	acc
      002552 74 48            [12] 1457 	mov	a,#(___str_2 >> 8)
      002554 C0 E0            [24] 1458 	push	acc
      002556 74 80            [12] 1459 	mov	a,#0x80
      002558 C0 E0            [24] 1460 	push	acc
                                   1461 ;	genCall
      00255A 12 39 EF         [24] 1462 	lcall	_printf
      00255D 15 81            [12] 1463 	dec	sp
      00255F 15 81            [12] 1464 	dec	sp
      002561 15 81            [12] 1465 	dec	sp
                                   1466 ;	dhry_1.c:224: printf ("Int_Glob:            %d\r\n", Int_Glob);
                                   1467 ;	genIpush
      002563 90 80 06         [24] 1468 	mov	dptr,#_Int_Glob
      002566 E0               [24] 1469 	movx	a,@dptr
      002567 C0 E0            [24] 1470 	push	acc
      002569 A3               [24] 1471 	inc	dptr
      00256A E0               [24] 1472 	movx	a,@dptr
      00256B C0 E0            [24] 1473 	push	acc
                                   1474 ;	genIpush
      00256D 74 C6            [12] 1475 	mov	a,#___str_12
      00256F C0 E0            [24] 1476 	push	acc
      002571 74 49            [12] 1477 	mov	a,#(___str_12 >> 8)
      002573 C0 E0            [24] 1478 	push	acc
      002575 74 80            [12] 1479 	mov	a,#0x80
      002577 C0 E0            [24] 1480 	push	acc
                                   1481 ;	genCall
      002579 12 39 EF         [24] 1482 	lcall	_printf
      00257C E5 81            [12] 1483 	mov	a,sp
      00257E 24 FB            [12] 1484 	add	a,#0xfb
      002580 F5 81            [12] 1485 	mov	sp,a
                                   1486 ;	dhry_1.c:225: printf ("        should be:   %d\r\n", 5);
                                   1487 ;	genIpush
      002582 74 05            [12] 1488 	mov	a,#0x05
      002584 C0 E0            [24] 1489 	push	acc
                                   1490 ;	Peephole 181	changed mov to clr
      002586 E4               [12] 1491 	clr	a
      002587 C0 E0            [24] 1492 	push	acc
                                   1493 ;	genIpush
      002589 74 E0            [12] 1494 	mov	a,#___str_13
      00258B C0 E0            [24] 1495 	push	acc
      00258D 74 49            [12] 1496 	mov	a,#(___str_13 >> 8)
      00258F C0 E0            [24] 1497 	push	acc
      002591 74 80            [12] 1498 	mov	a,#0x80
      002593 C0 E0            [24] 1499 	push	acc
                                   1500 ;	genCall
      002595 12 39 EF         [24] 1501 	lcall	_printf
      002598 E5 81            [12] 1502 	mov	a,sp
      00259A 24 FB            [12] 1503 	add	a,#0xfb
      00259C F5 81            [12] 1504 	mov	sp,a
                                   1505 ;	dhry_1.c:226: printf ("Bool_Glob:           %d\r\n", Bool_Glob);
                                   1506 ;	genIpush
      00259E 90 80 08         [24] 1507 	mov	dptr,#_Bool_Glob
      0025A1 E0               [24] 1508 	movx	a,@dptr
      0025A2 C0 E0            [24] 1509 	push	acc
      0025A4 A3               [24] 1510 	inc	dptr
      0025A5 E0               [24] 1511 	movx	a,@dptr
      0025A6 C0 E0            [24] 1512 	push	acc
                                   1513 ;	genIpush
      0025A8 74 FA            [12] 1514 	mov	a,#___str_14
      0025AA C0 E0            [24] 1515 	push	acc
      0025AC 74 49            [12] 1516 	mov	a,#(___str_14 >> 8)
      0025AE C0 E0            [24] 1517 	push	acc
      0025B0 74 80            [12] 1518 	mov	a,#0x80
      0025B2 C0 E0            [24] 1519 	push	acc
                                   1520 ;	genCall
      0025B4 12 39 EF         [24] 1521 	lcall	_printf
      0025B7 E5 81            [12] 1522 	mov	a,sp
      0025B9 24 FB            [12] 1523 	add	a,#0xfb
      0025BB F5 81            [12] 1524 	mov	sp,a
                                   1525 ;	dhry_1.c:227: printf ("        should be:   %d\r\n", 1);
                                   1526 ;	genIpush
      0025BD 74 01            [12] 1527 	mov	a,#0x01
      0025BF C0 E0            [24] 1528 	push	acc
                                   1529 ;	Peephole 181	changed mov to clr
      0025C1 E4               [12] 1530 	clr	a
      0025C2 C0 E0            [24] 1531 	push	acc
                                   1532 ;	genIpush
      0025C4 74 E0            [12] 1533 	mov	a,#___str_13
      0025C6 C0 E0            [24] 1534 	push	acc
      0025C8 74 49            [12] 1535 	mov	a,#(___str_13 >> 8)
      0025CA C0 E0            [24] 1536 	push	acc
      0025CC 74 80            [12] 1537 	mov	a,#0x80
      0025CE C0 E0            [24] 1538 	push	acc
                                   1539 ;	genCall
      0025D0 12 39 EF         [24] 1540 	lcall	_printf
      0025D3 E5 81            [12] 1541 	mov	a,sp
      0025D5 24 FB            [12] 1542 	add	a,#0xfb
      0025D7 F5 81            [12] 1543 	mov	sp,a
                                   1544 ;	dhry_1.c:228: printf ("Ch_1_Glob:           %c\r\n", Ch_1_Glob);
                                   1545 ;	genAssign
      0025D9 90 80 0A         [24] 1546 	mov	dptr,#_Ch_1_Glob
      0025DC E0               [24] 1547 	movx	a,@dptr
      0025DD FF               [12] 1548 	mov	r7,a
                                   1549 ;	genCast
      0025DE 7E 00            [12] 1550 	mov	r6,#0x00
                                   1551 ;	genIpush
      0025E0 C0 07            [24] 1552 	push	ar7
      0025E2 C0 06            [24] 1553 	push	ar6
                                   1554 ;	genIpush
      0025E4 74 14            [12] 1555 	mov	a,#___str_15
      0025E6 C0 E0            [24] 1556 	push	acc
      0025E8 74 4A            [12] 1557 	mov	a,#(___str_15 >> 8)
      0025EA C0 E0            [24] 1558 	push	acc
      0025EC 74 80            [12] 1559 	mov	a,#0x80
      0025EE C0 E0            [24] 1560 	push	acc
                                   1561 ;	genCall
      0025F0 12 39 EF         [24] 1562 	lcall	_printf
      0025F3 E5 81            [12] 1563 	mov	a,sp
      0025F5 24 FB            [12] 1564 	add	a,#0xfb
      0025F7 F5 81            [12] 1565 	mov	sp,a
                                   1566 ;	dhry_1.c:229: printf ("        should be:   %c\r\n", 'A');
                                   1567 ;	genIpush
      0025F9 74 41            [12] 1568 	mov	a,#0x41
      0025FB C0 E0            [24] 1569 	push	acc
                                   1570 ;	Peephole 181	changed mov to clr
      0025FD E4               [12] 1571 	clr	a
      0025FE C0 E0            [24] 1572 	push	acc
                                   1573 ;	genIpush
      002600 74 2E            [12] 1574 	mov	a,#___str_16
      002602 C0 E0            [24] 1575 	push	acc
      002604 74 4A            [12] 1576 	mov	a,#(___str_16 >> 8)
      002606 C0 E0            [24] 1577 	push	acc
      002608 74 80            [12] 1578 	mov	a,#0x80
      00260A C0 E0            [24] 1579 	push	acc
                                   1580 ;	genCall
      00260C 12 39 EF         [24] 1581 	lcall	_printf
      00260F E5 81            [12] 1582 	mov	a,sp
      002611 24 FB            [12] 1583 	add	a,#0xfb
      002613 F5 81            [12] 1584 	mov	sp,a
                                   1585 ;	dhry_1.c:230: printf ("Ch_2_Glob:           %c\r\n", Ch_2_Glob);
                                   1586 ;	genAssign
      002615 90 80 0B         [24] 1587 	mov	dptr,#_Ch_2_Glob
      002618 E0               [24] 1588 	movx	a,@dptr
      002619 FF               [12] 1589 	mov	r7,a
                                   1590 ;	genCast
      00261A 7E 00            [12] 1591 	mov	r6,#0x00
                                   1592 ;	genIpush
      00261C C0 07            [24] 1593 	push	ar7
      00261E C0 06            [24] 1594 	push	ar6
                                   1595 ;	genIpush
      002620 74 48            [12] 1596 	mov	a,#___str_17
      002622 C0 E0            [24] 1597 	push	acc
      002624 74 4A            [12] 1598 	mov	a,#(___str_17 >> 8)
      002626 C0 E0            [24] 1599 	push	acc
      002628 74 80            [12] 1600 	mov	a,#0x80
      00262A C0 E0            [24] 1601 	push	acc
                                   1602 ;	genCall
      00262C 12 39 EF         [24] 1603 	lcall	_printf
      00262F E5 81            [12] 1604 	mov	a,sp
      002631 24 FB            [12] 1605 	add	a,#0xfb
      002633 F5 81            [12] 1606 	mov	sp,a
                                   1607 ;	dhry_1.c:231: printf ("        should be:   %c\r\n", 'B');
                                   1608 ;	genIpush
      002635 74 42            [12] 1609 	mov	a,#0x42
      002637 C0 E0            [24] 1610 	push	acc
                                   1611 ;	Peephole 181	changed mov to clr
      002639 E4               [12] 1612 	clr	a
      00263A C0 E0            [24] 1613 	push	acc
                                   1614 ;	genIpush
      00263C 74 2E            [12] 1615 	mov	a,#___str_16
      00263E C0 E0            [24] 1616 	push	acc
      002640 74 4A            [12] 1617 	mov	a,#(___str_16 >> 8)
      002642 C0 E0            [24] 1618 	push	acc
      002644 74 80            [12] 1619 	mov	a,#0x80
      002646 C0 E0            [24] 1620 	push	acc
                                   1621 ;	genCall
      002648 12 39 EF         [24] 1622 	lcall	_printf
      00264B E5 81            [12] 1623 	mov	a,sp
      00264D 24 FB            [12] 1624 	add	a,#0xfb
      00264F F5 81            [12] 1625 	mov	sp,a
                                   1626 ;	dhry_1.c:232: printf ("Arr_1_Glob[8]:       %d\r\n", Arr_1_Glob[8]);
                                   1627 ;	genPointerGet
                                   1628 ;	genFarPointerGet
      002651 90 80 1C         [24] 1629 	mov	dptr,#(_Arr_1_Glob + 0x0010)
      002654 E0               [24] 1630 	movx	a,@dptr
      002655 FE               [12] 1631 	mov	r6,a
      002656 A3               [24] 1632 	inc	dptr
      002657 E0               [24] 1633 	movx	a,@dptr
      002658 FF               [12] 1634 	mov	r7,a
                                   1635 ;	genIpush
      002659 C0 06            [24] 1636 	push	ar6
      00265B C0 07            [24] 1637 	push	ar7
                                   1638 ;	genIpush
      00265D 74 62            [12] 1639 	mov	a,#___str_18
      00265F C0 E0            [24] 1640 	push	acc
      002661 74 4A            [12] 1641 	mov	a,#(___str_18 >> 8)
      002663 C0 E0            [24] 1642 	push	acc
      002665 74 80            [12] 1643 	mov	a,#0x80
      002667 C0 E0            [24] 1644 	push	acc
                                   1645 ;	genCall
      002669 12 39 EF         [24] 1646 	lcall	_printf
      00266C E5 81            [12] 1647 	mov	a,sp
      00266E 24 FB            [12] 1648 	add	a,#0xfb
      002670 F5 81            [12] 1649 	mov	sp,a
                                   1650 ;	dhry_1.c:233: printf ("        should be:   %d\r\n", 7);
                                   1651 ;	genIpush
      002672 74 07            [12] 1652 	mov	a,#0x07
      002674 C0 E0            [24] 1653 	push	acc
                                   1654 ;	Peephole 181	changed mov to clr
      002676 E4               [12] 1655 	clr	a
      002677 C0 E0            [24] 1656 	push	acc
                                   1657 ;	genIpush
      002679 74 E0            [12] 1658 	mov	a,#___str_13
      00267B C0 E0            [24] 1659 	push	acc
      00267D 74 49            [12] 1660 	mov	a,#(___str_13 >> 8)
      00267F C0 E0            [24] 1661 	push	acc
      002681 74 80            [12] 1662 	mov	a,#0x80
      002683 C0 E0            [24] 1663 	push	acc
                                   1664 ;	genCall
      002685 12 39 EF         [24] 1665 	lcall	_printf
      002688 E5 81            [12] 1666 	mov	a,sp
      00268A 24 FB            [12] 1667 	add	a,#0xfb
      00268C F5 81            [12] 1668 	mov	sp,a
                                   1669 ;	dhry_1.c:234: printf ("Arr_2_Glob[8][7]:    %d\r\n", Arr_2_Glob[8][7]);
                                   1670 ;	genPointerGet
                                   1671 ;	genFarPointerGet
      00268E 90 83 9E         [24] 1672 	mov	dptr,#(_Arr_2_Glob + 0x032e)
      002691 E0               [24] 1673 	movx	a,@dptr
      002692 FE               [12] 1674 	mov	r6,a
      002693 A3               [24] 1675 	inc	dptr
      002694 E0               [24] 1676 	movx	a,@dptr
      002695 FF               [12] 1677 	mov	r7,a
                                   1678 ;	genIpush
      002696 C0 06            [24] 1679 	push	ar6
      002698 C0 07            [24] 1680 	push	ar7
                                   1681 ;	genIpush
      00269A 74 7C            [12] 1682 	mov	a,#___str_19
      00269C C0 E0            [24] 1683 	push	acc
      00269E 74 4A            [12] 1684 	mov	a,#(___str_19 >> 8)
      0026A0 C0 E0            [24] 1685 	push	acc
      0026A2 74 80            [12] 1686 	mov	a,#0x80
      0026A4 C0 E0            [24] 1687 	push	acc
                                   1688 ;	genCall
      0026A6 12 39 EF         [24] 1689 	lcall	_printf
      0026A9 E5 81            [12] 1690 	mov	a,sp
      0026AB 24 FB            [12] 1691 	add	a,#0xfb
      0026AD F5 81            [12] 1692 	mov	sp,a
                                   1693 ;	dhry_1.c:235: printf ("        should be:   Number_Of_Runs + 10\r\n");
                                   1694 ;	genIpush
      0026AF 74 96            [12] 1695 	mov	a,#___str_20
      0026B1 C0 E0            [24] 1696 	push	acc
      0026B3 74 4A            [12] 1697 	mov	a,#(___str_20 >> 8)
      0026B5 C0 E0            [24] 1698 	push	acc
      0026B7 74 80            [12] 1699 	mov	a,#0x80
      0026B9 C0 E0            [24] 1700 	push	acc
                                   1701 ;	genCall
      0026BB 12 39 EF         [24] 1702 	lcall	_printf
      0026BE 15 81            [12] 1703 	dec	sp
      0026C0 15 81            [12] 1704 	dec	sp
      0026C2 15 81            [12] 1705 	dec	sp
                                   1706 ;	dhry_1.c:236: printf ("Ptr_Glob->\r\n");
                                   1707 ;	genIpush
      0026C4 74 C1            [12] 1708 	mov	a,#___str_21
      0026C6 C0 E0            [24] 1709 	push	acc
      0026C8 74 4A            [12] 1710 	mov	a,#(___str_21 >> 8)
      0026CA C0 E0            [24] 1711 	push	acc
      0026CC 74 80            [12] 1712 	mov	a,#0x80
      0026CE C0 E0            [24] 1713 	push	acc
                                   1714 ;	genCall
      0026D0 12 39 EF         [24] 1715 	lcall	_printf
      0026D3 15 81            [12] 1716 	dec	sp
      0026D5 15 81            [12] 1717 	dec	sp
      0026D7 15 81            [12] 1718 	dec	sp
                                   1719 ;	dhry_1.c:237: printf ("  Ptr_Comp:          %d\r\n", (int) Ptr_Glob->Ptr_Comp);
                                   1720 ;	genAssign
      0026D9 90 80 00         [24] 1721 	mov	dptr,#_Ptr_Glob
      0026DC E0               [24] 1722 	movx	a,@dptr
      0026DD FD               [12] 1723 	mov	r5,a
      0026DE A3               [24] 1724 	inc	dptr
      0026DF E0               [24] 1725 	movx	a,@dptr
      0026E0 FE               [12] 1726 	mov	r6,a
      0026E1 A3               [24] 1727 	inc	dptr
      0026E2 E0               [24] 1728 	movx	a,@dptr
      0026E3 FF               [12] 1729 	mov	r7,a
                                   1730 ;	genPointerGet
                                   1731 ;	genGenPointerGet
      0026E4 8D 82            [24] 1732 	mov	dpl,r5
      0026E6 8E 83            [24] 1733 	mov	dph,r6
      0026E8 8F F0            [24] 1734 	mov	b,r7
      0026EA 12 44 D4         [24] 1735 	lcall	__gptrget
      0026ED FD               [12] 1736 	mov	r5,a
      0026EE A3               [24] 1737 	inc	dptr
      0026EF 12 44 D4         [24] 1738 	lcall	__gptrget
      0026F2 FE               [12] 1739 	mov	r6,a
                                   1740 ;	genIpush
      0026F3 C0 05            [24] 1741 	push	ar5
      0026F5 C0 06            [24] 1742 	push	ar6
                                   1743 ;	genIpush
      0026F7 74 CE            [12] 1744 	mov	a,#___str_22
      0026F9 C0 E0            [24] 1745 	push	acc
      0026FB 74 4A            [12] 1746 	mov	a,#(___str_22 >> 8)
      0026FD C0 E0            [24] 1747 	push	acc
      0026FF 74 80            [12] 1748 	mov	a,#0x80
      002701 C0 E0            [24] 1749 	push	acc
                                   1750 ;	genCall
      002703 12 39 EF         [24] 1751 	lcall	_printf
      002706 E5 81            [12] 1752 	mov	a,sp
      002708 24 FB            [12] 1753 	add	a,#0xfb
      00270A F5 81            [12] 1754 	mov	sp,a
                                   1755 ;	dhry_1.c:238: printf ("        should be:   (implementation-dependent)\r\n");
                                   1756 ;	genIpush
      00270C 74 E8            [12] 1757 	mov	a,#___str_23
      00270E C0 E0            [24] 1758 	push	acc
      002710 74 4A            [12] 1759 	mov	a,#(___str_23 >> 8)
      002712 C0 E0            [24] 1760 	push	acc
      002714 74 80            [12] 1761 	mov	a,#0x80
      002716 C0 E0            [24] 1762 	push	acc
                                   1763 ;	genCall
      002718 12 39 EF         [24] 1764 	lcall	_printf
      00271B 15 81            [12] 1765 	dec	sp
      00271D 15 81            [12] 1766 	dec	sp
      00271F 15 81            [12] 1767 	dec	sp
                                   1768 ;	dhry_1.c:239: printf ("  Discr:             %d\r\n", Ptr_Glob->Discr);
                                   1769 ;	genAssign
      002721 90 80 00         [24] 1770 	mov	dptr,#_Ptr_Glob
      002724 E0               [24] 1771 	movx	a,@dptr
      002725 FD               [12] 1772 	mov	r5,a
      002726 A3               [24] 1773 	inc	dptr
      002727 E0               [24] 1774 	movx	a,@dptr
      002728 FE               [12] 1775 	mov	r6,a
      002729 A3               [24] 1776 	inc	dptr
      00272A E0               [24] 1777 	movx	a,@dptr
      00272B FF               [12] 1778 	mov	r7,a
                                   1779 ;	genPlus
                                   1780 ;	genPlusIncr
      00272C 74 03            [12] 1781 	mov	a,#0x03
      00272E 2D               [12] 1782 	add	a,r5
      00272F FD               [12] 1783 	mov	r5,a
                                   1784 ;	Peephole 181	changed mov to clr
      002730 E4               [12] 1785 	clr	a
      002731 3E               [12] 1786 	addc	a,r6
      002732 FE               [12] 1787 	mov	r6,a
                                   1788 ;	genPointerGet
                                   1789 ;	genGenPointerGet
      002733 8D 82            [24] 1790 	mov	dpl,r5
      002735 8E 83            [24] 1791 	mov	dph,r6
      002737 8F F0            [24] 1792 	mov	b,r7
      002739 12 44 D4         [24] 1793 	lcall	__gptrget
      00273C FD               [12] 1794 	mov	r5,a
                                   1795 ;	genCast
      00273D 7F 00            [12] 1796 	mov	r7,#0x00
                                   1797 ;	genIpush
      00273F C0 05            [24] 1798 	push	ar5
      002741 C0 07            [24] 1799 	push	ar7
                                   1800 ;	genIpush
      002743 74 1A            [12] 1801 	mov	a,#___str_24
      002745 C0 E0            [24] 1802 	push	acc
      002747 74 4B            [12] 1803 	mov	a,#(___str_24 >> 8)
      002749 C0 E0            [24] 1804 	push	acc
      00274B 74 80            [12] 1805 	mov	a,#0x80
      00274D C0 E0            [24] 1806 	push	acc
                                   1807 ;	genCall
      00274F 12 39 EF         [24] 1808 	lcall	_printf
      002752 E5 81            [12] 1809 	mov	a,sp
      002754 24 FB            [12] 1810 	add	a,#0xfb
      002756 F5 81            [12] 1811 	mov	sp,a
                                   1812 ;	dhry_1.c:240: printf ("        should be:   %d\r\n", 0);
                                   1813 ;	genIpush
                                   1814 ;	Peephole 181	changed mov to clr
      002758 E4               [12] 1815 	clr	a
      002759 C0 E0            [24] 1816 	push	acc
      00275B C0 E0            [24] 1817 	push	acc
                                   1818 ;	genIpush
      00275D 74 E0            [12] 1819 	mov	a,#___str_13
      00275F C0 E0            [24] 1820 	push	acc
      002761 74 49            [12] 1821 	mov	a,#(___str_13 >> 8)
      002763 C0 E0            [24] 1822 	push	acc
      002765 74 80            [12] 1823 	mov	a,#0x80
      002767 C0 E0            [24] 1824 	push	acc
                                   1825 ;	genCall
      002769 12 39 EF         [24] 1826 	lcall	_printf
      00276C E5 81            [12] 1827 	mov	a,sp
      00276E 24 FB            [12] 1828 	add	a,#0xfb
      002770 F5 81            [12] 1829 	mov	sp,a
                                   1830 ;	dhry_1.c:241: printf ("  Enum_Comp:         %d\r\n", Ptr_Glob->variant.var_1.Enum_Comp);
                                   1831 ;	genAssign
      002772 90 80 00         [24] 1832 	mov	dptr,#_Ptr_Glob
      002775 E0               [24] 1833 	movx	a,@dptr
      002776 FD               [12] 1834 	mov	r5,a
      002777 A3               [24] 1835 	inc	dptr
      002778 E0               [24] 1836 	movx	a,@dptr
      002779 FE               [12] 1837 	mov	r6,a
      00277A A3               [24] 1838 	inc	dptr
      00277B E0               [24] 1839 	movx	a,@dptr
      00277C FF               [12] 1840 	mov	r7,a
                                   1841 ;	genPlus
                                   1842 ;	genPlusIncr
      00277D 74 04            [12] 1843 	mov	a,#0x04
      00277F 2D               [12] 1844 	add	a,r5
      002780 FD               [12] 1845 	mov	r5,a
                                   1846 ;	Peephole 181	changed mov to clr
      002781 E4               [12] 1847 	clr	a
      002782 3E               [12] 1848 	addc	a,r6
      002783 FE               [12] 1849 	mov	r6,a
                                   1850 ;	genPointerGet
                                   1851 ;	genGenPointerGet
      002784 8D 82            [24] 1852 	mov	dpl,r5
      002786 8E 83            [24] 1853 	mov	dph,r6
      002788 8F F0            [24] 1854 	mov	b,r7
      00278A 12 44 D4         [24] 1855 	lcall	__gptrget
      00278D FD               [12] 1856 	mov	r5,a
                                   1857 ;	genCast
      00278E 7F 00            [12] 1858 	mov	r7,#0x00
                                   1859 ;	genIpush
      002790 C0 05            [24] 1860 	push	ar5
      002792 C0 07            [24] 1861 	push	ar7
                                   1862 ;	genIpush
      002794 74 34            [12] 1863 	mov	a,#___str_25
      002796 C0 E0            [24] 1864 	push	acc
      002798 74 4B            [12] 1865 	mov	a,#(___str_25 >> 8)
      00279A C0 E0            [24] 1866 	push	acc
      00279C 74 80            [12] 1867 	mov	a,#0x80
      00279E C0 E0            [24] 1868 	push	acc
                                   1869 ;	genCall
      0027A0 12 39 EF         [24] 1870 	lcall	_printf
      0027A3 E5 81            [12] 1871 	mov	a,sp
      0027A5 24 FB            [12] 1872 	add	a,#0xfb
      0027A7 F5 81            [12] 1873 	mov	sp,a
                                   1874 ;	dhry_1.c:242: printf ("        should be:   %d\r\n", 2);
                                   1875 ;	genIpush
      0027A9 74 02            [12] 1876 	mov	a,#0x02
      0027AB C0 E0            [24] 1877 	push	acc
                                   1878 ;	Peephole 181	changed mov to clr
      0027AD E4               [12] 1879 	clr	a
      0027AE C0 E0            [24] 1880 	push	acc
                                   1881 ;	genIpush
      0027B0 74 E0            [12] 1882 	mov	a,#___str_13
      0027B2 C0 E0            [24] 1883 	push	acc
      0027B4 74 49            [12] 1884 	mov	a,#(___str_13 >> 8)
      0027B6 C0 E0            [24] 1885 	push	acc
      0027B8 74 80            [12] 1886 	mov	a,#0x80
      0027BA C0 E0            [24] 1887 	push	acc
                                   1888 ;	genCall
      0027BC 12 39 EF         [24] 1889 	lcall	_printf
      0027BF E5 81            [12] 1890 	mov	a,sp
      0027C1 24 FB            [12] 1891 	add	a,#0xfb
      0027C3 F5 81            [12] 1892 	mov	sp,a
                                   1893 ;	dhry_1.c:243: printf ("  Int_Comp:          %d\r\n", Ptr_Glob->variant.var_1.Int_Comp);
                                   1894 ;	genAssign
      0027C5 90 80 00         [24] 1895 	mov	dptr,#_Ptr_Glob
      0027C8 E0               [24] 1896 	movx	a,@dptr
      0027C9 FD               [12] 1897 	mov	r5,a
      0027CA A3               [24] 1898 	inc	dptr
      0027CB E0               [24] 1899 	movx	a,@dptr
      0027CC FE               [12] 1900 	mov	r6,a
      0027CD A3               [24] 1901 	inc	dptr
      0027CE E0               [24] 1902 	movx	a,@dptr
      0027CF FF               [12] 1903 	mov	r7,a
                                   1904 ;	genPlus
                                   1905 ;	genPlusIncr
      0027D0 74 05            [12] 1906 	mov	a,#0x05
      0027D2 2D               [12] 1907 	add	a,r5
      0027D3 FD               [12] 1908 	mov	r5,a
                                   1909 ;	Peephole 181	changed mov to clr
      0027D4 E4               [12] 1910 	clr	a
      0027D5 3E               [12] 1911 	addc	a,r6
      0027D6 FE               [12] 1912 	mov	r6,a
                                   1913 ;	genPointerGet
                                   1914 ;	genGenPointerGet
      0027D7 8D 82            [24] 1915 	mov	dpl,r5
      0027D9 8E 83            [24] 1916 	mov	dph,r6
      0027DB 8F F0            [24] 1917 	mov	b,r7
      0027DD 12 44 D4         [24] 1918 	lcall	__gptrget
      0027E0 FD               [12] 1919 	mov	r5,a
      0027E1 A3               [24] 1920 	inc	dptr
      0027E2 12 44 D4         [24] 1921 	lcall	__gptrget
      0027E5 FE               [12] 1922 	mov	r6,a
                                   1923 ;	genIpush
      0027E6 C0 05            [24] 1924 	push	ar5
      0027E8 C0 06            [24] 1925 	push	ar6
                                   1926 ;	genIpush
      0027EA 74 4E            [12] 1927 	mov	a,#___str_26
      0027EC C0 E0            [24] 1928 	push	acc
      0027EE 74 4B            [12] 1929 	mov	a,#(___str_26 >> 8)
      0027F0 C0 E0            [24] 1930 	push	acc
      0027F2 74 80            [12] 1931 	mov	a,#0x80
      0027F4 C0 E0            [24] 1932 	push	acc
                                   1933 ;	genCall
      0027F6 12 39 EF         [24] 1934 	lcall	_printf
      0027F9 E5 81            [12] 1935 	mov	a,sp
      0027FB 24 FB            [12] 1936 	add	a,#0xfb
      0027FD F5 81            [12] 1937 	mov	sp,a
                                   1938 ;	dhry_1.c:244: printf ("        should be:   %d\r\n", 17);
                                   1939 ;	genIpush
      0027FF 74 11            [12] 1940 	mov	a,#0x11
      002801 C0 E0            [24] 1941 	push	acc
                                   1942 ;	Peephole 181	changed mov to clr
      002803 E4               [12] 1943 	clr	a
      002804 C0 E0            [24] 1944 	push	acc
                                   1945 ;	genIpush
      002806 74 E0            [12] 1946 	mov	a,#___str_13
      002808 C0 E0            [24] 1947 	push	acc
      00280A 74 49            [12] 1948 	mov	a,#(___str_13 >> 8)
      00280C C0 E0            [24] 1949 	push	acc
      00280E 74 80            [12] 1950 	mov	a,#0x80
      002810 C0 E0            [24] 1951 	push	acc
                                   1952 ;	genCall
      002812 12 39 EF         [24] 1953 	lcall	_printf
      002815 E5 81            [12] 1954 	mov	a,sp
      002817 24 FB            [12] 1955 	add	a,#0xfb
      002819 F5 81            [12] 1956 	mov	sp,a
                                   1957 ;	dhry_1.c:245: printf ("  Str_Comp:          %s\r\n", Ptr_Glob->variant.var_1.Str_Comp);
                                   1958 ;	genAssign
      00281B 90 80 00         [24] 1959 	mov	dptr,#_Ptr_Glob
      00281E E0               [24] 1960 	movx	a,@dptr
      00281F FD               [12] 1961 	mov	r5,a
      002820 A3               [24] 1962 	inc	dptr
      002821 E0               [24] 1963 	movx	a,@dptr
      002822 FE               [12] 1964 	mov	r6,a
      002823 A3               [24] 1965 	inc	dptr
      002824 E0               [24] 1966 	movx	a,@dptr
      002825 FF               [12] 1967 	mov	r7,a
                                   1968 ;	genPlus
                                   1969 ;	genPlusIncr
      002826 74 07            [12] 1970 	mov	a,#0x07
      002828 2D               [12] 1971 	add	a,r5
      002829 FD               [12] 1972 	mov	r5,a
                                   1973 ;	Peephole 181	changed mov to clr
      00282A E4               [12] 1974 	clr	a
      00282B 3E               [12] 1975 	addc	a,r6
      00282C FE               [12] 1976 	mov	r6,a
                                   1977 ;	genIpush
      00282D C0 05            [24] 1978 	push	ar5
      00282F C0 06            [24] 1979 	push	ar6
      002831 C0 07            [24] 1980 	push	ar7
                                   1981 ;	genIpush
      002833 74 68            [12] 1982 	mov	a,#___str_27
      002835 C0 E0            [24] 1983 	push	acc
      002837 74 4B            [12] 1984 	mov	a,#(___str_27 >> 8)
      002839 C0 E0            [24] 1985 	push	acc
      00283B 74 80            [12] 1986 	mov	a,#0x80
      00283D C0 E0            [24] 1987 	push	acc
                                   1988 ;	genCall
      00283F 12 39 EF         [24] 1989 	lcall	_printf
      002842 E5 81            [12] 1990 	mov	a,sp
      002844 24 FA            [12] 1991 	add	a,#0xfa
      002846 F5 81            [12] 1992 	mov	sp,a
                                   1993 ;	dhry_1.c:246: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
                                   1994 ;	genIpush
      002848 74 82            [12] 1995 	mov	a,#___str_28
      00284A C0 E0            [24] 1996 	push	acc
      00284C 74 4B            [12] 1997 	mov	a,#(___str_28 >> 8)
      00284E C0 E0            [24] 1998 	push	acc
      002850 74 80            [12] 1999 	mov	a,#0x80
      002852 C0 E0            [24] 2000 	push	acc
                                   2001 ;	genCall
      002854 12 39 EF         [24] 2002 	lcall	_printf
      002857 15 81            [12] 2003 	dec	sp
      002859 15 81            [12] 2004 	dec	sp
      00285B 15 81            [12] 2005 	dec	sp
                                   2006 ;	dhry_1.c:247: printf ("Next_Ptr_Glob->\r\n");
                                   2007 ;	genIpush
      00285D 74 B8            [12] 2008 	mov	a,#___str_29
      00285F C0 E0            [24] 2009 	push	acc
      002861 74 4B            [12] 2010 	mov	a,#(___str_29 >> 8)
      002863 C0 E0            [24] 2011 	push	acc
      002865 74 80            [12] 2012 	mov	a,#0x80
      002867 C0 E0            [24] 2013 	push	acc
                                   2014 ;	genCall
      002869 12 39 EF         [24] 2015 	lcall	_printf
      00286C 15 81            [12] 2016 	dec	sp
      00286E 15 81            [12] 2017 	dec	sp
      002870 15 81            [12] 2018 	dec	sp
                                   2019 ;	dhry_1.c:248: printf ("  Ptr_Comp:          %d\r\n", (int) Next_Ptr_Glob->Ptr_Comp);
                                   2020 ;	genAssign
      002872 90 80 03         [24] 2021 	mov	dptr,#_Next_Ptr_Glob
      002875 E0               [24] 2022 	movx	a,@dptr
      002876 FD               [12] 2023 	mov	r5,a
      002877 A3               [24] 2024 	inc	dptr
      002878 E0               [24] 2025 	movx	a,@dptr
      002879 FE               [12] 2026 	mov	r6,a
      00287A A3               [24] 2027 	inc	dptr
      00287B E0               [24] 2028 	movx	a,@dptr
      00287C FF               [12] 2029 	mov	r7,a
                                   2030 ;	genPointerGet
                                   2031 ;	genGenPointerGet
      00287D 8D 82            [24] 2032 	mov	dpl,r5
      00287F 8E 83            [24] 2033 	mov	dph,r6
      002881 8F F0            [24] 2034 	mov	b,r7
      002883 12 44 D4         [24] 2035 	lcall	__gptrget
      002886 FD               [12] 2036 	mov	r5,a
      002887 A3               [24] 2037 	inc	dptr
      002888 12 44 D4         [24] 2038 	lcall	__gptrget
      00288B FE               [12] 2039 	mov	r6,a
                                   2040 ;	genIpush
      00288C C0 05            [24] 2041 	push	ar5
      00288E C0 06            [24] 2042 	push	ar6
                                   2043 ;	genIpush
      002890 74 CE            [12] 2044 	mov	a,#___str_22
      002892 C0 E0            [24] 2045 	push	acc
      002894 74 4A            [12] 2046 	mov	a,#(___str_22 >> 8)
      002896 C0 E0            [24] 2047 	push	acc
      002898 74 80            [12] 2048 	mov	a,#0x80
      00289A C0 E0            [24] 2049 	push	acc
                                   2050 ;	genCall
      00289C 12 39 EF         [24] 2051 	lcall	_printf
      00289F E5 81            [12] 2052 	mov	a,sp
      0028A1 24 FB            [12] 2053 	add	a,#0xfb
      0028A3 F5 81            [12] 2054 	mov	sp,a
                                   2055 ;	dhry_1.c:249: printf ("        should be:   (implementation-dependent), same as above\r\n");
                                   2056 ;	genIpush
      0028A5 74 CA            [12] 2057 	mov	a,#___str_30
      0028A7 C0 E0            [24] 2058 	push	acc
      0028A9 74 4B            [12] 2059 	mov	a,#(___str_30 >> 8)
      0028AB C0 E0            [24] 2060 	push	acc
      0028AD 74 80            [12] 2061 	mov	a,#0x80
      0028AF C0 E0            [24] 2062 	push	acc
                                   2063 ;	genCall
      0028B1 12 39 EF         [24] 2064 	lcall	_printf
      0028B4 15 81            [12] 2065 	dec	sp
      0028B6 15 81            [12] 2066 	dec	sp
      0028B8 15 81            [12] 2067 	dec	sp
                                   2068 ;	dhry_1.c:250: printf ("  Discr:             %d\r\n", Next_Ptr_Glob->Discr);
                                   2069 ;	genAssign
      0028BA 90 80 03         [24] 2070 	mov	dptr,#_Next_Ptr_Glob
      0028BD E0               [24] 2071 	movx	a,@dptr
      0028BE FD               [12] 2072 	mov	r5,a
      0028BF A3               [24] 2073 	inc	dptr
      0028C0 E0               [24] 2074 	movx	a,@dptr
      0028C1 FE               [12] 2075 	mov	r6,a
      0028C2 A3               [24] 2076 	inc	dptr
      0028C3 E0               [24] 2077 	movx	a,@dptr
      0028C4 FF               [12] 2078 	mov	r7,a
                                   2079 ;	genPlus
                                   2080 ;	genPlusIncr
      0028C5 74 03            [12] 2081 	mov	a,#0x03
      0028C7 2D               [12] 2082 	add	a,r5
      0028C8 FD               [12] 2083 	mov	r5,a
                                   2084 ;	Peephole 181	changed mov to clr
      0028C9 E4               [12] 2085 	clr	a
      0028CA 3E               [12] 2086 	addc	a,r6
      0028CB FE               [12] 2087 	mov	r6,a
                                   2088 ;	genPointerGet
                                   2089 ;	genGenPointerGet
      0028CC 8D 82            [24] 2090 	mov	dpl,r5
      0028CE 8E 83            [24] 2091 	mov	dph,r6
      0028D0 8F F0            [24] 2092 	mov	b,r7
      0028D2 12 44 D4         [24] 2093 	lcall	__gptrget
      0028D5 FD               [12] 2094 	mov	r5,a
                                   2095 ;	genCast
      0028D6 7F 00            [12] 2096 	mov	r7,#0x00
                                   2097 ;	genIpush
      0028D8 C0 05            [24] 2098 	push	ar5
      0028DA C0 07            [24] 2099 	push	ar7
                                   2100 ;	genIpush
      0028DC 74 1A            [12] 2101 	mov	a,#___str_24
      0028DE C0 E0            [24] 2102 	push	acc
      0028E0 74 4B            [12] 2103 	mov	a,#(___str_24 >> 8)
      0028E2 C0 E0            [24] 2104 	push	acc
      0028E4 74 80            [12] 2105 	mov	a,#0x80
      0028E6 C0 E0            [24] 2106 	push	acc
                                   2107 ;	genCall
      0028E8 12 39 EF         [24] 2108 	lcall	_printf
      0028EB E5 81            [12] 2109 	mov	a,sp
      0028ED 24 FB            [12] 2110 	add	a,#0xfb
      0028EF F5 81            [12] 2111 	mov	sp,a
                                   2112 ;	dhry_1.c:251: printf ("        should be:   %d\r\n", 0);
                                   2113 ;	genIpush
                                   2114 ;	Peephole 181	changed mov to clr
      0028F1 E4               [12] 2115 	clr	a
      0028F2 C0 E0            [24] 2116 	push	acc
      0028F4 C0 E0            [24] 2117 	push	acc
                                   2118 ;	genIpush
      0028F6 74 E0            [12] 2119 	mov	a,#___str_13
      0028F8 C0 E0            [24] 2120 	push	acc
      0028FA 74 49            [12] 2121 	mov	a,#(___str_13 >> 8)
      0028FC C0 E0            [24] 2122 	push	acc
      0028FE 74 80            [12] 2123 	mov	a,#0x80
      002900 C0 E0            [24] 2124 	push	acc
                                   2125 ;	genCall
      002902 12 39 EF         [24] 2126 	lcall	_printf
      002905 E5 81            [12] 2127 	mov	a,sp
      002907 24 FB            [12] 2128 	add	a,#0xfb
      002909 F5 81            [12] 2129 	mov	sp,a
                                   2130 ;	dhry_1.c:252: printf ("  Enum_Comp:         %d\r\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
                                   2131 ;	genAssign
      00290B 90 80 03         [24] 2132 	mov	dptr,#_Next_Ptr_Glob
      00290E E0               [24] 2133 	movx	a,@dptr
      00290F FD               [12] 2134 	mov	r5,a
      002910 A3               [24] 2135 	inc	dptr
      002911 E0               [24] 2136 	movx	a,@dptr
      002912 FE               [12] 2137 	mov	r6,a
      002913 A3               [24] 2138 	inc	dptr
      002914 E0               [24] 2139 	movx	a,@dptr
      002915 FF               [12] 2140 	mov	r7,a
                                   2141 ;	genPlus
                                   2142 ;	genPlusIncr
      002916 74 04            [12] 2143 	mov	a,#0x04
      002918 2D               [12] 2144 	add	a,r5
      002919 FD               [12] 2145 	mov	r5,a
                                   2146 ;	Peephole 181	changed mov to clr
      00291A E4               [12] 2147 	clr	a
      00291B 3E               [12] 2148 	addc	a,r6
      00291C FE               [12] 2149 	mov	r6,a
                                   2150 ;	genPointerGet
                                   2151 ;	genGenPointerGet
      00291D 8D 82            [24] 2152 	mov	dpl,r5
      00291F 8E 83            [24] 2153 	mov	dph,r6
      002921 8F F0            [24] 2154 	mov	b,r7
      002923 12 44 D4         [24] 2155 	lcall	__gptrget
      002926 FD               [12] 2156 	mov	r5,a
                                   2157 ;	genCast
      002927 7F 00            [12] 2158 	mov	r7,#0x00
                                   2159 ;	genIpush
      002929 C0 05            [24] 2160 	push	ar5
      00292B C0 07            [24] 2161 	push	ar7
                                   2162 ;	genIpush
      00292D 74 34            [12] 2163 	mov	a,#___str_25
      00292F C0 E0            [24] 2164 	push	acc
      002931 74 4B            [12] 2165 	mov	a,#(___str_25 >> 8)
      002933 C0 E0            [24] 2166 	push	acc
      002935 74 80            [12] 2167 	mov	a,#0x80
      002937 C0 E0            [24] 2168 	push	acc
                                   2169 ;	genCall
      002939 12 39 EF         [24] 2170 	lcall	_printf
      00293C E5 81            [12] 2171 	mov	a,sp
      00293E 24 FB            [12] 2172 	add	a,#0xfb
      002940 F5 81            [12] 2173 	mov	sp,a
                                   2174 ;	dhry_1.c:253: printf ("        should be:   %d\r\n", 1);
                                   2175 ;	genIpush
      002942 74 01            [12] 2176 	mov	a,#0x01
      002944 C0 E0            [24] 2177 	push	acc
                                   2178 ;	Peephole 181	changed mov to clr
      002946 E4               [12] 2179 	clr	a
      002947 C0 E0            [24] 2180 	push	acc
                                   2181 ;	genIpush
      002949 74 E0            [12] 2182 	mov	a,#___str_13
      00294B C0 E0            [24] 2183 	push	acc
      00294D 74 49            [12] 2184 	mov	a,#(___str_13 >> 8)
      00294F C0 E0            [24] 2185 	push	acc
      002951 74 80            [12] 2186 	mov	a,#0x80
      002953 C0 E0            [24] 2187 	push	acc
                                   2188 ;	genCall
      002955 12 39 EF         [24] 2189 	lcall	_printf
      002958 E5 81            [12] 2190 	mov	a,sp
      00295A 24 FB            [12] 2191 	add	a,#0xfb
      00295C F5 81            [12] 2192 	mov	sp,a
                                   2193 ;	dhry_1.c:254: printf ("  Int_Comp:          %d\r\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
                                   2194 ;	genAssign
      00295E 90 80 03         [24] 2195 	mov	dptr,#_Next_Ptr_Glob
      002961 E0               [24] 2196 	movx	a,@dptr
      002962 FD               [12] 2197 	mov	r5,a
      002963 A3               [24] 2198 	inc	dptr
      002964 E0               [24] 2199 	movx	a,@dptr
      002965 FE               [12] 2200 	mov	r6,a
      002966 A3               [24] 2201 	inc	dptr
      002967 E0               [24] 2202 	movx	a,@dptr
      002968 FF               [12] 2203 	mov	r7,a
                                   2204 ;	genPlus
                                   2205 ;	genPlusIncr
      002969 74 05            [12] 2206 	mov	a,#0x05
      00296B 2D               [12] 2207 	add	a,r5
      00296C FD               [12] 2208 	mov	r5,a
                                   2209 ;	Peephole 181	changed mov to clr
      00296D E4               [12] 2210 	clr	a
      00296E 3E               [12] 2211 	addc	a,r6
      00296F FE               [12] 2212 	mov	r6,a
                                   2213 ;	genPointerGet
                                   2214 ;	genGenPointerGet
      002970 8D 82            [24] 2215 	mov	dpl,r5
      002972 8E 83            [24] 2216 	mov	dph,r6
      002974 8F F0            [24] 2217 	mov	b,r7
      002976 12 44 D4         [24] 2218 	lcall	__gptrget
      002979 FD               [12] 2219 	mov	r5,a
      00297A A3               [24] 2220 	inc	dptr
      00297B 12 44 D4         [24] 2221 	lcall	__gptrget
      00297E FE               [12] 2222 	mov	r6,a
                                   2223 ;	genIpush
      00297F C0 05            [24] 2224 	push	ar5
      002981 C0 06            [24] 2225 	push	ar6
                                   2226 ;	genIpush
      002983 74 4E            [12] 2227 	mov	a,#___str_26
      002985 C0 E0            [24] 2228 	push	acc
      002987 74 4B            [12] 2229 	mov	a,#(___str_26 >> 8)
      002989 C0 E0            [24] 2230 	push	acc
      00298B 74 80            [12] 2231 	mov	a,#0x80
      00298D C0 E0            [24] 2232 	push	acc
                                   2233 ;	genCall
      00298F 12 39 EF         [24] 2234 	lcall	_printf
      002992 E5 81            [12] 2235 	mov	a,sp
      002994 24 FB            [12] 2236 	add	a,#0xfb
      002996 F5 81            [12] 2237 	mov	sp,a
                                   2238 ;	dhry_1.c:255: printf ("        should be:   %d\r\n", 18);
                                   2239 ;	genIpush
      002998 74 12            [12] 2240 	mov	a,#0x12
      00299A C0 E0            [24] 2241 	push	acc
                                   2242 ;	Peephole 181	changed mov to clr
      00299C E4               [12] 2243 	clr	a
      00299D C0 E0            [24] 2244 	push	acc
                                   2245 ;	genIpush
      00299F 74 E0            [12] 2246 	mov	a,#___str_13
      0029A1 C0 E0            [24] 2247 	push	acc
      0029A3 74 49            [12] 2248 	mov	a,#(___str_13 >> 8)
      0029A5 C0 E0            [24] 2249 	push	acc
      0029A7 74 80            [12] 2250 	mov	a,#0x80
      0029A9 C0 E0            [24] 2251 	push	acc
                                   2252 ;	genCall
      0029AB 12 39 EF         [24] 2253 	lcall	_printf
      0029AE E5 81            [12] 2254 	mov	a,sp
      0029B0 24 FB            [12] 2255 	add	a,#0xfb
      0029B2 F5 81            [12] 2256 	mov	sp,a
                                   2257 ;	dhry_1.c:257: Next_Ptr_Glob->variant.var_1.Str_Comp);
                                   2258 ;	genAssign
      0029B4 90 80 03         [24] 2259 	mov	dptr,#_Next_Ptr_Glob
      0029B7 E0               [24] 2260 	movx	a,@dptr
      0029B8 FD               [12] 2261 	mov	r5,a
      0029B9 A3               [24] 2262 	inc	dptr
      0029BA E0               [24] 2263 	movx	a,@dptr
      0029BB FE               [12] 2264 	mov	r6,a
      0029BC A3               [24] 2265 	inc	dptr
      0029BD E0               [24] 2266 	movx	a,@dptr
      0029BE FF               [12] 2267 	mov	r7,a
                                   2268 ;	genPlus
                                   2269 ;	genPlusIncr
      0029BF 74 07            [12] 2270 	mov	a,#0x07
      0029C1 2D               [12] 2271 	add	a,r5
      0029C2 FD               [12] 2272 	mov	r5,a
                                   2273 ;	Peephole 181	changed mov to clr
      0029C3 E4               [12] 2274 	clr	a
      0029C4 3E               [12] 2275 	addc	a,r6
      0029C5 FE               [12] 2276 	mov	r6,a
                                   2277 ;	dhry_1.c:256: printf ("  Str_Comp:          %s\r\n",
                                   2278 ;	genIpush
      0029C6 C0 05            [24] 2279 	push	ar5
      0029C8 C0 06            [24] 2280 	push	ar6
      0029CA C0 07            [24] 2281 	push	ar7
                                   2282 ;	genIpush
      0029CC 74 68            [12] 2283 	mov	a,#___str_27
      0029CE C0 E0            [24] 2284 	push	acc
      0029D0 74 4B            [12] 2285 	mov	a,#(___str_27 >> 8)
      0029D2 C0 E0            [24] 2286 	push	acc
      0029D4 74 80            [12] 2287 	mov	a,#0x80
      0029D6 C0 E0            [24] 2288 	push	acc
                                   2289 ;	genCall
      0029D8 12 39 EF         [24] 2290 	lcall	_printf
      0029DB E5 81            [12] 2291 	mov	a,sp
      0029DD 24 FA            [12] 2292 	add	a,#0xfa
      0029DF F5 81            [12] 2293 	mov	sp,a
                                   2294 ;	dhry_1.c:258: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
                                   2295 ;	genIpush
      0029E1 74 82            [12] 2296 	mov	a,#___str_28
      0029E3 C0 E0            [24] 2297 	push	acc
      0029E5 74 4B            [12] 2298 	mov	a,#(___str_28 >> 8)
      0029E7 C0 E0            [24] 2299 	push	acc
      0029E9 74 80            [12] 2300 	mov	a,#0x80
      0029EB C0 E0            [24] 2301 	push	acc
                                   2302 ;	genCall
      0029ED 12 39 EF         [24] 2303 	lcall	_printf
      0029F0 15 81            [12] 2304 	dec	sp
      0029F2 15 81            [12] 2305 	dec	sp
      0029F4 15 81            [12] 2306 	dec	sp
                                   2307 ;	dhry_1.c:259: printf ("Int_1_Loc:           %d\r\n", Int_1_Loc);
                                   2308 ;	genIpush
      0029F6 90 94 58         [24] 2309 	mov	dptr,#_main_Int_1_Loc_65536_54
      0029F9 E0               [24] 2310 	movx	a,@dptr
      0029FA C0 E0            [24] 2311 	push	acc
      0029FC A3               [24] 2312 	inc	dptr
      0029FD E0               [24] 2313 	movx	a,@dptr
      0029FE C0 E0            [24] 2314 	push	acc
                                   2315 ;	genIpush
      002A00 74 0B            [12] 2316 	mov	a,#___str_31
      002A02 C0 E0            [24] 2317 	push	acc
      002A04 74 4C            [12] 2318 	mov	a,#(___str_31 >> 8)
      002A06 C0 E0            [24] 2319 	push	acc
      002A08 74 80            [12] 2320 	mov	a,#0x80
      002A0A C0 E0            [24] 2321 	push	acc
                                   2322 ;	genCall
      002A0C 12 39 EF         [24] 2323 	lcall	_printf
      002A0F E5 81            [12] 2324 	mov	a,sp
      002A11 24 FB            [12] 2325 	add	a,#0xfb
      002A13 F5 81            [12] 2326 	mov	sp,a
                                   2327 ;	dhry_1.c:260: printf ("        should be:   %d\r\n", 5);
                                   2328 ;	genIpush
      002A15 74 05            [12] 2329 	mov	a,#0x05
      002A17 C0 E0            [24] 2330 	push	acc
                                   2331 ;	Peephole 181	changed mov to clr
      002A19 E4               [12] 2332 	clr	a
      002A1A C0 E0            [24] 2333 	push	acc
                                   2334 ;	genIpush
      002A1C 74 E0            [12] 2335 	mov	a,#___str_13
      002A1E C0 E0            [24] 2336 	push	acc
      002A20 74 49            [12] 2337 	mov	a,#(___str_13 >> 8)
      002A22 C0 E0            [24] 2338 	push	acc
      002A24 74 80            [12] 2339 	mov	a,#0x80
      002A26 C0 E0            [24] 2340 	push	acc
                                   2341 ;	genCall
      002A28 12 39 EF         [24] 2342 	lcall	_printf
      002A2B E5 81            [12] 2343 	mov	a,sp
      002A2D 24 FB            [12] 2344 	add	a,#0xfb
      002A2F F5 81            [12] 2345 	mov	sp,a
                                   2346 ;	dhry_1.c:261: printf ("Int_2_Loc:           %d\r\n", Int_2_Loc);
                                   2347 ;	genIpush
      002A31 90 94 5A         [24] 2348 	mov	dptr,#_main_Int_2_Loc_65536_54
      002A34 E0               [24] 2349 	movx	a,@dptr
      002A35 C0 E0            [24] 2350 	push	acc
      002A37 A3               [24] 2351 	inc	dptr
      002A38 E0               [24] 2352 	movx	a,@dptr
      002A39 C0 E0            [24] 2353 	push	acc
                                   2354 ;	genIpush
      002A3B 74 25            [12] 2355 	mov	a,#___str_32
      002A3D C0 E0            [24] 2356 	push	acc
      002A3F 74 4C            [12] 2357 	mov	a,#(___str_32 >> 8)
      002A41 C0 E0            [24] 2358 	push	acc
      002A43 74 80            [12] 2359 	mov	a,#0x80
      002A45 C0 E0            [24] 2360 	push	acc
                                   2361 ;	genCall
      002A47 12 39 EF         [24] 2362 	lcall	_printf
      002A4A E5 81            [12] 2363 	mov	a,sp
      002A4C 24 FB            [12] 2364 	add	a,#0xfb
      002A4E F5 81            [12] 2365 	mov	sp,a
                                   2366 ;	dhry_1.c:262: printf ("        should be:   %d\r\n", 13);
                                   2367 ;	genIpush
      002A50 74 0D            [12] 2368 	mov	a,#0x0d
      002A52 C0 E0            [24] 2369 	push	acc
                                   2370 ;	Peephole 181	changed mov to clr
      002A54 E4               [12] 2371 	clr	a
      002A55 C0 E0            [24] 2372 	push	acc
                                   2373 ;	genIpush
      002A57 74 E0            [12] 2374 	mov	a,#___str_13
      002A59 C0 E0            [24] 2375 	push	acc
      002A5B 74 49            [12] 2376 	mov	a,#(___str_13 >> 8)
      002A5D C0 E0            [24] 2377 	push	acc
      002A5F 74 80            [12] 2378 	mov	a,#0x80
      002A61 C0 E0            [24] 2379 	push	acc
                                   2380 ;	genCall
      002A63 12 39 EF         [24] 2381 	lcall	_printf
      002A66 E5 81            [12] 2382 	mov	a,sp
      002A68 24 FB            [12] 2383 	add	a,#0xfb
      002A6A F5 81            [12] 2384 	mov	sp,a
                                   2385 ;	dhry_1.c:263: printf ("Int_3_Loc:           %d\r\n", Int_3_Loc);
                                   2386 ;	genIpush
      002A6C 90 94 5C         [24] 2387 	mov	dptr,#_main_Int_3_Loc_65536_54
      002A6F E0               [24] 2388 	movx	a,@dptr
      002A70 C0 E0            [24] 2389 	push	acc
      002A72 A3               [24] 2390 	inc	dptr
      002A73 E0               [24] 2391 	movx	a,@dptr
      002A74 C0 E0            [24] 2392 	push	acc
                                   2393 ;	genIpush
      002A76 74 3F            [12] 2394 	mov	a,#___str_33
      002A78 C0 E0            [24] 2395 	push	acc
      002A7A 74 4C            [12] 2396 	mov	a,#(___str_33 >> 8)
      002A7C C0 E0            [24] 2397 	push	acc
      002A7E 74 80            [12] 2398 	mov	a,#0x80
      002A80 C0 E0            [24] 2399 	push	acc
                                   2400 ;	genCall
      002A82 12 39 EF         [24] 2401 	lcall	_printf
      002A85 E5 81            [12] 2402 	mov	a,sp
      002A87 24 FB            [12] 2403 	add	a,#0xfb
      002A89 F5 81            [12] 2404 	mov	sp,a
                                   2405 ;	dhry_1.c:264: printf ("        should be:   %d\r\n", 7);
                                   2406 ;	genIpush
      002A8B 74 07            [12] 2407 	mov	a,#0x07
      002A8D C0 E0            [24] 2408 	push	acc
                                   2409 ;	Peephole 181	changed mov to clr
      002A8F E4               [12] 2410 	clr	a
      002A90 C0 E0            [24] 2411 	push	acc
                                   2412 ;	genIpush
      002A92 74 E0            [12] 2413 	mov	a,#___str_13
      002A94 C0 E0            [24] 2414 	push	acc
      002A96 74 49            [12] 2415 	mov	a,#(___str_13 >> 8)
      002A98 C0 E0            [24] 2416 	push	acc
      002A9A 74 80            [12] 2417 	mov	a,#0x80
      002A9C C0 E0            [24] 2418 	push	acc
                                   2419 ;	genCall
      002A9E 12 39 EF         [24] 2420 	lcall	_printf
      002AA1 E5 81            [12] 2421 	mov	a,sp
      002AA3 24 FB            [12] 2422 	add	a,#0xfb
      002AA5 F5 81            [12] 2423 	mov	sp,a
                                   2424 ;	dhry_1.c:265: printf ("Enum_Loc:            %d\r\n", Enum_Loc);
                                   2425 ;	genAssign
      002AA7 90 94 5E         [24] 2426 	mov	dptr,#_main_Enum_Loc_65536_54
      002AAA E0               [24] 2427 	movx	a,@dptr
      002AAB FF               [12] 2428 	mov	r7,a
                                   2429 ;	genCast
      002AAC 7E 00            [12] 2430 	mov	r6,#0x00
                                   2431 ;	genIpush
      002AAE C0 07            [24] 2432 	push	ar7
      002AB0 C0 06            [24] 2433 	push	ar6
                                   2434 ;	genIpush
      002AB2 74 59            [12] 2435 	mov	a,#___str_34
      002AB4 C0 E0            [24] 2436 	push	acc
      002AB6 74 4C            [12] 2437 	mov	a,#(___str_34 >> 8)
      002AB8 C0 E0            [24] 2438 	push	acc
      002ABA 74 80            [12] 2439 	mov	a,#0x80
      002ABC C0 E0            [24] 2440 	push	acc
                                   2441 ;	genCall
      002ABE 12 39 EF         [24] 2442 	lcall	_printf
      002AC1 E5 81            [12] 2443 	mov	a,sp
      002AC3 24 FB            [12] 2444 	add	a,#0xfb
      002AC5 F5 81            [12] 2445 	mov	sp,a
                                   2446 ;	dhry_1.c:266: printf ("        should be:   %d\r\n", 1);
                                   2447 ;	genIpush
      002AC7 74 01            [12] 2448 	mov	a,#0x01
      002AC9 C0 E0            [24] 2449 	push	acc
                                   2450 ;	Peephole 181	changed mov to clr
      002ACB E4               [12] 2451 	clr	a
      002ACC C0 E0            [24] 2452 	push	acc
                                   2453 ;	genIpush
      002ACE 74 E0            [12] 2454 	mov	a,#___str_13
      002AD0 C0 E0            [24] 2455 	push	acc
      002AD2 74 49            [12] 2456 	mov	a,#(___str_13 >> 8)
      002AD4 C0 E0            [24] 2457 	push	acc
      002AD6 74 80            [12] 2458 	mov	a,#0x80
      002AD8 C0 E0            [24] 2459 	push	acc
                                   2460 ;	genCall
      002ADA 12 39 EF         [24] 2461 	lcall	_printf
      002ADD E5 81            [12] 2462 	mov	a,sp
      002ADF 24 FB            [12] 2463 	add	a,#0xfb
      002AE1 F5 81            [12] 2464 	mov	sp,a
                                   2465 ;	dhry_1.c:267: printf ("Str_1_Loc:           %s\r\n", Str_1_Loc);
                                   2466 ;	genIpush
      002AE3 74 5F            [12] 2467 	mov	a,#_main_Str_1_Loc_65536_54
      002AE5 C0 E0            [24] 2468 	push	acc
      002AE7 74 94            [12] 2469 	mov	a,#(_main_Str_1_Loc_65536_54 >> 8)
      002AE9 C0 E0            [24] 2470 	push	acc
                                   2471 ;	Peephole 181	changed mov to clr
      002AEB E4               [12] 2472 	clr	a
      002AEC C0 E0            [24] 2473 	push	acc
                                   2474 ;	genIpush
      002AEE 74 73            [12] 2475 	mov	a,#___str_35
      002AF0 C0 E0            [24] 2476 	push	acc
      002AF2 74 4C            [12] 2477 	mov	a,#(___str_35 >> 8)
      002AF4 C0 E0            [24] 2478 	push	acc
      002AF6 74 80            [12] 2479 	mov	a,#0x80
      002AF8 C0 E0            [24] 2480 	push	acc
                                   2481 ;	genCall
      002AFA 12 39 EF         [24] 2482 	lcall	_printf
      002AFD E5 81            [12] 2483 	mov	a,sp
      002AFF 24 FA            [12] 2484 	add	a,#0xfa
      002B01 F5 81            [12] 2485 	mov	sp,a
                                   2486 ;	dhry_1.c:268: printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\r\n");
                                   2487 ;	genIpush
      002B03 74 8D            [12] 2488 	mov	a,#___str_36
      002B05 C0 E0            [24] 2489 	push	acc
      002B07 74 4C            [12] 2490 	mov	a,#(___str_36 >> 8)
      002B09 C0 E0            [24] 2491 	push	acc
      002B0B 74 80            [12] 2492 	mov	a,#0x80
      002B0D C0 E0            [24] 2493 	push	acc
                                   2494 ;	genCall
      002B0F 12 39 EF         [24] 2495 	lcall	_printf
      002B12 15 81            [12] 2496 	dec	sp
      002B14 15 81            [12] 2497 	dec	sp
      002B16 15 81            [12] 2498 	dec	sp
                                   2499 ;	dhry_1.c:269: printf ("Str_2_Loc:           %s\r\n", Str_2_Loc);
                                   2500 ;	genIpush
      002B18 74 7E            [12] 2501 	mov	a,#_main_Str_2_Loc_65536_54
      002B1A C0 E0            [24] 2502 	push	acc
      002B1C 74 94            [12] 2503 	mov	a,#(_main_Str_2_Loc_65536_54 >> 8)
      002B1E C0 E0            [24] 2504 	push	acc
                                   2505 ;	Peephole 181	changed mov to clr
      002B20 E4               [12] 2506 	clr	a
      002B21 C0 E0            [24] 2507 	push	acc
                                   2508 ;	genIpush
      002B23 74 C3            [12] 2509 	mov	a,#___str_37
      002B25 C0 E0            [24] 2510 	push	acc
      002B27 74 4C            [12] 2511 	mov	a,#(___str_37 >> 8)
      002B29 C0 E0            [24] 2512 	push	acc
      002B2B 74 80            [12] 2513 	mov	a,#0x80
      002B2D C0 E0            [24] 2514 	push	acc
                                   2515 ;	genCall
      002B2F 12 39 EF         [24] 2516 	lcall	_printf
      002B32 E5 81            [12] 2517 	mov	a,sp
      002B34 24 FA            [12] 2518 	add	a,#0xfa
      002B36 F5 81            [12] 2519 	mov	sp,a
                                   2520 ;	dhry_1.c:270: printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\r\n");
                                   2521 ;	genIpush
      002B38 74 DD            [12] 2522 	mov	a,#___str_38
      002B3A C0 E0            [24] 2523 	push	acc
      002B3C 74 4C            [12] 2524 	mov	a,#(___str_38 >> 8)
      002B3E C0 E0            [24] 2525 	push	acc
      002B40 74 80            [12] 2526 	mov	a,#0x80
      002B42 C0 E0            [24] 2527 	push	acc
                                   2528 ;	genCall
      002B44 12 39 EF         [24] 2529 	lcall	_printf
      002B47 15 81            [12] 2530 	dec	sp
      002B49 15 81            [12] 2531 	dec	sp
      002B4B 15 81            [12] 2532 	dec	sp
                                   2533 ;	dhry_1.c:271: printf ("\r\n");
                                   2534 ;	genIpush
      002B4D 74 4A            [12] 2535 	mov	a,#___str_2
      002B4F C0 E0            [24] 2536 	push	acc
      002B51 74 48            [12] 2537 	mov	a,#(___str_2 >> 8)
      002B53 C0 E0            [24] 2538 	push	acc
      002B55 74 80            [12] 2539 	mov	a,#0x80
      002B57 C0 E0            [24] 2540 	push	acc
                                   2541 ;	genCall
      002B59 12 39 EF         [24] 2542 	lcall	_printf
      002B5C 15 81            [12] 2543 	dec	sp
      002B5E 15 81            [12] 2544 	dec	sp
      002B60 15 81            [12] 2545 	dec	sp
                                   2546 ;	dhry_1.c:273: User_Time = End_Time - Begin_Time;
                                   2547 ;	genAssign
      002B62 90 93 F8         [24] 2548 	mov	dptr,#_Begin_Time
      002B65 E0               [24] 2549 	movx	a,@dptr
      002B66 FC               [12] 2550 	mov	r4,a
      002B67 A3               [24] 2551 	inc	dptr
      002B68 E0               [24] 2552 	movx	a,@dptr
      002B69 FD               [12] 2553 	mov	r5,a
      002B6A A3               [24] 2554 	inc	dptr
      002B6B E0               [24] 2555 	movx	a,@dptr
      002B6C FE               [12] 2556 	mov	r6,a
      002B6D A3               [24] 2557 	inc	dptr
      002B6E E0               [24] 2558 	movx	a,@dptr
      002B6F FF               [12] 2559 	mov	r7,a
                                   2560 ;	genAssign
      002B70 90 93 FC         [24] 2561 	mov	dptr,#_End_Time
      002B73 E0               [24] 2562 	movx	a,@dptr
      002B74 F8               [12] 2563 	mov	r0,a
      002B75 A3               [24] 2564 	inc	dptr
      002B76 E0               [24] 2565 	movx	a,@dptr
      002B77 F9               [12] 2566 	mov	r1,a
      002B78 A3               [24] 2567 	inc	dptr
      002B79 E0               [24] 2568 	movx	a,@dptr
      002B7A FA               [12] 2569 	mov	r2,a
      002B7B A3               [24] 2570 	inc	dptr
      002B7C E0               [24] 2571 	movx	a,@dptr
      002B7D FB               [12] 2572 	mov	r3,a
                                   2573 ;	genMinus
      002B7E E8               [12] 2574 	mov	a,r0
      002B7F C3               [12] 2575 	clr	c
      002B80 9C               [12] 2576 	subb	a,r4
      002B81 FC               [12] 2577 	mov	r4,a
      002B82 E9               [12] 2578 	mov	a,r1
      002B83 9D               [12] 2579 	subb	a,r5
      002B84 FD               [12] 2580 	mov	r5,a
      002B85 EA               [12] 2581 	mov	a,r2
      002B86 9E               [12] 2582 	subb	a,r6
      002B87 FE               [12] 2583 	mov	r6,a
      002B88 EB               [12] 2584 	mov	a,r3
      002B89 9F               [12] 2585 	subb	a,r7
      002B8A FF               [12] 2586 	mov	r7,a
                                   2587 ;	genAssign
      002B8B 90 94 00         [24] 2588 	mov	dptr,#_User_Time
      002B8E EC               [12] 2589 	mov	a,r4
      002B8F F0               [24] 2590 	movx	@dptr,a
      002B90 ED               [12] 2591 	mov	a,r5
      002B91 A3               [24] 2592 	inc	dptr
      002B92 F0               [24] 2593 	movx	@dptr,a
      002B93 EE               [12] 2594 	mov	a,r6
      002B94 A3               [24] 2595 	inc	dptr
      002B95 F0               [24] 2596 	movx	@dptr,a
      002B96 EF               [12] 2597 	mov	a,r7
      002B97 A3               [24] 2598 	inc	dptr
      002B98 F0               [24] 2599 	movx	@dptr,a
                                   2600 ;	dhry_1.c:275: if (User_Time < Too_Small_Time)
                                   2601 ;	genCmpLt
                                   2602 ;	genCmp
      002B99 C3               [12] 2603 	clr	c
      002B9A EC               [12] 2604 	mov	a,r4
      002B9B 94 D0            [12] 2605 	subb	a,#0xd0
      002B9D ED               [12] 2606 	mov	a,r5
      002B9E 94 07            [12] 2607 	subb	a,#0x07
      002BA0 EE               [12] 2608 	mov	a,r6
      002BA1 94 00            [12] 2609 	subb	a,#0x00
      002BA3 EF               [12] 2610 	mov	a,r7
      002BA4 64 80            [12] 2611 	xrl	a,#0x80
      002BA6 94 80            [12] 2612 	subb	a,#0x80
                                   2613 ;	genIfxJump
                                   2614 ;	Peephole 108.a	removed ljmp by inverse jump logic
      002BA8 50 42            [24] 2615 	jnc	00112$
                                   2616 ;	Peephole 500	removed redundant label 00170$
                                   2617 ;	dhry_1.c:277: printf ("Measured time too small to obtain meaningful results\r\n");
                                   2618 ;	genIpush
      002BAA 74 13            [12] 2619 	mov	a,#___str_39
      002BAC C0 E0            [24] 2620 	push	acc
      002BAE 74 4D            [12] 2621 	mov	a,#(___str_39 >> 8)
      002BB0 C0 E0            [24] 2622 	push	acc
      002BB2 74 80            [12] 2623 	mov	a,#0x80
      002BB4 C0 E0            [24] 2624 	push	acc
                                   2625 ;	genCall
      002BB6 12 39 EF         [24] 2626 	lcall	_printf
      002BB9 15 81            [12] 2627 	dec	sp
      002BBB 15 81            [12] 2628 	dec	sp
      002BBD 15 81            [12] 2629 	dec	sp
                                   2630 ;	dhry_1.c:278: printf ("Please increase number of runs\r\n");
                                   2631 ;	genIpush
      002BBF 74 4A            [12] 2632 	mov	a,#___str_40
      002BC1 C0 E0            [24] 2633 	push	acc
      002BC3 74 4D            [12] 2634 	mov	a,#(___str_40 >> 8)
      002BC5 C0 E0            [24] 2635 	push	acc
      002BC7 74 80            [12] 2636 	mov	a,#0x80
      002BC9 C0 E0            [24] 2637 	push	acc
                                   2638 ;	genCall
      002BCB 12 39 EF         [24] 2639 	lcall	_printf
      002BCE 15 81            [12] 2640 	dec	sp
      002BD0 15 81            [12] 2641 	dec	sp
      002BD2 15 81            [12] 2642 	dec	sp
                                   2643 ;	dhry_1.c:279: printf ("\r\n");
                                   2644 ;	genIpush
      002BD4 74 4A            [12] 2645 	mov	a,#___str_2
      002BD6 C0 E0            [24] 2646 	push	acc
      002BD8 74 48            [12] 2647 	mov	a,#(___str_2 >> 8)
      002BDA C0 E0            [24] 2648 	push	acc
      002BDC 74 80            [12] 2649 	mov	a,#0x80
      002BDE C0 E0            [24] 2650 	push	acc
                                   2651 ;	genCall
      002BE0 12 39 EF         [24] 2652 	lcall	_printf
      002BE3 15 81            [12] 2653 	dec	sp
      002BE5 15 81            [12] 2654 	dec	sp
      002BE7 15 81            [12] 2655 	dec	sp
      002BE9 02 2D 43         [24] 2656 	ljmp	00113$
      002BEC                       2657 00112$:
                                   2658 ;	dhry_1.c:288: Microseconds = (float) User_Time * Mic_secs_Per_Second 
                                   2659 ;	genCall
      002BEC 8C 82            [24] 2660 	mov	dpl,r4
      002BEE 8D 83            [24] 2661 	mov	dph,r5
      002BF0 8E F0            [24] 2662 	mov	b,r6
      002BF2 EF               [12] 2663 	mov	a,r7
      002BF3 12 36 F5         [24] 2664 	lcall	___slong2fs
      002BF6 AC 82            [24] 2665 	mov	r4,dpl
      002BF8 AD 83            [24] 2666 	mov	r5,dph
      002BFA AE F0            [24] 2667 	mov	r6,b
      002BFC FF               [12] 2668 	mov	r7,a
                                   2669 ;	genIpush
      002BFD C0 07            [24] 2670 	push	ar7
      002BFF C0 06            [24] 2671 	push	ar6
      002C01 C0 05            [24] 2672 	push	ar5
      002C03 C0 04            [24] 2673 	push	ar4
      002C05 C0 04            [24] 2674 	push	ar4
      002C07 C0 05            [24] 2675 	push	ar5
      002C09 C0 06            [24] 2676 	push	ar6
      002C0B C0 07            [24] 2677 	push	ar7
                                   2678 ;	dhry_1.c:289: / ((float) HZ * ((float) Number_Of_Runs));
                                   2679 ;	genCall
                                   2680 ;	Peephole 182.b	used 16 bit load of dptr
      002C0D 90 24 00         [24] 2681 	mov	dptr,#0x2400
      002C10 75 F0 74         [24] 2682 	mov	b,#0x74
      002C13 74 49            [12] 2683 	mov	a,#0x49
      002C15 12 35 7D         [24] 2684 	lcall	___fsmul
      002C18 A8 82            [24] 2685 	mov	r0,dpl
      002C1A A9 83            [24] 2686 	mov	r1,dph
      002C1C AA F0            [24] 2687 	mov	r2,b
      002C1E FB               [12] 2688 	mov	r3,a
      002C1F E5 81            [12] 2689 	mov	a,sp
      002C21 24 FC            [12] 2690 	add	a,#0xfc
      002C23 F5 81            [12] 2691 	mov	sp,a
                                   2692 ;	Peephole 300	pop ar4 removed
                                   2693 ;	Peephole 300	pop ar5 removed
                                   2694 ;	Peephole 300	pop ar6 removed
                                   2695 ;	Peephole 300	pop ar7 removed
                                   2696 ;	genIpush
                                   2697 ;	Peephole	push ar7 removed
                                   2698 ;	Peephole	push ar6 removed
                                   2699 ;	Peephole	push ar5 removed
                                   2700 ;	Peephole	push ar4 removed
      002C25 74 80            [12] 2701 	mov	a,#0x80
      002C27 C0 E0            [24] 2702 	push	acc
      002C29 74 96            [12] 2703 	mov	a,#0x96
      002C2B C0 E0            [24] 2704 	push	acc
      002C2D 74 98            [12] 2705 	mov	a,#0x98
      002C2F C0 E0            [24] 2706 	push	acc
      002C31 74 4B            [12] 2707 	mov	a,#0x4b
      002C33 C0 E0            [24] 2708 	push	acc
                                   2709 ;	genCall
      002C35 88 82            [24] 2710 	mov	dpl,r0
      002C37 89 83            [24] 2711 	mov	dph,r1
      002C39 8A F0            [24] 2712 	mov	b,r2
      002C3B EB               [12] 2713 	mov	a,r3
      002C3C 12 44 11         [24] 2714 	lcall	___fsdiv
      002C3F A8 82            [24] 2715 	mov	r0,dpl
      002C41 A9 83            [24] 2716 	mov	r1,dph
      002C43 AA F0            [24] 2717 	mov	r2,b
      002C45 FB               [12] 2718 	mov	r3,a
      002C46 E5 81            [12] 2719 	mov	a,sp
      002C48 24 FC            [12] 2720 	add	a,#0xfc
      002C4A F5 81            [12] 2721 	mov	sp,a
      002C4C D0 04            [24] 2722 	pop	ar4
      002C4E D0 05            [24] 2723 	pop	ar5
      002C50 D0 06            [24] 2724 	pop	ar6
      002C52 D0 07            [24] 2725 	pop	ar7
                                   2726 ;	genAssign
      002C54 90 94 04         [24] 2727 	mov	dptr,#_Microseconds
      002C57 E8               [12] 2728 	mov	a,r0
      002C58 F0               [24] 2729 	movx	@dptr,a
      002C59 E9               [12] 2730 	mov	a,r1
      002C5A A3               [24] 2731 	inc	dptr
      002C5B F0               [24] 2732 	movx	@dptr,a
      002C5C EA               [12] 2733 	mov	a,r2
      002C5D A3               [24] 2734 	inc	dptr
      002C5E F0               [24] 2735 	movx	@dptr,a
      002C5F EB               [12] 2736 	mov	a,r3
      002C60 A3               [24] 2737 	inc	dptr
      002C61 F0               [24] 2738 	movx	@dptr,a
                                   2739 ;	dhry_1.c:291: / (float) User_Time;
                                   2740 ;	genIpush
      002C62 C0 04            [24] 2741 	push	ar4
      002C64 C0 05            [24] 2742 	push	ar5
      002C66 C0 06            [24] 2743 	push	ar6
      002C68 C0 07            [24] 2744 	push	ar7
                                   2745 ;	genCall
                                   2746 ;	Peephole 182.b	used 16 bit load of dptr
      002C6A 90 96 80         [24] 2747 	mov	dptr,#0x9680
      002C6D 75 F0 98         [24] 2748 	mov	b,#0x98
      002C70 74 4B            [12] 2749 	mov	a,#0x4b
      002C72 12 44 11         [24] 2750 	lcall	___fsdiv
      002C75 AC 82            [24] 2751 	mov	r4,dpl
      002C77 AD 83            [24] 2752 	mov	r5,dph
      002C79 AE F0            [24] 2753 	mov	r6,b
      002C7B FF               [12] 2754 	mov	r7,a
      002C7C E5 81            [12] 2755 	mov	a,sp
      002C7E 24 FC            [12] 2756 	add	a,#0xfc
      002C80 F5 81            [12] 2757 	mov	sp,a
                                   2758 ;	genAssign
      002C82 90 94 08         [24] 2759 	mov	dptr,#_Dhrystones_Per_Second
      002C85 EC               [12] 2760 	mov	a,r4
      002C86 F0               [24] 2761 	movx	@dptr,a
      002C87 ED               [12] 2762 	mov	a,r5
      002C88 A3               [24] 2763 	inc	dptr
      002C89 F0               [24] 2764 	movx	@dptr,a
      002C8A EE               [12] 2765 	mov	a,r6
      002C8B A3               [24] 2766 	inc	dptr
      002C8C F0               [24] 2767 	movx	@dptr,a
      002C8D EF               [12] 2768 	mov	a,r7
      002C8E A3               [24] 2769 	inc	dptr
      002C8F F0               [24] 2770 	movx	@dptr,a
                                   2771 ;	dhry_1.c:293: printf ("Microseconds for one run through Dhrystone: ");
                                   2772 ;	genIpush
      002C90 74 6B            [12] 2773 	mov	a,#___str_41
      002C92 C0 E0            [24] 2774 	push	acc
      002C94 74 4D            [12] 2775 	mov	a,#(___str_41 >> 8)
      002C96 C0 E0            [24] 2776 	push	acc
      002C98 74 80            [12] 2777 	mov	a,#0x80
      002C9A C0 E0            [24] 2778 	push	acc
                                   2779 ;	genCall
      002C9C 12 39 EF         [24] 2780 	lcall	_printf
      002C9F 15 81            [12] 2781 	dec	sp
      002CA1 15 81            [12] 2782 	dec	sp
      002CA3 15 81            [12] 2783 	dec	sp
                                   2784 ;	dhry_1.c:295: printf ("%ld \r\n", (long int)Microseconds);
                                   2785 ;	genAssign
      002CA5 90 94 04         [24] 2786 	mov	dptr,#_Microseconds
      002CA8 E0               [24] 2787 	movx	a,@dptr
      002CA9 FC               [12] 2788 	mov	r4,a
      002CAA A3               [24] 2789 	inc	dptr
      002CAB E0               [24] 2790 	movx	a,@dptr
      002CAC FD               [12] 2791 	mov	r5,a
      002CAD A3               [24] 2792 	inc	dptr
      002CAE E0               [24] 2793 	movx	a,@dptr
      002CAF FE               [12] 2794 	mov	r6,a
      002CB0 A3               [24] 2795 	inc	dptr
      002CB1 E0               [24] 2796 	movx	a,@dptr
                                   2797 ;	genCall
                                   2798 ;	Peephole 301	mov r7,a removed
      002CB2 8C 82            [24] 2799 	mov	dpl,r4
      002CB4 8D 83            [24] 2800 	mov	dph,r5
      002CB6 8E F0            [24] 2801 	mov	b,r6
                                   2802 ;	Peephole 191	removed redundant mov
      002CB8 12 37 22         [24] 2803 	lcall	___fs2slong
      002CBB AC 82            [24] 2804 	mov	r4,dpl
      002CBD AD 83            [24] 2805 	mov	r5,dph
      002CBF AE F0            [24] 2806 	mov	r6,b
      002CC1 FF               [12] 2807 	mov	r7,a
                                   2808 ;	genIpush
      002CC2 C0 04            [24] 2809 	push	ar4
      002CC4 C0 05            [24] 2810 	push	ar5
      002CC6 C0 06            [24] 2811 	push	ar6
      002CC8 C0 07            [24] 2812 	push	ar7
                                   2813 ;	genIpush
      002CCA 74 98            [12] 2814 	mov	a,#___str_42
      002CCC C0 E0            [24] 2815 	push	acc
      002CCE 74 4D            [12] 2816 	mov	a,#(___str_42 >> 8)
      002CD0 C0 E0            [24] 2817 	push	acc
      002CD2 74 80            [12] 2818 	mov	a,#0x80
      002CD4 C0 E0            [24] 2819 	push	acc
                                   2820 ;	genCall
      002CD6 12 39 EF         [24] 2821 	lcall	_printf
      002CD9 E5 81            [12] 2822 	mov	a,sp
      002CDB 24 F9            [12] 2823 	add	a,#0xf9
      002CDD F5 81            [12] 2824 	mov	sp,a
                                   2825 ;	dhry_1.c:296: printf ("Dhrystones per Second:                      ");
                                   2826 ;	genIpush
      002CDF 74 9F            [12] 2827 	mov	a,#___str_43
      002CE1 C0 E0            [24] 2828 	push	acc
      002CE3 74 4D            [12] 2829 	mov	a,#(___str_43 >> 8)
      002CE5 C0 E0            [24] 2830 	push	acc
      002CE7 74 80            [12] 2831 	mov	a,#0x80
      002CE9 C0 E0            [24] 2832 	push	acc
                                   2833 ;	genCall
      002CEB 12 39 EF         [24] 2834 	lcall	_printf
      002CEE 15 81            [12] 2835 	dec	sp
      002CF0 15 81            [12] 2836 	dec	sp
      002CF2 15 81            [12] 2837 	dec	sp
                                   2838 ;	dhry_1.c:298: printf ("%ld \r\n", (long int)Dhrystones_Per_Second);
                                   2839 ;	genAssign
      002CF4 90 94 08         [24] 2840 	mov	dptr,#_Dhrystones_Per_Second
      002CF7 E0               [24] 2841 	movx	a,@dptr
      002CF8 FC               [12] 2842 	mov	r4,a
      002CF9 A3               [24] 2843 	inc	dptr
      002CFA E0               [24] 2844 	movx	a,@dptr
      002CFB FD               [12] 2845 	mov	r5,a
      002CFC A3               [24] 2846 	inc	dptr
      002CFD E0               [24] 2847 	movx	a,@dptr
      002CFE FE               [12] 2848 	mov	r6,a
      002CFF A3               [24] 2849 	inc	dptr
      002D00 E0               [24] 2850 	movx	a,@dptr
                                   2851 ;	genCall
                                   2852 ;	Peephole 301	mov r7,a removed
      002D01 8C 82            [24] 2853 	mov	dpl,r4
      002D03 8D 83            [24] 2854 	mov	dph,r5
      002D05 8E F0            [24] 2855 	mov	b,r6
                                   2856 ;	Peephole 191	removed redundant mov
      002D07 12 37 22         [24] 2857 	lcall	___fs2slong
      002D0A AC 82            [24] 2858 	mov	r4,dpl
      002D0C AD 83            [24] 2859 	mov	r5,dph
      002D0E AE F0            [24] 2860 	mov	r6,b
      002D10 FF               [12] 2861 	mov	r7,a
                                   2862 ;	genIpush
      002D11 C0 04            [24] 2863 	push	ar4
      002D13 C0 05            [24] 2864 	push	ar5
      002D15 C0 06            [24] 2865 	push	ar6
      002D17 C0 07            [24] 2866 	push	ar7
                                   2867 ;	genIpush
      002D19 74 98            [12] 2868 	mov	a,#___str_42
      002D1B C0 E0            [24] 2869 	push	acc
      002D1D 74 4D            [12] 2870 	mov	a,#(___str_42 >> 8)
      002D1F C0 E0            [24] 2871 	push	acc
      002D21 74 80            [12] 2872 	mov	a,#0x80
      002D23 C0 E0            [24] 2873 	push	acc
                                   2874 ;	genCall
      002D25 12 39 EF         [24] 2875 	lcall	_printf
      002D28 E5 81            [12] 2876 	mov	a,sp
      002D2A 24 F9            [12] 2877 	add	a,#0xf9
      002D2C F5 81            [12] 2878 	mov	sp,a
                                   2879 ;	dhry_1.c:299: printf ("\r\n");
                                   2880 ;	genIpush
      002D2E 74 4A            [12] 2881 	mov	a,#___str_2
      002D30 C0 E0            [24] 2882 	push	acc
      002D32 74 48            [12] 2883 	mov	a,#(___str_2 >> 8)
      002D34 C0 E0            [24] 2884 	push	acc
      002D36 74 80            [12] 2885 	mov	a,#0x80
      002D38 C0 E0            [24] 2886 	push	acc
                                   2887 ;	genCall
      002D3A 12 39 EF         [24] 2888 	lcall	_printf
      002D3D 15 81            [12] 2889 	dec	sp
      002D3F 15 81            [12] 2890 	dec	sp
      002D41 15 81            [12] 2891 	dec	sp
      002D43                       2892 00113$:
                                   2893 ;	dhry_1.c:302: PCON |= 2;
                                   2894 ;	genOr
      002D43 43 87 02         [24] 2895 	orl	_PCON,#0x02
                                   2896 ;	dhry_1.c:304: return;
                                   2897 ;	genRet
                                   2898 ;	Peephole 500	removed redundant label 00120$
                                   2899 ;	dhry_1.c:305: }
      002D46 22               [24] 2900 	ret
                                   2901 ;------------------------------------------------------------
                                   2902 ;Allocation info for local variables in function 'Proc_1'
                                   2903 ;------------------------------------------------------------
                                   2904 ;sloc0                     Allocated with name '_Proc_1_sloc0_1_0'
                                   2905 ;sloc1                     Allocated with name '_Proc_1_sloc1_1_0'
                                   2906 ;sloc2                     Allocated with name '_Proc_1_sloc2_1_0'
                                   2907 ;Ptr_Val_Par               Allocated with name '_Proc_1_Ptr_Val_Par_65536_66'
                                   2908 ;Next_Record               Allocated with name '_Proc_1_Next_Record_65536_67'
                                   2909 ;------------------------------------------------------------
                                   2910 ;	dhry_1.c:308: void Proc_1 (REG Rec_Pointer Ptr_Val_Par)
                                   2911 ;	-----------------------------------------
                                   2912 ;	 function Proc_1
                                   2913 ;	-----------------------------------------
      002D47                       2914 _Proc_1:
                                   2915 ;	genReceive
      002D47 AF F0            [24] 2916 	mov	r7,b
      002D49 AE 83            [24] 2917 	mov	r6,dph
      002D4B E5 82            [12] 2918 	mov	a,dpl
      002D4D 90 94 9D         [24] 2919 	mov	dptr,#_Proc_1_Ptr_Val_Par_65536_66
      002D50 F0               [24] 2920 	movx	@dptr,a
      002D51 EE               [12] 2921 	mov	a,r6
      002D52 A3               [24] 2922 	inc	dptr
      002D53 F0               [24] 2923 	movx	@dptr,a
      002D54 EF               [12] 2924 	mov	a,r7
      002D55 A3               [24] 2925 	inc	dptr
      002D56 F0               [24] 2926 	movx	@dptr,a
                                   2927 ;	dhry_1.c:314: REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
                                   2928 ;	genAssign
      002D57 90 94 9D         [24] 2929 	mov	dptr,#_Proc_1_Ptr_Val_Par_65536_66
      002D5A E0               [24] 2930 	movx	a,@dptr
      002D5B F5 10            [12] 2931 	mov	_Proc_1_sloc0_1_0,a
      002D5D A3               [24] 2932 	inc	dptr
      002D5E E0               [24] 2933 	movx	a,@dptr
      002D5F F5 11            [12] 2934 	mov	(_Proc_1_sloc0_1_0 + 1),a
      002D61 A3               [24] 2935 	inc	dptr
      002D62 E0               [24] 2936 	movx	a,@dptr
      002D63 F5 12            [12] 2937 	mov	(_Proc_1_sloc0_1_0 + 2),a
                                   2938 ;	genPointerGet
                                   2939 ;	genGenPointerGet
      002D65 85 10 82         [24] 2940 	mov	dpl,_Proc_1_sloc0_1_0
      002D68 85 11 83         [24] 2941 	mov	dph,(_Proc_1_sloc0_1_0 + 1)
      002D6B 85 12 F0         [24] 2942 	mov	b,(_Proc_1_sloc0_1_0 + 2)
      002D6E 12 44 D4         [24] 2943 	lcall	__gptrget
      002D71 FA               [12] 2944 	mov	r2,a
      002D72 A3               [24] 2945 	inc	dptr
      002D73 12 44 D4         [24] 2946 	lcall	__gptrget
      002D76 FB               [12] 2947 	mov	r3,a
      002D77 A3               [24] 2948 	inc	dptr
      002D78 12 44 D4         [24] 2949 	lcall	__gptrget
      002D7B FC               [12] 2950 	mov	r4,a
                                   2951 ;	dhry_1.c:319: structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
                                   2952 ;	genAssign
      002D7C 8A 00            [24] 2953 	mov	ar0,r2
      002D7E 8B 01            [24] 2954 	mov	ar1,r3
      002D80 8C 07            [24] 2955 	mov	ar7,r4
                                   2956 ;	genCast
      002D82 88 13            [24] 2957 	mov	_Proc_1_sloc1_1_0,r0
      002D84 89 14            [24] 2958 	mov	(_Proc_1_sloc1_1_0 + 1),r1
      002D86 8F 15            [24] 2959 	mov	(_Proc_1_sloc1_1_0 + 2),r7
                                   2960 ;	genAssign
      002D88 90 80 00         [24] 2961 	mov	dptr,#_Ptr_Glob
      002D8B E0               [24] 2962 	movx	a,@dptr
      002D8C FD               [12] 2963 	mov	r5,a
      002D8D A3               [24] 2964 	inc	dptr
      002D8E E0               [24] 2965 	movx	a,@dptr
      002D8F FE               [12] 2966 	mov	r6,a
      002D90 A3               [24] 2967 	inc	dptr
      002D91 E0               [24] 2968 	movx	a,@dptr
      002D92 FF               [12] 2969 	mov	r7,a
                                   2970 ;	genCast
      002D93 90 94 D4         [24] 2971 	mov	dptr,#___memcpy_PARM_2
      002D96 ED               [12] 2972 	mov	a,r5
      002D97 F0               [24] 2973 	movx	@dptr,a
      002D98 EE               [12] 2974 	mov	a,r6
      002D99 A3               [24] 2975 	inc	dptr
      002D9A F0               [24] 2976 	movx	@dptr,a
      002D9B EF               [12] 2977 	mov	a,r7
      002D9C A3               [24] 2978 	inc	dptr
      002D9D F0               [24] 2979 	movx	@dptr,a
                                   2980 ;	genAssign
      002D9E 90 94 D7         [24] 2981 	mov	dptr,#___memcpy_PARM_3
      002DA1 74 26            [12] 2982 	mov	a,#0x26
      002DA3 F0               [24] 2983 	movx	@dptr,a
                                   2984 ;	Peephole 181	changed mov to clr
      002DA4 E4               [12] 2985 	clr	a
      002DA5 A3               [24] 2986 	inc	dptr
      002DA6 F0               [24] 2987 	movx	@dptr,a
                                   2988 ;	genCall
      002DA7 85 13 82         [24] 2989 	mov	dpl,_Proc_1_sloc1_1_0
      002DAA 85 14 83         [24] 2990 	mov	dph,(_Proc_1_sloc1_1_0 + 1)
      002DAD 85 15 F0         [24] 2991 	mov	b,(_Proc_1_sloc1_1_0 + 2)
      002DB0 C0 04            [24] 2992 	push	ar4
      002DB2 C0 03            [24] 2993 	push	ar3
      002DB4 C0 02            [24] 2994 	push	ar2
      002DB6 12 36 4E         [24] 2995 	lcall	___memcpy
      002DB9 D0 02            [24] 2996 	pop	ar2
      002DBB D0 03            [24] 2997 	pop	ar3
      002DBD D0 04            [24] 2998 	pop	ar4
                                   2999 ;	dhry_1.c:320: Ptr_Val_Par->variant.var_1.Int_Comp = 5;
                                   3000 ;	genPlus
                                   3001 ;	genPlusIncr
      002DBF 74 04            [12] 3002 	mov	a,#0x04
      002DC1 25 10            [12] 3003 	add	a,_Proc_1_sloc0_1_0
      002DC3 F5 13            [12] 3004 	mov	_Proc_1_sloc1_1_0,a
                                   3005 ;	Peephole 181	changed mov to clr
      002DC5 E4               [12] 3006 	clr	a
      002DC6 35 11            [12] 3007 	addc	a,(_Proc_1_sloc0_1_0 + 1)
      002DC8 F5 14            [12] 3008 	mov	(_Proc_1_sloc1_1_0 + 1),a
      002DCA 85 12 15         [24] 3009 	mov	(_Proc_1_sloc1_1_0 + 2),(_Proc_1_sloc0_1_0 + 2)
                                   3010 ;	genPlus
                                   3011 ;	genPlusIncr
      002DCD 74 05            [12] 3012 	mov	a,#0x05
      002DCF 25 10            [12] 3013 	add	a,_Proc_1_sloc0_1_0
      002DD1 F5 16            [12] 3014 	mov	_Proc_1_sloc2_1_0,a
                                   3015 ;	Peephole 181	changed mov to clr
      002DD3 E4               [12] 3016 	clr	a
      002DD4 35 11            [12] 3017 	addc	a,(_Proc_1_sloc0_1_0 + 1)
      002DD6 F5 17            [12] 3018 	mov	(_Proc_1_sloc2_1_0 + 1),a
      002DD8 85 12 18         [24] 3019 	mov	(_Proc_1_sloc2_1_0 + 2),(_Proc_1_sloc0_1_0 + 2)
                                   3020 ;	genPointerSet
                                   3021 ;	genGenPointerSet
      002DDB 85 16 82         [24] 3022 	mov	dpl,_Proc_1_sloc2_1_0
      002DDE 85 17 83         [24] 3023 	mov	dph,(_Proc_1_sloc2_1_0 + 1)
      002DE1 85 18 F0         [24] 3024 	mov	b,(_Proc_1_sloc2_1_0 + 2)
      002DE4 74 05            [12] 3025 	mov	a,#0x05
      002DE6 12 37 8F         [24] 3026 	lcall	__gptrput
      002DE9 A3               [24] 3027 	inc	dptr
                                   3028 ;	Peephole 181	changed mov to clr
      002DEA E4               [12] 3029 	clr	a
      002DEB 12 37 8F         [24] 3030 	lcall	__gptrput
                                   3031 ;	dhry_1.c:321: Next_Record->variant.var_1.Int_Comp 
                                   3032 ;	genPlus
                                   3033 ;	genPlusIncr
      002DEE 74 04            [12] 3034 	mov	a,#0x04
      002DF0 2A               [12] 3035 	add	a,r2
      002DF1 FD               [12] 3036 	mov	r5,a
                                   3037 ;	Peephole 181	changed mov to clr
      002DF2 E4               [12] 3038 	clr	a
      002DF3 3B               [12] 3039 	addc	a,r3
      002DF4 FE               [12] 3040 	mov	r6,a
      002DF5 8C 07            [24] 3041 	mov	ar7,r4
                                   3042 ;	genPlus
                                   3043 ;	genPlusIncr
      002DF7 0D               [12] 3044 	inc	r5
      002DF8 BD 00 01         [24] 3045 	cjne	r5,#0x00,00110$
      002DFB 0E               [12] 3046 	inc	r6
      002DFC                       3047 00110$:
                                   3048 ;	dhry_1.c:322: = Ptr_Val_Par->variant.var_1.Int_Comp;
                                   3049 ;	genPointerGet
                                   3050 ;	genGenPointerGet
      002DFC 85 16 82         [24] 3051 	mov	dpl,_Proc_1_sloc2_1_0
      002DFF 85 17 83         [24] 3052 	mov	dph,(_Proc_1_sloc2_1_0 + 1)
      002E02 85 18 F0         [24] 3053 	mov	b,(_Proc_1_sloc2_1_0 + 2)
      002E05 12 44 D4         [24] 3054 	lcall	__gptrget
      002E08 F8               [12] 3055 	mov	r0,a
      002E09 A3               [24] 3056 	inc	dptr
      002E0A 12 44 D4         [24] 3057 	lcall	__gptrget
      002E0D F9               [12] 3058 	mov	r1,a
                                   3059 ;	genPointerSet
                                   3060 ;	genGenPointerSet
      002E0E 8D 82            [24] 3061 	mov	dpl,r5
      002E10 8E 83            [24] 3062 	mov	dph,r6
      002E12 8F F0            [24] 3063 	mov	b,r7
      002E14 E8               [12] 3064 	mov	a,r0
      002E15 12 37 8F         [24] 3065 	lcall	__gptrput
      002E18 A3               [24] 3066 	inc	dptr
      002E19 E9               [12] 3067 	mov	a,r1
      002E1A 12 37 8F         [24] 3068 	lcall	__gptrput
                                   3069 ;	dhry_1.c:323: Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
                                   3070 ;	genPointerGet
                                   3071 ;	genGenPointerGet
      002E1D 85 10 82         [24] 3072 	mov	dpl,_Proc_1_sloc0_1_0
      002E20 85 11 83         [24] 3073 	mov	dph,(_Proc_1_sloc0_1_0 + 1)
      002E23 85 12 F0         [24] 3074 	mov	b,(_Proc_1_sloc0_1_0 + 2)
      002E26 12 44 D4         [24] 3075 	lcall	__gptrget
      002E29 FD               [12] 3076 	mov	r5,a
      002E2A A3               [24] 3077 	inc	dptr
      002E2B 12 44 D4         [24] 3078 	lcall	__gptrget
      002E2E FE               [12] 3079 	mov	r6,a
      002E2F A3               [24] 3080 	inc	dptr
      002E30 12 44 D4         [24] 3081 	lcall	__gptrget
      002E33 FF               [12] 3082 	mov	r7,a
                                   3083 ;	genPointerSet
                                   3084 ;	genGenPointerSet
      002E34 8A 82            [24] 3085 	mov	dpl,r2
      002E36 8B 83            [24] 3086 	mov	dph,r3
      002E38 8C F0            [24] 3087 	mov	b,r4
      002E3A ED               [12] 3088 	mov	a,r5
      002E3B 12 37 8F         [24] 3089 	lcall	__gptrput
      002E3E A3               [24] 3090 	inc	dptr
      002E3F EE               [12] 3091 	mov	a,r6
      002E40 12 37 8F         [24] 3092 	lcall	__gptrput
      002E43 A3               [24] 3093 	inc	dptr
      002E44 EF               [12] 3094 	mov	a,r7
      002E45 12 37 8F         [24] 3095 	lcall	__gptrput
                                   3096 ;	dhry_1.c:324: Proc_3 (&Next_Record->Ptr_Comp);
                                   3097 ;	genCall
      002E48 8A 82            [24] 3098 	mov	dpl,r2
      002E4A 8B 83            [24] 3099 	mov	dph,r3
      002E4C 8C F0            [24] 3100 	mov	b,r4
      002E4E C0 04            [24] 3101 	push	ar4
      002E50 C0 03            [24] 3102 	push	ar3
      002E52 C0 02            [24] 3103 	push	ar2
      002E54 12 2F D1         [24] 3104 	lcall	_Proc_3
      002E57 D0 02            [24] 3105 	pop	ar2
      002E59 D0 03            [24] 3106 	pop	ar3
      002E5B D0 04            [24] 3107 	pop	ar4
                                   3108 ;	dhry_1.c:327: if (Next_Record->Discr == Ident_1)
                                   3109 ;	genPlus
                                   3110 ;	genPlusIncr
      002E5D 74 03            [12] 3111 	mov	a,#0x03
      002E5F 2A               [12] 3112 	add	a,r2
      002E60 FD               [12] 3113 	mov	r5,a
                                   3114 ;	Peephole 181	changed mov to clr
      002E61 E4               [12] 3115 	clr	a
      002E62 3B               [12] 3116 	addc	a,r3
      002E63 FE               [12] 3117 	mov	r6,a
      002E64 8C 07            [24] 3118 	mov	ar7,r4
                                   3119 ;	genPointerGet
                                   3120 ;	genGenPointerGet
      002E66 8D 82            [24] 3121 	mov	dpl,r5
      002E68 8E 83            [24] 3122 	mov	dph,r6
      002E6A 8F F0            [24] 3123 	mov	b,r7
      002E6C 12 44 D4         [24] 3124 	lcall	__gptrget
                                   3125 ;	genIfxJump
      002E6F 60 03            [24] 3126 	jz	00111$
      002E71 02 2F 2F         [24] 3127 	ljmp	00102$
      002E74                       3128 00111$:
                                   3129 ;	dhry_1.c:330: Next_Record->variant.var_1.Int_Comp = 6;
                                   3130 ;	genPlus
                                   3131 ;	genPlusIncr
      002E74 74 04            [12] 3132 	mov	a,#0x04
      002E76 2A               [12] 3133 	add	a,r2
      002E77 F5 16            [12] 3134 	mov	_Proc_1_sloc2_1_0,a
                                   3135 ;	Peephole 181	changed mov to clr
      002E79 E4               [12] 3136 	clr	a
      002E7A 3B               [12] 3137 	addc	a,r3
      002E7B F5 17            [12] 3138 	mov	(_Proc_1_sloc2_1_0 + 1),a
      002E7D 8C 18            [24] 3139 	mov	(_Proc_1_sloc2_1_0 + 2),r4
                                   3140 ;	genPlus
                                   3141 ;	genPlusIncr
      002E7F 74 01            [12] 3142 	mov	a,#0x01
      002E81 25 16            [12] 3143 	add	a,_Proc_1_sloc2_1_0
      002E83 F8               [12] 3144 	mov	r0,a
                                   3145 ;	Peephole 181	changed mov to clr
      002E84 E4               [12] 3146 	clr	a
      002E85 35 17            [12] 3147 	addc	a,(_Proc_1_sloc2_1_0 + 1)
      002E87 F9               [12] 3148 	mov	r1,a
      002E88 AF 18            [24] 3149 	mov	r7,(_Proc_1_sloc2_1_0 + 2)
                                   3150 ;	genPointerSet
                                   3151 ;	genGenPointerSet
      002E8A 88 82            [24] 3152 	mov	dpl,r0
      002E8C 89 83            [24] 3153 	mov	dph,r1
      002E8E 8F F0            [24] 3154 	mov	b,r7
      002E90 74 06            [12] 3155 	mov	a,#0x06
      002E92 12 37 8F         [24] 3156 	lcall	__gptrput
      002E95 A3               [24] 3157 	inc	dptr
                                   3158 ;	Peephole 181	changed mov to clr
      002E96 E4               [12] 3159 	clr	a
      002E97 12 37 8F         [24] 3160 	lcall	__gptrput
                                   3161 ;	dhry_1.c:331: Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
                                   3162 ;	genPointerGet
                                   3163 ;	genGenPointerGet
      002E9A 85 13 82         [24] 3164 	mov	dpl,_Proc_1_sloc1_1_0
      002E9D 85 14 83         [24] 3165 	mov	dph,(_Proc_1_sloc1_1_0 + 1)
      002EA0 85 15 F0         [24] 3166 	mov	b,(_Proc_1_sloc1_1_0 + 2)
      002EA3 12 44 D4         [24] 3167 	lcall	__gptrget
      002EA6 FF               [12] 3168 	mov	r7,a
                                   3169 ;	dhry_1.c:332: &Next_Record->variant.var_1.Enum_Comp);
                                   3170 ;	genAssign
      002EA7 90 94 A7         [24] 3171 	mov	dptr,#_Proc_6_PARM_2
      002EAA E5 16            [12] 3172 	mov	a,_Proc_1_sloc2_1_0
      002EAC F0               [24] 3173 	movx	@dptr,a
      002EAD E5 17            [12] 3174 	mov	a,(_Proc_1_sloc2_1_0 + 1)
      002EAF A3               [24] 3175 	inc	dptr
      002EB0 F0               [24] 3176 	movx	@dptr,a
      002EB1 E5 18            [12] 3177 	mov	a,(_Proc_1_sloc2_1_0 + 2)
      002EB3 A3               [24] 3178 	inc	dptr
      002EB4 F0               [24] 3179 	movx	@dptr,a
                                   3180 ;	genCall
      002EB5 8F 82            [24] 3181 	mov	dpl,r7
      002EB7 C0 04            [24] 3182 	push	ar4
      002EB9 C0 03            [24] 3183 	push	ar3
      002EBB C0 02            [24] 3184 	push	ar2
      002EBD 12 30 8A         [24] 3185 	lcall	_Proc_6
      002EC0 D0 02            [24] 3186 	pop	ar2
      002EC2 D0 03            [24] 3187 	pop	ar3
      002EC4 D0 04            [24] 3188 	pop	ar4
                                   3189 ;	dhry_1.c:333: Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
                                   3190 ;	genAssign
      002EC6 90 80 00         [24] 3191 	mov	dptr,#_Ptr_Glob
      002EC9 E0               [24] 3192 	movx	a,@dptr
      002ECA FD               [12] 3193 	mov	r5,a
      002ECB A3               [24] 3194 	inc	dptr
      002ECC E0               [24] 3195 	movx	a,@dptr
      002ECD FE               [12] 3196 	mov	r6,a
      002ECE A3               [24] 3197 	inc	dptr
      002ECF E0               [24] 3198 	movx	a,@dptr
      002ED0 FF               [12] 3199 	mov	r7,a
                                   3200 ;	genPointerGet
                                   3201 ;	genGenPointerGet
      002ED1 8D 82            [24] 3202 	mov	dpl,r5
      002ED3 8E 83            [24] 3203 	mov	dph,r6
      002ED5 8F F0            [24] 3204 	mov	b,r7
      002ED7 12 44 D4         [24] 3205 	lcall	__gptrget
      002EDA FD               [12] 3206 	mov	r5,a
      002EDB A3               [24] 3207 	inc	dptr
      002EDC 12 44 D4         [24] 3208 	lcall	__gptrget
      002EDF FE               [12] 3209 	mov	r6,a
      002EE0 A3               [24] 3210 	inc	dptr
      002EE1 12 44 D4         [24] 3211 	lcall	__gptrget
      002EE4 FF               [12] 3212 	mov	r7,a
                                   3213 ;	genPointerSet
                                   3214 ;	genGenPointerSet
      002EE5 8A 82            [24] 3215 	mov	dpl,r2
      002EE7 8B 83            [24] 3216 	mov	dph,r3
      002EE9 8C F0            [24] 3217 	mov	b,r4
      002EEB ED               [12] 3218 	mov	a,r5
      002EEC 12 37 8F         [24] 3219 	lcall	__gptrput
      002EEF A3               [24] 3220 	inc	dptr
      002EF0 EE               [12] 3221 	mov	a,r6
      002EF1 12 37 8F         [24] 3222 	lcall	__gptrput
      002EF4 A3               [24] 3223 	inc	dptr
      002EF5 EF               [12] 3224 	mov	a,r7
      002EF6 12 37 8F         [24] 3225 	lcall	__gptrput
                                   3226 ;	dhry_1.c:334: Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
                                   3227 ;	genPlus
                                   3228 ;	genPlusIncr
      002EF9 74 04            [12] 3229 	mov	a,#0x04
      002EFB 2A               [12] 3230 	add	a,r2
      002EFC FA               [12] 3231 	mov	r2,a
                                   3232 ;	Peephole 181	changed mov to clr
      002EFD E4               [12] 3233 	clr	a
      002EFE 3B               [12] 3234 	addc	a,r3
      002EFF FB               [12] 3235 	mov	r3,a
                                   3236 ;	genPlus
                                   3237 ;	genPlusIncr
      002F00 0A               [12] 3238 	inc	r2
      002F01 BA 00 01         [24] 3239 	cjne	r2,#0x00,00112$
      002F04 0B               [12] 3240 	inc	r3
      002F05                       3241 00112$:
                                   3242 ;	genPointerGet
                                   3243 ;	genGenPointerGet
      002F05 8A 82            [24] 3244 	mov	dpl,r2
      002F07 8B 83            [24] 3245 	mov	dph,r3
      002F09 8C F0            [24] 3246 	mov	b,r4
      002F0B 12 44 D4         [24] 3247 	lcall	__gptrget
      002F0E FE               [12] 3248 	mov	r6,a
      002F0F A3               [24] 3249 	inc	dptr
      002F10 12 44 D4         [24] 3250 	lcall	__gptrget
      002F13 FF               [12] 3251 	mov	r7,a
                                   3252 ;	dhry_1.c:335: &Next_Record->variant.var_1.Int_Comp);
                                   3253 ;	genAssign
      002F14 90 94 AB         [24] 3254 	mov	dptr,#_Proc_7_PARM_2
      002F17 74 0A            [12] 3255 	mov	a,#0x0a
      002F19 F0               [24] 3256 	movx	@dptr,a
                                   3257 ;	Peephole 181	changed mov to clr
      002F1A E4               [12] 3258 	clr	a
      002F1B A3               [24] 3259 	inc	dptr
      002F1C F0               [24] 3260 	movx	@dptr,a
                                   3261 ;	genAssign
      002F1D 90 94 AD         [24] 3262 	mov	dptr,#_Proc_7_PARM_3
      002F20 EA               [12] 3263 	mov	a,r2
      002F21 F0               [24] 3264 	movx	@dptr,a
      002F22 EB               [12] 3265 	mov	a,r3
      002F23 A3               [24] 3266 	inc	dptr
      002F24 F0               [24] 3267 	movx	@dptr,a
      002F25 EC               [12] 3268 	mov	a,r4
      002F26 A3               [24] 3269 	inc	dptr
      002F27 F0               [24] 3270 	movx	@dptr,a
                                   3271 ;	genCall
      002F28 8E 82            [24] 3272 	mov	dpl,r6
      002F2A 8F 83            [24] 3273 	mov	dph,r7
                                   3274 ;	Peephole 112.b	changed ljmp to sjmp
                                   3275 ;	Peephole 251.b	replaced sjmp 00104$ to ret with ret
                                   3276 ;	Peephole 400.a	replaced lcall/ret with ljmp
      002F2C 02 31 34         [24] 3277 	ljmp	_Proc_7
      002F2F                       3278 00102$:
                                   3279 ;	dhry_1.c:338: structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
                                   3280 ;	genAssign
      002F2F AD 10            [24] 3281 	mov	r5,_Proc_1_sloc0_1_0
      002F31 AE 11            [24] 3282 	mov	r6,(_Proc_1_sloc0_1_0 + 1)
      002F33 AF 12            [24] 3283 	mov	r7,(_Proc_1_sloc0_1_0 + 2)
                                   3284 ;	genCast
                                   3285 ;	genPointerGet
                                   3286 ;	genGenPointerGet
      002F35 85 10 82         [24] 3287 	mov	dpl,_Proc_1_sloc0_1_0
      002F38 85 11 83         [24] 3288 	mov	dph,(_Proc_1_sloc0_1_0 + 1)
      002F3B 85 12 F0         [24] 3289 	mov	b,(_Proc_1_sloc0_1_0 + 2)
      002F3E 12 44 D4         [24] 3290 	lcall	__gptrget
      002F41 FA               [12] 3291 	mov	r2,a
      002F42 A3               [24] 3292 	inc	dptr
      002F43 12 44 D4         [24] 3293 	lcall	__gptrget
      002F46 FB               [12] 3294 	mov	r3,a
      002F47 A3               [24] 3295 	inc	dptr
      002F48 12 44 D4         [24] 3296 	lcall	__gptrget
      002F4B FC               [12] 3297 	mov	r4,a
                                   3298 ;	genCast
      002F4C 90 94 D4         [24] 3299 	mov	dptr,#___memcpy_PARM_2
      002F4F EA               [12] 3300 	mov	a,r2
      002F50 F0               [24] 3301 	movx	@dptr,a
      002F51 EB               [12] 3302 	mov	a,r3
      002F52 A3               [24] 3303 	inc	dptr
      002F53 F0               [24] 3304 	movx	@dptr,a
      002F54 EC               [12] 3305 	mov	a,r4
      002F55 A3               [24] 3306 	inc	dptr
      002F56 F0               [24] 3307 	movx	@dptr,a
                                   3308 ;	genAssign
      002F57 90 94 D7         [24] 3309 	mov	dptr,#___memcpy_PARM_3
      002F5A 74 26            [12] 3310 	mov	a,#0x26
      002F5C F0               [24] 3311 	movx	@dptr,a
                                   3312 ;	Peephole 181	changed mov to clr
      002F5D E4               [12] 3313 	clr	a
      002F5E A3               [24] 3314 	inc	dptr
      002F5F F0               [24] 3315 	movx	@dptr,a
                                   3316 ;	genCall
      002F60 8D 82            [24] 3317 	mov	dpl,r5
      002F62 8E 83            [24] 3318 	mov	dph,r6
      002F64 8F F0            [24] 3319 	mov	b,r7
                                   3320 ;	dhry_1.c:339: } /* Proc_1 */
                                   3321 ;	Peephole 400.b	replaced lcall/ret with ljmp
      002F66 02 36 4E         [24] 3322 	ljmp	___memcpy
                                   3323 ;
                                   3324 ;------------------------------------------------------------
                                   3325 ;Allocation info for local variables in function 'Proc_2'
                                   3326 ;------------------------------------------------------------
                                   3327 ;Int_Par_Ref               Allocated with name '_Proc_2_Int_Par_Ref_65536_69'
                                   3328 ;Int_Loc                   Allocated with name '_Proc_2_Int_Loc_65536_70'
                                   3329 ;Enum_Loc                  Allocated with name '_Proc_2_Enum_Loc_65536_70'
                                   3330 ;------------------------------------------------------------
                                   3331 ;	dhry_1.c:342: void Proc_2 (One_Fifty *Int_Par_Ref)
                                   3332 ;	-----------------------------------------
                                   3333 ;	 function Proc_2
                                   3334 ;	-----------------------------------------
      002F69                       3335 _Proc_2:
                                   3336 ;	genReceive
      002F69 AF F0            [24] 3337 	mov	r7,b
      002F6B AE 83            [24] 3338 	mov	r6,dph
      002F6D E5 82            [12] 3339 	mov	a,dpl
      002F6F 90 94 A0         [24] 3340 	mov	dptr,#_Proc_2_Int_Par_Ref_65536_69
      002F72 F0               [24] 3341 	movx	@dptr,a
      002F73 EE               [12] 3342 	mov	a,r6
      002F74 A3               [24] 3343 	inc	dptr
      002F75 F0               [24] 3344 	movx	@dptr,a
      002F76 EF               [12] 3345 	mov	a,r7
      002F77 A3               [24] 3346 	inc	dptr
      002F78 F0               [24] 3347 	movx	@dptr,a
                                   3348 ;	dhry_1.c:351: Int_Loc = *Int_Par_Ref + 10;
                                   3349 ;	genAssign
      002F79 90 94 A0         [24] 3350 	mov	dptr,#_Proc_2_Int_Par_Ref_65536_69
      002F7C E0               [24] 3351 	movx	a,@dptr
      002F7D FD               [12] 3352 	mov	r5,a
      002F7E A3               [24] 3353 	inc	dptr
      002F7F E0               [24] 3354 	movx	a,@dptr
      002F80 FE               [12] 3355 	mov	r6,a
      002F81 A3               [24] 3356 	inc	dptr
      002F82 E0               [24] 3357 	movx	a,@dptr
      002F83 FF               [12] 3358 	mov	r7,a
                                   3359 ;	genPointerGet
                                   3360 ;	genGenPointerGet
      002F84 8D 82            [24] 3361 	mov	dpl,r5
      002F86 8E 83            [24] 3362 	mov	dph,r6
      002F88 8F F0            [24] 3363 	mov	b,r7
      002F8A 12 44 D4         [24] 3364 	lcall	__gptrget
      002F8D FB               [12] 3365 	mov	r3,a
      002F8E A3               [24] 3366 	inc	dptr
      002F8F 12 44 D4         [24] 3367 	lcall	__gptrget
      002F92 FC               [12] 3368 	mov	r4,a
                                   3369 ;	genPlus
                                   3370 ;	genPlusIncr
      002F93 74 0A            [12] 3371 	mov	a,#0x0a
      002F95 2B               [12] 3372 	add	a,r3
      002F96 FB               [12] 3373 	mov	r3,a
                                   3374 ;	Peephole 181	changed mov to clr
      002F97 E4               [12] 3375 	clr	a
      002F98 3C               [12] 3376 	addc	a,r4
      002F99 FC               [12] 3377 	mov	r4,a
                                   3378 ;	dhry_1.c:352: do /* executed once */
      002F9A                       3379 00103$:
                                   3380 ;	dhry_1.c:353: if (Ch_1_Glob == 'A')
                                   3381 ;	genAssign
      002F9A 90 80 0A         [24] 3382 	mov	dptr,#_Ch_1_Glob
      002F9D E0               [24] 3383 	movx	a,@dptr
      002F9E FA               [12] 3384 	mov	r2,a
                                   3385 ;	genCmpEq
                                   3386 ;	gencjneshort
                                   3387 ;	Peephole 112.b	changed ljmp to sjmp
                                   3388 ;	Peephole 198.b	optimized misc jump sequence
      002F9F BA 41 28         [24] 3389 	cjne	r2,#0x41,00104$
                                   3390 ;	Peephole 200.b	removed redundant sjmp
                                   3391 ;	Peephole 500	removed redundant label 00117$
                                   3392 ;	Peephole 500	removed redundant label 00118$
                                   3393 ;	dhry_1.c:356: Int_Loc -= 1;
                                   3394 ;	genMinus
                                   3395 ;	genMinusDec
      002FA2 1B               [12] 3396 	dec	r3
      002FA3 BB FF 01         [24] 3397 	cjne	r3,#0xff,00119$
      002FA6 1C               [12] 3398 	dec	r4
      002FA7                       3399 00119$:
                                   3400 ;	dhry_1.c:357: *Int_Par_Ref = Int_Loc - Int_Glob;
                                   3401 ;	genAssign
      002FA7 90 80 06         [24] 3402 	mov	dptr,#_Int_Glob
      002FAA E0               [24] 3403 	movx	a,@dptr
      002FAB F9               [12] 3404 	mov	r1,a
      002FAC A3               [24] 3405 	inc	dptr
      002FAD E0               [24] 3406 	movx	a,@dptr
      002FAE FA               [12] 3407 	mov	r2,a
                                   3408 ;	genMinus
      002FAF EB               [12] 3409 	mov	a,r3
      002FB0 C3               [12] 3410 	clr	c
      002FB1 99               [12] 3411 	subb	a,r1
      002FB2 F9               [12] 3412 	mov	r1,a
      002FB3 EC               [12] 3413 	mov	a,r4
      002FB4 9A               [12] 3414 	subb	a,r2
      002FB5 FA               [12] 3415 	mov	r2,a
                                   3416 ;	genPointerSet
                                   3417 ;	genGenPointerSet
      002FB6 8D 82            [24] 3418 	mov	dpl,r5
      002FB8 8E 83            [24] 3419 	mov	dph,r6
      002FBA 8F F0            [24] 3420 	mov	b,r7
      002FBC E9               [12] 3421 	mov	a,r1
      002FBD 12 37 8F         [24] 3422 	lcall	__gptrput
      002FC0 A3               [24] 3423 	inc	dptr
      002FC1 EA               [12] 3424 	mov	a,r2
      002FC2 12 37 8F         [24] 3425 	lcall	__gptrput
                                   3426 ;	dhry_1.c:358: Enum_Loc = Ident_1;
                                   3427 ;	genAssign
      002FC5 90 94 A3         [24] 3428 	mov	dptr,#_Proc_2_Enum_Loc_65536_70
                                   3429 ;	Peephole 181	changed mov to clr
      002FC8 E4               [12] 3430 	clr	a
      002FC9 F0               [24] 3431 	movx	@dptr,a
      002FCA                       3432 00104$:
                                   3433 ;	dhry_1.c:360: while (Enum_Loc != Ident_1); /* true */
                                   3434 ;	genIfx
      002FCA 90 94 A3         [24] 3435 	mov	dptr,#_Proc_2_Enum_Loc_65536_70
      002FCD E0               [24] 3436 	movx	a,@dptr
                                   3437 ;	genIfxJump
                                   3438 ;	Peephole 108.b	removed ljmp by inverse jump logic
      002FCE 70 CA            [24] 3439 	jnz	00103$
                                   3440 ;	Peephole 500	removed redundant label 00120$
                                   3441 ;	Peephole 500	removed redundant label 00106$
                                   3442 ;	dhry_1.c:361: } /* Proc_2 */
      002FD0 22               [24] 3443 	ret
                                   3444 ;------------------------------------------------------------
                                   3445 ;Allocation info for local variables in function 'Proc_3'
                                   3446 ;------------------------------------------------------------
                                   3447 ;Ptr_Ref_Par               Allocated with name '_Proc_3_Ptr_Ref_Par_65536_72'
                                   3448 ;------------------------------------------------------------
                                   3449 ;	dhry_1.c:364: void Proc_3 (Rec_Pointer *Ptr_Ref_Par)
                                   3450 ;	-----------------------------------------
                                   3451 ;	 function Proc_3
                                   3452 ;	-----------------------------------------
      002FD1                       3453 _Proc_3:
                                   3454 ;	genReceive
      002FD1 AF F0            [24] 3455 	mov	r7,b
      002FD3 AE 83            [24] 3456 	mov	r6,dph
      002FD5 E5 82            [12] 3457 	mov	a,dpl
      002FD7 90 94 A4         [24] 3458 	mov	dptr,#_Proc_3_Ptr_Ref_Par_65536_72
      002FDA F0               [24] 3459 	movx	@dptr,a
      002FDB EE               [12] 3460 	mov	a,r6
      002FDC A3               [24] 3461 	inc	dptr
      002FDD F0               [24] 3462 	movx	@dptr,a
      002FDE EF               [12] 3463 	mov	a,r7
      002FDF A3               [24] 3464 	inc	dptr
      002FE0 F0               [24] 3465 	movx	@dptr,a
                                   3466 ;	dhry_1.c:370: if (Ptr_Glob != Null)
                                   3467 ;	genAssign
      002FE1 90 80 00         [24] 3468 	mov	dptr,#_Ptr_Glob
      002FE4 E0               [24] 3469 	movx	a,@dptr
      002FE5 FD               [12] 3470 	mov	r5,a
      002FE6 A3               [24] 3471 	inc	dptr
      002FE7 E0               [24] 3472 	movx	a,@dptr
      002FE8 FE               [12] 3473 	mov	r6,a
      002FE9 A3               [24] 3474 	inc	dptr
      002FEA E0               [24] 3475 	movx	a,@dptr
      002FEB FF               [12] 3476 	mov	r7,a
                                   3477 ;	genIfx
      002FEC 90 80 00         [24] 3478 	mov	dptr,#_Ptr_Glob
      002FEF E0               [24] 3479 	movx	a,@dptr
      002FF0 F5 F0            [12] 3480 	mov	b,a
      002FF2 A3               [24] 3481 	inc	dptr
      002FF3 E0               [24] 3482 	movx	a,@dptr
      002FF4 45 F0            [12] 3483 	orl	a,b
                                   3484 ;	genIfxJump
                                   3485 ;	Peephole 108.c	removed ljmp by inverse jump logic
      002FF6 60 33            [24] 3486 	jz	00102$
                                   3487 ;	Peephole 500	removed redundant label 00109$
                                   3488 ;	dhry_1.c:372: *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
                                   3489 ;	genAssign
      002FF8 90 94 A4         [24] 3490 	mov	dptr,#_Proc_3_Ptr_Ref_Par_65536_72
      002FFB E0               [24] 3491 	movx	a,@dptr
      002FFC FA               [12] 3492 	mov	r2,a
      002FFD A3               [24] 3493 	inc	dptr
      002FFE E0               [24] 3494 	movx	a,@dptr
      002FFF FB               [12] 3495 	mov	r3,a
      003000 A3               [24] 3496 	inc	dptr
      003001 E0               [24] 3497 	movx	a,@dptr
      003002 FC               [12] 3498 	mov	r4,a
                                   3499 ;	genPointerGet
                                   3500 ;	genGenPointerGet
      003003 8D 82            [24] 3501 	mov	dpl,r5
      003005 8E 83            [24] 3502 	mov	dph,r6
      003007 8F F0            [24] 3503 	mov	b,r7
      003009 12 44 D4         [24] 3504 	lcall	__gptrget
      00300C FD               [12] 3505 	mov	r5,a
      00300D A3               [24] 3506 	inc	dptr
      00300E 12 44 D4         [24] 3507 	lcall	__gptrget
      003011 FE               [12] 3508 	mov	r6,a
      003012 A3               [24] 3509 	inc	dptr
      003013 12 44 D4         [24] 3510 	lcall	__gptrget
      003016 FF               [12] 3511 	mov	r7,a
                                   3512 ;	genPointerSet
                                   3513 ;	genGenPointerSet
      003017 8A 82            [24] 3514 	mov	dpl,r2
      003019 8B 83            [24] 3515 	mov	dph,r3
      00301B 8C F0            [24] 3516 	mov	b,r4
      00301D ED               [12] 3517 	mov	a,r5
      00301E 12 37 8F         [24] 3518 	lcall	__gptrput
      003021 A3               [24] 3519 	inc	dptr
      003022 EE               [12] 3520 	mov	a,r6
      003023 12 37 8F         [24] 3521 	lcall	__gptrput
      003026 A3               [24] 3522 	inc	dptr
      003027 EF               [12] 3523 	mov	a,r7
      003028 12 37 8F         [24] 3524 	lcall	__gptrput
      00302B                       3525 00102$:
                                   3526 ;	dhry_1.c:373: Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
                                   3527 ;	genAssign
      00302B 90 80 06         [24] 3528 	mov	dptr,#_Int_Glob
      00302E E0               [24] 3529 	movx	a,@dptr
      00302F FE               [12] 3530 	mov	r6,a
      003030 A3               [24] 3531 	inc	dptr
      003031 E0               [24] 3532 	movx	a,@dptr
      003032 FF               [12] 3533 	mov	r7,a
                                   3534 ;	genAssign
      003033 90 80 00         [24] 3535 	mov	dptr,#_Ptr_Glob
      003036 E0               [24] 3536 	movx	a,@dptr
      003037 FB               [12] 3537 	mov	r3,a
      003038 A3               [24] 3538 	inc	dptr
      003039 E0               [24] 3539 	movx	a,@dptr
      00303A FC               [12] 3540 	mov	r4,a
      00303B A3               [24] 3541 	inc	dptr
      00303C E0               [24] 3542 	movx	a,@dptr
      00303D FD               [12] 3543 	mov	r5,a
                                   3544 ;	genPlus
                                   3545 ;	genPlusIncr
      00303E 74 05            [12] 3546 	mov	a,#0x05
      003040 2B               [12] 3547 	add	a,r3
      003041 FB               [12] 3548 	mov	r3,a
                                   3549 ;	Peephole 181	changed mov to clr
      003042 E4               [12] 3550 	clr	a
      003043 3C               [12] 3551 	addc	a,r4
      003044 FC               [12] 3552 	mov	r4,a
                                   3553 ;	genAssign
      003045 90 94 AB         [24] 3554 	mov	dptr,#_Proc_7_PARM_2
      003048 EE               [12] 3555 	mov	a,r6
      003049 F0               [24] 3556 	movx	@dptr,a
      00304A EF               [12] 3557 	mov	a,r7
      00304B A3               [24] 3558 	inc	dptr
      00304C F0               [24] 3559 	movx	@dptr,a
                                   3560 ;	genAssign
      00304D 90 94 AD         [24] 3561 	mov	dptr,#_Proc_7_PARM_3
      003050 EB               [12] 3562 	mov	a,r3
      003051 F0               [24] 3563 	movx	@dptr,a
      003052 EC               [12] 3564 	mov	a,r4
      003053 A3               [24] 3565 	inc	dptr
      003054 F0               [24] 3566 	movx	@dptr,a
      003055 ED               [12] 3567 	mov	a,r5
      003056 A3               [24] 3568 	inc	dptr
      003057 F0               [24] 3569 	movx	@dptr,a
                                   3570 ;	genCall
                                   3571 ;	Peephole 182.b	used 16 bit load of dptr
      003058 90 00 0A         [24] 3572 	mov	dptr,#0x000a
                                   3573 ;	dhry_1.c:374: } /* Proc_3 */
                                   3574 ;	Peephole 400.b	replaced lcall/ret with ljmp
      00305B 02 31 34         [24] 3575 	ljmp	_Proc_7
                                   3576 ;
                                   3577 ;------------------------------------------------------------
                                   3578 ;Allocation info for local variables in function 'Proc_4'
                                   3579 ;------------------------------------------------------------
                                   3580 ;Bool_Loc                  Allocated with name '_Proc_4_Bool_Loc_65536_75'
                                   3581 ;------------------------------------------------------------
                                   3582 ;	dhry_1.c:377: void Proc_4 (void) /* without parameters */
                                   3583 ;	-----------------------------------------
                                   3584 ;	 function Proc_4
                                   3585 ;	-----------------------------------------
      00305E                       3586 _Proc_4:
                                   3587 ;	dhry_1.c:382: Bool_Loc = Ch_1_Glob == 'A';
                                   3588 ;	genAssign
      00305E 90 80 0A         [24] 3589 	mov	dptr,#_Ch_1_Glob
      003061 E0               [24] 3590 	movx	a,@dptr
      003062 FF               [12] 3591 	mov	r7,a
                                   3592 ;	genCmpEq
                                   3593 ;	gencjne
                                   3594 ;	gencjneshort
                                   3595 ;	Peephole 181	changed mov to clr
                                   3596 ;	Peephole 241.d	optimized compare
      003063 E4               [12] 3597 	clr	a
      003064 BF 41 01         [24] 3598 	cjne	r7,#0x41,00103$
      003067 04               [12] 3599 	inc	a
      003068                       3600 00103$:
                                   3601 ;	Peephole 500	removed redundant label 00104$
      003068 FF               [12] 3602 	mov	r7,a
                                   3603 ;	genCast
      003069 7E 00            [12] 3604 	mov	r6,#0x00
                                   3605 ;	dhry_1.c:383: Bool_Glob = Bool_Loc | Bool_Glob;
                                   3606 ;	genOr
      00306B 90 80 08         [24] 3607 	mov	dptr,#_Bool_Glob
      00306E E0               [24] 3608 	movx	a,@dptr
      00306F 4F               [12] 3609 	orl	a,r7
      003070 F0               [24] 3610 	movx	@dptr,a
      003071 A3               [24] 3611 	inc	dptr
      003072 E0               [24] 3612 	movx	a,@dptr
      003073 4E               [12] 3613 	orl	a,r6
      003074 F0               [24] 3614 	movx	@dptr,a
                                   3615 ;	dhry_1.c:384: Ch_2_Glob = 'B';
                                   3616 ;	genAssign
      003075 90 80 0B         [24] 3617 	mov	dptr,#_Ch_2_Glob
      003078 74 42            [12] 3618 	mov	a,#0x42
      00307A F0               [24] 3619 	movx	@dptr,a
                                   3620 ;	Peephole 500	removed redundant label 00101$
                                   3621 ;	dhry_1.c:385: } /* Proc_4 */
      00307B 22               [24] 3622 	ret
                                   3623 ;------------------------------------------------------------
                                   3624 ;Allocation info for local variables in function 'Proc_5'
                                   3625 ;------------------------------------------------------------
                                   3626 ;	dhry_1.c:388: void Proc_5 (void) /* without parameters */
                                   3627 ;	-----------------------------------------
                                   3628 ;	 function Proc_5
                                   3629 ;	-----------------------------------------
      00307C                       3630 _Proc_5:
                                   3631 ;	dhry_1.c:392: Ch_1_Glob = 'A';
                                   3632 ;	genAssign
      00307C 90 80 0A         [24] 3633 	mov	dptr,#_Ch_1_Glob
      00307F 74 41            [12] 3634 	mov	a,#0x41
      003081 F0               [24] 3635 	movx	@dptr,a
                                   3636 ;	dhry_1.c:393: Bool_Glob = false;
                                   3637 ;	genAssign
      003082 90 80 08         [24] 3638 	mov	dptr,#_Bool_Glob
                                   3639 ;	Peephole 181	changed mov to clr
      003085 E4               [12] 3640 	clr	a
      003086 F0               [24] 3641 	movx	@dptr,a
                                   3642 ;	genFromRTrack acc==0x00
      003087 A3               [24] 3643 	inc	dptr
      003088 F0               [24] 3644 	movx	@dptr,a
                                   3645 ;	Peephole 500	removed redundant label 00101$
                                   3646 ;	dhry_1.c:394: } /* Proc_5 */
      003089 22               [24] 3647 	ret
                                   3648 	.area CSEG    (CODE)
                                   3649 	.area CONST   (CODE)
                                   3650 	.area CONST   (CODE)
      00480C                       3651 ___str_0:
      00480C 44 48 52 59 53 54 4F  3652 	.ascii "DHRYSTONE PROGRAM, SOME STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 53 4F
             4D 45 20 53 54 52 49
             4E 47
      00482A 00                    3653 	.db 0x00
                                   3654 	.area CSEG    (CODE)
                                   3655 	.area CONST   (CODE)
      00482B                       3656 ___str_1:
      00482B 44 48 52 59 53 54 4F  3657 	.ascii "DHRYSTONE PROGRAM, 1'ST STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 31 27
             53 54 20 53 54 52 49
             4E 47
      004849 00                    3658 	.db 0x00
                                   3659 	.area CSEG    (CODE)
                                   3660 	.area CONST   (CODE)
      00484A                       3661 ___str_2:
      00484A 0D                    3662 	.db 0x0d
      00484B 0A                    3663 	.db 0x0a
      00484C 00                    3664 	.db 0x00
                                   3665 	.area CSEG    (CODE)
                                   3666 	.area CONST   (CODE)
      00484D                       3667 ___str_3:
      00484D 44 68 72 79 73 74 6F  3668 	.ascii "Dhrystone Benchmark, Version 2.1 (Language: C)"
             6E 65 20 42 65 6E 63
             68 6D 61 72 6B 2C 20
             56 65 72 73 69 6F 6E
             20 32 2E 31 20 28 4C
             61 6E 67 75 61 67 65
             3A 20 43 29
      00487B 0D                    3669 	.db 0x0d
      00487C 0A                    3670 	.db 0x0a
      00487D 00                    3671 	.db 0x00
                                   3672 	.area CSEG    (CODE)
                                   3673 	.area CONST   (CODE)
      00487E                       3674 ___str_4:
      00487E 50 72 6F 67 72 61 6D  3675 	.ascii "Program compiled with 'register' attribute"
             20 63 6F 6D 70 69 6C
             65 64 20 77 69 74 68
             20 27 72 65 67 69 73
             74 65 72 27 20 61 74
             74 72 69 62 75 74 65
      0048A8 0D                    3676 	.db 0x0d
      0048A9 0A                    3677 	.db 0x0a
      0048AA 00                    3678 	.db 0x00
                                   3679 	.area CSEG    (CODE)
                                   3680 	.area CONST   (CODE)
      0048AB                       3681 ___str_5:
      0048AB 50 72 6F 67 72 61 6D  3682 	.ascii "Program compiled without 'register' attribute"
             20 63 6F 6D 70 69 6C
             65 64 20 77 69 74 68
             6F 75 74 20 27 72 65
             67 69 73 74 65 72 27
             20 61 74 74 72 69 62
             75 74 65
      0048D8 0D                    3683 	.db 0x0d
      0048D9 0A                    3684 	.db 0x0a
      0048DA 00                    3685 	.db 0x00
                                   3686 	.area CSEG    (CODE)
                                   3687 	.area CONST   (CODE)
      0048DB                       3688 ___str_6:
      0048DB 50 6C 65 61 73 65 20  3689 	.ascii "Please give the number of runs through the benchmark: "
             67 69 76 65 20 74 68
             65 20 6E 75 6D 62 65
             72 20 6F 66 20 72 75
             6E 73 20 74 68 72 6F
             75 67 68 20 74 68 65
             20 62 65 6E 63 68 6D
             61 72 6B 3A 20
      004911 00                    3690 	.db 0x00
                                   3691 	.area CSEG    (CODE)
                                   3692 	.area CONST   (CODE)
      004912                       3693 ___str_7:
      004912 45 78 65 63 75 74 69  3694 	.ascii "Execution starts, %d runs through Dhrystone"
             6F 6E 20 73 74 61 72
             74 73 2C 20 25 64 20
             72 75 6E 73 20 74 68
             72 6F 75 67 68 20 44
             68 72 79 73 74 6F 6E
             65
      00493D 0D                    3695 	.db 0x0d
      00493E 0A                    3696 	.db 0x0a
      00493F 00                    3697 	.db 0x00
                                   3698 	.area CSEG    (CODE)
                                   3699 	.area CONST   (CODE)
      004940                       3700 ___str_8:
      004940 44 48 52 59 53 54 4F  3701 	.ascii "DHRYSTONE PROGRAM, 2'ND STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 32 27
             4E 44 20 53 54 52 49
             4E 47
      00495E 00                    3702 	.db 0x00
                                   3703 	.area CSEG    (CODE)
                                   3704 	.area CONST   (CODE)
      00495F                       3705 ___str_9:
      00495F 44 48 52 59 53 54 4F  3706 	.ascii "DHRYSTONE PROGRAM, 3'RD STRING"
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 33 27
             52 44 20 53 54 52 49
             4E 47
      00497D 00                    3707 	.db 0x00
                                   3708 	.area CSEG    (CODE)
                                   3709 	.area CONST   (CODE)
      00497E                       3710 ___str_10:
      00497E 45 78 65 63 75 74 69  3711 	.ascii "Execution ends"
             6F 6E 20 65 6E 64 73
      00498C 0D                    3712 	.db 0x0d
      00498D 0A                    3713 	.db 0x0a
      00498E 00                    3714 	.db 0x00
                                   3715 	.area CSEG    (CODE)
                                   3716 	.area CONST   (CODE)
      00498F                       3717 ___str_11:
      00498F 46 69 6E 61 6C 20 76  3718 	.ascii "Final values of the variables used in the benchmark:"
             61 6C 75 65 73 20 6F
             66 20 74 68 65 20 76
             61 72 69 61 62 6C 65
             73 20 75 73 65 64 20
             69 6E 20 74 68 65 20
             62 65 6E 63 68 6D 61
             72 6B 3A
      0049C3 0D                    3719 	.db 0x0d
      0049C4 0A                    3720 	.db 0x0a
      0049C5 00                    3721 	.db 0x00
                                   3722 	.area CSEG    (CODE)
                                   3723 	.area CONST   (CODE)
      0049C6                       3724 ___str_12:
      0049C6 49 6E 74 5F 47 6C 6F  3725 	.ascii "Int_Glob:            %d"
             62 3A 20 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      0049DD 0D                    3726 	.db 0x0d
      0049DE 0A                    3727 	.db 0x0a
      0049DF 00                    3728 	.db 0x00
                                   3729 	.area CSEG    (CODE)
                                   3730 	.area CONST   (CODE)
      0049E0                       3731 ___str_13:
      0049E0 20 20 20 20 20 20 20  3732 	.ascii "        should be:   %d"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             25 64
      0049F7 0D                    3733 	.db 0x0d
      0049F8 0A                    3734 	.db 0x0a
      0049F9 00                    3735 	.db 0x00
                                   3736 	.area CSEG    (CODE)
                                   3737 	.area CONST   (CODE)
      0049FA                       3738 ___str_14:
      0049FA 42 6F 6F 6C 5F 47 6C  3739 	.ascii "Bool_Glob:           %d"
             6F 62 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004A11 0D                    3740 	.db 0x0d
      004A12 0A                    3741 	.db 0x0a
      004A13 00                    3742 	.db 0x00
                                   3743 	.area CSEG    (CODE)
                                   3744 	.area CONST   (CODE)
      004A14                       3745 ___str_15:
      004A14 43 68 5F 31 5F 47 6C  3746 	.ascii "Ch_1_Glob:           %c"
             6F 62 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 63
      004A2B 0D                    3747 	.db 0x0d
      004A2C 0A                    3748 	.db 0x0a
      004A2D 00                    3749 	.db 0x00
                                   3750 	.area CSEG    (CODE)
                                   3751 	.area CONST   (CODE)
      004A2E                       3752 ___str_16:
      004A2E 20 20 20 20 20 20 20  3753 	.ascii "        should be:   %c"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             25 63
      004A45 0D                    3754 	.db 0x0d
      004A46 0A                    3755 	.db 0x0a
      004A47 00                    3756 	.db 0x00
                                   3757 	.area CSEG    (CODE)
                                   3758 	.area CONST   (CODE)
      004A48                       3759 ___str_17:
      004A48 43 68 5F 32 5F 47 6C  3760 	.ascii "Ch_2_Glob:           %c"
             6F 62 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 63
      004A5F 0D                    3761 	.db 0x0d
      004A60 0A                    3762 	.db 0x0a
      004A61 00                    3763 	.db 0x00
                                   3764 	.area CSEG    (CODE)
                                   3765 	.area CONST   (CODE)
      004A62                       3766 ___str_18:
      004A62 41 72 72 5F 31 5F 47  3767 	.ascii "Arr_1_Glob[8]:       %d"
             6C 6F 62 5B 38 5D 3A
             20 20 20 20 20 20 20
             25 64
      004A79 0D                    3768 	.db 0x0d
      004A7A 0A                    3769 	.db 0x0a
      004A7B 00                    3770 	.db 0x00
                                   3771 	.area CSEG    (CODE)
                                   3772 	.area CONST   (CODE)
      004A7C                       3773 ___str_19:
      004A7C 41 72 72 5F 32 5F 47  3774 	.ascii "Arr_2_Glob[8][7]:    %d"
             6C 6F 62 5B 38 5D 5B
             37 5D 3A 20 20 20 20
             25 64
      004A93 0D                    3775 	.db 0x0d
      004A94 0A                    3776 	.db 0x0a
      004A95 00                    3777 	.db 0x00
                                   3778 	.area CSEG    (CODE)
                                   3779 	.area CONST   (CODE)
      004A96                       3780 ___str_20:
      004A96 20 20 20 20 20 20 20  3781 	.ascii "        should be:   Number_Of_Runs + 10"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             4E 75 6D 62 65 72 5F
             4F 66 5F 52 75 6E 73
             20 2B 20 31 30
      004ABE 0D                    3782 	.db 0x0d
      004ABF 0A                    3783 	.db 0x0a
      004AC0 00                    3784 	.db 0x00
                                   3785 	.area CSEG    (CODE)
                                   3786 	.area CONST   (CODE)
      004AC1                       3787 ___str_21:
      004AC1 50 74 72 5F 47 6C 6F  3788 	.ascii "Ptr_Glob->"
             62 2D 3E
      004ACB 0D                    3789 	.db 0x0d
      004ACC 0A                    3790 	.db 0x0a
      004ACD 00                    3791 	.db 0x00
                                   3792 	.area CSEG    (CODE)
                                   3793 	.area CONST   (CODE)
      004ACE                       3794 ___str_22:
      004ACE 20 20 50 74 72 5F 43  3795 	.ascii "  Ptr_Comp:          %d"
             6F 6D 70 3A 20 20 20
             20 20 20 20 20 20 20
             25 64
      004AE5 0D                    3796 	.db 0x0d
      004AE6 0A                    3797 	.db 0x0a
      004AE7 00                    3798 	.db 0x00
                                   3799 	.area CSEG    (CODE)
                                   3800 	.area CONST   (CODE)
      004AE8                       3801 ___str_23:
      004AE8 20 20 20 20 20 20 20  3802 	.ascii "        should be:   (implementation-dependent)"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             28 69 6D 70 6C 65 6D
             65 6E 74 61 74 69 6F
             6E 2D 64 65 70 65 6E
             64 65 6E 74 29
      004B17 0D                    3803 	.db 0x0d
      004B18 0A                    3804 	.db 0x0a
      004B19 00                    3805 	.db 0x00
                                   3806 	.area CSEG    (CODE)
                                   3807 	.area CONST   (CODE)
      004B1A                       3808 ___str_24:
      004B1A 20 20 44 69 73 63 72  3809 	.ascii "  Discr:             %d"
             3A 20 20 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004B31 0D                    3810 	.db 0x0d
      004B32 0A                    3811 	.db 0x0a
      004B33 00                    3812 	.db 0x00
                                   3813 	.area CSEG    (CODE)
                                   3814 	.area CONST   (CODE)
      004B34                       3815 ___str_25:
      004B34 20 20 45 6E 75 6D 5F  3816 	.ascii "  Enum_Comp:         %d"
             43 6F 6D 70 3A 20 20
             20 20 20 20 20 20 20
             25 64
      004B4B 0D                    3817 	.db 0x0d
      004B4C 0A                    3818 	.db 0x0a
      004B4D 00                    3819 	.db 0x00
                                   3820 	.area CSEG    (CODE)
                                   3821 	.area CONST   (CODE)
      004B4E                       3822 ___str_26:
      004B4E 20 20 49 6E 74 5F 43  3823 	.ascii "  Int_Comp:          %d"
             6F 6D 70 3A 20 20 20
             20 20 20 20 20 20 20
             25 64
      004B65 0D                    3824 	.db 0x0d
      004B66 0A                    3825 	.db 0x0a
      004B67 00                    3826 	.db 0x00
                                   3827 	.area CSEG    (CODE)
                                   3828 	.area CONST   (CODE)
      004B68                       3829 ___str_27:
      004B68 20 20 53 74 72 5F 43  3830 	.ascii "  Str_Comp:          %s"
             6F 6D 70 3A 20 20 20
             20 20 20 20 20 20 20
             25 73
      004B7F 0D                    3831 	.db 0x0d
      004B80 0A                    3832 	.db 0x0a
      004B81 00                    3833 	.db 0x00
                                   3834 	.area CSEG    (CODE)
                                   3835 	.area CONST   (CODE)
      004B82                       3836 ___str_28:
      004B82 20 20 20 20 20 20 20  3837 	.ascii "        should be:   DHRYSTONE PROGRAM, SOME STRING"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             44 48 52 59 53 54 4F
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 53 4F
             4D 45 20 53 54 52 49
             4E 47
      004BB5 0D                    3838 	.db 0x0d
      004BB6 0A                    3839 	.db 0x0a
      004BB7 00                    3840 	.db 0x00
                                   3841 	.area CSEG    (CODE)
                                   3842 	.area CONST   (CODE)
      004BB8                       3843 ___str_29:
      004BB8 4E 65 78 74 5F 50 74  3844 	.ascii "Next_Ptr_Glob->"
             72 5F 47 6C 6F 62 2D
             3E
      004BC7 0D                    3845 	.db 0x0d
      004BC8 0A                    3846 	.db 0x0a
      004BC9 00                    3847 	.db 0x00
                                   3848 	.area CSEG    (CODE)
                                   3849 	.area CONST   (CODE)
      004BCA                       3850 ___str_30:
      004BCA 20 20 20 20 20 20 20  3851 	.ascii "        should be:   (implementation-dependent), same as abo"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             28 69 6D 70 6C 65 6D
             65 6E 74 61 74 69 6F
             6E 2D 64 65 70 65 6E
             64 65 6E 74 29 2C 20
             73 61 6D 65 20 61 73
             20 61 62 6F
      004C06 76 65                 3852 	.ascii "ve"
      004C08 0D                    3853 	.db 0x0d
      004C09 0A                    3854 	.db 0x0a
      004C0A 00                    3855 	.db 0x00
                                   3856 	.area CSEG    (CODE)
                                   3857 	.area CONST   (CODE)
      004C0B                       3858 ___str_31:
      004C0B 49 6E 74 5F 31 5F 4C  3859 	.ascii "Int_1_Loc:           %d"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004C22 0D                    3860 	.db 0x0d
      004C23 0A                    3861 	.db 0x0a
      004C24 00                    3862 	.db 0x00
                                   3863 	.area CSEG    (CODE)
                                   3864 	.area CONST   (CODE)
      004C25                       3865 ___str_32:
      004C25 49 6E 74 5F 32 5F 4C  3866 	.ascii "Int_2_Loc:           %d"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004C3C 0D                    3867 	.db 0x0d
      004C3D 0A                    3868 	.db 0x0a
      004C3E 00                    3869 	.db 0x00
                                   3870 	.area CSEG    (CODE)
                                   3871 	.area CONST   (CODE)
      004C3F                       3872 ___str_33:
      004C3F 49 6E 74 5F 33 5F 4C  3873 	.ascii "Int_3_Loc:           %d"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004C56 0D                    3874 	.db 0x0d
      004C57 0A                    3875 	.db 0x0a
      004C58 00                    3876 	.db 0x00
                                   3877 	.area CSEG    (CODE)
                                   3878 	.area CONST   (CODE)
      004C59                       3879 ___str_34:
      004C59 45 6E 75 6D 5F 4C 6F  3880 	.ascii "Enum_Loc:            %d"
             63 3A 20 20 20 20 20
             20 20 20 20 20 20 20
             25 64
      004C70 0D                    3881 	.db 0x0d
      004C71 0A                    3882 	.db 0x0a
      004C72 00                    3883 	.db 0x00
                                   3884 	.area CSEG    (CODE)
                                   3885 	.area CONST   (CODE)
      004C73                       3886 ___str_35:
      004C73 53 74 72 5F 31 5F 4C  3887 	.ascii "Str_1_Loc:           %s"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 73
      004C8A 0D                    3888 	.db 0x0d
      004C8B 0A                    3889 	.db 0x0a
      004C8C 00                    3890 	.db 0x00
                                   3891 	.area CSEG    (CODE)
                                   3892 	.area CONST   (CODE)
      004C8D                       3893 ___str_36:
      004C8D 20 20 20 20 20 20 20  3894 	.ascii "        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             44 48 52 59 53 54 4F
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 31 27
             53 54 20 53 54 52 49
             4E 47
      004CC0 0D                    3895 	.db 0x0d
      004CC1 0A                    3896 	.db 0x0a
      004CC2 00                    3897 	.db 0x00
                                   3898 	.area CSEG    (CODE)
                                   3899 	.area CONST   (CODE)
      004CC3                       3900 ___str_37:
      004CC3 53 74 72 5F 32 5F 4C  3901 	.ascii "Str_2_Loc:           %s"
             6F 63 3A 20 20 20 20
             20 20 20 20 20 20 20
             25 73
      004CDA 0D                    3902 	.db 0x0d
      004CDB 0A                    3903 	.db 0x0a
      004CDC 00                    3904 	.db 0x00
                                   3905 	.area CSEG    (CODE)
                                   3906 	.area CONST   (CODE)
      004CDD                       3907 ___str_38:
      004CDD 20 20 20 20 20 20 20  3908 	.ascii "        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
             20 73 68 6F 75 6C 64
             20 62 65 3A 20 20 20
             44 48 52 59 53 54 4F
             4E 45 20 50 52 4F 47
             52 41 4D 2C 20 32 27
             4E 44 20 53 54 52 49
             4E 47
      004D10 0D                    3909 	.db 0x0d
      004D11 0A                    3910 	.db 0x0a
      004D12 00                    3911 	.db 0x00
                                   3912 	.area CSEG    (CODE)
                                   3913 	.area CONST   (CODE)
      004D13                       3914 ___str_39:
      004D13 4D 65 61 73 75 72 65  3915 	.ascii "Measured time too small to obtain meaningful results"
             64 20 74 69 6D 65 20
             74 6F 6F 20 73 6D 61
             6C 6C 20 74 6F 20 6F
             62 74 61 69 6E 20 6D
             65 61 6E 69 6E 67 66
             75 6C 20 72 65 73 75
             6C 74 73
      004D47 0D                    3916 	.db 0x0d
      004D48 0A                    3917 	.db 0x0a
      004D49 00                    3918 	.db 0x00
                                   3919 	.area CSEG    (CODE)
                                   3920 	.area CONST   (CODE)
      004D4A                       3921 ___str_40:
      004D4A 50 6C 65 61 73 65 20  3922 	.ascii "Please increase number of runs"
             69 6E 63 72 65 61 73
             65 20 6E 75 6D 62 65
             72 20 6F 66 20 72 75
             6E 73
      004D68 0D                    3923 	.db 0x0d
      004D69 0A                    3924 	.db 0x0a
      004D6A 00                    3925 	.db 0x00
                                   3926 	.area CSEG    (CODE)
                                   3927 	.area CONST   (CODE)
      004D6B                       3928 ___str_41:
      004D6B 4D 69 63 72 6F 73 65  3929 	.ascii "Microseconds for one run through Dhrystone: "
             63 6F 6E 64 73 20 66
             6F 72 20 6F 6E 65 20
             72 75 6E 20 74 68 72
             6F 75 67 68 20 44 68
             72 79 73 74 6F 6E 65
             3A 20
      004D97 00                    3930 	.db 0x00
                                   3931 	.area CSEG    (CODE)
                                   3932 	.area CONST   (CODE)
      004D98                       3933 ___str_42:
      004D98 25 6C 64 20           3934 	.ascii "%ld "
      004D9C 0D                    3935 	.db 0x0d
      004D9D 0A                    3936 	.db 0x0a
      004D9E 00                    3937 	.db 0x00
                                   3938 	.area CSEG    (CODE)
                                   3939 	.area CONST   (CODE)
      004D9F                       3940 ___str_43:
      004D9F 44 68 72 79 73 74 6F  3941 	.ascii "Dhrystones per Second:                      "
             6E 65 73 20 70 65 72
             20 53 65 63 6F 6E 64
             3A 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DCB 00                    3942 	.db 0x00
                                   3943 	.area CSEG    (CODE)
                                   3944 	.area XINIT   (CODE)
      004DD7                       3945 __xinit__Reg:
      004DD7 01 00                 3946 	.byte #0x01, #0x00	;  1
                                   3947 	.area CABS    (ABS,CODE)
