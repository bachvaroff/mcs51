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
                                     15 	.globl _stack_peek2
                                     16 	.globl _stack_iter_peek
                                     17 ;--------------------------------------------------------
                                     18 ; special function registers
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; special function bits
                                     24 ;--------------------------------------------------------
                                     25 	.area RSEG    (ABS,DATA)
      000000                         26 	.org 0x0000
                                     27 ;--------------------------------------------------------
                                     28 ; overlayable register banks
                                     29 ;--------------------------------------------------------
                                     30 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         31 	.ds 8
                                     32 ;--------------------------------------------------------
                                     33 ; internal ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DSEG    (DATA)
                                     36 ;--------------------------------------------------------
                                     37 ; overlayable items in internal ram 
                                     38 ;--------------------------------------------------------
                                     39 ;--------------------------------------------------------
                                     40 ; indirectly addressable internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area ISEG    (DATA)
                                     43 ;--------------------------------------------------------
                                     44 ; absolute internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area IABS    (ABS,DATA)
                                     47 	.area IABS    (ABS,DATA)
                                     48 ;--------------------------------------------------------
                                     49 ; bit data
                                     50 ;--------------------------------------------------------
                                     51 	.area BSEG    (BIT)
                                     52 ;--------------------------------------------------------
                                     53 ; paged external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area PSEG    (PAG,XDATA)
                                     56 ;--------------------------------------------------------
                                     57 ; external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XSEG    (XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; absolute external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XABS    (ABS,XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; external initialized ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XISEG   (XDATA)
                                     68 	.area HOME    (CODE)
                                     69 	.area GSINIT0 (CODE)
                                     70 	.area GSINIT1 (CODE)
                                     71 	.area GSINIT2 (CODE)
                                     72 	.area GSINIT3 (CODE)
                                     73 	.area GSINIT4 (CODE)
                                     74 	.area GSINIT5 (CODE)
                                     75 	.area GSINIT  (CODE)
                                     76 	.area GSFINAL (CODE)
                                     77 	.area CSEG    (CODE)
                                     78 ;--------------------------------------------------------
                                     79 ; global & static initialisations
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME    (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 	.area GSFINAL (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 ;--------------------------------------------------------
                                     86 ; Home
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME    (CODE)
                                     89 	.area HOME    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; code
                                     92 ;--------------------------------------------------------
                                     93 	.area CSEG    (CODE)
                                     94 ;------------------------------------------------------------
                                     95 ;Allocation info for local variables in function 'stack_init'
                                     96 ;------------------------------------------------------------
                                     97 ;s                         Allocated to registers r5 r6 r7 
                                     98 ;------------------------------------------------------------
                                     99 ;	stack.c:6: void stack_init(stack_t *s) __reentrant {
                                    100 ;	-----------------------------------------
                                    101 ;	 function stack_init
                                    102 ;	-----------------------------------------
      002680                        103 _stack_init:
                           000007   104 	ar7 = 0x07
                           000006   105 	ar6 = 0x06
                           000005   106 	ar5 = 0x05
                           000004   107 	ar4 = 0x04
                           000003   108 	ar3 = 0x03
                           000002   109 	ar2 = 0x02
                           000001   110 	ar1 = 0x01
                           000000   111 	ar0 = 0x00
      002680 AD 82            [24]  112 	mov	r5,dpl
      002682 AE 83            [24]  113 	mov	r6,dph
      002684 AF F0            [24]  114 	mov	r7,b
                                    115 ;	stack.c:7: s->N = SIZE;
      002686 8D 02            [24]  116 	mov	ar2,r5
      002688 74 20            [12]  117 	mov	a,#0x20
      00268A 2E               [12]  118 	add	a,r6
      00268B FB               [12]  119 	mov	r3,a
      00268C 8F 04            [24]  120 	mov	ar4,r7
      00268E 8A 82            [24]  121 	mov	dpl,r2
      002690 8B 83            [24]  122 	mov	dph,r3
      002692 8C F0            [24]  123 	mov	b,r4
      002694 E4               [12]  124 	clr	a
      002695 12 6C 5F         [24]  125 	lcall	__gptrput
      002698 A3               [24]  126 	inc	dptr
      002699 74 08            [12]  127 	mov	a,#0x08
      00269B 12 6C 5F         [24]  128 	lcall	__gptrput
                                    129 ;	stack.c:8: s->p = -1;
      00269E 74 02            [12]  130 	mov	a,#0x02
      0026A0 2D               [12]  131 	add	a,r5
      0026A1 FD               [12]  132 	mov	r5,a
      0026A2 74 20            [12]  133 	mov	a,#0x20
      0026A4 3E               [12]  134 	addc	a,r6
      0026A5 FE               [12]  135 	mov	r6,a
      0026A6 8D 82            [24]  136 	mov	dpl,r5
      0026A8 8E 83            [24]  137 	mov	dph,r6
      0026AA 8F F0            [24]  138 	mov	b,r7
      0026AC 74 FF            [12]  139 	mov	a,#0xff
      0026AE 12 6C 5F         [24]  140 	lcall	__gptrput
      0026B1 A3               [24]  141 	inc	dptr
                                    142 ;	stack.c:10: return;
                                    143 ;	stack.c:11: }
      0026B2 02 6C 5F         [24]  144 	ljmp	__gptrput
                                    145 ;------------------------------------------------------------
                                    146 ;Allocation info for local variables in function 'stack_push'
                                    147 ;------------------------------------------------------------
                                    148 ;val                       Allocated to stack - _bp -6
                                    149 ;s                         Allocated to stack - _bp +1
                                    150 ;sloc0                     Allocated to stack - _bp +4
                                    151 ;------------------------------------------------------------
                                    152 ;	stack.c:13: int stack_push(stack_t *s, long val) __reentrant {
                                    153 ;	-----------------------------------------
                                    154 ;	 function stack_push
                                    155 ;	-----------------------------------------
      0026B5                        156 _stack_push:
      0026B5 C0 08            [24]  157 	push	_bp
      0026B7 85 81 08         [24]  158 	mov	_bp,sp
      0026BA C0 82            [24]  159 	push	dpl
      0026BC C0 83            [24]  160 	push	dph
      0026BE C0 F0            [24]  161 	push	b
      0026C0 05 81            [12]  162 	inc	sp
      0026C2 05 81            [12]  163 	inc	sp
                                    164 ;	stack.c:14: if (s->p == (s->N - 1)) return 0;
      0026C4 A8 08            [24]  165 	mov	r0,_bp
      0026C6 08               [12]  166 	inc	r0
      0026C7 74 02            [12]  167 	mov	a,#0x02
      0026C9 26               [12]  168 	add	a,@r0
      0026CA FA               [12]  169 	mov	r2,a
      0026CB 74 20            [12]  170 	mov	a,#0x20
      0026CD 08               [12]  171 	inc	r0
      0026CE 36               [12]  172 	addc	a,@r0
      0026CF FB               [12]  173 	mov	r3,a
      0026D0 08               [12]  174 	inc	r0
      0026D1 86 04            [24]  175 	mov	ar4,@r0
      0026D3 8A 82            [24]  176 	mov	dpl,r2
      0026D5 8B 83            [24]  177 	mov	dph,r3
      0026D7 8C F0            [24]  178 	mov	b,r4
      0026D9 E5 08            [12]  179 	mov	a,_bp
      0026DB 24 04            [12]  180 	add	a,#0x04
      0026DD F8               [12]  181 	mov	r0,a
      0026DE 12 70 DA         [24]  182 	lcall	__gptrget
      0026E1 F6               [12]  183 	mov	@r0,a
      0026E2 A3               [24]  184 	inc	dptr
      0026E3 12 70 DA         [24]  185 	lcall	__gptrget
      0026E6 08               [12]  186 	inc	r0
      0026E7 F6               [12]  187 	mov	@r0,a
      0026E8 A8 08            [24]  188 	mov	r0,_bp
      0026EA 08               [12]  189 	inc	r0
      0026EB 86 05            [24]  190 	mov	ar5,@r0
      0026ED 74 20            [12]  191 	mov	a,#0x20
      0026EF 08               [12]  192 	inc	r0
      0026F0 26               [12]  193 	add	a,@r0
      0026F1 FE               [12]  194 	mov	r6,a
      0026F2 08               [12]  195 	inc	r0
      0026F3 86 07            [24]  196 	mov	ar7,@r0
      0026F5 8D 82            [24]  197 	mov	dpl,r5
      0026F7 8E 83            [24]  198 	mov	dph,r6
      0026F9 8F F0            [24]  199 	mov	b,r7
      0026FB 12 70 DA         [24]  200 	lcall	__gptrget
      0026FE FD               [12]  201 	mov	r5,a
      0026FF A3               [24]  202 	inc	dptr
      002700 12 70 DA         [24]  203 	lcall	__gptrget
      002703 FE               [12]  204 	mov	r6,a
      002704 1D               [12]  205 	dec	r5
      002705 BD FF 01         [24]  206 	cjne	r5,#0xff,00109$
      002708 1E               [12]  207 	dec	r6
      002709                        208 00109$:
      002709 E5 08            [12]  209 	mov	a,_bp
      00270B 24 04            [12]  210 	add	a,#0x04
      00270D F8               [12]  211 	mov	r0,a
      00270E E6               [12]  212 	mov	a,@r0
      00270F B5 05 07         [24]  213 	cjne	a,ar5,00110$
      002712 08               [12]  214 	inc	r0
      002713 E6               [12]  215 	mov	a,@r0
      002714 B5 06 02         [24]  216 	cjne	a,ar6,00110$
      002717 80 02            [24]  217 	sjmp	00111$
      002719                        218 00110$:
      002719 80 05            [24]  219 	sjmp	00102$
      00271B                        220 00111$:
      00271B 90 00 00         [24]  221 	mov	dptr,#0x0000
      00271E 80 5D            [24]  222 	sjmp	00103$
      002720                        223 00102$:
                                    224 ;	stack.c:17: s->p++;
      002720 E5 08            [12]  225 	mov	a,_bp
      002722 24 04            [12]  226 	add	a,#0x04
      002724 F8               [12]  227 	mov	r0,a
      002725 74 01            [12]  228 	mov	a,#0x01
      002727 26               [12]  229 	add	a,@r0
      002728 FE               [12]  230 	mov	r6,a
      002729 E4               [12]  231 	clr	a
      00272A 08               [12]  232 	inc	r0
      00272B 36               [12]  233 	addc	a,@r0
      00272C FF               [12]  234 	mov	r7,a
      00272D 8A 82            [24]  235 	mov	dpl,r2
      00272F 8B 83            [24]  236 	mov	dph,r3
      002731 8C F0            [24]  237 	mov	b,r4
      002733 EE               [12]  238 	mov	a,r6
      002734 12 6C 5F         [24]  239 	lcall	__gptrput
      002737 A3               [24]  240 	inc	dptr
      002738 EF               [12]  241 	mov	a,r7
      002739 12 6C 5F         [24]  242 	lcall	__gptrput
                                    243 ;	stack.c:18: s->data[s->p] = val;
      00273C EE               [12]  244 	mov	a,r6
      00273D 2E               [12]  245 	add	a,r6
      00273E FE               [12]  246 	mov	r6,a
      00273F EF               [12]  247 	mov	a,r7
      002740 33               [12]  248 	rlc	a
      002741 FF               [12]  249 	mov	r7,a
      002742 EE               [12]  250 	mov	a,r6
      002743 2E               [12]  251 	add	a,r6
      002744 FE               [12]  252 	mov	r6,a
      002745 EF               [12]  253 	mov	a,r7
      002746 33               [12]  254 	rlc	a
      002747 FF               [12]  255 	mov	r7,a
      002748 A8 08            [24]  256 	mov	r0,_bp
      00274A 08               [12]  257 	inc	r0
      00274B EE               [12]  258 	mov	a,r6
      00274C 26               [12]  259 	add	a,@r0
      00274D FE               [12]  260 	mov	r6,a
      00274E EF               [12]  261 	mov	a,r7
      00274F 08               [12]  262 	inc	r0
      002750 36               [12]  263 	addc	a,@r0
      002751 FF               [12]  264 	mov	r7,a
      002752 08               [12]  265 	inc	r0
      002753 86 05            [24]  266 	mov	ar5,@r0
      002755 8E 82            [24]  267 	mov	dpl,r6
      002757 8F 83            [24]  268 	mov	dph,r7
      002759 8D F0            [24]  269 	mov	b,r5
      00275B E5 08            [12]  270 	mov	a,_bp
      00275D 24 FA            [12]  271 	add	a,#0xfa
      00275F F8               [12]  272 	mov	r0,a
      002760 E6               [12]  273 	mov	a,@r0
      002761 12 6C 5F         [24]  274 	lcall	__gptrput
      002764 A3               [24]  275 	inc	dptr
      002765 08               [12]  276 	inc	r0
      002766 E6               [12]  277 	mov	a,@r0
      002767 12 6C 5F         [24]  278 	lcall	__gptrput
      00276A A3               [24]  279 	inc	dptr
      00276B 08               [12]  280 	inc	r0
      00276C E6               [12]  281 	mov	a,@r0
      00276D 12 6C 5F         [24]  282 	lcall	__gptrput
      002770 A3               [24]  283 	inc	dptr
      002771 08               [12]  284 	inc	r0
      002772 E6               [12]  285 	mov	a,@r0
      002773 12 6C 5F         [24]  286 	lcall	__gptrput
                                    287 ;	stack.c:19: giant = 0;
      002776 78 09            [12]  288 	mov	r0,#_giant
      002778 76 00            [12]  289 	mov	@r0,#0x00
                                    290 ;	stack.c:21: return 1;
      00277A 90 00 01         [24]  291 	mov	dptr,#0x0001
      00277D                        292 00103$:
                                    293 ;	stack.c:22: }
      00277D 85 08 81         [24]  294 	mov	sp,_bp
      002780 D0 08            [24]  295 	pop	_bp
      002782 22               [24]  296 	ret
                                    297 ;------------------------------------------------------------
                                    298 ;Allocation info for local variables in function 'stack_pop'
                                    299 ;------------------------------------------------------------
                                    300 ;val                       Allocated to stack - _bp -5
                                    301 ;s                         Allocated to registers r5 r3 r4 
                                    302 ;sloc0                     Allocated to stack - _bp +4
                                    303 ;sloc1                     Allocated to stack - _bp +1
                                    304 ;sloc2                     Allocated to stack - _bp +4
                                    305 ;------------------------------------------------------------
                                    306 ;	stack.c:24: int stack_pop(stack_t *s, long *val) __reentrant {
                                    307 ;	-----------------------------------------
                                    308 ;	 function stack_pop
                                    309 ;	-----------------------------------------
      002783                        310 _stack_pop:
      002783 C0 08            [24]  311 	push	_bp
      002785 E5 81            [12]  312 	mov	a,sp
      002787 F5 08            [12]  313 	mov	_bp,a
      002789 24 06            [12]  314 	add	a,#0x06
      00278B F5 81            [12]  315 	mov	sp,a
      00278D AD 82            [24]  316 	mov	r5,dpl
      00278F AB 83            [24]  317 	mov	r3,dph
      002791 AC F0            [24]  318 	mov	r4,b
                                    319 ;	stack.c:25: if (s->p < 0) return 0;
      002793 E5 08            [12]  320 	mov	a,_bp
      002795 24 04            [12]  321 	add	a,#0x04
      002797 F8               [12]  322 	mov	r0,a
      002798 74 02            [12]  323 	mov	a,#0x02
      00279A 2D               [12]  324 	add	a,r5
      00279B F6               [12]  325 	mov	@r0,a
      00279C 74 20            [12]  326 	mov	a,#0x20
      00279E 3B               [12]  327 	addc	a,r3
      00279F 08               [12]  328 	inc	r0
      0027A0 F6               [12]  329 	mov	@r0,a
      0027A1 08               [12]  330 	inc	r0
      0027A2 A6 04            [24]  331 	mov	@r0,ar4
      0027A4 E5 08            [12]  332 	mov	a,_bp
      0027A6 24 04            [12]  333 	add	a,#0x04
      0027A8 F8               [12]  334 	mov	r0,a
      0027A9 86 82            [24]  335 	mov	dpl,@r0
      0027AB 08               [12]  336 	inc	r0
      0027AC 86 83            [24]  337 	mov	dph,@r0
      0027AE 08               [12]  338 	inc	r0
      0027AF 86 F0            [24]  339 	mov	b,@r0
      0027B1 12 70 DA         [24]  340 	lcall	__gptrget
      0027B4 FF               [12]  341 	mov	r7,a
      0027B5 A3               [24]  342 	inc	dptr
      0027B6 12 70 DA         [24]  343 	lcall	__gptrget
      0027B9 FE               [12]  344 	mov	r6,a
      0027BA 30 E7 06         [24]  345 	jnb	acc.7,00102$
      0027BD 90 00 00         [24]  346 	mov	dptr,#0x0000
      0027C0 02 28 58         [24]  347 	ljmp	00103$
      0027C3                        348 00102$:
                                    349 ;	stack.c:28: *val = s->data[s->p];
      0027C3 E5 08            [12]  350 	mov	a,_bp
      0027C5 24 FB            [12]  351 	add	a,#0xfb
      0027C7 F8               [12]  352 	mov	r0,a
      0027C8 A9 08            [24]  353 	mov	r1,_bp
      0027CA 09               [12]  354 	inc	r1
      0027CB E6               [12]  355 	mov	a,@r0
      0027CC F7               [12]  356 	mov	@r1,a
      0027CD 08               [12]  357 	inc	r0
      0027CE 09               [12]  358 	inc	r1
      0027CF E6               [12]  359 	mov	a,@r0
      0027D0 F7               [12]  360 	mov	@r1,a
      0027D1 08               [12]  361 	inc	r0
      0027D2 09               [12]  362 	inc	r1
      0027D3 E6               [12]  363 	mov	a,@r0
      0027D4 F7               [12]  364 	mov	@r1,a
      0027D5 EF               [12]  365 	mov	a,r7
      0027D6 2F               [12]  366 	add	a,r7
      0027D7 FF               [12]  367 	mov	r7,a
      0027D8 EE               [12]  368 	mov	a,r6
      0027D9 33               [12]  369 	rlc	a
      0027DA FE               [12]  370 	mov	r6,a
      0027DB EF               [12]  371 	mov	a,r7
      0027DC 2F               [12]  372 	add	a,r7
      0027DD FF               [12]  373 	mov	r7,a
      0027DE EE               [12]  374 	mov	a,r6
      0027DF 33               [12]  375 	rlc	a
      0027E0 FE               [12]  376 	mov	r6,a
      0027E1 EF               [12]  377 	mov	a,r7
      0027E2 2D               [12]  378 	add	a,r5
      0027E3 FD               [12]  379 	mov	r5,a
      0027E4 EE               [12]  380 	mov	a,r6
      0027E5 3B               [12]  381 	addc	a,r3
      0027E6 FE               [12]  382 	mov	r6,a
      0027E7 8C 07            [24]  383 	mov	ar7,r4
      0027E9 8D 82            [24]  384 	mov	dpl,r5
      0027EB 8E 83            [24]  385 	mov	dph,r6
      0027ED 8F F0            [24]  386 	mov	b,r7
      0027EF 12 70 DA         [24]  387 	lcall	__gptrget
      0027F2 FD               [12]  388 	mov	r5,a
      0027F3 A3               [24]  389 	inc	dptr
      0027F4 12 70 DA         [24]  390 	lcall	__gptrget
      0027F7 FE               [12]  391 	mov	r6,a
      0027F8 A3               [24]  392 	inc	dptr
      0027F9 12 70 DA         [24]  393 	lcall	__gptrget
      0027FC FC               [12]  394 	mov	r4,a
      0027FD A3               [24]  395 	inc	dptr
      0027FE 12 70 DA         [24]  396 	lcall	__gptrget
      002801 FF               [12]  397 	mov	r7,a
      002802 A8 08            [24]  398 	mov	r0,_bp
      002804 08               [12]  399 	inc	r0
      002805 86 82            [24]  400 	mov	dpl,@r0
      002807 08               [12]  401 	inc	r0
      002808 86 83            [24]  402 	mov	dph,@r0
      00280A 08               [12]  403 	inc	r0
      00280B 86 F0            [24]  404 	mov	b,@r0
      00280D ED               [12]  405 	mov	a,r5
      00280E 12 6C 5F         [24]  406 	lcall	__gptrput
      002811 A3               [24]  407 	inc	dptr
      002812 EE               [12]  408 	mov	a,r6
      002813 12 6C 5F         [24]  409 	lcall	__gptrput
      002816 A3               [24]  410 	inc	dptr
      002817 EC               [12]  411 	mov	a,r4
      002818 12 6C 5F         [24]  412 	lcall	__gptrput
      00281B A3               [24]  413 	inc	dptr
      00281C EF               [12]  414 	mov	a,r7
      00281D 12 6C 5F         [24]  415 	lcall	__gptrput
                                    416 ;	stack.c:29: s->p--;
      002820 E5 08            [12]  417 	mov	a,_bp
      002822 24 04            [12]  418 	add	a,#0x04
      002824 F8               [12]  419 	mov	r0,a
      002825 86 82            [24]  420 	mov	dpl,@r0
      002827 08               [12]  421 	inc	r0
      002828 86 83            [24]  422 	mov	dph,@r0
      00282A 08               [12]  423 	inc	r0
      00282B 86 F0            [24]  424 	mov	b,@r0
      00282D 12 70 DA         [24]  425 	lcall	__gptrget
      002830 FE               [12]  426 	mov	r6,a
      002831 A3               [24]  427 	inc	dptr
      002832 12 70 DA         [24]  428 	lcall	__gptrget
      002835 FF               [12]  429 	mov	r7,a
      002836 1E               [12]  430 	dec	r6
      002837 BE FF 01         [24]  431 	cjne	r6,#0xff,00110$
      00283A 1F               [12]  432 	dec	r7
      00283B                        433 00110$:
      00283B E5 08            [12]  434 	mov	a,_bp
      00283D 24 04            [12]  435 	add	a,#0x04
      00283F F8               [12]  436 	mov	r0,a
      002840 86 82            [24]  437 	mov	dpl,@r0
      002842 08               [12]  438 	inc	r0
      002843 86 83            [24]  439 	mov	dph,@r0
      002845 08               [12]  440 	inc	r0
      002846 86 F0            [24]  441 	mov	b,@r0
      002848 EE               [12]  442 	mov	a,r6
      002849 12 6C 5F         [24]  443 	lcall	__gptrput
      00284C A3               [24]  444 	inc	dptr
      00284D EF               [12]  445 	mov	a,r7
      00284E 12 6C 5F         [24]  446 	lcall	__gptrput
                                    447 ;	stack.c:30: giant = 0;
      002851 78 09            [12]  448 	mov	r0,#_giant
      002853 76 00            [12]  449 	mov	@r0,#0x00
                                    450 ;	stack.c:32: return 1;
      002855 90 00 01         [24]  451 	mov	dptr,#0x0001
      002858                        452 00103$:
                                    453 ;	stack.c:33: }
      002858 85 08 81         [24]  454 	mov	sp,_bp
      00285B D0 08            [24]  455 	pop	_bp
      00285D 22               [24]  456 	ret
                                    457 ;------------------------------------------------------------
                                    458 ;Allocation info for local variables in function 'stack_peek'
                                    459 ;------------------------------------------------------------
                                    460 ;val                       Allocated to stack - _bp -5
                                    461 ;s                         Allocated to registers r7 r6 r5 
                                    462 ;sloc0                     Allocated to stack - _bp +1
                                    463 ;------------------------------------------------------------
                                    464 ;	stack.c:35: int stack_peek(stack_t *s, long *val) __reentrant {
                                    465 ;	-----------------------------------------
                                    466 ;	 function stack_peek
                                    467 ;	-----------------------------------------
      00285E                        468 _stack_peek:
      00285E C0 08            [24]  469 	push	_bp
      002860 85 81 08         [24]  470 	mov	_bp,sp
      002863 05 81            [12]  471 	inc	sp
      002865 05 81            [12]  472 	inc	sp
      002867 05 81            [12]  473 	inc	sp
      002869 AF 82            [24]  474 	mov	r7,dpl
      00286B AE 83            [24]  475 	mov	r6,dph
      00286D AD F0            [24]  476 	mov	r5,b
                                    477 ;	stack.c:36: if (giant) return 0;
      00286F 78 09            [12]  478 	mov	r0,#_giant
      002871 E6               [12]  479 	mov	a,@r0
      002872 60 06            [24]  480 	jz	00102$
      002874 90 00 00         [24]  481 	mov	dptr,#0x0000
      002877 02 28 F9         [24]  482 	ljmp	00105$
      00287A                        483 00102$:
                                    484 ;	stack.c:38: if (s->p < 0) return 0;
      00287A 74 02            [12]  485 	mov	a,#0x02
      00287C 2F               [12]  486 	add	a,r7
      00287D FB               [12]  487 	mov	r3,a
      00287E 74 20            [12]  488 	mov	a,#0x20
      002880 3E               [12]  489 	addc	a,r6
      002881 FA               [12]  490 	mov	r2,a
      002882 8D 04            [24]  491 	mov	ar4,r5
      002884 8B 82            [24]  492 	mov	dpl,r3
      002886 8A 83            [24]  493 	mov	dph,r2
      002888 8C F0            [24]  494 	mov	b,r4
      00288A 12 70 DA         [24]  495 	lcall	__gptrget
      00288D FB               [12]  496 	mov	r3,a
      00288E A3               [24]  497 	inc	dptr
      00288F 12 70 DA         [24]  498 	lcall	__gptrget
      002892 FC               [12]  499 	mov	r4,a
      002893 30 E7 05         [24]  500 	jnb	acc.7,00104$
      002896 90 00 00         [24]  501 	mov	dptr,#0x0000
      002899 80 5E            [24]  502 	sjmp	00105$
      00289B                        503 00104$:
                                    504 ;	stack.c:39: *val = s->data[s->p];
      00289B E5 08            [12]  505 	mov	a,_bp
      00289D 24 FB            [12]  506 	add	a,#0xfb
      00289F F8               [12]  507 	mov	r0,a
      0028A0 A9 08            [24]  508 	mov	r1,_bp
      0028A2 09               [12]  509 	inc	r1
      0028A3 E6               [12]  510 	mov	a,@r0
      0028A4 F7               [12]  511 	mov	@r1,a
      0028A5 08               [12]  512 	inc	r0
      0028A6 09               [12]  513 	inc	r1
      0028A7 E6               [12]  514 	mov	a,@r0
      0028A8 F7               [12]  515 	mov	@r1,a
      0028A9 08               [12]  516 	inc	r0
      0028AA 09               [12]  517 	inc	r1
      0028AB E6               [12]  518 	mov	a,@r0
      0028AC F7               [12]  519 	mov	@r1,a
      0028AD EB               [12]  520 	mov	a,r3
      0028AE 2B               [12]  521 	add	a,r3
      0028AF FB               [12]  522 	mov	r3,a
      0028B0 EC               [12]  523 	mov	a,r4
      0028B1 33               [12]  524 	rlc	a
      0028B2 FC               [12]  525 	mov	r4,a
      0028B3 EB               [12]  526 	mov	a,r3
      0028B4 2B               [12]  527 	add	a,r3
      0028B5 FB               [12]  528 	mov	r3,a
      0028B6 EC               [12]  529 	mov	a,r4
      0028B7 33               [12]  530 	rlc	a
      0028B8 FC               [12]  531 	mov	r4,a
      0028B9 EB               [12]  532 	mov	a,r3
      0028BA 2F               [12]  533 	add	a,r7
      0028BB FB               [12]  534 	mov	r3,a
      0028BC EC               [12]  535 	mov	a,r4
      0028BD 3E               [12]  536 	addc	a,r6
      0028BE FC               [12]  537 	mov	r4,a
      0028BF 8B 82            [24]  538 	mov	dpl,r3
      0028C1 8C 83            [24]  539 	mov	dph,r4
      0028C3 8D F0            [24]  540 	mov	b,r5
      0028C5 12 70 DA         [24]  541 	lcall	__gptrget
      0028C8 FB               [12]  542 	mov	r3,a
      0028C9 A3               [24]  543 	inc	dptr
      0028CA 12 70 DA         [24]  544 	lcall	__gptrget
      0028CD FC               [12]  545 	mov	r4,a
      0028CE A3               [24]  546 	inc	dptr
      0028CF 12 70 DA         [24]  547 	lcall	__gptrget
      0028D2 FD               [12]  548 	mov	r5,a
      0028D3 A3               [24]  549 	inc	dptr
      0028D4 12 70 DA         [24]  550 	lcall	__gptrget
      0028D7 FF               [12]  551 	mov	r7,a
      0028D8 A8 08            [24]  552 	mov	r0,_bp
      0028DA 08               [12]  553 	inc	r0
      0028DB 86 82            [24]  554 	mov	dpl,@r0
      0028DD 08               [12]  555 	inc	r0
      0028DE 86 83            [24]  556 	mov	dph,@r0
      0028E0 08               [12]  557 	inc	r0
      0028E1 86 F0            [24]  558 	mov	b,@r0
      0028E3 EB               [12]  559 	mov	a,r3
      0028E4 12 6C 5F         [24]  560 	lcall	__gptrput
      0028E7 A3               [24]  561 	inc	dptr
      0028E8 EC               [12]  562 	mov	a,r4
      0028E9 12 6C 5F         [24]  563 	lcall	__gptrput
      0028EC A3               [24]  564 	inc	dptr
      0028ED ED               [12]  565 	mov	a,r5
      0028EE 12 6C 5F         [24]  566 	lcall	__gptrput
      0028F1 A3               [24]  567 	inc	dptr
      0028F2 EF               [12]  568 	mov	a,r7
      0028F3 12 6C 5F         [24]  569 	lcall	__gptrput
                                    570 ;	stack.c:41: return 1;
      0028F6 90 00 01         [24]  571 	mov	dptr,#0x0001
      0028F9                        572 00105$:
                                    573 ;	stack.c:42: }
      0028F9 85 08 81         [24]  574 	mov	sp,_bp
      0028FC D0 08            [24]  575 	pop	_bp
      0028FE 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'stack_peek2'
                                    579 ;------------------------------------------------------------
                                    580 ;vals                      Allocated to stack - _bp -5
                                    581 ;s                         Allocated to stack - _bp +1
                                    582 ;nvals                     Allocated to registers r5 r4 
                                    583 ;sloc0                     Allocated to stack - _bp +4
                                    584 ;sloc1                     Allocated to stack - _bp +7
                                    585 ;sloc2                     Allocated to stack - _bp +12
                                    586 ;sloc3                     Allocated to stack - _bp +10
                                    587 ;------------------------------------------------------------
                                    588 ;	stack.c:44: int stack_peek2(stack_t *s, long *vals) __reentrant {
                                    589 ;	-----------------------------------------
                                    590 ;	 function stack_peek2
                                    591 ;	-----------------------------------------
      0028FF                        592 _stack_peek2:
      0028FF C0 08            [24]  593 	push	_bp
      002901 85 81 08         [24]  594 	mov	_bp,sp
      002904 C0 82            [24]  595 	push	dpl
      002906 C0 83            [24]  596 	push	dph
      002908 C0 F0            [24]  597 	push	b
      00290A E5 81            [12]  598 	mov	a,sp
      00290C 24 09            [12]  599 	add	a,#0x09
      00290E F5 81            [12]  600 	mov	sp,a
                                    601 ;	stack.c:47: nvals = 0;
                                    602 ;	stack.c:48: vals[0] = vals[1] = 0l;
      002910 E4               [12]  603 	clr	a
      002911 FD               [12]  604 	mov	r5,a
      002912 FC               [12]  605 	mov	r4,a
      002913 E5 08            [12]  606 	mov	a,_bp
      002915 24 FB            [12]  607 	add	a,#0xfb
      002917 F8               [12]  608 	mov	r0,a
      002918 E5 08            [12]  609 	mov	a,_bp
      00291A 24 0A            [12]  610 	add	a,#0x0a
      00291C F9               [12]  611 	mov	r1,a
      00291D E6               [12]  612 	mov	a,@r0
      00291E F7               [12]  613 	mov	@r1,a
      00291F 08               [12]  614 	inc	r0
      002920 09               [12]  615 	inc	r1
      002921 E6               [12]  616 	mov	a,@r0
      002922 F7               [12]  617 	mov	@r1,a
      002923 08               [12]  618 	inc	r0
      002924 09               [12]  619 	inc	r1
      002925 E6               [12]  620 	mov	a,@r0
      002926 F7               [12]  621 	mov	@r1,a
      002927 E5 08            [12]  622 	mov	a,_bp
      002929 24 0A            [12]  623 	add	a,#0x0a
      00292B F8               [12]  624 	mov	r0,a
      00292C E5 08            [12]  625 	mov	a,_bp
      00292E 24 04            [12]  626 	add	a,#0x04
      002930 F9               [12]  627 	mov	r1,a
      002931 74 04            [12]  628 	mov	a,#0x04
      002933 26               [12]  629 	add	a,@r0
      002934 F7               [12]  630 	mov	@r1,a
      002935 E4               [12]  631 	clr	a
      002936 08               [12]  632 	inc	r0
      002937 36               [12]  633 	addc	a,@r0
      002938 09               [12]  634 	inc	r1
      002939 F7               [12]  635 	mov	@r1,a
      00293A 08               [12]  636 	inc	r0
      00293B 09               [12]  637 	inc	r1
      00293C E6               [12]  638 	mov	a,@r0
      00293D F7               [12]  639 	mov	@r1,a
      00293E E5 08            [12]  640 	mov	a,_bp
      002940 24 04            [12]  641 	add	a,#0x04
      002942 F8               [12]  642 	mov	r0,a
      002943 86 82            [24]  643 	mov	dpl,@r0
      002945 08               [12]  644 	inc	r0
      002946 86 83            [24]  645 	mov	dph,@r0
      002948 08               [12]  646 	inc	r0
      002949 86 F0            [24]  647 	mov	b,@r0
      00294B E4               [12]  648 	clr	a
      00294C 12 6C 5F         [24]  649 	lcall	__gptrput
      00294F A3               [24]  650 	inc	dptr
      002950 12 6C 5F         [24]  651 	lcall	__gptrput
      002953 A3               [24]  652 	inc	dptr
      002954 12 6C 5F         [24]  653 	lcall	__gptrput
      002957 A3               [24]  654 	inc	dptr
      002958 12 6C 5F         [24]  655 	lcall	__gptrput
      00295B E5 08            [12]  656 	mov	a,_bp
      00295D 24 0A            [12]  657 	add	a,#0x0a
      00295F F8               [12]  658 	mov	r0,a
      002960 86 82            [24]  659 	mov	dpl,@r0
      002962 08               [12]  660 	inc	r0
      002963 86 83            [24]  661 	mov	dph,@r0
      002965 08               [12]  662 	inc	r0
      002966 86 F0            [24]  663 	mov	b,@r0
      002968 E4               [12]  664 	clr	a
      002969 12 6C 5F         [24]  665 	lcall	__gptrput
      00296C A3               [24]  666 	inc	dptr
      00296D 12 6C 5F         [24]  667 	lcall	__gptrput
      002970 A3               [24]  668 	inc	dptr
      002971 12 6C 5F         [24]  669 	lcall	__gptrput
      002974 A3               [24]  670 	inc	dptr
      002975 12 6C 5F         [24]  671 	lcall	__gptrput
                                    672 ;	stack.c:50: if (giant) goto out; /* if called from ISR */
      002978 78 09            [12]  673 	mov	r0,#_giant
      00297A E6               [12]  674 	mov	a,@r0
      00297B 60 03            [24]  675 	jz	00122$
      00297D 02 2A 87         [24]  676 	ljmp	00107$
      002980                        677 00122$:
                                    678 ;	stack.c:52: if (s->p < 0) goto out;
      002980 A8 08            [24]  679 	mov	r0,_bp
      002982 08               [12]  680 	inc	r0
      002983 E5 08            [12]  681 	mov	a,_bp
      002985 24 07            [12]  682 	add	a,#0x07
      002987 F9               [12]  683 	mov	r1,a
      002988 74 02            [12]  684 	mov	a,#0x02
      00298A 26               [12]  685 	add	a,@r0
      00298B F7               [12]  686 	mov	@r1,a
      00298C 74 20            [12]  687 	mov	a,#0x20
      00298E 08               [12]  688 	inc	r0
      00298F 36               [12]  689 	addc	a,@r0
      002990 09               [12]  690 	inc	r1
      002991 F7               [12]  691 	mov	@r1,a
      002992 08               [12]  692 	inc	r0
      002993 09               [12]  693 	inc	r1
      002994 E6               [12]  694 	mov	a,@r0
      002995 F7               [12]  695 	mov	@r1,a
      002996 E5 08            [12]  696 	mov	a,_bp
      002998 24 07            [12]  697 	add	a,#0x07
      00299A F8               [12]  698 	mov	r0,a
      00299B 86 82            [24]  699 	mov	dpl,@r0
      00299D 08               [12]  700 	inc	r0
      00299E 86 83            [24]  701 	mov	dph,@r0
      0029A0 08               [12]  702 	inc	r0
      0029A1 86 F0            [24]  703 	mov	b,@r0
      0029A3 12 70 DA         [24]  704 	lcall	__gptrget
      0029A6 FF               [12]  705 	mov	r7,a
      0029A7 A3               [24]  706 	inc	dptr
      0029A8 12 70 DA         [24]  707 	lcall	__gptrget
      0029AB FE               [12]  708 	mov	r6,a
      0029AC 30 E7 03         [24]  709 	jnb	acc.7,00123$
      0029AF 02 2A 87         [24]  710 	ljmp	00107$
      0029B2                        711 00123$:
                                    712 ;	stack.c:53: vals[1] = s->data[s->p];
      0029B2 EF               [12]  713 	mov	a,r7
      0029B3 2F               [12]  714 	add	a,r7
      0029B4 FC               [12]  715 	mov	r4,a
      0029B5 EE               [12]  716 	mov	a,r6
      0029B6 33               [12]  717 	rlc	a
      0029B7 FB               [12]  718 	mov	r3,a
      0029B8 EC               [12]  719 	mov	a,r4
      0029B9 2C               [12]  720 	add	a,r4
      0029BA FC               [12]  721 	mov	r4,a
      0029BB EB               [12]  722 	mov	a,r3
      0029BC 33               [12]  723 	rlc	a
      0029BD FB               [12]  724 	mov	r3,a
      0029BE A8 08            [24]  725 	mov	r0,_bp
      0029C0 08               [12]  726 	inc	r0
      0029C1 EC               [12]  727 	mov	a,r4
      0029C2 26               [12]  728 	add	a,@r0
      0029C3 FA               [12]  729 	mov	r2,a
      0029C4 EB               [12]  730 	mov	a,r3
      0029C5 08               [12]  731 	inc	r0
      0029C6 36               [12]  732 	addc	a,@r0
      0029C7 FB               [12]  733 	mov	r3,a
      0029C8 08               [12]  734 	inc	r0
      0029C9 86 04            [24]  735 	mov	ar4,@r0
      0029CB 8A 82            [24]  736 	mov	dpl,r2
      0029CD 8B 83            [24]  737 	mov	dph,r3
      0029CF 8C F0            [24]  738 	mov	b,r4
      0029D1 12 70 DA         [24]  739 	lcall	__gptrget
      0029D4 FA               [12]  740 	mov	r2,a
      0029D5 A3               [24]  741 	inc	dptr
      0029D6 12 70 DA         [24]  742 	lcall	__gptrget
      0029D9 FB               [12]  743 	mov	r3,a
      0029DA A3               [24]  744 	inc	dptr
      0029DB 12 70 DA         [24]  745 	lcall	__gptrget
      0029DE FC               [12]  746 	mov	r4,a
      0029DF A3               [24]  747 	inc	dptr
      0029E0 12 70 DA         [24]  748 	lcall	__gptrget
      0029E3 FF               [12]  749 	mov	r7,a
      0029E4 E5 08            [12]  750 	mov	a,_bp
      0029E6 24 04            [12]  751 	add	a,#0x04
      0029E8 F8               [12]  752 	mov	r0,a
      0029E9 86 82            [24]  753 	mov	dpl,@r0
      0029EB 08               [12]  754 	inc	r0
      0029EC 86 83            [24]  755 	mov	dph,@r0
      0029EE 08               [12]  756 	inc	r0
      0029EF 86 F0            [24]  757 	mov	b,@r0
      0029F1 EA               [12]  758 	mov	a,r2
      0029F2 12 6C 5F         [24]  759 	lcall	__gptrput
      0029F5 A3               [24]  760 	inc	dptr
      0029F6 EB               [12]  761 	mov	a,r3
      0029F7 12 6C 5F         [24]  762 	lcall	__gptrput
      0029FA A3               [24]  763 	inc	dptr
      0029FB EC               [12]  764 	mov	a,r4
      0029FC 12 6C 5F         [24]  765 	lcall	__gptrput
      0029FF A3               [24]  766 	inc	dptr
      002A00 EF               [12]  767 	mov	a,r7
      002A01 12 6C 5F         [24]  768 	lcall	__gptrput
                                    769 ;	stack.c:54: nvals++;
      002A04 7D 01            [12]  770 	mov	r5,#0x01
      002A06 7C 00            [12]  771 	mov	r4,#0x00
                                    772 ;	stack.c:56: if ((s->p - 1) < 0) goto out;
      002A08 E5 08            [12]  773 	mov	a,_bp
      002A0A 24 07            [12]  774 	add	a,#0x07
      002A0C F8               [12]  775 	mov	r0,a
      002A0D 86 82            [24]  776 	mov	dpl,@r0
      002A0F 08               [12]  777 	inc	r0
      002A10 86 83            [24]  778 	mov	dph,@r0
      002A12 08               [12]  779 	inc	r0
      002A13 86 F0            [24]  780 	mov	b,@r0
      002A15 12 70 DA         [24]  781 	lcall	__gptrget
      002A18 FB               [12]  782 	mov	r3,a
      002A19 A3               [24]  783 	inc	dptr
      002A1A 12 70 DA         [24]  784 	lcall	__gptrget
      002A1D FA               [12]  785 	mov	r2,a
      002A1E EB               [12]  786 	mov	a,r3
      002A1F 24 FF            [12]  787 	add	a,#0xff
      002A21 FE               [12]  788 	mov	r6,a
      002A22 EA               [12]  789 	mov	a,r2
      002A23 34 FF            [12]  790 	addc	a,#0xff
      002A25 FF               [12]  791 	mov	r7,a
      002A26 20 E7 5E         [24]  792 	jb	acc.7,00107$
                                    793 ;	stack.c:57: vals[0] = s->data[s->p - 1];
      002A29 EB               [12]  794 	mov	a,r3
      002A2A 24 FF            [12]  795 	add	a,#0xff
      002A2C FE               [12]  796 	mov	r6,a
      002A2D EA               [12]  797 	mov	a,r2
      002A2E 34 FF            [12]  798 	addc	a,#0xff
      002A30 FF               [12]  799 	mov	r7,a
      002A31 EE               [12]  800 	mov	a,r6
      002A32 2E               [12]  801 	add	a,r6
      002A33 FE               [12]  802 	mov	r6,a
      002A34 EF               [12]  803 	mov	a,r7
      002A35 33               [12]  804 	rlc	a
      002A36 FF               [12]  805 	mov	r7,a
      002A37 EE               [12]  806 	mov	a,r6
      002A38 2E               [12]  807 	add	a,r6
      002A39 FE               [12]  808 	mov	r6,a
      002A3A EF               [12]  809 	mov	a,r7
      002A3B 33               [12]  810 	rlc	a
      002A3C FF               [12]  811 	mov	r7,a
      002A3D A8 08            [24]  812 	mov	r0,_bp
      002A3F 08               [12]  813 	inc	r0
      002A40 EE               [12]  814 	mov	a,r6
      002A41 26               [12]  815 	add	a,@r0
      002A42 FE               [12]  816 	mov	r6,a
      002A43 EF               [12]  817 	mov	a,r7
      002A44 08               [12]  818 	inc	r0
      002A45 36               [12]  819 	addc	a,@r0
      002A46 FD               [12]  820 	mov	r5,a
      002A47 08               [12]  821 	inc	r0
      002A48 86 07            [24]  822 	mov	ar7,@r0
      002A4A 8E 82            [24]  823 	mov	dpl,r6
      002A4C 8D 83            [24]  824 	mov	dph,r5
      002A4E 8F F0            [24]  825 	mov	b,r7
      002A50 12 70 DA         [24]  826 	lcall	__gptrget
      002A53 FE               [12]  827 	mov	r6,a
      002A54 A3               [24]  828 	inc	dptr
      002A55 12 70 DA         [24]  829 	lcall	__gptrget
      002A58 FD               [12]  830 	mov	r5,a
      002A59 A3               [24]  831 	inc	dptr
      002A5A 12 70 DA         [24]  832 	lcall	__gptrget
      002A5D FC               [12]  833 	mov	r4,a
      002A5E A3               [24]  834 	inc	dptr
      002A5F 12 70 DA         [24]  835 	lcall	__gptrget
      002A62 FF               [12]  836 	mov	r7,a
      002A63 E5 08            [12]  837 	mov	a,_bp
      002A65 24 0A            [12]  838 	add	a,#0x0a
      002A67 F8               [12]  839 	mov	r0,a
      002A68 86 82            [24]  840 	mov	dpl,@r0
      002A6A 08               [12]  841 	inc	r0
      002A6B 86 83            [24]  842 	mov	dph,@r0
      002A6D 08               [12]  843 	inc	r0
      002A6E 86 F0            [24]  844 	mov	b,@r0
      002A70 EE               [12]  845 	mov	a,r6
      002A71 12 6C 5F         [24]  846 	lcall	__gptrput
      002A74 A3               [24]  847 	inc	dptr
      002A75 ED               [12]  848 	mov	a,r5
      002A76 12 6C 5F         [24]  849 	lcall	__gptrput
      002A79 A3               [24]  850 	inc	dptr
      002A7A EC               [12]  851 	mov	a,r4
      002A7B 12 6C 5F         [24]  852 	lcall	__gptrput
      002A7E A3               [24]  853 	inc	dptr
      002A7F EF               [12]  854 	mov	a,r7
      002A80 12 6C 5F         [24]  855 	lcall	__gptrput
                                    856 ;	stack.c:58: nvals++;
      002A83 7D 02            [12]  857 	mov	r5,#0x02
      002A85 7C 00            [12]  858 	mov	r4,#0x00
                                    859 ;	stack.c:60: out:
      002A87                        860 00107$:
                                    861 ;	stack.c:61: return nvals;
      002A87 8D 82            [24]  862 	mov	dpl,r5
      002A89 8C 83            [24]  863 	mov	dph,r4
                                    864 ;	stack.c:62: }
      002A8B 85 08 81         [24]  865 	mov	sp,_bp
      002A8E D0 08            [24]  866 	pop	_bp
      002A90 22               [24]  867 	ret
                                    868 ;------------------------------------------------------------
                                    869 ;Allocation info for local variables in function 'stack_iter_peek'
                                    870 ;------------------------------------------------------------
                                    871 ;iter                      Allocated to stack - _bp -4
                                    872 ;_ctx                      Allocated to stack - _bp -7
                                    873 ;s                         Allocated to stack - _bp +1
                                    874 ;j                         Allocated to registers 
                                    875 ;r                         Allocated to registers r2 r7 
                                    876 ;------------------------------------------------------------
                                    877 ;	stack.c:64: int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant {
                                    878 ;	-----------------------------------------
                                    879 ;	 function stack_iter_peek
                                    880 ;	-----------------------------------------
      002A91                        881 _stack_iter_peek:
      002A91 C0 08            [24]  882 	push	_bp
      002A93 85 81 08         [24]  883 	mov	_bp,sp
      002A96 C0 82            [24]  884 	push	dpl
      002A98 C0 83            [24]  885 	push	dph
      002A9A C0 F0            [24]  886 	push	b
                                    887 ;	stack.c:67: if (giant) return 0;
      002A9C 78 09            [12]  888 	mov	r0,#_giant
      002A9E E6               [12]  889 	mov	a,@r0
      002A9F 60 06            [24]  890 	jz	00102$
      002AA1 90 00 00         [24]  891 	mov	dptr,#0x0000
      002AA4 02 2B 6A         [24]  892 	ljmp	00111$
      002AA7                        893 00102$:
                                    894 ;	stack.c:69: if (s->p < 0) return 0;
      002AA7 A8 08            [24]  895 	mov	r0,_bp
      002AA9 08               [12]  896 	inc	r0
      002AAA 74 02            [12]  897 	mov	a,#0x02
      002AAC 26               [12]  898 	add	a,@r0
      002AAD FB               [12]  899 	mov	r3,a
      002AAE 74 20            [12]  900 	mov	a,#0x20
      002AB0 08               [12]  901 	inc	r0
      002AB1 36               [12]  902 	addc	a,@r0
      002AB2 FA               [12]  903 	mov	r2,a
      002AB3 08               [12]  904 	inc	r0
      002AB4 86 04            [24]  905 	mov	ar4,@r0
      002AB6 8B 82            [24]  906 	mov	dpl,r3
      002AB8 8A 83            [24]  907 	mov	dph,r2
      002ABA 8C F0            [24]  908 	mov	b,r4
      002ABC 12 70 DA         [24]  909 	lcall	__gptrget
      002ABF FB               [12]  910 	mov	r3,a
      002AC0 A3               [24]  911 	inc	dptr
      002AC1 12 70 DA         [24]  912 	lcall	__gptrget
      002AC4 FC               [12]  913 	mov	r4,a
      002AC5 30 E7 06         [24]  914 	jnb	acc.7,00104$
      002AC8 90 00 00         [24]  915 	mov	dptr,#0x0000
      002ACB 02 2B 6A         [24]  916 	ljmp	00111$
      002ACE                        917 00104$:
                                    918 ;	stack.c:71: for (j = s->p, r = 0; j >= 0; j--) {
      002ACE 7A 00            [12]  919 	mov	r2,#0x00
      002AD0 7F 00            [12]  920 	mov	r7,#0x00
      002AD2                        921 00109$:
      002AD2 EC               [12]  922 	mov	a,r4
      002AD3 30 E7 03         [24]  923 	jnb	acc.7,00136$
      002AD6 02 2B 66         [24]  924 	ljmp	00107$
      002AD9                        925 00136$:
                                    926 ;	stack.c:72: r = iter(_ctx, s->data[j]);
      002AD9 EB               [12]  927 	mov	a,r3
      002ADA 2B               [12]  928 	add	a,r3
      002ADB FD               [12]  929 	mov	r5,a
      002ADC EC               [12]  930 	mov	a,r4
      002ADD 33               [12]  931 	rlc	a
      002ADE FE               [12]  932 	mov	r6,a
      002ADF ED               [12]  933 	mov	a,r5
      002AE0 2D               [12]  934 	add	a,r5
      002AE1 FD               [12]  935 	mov	r5,a
      002AE2 EE               [12]  936 	mov	a,r6
      002AE3 33               [12]  937 	rlc	a
      002AE4 FE               [12]  938 	mov	r6,a
      002AE5 C0 03            [24]  939 	push	ar3
      002AE7 C0 04            [24]  940 	push	ar4
      002AE9 A8 08            [24]  941 	mov	r0,_bp
      002AEB 08               [12]  942 	inc	r0
      002AEC ED               [12]  943 	mov	a,r5
      002AED 26               [12]  944 	add	a,@r0
      002AEE FD               [12]  945 	mov	r5,a
      002AEF EE               [12]  946 	mov	a,r6
      002AF0 08               [12]  947 	inc	r0
      002AF1 36               [12]  948 	addc	a,@r0
      002AF2 FC               [12]  949 	mov	r4,a
      002AF3 08               [12]  950 	inc	r0
      002AF4 86 06            [24]  951 	mov	ar6,@r0
      002AF6 8D 82            [24]  952 	mov	dpl,r5
      002AF8 8C 83            [24]  953 	mov	dph,r4
      002AFA 8E F0            [24]  954 	mov	b,r6
      002AFC 12 70 DA         [24]  955 	lcall	__gptrget
      002AFF FD               [12]  956 	mov	r5,a
      002B00 A3               [24]  957 	inc	dptr
      002B01 12 70 DA         [24]  958 	lcall	__gptrget
      002B04 FC               [12]  959 	mov	r4,a
      002B05 A3               [24]  960 	inc	dptr
      002B06 12 70 DA         [24]  961 	lcall	__gptrget
      002B09 FE               [12]  962 	mov	r6,a
      002B0A A3               [24]  963 	inc	dptr
      002B0B 12 70 DA         [24]  964 	lcall	__gptrget
      002B0E FB               [12]  965 	mov	r3,a
      002B0F C0 04            [24]  966 	push	ar4
      002B11 C0 03            [24]  967 	push	ar3
      002B13 C0 05            [24]  968 	push	ar5
      002B15 C0 04            [24]  969 	push	ar4
      002B17 C0 06            [24]  970 	push	ar6
      002B19 C0 03            [24]  971 	push	ar3
      002B1B 12 2B 20         [24]  972 	lcall	00137$
      002B1E 80 1A            [24]  973 	sjmp	00138$
      002B20                        974 00137$:
      002B20 E5 08            [12]  975 	mov	a,_bp
      002B22 24 FC            [12]  976 	add	a,#0xfc
      002B24 F8               [12]  977 	mov	r0,a
      002B25 E6               [12]  978 	mov	a,@r0
      002B26 C0 E0            [24]  979 	push	acc
      002B28 08               [12]  980 	inc	r0
      002B29 E6               [12]  981 	mov	a,@r0
      002B2A C0 E0            [24]  982 	push	acc
      002B2C E5 08            [12]  983 	mov	a,_bp
      002B2E 24 F9            [12]  984 	add	a,#0xf9
      002B30 F8               [12]  985 	mov	r0,a
      002B31 86 82            [24]  986 	mov	dpl,@r0
      002B33 08               [12]  987 	inc	r0
      002B34 86 83            [24]  988 	mov	dph,@r0
      002B36 08               [12]  989 	inc	r0
      002B37 86 F0            [24]  990 	mov	b,@r0
      002B39 22               [24]  991 	ret
      002B3A                        992 00138$:
      002B3A AD 82            [24]  993 	mov	r5,dpl
      002B3C AE 83            [24]  994 	mov	r6,dph
      002B3E E5 81            [12]  995 	mov	a,sp
      002B40 24 FC            [12]  996 	add	a,#0xfc
      002B42 F5 81            [12]  997 	mov	sp,a
      002B44 D0 03            [24]  998 	pop	ar3
      002B46 D0 04            [24]  999 	pop	ar4
      002B48 8D 02            [24] 1000 	mov	ar2,r5
      002B4A 8E 07            [24] 1001 	mov	ar7,r6
                                   1002 ;	stack.c:73: if (r <= 0) break;
      002B4C C3               [12] 1003 	clr	c
      002B4D E4               [12] 1004 	clr	a
      002B4E 9A               [12] 1005 	subb	a,r2
      002B4F 74 80            [12] 1006 	mov	a,#(0x00 ^ 0x80)
      002B51 8F F0            [24] 1007 	mov	b,r7
      002B53 63 F0 80         [24] 1008 	xrl	b,#0x80
      002B56 95 F0            [12] 1009 	subb	a,b
      002B58 D0 04            [24] 1010 	pop	ar4
      002B5A D0 03            [24] 1011 	pop	ar3
      002B5C 50 08            [24] 1012 	jnc	00107$
                                   1013 ;	stack.c:71: for (j = s->p, r = 0; j >= 0; j--) {
      002B5E 1B               [12] 1014 	dec	r3
      002B5F BB FF 01         [24] 1015 	cjne	r3,#0xff,00140$
      002B62 1C               [12] 1016 	dec	r4
      002B63                       1017 00140$:
      002B63 02 2A D2         [24] 1018 	ljmp	00109$
      002B66                       1019 00107$:
                                   1020 ;	stack.c:76: return r;
      002B66 8A 82            [24] 1021 	mov	dpl,r2
      002B68 8F 83            [24] 1022 	mov	dph,r7
      002B6A                       1023 00111$:
                                   1024 ;	stack.c:77: }
      002B6A 85 08 81         [24] 1025 	mov	sp,_bp
      002B6D D0 08            [24] 1026 	pop	_bp
      002B6F 22               [24] 1027 	ret
                                   1028 	.area CSEG    (CODE)
                                   1029 	.area CONST   (CODE)
                                   1030 	.area XINIT   (CODE)
                                   1031 	.area CABS    (ABS,CODE)
