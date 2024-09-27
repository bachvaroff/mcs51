;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module dhry_2
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
	.globl _Func_2_PARM_2
	.globl _Func_1_PARM_2
	.globl _Proc_8_PARM_4
	.globl _Proc_8_PARM_3
	.globl _Proc_8_PARM_2
	.globl _Proc_7_PARM_3
	.globl _Proc_7_PARM_2
	.globl _Proc_6_PARM_2
	.globl _Proc_6
	.globl _Proc_7
	.globl _Proc_8
	.globl _Func_1
	.globl _Func_2
	.globl _Func_3
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
_Proc_8_sloc0_1_0:
	.ds 2
_Proc_8_sloc1_1_0:
	.ds 3
_Proc_8_sloc2_1_0:
	.ds 3
_Proc_8_sloc3_1_0:
	.ds 2
_Proc_8_sloc4_1_0:
	.ds 2
_Proc_8_sloc5_1_0:
	.ds 3
_Func_2_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_Proc_6_PARM_2:
	.ds 3
_Proc_6_Enum_Val_Par_65536_51:
	.ds 1
_Proc_7_PARM_2:
	.ds 2
_Proc_7_PARM_3:
	.ds 3
_Proc_7_Int_1_Par_Val_65536_54:
	.ds 2
_Proc_8_PARM_2:
	.ds 3
_Proc_8_PARM_3:
	.ds 2
_Proc_8_PARM_4:
	.ds 2
_Proc_8_Arr_1_Par_Ref_65536_56:
	.ds 3
_Func_1_PARM_2:
	.ds 1
_Func_1_Ch_1_Par_Val_65536_59:
	.ds 1
_Func_2_PARM_2:
	.ds 3
_Func_2_Str_1_Par_Ref_65536_62:
	.ds 3
_Func_2_Int_Loc_65536_63:
	.ds 2
_Func_2_Ch_Loc_65536_63:
	.ds 1
_Func_3_Enum_Par_Val_65536_67:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_6'
;------------------------------------------------------------
;Enum_Ref_Par              Allocated with name '_Proc_6_PARM_2'
;Enum_Val_Par              Allocated with name '_Proc_6_Enum_Val_Par_65536_51'
;------------------------------------------------------------
;	dhry_2.c:30: void Proc_6 (Enumeration Enum_Val_Par, Enumeration *Enum_Ref_Par)
;	-----------------------------------------
;	 function Proc_6
;	-----------------------------------------
_Proc_6:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	genReceive
	mov	a,dpl
	mov	dptr,#_Proc_6_Enum_Val_Par_65536_51
	movx	@dptr,a
;	dhry_2.c:35: *Enum_Ref_Par = Enum_Val_Par;
;	genAssign
	mov	dptr,#_Proc_6_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#_Proc_6_Enum_Val_Par_65536_51
	movx	a,@dptr
;	genPointerSet
;	genGenPointerSet
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	Peephole 191	removed redundant mov
	lcall	__gptrput
;	dhry_2.c:36: if (! Func_3 (Enum_Val_Par))
;	genCall
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_Func_3
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	genIfx
	orl	a,b
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00102$
;	Peephole 500	removed redundant label 00126$
;	dhry_2.c:38: *Enum_Ref_Par = Ident_4;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
00102$:
;	dhry_2.c:39: switch (Enum_Val_Par)
;	genAssign
	mov	dptr,#_Proc_6_Enum_Val_Par_65536_51
	movx	a,@dptr
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov  r4,a
;	Peephole 177.a	removed redundant mov
	add	a,#0xff - 0x04
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00112$
;	Peephole 500	removed redundant label 00127$
;	genJumpTab
	mov	a,r4
	add	a,r4
;	dhry_2.c:41: case Ident_1: 
;	Peephole 260.b	used sjmp in jumptable
	mov	dptr,#00128$
	jmp	@a+dptr
00128$:
	sjmp	00103$
	sjmp	00104$
	sjmp	00108$
	sjmp	00112$
	sjmp	00110$
00103$:
;	dhry_2.c:42: *Enum_Ref_Par = Ident_1;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	Peephole 181	changed mov to clr
	clr	a
;	dhry_2.c:43: break;
;	dhry_2.c:44: case Ident_2: 
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
;	Peephole 400.a	replaced lcall/ret with ljmp
	ljmp	__gptrput
00104$:
;	dhry_2.c:45: if (Int_Glob > 100)
;	genAssign
	mov	dptr,#_Int_Glob
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x64
	subb	a,r3
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00106$
;	Peephole 500	removed redundant label 00129$
;	dhry_2.c:47: *Enum_Ref_Par = Ident_1;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
;	Peephole 400.a	replaced lcall/ret with ljmp
	ljmp	__gptrput
00106$:
;	dhry_2.c:48: else *Enum_Ref_Par = Ident_4;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
;	dhry_2.c:49: break;
;	dhry_2.c:50: case Ident_3: /* executed */
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
;	Peephole 400.a	replaced lcall/ret with ljmp
	ljmp	__gptrput
00108$:
;	dhry_2.c:51: *Enum_Ref_Par = Ident_2;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
;	dhry_2.c:52: break;
;	dhry_2.c:54: case Ident_5: 
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00112$ to ret with ret
;	Peephole 400.a	replaced lcall/ret with ljmp
	ljmp	__gptrput
00110$:
;	dhry_2.c:55: *Enum_Ref_Par = Ident_3;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
;	dhry_2.c:57: } /* switch */
;	dhry_2.c:58: } /* Proc_6 */
;	Peephole 400.c	replaced lcall with ljmp
	ljmp	__gptrput
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_7'
;------------------------------------------------------------
;Int_2_Par_Val             Allocated with name '_Proc_7_PARM_2'
;Int_Par_Ref               Allocated with name '_Proc_7_PARM_3'
;Int_1_Par_Val             Allocated with name '_Proc_7_Int_1_Par_Val_65536_54'
;Int_Loc                   Allocated with name '_Proc_7_Int_Loc_65536_55'
;------------------------------------------------------------
;	dhry_2.c:61: void Proc_7 (One_Fifty Int_1_Par_Val, One_Fifty Int_2_Par_Val, One_Fifty *Int_Par_Ref)
;	-----------------------------------------
;	 function Proc_7
;	-----------------------------------------
_Proc_7:
;	genReceive
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_Proc_7_Int_1_Par_Val_65536_54
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_2.c:73: Int_Loc = Int_1_Par_Val + 2;
;	genAssign
	mov	dptr,#_Proc_7_Int_1_Par_Val_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r6
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r7
	mov	r7,a
;	dhry_2.c:74: *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
;	genAssign
	mov	dptr,#_Proc_7_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_Proc_7_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genPlus
	mov	a,r6
	add	a,r1
	mov	r6,a
	mov	a,r7
	addc	a,r2
	mov	r7,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
;	dhry_2.c:75: } /* Proc_7 */
;	Peephole 400.b	replaced lcall/ret with ljmp
	ljmp	__gptrput
;
;------------------------------------------------------------
;Allocation info for local variables in function 'Proc_8'
;------------------------------------------------------------
;sloc0                     Allocated with name '_Proc_8_sloc0_1_0'
;sloc1                     Allocated with name '_Proc_8_sloc1_1_0'
;sloc2                     Allocated with name '_Proc_8_sloc2_1_0'
;sloc3                     Allocated with name '_Proc_8_sloc3_1_0'
;sloc4                     Allocated with name '_Proc_8_sloc4_1_0'
;sloc5                     Allocated with name '_Proc_8_sloc5_1_0'
;Arr_2_Par_Ref             Allocated with name '_Proc_8_PARM_2'
;Int_1_Par_Val             Allocated with name '_Proc_8_PARM_3'
;Int_2_Par_Val             Allocated with name '_Proc_8_PARM_4'
;Arr_1_Par_Ref             Allocated with name '_Proc_8_Arr_1_Par_Ref_65536_56'
;Int_Index                 Allocated with name '_Proc_8_Int_Index_65536_57'
;Int_Loc                   Allocated with name '_Proc_8_Int_Loc_65536_57'
;------------------------------------------------------------
;	dhry_2.c:78: void Proc_8 (Arr_1_Dim Arr_1_Par_Ref, Arr_2_Dim Arr_2_Par_Ref, int Int_1_Par_Val, int Int_2_Par_Val)
;	-----------------------------------------
;	 function Proc_8
;	-----------------------------------------
_Proc_8:
;	genReceive
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Proc_8_Arr_1_Par_Ref_65536_56
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_2.c:87: Int_Loc = Int_1_Par_Val + 5;
;	genAssign
	mov	dptr,#_Proc_8_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x05
	add	a,r6
	mov	r4,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r7
	mov	r5,a
;	dhry_2.c:88: Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
;	genAssign
	mov	dptr,#_Proc_8_Arr_1_Par_Ref_65536_56
	movx	a,@dptr
	mov	_Proc_8_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Proc_8_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Proc_8_sloc1_1_0 + 2),a
;	genLeftShift
;	genLeftShiftLiteral (1), size 2
;	genlshFixed
	mov	a,r4
;	Peephole 254	optimized left shift
	add	a,r4
	mov	_Proc_8_sloc0_1_0,a
	mov	a,r5
	rlc	a
	mov	(_Proc_8_sloc0_1_0 + 1),a
;	genPlus
	mov	a,_Proc_8_sloc0_1_0
	add	a,_Proc_8_sloc1_1_0
	mov	_Proc_8_sloc2_1_0,a
	mov	a,(_Proc_8_sloc0_1_0 + 1)
	addc	a,(_Proc_8_sloc1_1_0 + 1)
	mov	(_Proc_8_sloc2_1_0 + 1),a
	mov	(_Proc_8_sloc2_1_0 + 2),(_Proc_8_sloc1_1_0 + 2)
;	genAssign
	mov	dptr,#_Proc_8_PARM_4
	movx	a,@dptr
	mov	_Proc_8_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Proc_8_sloc3_1_0 + 1),a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_Proc_8_sloc2_1_0
	mov	dph,(_Proc_8_sloc2_1_0 + 1)
	mov	b,(_Proc_8_sloc2_1_0 + 2)
	mov	a,_Proc_8_sloc3_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_Proc_8_sloc3_1_0 + 1)
	lcall	__gptrput
;	dhry_2.c:89: Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
;	genPlus
;	genPlusIncr
	mov	a,#0x06
	add	a,r6
	mov	r0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r7
	mov	r2,a
;	genLeftShift
;	genLeftShiftLiteral (1), size 2
;	genlshFixed
	mov	a,r0
;	Peephole 254	optimized left shift
	add	a,r0
	mov	r0,a
	mov	a,r2
	rlc	a
	mov	r2,a
;	genPlus
	mov	a,r0
	add	a,_Proc_8_sloc1_1_0
	mov	r0,a
	mov	a,r2
	addc	a,(_Proc_8_sloc1_1_0 + 1)
	mov	r2,a
	mov	r3,(_Proc_8_sloc1_1_0 + 2)
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	mov	a,_Proc_8_sloc3_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_Proc_8_sloc3_1_0 + 1)
	lcall	__gptrput
;	dhry_2.c:90: Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
;	genPlus
;	genPlusIncr
	mov	a,#0x23
	add	a,r6
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r7
	mov	r3,a
;	genLeftShift
;	genLeftShiftLiteral (1), size 2
;	genlshFixed
	mov	a,r2
;	Peephole 254	optimized left shift
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
;	genPlus
	mov	a,r2
	add	a,_Proc_8_sloc1_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_Proc_8_sloc1_1_0 + 1)
	mov	r1,a
	mov	r3,(_Proc_8_sloc1_1_0 + 2)
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	dhry_2.c:91: for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
;	genAssign
	mov	dptr,#_Proc_8_PARM_2
	movx	a,@dptr
	mov	_Proc_8_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Proc_8_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Proc_8_sloc5_1_0 + 2),a
;	genAssign
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0064
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	_Proc_8_sloc3_1_0,dpl
	mov	(_Proc_8_sloc3_1_0 + 1),dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	genPlus
	mov	a,_Proc_8_sloc3_1_0
	add	a,_Proc_8_sloc5_1_0
	mov	_Proc_8_sloc2_1_0,a
	mov	a,(_Proc_8_sloc3_1_0 + 1)
	addc	a,(_Proc_8_sloc5_1_0 + 1)
	mov	(_Proc_8_sloc2_1_0 + 1),a
	mov	(_Proc_8_sloc2_1_0 + 2),(_Proc_8_sloc5_1_0 + 2)
;	genPlus
;	genPlusIncr
	mov	a,#0x06
	add	a,r6
	mov	_Proc_8_sloc1_1_0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r7
	mov	(_Proc_8_sloc1_1_0 + 1),a
;	genAssign
	mov	_Proc_8_sloc4_1_0,r4
	mov	(_Proc_8_sloc4_1_0 + 1),r5
00103$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,_Proc_8_sloc1_1_0
	subb	a,_Proc_8_sloc4_1_0
	mov	a,(_Proc_8_sloc1_1_0 + 1)
	xrl	a,#0x80
	mov	b,(_Proc_8_sloc4_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00101$
;	Peephole 500	removed redundant label 00116$
;	dhry_2.c:92: Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
;	genIpush
;	genLeftShift
;	genLeftShiftLiteral (1), size 2
;	genlshFixed
	mov	a,_Proc_8_sloc4_1_0
;	Peephole 254	optimized left shift
	add	a,_Proc_8_sloc4_1_0
	mov	r0,a
	mov	a,(_Proc_8_sloc4_1_0 + 1)
	rlc	a
	mov	r3,a
;	genPlus
	mov	a,r0
	add	a,_Proc_8_sloc2_1_0
	mov	r0,a
	mov	a,r3
	addc	a,(_Proc_8_sloc2_1_0 + 1)
	mov	r3,a
	mov	r2,(_Proc_8_sloc2_1_0 + 2)
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r0
	mov	dph,r3
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	dhry_2.c:91: for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
;	genPlus
;	genPlusIncr
	inc	_Proc_8_sloc4_1_0
	clr	a
;	genIpop
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 243	avoided branch to sjmp
	cjne	a,_Proc_8_sloc4_1_0,00103$
	inc	(_Proc_8_sloc4_1_0 + 1)
;	Peephole 500	removed redundant label 00117$
	sjmp	00103$
00101$:
;	dhry_2.c:93: Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
;	genPlus
	mov	a,_Proc_8_sloc3_1_0
	add	a,_Proc_8_sloc5_1_0
	mov	r0,a
	mov	a,(_Proc_8_sloc3_1_0 + 1)
	addc	a,(_Proc_8_sloc5_1_0 + 1)
	mov	r2,a
	mov	r3,(_Proc_8_sloc5_1_0 + 2)
;	genCast
;	genMinus
;	genMinusDec
	dec	r4
;	genLeftShift
;	genLeftShiftLiteral (1), size 1
;	genlshFixed
	mov	a,r4
;	Peephole 254	optimized left shift
	add	a,r4
;	genPlus
;	Peephole 301	mov r4,a removed
;	Peephole 105.a	removed redundant mov
	add	a,r0
	mov	r0,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r2
	mov	r2,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	inc	r4
	cjne	r4,#0x00,00118$
	inc	r5
00118$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	dhry_2.c:94: Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
;	genPlus
	mov	dptr,#__mulint_PARM_2
;	genPlusIncr
	mov	a,#0x19
	add	a,r6
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
;	genPlus
	mov	a,r6
	add	a,_Proc_8_sloc5_1_0
	mov	r6,a
	mov	a,r7
	addc	a,(_Proc_8_sloc5_1_0 + 1)
	mov	r7,a
	mov	r5,(_Proc_8_sloc5_1_0 + 2)
;	genPlus
	mov	a,_Proc_8_sloc0_1_0
	add	a,r6
	mov	r6,a
	mov	a,(_Proc_8_sloc0_1_0 + 1)
	addc	a,r7
	mov	r7,a
;	genAssign
	mov	dptr,#_Proc_8_Arr_1_Par_Ref_65536_56
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
	mov	a,_Proc_8_sloc0_1_0
	add	a,r2
	mov	r2,a
	mov	a,(_Proc_8_sloc0_1_0 + 1)
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	dhry_2.c:95: Int_Glob = 5;
;	genAssign
	mov	dptr,#_Int_Glob
	mov	a,#0x05
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
;	Peephole 500	removed redundant label 00105$
;	dhry_2.c:96: } /* Proc_8 */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Func_1'
;------------------------------------------------------------
;Ch_2_Par_Val              Allocated with name '_Func_1_PARM_2'
;Ch_1_Par_Val              Allocated with name '_Func_1_Ch_1_Par_Val_65536_59'
;Ch_1_Loc                  Allocated with name '_Func_1_Ch_1_Loc_65536_60'
;Ch_2_Loc                  Allocated with name '_Func_1_Ch_2_Loc_65536_60'
;------------------------------------------------------------
;	dhry_2.c:99: Enumeration Func_1 (Capital_Letter Ch_1_Par_Val, Capital_Letter Ch_2_Par_Val)
;	-----------------------------------------
;	 function Func_1
;	-----------------------------------------
_Func_1:
;	genReceive
	mov	a,dpl
	mov	dptr,#_Func_1_Ch_1_Par_Val_65536_59
	movx	@dptr,a
;	dhry_2.c:110: Ch_1_Loc = Ch_1_Par_Val;
;	genAssign
;	genFromRTrack dptr==#_Func_1_Ch_1_Par_Val_65536_59
	movx	a,@dptr
	mov	r7,a
;	dhry_2.c:112: if (Ch_2_Loc != Ch_2_Par_Val)
;	genAssign
	mov	dptr,#_Func_1_PARM_2
	movx	a,@dptr
	mov	r6,a
;	genCmpEq
;	gencjneshort
	mov	a,r7
	cjne	a,ar6,00110$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00110$:
;	dhry_2.c:114: return (Ident_1);
;	genRet
	mov	dpl,#0x00
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00104$ to ret with ret
	ret
00102$:
;	dhry_2.c:117: Ch_1_Glob = Ch_1_Loc;
;	genAssign
	mov	dptr,#_Ch_1_Glob
	mov	a,r7
	movx	@dptr,a
;	dhry_2.c:118: return (Ident_2);
;	genRet
	mov	dpl,#0x01
;	Peephole 500	removed redundant label 00104$
;	dhry_2.c:120: } /* Func_1 */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Func_2'
;------------------------------------------------------------
;sloc0                     Allocated with name '_Func_2_sloc0_1_0'
;Str_2_Par_Ref             Allocated with name '_Func_2_PARM_2'
;Str_1_Par_Ref             Allocated with name '_Func_2_Str_1_Par_Ref_65536_62'
;Int_Loc                   Allocated with name '_Func_2_Int_Loc_65536_63'
;Ch_Loc                    Allocated with name '_Func_2_Ch_Loc_65536_63'
;------------------------------------------------------------
;	dhry_2.c:123: Boolean Func_2 (Str_30 Str_1_Par_Ref, Str_30 Str_2_Par_Ref)
;	-----------------------------------------
;	 function Func_2
;	-----------------------------------------
_Func_2:
;	genReceive
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Func_2_Str_1_Par_Ref_65536_62
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_2.c:134: while (Int_Loc <= 2) /* loop body executed once */
;	genAssign
	mov	dptr,#_Func_2_Str_1_Par_Ref_65536_62
	movx	a,@dptr
	mov	_Func_2_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Func_2_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Func_2_sloc0_1_0 + 2),a
;	genAssign
	mov	dptr,#_Func_2_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	r0,#0x02
	mov	r1,#0x00
00103$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x02
	subb	a,r0
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00124$
;	Peephole 500	removed redundant label 00146$
;	dhry_2.c:135: if (Func_1 (Str_1_Par_Ref[Int_Loc],
;	genPlus
	mov	a,r0
	add	a,_Func_2_sloc0_1_0
	mov	r5,a
	mov	a,r1
	addc	a,(_Func_2_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_Func_2_sloc0_1_0 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	dhry_2.c:136: Str_2_Par_Ref[Int_Loc+1]) == Ident_1)
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r1
	mov	r7,a
;	genIpush
	push	ar0
	push	ar1
;	genPlus
	mov	a,r6
	add	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
;	genAssign
;	Peephole 301	mov r6,a removed
	mov	dptr,#_Func_1_PARM_2
;	Peephole 100	removed redundant mov
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_Func_1
	mov	a,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	genIpop
	pop	ar1
	pop	ar0
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00103$
;	Peephole 500	removed redundant label 00147$
;	dhry_2.c:139: Ch_Loc = 'A';
;	genAssign
	mov	dptr,#_Func_2_Ch_Loc_65536_63
	mov	a,#0x41
	movx	@dptr,a
;	dhry_2.c:140: Int_Loc += 1;
;	genPlus
;	genPlusIncr
	inc	r0
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 243	avoided branch to sjmp
	cjne	r0,#0x00,00103$
	inc	r1
;	Peephole 500	removed redundant label 00148$
	sjmp	00103$
00124$:
;	genAssign
	mov	dptr,#_Func_2_Int_Loc_65536_63
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	dhry_2.c:142: if (Ch_Loc >= 'W' && Ch_Loc < 'Z')
;	genAssign
	mov	dptr,#_Func_2_Ch_Loc_65536_63
	movx	a,@dptr
	mov	r7,a
;	genCmpLt
;	genCmp
	cjne	r7,#0x57,00149$
00149$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00107$
;	Peephole 500	removed redundant label 00150$
;	genCmpLt
;	genCmp
	cjne	r7,#0x5a,00151$
00151$:
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00107$
;	Peephole 500	removed redundant label 00152$
;	dhry_2.c:144: Int_Loc = 7;
;	genAssign
	mov	dptr,#_Func_2_Int_Loc_65536_63
	mov	a,#0x07
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	dptr
	movx	@dptr,a
00107$:
;	dhry_2.c:145: if (Ch_Loc == 'R')
;	genAssign
	mov	dptr,#_Func_2_Ch_Loc_65536_63
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r7,#0x52,00113$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 500	removed redundant label 00153$
;	Peephole 500	removed redundant label 00154$
;	dhry_2.c:147: return (true);
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00115$ to ret with ret
	ret
00113$:
;	dhry_2.c:150: if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
;	genAssign
	mov	dptr,#_Func_2_Str_1_Par_Ref_65536_62
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#_strcmp_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strcmp
	mov	r6,dpl
	mov	r7,dph
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r6
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00110$
;	Peephole 500	removed redundant label 00155$
;	dhry_2.c:153: Int_Loc += 7;
;	genAssign
	mov	dptr,#_Func_2_Int_Loc_65536_63
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
	mov	dptr,#_Func_2_Int_Loc_65536_63
;	genPlusIncr
	mov	a,#0x07
	add	a,r6
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_2.c:154: Int_Glob = Int_Loc;
;	genAssign
	mov	dptr,#_Func_2_Int_Loc_65536_63
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#_Int_Glob
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	dhry_2.c:155: return (true);
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00115$ to ret with ret
	ret
00110$:
;	dhry_2.c:158: return (false);
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0000
;	Peephole 500	removed redundant label 00115$
;	dhry_2.c:160: } /* Func_2 */
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Func_3'
;------------------------------------------------------------
;Enum_Par_Val              Allocated with name '_Func_3_Enum_Par_Val_65536_67'
;Enum_Loc                  Allocated with name '_Func_3_Enum_Loc_65536_68'
;------------------------------------------------------------
;	dhry_2.c:163: Boolean Func_3 (Enumeration Enum_Par_Val)
;	-----------------------------------------
;	 function Func_3
;	-----------------------------------------
_Func_3:
;	genReceive
	mov	a,dpl
	mov	dptr,#_Func_3_Enum_Par_Val_65536_67
	movx	@dptr,a
;	dhry_2.c:170: Enum_Loc = Enum_Par_Val;
;	genAssign
;	genFromRTrack dptr==#_Func_3_Enum_Par_Val_65536_67
	movx	a,@dptr
	mov	r7,a
;	dhry_2.c:171: if (Enum_Loc == Ident_3)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r7,#0x02,00102$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 500	removed redundant label 00110$
;	Peephole 500	removed redundant label 00111$
;	dhry_2.c:173: return (true);
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp 00104$ to ret with ret
	ret
00102$:
;	dhry_2.c:175: return (false);
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0000
;	Peephole 500	removed redundant label 00104$
;	dhry_2.c:176: } /* Func_3 */
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
