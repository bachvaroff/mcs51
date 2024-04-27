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
      0026C0                        103 _stack_init:
                           000007   104 	ar7 = 0x07
                           000006   105 	ar6 = 0x06
                           000005   106 	ar5 = 0x05
                           000004   107 	ar4 = 0x04
                           000003   108 	ar3 = 0x03
                           000002   109 	ar2 = 0x02
                           000001   110 	ar1 = 0x01
                           000000   111 	ar0 = 0x00
      0026C0 AD 82            [24]  112 	mov	r5,dpl
      0026C2 AE 83            [24]  113 	mov	r6,dph
      0026C4 AF F0            [24]  114 	mov	r7,b
                                    115 ;	stack.c:7: s->N = SIZE;
      0026C6 8D 02            [24]  116 	mov	ar2,r5
      0026C8 74 20            [12]  117 	mov	a,#0x20
      0026CA 2E               [12]  118 	add	a,r6
      0026CB FB               [12]  119 	mov	r3,a
      0026CC 8F 04            [24]  120 	mov	ar4,r7
      0026CE 8A 82            [24]  121 	mov	dpl,r2
      0026D0 8B 83            [24]  122 	mov	dph,r3
      0026D2 8C F0            [24]  123 	mov	b,r4
      0026D4 E4               [12]  124 	clr	a
      0026D5 12 5E E9         [24]  125 	lcall	__gptrput
      0026D8 A3               [24]  126 	inc	dptr
      0026D9 74 08            [12]  127 	mov	a,#0x08
      0026DB 12 5E E9         [24]  128 	lcall	__gptrput
                                    129 ;	stack.c:8: s->p = -1;
      0026DE 74 02            [12]  130 	mov	a,#0x02
      0026E0 2D               [12]  131 	add	a,r5
      0026E1 FD               [12]  132 	mov	r5,a
      0026E2 74 20            [12]  133 	mov	a,#0x20
      0026E4 3E               [12]  134 	addc	a,r6
      0026E5 FE               [12]  135 	mov	r6,a
      0026E6 8D 82            [24]  136 	mov	dpl,r5
      0026E8 8E 83            [24]  137 	mov	dph,r6
      0026EA 8F F0            [24]  138 	mov	b,r7
      0026EC 74 FF            [12]  139 	mov	a,#0xff
      0026EE 12 5E E9         [24]  140 	lcall	__gptrput
      0026F1 A3               [24]  141 	inc	dptr
                                    142 ;	stack.c:10: return;
                                    143 ;	stack.c:11: }
      0026F2 02 5E E9         [24]  144 	ljmp	__gptrput
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
      0026F5                        156 _stack_push:
      0026F5 C0 08            [24]  157 	push	_bp
      0026F7 85 81 08         [24]  158 	mov	_bp,sp
      0026FA C0 82            [24]  159 	push	dpl
      0026FC C0 83            [24]  160 	push	dph
      0026FE C0 F0            [24]  161 	push	b
      002700 05 81            [12]  162 	inc	sp
      002702 05 81            [12]  163 	inc	sp
                                    164 ;	stack.c:14: if (s->p == (s->N - 1)) return 0;
      002704 A8 08            [24]  165 	mov	r0,_bp
      002706 08               [12]  166 	inc	r0
      002707 74 02            [12]  167 	mov	a,#0x02
      002709 26               [12]  168 	add	a,@r0
      00270A FA               [12]  169 	mov	r2,a
      00270B 74 20            [12]  170 	mov	a,#0x20
      00270D 08               [12]  171 	inc	r0
      00270E 36               [12]  172 	addc	a,@r0
      00270F FB               [12]  173 	mov	r3,a
      002710 08               [12]  174 	inc	r0
      002711 86 04            [24]  175 	mov	ar4,@r0
      002713 8A 82            [24]  176 	mov	dpl,r2
      002715 8B 83            [24]  177 	mov	dph,r3
      002717 8C F0            [24]  178 	mov	b,r4
      002719 E5 08            [12]  179 	mov	a,_bp
      00271B 24 04            [12]  180 	add	a,#0x04
      00271D F8               [12]  181 	mov	r0,a
      00271E 12 66 39         [24]  182 	lcall	__gptrget
      002721 F6               [12]  183 	mov	@r0,a
      002722 A3               [24]  184 	inc	dptr
      002723 12 66 39         [24]  185 	lcall	__gptrget
      002726 08               [12]  186 	inc	r0
      002727 F6               [12]  187 	mov	@r0,a
      002728 A8 08            [24]  188 	mov	r0,_bp
      00272A 08               [12]  189 	inc	r0
      00272B 86 05            [24]  190 	mov	ar5,@r0
      00272D 74 20            [12]  191 	mov	a,#0x20
      00272F 08               [12]  192 	inc	r0
      002730 26               [12]  193 	add	a,@r0
      002731 FE               [12]  194 	mov	r6,a
      002732 08               [12]  195 	inc	r0
      002733 86 07            [24]  196 	mov	ar7,@r0
      002735 8D 82            [24]  197 	mov	dpl,r5
      002737 8E 83            [24]  198 	mov	dph,r6
      002739 8F F0            [24]  199 	mov	b,r7
      00273B 12 66 39         [24]  200 	lcall	__gptrget
      00273E FD               [12]  201 	mov	r5,a
      00273F A3               [24]  202 	inc	dptr
      002740 12 66 39         [24]  203 	lcall	__gptrget
      002743 FE               [12]  204 	mov	r6,a
      002744 1D               [12]  205 	dec	r5
      002745 BD FF 01         [24]  206 	cjne	r5,#0xff,00109$
      002748 1E               [12]  207 	dec	r6
      002749                        208 00109$:
      002749 E5 08            [12]  209 	mov	a,_bp
      00274B 24 04            [12]  210 	add	a,#0x04
      00274D F8               [12]  211 	mov	r0,a
      00274E E6               [12]  212 	mov	a,@r0
      00274F B5 05 07         [24]  213 	cjne	a,ar5,00110$
      002752 08               [12]  214 	inc	r0
      002753 E6               [12]  215 	mov	a,@r0
      002754 B5 06 02         [24]  216 	cjne	a,ar6,00110$
      002757 80 02            [24]  217 	sjmp	00111$
      002759                        218 00110$:
      002759 80 05            [24]  219 	sjmp	00102$
      00275B                        220 00111$:
      00275B 90 00 00         [24]  221 	mov	dptr,#0x0000
      00275E 80 5D            [24]  222 	sjmp	00103$
      002760                        223 00102$:
                                    224 ;	stack.c:17: s->p++;
      002760 E5 08            [12]  225 	mov	a,_bp
      002762 24 04            [12]  226 	add	a,#0x04
      002764 F8               [12]  227 	mov	r0,a
      002765 74 01            [12]  228 	mov	a,#0x01
      002767 26               [12]  229 	add	a,@r0
      002768 FE               [12]  230 	mov	r6,a
      002769 E4               [12]  231 	clr	a
      00276A 08               [12]  232 	inc	r0
      00276B 36               [12]  233 	addc	a,@r0
      00276C FF               [12]  234 	mov	r7,a
      00276D 8A 82            [24]  235 	mov	dpl,r2
      00276F 8B 83            [24]  236 	mov	dph,r3
      002771 8C F0            [24]  237 	mov	b,r4
      002773 EE               [12]  238 	mov	a,r6
      002774 12 5E E9         [24]  239 	lcall	__gptrput
      002777 A3               [24]  240 	inc	dptr
      002778 EF               [12]  241 	mov	a,r7
      002779 12 5E E9         [24]  242 	lcall	__gptrput
                                    243 ;	stack.c:18: s->data[s->p] = val;
      00277C EE               [12]  244 	mov	a,r6
      00277D 2E               [12]  245 	add	a,r6
      00277E FE               [12]  246 	mov	r6,a
      00277F EF               [12]  247 	mov	a,r7
      002780 33               [12]  248 	rlc	a
      002781 FF               [12]  249 	mov	r7,a
      002782 EE               [12]  250 	mov	a,r6
      002783 2E               [12]  251 	add	a,r6
      002784 FE               [12]  252 	mov	r6,a
      002785 EF               [12]  253 	mov	a,r7
      002786 33               [12]  254 	rlc	a
      002787 FF               [12]  255 	mov	r7,a
      002788 A8 08            [24]  256 	mov	r0,_bp
      00278A 08               [12]  257 	inc	r0
      00278B EE               [12]  258 	mov	a,r6
      00278C 26               [12]  259 	add	a,@r0
      00278D FE               [12]  260 	mov	r6,a
      00278E EF               [12]  261 	mov	a,r7
      00278F 08               [12]  262 	inc	r0
      002790 36               [12]  263 	addc	a,@r0
      002791 FF               [12]  264 	mov	r7,a
      002792 08               [12]  265 	inc	r0
      002793 86 05            [24]  266 	mov	ar5,@r0
      002795 8E 82            [24]  267 	mov	dpl,r6
      002797 8F 83            [24]  268 	mov	dph,r7
      002799 8D F0            [24]  269 	mov	b,r5
      00279B E5 08            [12]  270 	mov	a,_bp
      00279D 24 FA            [12]  271 	add	a,#0xfa
      00279F F8               [12]  272 	mov	r0,a
      0027A0 E6               [12]  273 	mov	a,@r0
      0027A1 12 5E E9         [24]  274 	lcall	__gptrput
      0027A4 A3               [24]  275 	inc	dptr
      0027A5 08               [12]  276 	inc	r0
      0027A6 E6               [12]  277 	mov	a,@r0
      0027A7 12 5E E9         [24]  278 	lcall	__gptrput
      0027AA A3               [24]  279 	inc	dptr
      0027AB 08               [12]  280 	inc	r0
      0027AC E6               [12]  281 	mov	a,@r0
      0027AD 12 5E E9         [24]  282 	lcall	__gptrput
      0027B0 A3               [24]  283 	inc	dptr
      0027B1 08               [12]  284 	inc	r0
      0027B2 E6               [12]  285 	mov	a,@r0
      0027B3 12 5E E9         [24]  286 	lcall	__gptrput
                                    287 ;	stack.c:19: giant = 0;
      0027B6 78 09            [12]  288 	mov	r0,#_giant
      0027B8 76 00            [12]  289 	mov	@r0,#0x00
                                    290 ;	stack.c:21: return 1;
      0027BA 90 00 01         [24]  291 	mov	dptr,#0x0001
      0027BD                        292 00103$:
                                    293 ;	stack.c:22: }
      0027BD 85 08 81         [24]  294 	mov	sp,_bp
      0027C0 D0 08            [24]  295 	pop	_bp
      0027C2 22               [24]  296 	ret
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
      0027C3                        310 _stack_pop:
      0027C3 C0 08            [24]  311 	push	_bp
      0027C5 E5 81            [12]  312 	mov	a,sp
      0027C7 F5 08            [12]  313 	mov	_bp,a
      0027C9 24 06            [12]  314 	add	a,#0x06
      0027CB F5 81            [12]  315 	mov	sp,a
      0027CD AD 82            [24]  316 	mov	r5,dpl
      0027CF AB 83            [24]  317 	mov	r3,dph
      0027D1 AC F0            [24]  318 	mov	r4,b
                                    319 ;	stack.c:25: if (s->p < 0) return 0;
      0027D3 E5 08            [12]  320 	mov	a,_bp
      0027D5 24 04            [12]  321 	add	a,#0x04
      0027D7 F8               [12]  322 	mov	r0,a
      0027D8 74 02            [12]  323 	mov	a,#0x02
      0027DA 2D               [12]  324 	add	a,r5
      0027DB F6               [12]  325 	mov	@r0,a
      0027DC 74 20            [12]  326 	mov	a,#0x20
      0027DE 3B               [12]  327 	addc	a,r3
      0027DF 08               [12]  328 	inc	r0
      0027E0 F6               [12]  329 	mov	@r0,a
      0027E1 08               [12]  330 	inc	r0
      0027E2 A6 04            [24]  331 	mov	@r0,ar4
      0027E4 E5 08            [12]  332 	mov	a,_bp
      0027E6 24 04            [12]  333 	add	a,#0x04
      0027E8 F8               [12]  334 	mov	r0,a
      0027E9 86 82            [24]  335 	mov	dpl,@r0
      0027EB 08               [12]  336 	inc	r0
      0027EC 86 83            [24]  337 	mov	dph,@r0
      0027EE 08               [12]  338 	inc	r0
      0027EF 86 F0            [24]  339 	mov	b,@r0
      0027F1 12 66 39         [24]  340 	lcall	__gptrget
      0027F4 FF               [12]  341 	mov	r7,a
      0027F5 A3               [24]  342 	inc	dptr
      0027F6 12 66 39         [24]  343 	lcall	__gptrget
      0027F9 FE               [12]  344 	mov	r6,a
      0027FA 30 E7 06         [24]  345 	jnb	acc.7,00102$
      0027FD 90 00 00         [24]  346 	mov	dptr,#0x0000
      002800 02 28 98         [24]  347 	ljmp	00103$
      002803                        348 00102$:
                                    349 ;	stack.c:28: *val = s->data[s->p];
      002803 E5 08            [12]  350 	mov	a,_bp
      002805 24 FB            [12]  351 	add	a,#0xfb
      002807 F8               [12]  352 	mov	r0,a
      002808 A9 08            [24]  353 	mov	r1,_bp
      00280A 09               [12]  354 	inc	r1
      00280B E6               [12]  355 	mov	a,@r0
      00280C F7               [12]  356 	mov	@r1,a
      00280D 08               [12]  357 	inc	r0
      00280E 09               [12]  358 	inc	r1
      00280F E6               [12]  359 	mov	a,@r0
      002810 F7               [12]  360 	mov	@r1,a
      002811 08               [12]  361 	inc	r0
      002812 09               [12]  362 	inc	r1
      002813 E6               [12]  363 	mov	a,@r0
      002814 F7               [12]  364 	mov	@r1,a
      002815 EF               [12]  365 	mov	a,r7
      002816 2F               [12]  366 	add	a,r7
      002817 FF               [12]  367 	mov	r7,a
      002818 EE               [12]  368 	mov	a,r6
      002819 33               [12]  369 	rlc	a
      00281A FE               [12]  370 	mov	r6,a
      00281B EF               [12]  371 	mov	a,r7
      00281C 2F               [12]  372 	add	a,r7
      00281D FF               [12]  373 	mov	r7,a
      00281E EE               [12]  374 	mov	a,r6
      00281F 33               [12]  375 	rlc	a
      002820 FE               [12]  376 	mov	r6,a
      002821 EF               [12]  377 	mov	a,r7
      002822 2D               [12]  378 	add	a,r5
      002823 FD               [12]  379 	mov	r5,a
      002824 EE               [12]  380 	mov	a,r6
      002825 3B               [12]  381 	addc	a,r3
      002826 FE               [12]  382 	mov	r6,a
      002827 8C 07            [24]  383 	mov	ar7,r4
      002829 8D 82            [24]  384 	mov	dpl,r5
      00282B 8E 83            [24]  385 	mov	dph,r6
      00282D 8F F0            [24]  386 	mov	b,r7
      00282F 12 66 39         [24]  387 	lcall	__gptrget
      002832 FD               [12]  388 	mov	r5,a
      002833 A3               [24]  389 	inc	dptr
      002834 12 66 39         [24]  390 	lcall	__gptrget
      002837 FE               [12]  391 	mov	r6,a
      002838 A3               [24]  392 	inc	dptr
      002839 12 66 39         [24]  393 	lcall	__gptrget
      00283C FC               [12]  394 	mov	r4,a
      00283D A3               [24]  395 	inc	dptr
      00283E 12 66 39         [24]  396 	lcall	__gptrget
      002841 FF               [12]  397 	mov	r7,a
      002842 A8 08            [24]  398 	mov	r0,_bp
      002844 08               [12]  399 	inc	r0
      002845 86 82            [24]  400 	mov	dpl,@r0
      002847 08               [12]  401 	inc	r0
      002848 86 83            [24]  402 	mov	dph,@r0
      00284A 08               [12]  403 	inc	r0
      00284B 86 F0            [24]  404 	mov	b,@r0
      00284D ED               [12]  405 	mov	a,r5
      00284E 12 5E E9         [24]  406 	lcall	__gptrput
      002851 A3               [24]  407 	inc	dptr
      002852 EE               [12]  408 	mov	a,r6
      002853 12 5E E9         [24]  409 	lcall	__gptrput
      002856 A3               [24]  410 	inc	dptr
      002857 EC               [12]  411 	mov	a,r4
      002858 12 5E E9         [24]  412 	lcall	__gptrput
      00285B A3               [24]  413 	inc	dptr
      00285C EF               [12]  414 	mov	a,r7
      00285D 12 5E E9         [24]  415 	lcall	__gptrput
                                    416 ;	stack.c:29: s->p--;
      002860 E5 08            [12]  417 	mov	a,_bp
      002862 24 04            [12]  418 	add	a,#0x04
      002864 F8               [12]  419 	mov	r0,a
      002865 86 82            [24]  420 	mov	dpl,@r0
      002867 08               [12]  421 	inc	r0
      002868 86 83            [24]  422 	mov	dph,@r0
      00286A 08               [12]  423 	inc	r0
      00286B 86 F0            [24]  424 	mov	b,@r0
      00286D 12 66 39         [24]  425 	lcall	__gptrget
      002870 FE               [12]  426 	mov	r6,a
      002871 A3               [24]  427 	inc	dptr
      002872 12 66 39         [24]  428 	lcall	__gptrget
      002875 FF               [12]  429 	mov	r7,a
      002876 1E               [12]  430 	dec	r6
      002877 BE FF 01         [24]  431 	cjne	r6,#0xff,00110$
      00287A 1F               [12]  432 	dec	r7
      00287B                        433 00110$:
      00287B E5 08            [12]  434 	mov	a,_bp
      00287D 24 04            [12]  435 	add	a,#0x04
      00287F F8               [12]  436 	mov	r0,a
      002880 86 82            [24]  437 	mov	dpl,@r0
      002882 08               [12]  438 	inc	r0
      002883 86 83            [24]  439 	mov	dph,@r0
      002885 08               [12]  440 	inc	r0
      002886 86 F0            [24]  441 	mov	b,@r0
      002888 EE               [12]  442 	mov	a,r6
      002889 12 5E E9         [24]  443 	lcall	__gptrput
      00288C A3               [24]  444 	inc	dptr
      00288D EF               [12]  445 	mov	a,r7
      00288E 12 5E E9         [24]  446 	lcall	__gptrput
                                    447 ;	stack.c:30: giant = 0;
      002891 78 09            [12]  448 	mov	r0,#_giant
      002893 76 00            [12]  449 	mov	@r0,#0x00
                                    450 ;	stack.c:32: return 1;
      002895 90 00 01         [24]  451 	mov	dptr,#0x0001
      002898                        452 00103$:
                                    453 ;	stack.c:33: }
      002898 85 08 81         [24]  454 	mov	sp,_bp
      00289B D0 08            [24]  455 	pop	_bp
      00289D 22               [24]  456 	ret
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
      00289E                        468 _stack_peek:
      00289E C0 08            [24]  469 	push	_bp
      0028A0 85 81 08         [24]  470 	mov	_bp,sp
      0028A3 05 81            [12]  471 	inc	sp
      0028A5 05 81            [12]  472 	inc	sp
      0028A7 05 81            [12]  473 	inc	sp
      0028A9 AF 82            [24]  474 	mov	r7,dpl
      0028AB AE 83            [24]  475 	mov	r6,dph
      0028AD AD F0            [24]  476 	mov	r5,b
                                    477 ;	stack.c:36: if (giant) return 0;
      0028AF 78 09            [12]  478 	mov	r0,#_giant
      0028B1 E6               [12]  479 	mov	a,@r0
      0028B2 60 06            [24]  480 	jz	00102$
      0028B4 90 00 00         [24]  481 	mov	dptr,#0x0000
      0028B7 02 29 39         [24]  482 	ljmp	00105$
      0028BA                        483 00102$:
                                    484 ;	stack.c:38: if (s->p < 0) return 0;
      0028BA 74 02            [12]  485 	mov	a,#0x02
      0028BC 2F               [12]  486 	add	a,r7
      0028BD FB               [12]  487 	mov	r3,a
      0028BE 74 20            [12]  488 	mov	a,#0x20
      0028C0 3E               [12]  489 	addc	a,r6
      0028C1 FA               [12]  490 	mov	r2,a
      0028C2 8D 04            [24]  491 	mov	ar4,r5
      0028C4 8B 82            [24]  492 	mov	dpl,r3
      0028C6 8A 83            [24]  493 	mov	dph,r2
      0028C8 8C F0            [24]  494 	mov	b,r4
      0028CA 12 66 39         [24]  495 	lcall	__gptrget
      0028CD FB               [12]  496 	mov	r3,a
      0028CE A3               [24]  497 	inc	dptr
      0028CF 12 66 39         [24]  498 	lcall	__gptrget
      0028D2 FC               [12]  499 	mov	r4,a
      0028D3 30 E7 05         [24]  500 	jnb	acc.7,00104$
      0028D6 90 00 00         [24]  501 	mov	dptr,#0x0000
      0028D9 80 5E            [24]  502 	sjmp	00105$
      0028DB                        503 00104$:
                                    504 ;	stack.c:39: *val = s->data[s->p];
      0028DB E5 08            [12]  505 	mov	a,_bp
      0028DD 24 FB            [12]  506 	add	a,#0xfb
      0028DF F8               [12]  507 	mov	r0,a
      0028E0 A9 08            [24]  508 	mov	r1,_bp
      0028E2 09               [12]  509 	inc	r1
      0028E3 E6               [12]  510 	mov	a,@r0
      0028E4 F7               [12]  511 	mov	@r1,a
      0028E5 08               [12]  512 	inc	r0
      0028E6 09               [12]  513 	inc	r1
      0028E7 E6               [12]  514 	mov	a,@r0
      0028E8 F7               [12]  515 	mov	@r1,a
      0028E9 08               [12]  516 	inc	r0
      0028EA 09               [12]  517 	inc	r1
      0028EB E6               [12]  518 	mov	a,@r0
      0028EC F7               [12]  519 	mov	@r1,a
      0028ED EB               [12]  520 	mov	a,r3
      0028EE 2B               [12]  521 	add	a,r3
      0028EF FB               [12]  522 	mov	r3,a
      0028F0 EC               [12]  523 	mov	a,r4
      0028F1 33               [12]  524 	rlc	a
      0028F2 FC               [12]  525 	mov	r4,a
      0028F3 EB               [12]  526 	mov	a,r3
      0028F4 2B               [12]  527 	add	a,r3
      0028F5 FB               [12]  528 	mov	r3,a
      0028F6 EC               [12]  529 	mov	a,r4
      0028F7 33               [12]  530 	rlc	a
      0028F8 FC               [12]  531 	mov	r4,a
      0028F9 EB               [12]  532 	mov	a,r3
      0028FA 2F               [12]  533 	add	a,r7
      0028FB FB               [12]  534 	mov	r3,a
      0028FC EC               [12]  535 	mov	a,r4
      0028FD 3E               [12]  536 	addc	a,r6
      0028FE FC               [12]  537 	mov	r4,a
      0028FF 8B 82            [24]  538 	mov	dpl,r3
      002901 8C 83            [24]  539 	mov	dph,r4
      002903 8D F0            [24]  540 	mov	b,r5
      002905 12 66 39         [24]  541 	lcall	__gptrget
      002908 FB               [12]  542 	mov	r3,a
      002909 A3               [24]  543 	inc	dptr
      00290A 12 66 39         [24]  544 	lcall	__gptrget
      00290D FC               [12]  545 	mov	r4,a
      00290E A3               [24]  546 	inc	dptr
      00290F 12 66 39         [24]  547 	lcall	__gptrget
      002912 FD               [12]  548 	mov	r5,a
      002913 A3               [24]  549 	inc	dptr
      002914 12 66 39         [24]  550 	lcall	__gptrget
      002917 FF               [12]  551 	mov	r7,a
      002918 A8 08            [24]  552 	mov	r0,_bp
      00291A 08               [12]  553 	inc	r0
      00291B 86 82            [24]  554 	mov	dpl,@r0
      00291D 08               [12]  555 	inc	r0
      00291E 86 83            [24]  556 	mov	dph,@r0
      002920 08               [12]  557 	inc	r0
      002921 86 F0            [24]  558 	mov	b,@r0
      002923 EB               [12]  559 	mov	a,r3
      002924 12 5E E9         [24]  560 	lcall	__gptrput
      002927 A3               [24]  561 	inc	dptr
      002928 EC               [12]  562 	mov	a,r4
      002929 12 5E E9         [24]  563 	lcall	__gptrput
      00292C A3               [24]  564 	inc	dptr
      00292D ED               [12]  565 	mov	a,r5
      00292E 12 5E E9         [24]  566 	lcall	__gptrput
      002931 A3               [24]  567 	inc	dptr
      002932 EF               [12]  568 	mov	a,r7
      002933 12 5E E9         [24]  569 	lcall	__gptrput
                                    570 ;	stack.c:41: return 1;
      002936 90 00 01         [24]  571 	mov	dptr,#0x0001
      002939                        572 00105$:
                                    573 ;	stack.c:42: }
      002939 85 08 81         [24]  574 	mov	sp,_bp
      00293C D0 08            [24]  575 	pop	_bp
      00293E 22               [24]  576 	ret
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
      00293F                        592 _stack_peek2:
      00293F C0 08            [24]  593 	push	_bp
      002941 85 81 08         [24]  594 	mov	_bp,sp
      002944 C0 82            [24]  595 	push	dpl
      002946 C0 83            [24]  596 	push	dph
      002948 C0 F0            [24]  597 	push	b
      00294A E5 81            [12]  598 	mov	a,sp
      00294C 24 09            [12]  599 	add	a,#0x09
      00294E F5 81            [12]  600 	mov	sp,a
                                    601 ;	stack.c:47: nvals = 0;
                                    602 ;	stack.c:48: vals[0] = vals[1] = 0l;
      002950 E4               [12]  603 	clr	a
      002951 FD               [12]  604 	mov	r5,a
      002952 FC               [12]  605 	mov	r4,a
      002953 E5 08            [12]  606 	mov	a,_bp
      002955 24 FB            [12]  607 	add	a,#0xfb
      002957 F8               [12]  608 	mov	r0,a
      002958 E5 08            [12]  609 	mov	a,_bp
      00295A 24 0A            [12]  610 	add	a,#0x0a
      00295C F9               [12]  611 	mov	r1,a
      00295D E6               [12]  612 	mov	a,@r0
      00295E F7               [12]  613 	mov	@r1,a
      00295F 08               [12]  614 	inc	r0
      002960 09               [12]  615 	inc	r1
      002961 E6               [12]  616 	mov	a,@r0
      002962 F7               [12]  617 	mov	@r1,a
      002963 08               [12]  618 	inc	r0
      002964 09               [12]  619 	inc	r1
      002965 E6               [12]  620 	mov	a,@r0
      002966 F7               [12]  621 	mov	@r1,a
      002967 E5 08            [12]  622 	mov	a,_bp
      002969 24 0A            [12]  623 	add	a,#0x0a
      00296B F8               [12]  624 	mov	r0,a
      00296C E5 08            [12]  625 	mov	a,_bp
      00296E 24 04            [12]  626 	add	a,#0x04
      002970 F9               [12]  627 	mov	r1,a
      002971 74 04            [12]  628 	mov	a,#0x04
      002973 26               [12]  629 	add	a,@r0
      002974 F7               [12]  630 	mov	@r1,a
      002975 E4               [12]  631 	clr	a
      002976 08               [12]  632 	inc	r0
      002977 36               [12]  633 	addc	a,@r0
      002978 09               [12]  634 	inc	r1
      002979 F7               [12]  635 	mov	@r1,a
      00297A 08               [12]  636 	inc	r0
      00297B 09               [12]  637 	inc	r1
      00297C E6               [12]  638 	mov	a,@r0
      00297D F7               [12]  639 	mov	@r1,a
      00297E E5 08            [12]  640 	mov	a,_bp
      002980 24 04            [12]  641 	add	a,#0x04
      002982 F8               [12]  642 	mov	r0,a
      002983 86 82            [24]  643 	mov	dpl,@r0
      002985 08               [12]  644 	inc	r0
      002986 86 83            [24]  645 	mov	dph,@r0
      002988 08               [12]  646 	inc	r0
      002989 86 F0            [24]  647 	mov	b,@r0
      00298B E4               [12]  648 	clr	a
      00298C 12 5E E9         [24]  649 	lcall	__gptrput
      00298F A3               [24]  650 	inc	dptr
      002990 12 5E E9         [24]  651 	lcall	__gptrput
      002993 A3               [24]  652 	inc	dptr
      002994 12 5E E9         [24]  653 	lcall	__gptrput
      002997 A3               [24]  654 	inc	dptr
      002998 12 5E E9         [24]  655 	lcall	__gptrput
      00299B E5 08            [12]  656 	mov	a,_bp
      00299D 24 0A            [12]  657 	add	a,#0x0a
      00299F F8               [12]  658 	mov	r0,a
      0029A0 86 82            [24]  659 	mov	dpl,@r0
      0029A2 08               [12]  660 	inc	r0
      0029A3 86 83            [24]  661 	mov	dph,@r0
      0029A5 08               [12]  662 	inc	r0
      0029A6 86 F0            [24]  663 	mov	b,@r0
      0029A8 E4               [12]  664 	clr	a
      0029A9 12 5E E9         [24]  665 	lcall	__gptrput
      0029AC A3               [24]  666 	inc	dptr
      0029AD 12 5E E9         [24]  667 	lcall	__gptrput
      0029B0 A3               [24]  668 	inc	dptr
      0029B1 12 5E E9         [24]  669 	lcall	__gptrput
      0029B4 A3               [24]  670 	inc	dptr
      0029B5 12 5E E9         [24]  671 	lcall	__gptrput
                                    672 ;	stack.c:50: if (giant) goto out; /* if called from ISR */
      0029B8 78 09            [12]  673 	mov	r0,#_giant
      0029BA E6               [12]  674 	mov	a,@r0
      0029BB 60 03            [24]  675 	jz	00122$
      0029BD 02 2A C7         [24]  676 	ljmp	00107$
      0029C0                        677 00122$:
                                    678 ;	stack.c:52: if (s->p < 0) goto out;
      0029C0 A8 08            [24]  679 	mov	r0,_bp
      0029C2 08               [12]  680 	inc	r0
      0029C3 E5 08            [12]  681 	mov	a,_bp
      0029C5 24 07            [12]  682 	add	a,#0x07
      0029C7 F9               [12]  683 	mov	r1,a
      0029C8 74 02            [12]  684 	mov	a,#0x02
      0029CA 26               [12]  685 	add	a,@r0
      0029CB F7               [12]  686 	mov	@r1,a
      0029CC 74 20            [12]  687 	mov	a,#0x20
      0029CE 08               [12]  688 	inc	r0
      0029CF 36               [12]  689 	addc	a,@r0
      0029D0 09               [12]  690 	inc	r1
      0029D1 F7               [12]  691 	mov	@r1,a
      0029D2 08               [12]  692 	inc	r0
      0029D3 09               [12]  693 	inc	r1
      0029D4 E6               [12]  694 	mov	a,@r0
      0029D5 F7               [12]  695 	mov	@r1,a
      0029D6 E5 08            [12]  696 	mov	a,_bp
      0029D8 24 07            [12]  697 	add	a,#0x07
      0029DA F8               [12]  698 	mov	r0,a
      0029DB 86 82            [24]  699 	mov	dpl,@r0
      0029DD 08               [12]  700 	inc	r0
      0029DE 86 83            [24]  701 	mov	dph,@r0
      0029E0 08               [12]  702 	inc	r0
      0029E1 86 F0            [24]  703 	mov	b,@r0
      0029E3 12 66 39         [24]  704 	lcall	__gptrget
      0029E6 FF               [12]  705 	mov	r7,a
      0029E7 A3               [24]  706 	inc	dptr
      0029E8 12 66 39         [24]  707 	lcall	__gptrget
      0029EB FE               [12]  708 	mov	r6,a
      0029EC 30 E7 03         [24]  709 	jnb	acc.7,00123$
      0029EF 02 2A C7         [24]  710 	ljmp	00107$
      0029F2                        711 00123$:
                                    712 ;	stack.c:53: vals[1] = s->data[s->p];
      0029F2 EF               [12]  713 	mov	a,r7
      0029F3 2F               [12]  714 	add	a,r7
      0029F4 FC               [12]  715 	mov	r4,a
      0029F5 EE               [12]  716 	mov	a,r6
      0029F6 33               [12]  717 	rlc	a
      0029F7 FB               [12]  718 	mov	r3,a
      0029F8 EC               [12]  719 	mov	a,r4
      0029F9 2C               [12]  720 	add	a,r4
      0029FA FC               [12]  721 	mov	r4,a
      0029FB EB               [12]  722 	mov	a,r3
      0029FC 33               [12]  723 	rlc	a
      0029FD FB               [12]  724 	mov	r3,a
      0029FE A8 08            [24]  725 	mov	r0,_bp
      002A00 08               [12]  726 	inc	r0
      002A01 EC               [12]  727 	mov	a,r4
      002A02 26               [12]  728 	add	a,@r0
      002A03 FA               [12]  729 	mov	r2,a
      002A04 EB               [12]  730 	mov	a,r3
      002A05 08               [12]  731 	inc	r0
      002A06 36               [12]  732 	addc	a,@r0
      002A07 FB               [12]  733 	mov	r3,a
      002A08 08               [12]  734 	inc	r0
      002A09 86 04            [24]  735 	mov	ar4,@r0
      002A0B 8A 82            [24]  736 	mov	dpl,r2
      002A0D 8B 83            [24]  737 	mov	dph,r3
      002A0F 8C F0            [24]  738 	mov	b,r4
      002A11 12 66 39         [24]  739 	lcall	__gptrget
      002A14 FA               [12]  740 	mov	r2,a
      002A15 A3               [24]  741 	inc	dptr
      002A16 12 66 39         [24]  742 	lcall	__gptrget
      002A19 FB               [12]  743 	mov	r3,a
      002A1A A3               [24]  744 	inc	dptr
      002A1B 12 66 39         [24]  745 	lcall	__gptrget
      002A1E FC               [12]  746 	mov	r4,a
      002A1F A3               [24]  747 	inc	dptr
      002A20 12 66 39         [24]  748 	lcall	__gptrget
      002A23 FF               [12]  749 	mov	r7,a
      002A24 E5 08            [12]  750 	mov	a,_bp
      002A26 24 04            [12]  751 	add	a,#0x04
      002A28 F8               [12]  752 	mov	r0,a
      002A29 86 82            [24]  753 	mov	dpl,@r0
      002A2B 08               [12]  754 	inc	r0
      002A2C 86 83            [24]  755 	mov	dph,@r0
      002A2E 08               [12]  756 	inc	r0
      002A2F 86 F0            [24]  757 	mov	b,@r0
      002A31 EA               [12]  758 	mov	a,r2
      002A32 12 5E E9         [24]  759 	lcall	__gptrput
      002A35 A3               [24]  760 	inc	dptr
      002A36 EB               [12]  761 	mov	a,r3
      002A37 12 5E E9         [24]  762 	lcall	__gptrput
      002A3A A3               [24]  763 	inc	dptr
      002A3B EC               [12]  764 	mov	a,r4
      002A3C 12 5E E9         [24]  765 	lcall	__gptrput
      002A3F A3               [24]  766 	inc	dptr
      002A40 EF               [12]  767 	mov	a,r7
      002A41 12 5E E9         [24]  768 	lcall	__gptrput
                                    769 ;	stack.c:54: nvals++;
      002A44 7D 01            [12]  770 	mov	r5,#0x01
      002A46 7C 00            [12]  771 	mov	r4,#0x00
                                    772 ;	stack.c:56: if ((s->p - 1) < 0) goto out;
      002A48 E5 08            [12]  773 	mov	a,_bp
      002A4A 24 07            [12]  774 	add	a,#0x07
      002A4C F8               [12]  775 	mov	r0,a
      002A4D 86 82            [24]  776 	mov	dpl,@r0
      002A4F 08               [12]  777 	inc	r0
      002A50 86 83            [24]  778 	mov	dph,@r0
      002A52 08               [12]  779 	inc	r0
      002A53 86 F0            [24]  780 	mov	b,@r0
      002A55 12 66 39         [24]  781 	lcall	__gptrget
      002A58 FB               [12]  782 	mov	r3,a
      002A59 A3               [24]  783 	inc	dptr
      002A5A 12 66 39         [24]  784 	lcall	__gptrget
      002A5D FA               [12]  785 	mov	r2,a
      002A5E EB               [12]  786 	mov	a,r3
      002A5F 24 FF            [12]  787 	add	a,#0xff
      002A61 FE               [12]  788 	mov	r6,a
      002A62 EA               [12]  789 	mov	a,r2
      002A63 34 FF            [12]  790 	addc	a,#0xff
      002A65 FF               [12]  791 	mov	r7,a
      002A66 20 E7 5E         [24]  792 	jb	acc.7,00107$
                                    793 ;	stack.c:57: vals[0] = s->data[s->p - 1];
      002A69 EB               [12]  794 	mov	a,r3
      002A6A 24 FF            [12]  795 	add	a,#0xff
      002A6C FE               [12]  796 	mov	r6,a
      002A6D EA               [12]  797 	mov	a,r2
      002A6E 34 FF            [12]  798 	addc	a,#0xff
      002A70 FF               [12]  799 	mov	r7,a
      002A71 EE               [12]  800 	mov	a,r6
      002A72 2E               [12]  801 	add	a,r6
      002A73 FE               [12]  802 	mov	r6,a
      002A74 EF               [12]  803 	mov	a,r7
      002A75 33               [12]  804 	rlc	a
      002A76 FF               [12]  805 	mov	r7,a
      002A77 EE               [12]  806 	mov	a,r6
      002A78 2E               [12]  807 	add	a,r6
      002A79 FE               [12]  808 	mov	r6,a
      002A7A EF               [12]  809 	mov	a,r7
      002A7B 33               [12]  810 	rlc	a
      002A7C FF               [12]  811 	mov	r7,a
      002A7D A8 08            [24]  812 	mov	r0,_bp
      002A7F 08               [12]  813 	inc	r0
      002A80 EE               [12]  814 	mov	a,r6
      002A81 26               [12]  815 	add	a,@r0
      002A82 FE               [12]  816 	mov	r6,a
      002A83 EF               [12]  817 	mov	a,r7
      002A84 08               [12]  818 	inc	r0
      002A85 36               [12]  819 	addc	a,@r0
      002A86 FD               [12]  820 	mov	r5,a
      002A87 08               [12]  821 	inc	r0
      002A88 86 07            [24]  822 	mov	ar7,@r0
      002A8A 8E 82            [24]  823 	mov	dpl,r6
      002A8C 8D 83            [24]  824 	mov	dph,r5
      002A8E 8F F0            [24]  825 	mov	b,r7
      002A90 12 66 39         [24]  826 	lcall	__gptrget
      002A93 FE               [12]  827 	mov	r6,a
      002A94 A3               [24]  828 	inc	dptr
      002A95 12 66 39         [24]  829 	lcall	__gptrget
      002A98 FD               [12]  830 	mov	r5,a
      002A99 A3               [24]  831 	inc	dptr
      002A9A 12 66 39         [24]  832 	lcall	__gptrget
      002A9D FC               [12]  833 	mov	r4,a
      002A9E A3               [24]  834 	inc	dptr
      002A9F 12 66 39         [24]  835 	lcall	__gptrget
      002AA2 FF               [12]  836 	mov	r7,a
      002AA3 E5 08            [12]  837 	mov	a,_bp
      002AA5 24 0A            [12]  838 	add	a,#0x0a
      002AA7 F8               [12]  839 	mov	r0,a
      002AA8 86 82            [24]  840 	mov	dpl,@r0
      002AAA 08               [12]  841 	inc	r0
      002AAB 86 83            [24]  842 	mov	dph,@r0
      002AAD 08               [12]  843 	inc	r0
      002AAE 86 F0            [24]  844 	mov	b,@r0
      002AB0 EE               [12]  845 	mov	a,r6
      002AB1 12 5E E9         [24]  846 	lcall	__gptrput
      002AB4 A3               [24]  847 	inc	dptr
      002AB5 ED               [12]  848 	mov	a,r5
      002AB6 12 5E E9         [24]  849 	lcall	__gptrput
      002AB9 A3               [24]  850 	inc	dptr
      002ABA EC               [12]  851 	mov	a,r4
      002ABB 12 5E E9         [24]  852 	lcall	__gptrput
      002ABE A3               [24]  853 	inc	dptr
      002ABF EF               [12]  854 	mov	a,r7
      002AC0 12 5E E9         [24]  855 	lcall	__gptrput
                                    856 ;	stack.c:58: nvals++;
      002AC3 7D 02            [12]  857 	mov	r5,#0x02
      002AC5 7C 00            [12]  858 	mov	r4,#0x00
                                    859 ;	stack.c:60: out:
      002AC7                        860 00107$:
                                    861 ;	stack.c:61: return nvals;
      002AC7 8D 82            [24]  862 	mov	dpl,r5
      002AC9 8C 83            [24]  863 	mov	dph,r4
                                    864 ;	stack.c:62: }
      002ACB 85 08 81         [24]  865 	mov	sp,_bp
      002ACE D0 08            [24]  866 	pop	_bp
      002AD0 22               [24]  867 	ret
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
      002AD1                        881 _stack_iter_peek:
      002AD1 C0 08            [24]  882 	push	_bp
      002AD3 85 81 08         [24]  883 	mov	_bp,sp
      002AD6 C0 82            [24]  884 	push	dpl
      002AD8 C0 83            [24]  885 	push	dph
      002ADA C0 F0            [24]  886 	push	b
                                    887 ;	stack.c:67: if (giant) return 0;
      002ADC 78 09            [12]  888 	mov	r0,#_giant
      002ADE E6               [12]  889 	mov	a,@r0
      002ADF 60 06            [24]  890 	jz	00102$
      002AE1 90 00 00         [24]  891 	mov	dptr,#0x0000
      002AE4 02 2B AA         [24]  892 	ljmp	00111$
      002AE7                        893 00102$:
                                    894 ;	stack.c:69: if (s->p < 0) return 0;
      002AE7 A8 08            [24]  895 	mov	r0,_bp
      002AE9 08               [12]  896 	inc	r0
      002AEA 74 02            [12]  897 	mov	a,#0x02
      002AEC 26               [12]  898 	add	a,@r0
      002AED FB               [12]  899 	mov	r3,a
      002AEE 74 20            [12]  900 	mov	a,#0x20
      002AF0 08               [12]  901 	inc	r0
      002AF1 36               [12]  902 	addc	a,@r0
      002AF2 FA               [12]  903 	mov	r2,a
      002AF3 08               [12]  904 	inc	r0
      002AF4 86 04            [24]  905 	mov	ar4,@r0
      002AF6 8B 82            [24]  906 	mov	dpl,r3
      002AF8 8A 83            [24]  907 	mov	dph,r2
      002AFA 8C F0            [24]  908 	mov	b,r4
      002AFC 12 66 39         [24]  909 	lcall	__gptrget
      002AFF FB               [12]  910 	mov	r3,a
      002B00 A3               [24]  911 	inc	dptr
      002B01 12 66 39         [24]  912 	lcall	__gptrget
      002B04 FC               [12]  913 	mov	r4,a
      002B05 30 E7 06         [24]  914 	jnb	acc.7,00104$
      002B08 90 00 00         [24]  915 	mov	dptr,#0x0000
      002B0B 02 2B AA         [24]  916 	ljmp	00111$
      002B0E                        917 00104$:
                                    918 ;	stack.c:71: for (j = s->p, r = 0; j >= 0; j--) {
      002B0E 7A 00            [12]  919 	mov	r2,#0x00
      002B10 7F 00            [12]  920 	mov	r7,#0x00
      002B12                        921 00109$:
      002B12 EC               [12]  922 	mov	a,r4
      002B13 30 E7 03         [24]  923 	jnb	acc.7,00136$
      002B16 02 2B A6         [24]  924 	ljmp	00107$
      002B19                        925 00136$:
                                    926 ;	stack.c:72: r = iter(_ctx, s->data[j]);
      002B19 EB               [12]  927 	mov	a,r3
      002B1A 2B               [12]  928 	add	a,r3
      002B1B FD               [12]  929 	mov	r5,a
      002B1C EC               [12]  930 	mov	a,r4
      002B1D 33               [12]  931 	rlc	a
      002B1E FE               [12]  932 	mov	r6,a
      002B1F ED               [12]  933 	mov	a,r5
      002B20 2D               [12]  934 	add	a,r5
      002B21 FD               [12]  935 	mov	r5,a
      002B22 EE               [12]  936 	mov	a,r6
      002B23 33               [12]  937 	rlc	a
      002B24 FE               [12]  938 	mov	r6,a
      002B25 C0 03            [24]  939 	push	ar3
      002B27 C0 04            [24]  940 	push	ar4
      002B29 A8 08            [24]  941 	mov	r0,_bp
      002B2B 08               [12]  942 	inc	r0
      002B2C ED               [12]  943 	mov	a,r5
      002B2D 26               [12]  944 	add	a,@r0
      002B2E FD               [12]  945 	mov	r5,a
      002B2F EE               [12]  946 	mov	a,r6
      002B30 08               [12]  947 	inc	r0
      002B31 36               [12]  948 	addc	a,@r0
      002B32 FC               [12]  949 	mov	r4,a
      002B33 08               [12]  950 	inc	r0
      002B34 86 06            [24]  951 	mov	ar6,@r0
      002B36 8D 82            [24]  952 	mov	dpl,r5
      002B38 8C 83            [24]  953 	mov	dph,r4
      002B3A 8E F0            [24]  954 	mov	b,r6
      002B3C 12 66 39         [24]  955 	lcall	__gptrget
      002B3F FD               [12]  956 	mov	r5,a
      002B40 A3               [24]  957 	inc	dptr
      002B41 12 66 39         [24]  958 	lcall	__gptrget
      002B44 FC               [12]  959 	mov	r4,a
      002B45 A3               [24]  960 	inc	dptr
      002B46 12 66 39         [24]  961 	lcall	__gptrget
      002B49 FE               [12]  962 	mov	r6,a
      002B4A A3               [24]  963 	inc	dptr
      002B4B 12 66 39         [24]  964 	lcall	__gptrget
      002B4E FB               [12]  965 	mov	r3,a
      002B4F C0 04            [24]  966 	push	ar4
      002B51 C0 03            [24]  967 	push	ar3
      002B53 C0 05            [24]  968 	push	ar5
      002B55 C0 04            [24]  969 	push	ar4
      002B57 C0 06            [24]  970 	push	ar6
      002B59 C0 03            [24]  971 	push	ar3
      002B5B 12 2B 60         [24]  972 	lcall	00137$
      002B5E 80 1A            [24]  973 	sjmp	00138$
      002B60                        974 00137$:
      002B60 E5 08            [12]  975 	mov	a,_bp
      002B62 24 FC            [12]  976 	add	a,#0xfc
      002B64 F8               [12]  977 	mov	r0,a
      002B65 E6               [12]  978 	mov	a,@r0
      002B66 C0 E0            [24]  979 	push	acc
      002B68 08               [12]  980 	inc	r0
      002B69 E6               [12]  981 	mov	a,@r0
      002B6A C0 E0            [24]  982 	push	acc
      002B6C E5 08            [12]  983 	mov	a,_bp
      002B6E 24 F9            [12]  984 	add	a,#0xf9
      002B70 F8               [12]  985 	mov	r0,a
      002B71 86 82            [24]  986 	mov	dpl,@r0
      002B73 08               [12]  987 	inc	r0
      002B74 86 83            [24]  988 	mov	dph,@r0
      002B76 08               [12]  989 	inc	r0
      002B77 86 F0            [24]  990 	mov	b,@r0
      002B79 22               [24]  991 	ret
      002B7A                        992 00138$:
      002B7A AD 82            [24]  993 	mov	r5,dpl
      002B7C AE 83            [24]  994 	mov	r6,dph
      002B7E E5 81            [12]  995 	mov	a,sp
      002B80 24 FC            [12]  996 	add	a,#0xfc
      002B82 F5 81            [12]  997 	mov	sp,a
      002B84 D0 03            [24]  998 	pop	ar3
      002B86 D0 04            [24]  999 	pop	ar4
      002B88 8D 02            [24] 1000 	mov	ar2,r5
      002B8A 8E 07            [24] 1001 	mov	ar7,r6
                                   1002 ;	stack.c:73: if (r <= 0) break;
      002B8C C3               [12] 1003 	clr	c
      002B8D E4               [12] 1004 	clr	a
      002B8E 9A               [12] 1005 	subb	a,r2
      002B8F 74 80            [12] 1006 	mov	a,#(0x00 ^ 0x80)
      002B91 8F F0            [24] 1007 	mov	b,r7
      002B93 63 F0 80         [24] 1008 	xrl	b,#0x80
      002B96 95 F0            [12] 1009 	subb	a,b
      002B98 D0 04            [24] 1010 	pop	ar4
      002B9A D0 03            [24] 1011 	pop	ar3
      002B9C 50 08            [24] 1012 	jnc	00107$
                                   1013 ;	stack.c:71: for (j = s->p, r = 0; j >= 0; j--) {
      002B9E 1B               [12] 1014 	dec	r3
      002B9F BB FF 01         [24] 1015 	cjne	r3,#0xff,00140$
      002BA2 1C               [12] 1016 	dec	r4
      002BA3                       1017 00140$:
      002BA3 02 2B 12         [24] 1018 	ljmp	00109$
      002BA6                       1019 00107$:
                                   1020 ;	stack.c:76: return r;
      002BA6 8A 82            [24] 1021 	mov	dpl,r2
      002BA8 8F 83            [24] 1022 	mov	dph,r7
      002BAA                       1023 00111$:
                                   1024 ;	stack.c:77: }
      002BAA 85 08 81         [24] 1025 	mov	sp,_bp
      002BAD D0 08            [24] 1026 	pop	_bp
      002BAF 22               [24] 1027 	ret
                                   1028 	.area CSEG    (CODE)
                                   1029 	.area CONST   (CODE)
                                   1030 	.area XINIT   (CODE)
                                   1031 	.area CABS    (ABS,CODE)
