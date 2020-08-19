	.file	"stack.c"
# GNU C17 (Debian 8.3.0-6) version 8.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 8.3.0, GMP version 6.1.2, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.20-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -fpreprocessed stack.i -mtune=generic -march=x86-64
# -fverbose-asm
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
.LC0:
	.string	"top is empty %d"
	.text
	.globl	pop
	.type	pop, @function
pop:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stack, stack
	movq	%rsi, -32(%rbp)	# top, top
# stack.c:15:     if ((*top) != empty)
	movq	-32(%rbp), %rax	# top, tmp99
	movl	(%rax), %eax	# *top_14(D), _1
# stack.c:15:     if ((*top) != empty)
	cmpl	$-1, %eax	#, _1
	je	.L2	#,
# stack.c:17:         operator= stack[(*top)];
	movq	-32(%rbp), %rax	# top, tmp100
	movl	(%rax), %eax	# *top_14(D), _2
	movslq	%eax, %rdx	# _2, _3
# stack.c:17:         operator= stack[(*top)];
	movq	-24(%rbp), %rax	# stack, tmp101
	addq	%rdx, %rax	# _3, _4
# stack.c:17:         operator= stack[(*top)];
	movzbl	(%rax), %eax	# *_4, tmp102
	movb	%al, -1(%rbp)	# tmp102, operator
# stack.c:18:         stack[(*top)] = '\0'; /*segment fault here on secound loop*/
	movq	-32(%rbp), %rax	# top, tmp103
	movl	(%rax), %eax	# *top_14(D), _5
	movslq	%eax, %rdx	# _5, _6
# stack.c:18:         stack[(*top)] = '\0'; /*segment fault here on secound loop*/
	movq	-24(%rbp), %rax	# stack, tmp104
	addq	%rdx, %rax	# _6, _7
# stack.c:18:         stack[(*top)] = '\0'; /*segment fault here on secound loop*/
	movb	$0, (%rax)	#, *_7
# stack.c:19:         (*top)--;
	movq	-32(%rbp), %rax	# top, tmp105
	movl	(%rax), %eax	# *top_14(D), _8
# stack.c:19:         (*top)--;
	leal	-1(%rax), %edx	#, _9
	movq	-32(%rbp), %rax	# top, tmp106
	movl	%edx, (%rax)	# _9, *top_14(D)
# stack.c:26:     return operator;
	movsbl	-1(%rbp), %eax	# operator, _11
	jmp	.L4	#
.L2:
# stack.c:23:         printf("top is empty %d", *top);
	movq	-32(%rbp), %rax	# top, tmp107
	movl	(%rax), %eax	# *top_14(D), _10
	movl	%eax, %esi	# _10,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# stack.c:24:         return 0;
	movl	$0, %eax	#, _11
.L4:
# stack.c:27: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	pop, .-pop
	.globl	priority
	.type	priority, @function
priority:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# operator, tmp89
	movb	%al, -4(%rbp)	# tmp90, operator
# stack.c:31:     if (operator== '(')
	cmpb	$40, -4(%rbp)	#, operator
	jne	.L6	#,
# stack.c:33:         return 6;
	movl	$6, %eax	#, _1
	jmp	.L7	#
.L6:
# stack.c:35:     else if (operator== '^' || operator== '$')
	cmpb	$94, -4(%rbp)	#, operator
	je	.L8	#,
# stack.c:35:     else if (operator== '^' || operator== '$')
	cmpb	$36, -4(%rbp)	#, operator
	jne	.L9	#,
.L8:
# stack.c:37:         return 5;
	movl	$5, %eax	#, _1
	jmp	.L7	#
.L9:
# stack.c:39:     else if (operator== '/' || operator== '*')
	cmpb	$47, -4(%rbp)	#, operator
	je	.L10	#,
# stack.c:39:     else if (operator== '/' || operator== '*')
	cmpb	$42, -4(%rbp)	#, operator
	jne	.L11	#,
.L10:
# stack.c:41:         return 4;
	movl	$4, %eax	#, _1
	jmp	.L7	#
.L11:
# stack.c:43:     else if (operator== '+' || operator== '-')
	cmpb	$43, -4(%rbp)	#, operator
	je	.L12	#,
# stack.c:43:     else if (operator== '+' || operator== '-')
	cmpb	$45, -4(%rbp)	#, operator
	jne	.L13	#,
.L12:
# stack.c:45:         return 3;
	movl	$3, %eax	#, _1
	jmp	.L7	#
.L13:
# stack.c:47:     return 0;
	movl	$0, %eax	#, _1
.L7:
# stack.c:48: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	priority, .-priority
	.section	.rodata
	.align 8
.LC1:
	.string	"given array is full! can't push more data"
	.text
	.globl	push
	.type	push, @function
push:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# stack, stack
	movq	%rsi, -16(%rbp)	# top, top
	movl	%edx, %eax	# arg, tmp95
	movb	%al, -20(%rbp)	# tmp96, arg
# stack.c:53:     if (*top != max)
	movq	-16(%rbp), %rax	# top, tmp97
	movl	(%rax), %eax	# *top_10(D), _1
# stack.c:53:     if (*top != max)
	cmpl	$9, %eax	#, _1
	je	.L15	#,
# stack.c:55:         (*top)++;
	movq	-16(%rbp), %rax	# top, tmp98
	movl	(%rax), %eax	# *top_10(D), _2
# stack.c:55:         (*top)++;
	leal	1(%rax), %edx	#, _3
	movq	-16(%rbp), %rax	# top, tmp99
	movl	%edx, (%rax)	# _3, *top_10(D)
# stack.c:56:         stack[*top] = arg;
	movq	-16(%rbp), %rax	# top, tmp100
	movl	(%rax), %eax	# *top_10(D), _4
	movslq	%eax, %rdx	# _4, _5
# stack.c:56:         stack[*top] = arg;
	movq	-8(%rbp), %rax	# stack, tmp101
	addq	%rax, %rdx	# tmp101, _6
# stack.c:56:         stack[*top] = arg;
	movzbl	-20(%rbp), %eax	# arg, tmp102
	movb	%al, (%rdx)	# tmp102, *_6
# stack.c:57:         return 1;
	movl	$1, %eax	#, _7
	jmp	.L16	#
.L15:
# stack.c:59:     printf("given array is full! can't push more data");
	leaq	.LC1(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# stack.c:60:     return 0;
	movl	$0, %eax	#, _7
.L16:
# stack.c:61: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	push, .-push
	.globl	display
	.type	display, @function
display:
.LFB9:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# output, output
	movl	%esi, -28(%rbp)	# index, index
# stack.c:66:     for (i = 0; index > i; i++)
	movl	$0, -4(%rbp)	#, i
# stack.c:66:     for (i = 0; index > i; i++)
	jmp	.L18	#
.L19:
# stack.c:68:         printf("%c", output[i]);
	movl	-4(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, _1
	movq	-24(%rbp), %rax	# output, tmp94
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# stack.c:68:         printf("%c", output[i]);
	movsbl	%al, %eax	# _3, _4
	movl	%eax, %edi	# _4,
	call	putchar@PLT	#
# stack.c:66:     for (i = 0; index > i; i++)
	addl	$1, -4(%rbp)	#, i
.L18:
# stack.c:66:     for (i = 0; index > i; i++)
	movl	-28(%rbp), %eax	# index, tmp95
	cmpl	-4(%rbp), %eax	# i, tmp95
	jg	.L19	#,
# stack.c:70:     return 0;
	movl	$0, %eax	#, _13
# stack.c:71: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	display, .-display
	.globl	string_reverse
	.type	string_reverse, @function
string_reverse:
.LFB10:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
# stack.c:75:     int i = 0;
	movl	$0, -4(%rbp)	#, i
# stack.c:76:     int j = strlen(str) - 1;
	movq	-24(%rbp), %rax	# str, tmp146
	movq	%rax, %rdi	# tmp146,
	call	strlen@PLT	#
# stack.c:76:     int j = strlen(str) - 1;
	subl	$1, %eax	#, _3
# stack.c:76:     int j = strlen(str) - 1;
	movl	%eax, -8(%rbp)	# _3, j
# stack.c:78:     for (i = 0; i != j / 2; i++)
	movl	$0, -4(%rbp)	#, i
# stack.c:78:     for (i = 0; i != j / 2; i++)
	jmp	.L22	#
.L23:
# stack.c:80:         str[i] = str[i] + str[j - i];
	movl	-4(%rbp), %eax	# i, tmp147
	movslq	%eax, %rdx	# tmp147, _4
	movq	-24(%rbp), %rax	# str, tmp148
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
	movl	%eax, %ecx	# _6, _7
# stack.c:80:         str[i] = str[i] + str[j - i];
	movl	-8(%rbp), %eax	# j, tmp149
	subl	-4(%rbp), %eax	# i, _8
	movslq	%eax, %rdx	# _8, _9
# stack.c:80:         str[i] = str[i] + str[j - i];
	movq	-24(%rbp), %rax	# str, tmp150
	addq	%rdx, %rax	# _9, _10
	movzbl	(%rax), %eax	# *_10, _11
# stack.c:80:         str[i] = str[i] + str[j - i];
	addl	%eax, %ecx	# _12, _13
# stack.c:80:         str[i] = str[i] + str[j - i];
	movl	-4(%rbp), %eax	# i, tmp151
	movslq	%eax, %rdx	# tmp151, _14
	movq	-24(%rbp), %rax	# str, tmp152
	addq	%rdx, %rax	# _14, _15
# stack.c:80:         str[i] = str[i] + str[j - i];
	movl	%ecx, %edx	# _13, _16
# stack.c:80:         str[i] = str[i] + str[j - i];
	movb	%dl, (%rax)	# _16, *_15
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	movl	-4(%rbp), %eax	# i, tmp153
	movslq	%eax, %rdx	# tmp153, _17
	movq	-24(%rbp), %rax	# str, tmp154
	addq	%rdx, %rax	# _17, _18
	movzbl	(%rax), %eax	# *_18, _19
	movl	%eax, %ecx	# _19, _20
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	movl	-8(%rbp), %eax	# j, tmp155
	subl	-4(%rbp), %eax	# i, _21
	movslq	%eax, %rdx	# _21, _22
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	movq	-24(%rbp), %rax	# str, tmp156
	addq	%rdx, %rax	# _22, _23
	movzbl	(%rax), %eax	# *_23, _24
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	subl	%eax, %ecx	# _25, _26
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	movl	-8(%rbp), %eax	# j, tmp157
	subl	-4(%rbp), %eax	# i, _27
	movslq	%eax, %rdx	# _27, _28
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	movq	-24(%rbp), %rax	# str, tmp158
	addq	%rdx, %rax	# _28, _29
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	movl	%ecx, %edx	# _26, _30
# stack.c:81:         str[j - i] = str[i] - str[j - i];
	movb	%dl, (%rax)	# _30, *_29
# stack.c:82:         str[i] = str[i] - str[j - i];
	movl	-4(%rbp), %eax	# i, tmp159
	movslq	%eax, %rdx	# tmp159, _31
	movq	-24(%rbp), %rax	# str, tmp160
	addq	%rdx, %rax	# _31, _32
	movzbl	(%rax), %eax	# *_32, _33
	movl	%eax, %ecx	# _33, _34
# stack.c:82:         str[i] = str[i] - str[j - i];
	movl	-8(%rbp), %eax	# j, tmp161
	subl	-4(%rbp), %eax	# i, _35
	movslq	%eax, %rdx	# _35, _36
# stack.c:82:         str[i] = str[i] - str[j - i];
	movq	-24(%rbp), %rax	# str, tmp162
	addq	%rdx, %rax	# _36, _37
	movzbl	(%rax), %eax	# *_37, _38
# stack.c:82:         str[i] = str[i] - str[j - i];
	subl	%eax, %ecx	# _39, _40
# stack.c:82:         str[i] = str[i] - str[j - i];
	movl	-4(%rbp), %eax	# i, tmp163
	movslq	%eax, %rdx	# tmp163, _41
	movq	-24(%rbp), %rax	# str, tmp164
	addq	%rdx, %rax	# _41, _42
# stack.c:82:         str[i] = str[i] - str[j - i];
	movl	%ecx, %edx	# _40, _43
# stack.c:82:         str[i] = str[i] - str[j - i];
	movb	%dl, (%rax)	# _43, *_42
# stack.c:78:     for (i = 0; i != j / 2; i++)
	addl	$1, -4(%rbp)	#, i
.L22:
# stack.c:78:     for (i = 0; i != j / 2; i++)
	movl	-8(%rbp), %eax	# j, tmp165
	movl	%eax, %edx	# tmp165, tmp166
	shrl	$31, %edx	#, tmp166
	addl	%edx, %eax	# tmp166, tmp167
	sarl	%eax	# tmp168
# stack.c:78:     for (i = 0; i != j / 2; i++)
	cmpl	%eax, -4(%rbp)	# _44, i
	jne	.L23	#,
# stack.c:84:     for (i = 0; str[i] != '\0'; i++)
	movl	$0, -4(%rbp)	#, i
# stack.c:84:     for (i = 0; str[i] != '\0'; i++)
	jmp	.L24	#
.L27:
# stack.c:86:         if (str[i] == '(')
	movl	-4(%rbp), %eax	# i, tmp169
	movslq	%eax, %rdx	# tmp169, _45
	movq	-24(%rbp), %rax	# str, tmp170
	addq	%rdx, %rax	# _45, _46
	movzbl	(%rax), %eax	# *_46, _47
# stack.c:86:         if (str[i] == '(')
	cmpb	$40, %al	#, _47
	jne	.L25	#,
# stack.c:88:             str[i] = ')';
	movl	-4(%rbp), %eax	# i, tmp171
	movslq	%eax, %rdx	# tmp171, _48
	movq	-24(%rbp), %rax	# str, tmp172
	addq	%rdx, %rax	# _48, _49
# stack.c:88:             str[i] = ')';
	movb	$41, (%rax)	#, *_49
	jmp	.L26	#
.L25:
# stack.c:90:         else if (str[i] == ')')
	movl	-4(%rbp), %eax	# i, tmp173
	movslq	%eax, %rdx	# tmp173, _50
	movq	-24(%rbp), %rax	# str, tmp174
	addq	%rdx, %rax	# _50, _51
	movzbl	(%rax), %eax	# *_51, _52
# stack.c:90:         else if (str[i] == ')')
	cmpb	$41, %al	#, _52
	jne	.L26	#,
# stack.c:92:             str[i] = '(';
	movl	-4(%rbp), %eax	# i, tmp175
	movslq	%eax, %rdx	# tmp175, _53
	movq	-24(%rbp), %rax	# str, tmp176
	addq	%rdx, %rax	# _53, _54
# stack.c:92:             str[i] = '(';
	movb	$40, (%rax)	#, *_54
.L26:
# stack.c:84:     for (i = 0; str[i] != '\0'; i++)
	addl	$1, -4(%rbp)	#, i
.L24:
# stack.c:84:     for (i = 0; str[i] != '\0'; i++)
	movl	-4(%rbp), %eax	# i, tmp177
	movslq	%eax, %rdx	# tmp177, _55
	movq	-24(%rbp), %rax	# str, tmp178
	addq	%rdx, %rax	# _55, _56
	movzbl	(%rax), %eax	# *_56, _57
# stack.c:84:     for (i = 0; str[i] != '\0'; i++)
	testb	%al, %al	# _57
	jne	.L27	#,
# stack.c:96:     return 0;
	movl	$0, %eax	#, _76
# stack.c:97: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	string_reverse, .-string_reverse
	.section	.rodata
.LC2:
	.string	"%s"
	.text
	.globl	infixtoprefix
	.type	infixtoprefix, @function
infixtoprefix:
.LFB11:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# expression, expression
# stack.c:101:     string_reverse(expression);
	movq	-8(%rbp), %rax	# expression, tmp89
	movq	%rax, %rdi	# tmp89,
	call	string_reverse	#
# stack.c:102:     infixtoPostfix(expression);
	movq	-8(%rbp), %rax	# expression, tmp90
	movq	%rax, %rdi	# tmp90,
	call	infixtoPostfix	#
# stack.c:103:     string_reverse(expression);
	movq	-8(%rbp), %rax	# expression, tmp91
	movq	%rax, %rdi	# tmp91,
	call	string_reverse	#
# stack.c:105:     printf("%s", expression);
	movq	-8(%rbp), %rax	# expression, tmp92
	movq	%rax, %rsi	# tmp92,
	leaq	.LC2(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# stack.c:107:     return 0;
	movl	$0, %eax	#, _7
# stack.c:108: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	infixtoprefix, .-infixtoprefix
	.globl	infixtoPostfix
	.type	infixtoPostfix, @function
infixtoPostfix:
.LFB12:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# expression, expression
# stack.c:116:     unsigned short int counter = 0;
	movw	$0, -2(%rbp)	#, counter
# stack.c:121:     int top = -1;
	movl	$-1, -40(%rbp)	#, top
# stack.c:123:     int loop = 0;
	movl	$0, -8(%rbp)	#, loop
# stack.c:124:     int index = 0;
	movl	$0, -12(%rbp)	#, index
# stack.c:127:     for (loop = 0; expression[loop] != '\0'; loop++)
	movl	$0, -8(%rbp)	#, loop
# stack.c:127:     for (loop = 0; expression[loop] != '\0'; loop++)
	jmp	.L32	#
.L43:
# stack.c:130:         if (isalnum(expression[loop]))
	call	__ctype_b_loc@PLT	#
# stack.c:130:         if (isalnum(expression[loop]))
	movq	(%rax), %rax	# *_1, _2
# stack.c:130:         if (isalnum(expression[loop]))
	movl	-8(%rbp), %edx	# loop, tmp155
	movslq	%edx, %rcx	# tmp155, _3
	movq	-56(%rbp), %rdx	# expression, tmp156
	addq	%rcx, %rdx	# _3, _4
	movzbl	(%rdx), %edx	# *_4, _5
# stack.c:130:         if (isalnum(expression[loop]))
	movsbq	%dl, %rdx	# _5, _6
# stack.c:130:         if (isalnum(expression[loop]))
	addq	%rdx, %rdx	# _7
	addq	%rdx, %rax	# _7, _8
	movzwl	(%rax), %eax	# *_8, _9
# stack.c:130:         if (isalnum(expression[loop]))
	movzwl	%ax, %eax	# _9, _10
	andl	$8, %eax	#, _11
# stack.c:130:         if (isalnum(expression[loop]))
	testl	%eax, %eax	# _11
	je	.L33	#,
# stack.c:132:             output[index] = expression[loop];
	movl	-8(%rbp), %eax	# loop, tmp157
	movslq	%eax, %rdx	# tmp157, _12
	movq	-56(%rbp), %rax	# expression, tmp158
	addq	%rdx, %rax	# _12, _13
	movzbl	(%rax), %edx	# *_13, _14
# stack.c:132:             output[index] = expression[loop];
	movl	-12(%rbp), %eax	# index, tmp160
	cltq
	movb	%dl, -26(%rbp,%rax)	# _14, output
# stack.c:133:             index++;
	addl	$1, -12(%rbp)	#, index
# stack.c:134:             continue;
	jmp	.L34	#
.L33:
# stack.c:137:         stack_priority_value = priority(stack[top]);
	movl	-40(%rbp), %eax	# top, top.0_15
	cltq
	movzbl	-36(%rbp,%rax), %eax	# stack, _16
# stack.c:137:         stack_priority_value = priority(stack[top]);
	movsbl	%al, %eax	# _16, _17
	movl	%eax, %edi	# _17,
	call	priority	#
# stack.c:137:         stack_priority_value = priority(stack[top]);
	movw	%ax, -14(%rbp)	# _18, stack_priority_value
# stack.c:138:         expression_priority_value = priority(expression[loop]);
	movl	-8(%rbp), %eax	# loop, tmp162
	movslq	%eax, %rdx	# tmp162, _19
	movq	-56(%rbp), %rax	# expression, tmp163
	addq	%rdx, %rax	# _19, _20
	movzbl	(%rax), %eax	# *_20, _21
# stack.c:138:         expression_priority_value = priority(expression[loop]);
	movsbl	%al, %eax	# _21, _22
	movl	%eax, %edi	# _22,
	call	priority	#
# stack.c:138:         expression_priority_value = priority(expression[loop]);
	movw	%ax, -16(%rbp)	# _23, expression_priority_value
# stack.c:140:         if (top == empty || stack_priority_value < expression_priority_value || stack[top] == '(')
	movl	-40(%rbp), %eax	# top, top.1_24
# stack.c:140:         if (top == empty || stack_priority_value < expression_priority_value || stack[top] == '(')
	cmpl	$-1, %eax	#, top.1_24
	je	.L35	#,
# stack.c:140:         if (top == empty || stack_priority_value < expression_priority_value || stack[top] == '(')
	movzwl	-14(%rbp), %eax	# stack_priority_value, tmp164
	cmpw	-16(%rbp), %ax	# expression_priority_value, tmp164
	jb	.L35	#,
# stack.c:140:         if (top == empty || stack_priority_value < expression_priority_value || stack[top] == '(')
	movl	-40(%rbp), %eax	# top, top.2_25
	cltq
	movzbl	-36(%rbp,%rax), %eax	# stack, _26
# stack.c:140:         if (top == empty || stack_priority_value < expression_priority_value || stack[top] == '(')
	cmpb	$40, %al	#, _26
	jne	.L36	#,
.L35:
# stack.c:142:             push(stack, &top, expression[loop]);
	movl	-8(%rbp), %eax	# loop, tmp166
	movslq	%eax, %rdx	# tmp166, _27
	movq	-56(%rbp), %rax	# expression, tmp167
	addq	%rdx, %rax	# _27, _28
	movzbl	(%rax), %eax	# *_28, _29
# stack.c:142:             push(stack, &top, expression[loop]);
	movsbl	%al, %edx	# _29, _30
	leaq	-40(%rbp), %rcx	#, tmp168
	leaq	-36(%rbp), %rax	#, tmp169
	movq	%rcx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	push	#
	jmp	.L34	#
.L36:
# stack.c:145:         else if (expression[loop] == ')')
	movl	-8(%rbp), %eax	# loop, tmp170
	movslq	%eax, %rdx	# tmp170, _31
	movq	-56(%rbp), %rax	# expression, tmp171
	addq	%rdx, %rax	# _31, _32
	movzbl	(%rax), %eax	# *_32, _33
# stack.c:145:         else if (expression[loop] == ')')
	cmpb	$41, %al	#, _33
	jne	.L37	#,
# stack.c:147:             while (stack[top] != '(')
	jmp	.L38	#
.L39:
# stack.c:149:                 output[index++] = pop(stack, &top);
	leaq	-40(%rbp), %rdx	#, tmp172
	leaq	-36(%rbp), %rax	#, tmp173
	movq	%rdx, %rsi	# tmp172,
	movq	%rax, %rdi	# tmp173,
	call	pop	#
	movl	%eax, %ecx	#, _34
# stack.c:149:                 output[index++] = pop(stack, &top);
	movl	-12(%rbp), %eax	# index, index.3_35
	leal	1(%rax), %edx	#, tmp174
	movl	%edx, -12(%rbp)	# tmp174, index
# stack.c:149:                 output[index++] = pop(stack, &top);
	movl	%ecx, %edx	# _34, _36
	cltq
	movb	%dl, -26(%rbp,%rax)	# _36, output
.L38:
# stack.c:147:             while (stack[top] != '(')
	movl	-40(%rbp), %eax	# top, top.4_37
	cltq
	movzbl	-36(%rbp,%rax), %eax	# stack, _38
# stack.c:147:             while (stack[top] != '(')
	cmpb	$40, %al	#, _38
	jne	.L39	#,
# stack.c:151:             pop(stack, &top);
	leaq	-40(%rbp), %rdx	#, tmp177
	leaq	-36(%rbp), %rax	#, tmp178
	movq	%rdx, %rsi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	pop	#
	jmp	.L34	#
.L37:
# stack.c:153:         else if (stack_priority_value >= expression_priority_value)
	movzwl	-14(%rbp), %eax	# stack_priority_value, tmp179
	cmpw	-16(%rbp), %ax	# expression_priority_value, tmp179
	jb	.L34	#,
# stack.c:155:             while (priority(stack[top]) >= expression_priority_value && top != empty)
	jmp	.L40	#
.L42:
# stack.c:157:                 output[index++] = pop(stack, &top);
	leaq	-40(%rbp), %rdx	#, tmp180
	leaq	-36(%rbp), %rax	#, tmp181
	movq	%rdx, %rsi	# tmp180,
	movq	%rax, %rdi	# tmp181,
	call	pop	#
	movl	%eax, %ecx	#, _39
# stack.c:157:                 output[index++] = pop(stack, &top);
	movl	-12(%rbp), %eax	# index, index.5_40
	leal	1(%rax), %edx	#, tmp182
	movl	%edx, -12(%rbp)	# tmp182, index
# stack.c:157:                 output[index++] = pop(stack, &top);
	movl	%ecx, %edx	# _39, _41
	cltq
	movb	%dl, -26(%rbp,%rax)	# _41, output
.L40:
# stack.c:155:             while (priority(stack[top]) >= expression_priority_value && top != empty)
	movl	-40(%rbp), %eax	# top, top.6_42
	cltq
	movzbl	-36(%rbp,%rax), %eax	# stack, _43
# stack.c:155:             while (priority(stack[top]) >= expression_priority_value && top != empty)
	movsbl	%al, %eax	# _43, _44
	movl	%eax, %edi	# _44,
	call	priority	#
	movl	%eax, %edx	#, _45
# stack.c:155:             while (priority(stack[top]) >= expression_priority_value && top != empty)
	movzwl	-16(%rbp), %eax	# expression_priority_value, _46
# stack.c:155:             while (priority(stack[top]) >= expression_priority_value && top != empty)
	cmpl	%eax, %edx	# _46, _45
	jl	.L41	#,
# stack.c:155:             while (priority(stack[top]) >= expression_priority_value && top != empty)
	movl	-40(%rbp), %eax	# top, top.7_47
# stack.c:155:             while (priority(stack[top]) >= expression_priority_value && top != empty)
	cmpl	$-1, %eax	#, top.7_47
	jne	.L42	#,
.L41:
# stack.c:159:             push(stack, &top, expression[loop]);
	movl	-8(%rbp), %eax	# loop, tmp185
	movslq	%eax, %rdx	# tmp185, _48
	movq	-56(%rbp), %rax	# expression, tmp186
	addq	%rdx, %rax	# _48, _49
	movzbl	(%rax), %eax	# *_49, _50
# stack.c:159:             push(stack, &top, expression[loop]);
	movsbl	%al, %edx	# _50, _51
	leaq	-40(%rbp), %rcx	#, tmp187
	leaq	-36(%rbp), %rax	#, tmp188
	movq	%rcx, %rsi	# tmp187,
	movq	%rax, %rdi	# tmp188,
	call	push	#
.L34:
# stack.c:127:     for (loop = 0; expression[loop] != '\0'; loop++)
	addl	$1, -8(%rbp)	#, loop
.L32:
# stack.c:127:     for (loop = 0; expression[loop] != '\0'; loop++)
	movl	-8(%rbp), %eax	# loop, tmp189
	movslq	%eax, %rdx	# tmp189, _52
	movq	-56(%rbp), %rax	# expression, tmp190
	addq	%rdx, %rax	# _52, _53
	movzbl	(%rax), %eax	# *_53, _54
# stack.c:127:     for (loop = 0; expression[loop] != '\0'; loop++)
	testb	%al, %al	# _54
	jne	.L43	#,
# stack.c:163:     while (top != empty)
	jmp	.L44	#
.L45:
# stack.c:165:         output[index] = pop(stack, &top);
	leaq	-40(%rbp), %rdx	#, tmp191
	leaq	-36(%rbp), %rax	#, tmp192
	movq	%rdx, %rsi	# tmp191,
	movq	%rax, %rdi	# tmp192,
	call	pop	#
# stack.c:165:         output[index] = pop(stack, &top);
	movl	%eax, %edx	# _55, _56
	movl	-12(%rbp), %eax	# index, tmp194
	cltq
	movb	%dl, -26(%rbp,%rax)	# _56, output
# stack.c:166:         index++;
	addl	$1, -12(%rbp)	#, index
.L44:
# stack.c:163:     while (top != empty)
	movl	-40(%rbp), %eax	# top, top.8_57
# stack.c:163:     while (top != empty)
	cmpl	$-1, %eax	#, top.8_57
	jne	.L45	#,
# stack.c:169:     for (counter = 0; index != counter; counter++)
	movw	$0, -2(%rbp)	#, counter
# stack.c:169:     for (counter = 0; index != counter; counter++)
	jmp	.L46	#
.L47:
# stack.c:171:         expression[counter] = output[counter];
	movzwl	-2(%rbp), %eax	# counter, _58
# stack.c:171:         expression[counter] = output[counter];
	movzwl	-2(%rbp), %ecx	# counter, _59
	movq	-56(%rbp), %rdx	# expression, tmp195
	addq	%rcx, %rdx	# _59, _60
# stack.c:171:         expression[counter] = output[counter];
	cltq
	movzbl	-26(%rbp,%rax), %eax	# output, _61
# stack.c:171:         expression[counter] = output[counter];
	movb	%al, (%rdx)	# _61, *_60
# stack.c:169:     for (counter = 0; index != counter; counter++)
	movzwl	-2(%rbp), %eax	# counter, counter.9_62
	addl	$1, %eax	#, tmp197
	movw	%ax, -2(%rbp)	# tmp197, counter
.L46:
# stack.c:169:     for (counter = 0; index != counter; counter++)
	movzwl	-2(%rbp), %eax	# counter, _63
# stack.c:169:     for (counter = 0; index != counter; counter++)
	cmpl	%eax, -12(%rbp)	# _63, index
	jne	.L47	#,
# stack.c:173:     expression[counter+1]='\0';
	movzwl	-2(%rbp), %eax	# counter, _64
	leaq	1(%rax), %rdx	#, _65
	movq	-56(%rbp), %rax	# expression, tmp198
	addq	%rdx, %rax	# _65, _66
# stack.c:173:     expression[counter+1]='\0';
	movb	$0, (%rax)	#, *_66
# stack.c:174:     return 0;
	movl	$0, %eax	#, _111
# stack.c:175: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	infixtoPostfix, .-infixtoPostfix
	.section	.rodata
.LC3:
	.string	"Enter Expression :"
	.text
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# stack.c:182:     printf("Enter Expression :");
	leaq	.LC3(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# stack.c:183:     scanf("%s", expression);
	leaq	-10(%rbp), %rax	#, tmp89
	movq	%rax, %rsi	# tmp89,
	leaq	.LC2(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	__isoc99_scanf@PLT	#
# stack.c:185:     infixtoprefix(expression);
	leaq	-10(%rbp), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	infixtoprefix	#
# stack.c:187:     return 0;
	movl	$0, %eax	#, _5
# stack.c:188: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
