                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stack
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _stack_init
                                     12 	.globl _stack_push
                                     13 	.globl _stack_pop
                                     14 	.globl _stack_peek
                                     15 	.globl _stack_iter_peek
                                     16 ;--------------------------------------------------------
                                     17 ; special function registers
                                     18 ;--------------------------------------------------------
                                     19 	.area RSEG    (ABS,DATA)
      000000                         20 	.org 0x0000
                                     21 ;--------------------------------------------------------
                                     22 ; special function bits
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; overlayable register banks
                                     28 ;--------------------------------------------------------
                                     29 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         30 	.ds 8
                                     31 ;--------------------------------------------------------
                                     32 ; internal ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DSEG    (DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; overlayable items in internal ram 
                                     37 ;--------------------------------------------------------
                                     38 ;--------------------------------------------------------
                                     39 ; indirectly addressable internal ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area ISEG    (DATA)
                                     42 ;--------------------------------------------------------
                                     43 ; absolute internal ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area IABS    (ABS,DATA)
                                     46 	.area IABS    (ABS,DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; bit data
                                     49 ;--------------------------------------------------------
                                     50 	.area BSEG    (BIT)
                                     51 ;--------------------------------------------------------
                                     52 ; paged external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area PSEG    (PAG,XDATA)
                                     55 ;--------------------------------------------------------
                                     56 ; external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area XSEG    (XDATA)
                                     59 ;--------------------------------------------------------
                                     60 ; absolute external ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area XABS    (ABS,XDATA)
                                     63 ;--------------------------------------------------------
                                     64 ; external initialized ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area XISEG   (XDATA)
                                     67 	.area HOME    (CODE)
                                     68 	.area GSINIT0 (CODE)
                                     69 	.area GSINIT1 (CODE)
                                     70 	.area GSINIT2 (CODE)
                                     71 	.area GSINIT3 (CODE)
                                     72 	.area GSINIT4 (CODE)
                                     73 	.area GSINIT5 (CODE)
                                     74 	.area GSINIT  (CODE)
                                     75 	.area GSFINAL (CODE)
                                     76 	.area CSEG    (CODE)
                                     77 ;--------------------------------------------------------
                                     78 ; global & static initialisations
                                     79 ;--------------------------------------------------------
                                     80 	.area HOME    (CODE)
                                     81 	.area GSINIT  (CODE)
                                     82 	.area GSFINAL (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 ;--------------------------------------------------------
                                     85 ; Home
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME    (CODE)
                                     88 	.area HOME    (CODE)
                                     89 ;--------------------------------------------------------
                                     90 ; code
                                     91 ;--------------------------------------------------------
                                     92 	.area CSEG    (CODE)
                                     93 ;------------------------------------------------------------
                                     94 ;Allocation info for local variables in function 'stack_init'
                                     95 ;------------------------------------------------------------
                                     96 ;s                         Allocated to registers r5 r6 r7 
                                     97 ;------------------------------------------------------------
                                     98 ;	stack.c:4: void stack_init(stack_t *s) __reentrant {
                                     99 ;	-----------------------------------------
                                    100 ;	 function stack_init
                                    101 ;	-----------------------------------------
      002680                        102 _stack_init:
                           000007   103 	ar7 = 0x07
                           000006   104 	ar6 = 0x06
                           000005   105 	ar5 = 0x05
                           000004   106 	ar4 = 0x04
                           000003   107 	ar3 = 0x03
                           000002   108 	ar2 = 0x02
                           000001   109 	ar1 = 0x01
                           000000   110 	ar0 = 0x00
      002680 AD 82            [24]  111 	mov	r5,dpl
      002682 AE 83            [24]  112 	mov	r6,dph
      002684 AF F0            [24]  113 	mov	r7,b
                                    114 ;	stack.c:5: s->N = SIZE;
      002686 8D 02            [24]  115 	mov	ar2,r5
      002688 74 20            [12]  116 	mov	a,#0x20
      00268A 2E               [12]  117 	add	a,r6
      00268B FB               [12]  118 	mov	r3,a
      00268C 8F 04            [24]  119 	mov	ar4,r7
      00268E 8A 82            [24]  120 	mov	dpl,r2
      002690 8B 83            [24]  121 	mov	dph,r3
      002692 8C F0            [24]  122 	mov	b,r4
      002694 E4               [12]  123 	clr	a
      002695 12 4F 30         [24]  124 	lcall	__gptrput
      002698 A3               [24]  125 	inc	dptr
      002699 74 08            [12]  126 	mov	a,#0x08
      00269B 12 4F 30         [24]  127 	lcall	__gptrput
                                    128 ;	stack.c:6: s->p = -1;
      00269E 74 02            [12]  129 	mov	a,#0x02
      0026A0 2D               [12]  130 	add	a,r5
      0026A1 FD               [12]  131 	mov	r5,a
      0026A2 74 20            [12]  132 	mov	a,#0x20
      0026A4 3E               [12]  133 	addc	a,r6
      0026A5 FE               [12]  134 	mov	r6,a
      0026A6 8D 82            [24]  135 	mov	dpl,r5
      0026A8 8E 83            [24]  136 	mov	dph,r6
      0026AA 8F F0            [24]  137 	mov	b,r7
      0026AC 74 FF            [12]  138 	mov	a,#0xff
      0026AE 12 4F 30         [24]  139 	lcall	__gptrput
      0026B1 A3               [24]  140 	inc	dptr
                                    141 ;	stack.c:8: return;
                                    142 ;	stack.c:9: }
      0026B2 02 4F 30         [24]  143 	ljmp	__gptrput
                                    144 ;------------------------------------------------------------
                                    145 ;Allocation info for local variables in function 'stack_push'
                                    146 ;------------------------------------------------------------
                                    147 ;val                       Allocated to stack - _bp -6
                                    148 ;s                         Allocated to stack - _bp +1
                                    149 ;sloc0                     Allocated to stack - _bp +4
                                    150 ;------------------------------------------------------------
                                    151 ;	stack.c:11: int stack_push(stack_t *s, long val) __reentrant {
                                    152 ;	-----------------------------------------
                                    153 ;	 function stack_push
                                    154 ;	-----------------------------------------
      0026B5                        155 _stack_push:
      0026B5 C0 08            [24]  156 	push	_bp
      0026B7 85 81 08         [24]  157 	mov	_bp,sp
      0026BA C0 82            [24]  158 	push	dpl
      0026BC C0 83            [24]  159 	push	dph
      0026BE C0 F0            [24]  160 	push	b
      0026C0 05 81            [12]  161 	inc	sp
      0026C2 05 81            [12]  162 	inc	sp
                                    163 ;	stack.c:12: if (s->p == (s->N - 1)) return 0;
      0026C4 A8 08            [24]  164 	mov	r0,_bp
      0026C6 08               [12]  165 	inc	r0
      0026C7 74 02            [12]  166 	mov	a,#0x02
      0026C9 26               [12]  167 	add	a,@r0
      0026CA FA               [12]  168 	mov	r2,a
      0026CB 74 20            [12]  169 	mov	a,#0x20
      0026CD 08               [12]  170 	inc	r0
      0026CE 36               [12]  171 	addc	a,@r0
      0026CF FB               [12]  172 	mov	r3,a
      0026D0 08               [12]  173 	inc	r0
      0026D1 86 04            [24]  174 	mov	ar4,@r0
      0026D3 8A 82            [24]  175 	mov	dpl,r2
      0026D5 8B 83            [24]  176 	mov	dph,r3
      0026D7 8C F0            [24]  177 	mov	b,r4
      0026D9 E5 08            [12]  178 	mov	a,_bp
      0026DB 24 04            [12]  179 	add	a,#0x04
      0026DD F8               [12]  180 	mov	r0,a
      0026DE 12 53 AB         [24]  181 	lcall	__gptrget
      0026E1 F6               [12]  182 	mov	@r0,a
      0026E2 A3               [24]  183 	inc	dptr
      0026E3 12 53 AB         [24]  184 	lcall	__gptrget
      0026E6 08               [12]  185 	inc	r0
      0026E7 F6               [12]  186 	mov	@r0,a
      0026E8 A8 08            [24]  187 	mov	r0,_bp
      0026EA 08               [12]  188 	inc	r0
      0026EB 86 05            [24]  189 	mov	ar5,@r0
      0026ED 74 20            [12]  190 	mov	a,#0x20
      0026EF 08               [12]  191 	inc	r0
      0026F0 26               [12]  192 	add	a,@r0
      0026F1 FE               [12]  193 	mov	r6,a
      0026F2 08               [12]  194 	inc	r0
      0026F3 86 07            [24]  195 	mov	ar7,@r0
      0026F5 8D 82            [24]  196 	mov	dpl,r5
      0026F7 8E 83            [24]  197 	mov	dph,r6
      0026F9 8F F0            [24]  198 	mov	b,r7
      0026FB 12 53 AB         [24]  199 	lcall	__gptrget
      0026FE FD               [12]  200 	mov	r5,a
      0026FF A3               [24]  201 	inc	dptr
      002700 12 53 AB         [24]  202 	lcall	__gptrget
      002703 FE               [12]  203 	mov	r6,a
      002704 1D               [12]  204 	dec	r5
      002705 BD FF 01         [24]  205 	cjne	r5,#0xff,00109$
      002708 1E               [12]  206 	dec	r6
      002709                        207 00109$:
      002709 E5 08            [12]  208 	mov	a,_bp
      00270B 24 04            [12]  209 	add	a,#0x04
      00270D F8               [12]  210 	mov	r0,a
      00270E E6               [12]  211 	mov	a,@r0
      00270F B5 05 07         [24]  212 	cjne	a,ar5,00110$
      002712 08               [12]  213 	inc	r0
      002713 E6               [12]  214 	mov	a,@r0
      002714 B5 06 02         [24]  215 	cjne	a,ar6,00110$
      002717 80 02            [24]  216 	sjmp	00111$
      002719                        217 00110$:
      002719 80 05            [24]  218 	sjmp	00102$
      00271B                        219 00111$:
      00271B 90 00 00         [24]  220 	mov	dptr,#0x0000
      00271E 80 59            [24]  221 	sjmp	00103$
      002720                        222 00102$:
                                    223 ;	stack.c:13: s->p++;
      002720 E5 08            [12]  224 	mov	a,_bp
      002722 24 04            [12]  225 	add	a,#0x04
      002724 F8               [12]  226 	mov	r0,a
      002725 74 01            [12]  227 	mov	a,#0x01
      002727 26               [12]  228 	add	a,@r0
      002728 FE               [12]  229 	mov	r6,a
      002729 E4               [12]  230 	clr	a
      00272A 08               [12]  231 	inc	r0
      00272B 36               [12]  232 	addc	a,@r0
      00272C FF               [12]  233 	mov	r7,a
      00272D 8A 82            [24]  234 	mov	dpl,r2
      00272F 8B 83            [24]  235 	mov	dph,r3
      002731 8C F0            [24]  236 	mov	b,r4
      002733 EE               [12]  237 	mov	a,r6
      002734 12 4F 30         [24]  238 	lcall	__gptrput
      002737 A3               [24]  239 	inc	dptr
      002738 EF               [12]  240 	mov	a,r7
      002739 12 4F 30         [24]  241 	lcall	__gptrput
                                    242 ;	stack.c:14: s->data[s->p] = val;
      00273C EE               [12]  243 	mov	a,r6
      00273D 2E               [12]  244 	add	a,r6
      00273E FE               [12]  245 	mov	r6,a
      00273F EF               [12]  246 	mov	a,r7
      002740 33               [12]  247 	rlc	a
      002741 FF               [12]  248 	mov	r7,a
      002742 EE               [12]  249 	mov	a,r6
      002743 2E               [12]  250 	add	a,r6
      002744 FE               [12]  251 	mov	r6,a
      002745 EF               [12]  252 	mov	a,r7
      002746 33               [12]  253 	rlc	a
      002747 FF               [12]  254 	mov	r7,a
      002748 A8 08            [24]  255 	mov	r0,_bp
      00274A 08               [12]  256 	inc	r0
      00274B EE               [12]  257 	mov	a,r6
      00274C 26               [12]  258 	add	a,@r0
      00274D FE               [12]  259 	mov	r6,a
      00274E EF               [12]  260 	mov	a,r7
      00274F 08               [12]  261 	inc	r0
      002750 36               [12]  262 	addc	a,@r0
      002751 FF               [12]  263 	mov	r7,a
      002752 08               [12]  264 	inc	r0
      002753 86 05            [24]  265 	mov	ar5,@r0
      002755 8E 82            [24]  266 	mov	dpl,r6
      002757 8F 83            [24]  267 	mov	dph,r7
      002759 8D F0            [24]  268 	mov	b,r5
      00275B E5 08            [12]  269 	mov	a,_bp
      00275D 24 FA            [12]  270 	add	a,#0xfa
      00275F F8               [12]  271 	mov	r0,a
      002760 E6               [12]  272 	mov	a,@r0
      002761 12 4F 30         [24]  273 	lcall	__gptrput
      002764 A3               [24]  274 	inc	dptr
      002765 08               [12]  275 	inc	r0
      002766 E6               [12]  276 	mov	a,@r0
      002767 12 4F 30         [24]  277 	lcall	__gptrput
      00276A A3               [24]  278 	inc	dptr
      00276B 08               [12]  279 	inc	r0
      00276C E6               [12]  280 	mov	a,@r0
      00276D 12 4F 30         [24]  281 	lcall	__gptrput
      002770 A3               [24]  282 	inc	dptr
      002771 08               [12]  283 	inc	r0
      002772 E6               [12]  284 	mov	a,@r0
      002773 12 4F 30         [24]  285 	lcall	__gptrput
                                    286 ;	stack.c:15: return 1;
      002776 90 00 01         [24]  287 	mov	dptr,#0x0001
      002779                        288 00103$:
                                    289 ;	stack.c:16: }
      002779 85 08 81         [24]  290 	mov	sp,_bp
      00277C D0 08            [24]  291 	pop	_bp
      00277E 22               [24]  292 	ret
                                    293 ;------------------------------------------------------------
                                    294 ;Allocation info for local variables in function 'stack_pop'
                                    295 ;------------------------------------------------------------
                                    296 ;val                       Allocated to stack - _bp -5
                                    297 ;s                         Allocated to registers r5 r3 r4 
                                    298 ;sloc0                     Allocated to stack - _bp +4
                                    299 ;sloc1                     Allocated to stack - _bp +1
                                    300 ;sloc2                     Allocated to stack - _bp +4
                                    301 ;------------------------------------------------------------
                                    302 ;	stack.c:18: int stack_pop(stack_t *s, long *val) __reentrant {
                                    303 ;	-----------------------------------------
                                    304 ;	 function stack_pop
                                    305 ;	-----------------------------------------
      00277F                        306 _stack_pop:
      00277F C0 08            [24]  307 	push	_bp
      002781 E5 81            [12]  308 	mov	a,sp
      002783 F5 08            [12]  309 	mov	_bp,a
      002785 24 06            [12]  310 	add	a,#0x06
      002787 F5 81            [12]  311 	mov	sp,a
      002789 AD 82            [24]  312 	mov	r5,dpl
      00278B AB 83            [24]  313 	mov	r3,dph
      00278D AC F0            [24]  314 	mov	r4,b
                                    315 ;	stack.c:19: if (s->p < 0) return 0;
      00278F E5 08            [12]  316 	mov	a,_bp
      002791 24 04            [12]  317 	add	a,#0x04
      002793 F8               [12]  318 	mov	r0,a
      002794 74 02            [12]  319 	mov	a,#0x02
      002796 2D               [12]  320 	add	a,r5
      002797 F6               [12]  321 	mov	@r0,a
      002798 74 20            [12]  322 	mov	a,#0x20
      00279A 3B               [12]  323 	addc	a,r3
      00279B 08               [12]  324 	inc	r0
      00279C F6               [12]  325 	mov	@r0,a
      00279D 08               [12]  326 	inc	r0
      00279E A6 04            [24]  327 	mov	@r0,ar4
      0027A0 E5 08            [12]  328 	mov	a,_bp
      0027A2 24 04            [12]  329 	add	a,#0x04
      0027A4 F8               [12]  330 	mov	r0,a
      0027A5 86 82            [24]  331 	mov	dpl,@r0
      0027A7 08               [12]  332 	inc	r0
      0027A8 86 83            [24]  333 	mov	dph,@r0
      0027AA 08               [12]  334 	inc	r0
      0027AB 86 F0            [24]  335 	mov	b,@r0
      0027AD 12 53 AB         [24]  336 	lcall	__gptrget
      0027B0 FF               [12]  337 	mov	r7,a
      0027B1 A3               [24]  338 	inc	dptr
      0027B2 12 53 AB         [24]  339 	lcall	__gptrget
      0027B5 FE               [12]  340 	mov	r6,a
      0027B6 30 E7 06         [24]  341 	jnb	acc.7,00102$
      0027B9 90 00 00         [24]  342 	mov	dptr,#0x0000
      0027BC 02 28 50         [24]  343 	ljmp	00103$
      0027BF                        344 00102$:
                                    345 ;	stack.c:20: *val = s->data[s->p];
      0027BF E5 08            [12]  346 	mov	a,_bp
      0027C1 24 FB            [12]  347 	add	a,#0xfb
      0027C3 F8               [12]  348 	mov	r0,a
      0027C4 A9 08            [24]  349 	mov	r1,_bp
      0027C6 09               [12]  350 	inc	r1
      0027C7 E6               [12]  351 	mov	a,@r0
      0027C8 F7               [12]  352 	mov	@r1,a
      0027C9 08               [12]  353 	inc	r0
      0027CA 09               [12]  354 	inc	r1
      0027CB E6               [12]  355 	mov	a,@r0
      0027CC F7               [12]  356 	mov	@r1,a
      0027CD 08               [12]  357 	inc	r0
      0027CE 09               [12]  358 	inc	r1
      0027CF E6               [12]  359 	mov	a,@r0
      0027D0 F7               [12]  360 	mov	@r1,a
      0027D1 EF               [12]  361 	mov	a,r7
      0027D2 2F               [12]  362 	add	a,r7
      0027D3 FF               [12]  363 	mov	r7,a
      0027D4 EE               [12]  364 	mov	a,r6
      0027D5 33               [12]  365 	rlc	a
      0027D6 FE               [12]  366 	mov	r6,a
      0027D7 EF               [12]  367 	mov	a,r7
      0027D8 2F               [12]  368 	add	a,r7
      0027D9 FF               [12]  369 	mov	r7,a
      0027DA EE               [12]  370 	mov	a,r6
      0027DB 33               [12]  371 	rlc	a
      0027DC FE               [12]  372 	mov	r6,a
      0027DD EF               [12]  373 	mov	a,r7
      0027DE 2D               [12]  374 	add	a,r5
      0027DF FD               [12]  375 	mov	r5,a
      0027E0 EE               [12]  376 	mov	a,r6
      0027E1 3B               [12]  377 	addc	a,r3
      0027E2 FE               [12]  378 	mov	r6,a
      0027E3 8C 07            [24]  379 	mov	ar7,r4
      0027E5 8D 82            [24]  380 	mov	dpl,r5
      0027E7 8E 83            [24]  381 	mov	dph,r6
      0027E9 8F F0            [24]  382 	mov	b,r7
      0027EB 12 53 AB         [24]  383 	lcall	__gptrget
      0027EE FD               [12]  384 	mov	r5,a
      0027EF A3               [24]  385 	inc	dptr
      0027F0 12 53 AB         [24]  386 	lcall	__gptrget
      0027F3 FE               [12]  387 	mov	r6,a
      0027F4 A3               [24]  388 	inc	dptr
      0027F5 12 53 AB         [24]  389 	lcall	__gptrget
      0027F8 FC               [12]  390 	mov	r4,a
      0027F9 A3               [24]  391 	inc	dptr
      0027FA 12 53 AB         [24]  392 	lcall	__gptrget
      0027FD FF               [12]  393 	mov	r7,a
      0027FE A8 08            [24]  394 	mov	r0,_bp
      002800 08               [12]  395 	inc	r0
      002801 86 82            [24]  396 	mov	dpl,@r0
      002803 08               [12]  397 	inc	r0
      002804 86 83            [24]  398 	mov	dph,@r0
      002806 08               [12]  399 	inc	r0
      002807 86 F0            [24]  400 	mov	b,@r0
      002809 ED               [12]  401 	mov	a,r5
      00280A 12 4F 30         [24]  402 	lcall	__gptrput
      00280D A3               [24]  403 	inc	dptr
      00280E EE               [12]  404 	mov	a,r6
      00280F 12 4F 30         [24]  405 	lcall	__gptrput
      002812 A3               [24]  406 	inc	dptr
      002813 EC               [12]  407 	mov	a,r4
      002814 12 4F 30         [24]  408 	lcall	__gptrput
      002817 A3               [24]  409 	inc	dptr
      002818 EF               [12]  410 	mov	a,r7
      002819 12 4F 30         [24]  411 	lcall	__gptrput
                                    412 ;	stack.c:21: s->p--;
      00281C E5 08            [12]  413 	mov	a,_bp
      00281E 24 04            [12]  414 	add	a,#0x04
      002820 F8               [12]  415 	mov	r0,a
      002821 86 82            [24]  416 	mov	dpl,@r0
      002823 08               [12]  417 	inc	r0
      002824 86 83            [24]  418 	mov	dph,@r0
      002826 08               [12]  419 	inc	r0
      002827 86 F0            [24]  420 	mov	b,@r0
      002829 12 53 AB         [24]  421 	lcall	__gptrget
      00282C FE               [12]  422 	mov	r6,a
      00282D A3               [24]  423 	inc	dptr
      00282E 12 53 AB         [24]  424 	lcall	__gptrget
      002831 FF               [12]  425 	mov	r7,a
      002832 1E               [12]  426 	dec	r6
      002833 BE FF 01         [24]  427 	cjne	r6,#0xff,00110$
      002836 1F               [12]  428 	dec	r7
      002837                        429 00110$:
      002837 E5 08            [12]  430 	mov	a,_bp
      002839 24 04            [12]  431 	add	a,#0x04
      00283B F8               [12]  432 	mov	r0,a
      00283C 86 82            [24]  433 	mov	dpl,@r0
      00283E 08               [12]  434 	inc	r0
      00283F 86 83            [24]  435 	mov	dph,@r0
      002841 08               [12]  436 	inc	r0
      002842 86 F0            [24]  437 	mov	b,@r0
      002844 EE               [12]  438 	mov	a,r6
      002845 12 4F 30         [24]  439 	lcall	__gptrput
      002848 A3               [24]  440 	inc	dptr
      002849 EF               [12]  441 	mov	a,r7
      00284A 12 4F 30         [24]  442 	lcall	__gptrput
                                    443 ;	stack.c:22: return 1;
      00284D 90 00 01         [24]  444 	mov	dptr,#0x0001
      002850                        445 00103$:
                                    446 ;	stack.c:23: }
      002850 85 08 81         [24]  447 	mov	sp,_bp
      002853 D0 08            [24]  448 	pop	_bp
      002855 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'stack_peek'
                                    452 ;------------------------------------------------------------
                                    453 ;val                       Allocated to stack - _bp -5
                                    454 ;s                         Allocated to registers r7 r6 r5 
                                    455 ;sloc0                     Allocated to stack - _bp +1
                                    456 ;------------------------------------------------------------
                                    457 ;	stack.c:25: int stack_peek(stack_t *s, long *val) __reentrant {
                                    458 ;	-----------------------------------------
                                    459 ;	 function stack_peek
                                    460 ;	-----------------------------------------
      002856                        461 _stack_peek:
      002856 C0 08            [24]  462 	push	_bp
      002858 85 81 08         [24]  463 	mov	_bp,sp
      00285B 05 81            [12]  464 	inc	sp
      00285D 05 81            [12]  465 	inc	sp
      00285F 05 81            [12]  466 	inc	sp
      002861 AF 82            [24]  467 	mov	r7,dpl
      002863 AE 83            [24]  468 	mov	r6,dph
      002865 AD F0            [24]  469 	mov	r5,b
                                    470 ;	stack.c:26: if (s->p < 0) return 0;
      002867 74 02            [12]  471 	mov	a,#0x02
      002869 2F               [12]  472 	add	a,r7
      00286A FB               [12]  473 	mov	r3,a
      00286B 74 20            [12]  474 	mov	a,#0x20
      00286D 3E               [12]  475 	addc	a,r6
      00286E FA               [12]  476 	mov	r2,a
      00286F 8D 04            [24]  477 	mov	ar4,r5
      002871 8B 82            [24]  478 	mov	dpl,r3
      002873 8A 83            [24]  479 	mov	dph,r2
      002875 8C F0            [24]  480 	mov	b,r4
      002877 12 53 AB         [24]  481 	lcall	__gptrget
      00287A FB               [12]  482 	mov	r3,a
      00287B A3               [24]  483 	inc	dptr
      00287C 12 53 AB         [24]  484 	lcall	__gptrget
      00287F FC               [12]  485 	mov	r4,a
      002880 30 E7 05         [24]  486 	jnb	acc.7,00102$
      002883 90 00 00         [24]  487 	mov	dptr,#0x0000
      002886 80 5E            [24]  488 	sjmp	00103$
      002888                        489 00102$:
                                    490 ;	stack.c:27: *val = s->data[s->p];
      002888 E5 08            [12]  491 	mov	a,_bp
      00288A 24 FB            [12]  492 	add	a,#0xfb
      00288C F8               [12]  493 	mov	r0,a
      00288D A9 08            [24]  494 	mov	r1,_bp
      00288F 09               [12]  495 	inc	r1
      002890 E6               [12]  496 	mov	a,@r0
      002891 F7               [12]  497 	mov	@r1,a
      002892 08               [12]  498 	inc	r0
      002893 09               [12]  499 	inc	r1
      002894 E6               [12]  500 	mov	a,@r0
      002895 F7               [12]  501 	mov	@r1,a
      002896 08               [12]  502 	inc	r0
      002897 09               [12]  503 	inc	r1
      002898 E6               [12]  504 	mov	a,@r0
      002899 F7               [12]  505 	mov	@r1,a
      00289A EB               [12]  506 	mov	a,r3
      00289B 2B               [12]  507 	add	a,r3
      00289C FB               [12]  508 	mov	r3,a
      00289D EC               [12]  509 	mov	a,r4
      00289E 33               [12]  510 	rlc	a
      00289F FC               [12]  511 	mov	r4,a
      0028A0 EB               [12]  512 	mov	a,r3
      0028A1 2B               [12]  513 	add	a,r3
      0028A2 FB               [12]  514 	mov	r3,a
      0028A3 EC               [12]  515 	mov	a,r4
      0028A4 33               [12]  516 	rlc	a
      0028A5 FC               [12]  517 	mov	r4,a
      0028A6 EB               [12]  518 	mov	a,r3
      0028A7 2F               [12]  519 	add	a,r7
      0028A8 FB               [12]  520 	mov	r3,a
      0028A9 EC               [12]  521 	mov	a,r4
      0028AA 3E               [12]  522 	addc	a,r6
      0028AB FC               [12]  523 	mov	r4,a
      0028AC 8B 82            [24]  524 	mov	dpl,r3
      0028AE 8C 83            [24]  525 	mov	dph,r4
      0028B0 8D F0            [24]  526 	mov	b,r5
      0028B2 12 53 AB         [24]  527 	lcall	__gptrget
      0028B5 FB               [12]  528 	mov	r3,a
      0028B6 A3               [24]  529 	inc	dptr
      0028B7 12 53 AB         [24]  530 	lcall	__gptrget
      0028BA FC               [12]  531 	mov	r4,a
      0028BB A3               [24]  532 	inc	dptr
      0028BC 12 53 AB         [24]  533 	lcall	__gptrget
      0028BF FD               [12]  534 	mov	r5,a
      0028C0 A3               [24]  535 	inc	dptr
      0028C1 12 53 AB         [24]  536 	lcall	__gptrget
      0028C4 FF               [12]  537 	mov	r7,a
      0028C5 A8 08            [24]  538 	mov	r0,_bp
      0028C7 08               [12]  539 	inc	r0
      0028C8 86 82            [24]  540 	mov	dpl,@r0
      0028CA 08               [12]  541 	inc	r0
      0028CB 86 83            [24]  542 	mov	dph,@r0
      0028CD 08               [12]  543 	inc	r0
      0028CE 86 F0            [24]  544 	mov	b,@r0
      0028D0 EB               [12]  545 	mov	a,r3
      0028D1 12 4F 30         [24]  546 	lcall	__gptrput
      0028D4 A3               [24]  547 	inc	dptr
      0028D5 EC               [12]  548 	mov	a,r4
      0028D6 12 4F 30         [24]  549 	lcall	__gptrput
      0028D9 A3               [24]  550 	inc	dptr
      0028DA ED               [12]  551 	mov	a,r5
      0028DB 12 4F 30         [24]  552 	lcall	__gptrput
      0028DE A3               [24]  553 	inc	dptr
      0028DF EF               [12]  554 	mov	a,r7
      0028E0 12 4F 30         [24]  555 	lcall	__gptrput
                                    556 ;	stack.c:28: return 1;
      0028E3 90 00 01         [24]  557 	mov	dptr,#0x0001
      0028E6                        558 00103$:
                                    559 ;	stack.c:29: }
      0028E6 85 08 81         [24]  560 	mov	sp,_bp
      0028E9 D0 08            [24]  561 	pop	_bp
      0028EB 22               [24]  562 	ret
                                    563 ;------------------------------------------------------------
                                    564 ;Allocation info for local variables in function 'stack_iter_peek'
                                    565 ;------------------------------------------------------------
                                    566 ;iter                      Allocated to stack - _bp -4
                                    567 ;_ctx                      Allocated to stack - _bp -7
                                    568 ;s                         Allocated to stack - _bp +1
                                    569 ;j                         Allocated to registers 
                                    570 ;r                         Allocated to registers r2 r7 
                                    571 ;------------------------------------------------------------
                                    572 ;	stack.c:31: int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant {
                                    573 ;	-----------------------------------------
                                    574 ;	 function stack_iter_peek
                                    575 ;	-----------------------------------------
      0028EC                        576 _stack_iter_peek:
      0028EC C0 08            [24]  577 	push	_bp
      0028EE 85 81 08         [24]  578 	mov	_bp,sp
      0028F1 C0 82            [24]  579 	push	dpl
      0028F3 C0 83            [24]  580 	push	dph
      0028F5 C0 F0            [24]  581 	push	b
                                    582 ;	stack.c:34: if (s->p < 0) return 0;
      0028F7 A8 08            [24]  583 	mov	r0,_bp
      0028F9 08               [12]  584 	inc	r0
      0028FA 74 02            [12]  585 	mov	a,#0x02
      0028FC 26               [12]  586 	add	a,@r0
      0028FD FB               [12]  587 	mov	r3,a
      0028FE 74 20            [12]  588 	mov	a,#0x20
      002900 08               [12]  589 	inc	r0
      002901 36               [12]  590 	addc	a,@r0
      002902 FA               [12]  591 	mov	r2,a
      002903 08               [12]  592 	inc	r0
      002904 86 04            [24]  593 	mov	ar4,@r0
      002906 8B 82            [24]  594 	mov	dpl,r3
      002908 8A 83            [24]  595 	mov	dph,r2
      00290A 8C F0            [24]  596 	mov	b,r4
      00290C 12 53 AB         [24]  597 	lcall	__gptrget
      00290F FB               [12]  598 	mov	r3,a
      002910 A3               [24]  599 	inc	dptr
      002911 12 53 AB         [24]  600 	lcall	__gptrget
      002914 FC               [12]  601 	mov	r4,a
      002915 30 E7 06         [24]  602 	jnb	acc.7,00102$
      002918 90 00 00         [24]  603 	mov	dptr,#0x0000
      00291B 02 29 BA         [24]  604 	ljmp	00109$
      00291E                        605 00102$:
                                    606 ;	stack.c:36: for (j = s->p, r = 0; j >= 0; j--) {
      00291E 7A 00            [12]  607 	mov	r2,#0x00
      002920 7F 00            [12]  608 	mov	r7,#0x00
      002922                        609 00107$:
      002922 EC               [12]  610 	mov	a,r4
      002923 30 E7 03         [24]  611 	jnb	acc.7,00129$
      002926 02 29 B6         [24]  612 	ljmp	00105$
      002929                        613 00129$:
                                    614 ;	stack.c:37: r = iter(_ctx, s->data[j]);
      002929 EB               [12]  615 	mov	a,r3
      00292A 2B               [12]  616 	add	a,r3
      00292B FD               [12]  617 	mov	r5,a
      00292C EC               [12]  618 	mov	a,r4
      00292D 33               [12]  619 	rlc	a
      00292E FE               [12]  620 	mov	r6,a
      00292F ED               [12]  621 	mov	a,r5
      002930 2D               [12]  622 	add	a,r5
      002931 FD               [12]  623 	mov	r5,a
      002932 EE               [12]  624 	mov	a,r6
      002933 33               [12]  625 	rlc	a
      002934 FE               [12]  626 	mov	r6,a
      002935 C0 03            [24]  627 	push	ar3
      002937 C0 04            [24]  628 	push	ar4
      002939 A8 08            [24]  629 	mov	r0,_bp
      00293B 08               [12]  630 	inc	r0
      00293C ED               [12]  631 	mov	a,r5
      00293D 26               [12]  632 	add	a,@r0
      00293E FD               [12]  633 	mov	r5,a
      00293F EE               [12]  634 	mov	a,r6
      002940 08               [12]  635 	inc	r0
      002941 36               [12]  636 	addc	a,@r0
      002942 FC               [12]  637 	mov	r4,a
      002943 08               [12]  638 	inc	r0
      002944 86 06            [24]  639 	mov	ar6,@r0
      002946 8D 82            [24]  640 	mov	dpl,r5
      002948 8C 83            [24]  641 	mov	dph,r4
      00294A 8E F0            [24]  642 	mov	b,r6
      00294C 12 53 AB         [24]  643 	lcall	__gptrget
      00294F FD               [12]  644 	mov	r5,a
      002950 A3               [24]  645 	inc	dptr
      002951 12 53 AB         [24]  646 	lcall	__gptrget
      002954 FC               [12]  647 	mov	r4,a
      002955 A3               [24]  648 	inc	dptr
      002956 12 53 AB         [24]  649 	lcall	__gptrget
      002959 FE               [12]  650 	mov	r6,a
      00295A A3               [24]  651 	inc	dptr
      00295B 12 53 AB         [24]  652 	lcall	__gptrget
      00295E FB               [12]  653 	mov	r3,a
      00295F C0 04            [24]  654 	push	ar4
      002961 C0 03            [24]  655 	push	ar3
      002963 C0 05            [24]  656 	push	ar5
      002965 C0 04            [24]  657 	push	ar4
      002967 C0 06            [24]  658 	push	ar6
      002969 C0 03            [24]  659 	push	ar3
      00296B 12 29 70         [24]  660 	lcall	00130$
      00296E 80 1A            [24]  661 	sjmp	00131$
      002970                        662 00130$:
      002970 E5 08            [12]  663 	mov	a,_bp
      002972 24 FC            [12]  664 	add	a,#0xfc
      002974 F8               [12]  665 	mov	r0,a
      002975 E6               [12]  666 	mov	a,@r0
      002976 C0 E0            [24]  667 	push	acc
      002978 08               [12]  668 	inc	r0
      002979 E6               [12]  669 	mov	a,@r0
      00297A C0 E0            [24]  670 	push	acc
      00297C E5 08            [12]  671 	mov	a,_bp
      00297E 24 F9            [12]  672 	add	a,#0xf9
      002980 F8               [12]  673 	mov	r0,a
      002981 86 82            [24]  674 	mov	dpl,@r0
      002983 08               [12]  675 	inc	r0
      002984 86 83            [24]  676 	mov	dph,@r0
      002986 08               [12]  677 	inc	r0
      002987 86 F0            [24]  678 	mov	b,@r0
      002989 22               [24]  679 	ret
      00298A                        680 00131$:
      00298A AD 82            [24]  681 	mov	r5,dpl
      00298C AE 83            [24]  682 	mov	r6,dph
      00298E E5 81            [12]  683 	mov	a,sp
      002990 24 FC            [12]  684 	add	a,#0xfc
      002992 F5 81            [12]  685 	mov	sp,a
      002994 D0 03            [24]  686 	pop	ar3
      002996 D0 04            [24]  687 	pop	ar4
      002998 8D 02            [24]  688 	mov	ar2,r5
      00299A 8E 07            [24]  689 	mov	ar7,r6
                                    690 ;	stack.c:38: if (r <= 0) break;
      00299C C3               [12]  691 	clr	c
      00299D E4               [12]  692 	clr	a
      00299E 9A               [12]  693 	subb	a,r2
      00299F 74 80            [12]  694 	mov	a,#(0x00 ^ 0x80)
      0029A1 8F F0            [24]  695 	mov	b,r7
      0029A3 63 F0 80         [24]  696 	xrl	b,#0x80
      0029A6 95 F0            [12]  697 	subb	a,b
      0029A8 D0 04            [24]  698 	pop	ar4
      0029AA D0 03            [24]  699 	pop	ar3
      0029AC 50 08            [24]  700 	jnc	00105$
                                    701 ;	stack.c:36: for (j = s->p, r = 0; j >= 0; j--) {
      0029AE 1B               [12]  702 	dec	r3
      0029AF BB FF 01         [24]  703 	cjne	r3,#0xff,00133$
      0029B2 1C               [12]  704 	dec	r4
      0029B3                        705 00133$:
      0029B3 02 29 22         [24]  706 	ljmp	00107$
      0029B6                        707 00105$:
                                    708 ;	stack.c:41: return r;
      0029B6 8A 82            [24]  709 	mov	dpl,r2
      0029B8 8F 83            [24]  710 	mov	dph,r7
      0029BA                        711 00109$:
                                    712 ;	stack.c:42: }
      0029BA 85 08 81         [24]  713 	mov	sp,_bp
      0029BD D0 08            [24]  714 	pop	_bp
      0029BF 22               [24]  715 	ret
                                    716 	.area CSEG    (CODE)
                                    717 	.area CONST   (CODE)
                                    718 	.area XINIT   (CODE)
                                    719 	.area CABS    (ABS,CODE)
