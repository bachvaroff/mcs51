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
                                     99 ;	stack.c:4: void stack_init(stack_t *s) __reentrant {
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
                                    112 ;	stack.c:5: s->spin = 0;
      002680 AD 82            [24]  113 	mov	r5,dpl
      002682 AE 83            [24]  114 	mov	r6,dph
      002684 AF F0            [24]  115 	mov	r7,b
      002686 E4               [12]  116 	clr	a
      002687 12 6B 56         [24]  117 	lcall	__gptrput
                                    118 ;	stack.c:6: s->N = SIZE;
      00268A 04               [12]  119 	inc	a
      00268B 2D               [12]  120 	add	a,r5
      00268C FA               [12]  121 	mov	r2,a
      00268D 74 20            [12]  122 	mov	a,#0x20
      00268F 3E               [12]  123 	addc	a,r6
      002690 FB               [12]  124 	mov	r3,a
      002691 8F 04            [24]  125 	mov	ar4,r7
      002693 8A 82            [24]  126 	mov	dpl,r2
      002695 8B 83            [24]  127 	mov	dph,r3
      002697 8C F0            [24]  128 	mov	b,r4
      002699 E4               [12]  129 	clr	a
      00269A 12 6B 56         [24]  130 	lcall	__gptrput
      00269D A3               [24]  131 	inc	dptr
      00269E 74 08            [12]  132 	mov	a,#0x08
      0026A0 12 6B 56         [24]  133 	lcall	__gptrput
                                    134 ;	stack.c:7: s->p = -1;
      0026A3 74 03            [12]  135 	mov	a,#0x03
      0026A5 2D               [12]  136 	add	a,r5
      0026A6 FD               [12]  137 	mov	r5,a
      0026A7 74 20            [12]  138 	mov	a,#0x20
      0026A9 3E               [12]  139 	addc	a,r6
      0026AA FE               [12]  140 	mov	r6,a
      0026AB 8D 82            [24]  141 	mov	dpl,r5
      0026AD 8E 83            [24]  142 	mov	dph,r6
      0026AF 8F F0            [24]  143 	mov	b,r7
      0026B1 74 FF            [12]  144 	mov	a,#0xff
      0026B3 12 6B 56         [24]  145 	lcall	__gptrput
      0026B6 A3               [24]  146 	inc	dptr
                                    147 ;	stack.c:9: return;
                                    148 ;	stack.c:10: }
      0026B7 02 6B 56         [24]  149 	ljmp	__gptrput
                                    150 ;------------------------------------------------------------
                                    151 ;Allocation info for local variables in function 'stack_push'
                                    152 ;------------------------------------------------------------
                                    153 ;val                       Allocated to stack - _bp -6
                                    154 ;s                         Allocated to stack - _bp +1
                                    155 ;sloc0                     Allocated to stack - _bp +4
                                    156 ;------------------------------------------------------------
                                    157 ;	stack.c:12: int stack_push(stack_t *s, long val) __reentrant {
                                    158 ;	-----------------------------------------
                                    159 ;	 function stack_push
                                    160 ;	-----------------------------------------
      0026BA                        161 _stack_push:
      0026BA C0 08            [24]  162 	push	_bp
      0026BC 85 81 08         [24]  163 	mov	_bp,sp
      0026BF C0 82            [24]  164 	push	dpl
      0026C1 C0 83            [24]  165 	push	dph
      0026C3 C0 F0            [24]  166 	push	b
      0026C5 05 81            [12]  167 	inc	sp
      0026C7 05 81            [12]  168 	inc	sp
                                    169 ;	stack.c:13: if (s->p == (s->N - 1)) return 0;
      0026C9 A8 08            [24]  170 	mov	r0,_bp
      0026CB 08               [12]  171 	inc	r0
      0026CC 74 03            [12]  172 	mov	a,#0x03
      0026CE 26               [12]  173 	add	a,@r0
      0026CF FA               [12]  174 	mov	r2,a
      0026D0 74 20            [12]  175 	mov	a,#0x20
      0026D2 08               [12]  176 	inc	r0
      0026D3 36               [12]  177 	addc	a,@r0
      0026D4 FB               [12]  178 	mov	r3,a
      0026D5 08               [12]  179 	inc	r0
      0026D6 86 04            [24]  180 	mov	ar4,@r0
      0026D8 8A 82            [24]  181 	mov	dpl,r2
      0026DA 8B 83            [24]  182 	mov	dph,r3
      0026DC 8C F0            [24]  183 	mov	b,r4
      0026DE E5 08            [12]  184 	mov	a,_bp
      0026E0 24 04            [12]  185 	add	a,#0x04
      0026E2 F8               [12]  186 	mov	r0,a
      0026E3 12 6F D1         [24]  187 	lcall	__gptrget
      0026E6 F6               [12]  188 	mov	@r0,a
      0026E7 A3               [24]  189 	inc	dptr
      0026E8 12 6F D1         [24]  190 	lcall	__gptrget
      0026EB 08               [12]  191 	inc	r0
      0026EC F6               [12]  192 	mov	@r0,a
      0026ED A8 08            [24]  193 	mov	r0,_bp
      0026EF 08               [12]  194 	inc	r0
      0026F0 74 01            [12]  195 	mov	a,#0x01
      0026F2 26               [12]  196 	add	a,@r0
      0026F3 FD               [12]  197 	mov	r5,a
      0026F4 74 20            [12]  198 	mov	a,#0x20
      0026F6 08               [12]  199 	inc	r0
      0026F7 36               [12]  200 	addc	a,@r0
      0026F8 FE               [12]  201 	mov	r6,a
      0026F9 08               [12]  202 	inc	r0
      0026FA 86 07            [24]  203 	mov	ar7,@r0
      0026FC 8D 82            [24]  204 	mov	dpl,r5
      0026FE 8E 83            [24]  205 	mov	dph,r6
      002700 8F F0            [24]  206 	mov	b,r7
      002702 12 6F D1         [24]  207 	lcall	__gptrget
      002705 FD               [12]  208 	mov	r5,a
      002706 A3               [24]  209 	inc	dptr
      002707 12 6F D1         [24]  210 	lcall	__gptrget
      00270A FE               [12]  211 	mov	r6,a
      00270B 1D               [12]  212 	dec	r5
      00270C BD FF 01         [24]  213 	cjne	r5,#0xff,00109$
      00270F 1E               [12]  214 	dec	r6
      002710                        215 00109$:
      002710 E5 08            [12]  216 	mov	a,_bp
      002712 24 04            [12]  217 	add	a,#0x04
      002714 F8               [12]  218 	mov	r0,a
      002715 E6               [12]  219 	mov	a,@r0
      002716 B5 05 07         [24]  220 	cjne	a,ar5,00110$
      002719 08               [12]  221 	inc	r0
      00271A E6               [12]  222 	mov	a,@r0
      00271B B5 06 02         [24]  223 	cjne	a,ar6,00110$
      00271E 80 02            [24]  224 	sjmp	00111$
      002720                        225 00110$:
      002720 80 06            [24]  226 	sjmp	00102$
      002722                        227 00111$:
      002722 90 00 00         [24]  228 	mov	dptr,#0x0000
      002725 02 27 AE         [24]  229 	ljmp	00103$
      002728                        230 00102$:
                                    231 ;	stack.c:14: s->spin = 1;
      002728 A8 08            [24]  232 	mov	r0,_bp
      00272A 08               [12]  233 	inc	r0
      00272B 86 82            [24]  234 	mov	dpl,@r0
      00272D 08               [12]  235 	inc	r0
      00272E 86 83            [24]  236 	mov	dph,@r0
      002730 08               [12]  237 	inc	r0
      002731 86 F0            [24]  238 	mov	b,@r0
      002733 74 01            [12]  239 	mov	a,#0x01
      002735 12 6B 56         [24]  240 	lcall	__gptrput
                                    241 ;	stack.c:15: s->p++;
      002738 8A 82            [24]  242 	mov	dpl,r2
      00273A 8B 83            [24]  243 	mov	dph,r3
      00273C 8C F0            [24]  244 	mov	b,r4
      00273E 12 6F D1         [24]  245 	lcall	__gptrget
      002741 FE               [12]  246 	mov	r6,a
      002742 A3               [24]  247 	inc	dptr
      002743 12 6F D1         [24]  248 	lcall	__gptrget
      002746 FF               [12]  249 	mov	r7,a
      002747 0E               [12]  250 	inc	r6
      002748 BE 00 01         [24]  251 	cjne	r6,#0x00,00112$
      00274B 0F               [12]  252 	inc	r7
      00274C                        253 00112$:
      00274C 8A 82            [24]  254 	mov	dpl,r2
      00274E 8B 83            [24]  255 	mov	dph,r3
      002750 8C F0            [24]  256 	mov	b,r4
      002752 EE               [12]  257 	mov	a,r6
      002753 12 6B 56         [24]  258 	lcall	__gptrput
      002756 A3               [24]  259 	inc	dptr
      002757 EF               [12]  260 	mov	a,r7
      002758 12 6B 56         [24]  261 	lcall	__gptrput
                                    262 ;	stack.c:16: s->data[s->p] = val;
      00275B A8 08            [24]  263 	mov	r0,_bp
      00275D 08               [12]  264 	inc	r0
      00275E 74 01            [12]  265 	mov	a,#0x01
      002760 26               [12]  266 	add	a,@r0
      002761 FB               [12]  267 	mov	r3,a
      002762 E4               [12]  268 	clr	a
      002763 08               [12]  269 	inc	r0
      002764 36               [12]  270 	addc	a,@r0
      002765 FC               [12]  271 	mov	r4,a
      002766 08               [12]  272 	inc	r0
      002767 86 05            [24]  273 	mov	ar5,@r0
      002769 EE               [12]  274 	mov	a,r6
      00276A 2E               [12]  275 	add	a,r6
      00276B FE               [12]  276 	mov	r6,a
      00276C EF               [12]  277 	mov	a,r7
      00276D 33               [12]  278 	rlc	a
      00276E FF               [12]  279 	mov	r7,a
      00276F EE               [12]  280 	mov	a,r6
      002770 2E               [12]  281 	add	a,r6
      002771 FE               [12]  282 	mov	r6,a
      002772 EF               [12]  283 	mov	a,r7
      002773 33               [12]  284 	rlc	a
      002774 FF               [12]  285 	mov	r7,a
      002775 EE               [12]  286 	mov	a,r6
      002776 2B               [12]  287 	add	a,r3
      002777 FB               [12]  288 	mov	r3,a
      002778 EF               [12]  289 	mov	a,r7
      002779 3C               [12]  290 	addc	a,r4
      00277A FC               [12]  291 	mov	r4,a
      00277B 8B 82            [24]  292 	mov	dpl,r3
      00277D 8C 83            [24]  293 	mov	dph,r4
      00277F 8D F0            [24]  294 	mov	b,r5
      002781 E5 08            [12]  295 	mov	a,_bp
      002783 24 FA            [12]  296 	add	a,#0xfa
      002785 F8               [12]  297 	mov	r0,a
      002786 E6               [12]  298 	mov	a,@r0
      002787 12 6B 56         [24]  299 	lcall	__gptrput
      00278A A3               [24]  300 	inc	dptr
      00278B 08               [12]  301 	inc	r0
      00278C E6               [12]  302 	mov	a,@r0
      00278D 12 6B 56         [24]  303 	lcall	__gptrput
      002790 A3               [24]  304 	inc	dptr
      002791 08               [12]  305 	inc	r0
      002792 E6               [12]  306 	mov	a,@r0
      002793 12 6B 56         [24]  307 	lcall	__gptrput
      002796 A3               [24]  308 	inc	dptr
      002797 08               [12]  309 	inc	r0
      002798 E6               [12]  310 	mov	a,@r0
      002799 12 6B 56         [24]  311 	lcall	__gptrput
                                    312 ;	stack.c:17: s->spin = 0;
      00279C A8 08            [24]  313 	mov	r0,_bp
      00279E 08               [12]  314 	inc	r0
      00279F 86 82            [24]  315 	mov	dpl,@r0
      0027A1 08               [12]  316 	inc	r0
      0027A2 86 83            [24]  317 	mov	dph,@r0
      0027A4 08               [12]  318 	inc	r0
      0027A5 86 F0            [24]  319 	mov	b,@r0
      0027A7 E4               [12]  320 	clr	a
      0027A8 12 6B 56         [24]  321 	lcall	__gptrput
                                    322 ;	stack.c:18: return 1;
      0027AB 90 00 01         [24]  323 	mov	dptr,#0x0001
      0027AE                        324 00103$:
                                    325 ;	stack.c:19: }
      0027AE 85 08 81         [24]  326 	mov	sp,_bp
      0027B1 D0 08            [24]  327 	pop	_bp
      0027B3 22               [24]  328 	ret
                                    329 ;------------------------------------------------------------
                                    330 ;Allocation info for local variables in function 'stack_pop'
                                    331 ;------------------------------------------------------------
                                    332 ;val                       Allocated to stack - _bp -5
                                    333 ;s                         Allocated to stack - _bp +1
                                    334 ;sloc0                     Allocated to stack - _bp +4
                                    335 ;sloc1                     Allocated to stack - _bp +7
                                    336 ;sloc2                     Allocated to stack - _bp +7
                                    337 ;------------------------------------------------------------
                                    338 ;	stack.c:21: int stack_pop(stack_t *s, long *val) __reentrant {
                                    339 ;	-----------------------------------------
                                    340 ;	 function stack_pop
                                    341 ;	-----------------------------------------
      0027B4                        342 _stack_pop:
      0027B4 C0 08            [24]  343 	push	_bp
      0027B6 85 81 08         [24]  344 	mov	_bp,sp
      0027B9 C0 82            [24]  345 	push	dpl
      0027BB C0 83            [24]  346 	push	dph
      0027BD C0 F0            [24]  347 	push	b
      0027BF E5 81            [12]  348 	mov	a,sp
      0027C1 24 06            [12]  349 	add	a,#0x06
      0027C3 F5 81            [12]  350 	mov	sp,a
                                    351 ;	stack.c:22: if (s->p < 0) return 0;
      0027C5 A8 08            [24]  352 	mov	r0,_bp
      0027C7 08               [12]  353 	inc	r0
      0027C8 E5 08            [12]  354 	mov	a,_bp
      0027CA 24 07            [12]  355 	add	a,#0x07
      0027CC F9               [12]  356 	mov	r1,a
      0027CD 74 03            [12]  357 	mov	a,#0x03
      0027CF 26               [12]  358 	add	a,@r0
      0027D0 F7               [12]  359 	mov	@r1,a
      0027D1 74 20            [12]  360 	mov	a,#0x20
      0027D3 08               [12]  361 	inc	r0
      0027D4 36               [12]  362 	addc	a,@r0
      0027D5 09               [12]  363 	inc	r1
      0027D6 F7               [12]  364 	mov	@r1,a
      0027D7 08               [12]  365 	inc	r0
      0027D8 09               [12]  366 	inc	r1
      0027D9 E6               [12]  367 	mov	a,@r0
      0027DA F7               [12]  368 	mov	@r1,a
      0027DB E5 08            [12]  369 	mov	a,_bp
      0027DD 24 07            [12]  370 	add	a,#0x07
      0027DF F8               [12]  371 	mov	r0,a
      0027E0 86 82            [24]  372 	mov	dpl,@r0
      0027E2 08               [12]  373 	inc	r0
      0027E3 86 83            [24]  374 	mov	dph,@r0
      0027E5 08               [12]  375 	inc	r0
      0027E6 86 F0            [24]  376 	mov	b,@r0
      0027E8 12 6F D1         [24]  377 	lcall	__gptrget
      0027EB FE               [12]  378 	mov	r6,a
      0027EC A3               [24]  379 	inc	dptr
      0027ED 12 6F D1         [24]  380 	lcall	__gptrget
      0027F0 FF               [12]  381 	mov	r7,a
      0027F1 30 E7 06         [24]  382 	jnb	acc.7,00102$
      0027F4 90 00 00         [24]  383 	mov	dptr,#0x0000
      0027F7 02 28 D2         [24]  384 	ljmp	00103$
      0027FA                        385 00102$:
                                    386 ;	stack.c:23: s->spin = 1;
      0027FA A8 08            [24]  387 	mov	r0,_bp
      0027FC 08               [12]  388 	inc	r0
      0027FD 86 82            [24]  389 	mov	dpl,@r0
      0027FF 08               [12]  390 	inc	r0
      002800 86 83            [24]  391 	mov	dph,@r0
      002802 08               [12]  392 	inc	r0
      002803 86 F0            [24]  393 	mov	b,@r0
      002805 74 01            [12]  394 	mov	a,#0x01
      002807 12 6B 56         [24]  395 	lcall	__gptrput
                                    396 ;	stack.c:24: *val = s->data[s->p];
      00280A E5 08            [12]  397 	mov	a,_bp
      00280C 24 FB            [12]  398 	add	a,#0xfb
      00280E F8               [12]  399 	mov	r0,a
      00280F E5 08            [12]  400 	mov	a,_bp
      002811 24 04            [12]  401 	add	a,#0x04
      002813 F9               [12]  402 	mov	r1,a
      002814 E6               [12]  403 	mov	a,@r0
      002815 F7               [12]  404 	mov	@r1,a
      002816 08               [12]  405 	inc	r0
      002817 09               [12]  406 	inc	r1
      002818 E6               [12]  407 	mov	a,@r0
      002819 F7               [12]  408 	mov	@r1,a
      00281A 08               [12]  409 	inc	r0
      00281B 09               [12]  410 	inc	r1
      00281C E6               [12]  411 	mov	a,@r0
      00281D F7               [12]  412 	mov	@r1,a
      00281E A8 08            [24]  413 	mov	r0,_bp
      002820 08               [12]  414 	inc	r0
      002821 74 01            [12]  415 	mov	a,#0x01
      002823 26               [12]  416 	add	a,@r0
      002824 FD               [12]  417 	mov	r5,a
      002825 E4               [12]  418 	clr	a
      002826 08               [12]  419 	inc	r0
      002827 36               [12]  420 	addc	a,@r0
      002828 FC               [12]  421 	mov	r4,a
      002829 08               [12]  422 	inc	r0
      00282A 86 03            [24]  423 	mov	ar3,@r0
      00282C E5 08            [12]  424 	mov	a,_bp
      00282E 24 07            [12]  425 	add	a,#0x07
      002830 F8               [12]  426 	mov	r0,a
      002831 86 82            [24]  427 	mov	dpl,@r0
      002833 08               [12]  428 	inc	r0
      002834 86 83            [24]  429 	mov	dph,@r0
      002836 08               [12]  430 	inc	r0
      002837 86 F0            [24]  431 	mov	b,@r0
      002839 12 6F D1         [24]  432 	lcall	__gptrget
      00283C FF               [12]  433 	mov	r7,a
      00283D A3               [24]  434 	inc	dptr
      00283E 12 6F D1         [24]  435 	lcall	__gptrget
      002841 FE               [12]  436 	mov	r6,a
      002842 EF               [12]  437 	mov	a,r7
      002843 2F               [12]  438 	add	a,r7
      002844 FF               [12]  439 	mov	r7,a
      002845 EE               [12]  440 	mov	a,r6
      002846 33               [12]  441 	rlc	a
      002847 FE               [12]  442 	mov	r6,a
      002848 EF               [12]  443 	mov	a,r7
      002849 2F               [12]  444 	add	a,r7
      00284A FF               [12]  445 	mov	r7,a
      00284B EE               [12]  446 	mov	a,r6
      00284C 33               [12]  447 	rlc	a
      00284D FE               [12]  448 	mov	r6,a
      00284E EF               [12]  449 	mov	a,r7
      00284F 2D               [12]  450 	add	a,r5
      002850 FD               [12]  451 	mov	r5,a
      002851 EE               [12]  452 	mov	a,r6
      002852 3C               [12]  453 	addc	a,r4
      002853 FE               [12]  454 	mov	r6,a
      002854 8B 07            [24]  455 	mov	ar7,r3
      002856 8D 82            [24]  456 	mov	dpl,r5
      002858 8E 83            [24]  457 	mov	dph,r6
      00285A 8F F0            [24]  458 	mov	b,r7
      00285C 12 6F D1         [24]  459 	lcall	__gptrget
      00285F FD               [12]  460 	mov	r5,a
      002860 A3               [24]  461 	inc	dptr
      002861 12 6F D1         [24]  462 	lcall	__gptrget
      002864 FE               [12]  463 	mov	r6,a
      002865 A3               [24]  464 	inc	dptr
      002866 12 6F D1         [24]  465 	lcall	__gptrget
      002869 FC               [12]  466 	mov	r4,a
      00286A A3               [24]  467 	inc	dptr
      00286B 12 6F D1         [24]  468 	lcall	__gptrget
      00286E FF               [12]  469 	mov	r7,a
      00286F E5 08            [12]  470 	mov	a,_bp
      002871 24 04            [12]  471 	add	a,#0x04
      002873 F8               [12]  472 	mov	r0,a
      002874 86 82            [24]  473 	mov	dpl,@r0
      002876 08               [12]  474 	inc	r0
      002877 86 83            [24]  475 	mov	dph,@r0
      002879 08               [12]  476 	inc	r0
      00287A 86 F0            [24]  477 	mov	b,@r0
      00287C ED               [12]  478 	mov	a,r5
      00287D 12 6B 56         [24]  479 	lcall	__gptrput
      002880 A3               [24]  480 	inc	dptr
      002881 EE               [12]  481 	mov	a,r6
      002882 12 6B 56         [24]  482 	lcall	__gptrput
      002885 A3               [24]  483 	inc	dptr
      002886 EC               [12]  484 	mov	a,r4
      002887 12 6B 56         [24]  485 	lcall	__gptrput
      00288A A3               [24]  486 	inc	dptr
      00288B EF               [12]  487 	mov	a,r7
      00288C 12 6B 56         [24]  488 	lcall	__gptrput
                                    489 ;	stack.c:25: s->p--;
      00288F E5 08            [12]  490 	mov	a,_bp
      002891 24 07            [12]  491 	add	a,#0x07
      002893 F8               [12]  492 	mov	r0,a
      002894 86 82            [24]  493 	mov	dpl,@r0
      002896 08               [12]  494 	inc	r0
      002897 86 83            [24]  495 	mov	dph,@r0
      002899 08               [12]  496 	inc	r0
      00289A 86 F0            [24]  497 	mov	b,@r0
      00289C 12 6F D1         [24]  498 	lcall	__gptrget
      00289F FE               [12]  499 	mov	r6,a
      0028A0 A3               [24]  500 	inc	dptr
      0028A1 12 6F D1         [24]  501 	lcall	__gptrget
      0028A4 FF               [12]  502 	mov	r7,a
      0028A5 1E               [12]  503 	dec	r6
      0028A6 BE FF 01         [24]  504 	cjne	r6,#0xff,00110$
      0028A9 1F               [12]  505 	dec	r7
      0028AA                        506 00110$:
      0028AA E5 08            [12]  507 	mov	a,_bp
      0028AC 24 07            [12]  508 	add	a,#0x07
      0028AE F8               [12]  509 	mov	r0,a
      0028AF 86 82            [24]  510 	mov	dpl,@r0
      0028B1 08               [12]  511 	inc	r0
      0028B2 86 83            [24]  512 	mov	dph,@r0
      0028B4 08               [12]  513 	inc	r0
      0028B5 86 F0            [24]  514 	mov	b,@r0
      0028B7 EE               [12]  515 	mov	a,r6
      0028B8 12 6B 56         [24]  516 	lcall	__gptrput
      0028BB A3               [24]  517 	inc	dptr
      0028BC EF               [12]  518 	mov	a,r7
      0028BD 12 6B 56         [24]  519 	lcall	__gptrput
                                    520 ;	stack.c:26: s->spin = 0;
      0028C0 A8 08            [24]  521 	mov	r0,_bp
      0028C2 08               [12]  522 	inc	r0
      0028C3 86 82            [24]  523 	mov	dpl,@r0
      0028C5 08               [12]  524 	inc	r0
      0028C6 86 83            [24]  525 	mov	dph,@r0
      0028C8 08               [12]  526 	inc	r0
      0028C9 86 F0            [24]  527 	mov	b,@r0
      0028CB E4               [12]  528 	clr	a
      0028CC 12 6B 56         [24]  529 	lcall	__gptrput
                                    530 ;	stack.c:27: return 1;
      0028CF 90 00 01         [24]  531 	mov	dptr,#0x0001
      0028D2                        532 00103$:
                                    533 ;	stack.c:28: }
      0028D2 85 08 81         [24]  534 	mov	sp,_bp
      0028D5 D0 08            [24]  535 	pop	_bp
      0028D7 22               [24]  536 	ret
                                    537 ;------------------------------------------------------------
                                    538 ;Allocation info for local variables in function 'stack_peek'
                                    539 ;------------------------------------------------------------
                                    540 ;val                       Allocated to stack - _bp -5
                                    541 ;s                         Allocated to registers r5 r6 r7 
                                    542 ;sloc0                     Allocated to stack - _bp +1
                                    543 ;------------------------------------------------------------
                                    544 ;	stack.c:30: int stack_peek(stack_t *s, long *val) __reentrant {
                                    545 ;	-----------------------------------------
                                    546 ;	 function stack_peek
                                    547 ;	-----------------------------------------
      0028D8                        548 _stack_peek:
      0028D8 C0 08            [24]  549 	push	_bp
      0028DA 85 81 08         [24]  550 	mov	_bp,sp
      0028DD 05 81            [12]  551 	inc	sp
      0028DF 05 81            [12]  552 	inc	sp
      0028E1 05 81            [12]  553 	inc	sp
      0028E3 AD 82            [24]  554 	mov	r5,dpl
      0028E5 AE 83            [24]  555 	mov	r6,dph
      0028E7 AF F0            [24]  556 	mov	r7,b
                                    557 ;	stack.c:31: if (s->p < 0) return 0;
      0028E9 74 03            [12]  558 	mov	a,#0x03
      0028EB 2D               [12]  559 	add	a,r5
      0028EC FB               [12]  560 	mov	r3,a
      0028ED 74 20            [12]  561 	mov	a,#0x20
      0028EF 3E               [12]  562 	addc	a,r6
      0028F0 FA               [12]  563 	mov	r2,a
      0028F1 8F 04            [24]  564 	mov	ar4,r7
      0028F3 8B 82            [24]  565 	mov	dpl,r3
      0028F5 8A 83            [24]  566 	mov	dph,r2
      0028F7 8C F0            [24]  567 	mov	b,r4
      0028F9 12 6F D1         [24]  568 	lcall	__gptrget
      0028FC FB               [12]  569 	mov	r3,a
      0028FD A3               [24]  570 	inc	dptr
      0028FE 12 6F D1         [24]  571 	lcall	__gptrget
      002901 FC               [12]  572 	mov	r4,a
      002902 30 E7 05         [24]  573 	jnb	acc.7,00102$
      002905 90 00 00         [24]  574 	mov	dptr,#0x0000
      002908 80 63            [24]  575 	sjmp	00103$
      00290A                        576 00102$:
                                    577 ;	stack.c:32: *val = s->data[s->p];
      00290A E5 08            [12]  578 	mov	a,_bp
      00290C 24 FB            [12]  579 	add	a,#0xfb
      00290E F8               [12]  580 	mov	r0,a
      00290F A9 08            [24]  581 	mov	r1,_bp
      002911 09               [12]  582 	inc	r1
      002912 E6               [12]  583 	mov	a,@r0
      002913 F7               [12]  584 	mov	@r1,a
      002914 08               [12]  585 	inc	r0
      002915 09               [12]  586 	inc	r1
      002916 E6               [12]  587 	mov	a,@r0
      002917 F7               [12]  588 	mov	@r1,a
      002918 08               [12]  589 	inc	r0
      002919 09               [12]  590 	inc	r1
      00291A E6               [12]  591 	mov	a,@r0
      00291B F7               [12]  592 	mov	@r1,a
      00291C 0D               [12]  593 	inc	r5
      00291D BD 00 01         [24]  594 	cjne	r5,#0x00,00110$
      002920 0E               [12]  595 	inc	r6
      002921                        596 00110$:
      002921 EB               [12]  597 	mov	a,r3
      002922 2B               [12]  598 	add	a,r3
      002923 FB               [12]  599 	mov	r3,a
      002924 EC               [12]  600 	mov	a,r4
      002925 33               [12]  601 	rlc	a
      002926 FC               [12]  602 	mov	r4,a
      002927 EB               [12]  603 	mov	a,r3
      002928 2B               [12]  604 	add	a,r3
      002929 FB               [12]  605 	mov	r3,a
      00292A EC               [12]  606 	mov	a,r4
      00292B 33               [12]  607 	rlc	a
      00292C FC               [12]  608 	mov	r4,a
      00292D EB               [12]  609 	mov	a,r3
      00292E 2D               [12]  610 	add	a,r5
      00292F FD               [12]  611 	mov	r5,a
      002930 EC               [12]  612 	mov	a,r4
      002931 3E               [12]  613 	addc	a,r6
      002932 FE               [12]  614 	mov	r6,a
      002933 8D 82            [24]  615 	mov	dpl,r5
      002935 8E 83            [24]  616 	mov	dph,r6
      002937 8F F0            [24]  617 	mov	b,r7
      002939 12 6F D1         [24]  618 	lcall	__gptrget
      00293C FD               [12]  619 	mov	r5,a
      00293D A3               [24]  620 	inc	dptr
      00293E 12 6F D1         [24]  621 	lcall	__gptrget
      002941 FE               [12]  622 	mov	r6,a
      002942 A3               [24]  623 	inc	dptr
      002943 12 6F D1         [24]  624 	lcall	__gptrget
      002946 FF               [12]  625 	mov	r7,a
      002947 A3               [24]  626 	inc	dptr
      002948 12 6F D1         [24]  627 	lcall	__gptrget
      00294B FC               [12]  628 	mov	r4,a
      00294C A8 08            [24]  629 	mov	r0,_bp
      00294E 08               [12]  630 	inc	r0
      00294F 86 82            [24]  631 	mov	dpl,@r0
      002951 08               [12]  632 	inc	r0
      002952 86 83            [24]  633 	mov	dph,@r0
      002954 08               [12]  634 	inc	r0
      002955 86 F0            [24]  635 	mov	b,@r0
      002957 ED               [12]  636 	mov	a,r5
      002958 12 6B 56         [24]  637 	lcall	__gptrput
      00295B A3               [24]  638 	inc	dptr
      00295C EE               [12]  639 	mov	a,r6
      00295D 12 6B 56         [24]  640 	lcall	__gptrput
      002960 A3               [24]  641 	inc	dptr
      002961 EF               [12]  642 	mov	a,r7
      002962 12 6B 56         [24]  643 	lcall	__gptrput
      002965 A3               [24]  644 	inc	dptr
      002966 EC               [12]  645 	mov	a,r4
      002967 12 6B 56         [24]  646 	lcall	__gptrput
                                    647 ;	stack.c:33: return 1;
      00296A 90 00 01         [24]  648 	mov	dptr,#0x0001
      00296D                        649 00103$:
                                    650 ;	stack.c:34: }
      00296D 85 08 81         [24]  651 	mov	sp,_bp
      002970 D0 08            [24]  652 	pop	_bp
      002972 22               [24]  653 	ret
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'stack_peek2'
                                    656 ;------------------------------------------------------------
                                    657 ;vals                      Allocated to stack - _bp -5
                                    658 ;s                         Allocated to stack - _bp +1
                                    659 ;nvals                     Allocated to registers r3 r2 
                                    660 ;sloc0                     Allocated to stack - _bp +6
                                    661 ;sloc1                     Allocated to stack - _bp +4
                                    662 ;sloc2                     Allocated to stack - _bp +11
                                    663 ;sloc3                     Allocated to stack - _bp +7
                                    664 ;------------------------------------------------------------
                                    665 ;	stack.c:36: int stack_peek2(stack_t *s, long *vals) __reentrant {
                                    666 ;	-----------------------------------------
                                    667 ;	 function stack_peek2
                                    668 ;	-----------------------------------------
      002973                        669 _stack_peek2:
      002973 C0 08            [24]  670 	push	_bp
      002975 85 81 08         [24]  671 	mov	_bp,sp
      002978 C0 82            [24]  672 	push	dpl
      00297A C0 83            [24]  673 	push	dph
      00297C C0 F0            [24]  674 	push	b
      00297E E5 81            [12]  675 	mov	a,sp
      002980 24 06            [12]  676 	add	a,#0x06
      002982 F5 81            [12]  677 	mov	sp,a
                                    678 ;	stack.c:37: int nvals = 0;
      002984 7B 00            [12]  679 	mov	r3,#0x00
      002986 7A 00            [12]  680 	mov	r2,#0x00
                                    681 ;	stack.c:39: if (s->spin) goto out; /* if called from ISR */
      002988 A8 08            [24]  682 	mov	r0,_bp
      00298A 08               [12]  683 	inc	r0
      00298B 86 82            [24]  684 	mov	dpl,@r0
      00298D 08               [12]  685 	inc	r0
      00298E 86 83            [24]  686 	mov	dph,@r0
      002990 08               [12]  687 	inc	r0
      002991 86 F0            [24]  688 	mov	b,@r0
      002993 12 6F D1         [24]  689 	lcall	__gptrget
      002996 60 03            [24]  690 	jz	00122$
      002998 02 2A DA         [24]  691 	ljmp	00107$
      00299B                        692 00122$:
                                    693 ;	stack.c:41: if (s->p < 0) goto out;
      00299B A8 08            [24]  694 	mov	r0,_bp
      00299D 08               [12]  695 	inc	r0
      00299E E5 08            [12]  696 	mov	a,_bp
      0029A0 24 07            [12]  697 	add	a,#0x07
      0029A2 F9               [12]  698 	mov	r1,a
      0029A3 74 03            [12]  699 	mov	a,#0x03
      0029A5 26               [12]  700 	add	a,@r0
      0029A6 F7               [12]  701 	mov	@r1,a
      0029A7 74 20            [12]  702 	mov	a,#0x20
      0029A9 08               [12]  703 	inc	r0
      0029AA 36               [12]  704 	addc	a,@r0
      0029AB 09               [12]  705 	inc	r1
      0029AC F7               [12]  706 	mov	@r1,a
      0029AD 08               [12]  707 	inc	r0
      0029AE 09               [12]  708 	inc	r1
      0029AF E6               [12]  709 	mov	a,@r0
      0029B0 F7               [12]  710 	mov	@r1,a
      0029B1 E5 08            [12]  711 	mov	a,_bp
      0029B3 24 07            [12]  712 	add	a,#0x07
      0029B5 F8               [12]  713 	mov	r0,a
      0029B6 86 82            [24]  714 	mov	dpl,@r0
      0029B8 08               [12]  715 	inc	r0
      0029B9 86 83            [24]  716 	mov	dph,@r0
      0029BB 08               [12]  717 	inc	r0
      0029BC 86 F0            [24]  718 	mov	b,@r0
      0029BE 12 6F D1         [24]  719 	lcall	__gptrget
      0029C1 FF               [12]  720 	mov	r7,a
      0029C2 A3               [24]  721 	inc	dptr
      0029C3 12 6F D1         [24]  722 	lcall	__gptrget
      0029C6 FE               [12]  723 	mov	r6,a
      0029C7 30 E7 03         [24]  724 	jnb	acc.7,00123$
      0029CA 02 2A DA         [24]  725 	ljmp	00107$
      0029CD                        726 00123$:
                                    727 ;	stack.c:42: vals[1] = s->data[s->p];
      0029CD E5 08            [12]  728 	mov	a,_bp
      0029CF 24 FB            [12]  729 	add	a,#0xfb
      0029D1 F8               [12]  730 	mov	r0,a
      0029D2 E5 08            [12]  731 	mov	a,_bp
      0029D4 24 04            [12]  732 	add	a,#0x04
      0029D6 F9               [12]  733 	mov	r1,a
      0029D7 74 04            [12]  734 	mov	a,#0x04
      0029D9 26               [12]  735 	add	a,@r0
      0029DA F7               [12]  736 	mov	@r1,a
      0029DB E4               [12]  737 	clr	a
      0029DC 08               [12]  738 	inc	r0
      0029DD 36               [12]  739 	addc	a,@r0
      0029DE 09               [12]  740 	inc	r1
      0029DF F7               [12]  741 	mov	@r1,a
      0029E0 08               [12]  742 	inc	r0
      0029E1 09               [12]  743 	inc	r1
      0029E2 E6               [12]  744 	mov	a,@r0
      0029E3 F7               [12]  745 	mov	@r1,a
      0029E4 A8 08            [24]  746 	mov	r0,_bp
      0029E6 08               [12]  747 	inc	r0
      0029E7 74 01            [12]  748 	mov	a,#0x01
      0029E9 26               [12]  749 	add	a,@r0
      0029EA FD               [12]  750 	mov	r5,a
      0029EB E4               [12]  751 	clr	a
      0029EC 08               [12]  752 	inc	r0
      0029ED 36               [12]  753 	addc	a,@r0
      0029EE FC               [12]  754 	mov	r4,a
      0029EF 08               [12]  755 	inc	r0
      0029F0 86 03            [24]  756 	mov	ar3,@r0
      0029F2 EF               [12]  757 	mov	a,r7
      0029F3 2F               [12]  758 	add	a,r7
      0029F4 FF               [12]  759 	mov	r7,a
      0029F5 EE               [12]  760 	mov	a,r6
      0029F6 33               [12]  761 	rlc	a
      0029F7 FE               [12]  762 	mov	r6,a
      0029F8 EF               [12]  763 	mov	a,r7
      0029F9 2F               [12]  764 	add	a,r7
      0029FA FF               [12]  765 	mov	r7,a
      0029FB EE               [12]  766 	mov	a,r6
      0029FC 33               [12]  767 	rlc	a
      0029FD FE               [12]  768 	mov	r6,a
      0029FE EF               [12]  769 	mov	a,r7
      0029FF 2D               [12]  770 	add	a,r5
      002A00 FD               [12]  771 	mov	r5,a
      002A01 EE               [12]  772 	mov	a,r6
      002A02 3C               [12]  773 	addc	a,r4
      002A03 FE               [12]  774 	mov	r6,a
      002A04 8B 07            [24]  775 	mov	ar7,r3
      002A06 8D 82            [24]  776 	mov	dpl,r5
      002A08 8E 83            [24]  777 	mov	dph,r6
      002A0A 8F F0            [24]  778 	mov	b,r7
      002A0C 12 6F D1         [24]  779 	lcall	__gptrget
      002A0F FD               [12]  780 	mov	r5,a
      002A10 A3               [24]  781 	inc	dptr
      002A11 12 6F D1         [24]  782 	lcall	__gptrget
      002A14 FE               [12]  783 	mov	r6,a
      002A15 A3               [24]  784 	inc	dptr
      002A16 12 6F D1         [24]  785 	lcall	__gptrget
      002A19 FC               [12]  786 	mov	r4,a
      002A1A A3               [24]  787 	inc	dptr
      002A1B 12 6F D1         [24]  788 	lcall	__gptrget
      002A1E FF               [12]  789 	mov	r7,a
      002A1F E5 08            [12]  790 	mov	a,_bp
      002A21 24 04            [12]  791 	add	a,#0x04
      002A23 F8               [12]  792 	mov	r0,a
      002A24 86 82            [24]  793 	mov	dpl,@r0
      002A26 08               [12]  794 	inc	r0
      002A27 86 83            [24]  795 	mov	dph,@r0
      002A29 08               [12]  796 	inc	r0
      002A2A 86 F0            [24]  797 	mov	b,@r0
      002A2C ED               [12]  798 	mov	a,r5
      002A2D 12 6B 56         [24]  799 	lcall	__gptrput
      002A30 A3               [24]  800 	inc	dptr
      002A31 EE               [12]  801 	mov	a,r6
      002A32 12 6B 56         [24]  802 	lcall	__gptrput
      002A35 A3               [24]  803 	inc	dptr
      002A36 EC               [12]  804 	mov	a,r4
      002A37 12 6B 56         [24]  805 	lcall	__gptrput
      002A3A A3               [24]  806 	inc	dptr
      002A3B EF               [12]  807 	mov	a,r7
      002A3C 12 6B 56         [24]  808 	lcall	__gptrput
                                    809 ;	stack.c:43: nvals++;
      002A3F 7B 01            [12]  810 	mov	r3,#0x01
      002A41 7A 00            [12]  811 	mov	r2,#0x00
                                    812 ;	stack.c:45: if ((s->p - 1) < 0) goto out;
      002A43 E5 08            [12]  813 	mov	a,_bp
      002A45 24 07            [12]  814 	add	a,#0x07
      002A47 F8               [12]  815 	mov	r0,a
      002A48 86 82            [24]  816 	mov	dpl,@r0
      002A4A 08               [12]  817 	inc	r0
      002A4B 86 83            [24]  818 	mov	dph,@r0
      002A4D 08               [12]  819 	inc	r0
      002A4E 86 F0            [24]  820 	mov	b,@r0
      002A50 12 6F D1         [24]  821 	lcall	__gptrget
      002A53 FE               [12]  822 	mov	r6,a
      002A54 A3               [24]  823 	inc	dptr
      002A55 12 6F D1         [24]  824 	lcall	__gptrget
      002A58 FF               [12]  825 	mov	r7,a
      002A59 EE               [12]  826 	mov	a,r6
      002A5A 24 FF            [12]  827 	add	a,#0xff
      002A5C FC               [12]  828 	mov	r4,a
      002A5D EF               [12]  829 	mov	a,r7
      002A5E 34 FF            [12]  830 	addc	a,#0xff
      002A60 FD               [12]  831 	mov	r5,a
      002A61 20 E7 76         [24]  832 	jb	acc.7,00107$
                                    833 ;	stack.c:46: vals[0] = s->data[s->p - 1];
      002A64 E5 08            [12]  834 	mov	a,_bp
      002A66 24 FB            [12]  835 	add	a,#0xfb
      002A68 F8               [12]  836 	mov	r0,a
      002A69 E5 08            [12]  837 	mov	a,_bp
      002A6B 24 07            [12]  838 	add	a,#0x07
      002A6D F9               [12]  839 	mov	r1,a
      002A6E E6               [12]  840 	mov	a,@r0
      002A6F F7               [12]  841 	mov	@r1,a
      002A70 08               [12]  842 	inc	r0
      002A71 09               [12]  843 	inc	r1
      002A72 E6               [12]  844 	mov	a,@r0
      002A73 F7               [12]  845 	mov	@r1,a
      002A74 08               [12]  846 	inc	r0
      002A75 09               [12]  847 	inc	r1
      002A76 E6               [12]  848 	mov	a,@r0
      002A77 F7               [12]  849 	mov	@r1,a
      002A78 A8 08            [24]  850 	mov	r0,_bp
      002A7A 08               [12]  851 	inc	r0
      002A7B 74 01            [12]  852 	mov	a,#0x01
      002A7D 26               [12]  853 	add	a,@r0
      002A7E FA               [12]  854 	mov	r2,a
      002A7F E4               [12]  855 	clr	a
      002A80 08               [12]  856 	inc	r0
      002A81 36               [12]  857 	addc	a,@r0
      002A82 FC               [12]  858 	mov	r4,a
      002A83 08               [12]  859 	inc	r0
      002A84 86 05            [24]  860 	mov	ar5,@r0
      002A86 1E               [12]  861 	dec	r6
      002A87 BE FF 01         [24]  862 	cjne	r6,#0xff,00125$
      002A8A 1F               [12]  863 	dec	r7
      002A8B                        864 00125$:
      002A8B EE               [12]  865 	mov	a,r6
      002A8C 2E               [12]  866 	add	a,r6
      002A8D FE               [12]  867 	mov	r6,a
      002A8E EF               [12]  868 	mov	a,r7
      002A8F 33               [12]  869 	rlc	a
      002A90 FF               [12]  870 	mov	r7,a
      002A91 EE               [12]  871 	mov	a,r6
      002A92 2E               [12]  872 	add	a,r6
      002A93 FE               [12]  873 	mov	r6,a
      002A94 EF               [12]  874 	mov	a,r7
      002A95 33               [12]  875 	rlc	a
      002A96 FF               [12]  876 	mov	r7,a
      002A97 EE               [12]  877 	mov	a,r6
      002A98 2A               [12]  878 	add	a,r2
      002A99 FA               [12]  879 	mov	r2,a
      002A9A EF               [12]  880 	mov	a,r7
      002A9B 3C               [12]  881 	addc	a,r4
      002A9C FC               [12]  882 	mov	r4,a
      002A9D 8A 82            [24]  883 	mov	dpl,r2
      002A9F 8C 83            [24]  884 	mov	dph,r4
      002AA1 8D F0            [24]  885 	mov	b,r5
      002AA3 12 6F D1         [24]  886 	lcall	__gptrget
      002AA6 FA               [12]  887 	mov	r2,a
      002AA7 A3               [24]  888 	inc	dptr
      002AA8 12 6F D1         [24]  889 	lcall	__gptrget
      002AAB FC               [12]  890 	mov	r4,a
      002AAC A3               [24]  891 	inc	dptr
      002AAD 12 6F D1         [24]  892 	lcall	__gptrget
      002AB0 FD               [12]  893 	mov	r5,a
      002AB1 A3               [24]  894 	inc	dptr
      002AB2 12 6F D1         [24]  895 	lcall	__gptrget
      002AB5 FF               [12]  896 	mov	r7,a
      002AB6 E5 08            [12]  897 	mov	a,_bp
      002AB8 24 07            [12]  898 	add	a,#0x07
      002ABA F8               [12]  899 	mov	r0,a
      002ABB 86 82            [24]  900 	mov	dpl,@r0
      002ABD 08               [12]  901 	inc	r0
      002ABE 86 83            [24]  902 	mov	dph,@r0
      002AC0 08               [12]  903 	inc	r0
      002AC1 86 F0            [24]  904 	mov	b,@r0
      002AC3 EA               [12]  905 	mov	a,r2
      002AC4 12 6B 56         [24]  906 	lcall	__gptrput
      002AC7 A3               [24]  907 	inc	dptr
      002AC8 EC               [12]  908 	mov	a,r4
      002AC9 12 6B 56         [24]  909 	lcall	__gptrput
      002ACC A3               [24]  910 	inc	dptr
      002ACD ED               [12]  911 	mov	a,r5
      002ACE 12 6B 56         [24]  912 	lcall	__gptrput
      002AD1 A3               [24]  913 	inc	dptr
      002AD2 EF               [12]  914 	mov	a,r7
      002AD3 12 6B 56         [24]  915 	lcall	__gptrput
                                    916 ;	stack.c:47: nvals++;
      002AD6 7B 02            [12]  917 	mov	r3,#0x02
      002AD8 7A 00            [12]  918 	mov	r2,#0x00
                                    919 ;	stack.c:49: out:
      002ADA                        920 00107$:
                                    921 ;	stack.c:50: return nvals;
      002ADA 8B 82            [24]  922 	mov	dpl,r3
      002ADC 8A 83            [24]  923 	mov	dph,r2
                                    924 ;	stack.c:51: }
      002ADE 85 08 81         [24]  925 	mov	sp,_bp
      002AE1 D0 08            [24]  926 	pop	_bp
      002AE3 22               [24]  927 	ret
                                    928 ;------------------------------------------------------------
                                    929 ;Allocation info for local variables in function 'stack_iter_peek'
                                    930 ;------------------------------------------------------------
                                    931 ;iter                      Allocated to stack - _bp -4
                                    932 ;_ctx                      Allocated to stack - _bp -7
                                    933 ;s                         Allocated to stack - _bp +1
                                    934 ;j                         Allocated to registers 
                                    935 ;r                         Allocated to registers r2 r7 
                                    936 ;sloc0                     Allocated to stack - _bp +4
                                    937 ;------------------------------------------------------------
                                    938 ;	stack.c:53: int stack_iter_peek(stack_t *s, stack_iter_t iter, void *_ctx) __reentrant {
                                    939 ;	-----------------------------------------
                                    940 ;	 function stack_iter_peek
                                    941 ;	-----------------------------------------
      002AE4                        942 _stack_iter_peek:
      002AE4 C0 08            [24]  943 	push	_bp
      002AE6 85 81 08         [24]  944 	mov	_bp,sp
      002AE9 C0 82            [24]  945 	push	dpl
      002AEB C0 83            [24]  946 	push	dph
      002AED C0 F0            [24]  947 	push	b
      002AEF 05 81            [12]  948 	inc	sp
      002AF1 05 81            [12]  949 	inc	sp
      002AF3 05 81            [12]  950 	inc	sp
                                    951 ;	stack.c:56: if (s->p < 0) return 0;
      002AF5 A8 08            [24]  952 	mov	r0,_bp
      002AF7 08               [12]  953 	inc	r0
      002AF8 74 03            [12]  954 	mov	a,#0x03
      002AFA 26               [12]  955 	add	a,@r0
      002AFB FB               [12]  956 	mov	r3,a
      002AFC 74 20            [12]  957 	mov	a,#0x20
      002AFE 08               [12]  958 	inc	r0
      002AFF 36               [12]  959 	addc	a,@r0
      002B00 FA               [12]  960 	mov	r2,a
      002B01 08               [12]  961 	inc	r0
      002B02 86 04            [24]  962 	mov	ar4,@r0
      002B04 8B 82            [24]  963 	mov	dpl,r3
      002B06 8A 83            [24]  964 	mov	dph,r2
      002B08 8C F0            [24]  965 	mov	b,r4
      002B0A 12 6F D1         [24]  966 	lcall	__gptrget
      002B0D FB               [12]  967 	mov	r3,a
      002B0E A3               [24]  968 	inc	dptr
      002B0F 12 6F D1         [24]  969 	lcall	__gptrget
      002B12 FC               [12]  970 	mov	r4,a
      002B13 30 E7 06         [24]  971 	jnb	acc.7,00102$
      002B16 90 00 00         [24]  972 	mov	dptr,#0x0000
      002B19 02 2B CF         [24]  973 	ljmp	00109$
      002B1C                        974 00102$:
                                    975 ;	stack.c:58: for (j = s->p, r = 0; j >= 0; j--) {
      002B1C 7A 00            [12]  976 	mov	r2,#0x00
      002B1E 7F 00            [12]  977 	mov	r7,#0x00
      002B20 A8 08            [24]  978 	mov	r0,_bp
      002B22 08               [12]  979 	inc	r0
      002B23 E5 08            [12]  980 	mov	a,_bp
      002B25 24 04            [12]  981 	add	a,#0x04
      002B27 F9               [12]  982 	mov	r1,a
      002B28 74 01            [12]  983 	mov	a,#0x01
      002B2A 26               [12]  984 	add	a,@r0
      002B2B F7               [12]  985 	mov	@r1,a
      002B2C E4               [12]  986 	clr	a
      002B2D 08               [12]  987 	inc	r0
      002B2E 36               [12]  988 	addc	a,@r0
      002B2F 09               [12]  989 	inc	r1
      002B30 F7               [12]  990 	mov	@r1,a
      002B31 08               [12]  991 	inc	r0
      002B32 09               [12]  992 	inc	r1
      002B33 E6               [12]  993 	mov	a,@r0
      002B34 F7               [12]  994 	mov	@r1,a
      002B35                        995 00107$:
      002B35 EC               [12]  996 	mov	a,r4
      002B36 30 E7 03         [24]  997 	jnb	acc.7,00129$
      002B39 02 2B CB         [24]  998 	ljmp	00105$
      002B3C                        999 00129$:
                                   1000 ;	stack.c:59: r = iter(_ctx, s->data[j]);
      002B3C EB               [12] 1001 	mov	a,r3
      002B3D 2B               [12] 1002 	add	a,r3
      002B3E FD               [12] 1003 	mov	r5,a
      002B3F EC               [12] 1004 	mov	a,r4
      002B40 33               [12] 1005 	rlc	a
      002B41 FE               [12] 1006 	mov	r6,a
      002B42 ED               [12] 1007 	mov	a,r5
      002B43 2D               [12] 1008 	add	a,r5
      002B44 FD               [12] 1009 	mov	r5,a
      002B45 EE               [12] 1010 	mov	a,r6
      002B46 33               [12] 1011 	rlc	a
      002B47 FE               [12] 1012 	mov	r6,a
      002B48 C0 03            [24] 1013 	push	ar3
      002B4A C0 04            [24] 1014 	push	ar4
      002B4C E5 08            [12] 1015 	mov	a,_bp
      002B4E 24 04            [12] 1016 	add	a,#0x04
      002B50 F8               [12] 1017 	mov	r0,a
      002B51 ED               [12] 1018 	mov	a,r5
      002B52 26               [12] 1019 	add	a,@r0
      002B53 FD               [12] 1020 	mov	r5,a
      002B54 EE               [12] 1021 	mov	a,r6
      002B55 08               [12] 1022 	inc	r0
      002B56 36               [12] 1023 	addc	a,@r0
      002B57 FC               [12] 1024 	mov	r4,a
      002B58 08               [12] 1025 	inc	r0
      002B59 86 06            [24] 1026 	mov	ar6,@r0
      002B5B 8D 82            [24] 1027 	mov	dpl,r5
      002B5D 8C 83            [24] 1028 	mov	dph,r4
      002B5F 8E F0            [24] 1029 	mov	b,r6
      002B61 12 6F D1         [24] 1030 	lcall	__gptrget
      002B64 FD               [12] 1031 	mov	r5,a
      002B65 A3               [24] 1032 	inc	dptr
      002B66 12 6F D1         [24] 1033 	lcall	__gptrget
      002B69 FC               [12] 1034 	mov	r4,a
      002B6A A3               [24] 1035 	inc	dptr
      002B6B 12 6F D1         [24] 1036 	lcall	__gptrget
      002B6E FE               [12] 1037 	mov	r6,a
      002B6F A3               [24] 1038 	inc	dptr
      002B70 12 6F D1         [24] 1039 	lcall	__gptrget
      002B73 FB               [12] 1040 	mov	r3,a
      002B74 C0 04            [24] 1041 	push	ar4
      002B76 C0 03            [24] 1042 	push	ar3
      002B78 C0 05            [24] 1043 	push	ar5
      002B7A C0 04            [24] 1044 	push	ar4
      002B7C C0 06            [24] 1045 	push	ar6
      002B7E C0 03            [24] 1046 	push	ar3
      002B80 12 2B 85         [24] 1047 	lcall	00130$
      002B83 80 1A            [24] 1048 	sjmp	00131$
      002B85                       1049 00130$:
      002B85 E5 08            [12] 1050 	mov	a,_bp
      002B87 24 FC            [12] 1051 	add	a,#0xfc
      002B89 F8               [12] 1052 	mov	r0,a
      002B8A E6               [12] 1053 	mov	a,@r0
      002B8B C0 E0            [24] 1054 	push	acc
      002B8D 08               [12] 1055 	inc	r0
      002B8E E6               [12] 1056 	mov	a,@r0
      002B8F C0 E0            [24] 1057 	push	acc
      002B91 E5 08            [12] 1058 	mov	a,_bp
      002B93 24 F9            [12] 1059 	add	a,#0xf9
      002B95 F8               [12] 1060 	mov	r0,a
      002B96 86 82            [24] 1061 	mov	dpl,@r0
      002B98 08               [12] 1062 	inc	r0
      002B99 86 83            [24] 1063 	mov	dph,@r0
      002B9B 08               [12] 1064 	inc	r0
      002B9C 86 F0            [24] 1065 	mov	b,@r0
      002B9E 22               [24] 1066 	ret
      002B9F                       1067 00131$:
      002B9F AD 82            [24] 1068 	mov	r5,dpl
      002BA1 AE 83            [24] 1069 	mov	r6,dph
      002BA3 E5 81            [12] 1070 	mov	a,sp
      002BA5 24 FC            [12] 1071 	add	a,#0xfc
      002BA7 F5 81            [12] 1072 	mov	sp,a
      002BA9 D0 03            [24] 1073 	pop	ar3
      002BAB D0 04            [24] 1074 	pop	ar4
      002BAD 8D 02            [24] 1075 	mov	ar2,r5
      002BAF 8E 07            [24] 1076 	mov	ar7,r6
                                   1077 ;	stack.c:60: if (r <= 0) break;
      002BB1 C3               [12] 1078 	clr	c
      002BB2 E4               [12] 1079 	clr	a
      002BB3 9A               [12] 1080 	subb	a,r2
      002BB4 74 80            [12] 1081 	mov	a,#(0x00 ^ 0x80)
      002BB6 8F F0            [24] 1082 	mov	b,r7
      002BB8 63 F0 80         [24] 1083 	xrl	b,#0x80
      002BBB 95 F0            [12] 1084 	subb	a,b
      002BBD D0 04            [24] 1085 	pop	ar4
      002BBF D0 03            [24] 1086 	pop	ar3
      002BC1 50 08            [24] 1087 	jnc	00105$
                                   1088 ;	stack.c:58: for (j = s->p, r = 0; j >= 0; j--) {
      002BC3 1B               [12] 1089 	dec	r3
      002BC4 BB FF 01         [24] 1090 	cjne	r3,#0xff,00133$
      002BC7 1C               [12] 1091 	dec	r4
      002BC8                       1092 00133$:
      002BC8 02 2B 35         [24] 1093 	ljmp	00107$
      002BCB                       1094 00105$:
                                   1095 ;	stack.c:63: return r;
      002BCB 8A 82            [24] 1096 	mov	dpl,r2
      002BCD 8F 83            [24] 1097 	mov	dph,r7
      002BCF                       1098 00109$:
                                   1099 ;	stack.c:64: }
      002BCF 85 08 81         [24] 1100 	mov	sp,_bp
      002BD2 D0 08            [24] 1101 	pop	_bp
      002BD4 22               [24] 1102 	ret
                                   1103 	.area CSEG    (CODE)
                                   1104 	.area CONST   (CODE)
                                   1105 	.area XINIT   (CODE)
                                   1106 	.area CABS    (ABS,CODE)
