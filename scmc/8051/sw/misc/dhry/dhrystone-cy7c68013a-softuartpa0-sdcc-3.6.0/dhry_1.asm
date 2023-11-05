;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module dhry_1
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _init
	.globl _clock
	.globl _Func_2
	.globl _Func_1
	.globl _Proc_8
	.globl _Proc_7
	.globl _Proc_6
	.globl ___memcpy
	.globl _strcpy
	.globl _printf
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Reg
	.globl _malloc_2
	.globl _malloc_1
	.globl _Dhrystones_Per_Second
	.globl _Microseconds
	.globl _User_Time
	.globl _End_Time
	.globl _Begin_Time
	.globl _Arr_2_Glob
	.globl _Arr_1_Glob
	.globl _Ch_2_Glob
	.globl _Ch_1_Glob
	.globl _Bool_Glob
	.globl _Int_Glob
	.globl _Next_Ptr_Glob
	.globl _Ptr_Glob
	.globl _Proc_1
	.globl _Proc_2
	.globl _Proc_3
	.globl _Proc_4
	.globl _Proc_5
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_Proc_1_sloc0_1_0:
	.ds 3
_Proc_1_sloc1_1_0:
	.ds 3
_Proc_1_sloc2_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_Ptr_Glob::
	.ds 3
_Next_Ptr_Glob::
	.ds 3
_Int_Glob::
	.ds 2
_Bool_Glob::
	.ds 2
_Ch_1_Glob::
	.ds 1
_Ch_2_Glob::
	.ds 1
_Arr_1_Glob::
	.ds 100
_Arr_2_Glob::
	.ds 5000
_Begin_Time::
	.ds 4
_End_Time::
	.ds 4
_User_Time::
	.ds 4
_Microseconds::
	.ds 4
_Dhrystones_Per_Second::
	.ds 4
_malloc_1::
	.ds 38
_malloc_2::
	.ds 38
_main_Int_1_Loc_65536_54:
	.ds 2
_main_Int_2_Loc_65536_54:
	.ds 2
_main_Int_3_Loc_65536_54:
	.ds 2
_main_Enum_Loc_65536_54:
	.ds 1
_main_Str_1_Loc_65536_54:
	.ds 31
_main_Str_2_Loc_65536_54:
	.ds 31
_Proc_1_Ptr_Val_Par_65536_66:
	.ds 3
_Proc_2_Int_Par_Ref_65536_69:
	.ds 3
_Proc_2_Enum_Loc_65536_70:
	.ds 1
_Proc_3_Ptr_Ref_Par_65536_72:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_Reg::
	.ds 2
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_clockinc
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;Int_1_Loc                 Allocated with name '_main_Int_1_Loc_65536_54'
;Int_2_Loc                 Allocated with name '_main_Int_2_Loc_65536_54'
;Int_3_Loc                 Allocated with name '_main_Int_3_Loc_65536_54'
;Ch_Index                  Allocated with name '_main_Ch_Index_65536_54'
;Enum_Loc                  Allocated with name '_main_Enum_Loc_65536_54'
;Str_1_Loc                 Allocated with name '_main_Str_1_Loc_65536_54'
;Str_2_Loc                 Allocated with name '_main_Str_2_Loc_65536_54'
;Run_Index                 Allocated with name '_main_Run_Index_65536_54'
;Number_Of_Runs            Allocated with name '_main_Number_Of_Runs_65536_54'
;n                         Allocated with name '_main_n_131072_57'
;------------------------------------------------------------
;	dhry_1.c:84: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	dhry_1.c:102: init();
;	genCall
	lcall	_init
;	dhry_1.c:104: Next_Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_1;
;	genAssign
	mov	dptr,#_Next_Ptr_Glob
	mov	a,#_malloc_1
	movx	@dptr,a
	mov	a,#(_malloc_1 >> 8)
	inc	dptr
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:105: Ptr_Glob = /*(Rec_Pointer) malloc (sizeof (Rec_Type))*/ &malloc_2;
;	genAssign
	mov	dptr,#_Ptr_Glob
	mov	a,#_malloc_2
	movx	@dptr,a
	mov	a,#(_malloc_2 >> 8)
	inc	dptr
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:107: Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#_malloc_2
	mov	a,#_malloc_1
	movx	@dptr,a
	mov	a,#(_malloc_1 >> 8)
	inc	dptr
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:108: Ptr_Glob->Discr                       = Ident_1;
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	dhry_1.c:109: Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
;	dhry_1.c:110: Ptr_Glob->variant.var_1.Int_Comp      = 40;
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x05
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x28
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	dhry_1.c:111: strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x07
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	dhry_1.c:112: "DHRYSTONE PROGRAM, SOME STRING");
;	genCast
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcpy
;	dhry_1.c:113: strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
;	genCast
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_main_Str_1_Loc_65536_54
	mov	b,#0x00
	lcall	_strcpy
;	dhry_1.c:115: Arr_2_Glob [8][7] = 10;
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_Arr_2_Glob + 0x032e)
	mov	a,#0x0a
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:121: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:122: printf ("Dhrystone Benchmark, Version 2.1 (Language: C)\r\n");
;	genIpush
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:123: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:124: if (Reg)
;	genIfx
	mov	dptr,#_Reg
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00102$
;	Peephole 500	removed redundant label 00161$
;	dhry_1.c:126: printf ("Program compiled with 'register' attribute\r\n");
;	genIpush
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:127: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00102$:
;	dhry_1.c:131: printf ("Program compiled without 'register' attribute\r\n");
;	genIpush
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:132: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00103$:
;	dhry_1.c:134: printf ("Please give the number of runs through the benchmark: ");
;	genIpush
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:140: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:142: printf ("Execution starts, %d runs through Dhrystone\r\n", Number_Of_Runs);
;	genIpush
	mov	a,#0x20
	push	acc
	mov	a,#0x4e
	push	acc
;	genIpush
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:156: Begin_Time = clock();
;	genCall
	lcall	_clock
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	genAssign
	mov	dptr,#_Begin_Time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:159: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
;	genAssign
	mov	r6,#0x01
	mov	r7,#0x00
00118$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x20
	subb	a,r6
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x4e ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jnc	00162$
	ljmp	00110$
00162$:
;	dhry_1.c:162: Proc_5();
;	genCall
	push	ar7
	push	ar6
	lcall	_Proc_5
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	dhry_1.c:163: Proc_4();
;	genCall
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	lcall	_Proc_4
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	dhry_1.c:165: Int_1_Loc = 2;
;	genAssign
	mov	dptr,#_main_Int_1_Loc_65536_54
	mov	a,#0x02
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:166: Int_2_Loc = 3;
;	genAssign
	mov	dptr,#_main_Int_2_Loc_65536_54
	mov	a,#0x03
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:167: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
;	genCast
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_8
	movx	@dptr,a
	mov	a,#(___str_8 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_main_Str_2_Loc_65536_54
	mov	b,#0x00
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	lcall	_strcpy
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	dhry_1.c:168: Enum_Loc = Ident_2;
;	genAssign
	mov	dptr,#_main_Enum_Loc_65536_54
	mov	a,#0x01
	movx	@dptr,a
;	dhry_1.c:169: Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
;	genCast
	mov	dptr,#_Func_2_PARM_2
	mov	a,#_main_Str_2_Loc_65536_54
	movx	@dptr,a
	mov	a,#(_main_Str_2_Loc_65536_54 >> 8)
	inc	dptr
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_main_Str_1_Loc_65536_54
;	genFromRTrack replaced	mov	b,#0x00
	mov	b,a
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	lcall	_Func_2
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
;	genNot
	mov	a,r4
	orl	a,r5
	cjne	a,#0x01,00163$
00163$:
	clr	a
	rlc	a
;	genCast
	mov	r5,a
	mov	dptr,#_Bool_Glob
;	Peephole 100	removed redundant mov
	movx	@dptr,a
	mov	a,r5
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:171: while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
;	genAssign
	mov	dptr,#_main_Int_1_Loc_65536_54
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00104$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,#0x03
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00131$
;	Peephole 500	removed redundant label 00164$
;	dhry_1.c:173: Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
;	genAssign
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	genMinus
;	genMinusDec
	add	a,#0xfd
	mov	r2,a
	mov	a,b
	addc	a,#0xff
	mov	r3,a
;	genAssign
	mov	dptr,#_main_Int_3_Loc_65536_54
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:175: Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
;	genAssign
	mov	dptr,#_Proc_7_PARM_2
	mov	a,#0x03
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_Proc_7_PARM_3
	mov	a,#_main_Int_3_Loc_65536_54
	movx	@dptr,a
	mov	a,#(_main_Int_3_Loc_65536_54 >> 8)
	inc	dptr
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	push	ar5
	push	ar4
	lcall	_Proc_7
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dhry_1.c:177: Int_1_Loc += 1;
;	genPlus
;	genPlusIncr
	inc	r4
	cjne	r4,#0x00,00165$
	inc	r5
00165$:
;	genAssign
	mov	dptr,#_main_Int_1_Loc_65536_54
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00131$:
;	genAssign
	mov	dptr,#_main_Int_1_Loc_65536_54
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:180: Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
;	genAssign
	mov	dptr,#_main_Int_3_Loc_65536_54
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_Proc_8_PARM_2
	mov	a,#_Arr_2_Glob
	movx	@dptr,a
	mov	a,#(_Arr_2_Glob >> 8)
	inc	dptr
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_Proc_8_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_Proc_8_PARM_4
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_Arr_1_Glob
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_Proc_8
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	dhry_1.c:182: Proc_1 (Ptr_Glob);
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	lcall	_Proc_1
	pop	ar6
	pop	ar7
;	dhry_1.c:183: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
;	genAssign
	mov	ar4,r6
	mov	ar5,r7
;	genAssign
	mov	r3,#0x41
00115$:
;	genAssign
	mov	dptr,#_Ch_2_Glob
	movx	a,@dptr
;	genCmpGt
;	genCmp
;	Peephole 301	mov r2,a removed
	clr	c
;	Peephole 106	removed redundant mov
	subb	a,r3
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00109$
;	Peephole 500	removed redundant label 00166$
;	dhry_1.c:186: if (Enum_Loc == Func_1 (Ch_Index, 'C'))
;	genAssign
	mov	dptr,#_Func_1_PARM_2
	mov	a,#0x43
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Func_1
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	genAssign
	mov	dptr,#_main_Enum_Loc_65536_54
	movx	a,@dptr
;	genCmpEq
;	gencjneshort
	mov	r1,a
;	Peephole 105.a	removed redundant mov
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	a,ar2,00116$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 500	removed redundant label 00167$
;	Peephole 500	removed redundant label 00168$
;	dhry_1.c:189: Proc_6 (Ident_1, &Enum_Loc);
;	genCast
	mov	dptr,#_Proc_6_PARM_2
	mov	a,#_main_Enum_Loc_65536_54
	movx	@dptr,a
	mov	a,#(_main_Enum_Loc_65536_54 >> 8)
	inc	dptr
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Proc_6
;	Peephole 300	pop ar3 removed
;	Peephole 300	pop ar4 removed
;	Peephole 300	pop ar5 removed
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	dhry_1.c:190: strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
;	genCast
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_9
	movx	@dptr,a
	mov	a,#(___str_9 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_main_Str_2_Loc_65536_54
	mov	b,#0x00
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
;	Peephole	push ar5 removed
;	Peephole	push ar4 removed
;	Peephole	push ar3 removed
	lcall	_strcpy
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	dhry_1.c:191: Int_2_Loc = Run_Index;
;	genAssign
	mov	dptr,#_main_Int_2_Loc_65536_54
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:192: Int_Glob = Run_Index;
;	genAssign
	mov	dptr,#_Int_Glob
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00116$:
;	dhry_1.c:183: for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
;	genPlus
;	genPlusIncr
	inc	r3
	ljmp	00115$
00109$:
;	dhry_1.c:196: Int_2_Loc = Int_2_Loc * Int_1_Loc;
;	genAssign
	mov	dptr,#_main_Int_1_Loc_65536_54
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_main_Int_2_Loc_65536_54
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar6
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	genAssign
	mov	dptr,#_main_Int_2_Loc_65536_54
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:197: Int_1_Loc = Int_2_Loc / Int_3_Loc;
;	genAssign
	mov	dptr,#_main_Int_3_Loc_65536_54
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_main_Int_2_Loc_65536_54
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#__divsint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	genAssign
	mov	dptr,#_main_Int_1_Loc_65536_54
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:198: Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
;	genMinus
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	clr	c
	subb	a,r4
	movx	@dptr,a
	mov	a,r3
	subb	a,r5
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0007
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	push	ar1
	push	ar0
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	genMinus
	mov	dptr,#_main_Int_2_Loc_65536_54
	clr	c
	subb	a,r0
	movx	@dptr,a
	mov	a,b
	subb	a,r1
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:200: Proc_2 (&Int_1_Loc);
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_main_Int_1_Loc_65536_54
	mov	b,#0x00
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
	lcall	_Proc_2
	pop	ar6
	pop	ar7
;	dhry_1.c:159: for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
;	genPlus
;	genPlusIncr
	inc	r6
	cjne	r6,#0x00,00169$
	inc	r7
00169$:
	ljmp	00118$
00110$:
;	dhry_1.c:217: End_Time = clock();
;	genCall
	lcall	_clock
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	genAssign
	mov	dptr,#_End_Time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:220: printf ("Execution ends\r\n");
;	genIpush
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:221: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:222: printf ("Final values of the variables used in the benchmark:\r\n");
;	genIpush
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:223: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:224: printf ("Int_Glob:            %d\r\n", Int_Glob);
;	genIpush
	mov	dptr,#_Int_Glob
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
;	genIpush
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:225: printf ("        should be:   %d\r\n", 5);
;	genIpush
	mov	a,#0x05
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:226: printf ("Bool_Glob:           %d\r\n", Bool_Glob);
;	genIpush
	mov	dptr,#_Bool_Glob
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
;	genIpush
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:227: printf ("        should be:   %d\r\n", 1);
;	genIpush
	mov	a,#0x01
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:228: printf ("Ch_1_Glob:           %c\r\n", Ch_1_Glob);
;	genAssign
	mov	dptr,#_Ch_1_Glob
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	r6,#0x00
;	genIpush
	push	ar7
	push	ar6
;	genIpush
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:229: printf ("        should be:   %c\r\n", 'A');
;	genIpush
	mov	a,#0x41
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:230: printf ("Ch_2_Glob:           %c\r\n", Ch_2_Glob);
;	genAssign
	mov	dptr,#_Ch_2_Glob
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	r6,#0x00
;	genIpush
	push	ar7
	push	ar6
;	genIpush
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:231: printf ("        should be:   %c\r\n", 'B');
;	genIpush
	mov	a,#0x42
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:232: printf ("Arr_1_Glob[8]:       %d\r\n", Arr_1_Glob[8]);
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_Arr_1_Glob + 0x0010)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genIpush
	push	ar6
	push	ar7
;	genIpush
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:233: printf ("        should be:   %d\r\n", 7);
;	genIpush
	mov	a,#0x07
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:234: printf ("Arr_2_Glob[8][7]:    %d\r\n", Arr_2_Glob[8][7]);
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_Arr_2_Glob + 0x032e)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genIpush
	push	ar6
	push	ar7
;	genIpush
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:235: printf ("        should be:   Number_Of_Runs + 10\r\n");
;	genIpush
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:236: printf ("Ptr_Glob->\r\n");
;	genIpush
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:237: printf ("  Ptr_Comp:          %d\r\n", (int) Ptr_Glob->Ptr_Comp);
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genIpush
	push	ar5
	push	ar6
;	genIpush
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:238: printf ("        should be:   (implementation-dependent)\r\n");
;	genIpush
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:239: printf ("  Discr:             %d\r\n", Ptr_Glob->Discr);
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCast
	mov	r7,#0x00
;	genIpush
	push	ar5
	push	ar7
;	genIpush
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:240: printf ("        should be:   %d\r\n", 0);
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:241: printf ("  Enum_Comp:         %d\r\n", Ptr_Glob->variant.var_1.Enum_Comp);
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCast
	mov	r7,#0x00
;	genIpush
	push	ar5
	push	ar7
;	genIpush
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:242: printf ("        should be:   %d\r\n", 2);
;	genIpush
	mov	a,#0x02
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:243: printf ("  Int_Comp:          %d\r\n", Ptr_Glob->variant.var_1.Int_Comp);
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x05
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genIpush
	push	ar5
	push	ar6
;	genIpush
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:244: printf ("        should be:   %d\r\n", 17);
;	genIpush
	mov	a,#0x11
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:245: printf ("  Str_Comp:          %s\r\n", Ptr_Glob->variant.var_1.Str_Comp);
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x07
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genIpush
	push	ar5
	push	ar6
	push	ar7
;	genIpush
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	dhry_1.c:246: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
;	genIpush
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:247: printf ("Next_Ptr_Glob->\r\n");
;	genIpush
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:248: printf ("  Ptr_Comp:          %d\r\n", (int) Next_Ptr_Glob->Ptr_Comp);
;	genAssign
	mov	dptr,#_Next_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genIpush
	push	ar5
	push	ar6
;	genIpush
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:249: printf ("        should be:   (implementation-dependent), same as above\r\n");
;	genIpush
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:250: printf ("  Discr:             %d\r\n", Next_Ptr_Glob->Discr);
;	genAssign
	mov	dptr,#_Next_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCast
	mov	r7,#0x00
;	genIpush
	push	ar5
	push	ar7
;	genIpush
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:251: printf ("        should be:   %d\r\n", 0);
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:252: printf ("  Enum_Comp:         %d\r\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
;	genAssign
	mov	dptr,#_Next_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCast
	mov	r7,#0x00
;	genIpush
	push	ar5
	push	ar7
;	genIpush
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:253: printf ("        should be:   %d\r\n", 1);
;	genIpush
	mov	a,#0x01
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:254: printf ("  Int_Comp:          %d\r\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
;	genAssign
	mov	dptr,#_Next_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x05
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genIpush
	push	ar5
	push	ar6
;	genIpush
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:255: printf ("        should be:   %d\r\n", 18);
;	genIpush
	mov	a,#0x12
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:257: Next_Ptr_Glob->variant.var_1.Str_Comp);
;	genAssign
	mov	dptr,#_Next_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x07
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r6
	mov	r6,a
;	dhry_1.c:256: printf ("  Str_Comp:          %s\r\n",
;	genIpush
	push	ar5
	push	ar6
	push	ar7
;	genIpush
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	dhry_1.c:258: printf ("        should be:   DHRYSTONE PROGRAM, SOME STRING\r\n");
;	genIpush
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:259: printf ("Int_1_Loc:           %d\r\n", Int_1_Loc);
;	genIpush
	mov	dptr,#_main_Int_1_Loc_65536_54
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
;	genIpush
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:260: printf ("        should be:   %d\r\n", 5);
;	genIpush
	mov	a,#0x05
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:261: printf ("Int_2_Loc:           %d\r\n", Int_2_Loc);
;	genIpush
	mov	dptr,#_main_Int_2_Loc_65536_54
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
;	genIpush
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:262: printf ("        should be:   %d\r\n", 13);
;	genIpush
	mov	a,#0x0d
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:263: printf ("Int_3_Loc:           %d\r\n", Int_3_Loc);
;	genIpush
	mov	dptr,#_main_Int_3_Loc_65536_54
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
;	genIpush
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:264: printf ("        should be:   %d\r\n", 7);
;	genIpush
	mov	a,#0x07
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:265: printf ("Enum_Loc:            %d\r\n", Enum_Loc);
;	genAssign
	mov	dptr,#_main_Enum_Loc_65536_54
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	r6,#0x00
;	genIpush
	push	ar7
	push	ar6
;	genIpush
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:266: printf ("        should be:   %d\r\n", 1);
;	genIpush
	mov	a,#0x01
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	dhry_1.c:267: printf ("Str_1_Loc:           %s\r\n", Str_1_Loc);
;	genIpush
	mov	a,#_main_Str_1_Loc_65536_54
	push	acc
	mov	a,#(_main_Str_1_Loc_65536_54 >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	dhry_1.c:268: printf ("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\r\n");
;	genIpush
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:269: printf ("Str_2_Loc:           %s\r\n", Str_2_Loc);
;	genIpush
	mov	a,#_main_Str_2_Loc_65536_54
	push	acc
	mov	a,#(_main_Str_2_Loc_65536_54 >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	dhry_1.c:270: printf ("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\r\n");
;	genIpush
	mov	a,#___str_38
	push	acc
	mov	a,#(___str_38 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:271: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:273: User_Time = End_Time - Begin_Time;
;	genAssign
	mov	dptr,#_Begin_Time
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#_End_Time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genMinus
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r1
	subb	a,r5
	mov	r5,a
	mov	a,r2
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
;	genAssign
	mov	dptr,#_User_Time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:275: if (User_Time < Too_Small_Time)
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,#0xd0
	mov	a,r5
	subb	a,#0x07
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00112$
;	Peephole 500	removed redundant label 00170$
;	dhry_1.c:277: printf ("Measured time too small to obtain meaningful results\r\n");
;	genIpush
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:278: printf ("Please increase number of runs\r\n");
;	genIpush
	mov	a,#___str_40
	push	acc
	mov	a,#(___str_40 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:279: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00113$
00112$:
;	dhry_1.c:288: Microseconds = (float) User_Time * Mic_secs_Per_Second 
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___slong2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	genIpush
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	dhry_1.c:289: / ((float) HZ * ((float) Number_Of_Runs));
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x2400
	mov	b,#0x74
	mov	a,#0x49
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	Peephole 300	pop ar4 removed
;	Peephole 300	pop ar5 removed
;	Peephole 300	pop ar6 removed
;	Peephole 300	pop ar7 removed
;	genIpush
;	Peephole	push ar7 removed
;	Peephole	push ar6 removed
;	Peephole	push ar5 removed
;	Peephole	push ar4 removed
	mov	a,#0x80
	push	acc
	mov	a,#0x96
	push	acc
	mov	a,#0x98
	push	acc
	mov	a,#0x4b
	push	acc
;	genCall
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsdiv
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	genAssign
	mov	dptr,#_Microseconds
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:291: / (float) User_Time;
;	genIpush
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x9680
	mov	b,#0x98
	mov	a,#0x4b
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genAssign
	mov	dptr,#_Dhrystones_Per_Second
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:293: printf ("Microseconds for one run through Dhrystone: ");
;	genIpush
	mov	a,#___str_41
	push	acc
	mov	a,#(___str_41 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:295: printf ("%ld \r\n", (long int)Microseconds);
;	genAssign
	mov	dptr,#_Microseconds
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	genCall
;	Peephole 301	mov r7,a removed
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	Peephole 191	removed redundant mov
	lcall	___fs2slong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	genIpush
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	genIpush
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	dhry_1.c:296: printf ("Dhrystones per Second:                      ");
;	genIpush
	mov	a,#___str_43
	push	acc
	mov	a,#(___str_43 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	dhry_1.c:298: printf ("%ld \r\n", (long int)Dhrystones_Per_Second);
;	genAssign
	mov	dptr,#_Dhrystones_Per_Second
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	genCall
;	Peephole 301	mov r7,a removed
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	Peephole 191	removed redundant mov
	lcall	___fs2slong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	genIpush
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	genIpush
	mov	a,#___str_42
	push	acc
	mov	a,#(___str_42 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	dhry_1.c:299: printf ("\r\n");
;	genIpush
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00113$:
;	dhry_1.c:302: PCON |= 2;
;	genOr
	orl	_PCON,#0x02
;	Peephole 500	removed redundant label 00120$
;	dhry_1.c:303: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_1'
;------------------------------------------------------------
;sloc0                     Allocated with name '_Proc_1_sloc0_1_0'
;sloc1                     Allocated with name '_Proc_1_sloc1_1_0'
;sloc2                     Allocated with name '_Proc_1_sloc2_1_0'
;Ptr_Val_Par               Allocated with name '_Proc_1_Ptr_Val_Par_65536_66'
;Next_Record               Allocated with name '_Proc_1_Next_Record_65536_67'
;------------------------------------------------------------
;	dhry_1.c:306: void Proc_1 (REG Rec_Pointer Ptr_Val_Par)
;	-----------------------------------------
;	 function Proc_1
;	-----------------------------------------
_Proc_1:
;	genReceive
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Proc_1_Ptr_Val_Par_65536_66
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:312: REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
;	genAssign
	mov	dptr,#_Proc_1_Ptr_Val_Par_65536_66
	movx	a,@dptr
	mov	_Proc_1_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Proc_1_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Proc_1_sloc0_1_0 + 2),a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_Proc_1_sloc0_1_0
	mov	dph,(_Proc_1_sloc0_1_0 + 1)
	mov	b,(_Proc_1_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	dhry_1.c:317: structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
;	genAssign
	mov	ar0,r2
	mov	ar1,r3
	mov	ar7,r4
;	genCast
	mov	_Proc_1_sloc1_1_0,r0
	mov	(_Proc_1_sloc1_1_0 + 1),r1
	mov	(_Proc_1_sloc1_1_0 + 2),r7
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	dptr,#___memcpy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x26
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,_Proc_1_sloc1_1_0
	mov	dph,(_Proc_1_sloc1_1_0 + 1)
	mov	b,(_Proc_1_sloc1_1_0 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	___memcpy
	pop	ar2
	pop	ar3
	pop	ar4
;	dhry_1.c:318: Ptr_Val_Par->variant.var_1.Int_Comp = 5;
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,_Proc_1_sloc0_1_0
	mov	_Proc_1_sloc1_1_0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_Proc_1_sloc0_1_0 + 1)
	mov	(_Proc_1_sloc1_1_0 + 1),a
	mov	(_Proc_1_sloc1_1_0 + 2),(_Proc_1_sloc0_1_0 + 2)
;	genPlus
;	genPlusIncr
	mov	a,#0x05
	add	a,_Proc_1_sloc0_1_0
	mov	_Proc_1_sloc2_1_0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_Proc_1_sloc0_1_0 + 1)
	mov	(_Proc_1_sloc2_1_0 + 1),a
	mov	(_Proc_1_sloc2_1_0 + 2),(_Proc_1_sloc0_1_0 + 2)
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_Proc_1_sloc2_1_0
	mov	dph,(_Proc_1_sloc2_1_0 + 1)
	mov	b,(_Proc_1_sloc2_1_0 + 2)
	mov	a,#0x05
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	dhry_1.c:319: Next_Record->variant.var_1.Int_Comp 
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
00110$:
;	dhry_1.c:320: = Ptr_Val_Par->variant.var_1.Int_Comp;
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_Proc_1_sloc2_1_0
	mov	dph,(_Proc_1_sloc2_1_0 + 1)
	mov	b,(_Proc_1_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	dhry_1.c:321: Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_Proc_1_sloc0_1_0
	mov	dph,(_Proc_1_sloc0_1_0 + 1)
	mov	b,(_Proc_1_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	dhry_1.c:322: Proc_3 (&Next_Record->Ptr_Comp);
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_Proc_3
	pop	ar2
	pop	ar3
	pop	ar4
;	dhry_1.c:325: if (Next_Record->Discr == Ident_1)
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r2
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genIfxJump
	jz	00111$
	ljmp	00102$
00111$:
;	dhry_1.c:328: Next_Record->variant.var_1.Int_Comp = 6;
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	_Proc_1_sloc2_1_0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r3
	mov	(_Proc_1_sloc2_1_0 + 1),a
	mov	(_Proc_1_sloc2_1_0 + 2),r4
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,_Proc_1_sloc2_1_0
	mov	r0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,(_Proc_1_sloc2_1_0 + 1)
	mov	r1,a
	mov	r7,(_Proc_1_sloc2_1_0 + 2)
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	dhry_1.c:329: Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_Proc_1_sloc1_1_0
	mov	dph,(_Proc_1_sloc1_1_0 + 1)
	mov	b,(_Proc_1_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
;	dhry_1.c:330: &Next_Record->variant.var_1.Enum_Comp);
;	genAssign
	mov	dptr,#_Proc_6_PARM_2
	mov	a,_Proc_1_sloc2_1_0
	movx	@dptr,a
	mov	a,(_Proc_1_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_Proc_1_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_Proc_6
	pop	ar2
	pop	ar3
	pop	ar4
;	dhry_1.c:331: Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	dhry_1.c:332: Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r3
	mov	r3,a
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00112$
	inc	r3
00112$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	dhry_1.c:333: &Next_Record->variant.var_1.Int_Comp);
;	genAssign
	mov	dptr,#_Proc_7_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_Proc_7_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00104$ to ret with ret
;	Peephole 400.a	replaced lcall/ret with ljmp
	ljmp	_Proc_7
00102$:
;	dhry_1.c:336: structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
;	genAssign
	mov	r5,_Proc_1_sloc0_1_0
	mov	r6,(_Proc_1_sloc0_1_0 + 1)
	mov	r7,(_Proc_1_sloc0_1_0 + 2)
;	genCast
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_Proc_1_sloc0_1_0
	mov	dph,(_Proc_1_sloc0_1_0 + 1)
	mov	b,(_Proc_1_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	dptr,#___memcpy_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x26
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	dhry_1.c:337: } /* Proc_1 */
;	Peephole 400.b	replaced lcall/ret with ljmp
	ljmp	___memcpy
;
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_2'
;------------------------------------------------------------
;Int_Par_Ref               Allocated with name '_Proc_2_Int_Par_Ref_65536_69'
;Int_Loc                   Allocated with name '_Proc_2_Int_Loc_65536_70'
;Enum_Loc                  Allocated with name '_Proc_2_Enum_Loc_65536_70'
;------------------------------------------------------------
;	dhry_1.c:340: void Proc_2 (One_Fifty *Int_Par_Ref)
;	-----------------------------------------
;	 function Proc_2
;	-----------------------------------------
_Proc_2:
;	genReceive
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Proc_2_Int_Par_Ref_65536_69
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:349: Int_Loc = *Int_Par_Ref + 10;
;	genAssign
	mov	dptr,#_Proc_2_Int_Par_Ref_65536_69
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x0a
	add	a,r3
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r4
	mov	r4,a
;	dhry_1.c:350: do /* executed once */
00103$:
;	dhry_1.c:351: if (Ch_1_Glob == 'A')
;	genAssign
	mov	dptr,#_Ch_1_Glob
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x41,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 500	removed redundant label 00117$
;	Peephole 500	removed redundant label 00118$
;	dhry_1.c:354: Int_Loc -= 1;
;	genMinus
;	genMinusDec
	dec	r3
	cjne	r3,#0xff,00119$
	dec	r4
00119$:
;	dhry_1.c:355: *Int_Par_Ref = Int_Loc - Int_Glob;
;	genAssign
	mov	dptr,#_Int_Glob
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genMinus
	mov	a,r3
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,r4
	subb	a,r2
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	dhry_1.c:356: Enum_Loc = Ident_1;
;	genAssign
	mov	dptr,#_Proc_2_Enum_Loc_65536_70
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
00104$:
;	dhry_1.c:358: while (Enum_Loc != Ident_1); /* true */
;	genIfx
	mov	dptr,#_Proc_2_Enum_Loc_65536_70
	movx	a,@dptr
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00103$
;	Peephole 500	removed redundant label 00120$
;	Peephole 500	removed redundant label 00106$
;	dhry_1.c:359: } /* Proc_2 */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_3'
;------------------------------------------------------------
;Ptr_Ref_Par               Allocated with name '_Proc_3_Ptr_Ref_Par_65536_72'
;------------------------------------------------------------
;	dhry_1.c:362: void Proc_3 (Rec_Pointer *Ptr_Ref_Par)
;	-----------------------------------------
;	 function Proc_3
;	-----------------------------------------
_Proc_3:
;	genReceive
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Proc_3_Ptr_Ref_Par_65536_72
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_1.c:368: if (Ptr_Glob != Null)
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genIfx
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00102$
;	Peephole 500	removed redundant label 00109$
;	dhry_1.c:370: *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
;	genAssign
	mov	dptr,#_Proc_3_Ptr_Ref_Par_65536_72
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00102$:
;	dhry_1.c:371: Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
;	genAssign
	mov	dptr,#_Int_Glob
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#_Ptr_Glob
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
;	genPlusIncr
	mov	a,#0x05
	add	a,r3
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r4
	mov	r4,a
;	genAssign
	mov	dptr,#_Proc_7_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_Proc_7_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x000a
;	dhry_1.c:372: } /* Proc_3 */
;	Peephole 400.b	replaced lcall/ret with ljmp
	ljmp	_Proc_7
;
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_4'
;------------------------------------------------------------
;Bool_Loc                  Allocated with name '_Proc_4_Bool_Loc_65536_75'
;------------------------------------------------------------
;	dhry_1.c:375: void Proc_4 (void) /* without parameters */
;	-----------------------------------------
;	 function Proc_4
;	-----------------------------------------
_Proc_4:
;	dhry_1.c:380: Bool_Loc = Ch_1_Glob == 'A';
;	genAssign
	mov	dptr,#_Ch_1_Glob
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjne
;	gencjneshort
;	Peephole 181	changed mov to clr
;	Peephole 241.d	optimized compare
	clr	a
	cjne	r7,#0x41,00103$
	inc	a
00103$:
;	Peephole 500	removed redundant label 00104$
	mov	r7,a
;	genCast
	mov	r6,#0x00
;	dhry_1.c:381: Bool_Glob = Bool_Loc | Bool_Glob;
;	genOr
	mov	dptr,#_Bool_Glob
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
;	dhry_1.c:382: Ch_2_Glob = 'B';
;	genAssign
	mov	dptr,#_Ch_2_Glob
	mov	a,#0x42
	movx	@dptr,a
;	Peephole 500	removed redundant label 00101$
;	dhry_1.c:383: } /* Proc_4 */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_5'
;------------------------------------------------------------
;	dhry_1.c:386: void Proc_5 (void) /* without parameters */
;	-----------------------------------------
;	 function Proc_5
;	-----------------------------------------
_Proc_5:
;	dhry_1.c:390: Ch_1_Glob = 'A';
;	genAssign
	mov	dptr,#_Ch_1_Glob
	mov	a,#0x41
	movx	@dptr,a
;	dhry_1.c:391: Bool_Glob = false;
;	genAssign
	mov	dptr,#_Bool_Glob
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	genFromRTrack acc==0x00
	inc	dptr
	movx	@dptr,a
;	Peephole 500	removed redundant label 00101$
;	dhry_1.c:392: } /* Proc_5 */
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "DHRYSTONE PROGRAM, SOME STRING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "DHRYSTONE PROGRAM, 1'ST STRING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Dhrystone Benchmark, Version 2.1 (Language: C)"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Program compiled with 'register' attribute"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Program compiled without 'register' attribute"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Please give the number of runs through the benchmark: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Execution starts, %d runs through Dhrystone"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "DHRYSTONE PROGRAM, 2'ND STRING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "DHRYSTONE PROGRAM, 3'RD STRING"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Execution ends"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Final values of the variables used in the benchmark:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Int_Glob:            %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "        should be:   %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Bool_Glob:           %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Ch_1_Glob:           %c"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "        should be:   %c"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Ch_2_Glob:           %c"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Arr_1_Glob[8]:       %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Arr_2_Glob[8][7]:    %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "        should be:   Number_Of_Runs + 10"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Ptr_Glob->"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "  Ptr_Comp:          %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "        should be:   (implementation-dependent)"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "  Discr:             %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "  Enum_Comp:         %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "  Int_Comp:          %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "  Str_Comp:          %s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "        should be:   DHRYSTONE PROGRAM, SOME STRING"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "Next_Ptr_Glob->"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "        should be:   (implementation-dependent), same as abo"
	.ascii "ve"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "Int_1_Loc:           %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "Int_2_Loc:           %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "Int_3_Loc:           %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "Enum_Loc:            %d"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "Str_1_Loc:           %s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "        should be:   DHRYSTONE PROGRAM, 1'ST STRING"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "Str_2_Loc:           %s"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "        should be:   DHRYSTONE PROGRAM, 2'ND STRING"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "Measured time too small to obtain meaningful results"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "Please increase number of runs"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "Microseconds for one run through Dhrystone: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "%ld "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_43:
	.ascii "Dhrystones per Second:                      "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__Reg:
	.byte #0x01, #0x00	;  1
	.area CABS    (ABS,CODE)
